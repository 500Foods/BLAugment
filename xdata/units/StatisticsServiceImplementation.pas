unit StatisticsServiceImplementation;

interface

uses
  System.Classes,
  System.SysUtils,
  System.JSON,
  System.DateUtils,
  System.StrUtils,

  System.Generics.Collections,

  System.Net.URLClient,
  System.Net.HttpClientComponent,
  System.Net.HttpClient,

  Sparkle.HttpSys.Server,
  Sparkle.Security,

  XData.Server.Module,
  XData.Service.Common,
  XData.Sys.Exceptions,

  Bcl.Jose.Core.JWT,
  Bcl.Jose.Core.Builder,

  IdStack,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdExplicitTLSClientServerBase,
  IdMessageClient,
  IdMessage,
  IdMessageBuilder,
  IdAttachment,
  IdMessageParts,
  IdEMailAddress,
  IdAttachmentFile,
  IdSMTPBase,
  IdSMTP,
  IdAttachmentMemory,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Comp.Client,
  FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Dataset,
  FireDAC.Comp.BatchMove.JSON,

  StatisticsService;

type
  [ServiceImplementation]
  TStatisticsService = class(TInterfacedObject, IStatisticsService)
  private
    function Today:TStream;
  end;

implementation

uses Unit2, Unit3, TZDB;

function TStatisticsService.Today(): TStream;
var
  DBConn: TFDConnection;
  Query1: TFDQuery;
  DatabaseName: String;
  DatabaseEngine: String;
  ElapsedTime: TDateTime;
  User: IUserIdentity;
  JWT: String;

  ResultJSON: TJSONObject;
  ResultArray: TJSONArray;

  TodayStart: TDateTime;
  ClientTimeZone: TBundledTimeZone;
begin
  // Returning JSON, so flag it as such
  TXDataOperationContext.Current.Response.Headers.SetValue('content-type', 'application/json');

  // Time this event
  ElapsedTime := Now;

  // Get data from the JWT
  User := TXDataOperationContext.Current.Request.User;
  JWT := TXDataOperationContext.Current.Request.Headers.Get('Authorization');
  if (User = nil) then raise EXDataHttpUnauthorized.Create('Missing authentication');

  // Setup DB connection and query
  try
    DatabaseName := User.Claims.Find('dbn').AsString;
    DatabaseEngine := User.Claims.Find('dbe').AsString;
    DBSupport.ConnectQuery(DBConn, Query1, DatabaseName, DatabaseEngine);
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: CQ');
    end;
  end;

  // Check if we've got a valid JWT (one that has not been revoked)
  try
    {$Include sql\system\token_check\token_check.inc}
    Query1.ParamByName('TOKENHASH').AsString := DBSupport.HashThis(JWT);
    Query1.ParamByName('IPADDRESS').AsString := TXDataOperationContext.Current.Request.RemoteIP;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: TC');
    end;
  end;
  if Query1.RecordCount <> 1 then
  begin
    DBSupport.DisconnectQuery(DBConn, Query1);
    raise EXDataHttpUnauthorized.Create('JWT was not validated');
  end;


  ClientTimeZone := TBundledTimeZone.GetTimeZone(User.Claims.Find('tzn').AsString);
  TodayStart := ClientTimeZone.ToUniversalTime(Trunc(ClientTimeZone.ToLocalTime(TTimeZone.Local.ToUniversalTime(Now))));
//  MainForm.mmInfo.LInes.Add(FormatDateTime('yyyy-mm-dd hh:nn:ss',TodayStart)+' UTC');

  // Create object to be returned
  ResultJSON := TJSONObject.Create;


  // Number of users logged in today
  try
    {$Include sql\stats\today_logins\today_logins.inc}
    Query1.ParamByName('SESSIONSTART').AsDateTime := TodayStart;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: ST-TL');
    end;
  end;
  ResultArray := TJSONObject.ParseJSONValue(DBSupport.QueryToJSON(Query1)) as TJSONArray;
  ResultJSON.AddPair('Logins', ResultArray);

  // Number of user sessions today
  try
    {$Include sql\stats\today_sessions\today_sessions.inc}
    Query1.ParamByName('SESSIONSTART').AsDateTime := TodayStart;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: ST-TS');
    end;
  end;
  ResultArray := TJSONObject.ParseJSONValue(DBSupport.QueryToJSON(Query1)) as TJSONArray;
  ResultJSON.AddPair('Sessions', ResultArray);

  // Number of user events today
  try
    {$Include sql\stats\today_events\today_events.inc}
    Query1.ParamByName('SESSIONSTART').AsDateTime := TodayStart;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: ST-TE');
    end;
  end;
  ResultArray := TJSONObject.ParseJSONValue(DBSupport.QueryToJSON(Query1)) as TJSONArray;
  ResultJSON.AddPair('Events', ResultArray);

  // Number of user changes today
  try
    {$Include sql\stats\today_changes\today_changes.inc}
    Query1.ParamByName('SESSIONSTART').AsDateTime := TodayStart;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: ST-TC');
    end;
  end;
  ResultArray := TJSONObject.ParseJSONValue(DBSupport.QueryToJSON(Query1)) as TJSONArray;
  ResultJSON.AddPair('Changes', ResultArray);

  // Number of user errors today
  try
    {$Include sql\stats\today_errors\today_errors.inc}
    Query1.ParamByName('SESSIONSTART').AsDateTime := TodayStart;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: ST-TB');
    end;
  end;
  ResultArray := TJSONObject.ParseJSONValue(DBSupport.QueryToJSON(Query1)) as TJSONArray;
  ResultJSON.AddPair('Errors', ResultArray);

  // Number of user registrations today
  try
    {$Include sql\stats\today_regs\today_regs.inc}
    Query1.ParamByName('SESSIONSTART').AsDateTime := TodayStart;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: ST-TR');
    end;
  end;
  ResultArray := TJSONObject.ParseJSONValue(DBSupport.QueryToJSON(Query1)) as TJSONArray;
  ResultJSON.AddPair('Registrations', ResultArray);


  // Number of endpoints called today
  try
    {$Include sql\stats\today_endpoints\today_endpoints.inc}
    Query1.ParamByName('SESSIONSTART').AsDateTime := TodayStart;
    Query1.Open;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: ST-TP');
    end;
  end;
  ResultArray := TJSONObject.ParseJSONValue(DBSupport.QueryToJSON(Query1)) as TJSONArray;
  ResultJSON.AddPair('Endpoints', ResultArray);

  // Not sure if there is another version of this that is more direct?
  Result := TStringStream.Create(ResultJSON.ToString);

  // Cleanup
  ResultJSON.Free;


  // Keep track of endpoint history
  try
    {$Include sql\system\endpoint_history_insert\endpoint_history_insert.inc}
    Query1.ParamByName('PERSONID').AsInteger := User.Claims.Find('usr').AsInteger;
    Query1.ParamByName('ENDPOINT').AsString := 'StatisticsService.Today';
    Query1.ParamByName('ACCESSED').AsDateTime := TTimeZone.local.ToUniversalTime(ElapsedTime);
    Query1.ParamByName('IPADDRESS').AsString := TXDataOperationContext.Current.Request.RemoteIP;
    Query1.ParamByName('APPLICATION').AsString := User.Claims.Find('app').AsString;
    Query1.ParamByName('VERSION').AsString := MainForm.AppVersion;
    Query1.ParamByName('DATABASENAME').AsString := DatabaseName;
    Query1.ParamByName('DATABASEENGINE').AsString := DatabaseEngine;
    Query1.ParamByName('EXECUTIONMS').AsInteger := MillisecondsBetween(Now,ElapsedTime);
    Query1.ParamByName('DETAILS').AsString := '[]';
    Query1.ExecSQL;
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: EHI');
    end;
  end;

  // All Done
  try
    DBSupport.DisconnectQuery(DBConn, Query1);
  except on E: Exception do
    begin
      MainForm.mmInfo.Lines.Add('['+E.Classname+'] '+E.Message);
      raise EXDataHttpUnauthorized.Create('Internal Error: DQ');
    end;
  end;
end;

initialization
  RegisterServiceType(TStatisticsService);

end.
