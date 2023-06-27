unit Unit1;

interface

uses
  System.SysUtils,
  System.Classes,
  System.DateUtils,

  JS,
  Web,

  XData.Web.Connection,
  XData.Web.Client,

  WEBLib.REST,
  WEBLib.JSON,
  WEBLib.Storage,

  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  Vcl.Controls,
  WEBLib.WebCtrls,
  Vcl.StdCtrls,
  WEBLib.StdCtrls,
  WEBLib.ComCtrls, WEBLib.ExtCtrls;

type
  TForm1 = class(TWebForm)
    divHeader: TWebHTMLDiv;
    divLogo: TWebHTMLDiv;
    divMainMenu: TWebHTMLDiv;
    divSearch: TWebHTMLDiv;
    divSearchBG: TWebHTMLDiv;
    editSearch: TWebEdit;
    divMainMenuBG: TWebHTMLDiv;
    btnTheme: TWebButton;
    btnRegister: TWebButton;
    btnLogin: TWebButton;
    divBlogTypes: TWebHTMLDiv;
    divBlogFood: TWebHTMLDiv;
    divBlogFoodBG: TWebHTMLDiv;
    btnBlogFood: TWebButton;
    btnSearch: TWebButton;
    divBlogWellness: TWebHTMLDiv;
    divBlogWellnessBG: TWebHTMLDiv;
    btnBlogWellness: TWebButton;
    divBlogFitness: TWebHTMLDiv;
    divBlogFitnessBG: TWebHTMLDiv;
    btnBlogFitness: TWebButton;
    divBlogHealth: TWebHTMLDiv;
    divBlogHealthBG: TWebHTMLDiv;
    btnBlogHealth: TWebButton;
    divBlogLifestyle: TWebHTMLDiv;
    divBlogLifestyleBG: TWebHTMLDiv;
    btnBlogLifestyle: TWebButton;
    divBlogSports: TWebHTMLDiv;
    divBlogSportsBG: TWebHTMLDiv;
    btnBlogSports: TWebButton;
    divBlogFashion: TWebHTMLDiv;
    divBlogFashionBG: TWebHTMLDiv;
    btnBlogFashion: TWebButton;
    divBlogBeauty: TWebHTMLDiv;
    divBlogBeautyBG: TWebHTMLDiv;
    btnBlogBeauty: TWebButton;
    divBlogMovies: TWebHTMLDiv;
    WebHTMLDiv2: TWebHTMLDiv;
    btnBlogMovies: TWebButton;
    divBlogTravel: TWebHTMLDiv;
    divBlogTravelBG: TWebHTMLDiv;
    btnBlogTravel: TWebButton;
    divBlogPhotography: TWebHTMLDiv;
    divBlogPhotographyBG: TWebHTMLDiv;
    btnBlogPhotography: TWebButton;
    divBlogMusic: TWebHTMLDiv;
    divBlogMusicBG: TWebHTMLDiv;
    btnBlogMusic: TWebButton;
    divBlogArt: TWebHTMLDiv;
    divBlogArtBG: TWebHTMLDiv;
    btnBlogArt: TWebButton;
    divBlogWriting: TWebHTMLDiv;
    divBlogWritingBG: TWebHTMLDiv;
    btnBlogWriting: TWebButton;
    divBlogPersonal: TWebHTMLDiv;
    divBlogPersonalBG: TWebHTMLDiv;
    btnBlogPersonal: TWebButton;
    divBlogNews: TWebHTMLDiv;
    divBlogNewsBG: TWebHTMLDiv;
    btnBlogNews: TWebButton;
    divBlogDIY: TWebHTMLDiv;
    divBlogDIYBG: TWebHTMLDiv;
    btnBlogDIY: TWebButton;
    divBlogDesign: TWebHTMLDiv;
    divBlogDesignBG: TWebHTMLDiv;
    btnBlogDesign: TWebButton;
    divBlogInteriors: TWebHTMLDiv;
    divBlogInteriorsBG: TWebHTMLDiv;
    btnBlogInteriors: TWebButton;
    divBlogParenting: TWebHTMLDiv;
    divBlogParentingBG: TWebHTMLDiv;
    btnBlogParenting: TWebButton;
    divBlogScience: TWebHTMLDiv;
    divBlogScienceBG: TWebHTMLDiv;
    btnBlogScience: TWebButton;
    divBlogTechnology: TWebHTMLDiv;
    divBlogTechnologyBG: TWebHTMLDiv;
    btnBlogTechnology: TWebButton;
    divBlogSpace: TWebHTMLDiv;
    divBlogSpaceBG: TWebHTMLDiv;
    btnBlogSpace: TWebButton;
    divBlogFinance: TWebHTMLDiv;
    divBlogFinanceBG: TWebHTMLDiv;
    btnBlogFinance: TWebButton;
    divBlogInvesting: TWebHTMLDiv;
    divBlogInvestingBG: TWebHTMLDiv;
    btnBlogInvesting: TWebButton;
    divBlogBusiness: TWebHTMLDiv;
    divBlogBusinessBG: TWebHTMLDiv;
    btnBlogBusiness: TWebButton;
    divBlogIndustry: TWebHTMLDiv;
    divBlogIndustryBG: TWebHTMLDiv;
    btnBlogIndustry: TWebButton;
    divBlogGovernment: TWebHTMLDiv;
    divBlogGovernmentBG: TWebHTMLDiv;
    btnBlogGovernment: TWebButton;
    divBlogClimate: TWebHTMLDiv;
    divBlogClimateBG: TWebHTMLDiv;
    btnBlogClimate: TWebButton;
    divBlogEducation: TWebHTMLDiv;
    divBlogEducationBG: TWebHTMLDiv;
    btnBlogEducation: TWebButton;
    divBlogHealthcare: TWebHTMLDiv;
    divBlogHealthcareBG: TWebHTMLDiv;
    btnBlogHealthcare: TWebButton;
    divBlogPolitics: TWebHTMLDiv;
    divBlogPoliticsBG: TWebHTMLDiv;
    btnBlogPolitics: TWebButton;
    divBlogJustice: TWebHTMLDiv;
    divBlogJusticeBG: TWebHTMLDiv;
    btnBlogJustice: TWebButton;
    divBlogReligion: TWebHTMLDiv;
    divBlogReligionBG: TWebHTMLDiv;
    btnBlogReligion: TWebButton;
    divBlogPeople: TWebHTMLDiv;
    divBlogPeopleBG: TWebHTMLDiv;
    btnBlogPeople: TWebButton;
    divBlogMotorcycle: TWebHTMLDiv;
    divBlogMotorcycleBG: TWebHTMLDiv;
    btnBlogMotorcycle: TWebButton;
    divBlogCycling: TWebHTMLDiv;
    divBlogCyclingBG: TWebHTMLDiv;
    btnBlogCycling: TWebButton;
    divBlogAuto: TWebHTMLDiv;
    divBlogAutoBG: TWebHTMLDiv;
    btnBlogAuto: TWebButton;
    divBlogBoat: TWebHTMLDiv;
    divBlogBoatBG: TWebHTMLDiv;
    btnBlogBoat: TWebButton;
    divBlogAviation: TWebHTMLDiv;
    divBlogAviationBG: TWebHTMLDiv;
    btnBlogAviation: TWebButton;
    divBlogArchitecture: TWebHTMLDiv;
    divBlogArchitectureBG: TWebHTMLDiv;
    btnBlogArchitecture: TWebButton;
    divBlogTrain: TWebHTMLDiv;
    divBlogTrainBG: TWebHTMLDiv;
    btnBlogTrain: TWebButton;
    divBlogBridges: TWebHTMLDiv;
    divBlogBridgesBG: TWebHTMLDiv;
    btnBlogBridges: TWebButton;
    divBlogCats: TWebHTMLDiv;
    divBlogCatsBG: TWebHTMLDiv;
    btnBlogCats: TWebButton;
    divBlogDogs: TWebHTMLDiv;
    divBlogDogsBG: TWebHTMLDiv;
    btnBlogDogs: TWebButton;
    divBlogGardening: TWebHTMLDiv;
    divBlogGardeningBG: TWebHTMLDiv;
    btnBlogGardening: TWebButton;
    divBlogGaming: TWebHTMLDiv;
    divBlogGamingBG: TWebHTMLDiv;
    btnBlogGaming: TWebButton;
    divLogin: TWebHTMLDiv;
    divLoginBG: TWebHTMLDiv;
    btnUsername: TWebButton;
    editUsername: TWebEdit;
    btnPassword: TWebButton;
    editPassword: TWebEdit;
    divLoginMessage: TWebHTMLDiv;
    btnLoginOK: TWebButton;
    btnLoginCancel: TWebButton;
    divShade: TWebHTMLDiv;
    XDataConn: TXDataWebConnection;
    WebHttpRequest1: TWebHttpRequest;
    btnAccount: TWebButton;
    btnAdd: TWebButton;
    divAccount: TWebHTMLDiv;
    divAccountBG: TWebHTMLDiv;
    divAccountTitle: TWebHTMLDiv;
    btnAccountRefresh: TWebButton;
    pcAccount: TWebPageControl;
    pageAccountName: TWebTabSheet;
    pageAccountPhoto: TWebTabSheet;
    pageAccountHistory: TWebTabSheet;
    pageAccountSponsor: TWebTabSheet;
    pageAccountDonate: TWebTabSheet;
    pageAccountNotify: TWebTabSheet;
    pageAccountBlogs: TWebTabSheet;
    labelAccountTitle: TWebLabel;
    divAccountOptions: TWebHTMLDiv;
    labelFirstName: TWebLabel;
    editFirstName: TWebEdit;
    pageAccountLogout: TWebTabSheet;
    labelMiddleName: TWebLabel;
    editMiddleName: TWebEdit;
    WebLabel2: TWebLabel;
    editLastName: TWebEdit;
    labelEMail: TWebLabel;
    editEMail: TWebEdit;
    labelAccountName: TWebLabel;
    editAccountName: TWebEdit;
    divLogoutHere: TWebHTMLDiv;
    divLogoutClean: TWebHTMLDiv;
    divLogoutAll: TWebHTMLDiv;
    btnLogoutHere: TWebButton;
    labelLogoutHere: TWebLabel;
    btnLogoutClean: TWebButton;
    labelLogoutClean: TWebLabel;
    btnLogoutAll: TWebButton;
    labelLogoutAll: TWebLabel;
    WebHTMLDiv1: TWebHTMLDiv;
    divLogoutCleanDescription: TWebHTMLDiv;
    divLogoutAllDescription: TWebHTMLDiv;
    pageAccountPassword: TWebTabSheet;
    labelCurrentPassword: TWebLabel;
    editCurrentPassword: TWebEdit;
    labelNewPassword: TWebLabel;
    editNewPassword: TWebEdit;
    labelConfirmPassword: TWebLabel;
    editConfirmPassword: TWebEdit;
    pageAccountCategories: TWebTabSheet;
    pageAccountRoles: TWebTabSheet;
    divChangePassword: TWebHTMLDiv;
    btnChangePassword: TWebButton;
    labelChangePassword: TWebLabel;
    divChangePasswordBG: TWebHTMLDiv;
    tmrJWTRenewal: TWebTimer;
    divAccountFG: TWebHTMLDiv;
    pageAccountActivity: TWebTabSheet;
    divActivityLogHeader: TWebHTMLDiv;
    divActionLog: TWebHTMLDiv;
    btnActivityLogEMail: TWebButton;
    btnActivityLogTimezone: TWebButton;
    btnActivityLogReload: TWebButton;
    btnActivityLogPrint: TWebButton;
    divAccountHistory: TWebHTMLDiv;
    WebLabel1: TWebLabel;
    divDonate: TWebHTMLDiv;
    divAccountPhotoOptions: TWebHTMLDiv;
    WebButton1: TWebButton;
    WebButton3: TWebButton;
    WebButton4: TWebButton;
    divAccountPhoto: TWebHTMLDiv;
    btnAccountClose: TWebButton;
    btnAccountChange: TWebButton;
    comboActivityLog: TWebLookupComboBox;
    tmrLogout: TWebTimer;
    procedure FinalRequest;
    procedure btnThemeClick(Sender: TObject);
    [async] procedure WebFormCreate(Sender: TObject);
    procedure btnBlogClick(Sender: TObject);
    procedure ConfigureTooltip(Button: TWebButton);
    procedure btnSearchClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnUsernameClick(Sender: TObject);
    procedure btnPasswordClick(Sender: TObject);
    [async] procedure btnLoginCancelClick(Sender: TObject);
    [async] procedure btnLoginOKClick(Sender: TObject);
    procedure WebFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    [async] function XDataLogin(Username, Password: String):String;
    procedure LogAction(Action: String);
    [async] procedure XDataConnect;
    [async] procedure ProcessJWT(aJWT: String);
    [async] procedure btnAccountClick(Sender: TObject);
    [async] procedure btnAccountRefreshClick(Sender: TObject);
    [async] procedure SelectAccountOption(OptionID: Integer);
    [async] procedure btnLogoutHereClick(Sender: TObject);
    [async] procedure btnLogoutCleanClick(Sender: TObject);
    [async] procedure btnLogoutAllClick(Sender: TObject);
    procedure editCurrentPasswordChange(Sender: TObject);
    procedure btnChangePasswordClick(Sender: TObject);
    [async] procedure Logout(Reason: String; LogoutAll: Boolean);
    [async] procedure tmrJWTRenewalTimer(Sender: TObject);
    [async] function JSONRequest(Endpoint: String; Params: array of JSValue): String;
    procedure ProcessLogin;
    function SHA256(Text2Encode: String): String;
    procedure XDataConnRequest(Args: TXDataWebConnectionRequest);
    procedure btnActivityLogEMailClick(Sender: TObject);
    procedure btnActivityLogReloadClick(Sender: TObject);
    procedure btnActivityLogTimezoneClick(Sender: TObject);
    procedure btnActivityLogPrintClick(Sender: TObject);
    [async] procedure btnAccountCloseClick(Sender: TObject);
    procedure btnAccountChangeClick(Sender: TObject);
    [async] procedure comboActivityLogChange(Sender: TObject);
    procedure tmrLogoutTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Theme: String;
    LoggedIn: Boolean;
    Server_URL: String;

    JWT: String;
    JWT_Expiry: TDateTime;
    PasswordCheck: String;

    App_Name: String;
    App_Short: String;
    App_Version: String;
    App_Release: String;
    App_Start: TDateTime;
    App_Start_UTC: TDateTime;
    App_Session: String;

    App_TZ: String;
    App_TZOffset: Integer;
    App_LogDateTimeFormat: String;
    App_DisplayDateTimeFormat: String;
    App_LogDateFormat: String;
    App_DisplayDateFormat: String;
    App_LogTimeFormat: String;
    App_DisplayTimeFormat: String;

    App_IPAddress: String;
    App_Location: String;
    App_Device: String;
    App_Browser: String;

    ActionLog: TStringList;
    ActionLogCurrent: TStringList;

    User_FirstName: String;
    User_MiddleName: String;
    User_LastName: String;
    User_EMail: String;
    User_Photo: String;
    User_Account: String;
    User_ID: Integer;
    User_Roles: TStringList;

    tabAccountOptions: JSValue;
    tabAccountRoles: JSValue;
    tabAccountHistory: JSValue;

    // Simplebar References
    scrollAccountName: JSValue;
    scrollAccountPhoto: JSValue;
    scrollAccountPassword: JSValue;
    scrollAccountRoles: JSValue;
    scrollAccountCategories: JSValue;
    scrollAccountBlogs: JSValue;
    scrollAccountNotify: JSValue;
    scrollAccountSponsor: JSValue;
//    scrollAccountDonate: JSValue;
    scrollAccountHistory: JSValue;
    scrollAccountActivity: JSValue;
    scrollAccountLogout: JSValue;

    procedure StopLinkerRemoval(P: Pointer);
    procedure PreventCompilerHint(I: integer); overload;
    procedure PreventCompilerHint(S: string); overload;
    procedure PreventCompilerHint(J: JSValue); overload;
    procedure PreventCompilerHint(H: TJSHTMLElement); overload;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnActivityLogEMailClick(Sender: TObject);
begin
//
end;

procedure TForm1.btnActivityLogPrintClick(Sender: TObject);
begin
//

end;

procedure TForm1.WebFormCreate(Sender: TObject);
var
  i: Int64;
  ConfigResponse: TJSXMLHttpRequest;
  ConfigData: TJSONObject;
  ConfigURL: String;
begin

  // Default Theme
  Theme := TWebLocalStorage.GetValue('Theme');
  if (Theme <> 'dark'  ) and
     (Theme <> 'light' ) and
     (Theme <> 'red'   ) then Theme := 'dark';
  TWebLocalStorage.SetValue('Theme',Theme);

  if      Theme = 'dark'  then btnTheme.Caption := '<i class="fa-duotone fa-moon fa-3x"></i>'
  else if Theme = 'light' then btnTheme.Caption := '<i class="fa-duotone fa-sun fa-3x"></i>'
  else if Theme = 'red'   then btnTheme.Caption := '<i class="fa-duotone fa-heart fa-3x"></i>';

  document.documentElement.setAttribute('theme', Theme);

  // If Font Awesome Pro is not available, switch to the free version
  // btnTheme.Caption := StringReplace(btnTheme.Caption,'fa-duotone','fa-solid',[]);

  // Application Information
  App_Name := 'blaugment';
  App_Short := 'Template';
  App_Version := '1.0';
  App_Release := '2023-Jun-23';
  App_Start := Now();
  App_Start_UTC := TTimeZone.Local.ToUniversalTime(Now);

  // MainForm Options
  Caption := App_Name;

  // Overide some locale options?
  FormatSettings.TimeSeparator := ':';
  FormatSettings.DateSeparator := '-';
  asm
    this.App_TZ = Intl.DateTimeFormat().resolvedOptions().timeZone;
    this.App_TZOffset = new Date().getTimezoneOffset();
  end;

  // These are intended for use with Delphi's FormatDateTime
  App_LogDateTimeFormat := 'yyyy-MM-dd HH:nn:ss.zzz';
  App_DisplayDateTimeFormat := 'yyyy-MMM-dd HH:nn:ss';
  App_LogDateFormat := 'yyyy-MM-dd';
  App_DisplayDateFormat := 'yyyy-MMM-dd';
  App_LogTimeFormat := 'HH:nn:ss.zzz';
  App_DisplayTimeFormat := 'HH:nn:ss';

  // These are intended for use with Luxon's toFormat
  asm
    window.LogDateTimeFormat = this.App_LogDateTimeFormat.replace('nn','mm');
    window.DisplayDateTimeFormat = this.App_DisplayDateTimeFormat.replace('nn','mm');
    window.LogDateFormat = this.App_LogDateFormat.replace('nn','mm');
    window.DisplayDateFormat = this.App_DisplayDateFormat.replace('nn','mm');
    window.LogTimeFormat = this.App_LogTimeFormat.replace('nn','mm');
    window.DisplayTimeFormat = this.App_DisplayTimeFormat.replace('nn','mm');
  end;

  // JWT Handling
  JWT := '';
  JWT_Expiry := App_Start_UTC;

  // User Information
  LoggedIn := False;
  User_FirstName := '';
  User_MiddleName :=  '';
  User_LastName := '';
  User_EMail := '';
  User_Account := '';
  User_id := 0;
  User_Roles := TStringList.Create;

  // Create an App Session key - just a custom Base48-encoded timestamp
  // https://github.com/marko-36/base29-shortener
  App_Session := '';
  i := DateTimeToUnix(App_Start_UTC)*1000+MillisecondOf(App_Start_UTC);

  asm
    // Encode Integer (eg: Unix Timestamp) into String
    const c = ['B','b','C','c','D','d','F','f','G','g','H','h','J','j','K','k','L','M','m','N','n','P','p','Q','q','R','r','S','s','T','t','V','W','w','X','x','Z','z','0','1','2','3','4','5','6','7','8','9'];
    var sLen = Math.floor(Math.log(i)/Math.log(c.length)) +1;
    for(var ex=sLen-1; ex>-1; --ex){
      this.App_Session += c[Math.floor(i / Math.pow(c.length,ex))];
      i = [i % Math.pow(c.length,ex)];
    }

    // Decode String into Integer
    // var s = this.App_Session;
    // i = 0;
    // for (var ex=0; ex<s.length; ++ex){
    //   i += c.indexOf(s.substring(ex,ex+1)) * Math.pow(c.length,s.length-1-ex);
    // }
    // return i
  end;

  // Get some client information
  App_IPAddress := 'Not Defined';
  App_Location := 'Not Defined';
  App_Device := 'Not Defined';
  App_Browser := 'Not Defined';
  asm
    var ipdata = await fetch('https://ipapi.co/json/').then(function(response) {return response.json()});
    var uap = new UAParser().getResult();
    var browser = [];
    var locn = [];

    browser.push(uap.browser.name);
    browser.push(uap.browser.version);
    browser.push(uap.os.name);
    browser.push(uap.os.version);

    locn.push(ipdata['country']);
    locn.push(ipdata['country_name']);
    locn.push(ipdata['region']);
    locn.push(ipdata['city']);
    locn.push(ipdata['latitude']);
    locn.push(ipdata['longitude']);
    locn.push(window.navigator.language);

    this.App_IPAddress = ipdata['ip'];
    this.App_Location = JSON.stringify(locn);
    this.App_Device = JSON.stringify(uap.device);
    this.App_Browser = JSON.stringify(browser);
  end;


  // Log what we're doing in the application
  ActionLog := TStringList.Create;
  ActionLog.Delimiter := chr(10);
  ActionLogCurrent := TStringList.Create;
  ActionLogCurrent.Delimiter := chr(10);
  LogAction('============================================================');

  // Application Details
  LogAction('Application Startup');
  LogAction(' -- '+App_Name);
  LogAction(' -- Version '+App_Version);
  LogAction(' -- Release '+App_Release);
  LogAction(' -- App Started: '+FormatDateTime(App_LogDateTimeFormat, App_Start)+' '+App_TZ);
  LogAction(' -- App Started: '+FormatDateTime(App_LogDateTimeFormat, App_Start_UTC)+' UTC');
  LogAction(' -- App Session: '+App_Session);
  LogAction(' -- App IP Address: '+App_IPAddress);
  LogAction(' -- App Location: ');
  asm
    var locn = JSON.parse(this.App_Location);
    this.LogAction(' ----- Country Code: '+locn[0]);
    this.LogAction(' ----- Country: '+locn[1]);
    this.LogAction(' ----- Region: '+locn[2]);
    this.LogAction(' ----- City: '+locn[3]);
    this.LogAction(' ----- Latitude: '+locn[4]);
    this.LogAction(' ----- Longitude: '+locn[5]);
    this.LogAction(' ----- Language: '+locn[6]);
  end;
  LogAction(' -- App Device: ');
  asm
    var dvc = JSON.parse(this.App_Device);
    this.LogAction(' ----- Model: '+dvc.model);
    this.LogAction(' ----- Type: '+dvc.type);
    this.LogAction(' ----- Vendor: '+dvc.vendor);
  end;
  LogAction(' -- App Browser: ');
  asm
    var brw = JSON.parse(this.App_Browser);
    this.LogAction(' ----- Browser: '+brw[0]);
    this.LogAction(' ----- Version: '+brw[1]);
    this.LogAction(' ----- OS: '+brw[2]);
    this.LogAction(' ----- Version: '+brw[3]);
  end;
  LogAction('============================================================');
  LogAction(' ');

  // Figure out what our server connection might be
  Server_URL := '';

  try
    asm ConfigURL = window.location.origin+(window.location.pathname.split('/').slice(0,-1).join('/')+'/blaugment_configuration.json').replace('/\/\//g','/'); end;
    LogAction('Loading Configuration:');
    LogAction(' -- '+ConfigURL);
    WebHTTPRequest1.URL := ConfigURL;
    ConfigResponse := await( TJSXMLHttpRequest, WebHTTPRequest1.Perform() );
    if String(COnfigResponse.Response) <> '' then
    begin
      LogAction(' -- Configuration Loaded');
      ConfigData := TJSONObject.ParseJSONValue(String(ConfigResponse.Response)) as TJSONObject;

      // Get Server URL - Presumably if we've got a config file, this is defined
      Server_URL := (ConfigData.GetValue('Server') as TJSONString).Value;
      LogAction('Server (Configured):');
      LogAction(' -- '+Server_URL);

    end;
  except on E:Exception do
    begin
    end
  end;
  if (Server_URL = '') then
  begin
    Server_URL := 'http://localhost:44444/tms/xdata';
     LogAction(' -- Configuration Missing');
    LogAction('Server (Default):');
    LogAction(' -- '+Server_URL);
  end;

  // Connect to XData
  LogAction(' ');
  LogAction('Attempting Connection');
  await(XDataConnect);
  LogAction(' ');

  // Configure buttons to use Bootstrap tooltips
  ConfigureTooltip(btnSearch);
  ConfigureTooltip(btnRegister);
  ConfigureTooltip(btnAdd);
  ConfigureTooltip(btnAccount);
  ConfigureTooltip(btnLogin);
  ConfigureTooltip(btnTheme);

  ConfigureTooltip(btnBlogArchitecture);
  ConfigureTooltip(btnBlogArt);
  ConfigureTooltip(btnBlogAuto);
  ConfigureTooltip(btnBlogAviation);
  ConfigureTooltip(btnBlogBeauty);
  ConfigureTooltip(btnBlogBoat);
  ConfigureTooltip(btnBlogBridges);
  ConfigureTooltip(btnBlogBusiness);
  ConfigureTooltip(btnBlogCats);
  ConfigureTooltip(btnBlogClimate);
  ConfigureTooltip(btnBlogCycling);
  ConfigureTooltip(btnBlogDesign);
  ConfigureTooltip(btnBlogDIY);
  ConfigureTooltip(btnBlogDogs);
  ConfigureTooltip(btnBlogEducation);
  ConfigureTooltip(btnBlogFashion);
  ConfigureTooltip(btnBlogFinance);
  ConfigureTooltip(btnBlogFitness);
  ConfigureTooltip(btnBlogFood);
  ConfigureTooltip(btnBlogGaming);
  ConfigureTooltip(btnBlogGardening);
  ConfigureTooltip(btnBlogGovernment);
  ConfigureTooltip(btnBlogHealth);
  ConfigureTooltip(btnBlogHealthcare);
  ConfigureTooltip(btnBlogIndustry);
  ConfigureTooltip(btnBlogInteriors);
  ConfigureTooltip(btnBlogInvesting);
  ConfigureTooltip(btnBlogJustice);
  ConfigureTooltip(btnBlogLifestyle);
  ConfigureTooltip(btnBlogMotorcycle);
  ConfigureTooltip(btnBlogMovies);
  ConfigureTooltip(btnBlogMusic);
  ConfigureTooltip(btnBlogNews);
  ConfigureTooltip(btnBlogParenting);
  ConfigureTooltip(btnBlogPeople);
  ConfigureTooltip(btnBlogPersonal);
  ConfigureTooltip(btnBlogPhotography);
  ConfigureTooltip(btnBlogPolitics);
  ConfigureTooltip(btnBlogReligion);
  ConfigureTooltip(btnBlogScience);
  ConfigureTooltip(btnBlogSpace);
  ConfigureTooltip(btnBlogSports);
  ConfigureTooltip(btnBlogTechnology);
  ConfigureTooltip(btnBlogTrain);
  ConfigureTooltip(btnBlogTravel);
  ConfigureTooltip(btnBlogWellness);
  ConfigureTooltip(btnBlogWriting);

  // Convert all tooltips to Bootstrap tooltips
  asm
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
  end;

  // JavaScript Sleep Function
  asm window.sleep = async function(msecs) {return new Promise((resolve) => setTimeout(resolve, msecs)); } end;


  // Tabulator Defaults
  asm
    Tabulator.defaultOptions.layout = "fitColumns";
    Tabulator.defaultOptions.selectable = 1;
    Tabulator.defaultOptions.columnHeaderSortMulti = true,
    Tabulator.defaultOptions.clipboard = "copy";
    Tabulator.defaultOptions.headerSortElement = function(column, dir) {
      switch(dir){
        case "asc":  return "<i class='fa-duotone fa-sort-up DropShadow'>";
                     break;
        case "desc": return "<i class='fa-duotone fa-sort-down DropShadow'>";
                     break;
        default:     return "<i class='fa-duotone fa-sort DropShadow'>";
      }
    },
    Tabulator.defaultOptions.columnDefaults = {
      headerHozAlign: "left",
      hozAlign: "left",
      headerSortStartingDir:"desc",
      headerSortTristate:true
    };
  end;


  // Account Options
  asm
    var dataAO = [
      { ID:  0, Name: "Contact Info",    Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-cat Swap'></i>"           },
      { ID:  1, Name: "Photo / Avatar",  Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-camera Swap'></i>"        },
      { ID:  2, Name: "Set Passowrd",    Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-shield-keyhole'></i>"     },
      { ID:  3, Name: "Assigned Roles",  Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-chess-knight Swap'></i>"  },
      { ID:  4, Name: "Categories",      Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-sitemap Swap'></i>"       },
      { ID:  5, Name: "Favorite Blogs",  Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-star'></i>"               },
      { ID:  6, Name: "Notifications",   Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-bell'></i>"               },
      { ID:  7, Name: "Sponsor",         Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-chart-mixed'></i>"        },
      { ID:  8, Name: "Donate",          Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-gift'></i>"               },
      { ID:  9, Name: "Login History",   Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-clock'></i>"              },
      { ID: 10, Name: "Activity Log",    Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-scroll'></i>"             },
      { ID: 11, Name: "Logout",          Icon: "<i class='fa-duotone DropShadow fa-fw fa-xl fa-right-from-bracket'></i>" }
    ];

    this.tabAccountOptions = new Tabulator("#divAccountOptions", {
      data: dataAO,
      index: "ID",
      layout: "fitColumns",
      selectable: 1,
      rowHeight: 30,
      headerVisible: false,
      columnDefaults:{
        resizable: false
      },
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "Icon", field: "Icon", hozAlign: "center", formatter: "html", width: 40},
        { title: "Name", field: "Name" }
      ]
    });
    this.tabAccountOptions.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAccountOptions.selectRow([row]);
      pas.Unit1.Form1.SelectAccountOption(row.getCell('ID').getValue());
    });
  end;

  // Account Login History
  asm
    this.tabAccountHistory = new Tabulator("#divAccountHistory",{
      layout: "fitColumns",
      selectable: 1,
      rowHeight: 28,
      columns: [
        { title: "", field: "Spacer", width: 8, minWidth: 8, headerSort: false, resizable: false,
            formatter: function(cell, formatterParams, onRendered) {
              return '';
            }
        },
        { title: "Logged In", field: "logged_in", width: 145,
            formatter: function(cell, formatterParams, onRendered) {
              return luxon.DateTime.fromISO(cell.getValue().split(' ').join('T'),{zone:"utc"}).setZone("system").toFormat(window.DisplayDateTimeFormat);
            }
        },
        { title: "", field: "ip_location", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var locndata = JSON.parse(cell.getValue());
              var clientlocation = locndata[3]+', '+locndata[2]+', '+locndata[1];
              return '<img title="'+clientlocation+'" style="width:24px; border-radius:4px;" src="https://cdn.jsdelivr.net/npm/country-flag-icons@1.5.7/1x1/'+JSON.parse(cell.getValue())[0]+'.svg">';
            }
        },
        { title: "", field: "browser_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var browser = JSON.parse(cell.getValue());
              var icon = '';
              var title = browser[0]+' '+browser[1];
              if (browser[0] == 'Chrome') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-chrome"></i>';
              }
              else if (browser[0] == 'Firefox') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-firefox"></i>';
              }
              else if (browser[0] == 'Safari') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-safari"></i>';
              }
              return '<div title="'+title+'">'+icon+'</div>';
            }
        },
        { title: "", field: "browser_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var browser = JSON.parse(cell.getValue());
              var icon = '';
              var title = browser[2]+' '+browser[3];
              if (browser[2] == 'Windows') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-windows"></i>';
              }
              else if (browser[2] == 'Mac OS') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-apple"></i>';
              }
              else if (browser[2] == 'Fedora') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-fedora"></i>';
              }
              else if (browser[2] == 'Ubuntu') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-ubuntu"></i>';
              }
              else if (browser[2] == 'Redhat') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-redhat"></i>';
              }
              else if (browser[2] == 'SUSE') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-suse"></i>';
              }
              else if (browser[2] == 'CentOS') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-centos></i>';
              }
              else if (browser[2] == 'Android') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-android"></i>';
              }
              else if (browser[2] == 'Linux') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-brands fa-linux"></i>';
              }
              else {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-display"></i>';
              }
              return '<div title="'+title+'">'+icon+'</div>';
            }
        },
        { title: "", field: "device_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var device = JSON.parse(cell.getValue());
              var icon = '';
              var title = device.model+' / '+device.type+' / '+device.vendor;

              if (device.type == undefined) {
                title = 'No information Available';
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-computer"></i>';
              }
              else if (device.type == 'mobile') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-mobile-button"></i>';
              }
              else if (device.type == 'tablet') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-tablet-button"></i>';
              }
              else {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-display Swap"></i>';
              }
              return '<div title="'+title+'">'+icon+'</div>';
            }
        },

        { title: "", field: "ip_location", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var clientlanguage = JSON.parse(cell.getValue())[6];
              return '<img title="'+clientlanguage+'" style="width:24px; border-radius:4px;" src="https://cdn.jsdelivr.net/npm/language-icons@0.3.0/icons/'+JSON.parse(cell.getValue())[6].slice(0,2).toLowerCase()+'.svg">';
            }
        },
        { title: "IP Address", field: "ip_address" }
      ]
    });
    this.tabAccountHistory.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAccountHistory.selectRow([row]);
    });
  end;


  // This is used to adjust the size and position of "windows"
  asm
    interact('.resize-drag')
      .resizable({
        edges: { left: true, right: true, bottom: true, top: true },
        margin: 12, // size of resizing boundary interaction area
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || -target.getBoundingClientRect().width/2)
            var y = (parseFloat(target.getAttribute('data-y')) || -target.getBoundingClientRect().height/2)
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'
            x += event.deltaRect.left
            y += event.deltaRect.top
            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'
            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        },
        ignoreFrom: '.nointeract'
      })
      .draggable({
        listeners: { move: dragMoveListener },
        ignoreFrom: '.nointeract'
      })
      .pointerEvents({
        ignoreFrom: '.nointeract'
      });

    function dragMoveListener (event) {
      var target = event.target
      var x = (parseFloat(target.getAttribute('data-x')) || -target.getBoundingClientRect().width/2) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || -target.getBoundingClientRect().height/2) + event.dy
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    };
    window.dragMoveListener = dragMoveListener
  end;

  // Enable Simplebar on Options pages
  asm
    this.scrollAccountName       = new SimpleBar(document.getElementById('pageAccountName'        ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountPhoto      = new SimpleBar(document.getElementById('pageAccountPhoto'       ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountPassword   = new SimpleBar(document.getElementById('pageAccountPassword'    ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountRoles      = new SimpleBar(document.getElementById('pageAccountRoles'       ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountCategories = new SimpleBar(document.getElementById('pageAccountCategories'  ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountBlogs      = new SimpleBar(document.getElementById('pageAccountBlogs'       ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountNotify     = new SimpleBar(document.getElementById('pageAccountNotify'      ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountSponsor    = new SimpleBar(document.getElementById('pageAccountSponsor'     ), { forceVisible: 'y', autoHide: false });
//    this.scrollAccountDonate     = new SimpleBar(document.getElementById('pageAccountDonate'      ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountHistory    = new SimpleBar(document.getElementById('pageAccountHistory'     ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountActivity   = new SimpleBar(document.getElementById('pageAccountActivity'    ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountLogout     = new SimpleBar(document.getElementById('pageAccountLogout'      ), { forceVisible: 'y', autoHide: false });
  end;

  asm
    document.body.style.setProperty('opacity','1');
  end;


  // Autologin if possible
  if (TWebLocalStorage.GetValue('Login.Expiry') <> '') then
  begin
    JWT_Expiry := StrToFloat(TWebLocalStorage.GetValue('Login.Expiry'));
    if JWT_Expiry > (TTimeZone.Local.ToUniversalTime(Now) + 60/86400) then
    begin
      LoggedIn := True;
      LogAction('AutoLogin - JWT Time Remaining: '+IntToStr(SecondsBetween(JWT_Expiry, TTimeZone.Local.ToUniversalTime(Now)))+'s');
      await(ProcessJWT(TWebLocalStorage.GetValue('Login.JWT')));
      PasswordCheck := TWebLocalStorage.GetValue('Login.PasswordHash');

//      window.history.pushState(MainForm.CaptureState, '', MainForm.URL);
//      MainForm.Position := window.history.length;
//      MainForm.StartPosition := MainForm.Position - 1;
      ProcessLogin;

      await(tmrJWTRenewalTimer(Sender));

    end
    else
    begin
      LoggedIn := False;
    end;
  end;

  // AutoLogout if possible - what to do if the browser closes unexpectedly
  asm
    window.addEventListener('beforeunload', async function (e) {
      pas.Unit1.Form1.FinalRequest();
    });
  end;
end;

function TForm1.JSONRequest(Endpoint: String; Params: array of JSValue): String;
var
  ClientConn: TXDataWebClient;
  Response: TXDataClientResponse;
  Blob: JSValue;
  ErrorCode: String;
  ErrorMessage: String;
  Elapsed: TDateTime;
begin
  Elapsed := Now;
  Result := '';
  LogAction('Requested: '+Endpoint);

  await(XDataConnect);
  if (XdataConn.Connected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := XDataConn;
      Response := await(ClientConn.RawInvokeAsync(Endpoint, Params));

      Blob := Response.Result;
      asm Result = await Blob.text(); end;

    except on E: Exception do
      begin
        // Get the error message we created in XData
        asm {
          var ErrorDetail = JSON.parse( await E.FErrorResult.FResponse.$o.FXhr.response.text() );
          ErrorCode = ErrorDetail.error.code;
          ErrorMessage = ErrorDetail.error.message;
        } end;

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('ERROR Request Exception Received From'+Endpoint);
        LogAction(' -- ['+E.ClassName+']');
        LogAction(' -- '+Copy(E.Message,1,Pos('Uri:',E.Message)-2));
        LogAction(' -- '+Copy(E.Message,Pos('Status code:',E.Message),16));
        LogAction(' -- '+ErrorCode);
        LogAction(' -- '+ErrorMessage);
      end;
    end;
  end;

  LogAction('Responded: '+Endpoint+' ('+IntToStr(MillisecondsBetween(Now, Elapsed))+'ms)');
  PreventCompilerHint(Blob);
end;

procedure TForm1.Logout(Reason: String; LogoutAll: Boolean);
var
  FinalLog: String;
begin
  if LoggedIn then
  begin
    LoggedIn := False;

    // We'll do our best to logout cleanly, but if anything is amiss, we still want to logout
    tmrLogout.Enabled := True;

    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

    // Make sure this doesn't fire
    tmrJWTRenewal.Enabled := False;

    // Make a note of session time
    LogAction(' ');
    LogAction('Logout: '+Reason);
    LogAction('Session Duration: '+FormatDateTime('h"h "m"m "s"s"', Now - App_Start));

    FinalLog := ActionLogCurrent.Text;
    ActionLogCurrent.Text := '';
    ActionLog.text := '';

    // Record logout at Server
    if LogoutAll
    then await(JSONRequest('ISystemService.LogoutAll',[App_Session, FinalLog]))
    else await(JSONRequest('ISystemService.Logout',[App_Session, FinalLog]));

    // Hide the page, remove the history
    asm
      window.history.replaceState(null,null,window.location.href.split('#')[0]);
      document.body.style.setProperty('opacity','0');
    end;

    // This effectively ends the current session
    JWT := '';
    TWebLocalStorage.RemoveKey('Login.JWT');
    TWebLocalStorage.RemoveKey('Login.Expiry');

  end;
end;

procedure TForm1.XDataConnect;
var
  ElapsedTime: TDateTime;
begin
  ElapsedTime := Now;

  if not(XDataConn.Connected) then
  begin

    // Should be updated to point at our XData server, wherever it may be
    XDataConn.URL := Server_URL;

    // Try and establish a connection to the server
    try
      LogAction('Connecting to: '+XDataConn.URL);
      await(XDataConn.OpenAsync);
      LogAction('Connection Established: ('+IntToStr(MillisecondsBetween(Now, ElapsedTime))+'ms)');
    except on E: Exception do
      begin
        LogAction('Connection Failed: '+XDataConn.URL);
        LogAction(' -- ['+E.ClassName+']');
        LogAction(' -- '+E.Message);
      end;
    end;
  end;
end;

procedure TForm1.XDataConnRequest(Args: TXDataWebConnectionRequest);
begin
  Args.Request.Headers.SetValue('Authorization', JWT);
end;

procedure TForm1.LogAction(Action: String);
var
  FilterAction: String;
begin
  FilterAction := StringReplace(Action, chr(10), '', [rfReplaceAll]);
  FilterAction := StringReplace(FilterAction, chr(13), '', [rfReplaceAll]);
  FilterAction := StringReplace(FilterAction, '"', '''', [rfReplaceAll]);

  // Log the action to a TStringList
  ActionLog.Add(FormatDateTime(App_LogDateTimeFormat,  TTimeZone.Local.ToUniversalTime(Now))+' UTC  '+FilterAction);
  ActionLogCurrent.Add(FormatDateTime(App_LogDateTimeFormat,  TTimeZone.Local.ToUniversalTime(Now))+' UTC  '+FilterAction);

  // Log to Console
//  console.Log(FilterAction);

end;

function TForm1.XDataLogin(Username, Password: String):String;
var
  Response: TXDataClientResponse;
  ClientConn: TXDataWebClient;
  Blob: JSValue;
  NewJWT: String;
  ElapsedTime: TDateTime;
  ErrorCode: String;
  ErrorMessage: String;
begin

  ElapsedTime := Now;
  NewJWT := '';
  ErrorCode := '';
  ErrorMessage := '';

  LogAction('Attempting Login');


  // Call it again in case it has been disconnected
  await(XDataConnect);


  if (XDataConn.Connected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := XDataConn;
      Response := await(ClientConn.RawInvokeAsync('ISystemService.Login', [
        Username,
        Password,
        '{2DF239F0-8A9D-4531-9BC2-AB911CB40C4E}', // API_KEY
        App_TZ,
        App_IPAddress,
        App_Location,
        App_Device,
        App_Browser
      ]));

      Blob := Response.Result;
      asm NewJWT = await Blob.text(); end;

    except on E: Exception do
      begin
        // Get the error message we created in XData
        asm {
          var ErrorDetail = JSON.parse( await E.FErrorResult.FResponse.$o.FXhr.response.text() );
          ErrorCode = ErrorDetail.error.code;
          ErrorMessage = ErrorDetail.error.message;
        } end;

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('Login Exception:');
        LogAction(' -- ['+E.ClassName+']');
        LogAction(' -- '+Copy(E.Message,1,Pos('Uri:',E.Message)-2));
        LogAction(' -- '+Copy(E.Message,Pos('Status code:',E.Message),16));
        LogAction(' -- '+ErrorCode);
        LogAction(' -- '+ErrorMessage);
      end;
    end;
  end;

  // We've got a JWT
  if Pos('Bearer ', NewJWT) = 1 then
  begin
    // How long did it take?
    LogAction('Login Successful ('+IntToStr(MilliSecondsBetween(Now, ElapsedTime))+'ms)');

    // Do stuff with the JWT
    await(ProcessJWT(NewJWT));

    // All done
    Result := 'Success';
    LoggedIn := True;
  end
  else
  begin
    LoggedIn := False;
    Result := ErrorCode+' / '+ErrorMessage;
  end;

  PreventCompilerHint(Blob);
end;


procedure TForm1.ProcessJWT(aJWT: String);
var
  JWTClaims: TJSONObject;
//  i: Integer;
begin
  JWT := aJWT;

  // Get JSON Claims from JWT
  JWTClaims := TJSONObject.ParseJSONValue(Window.atob(Copy(JWT, Pos('.',JWT)+1, LastDelimiter('.',JWT)-Pos('.',JWT)-1))) as TJSONObject;

  // Extract user information
  User_FirstName :=  (JWTClaims.GetValue('fnm') as TJSONString).Value;
  User_MiddleName :=  (JWTClaims.GetValue('mnm') as TJSONString).Value;
  User_LastName :=  (JWTClaims.GetValue('lnm') as TJSONString).Value;
  User_EMail :=  (JWTClaims.GetValue('eml') as TJSONString).Value;
  User_Account := (JWTClaims.GetValue('anm') as TJSONString).Value;
  User_ID := (JWTClaims.GetValue('usr') as TJSONNumber).AsInt;
  User_Roles.CommaText :=  (JWTClaims.GetValue('rol') as TJSONString).Value;

  // Set renewal to one minute before expiration
  JWT_Expiry := UnixToDateTime((JWTClaims.GetValue('exp') as TJSONNumber).AsInt);

  // Set renewal to one minute before expiration
  JWT_Expiry := UnixToDateTime((JWTClaims.GetValue('exp') as TJSONNumber).AsInt);
  tmrJWTRenewal.Enabled := False;
  tmrJWTRenewal.Interval := MillisecondsBetween(JWT_Expiry, TTimeZone.Local.ToUniversalTime(Now)) - 30000;
//  tmrJWTRenewal.Interval := 30000;

  // If it has already expired, then not much point in continuing?
  if tmrJWTRenewal.Interval <= 0 then
  begin
    await(Logout('JWT Expired', False));
    exit;
  end;

  tmrJWTRenewal.Enabled := True;

  TWebLocalStorage.SetValue('Login.JWT', JWT);
  TWebLocalStorage.SetValue('Login.Expiry', FloatToStr(JWT_Expiry));

  LogAction('Processing Token:');
  LogAction(' -- Name: '+StringReplace(User_FirstName+' '+User_MiddleName+' '+User_LastName,'  ',' ',[rfReplaceAll]));
  LogAction(' -- EMail: '+User_Email);
  LogAction(' -- Roles: '+User_Roles.CommaText);
  LogAction(' -- Expires: '+(JWTClaims.GetValue('unt') as TJSONString).Value);
  LogAction(' -- Token Processed.');

end;

procedure TForm1.ProcessLogin;
begin
  btnRegister.Visible := False;
  btnLogin.Visible := False;
  btnAdd.Visible := True;
  btnAccount.Visible := True;
end;

procedure TForm1.SelectAccountOption(OptionID: Integer);
begin
  // Fade In/Out between pages
  if (pcAccount.TabIndex <> OptionID) then
  begin
    pcAccount.ActivePage.ElementHandle.style.setProperty('opacity','0');
    asm await sleep(200); end;
  end;

  pcAccount.TabIndex := OptionID;
  pcAccount.ActivePage.ElementHandle.style.setProperty('opacity','1');
  LogAction('- Account Settings: '+pcAccount.ActivePage.Name);

  if pcAccount.ActivePage.Name = 'pageAccountHistory' then
  begin
    asm
      pas.Unit1.Form1.tabAccountHistory.redraw(true);
    end;
  end;
end;

procedure TForm1.tmrJWTRenewalTimer(Sender: TObject);
var
  ResponseString: String;
  ActionLogSend: String;
begin
  tmrJWTRenewal.Enabled := False;

  if LoggedIn then
  begin
    LogAction(' ');
    LogAction('Renew JWT');
  end;

  ActionLogSend := ActionLogCurrent.Text;
  ActionLogCurrent.Text := '';

  ResponseString := await(JSONRequest('ISystemService.Renew',[App_Session, ActionLogSend]));
  if Copy(ResponseString,1,6) =  'Bearer' then
  begin
    await(ProcessJWT(ResponseString));
    LogAction('JWT Renewed');
  end
  else
  begin
    // Otherwise perform an automatic logout of this session
    LogAction('JWT NOT Renewed');
    LoggedIn := False;
    btnRegister.Visible := True;
    btnLogin.Visible := True;
    btnAdd.Visible := False;
    btnAccount.Visible := False;

//    await(Logout('NoRenewal', False));
  end
end;

procedure TForm1.btnLoginOKClick(Sender: TObject);
var
  LoginCheck: String;
begin

  LoggedIn := False;

  divLoginMessage.ElementHandle.classList.replace('d-none','d-flex');
  divLoginMessage.HTML.Text := '<div class="DropShadow">Authorizing... <i class="fa-duotone fa-atom-simple ms-3 fa-xl fa-spin Swap"></i></div>';

  LoginCheck := await(XDataLogin(editUSername.Text, editPassword.Text));

  if LoginCheck = 'Success' then
  begin
    // Briefly show successful login message
    PasswordCheck := SHA256('XData-Password:'+Trim(editPassword.Text));
    editPassword.Text := '';
    TWebLocalStorage.SetValue('Login.Username', editUsername.Text);
    TWebLocalStorage.SetValue('Login.JWT', JWT);
    TWebLocalStorage.SetValue('Login.Expiry', FloatToStr(JWT_Expiry));
    TWebLocalStorage.SetValue('Login.PasswordHash', PasswordCheck);

    divLoginmessage.HTML.Text := '<div class="DropShadow">Successful... <i class="fa-duotone fa-thumbs-up ms-3 Swap fa-xl"></i></div>';
    asm await sleep(500); end;
    btnLoginCancelClick(Sender);

    ProcessLogin;
  end
  else
  begin
    LoginCheck := StringReplace(LoginCheck,': ',':<br />',[]);
    LoginCheck := StringReplace(LoginCheck,'. ','.<br />',[]);
    if Trim(LoginCheck) = '/'
    then LoginCheck := 'System Error / Server connection could not be established.';
    divLoginMessage.HTML.Text := '<div class="DropShadow">'+Copy(LoginCheck,1,Pos('/',LoginCheck) -2)+'<br/>'+Copy(LoginCheck, Pos('/',LoginCheck)+2,Length(LoginCheck));
    asm await sleep(5000); end;
    divLoginMessage.ElementHandle.classList.replace('d-flex','d-none');
    editPassword.SetFocus;
    editPassword.SelectAll;
  end;

end;

procedure TForm1.btnLogoutAllClick(Sender: TObject);
begin
  // Logout All
  TWebLocalStorage.RemoveKey('Theme');
  TWebLocalStorage.RemoveKey('Login.Username');
  TWebLocalStorage.RemoveKey('Login.JWT');
  TWebLocalStorage.RemoveKey('Login.Expiry');
  TWebLocalStorage.RemoveKey('Login.PasswordHash');
  await(Logout('All', True));
end;

procedure TForm1.btnLogoutCleanClick(Sender: TObject);
begin
  // Logout Clean
  TWebLocalStorage.RemoveKey('Theme');
  TWebLocalStorage.RemoveKey('Login.Username');
  TWebLocalStorage.RemoveKey('Login.JWT');
  TWebLocalStorage.RemoveKey('Login.Expiry');
  TWebLocalStorage.RemoveKey('Login.PasswordHash');
  await(Logout('Clean', False));
end;

procedure TForm1.btnLogoutHereClick(Sender: TObject);
begin
  // Logout Here
  await(Logout('Normal', False));
end;

procedure TForm1.btnAccountChangeClick(Sender: TObject);
begin
  // Manage different Account

end;

procedure TForm1.btnAccountClick(Sender: TObject);
var
  i: Integer;
  ResponseString: String;
  SessionTimestamp: Array of String;
  SessionID: Array of String;
  OldDate: TDateTime;
  NewDate: TDateTime;
begin
  // Account Information
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnAccount) then
  begin
    LogAction(' ');
    LogAction('[ Account Settings ]');

    // Set Caption for "window"
    labelAccountTitle.HTML := '<i class="fa-duotone fa-fw fa-xl fa-cat Swap me-2"></i>'+User_Firstname+' '+User_MiddleName+' '+User_LastName;
    editAccountName.Text := User_Account;
    editFirstName.Text := User_Firstname;
    editMiddleName.Text := User_MiddleName;
    editLastName.Text := User_LastName;
    editEMail.Text := User_EMail;

    // Make sure first row is selected
    pcAccount.TabIndex := 0;
    pcAccount.ActivePage.ElementHandle.style.setProperty('opacity','1');
    asm
      this.tabAccountOptions.deselectRow();
      this.tabAccountOptions.selectRow([0]);
    end;
  end;

  // Reset Change PAssword fields
  btnChangePAssword.Caption := '<i class="fa-duotone fa-xmark Swap me-2 fa-2x"></i>';
  divChangePassword.ElementHandle.classList.Add('pe-none');
  editCurrentPassword.Text := '';
  editNewPassword.Text := '';
  editConfirmPassword.Text := '';

  // Show window with shade
  divShade.Visible := True;
  divAccount.Visible := True;
  divShade.ElementHandle.style.setProperty('opacity','0.7');
  divAccount.ElementHandle.style.setProperty('opacity','1.0');

  // Get other Account Information
  ResponseString := await(JSONRequest('IPersonService.Profile',[]));
  if ResponseString <> '' then
  begin
    asm
      var data = JSON.parse(ResponseString);
      divAccountPhoto.innerHTML = data['Photo'];
      this.tabAccountHistory.setData(data['RecentLogins']);

      for (var i = 0; i < data['RecentActions'].length; i++) {
        SessionTimestamp.push(data['RecentActions'][i].session_start);
        SessionID.push(data['RecentActions'][i].session_id);
      }

//      var email = -1;
//      var phone = -1;
//      for (var i = 0; i < data['Contact'].length; i++) {
//        if (data['Contact'][i]['list_contact'] == 1) {
//          if (email == -1) {
//            email = i;
//          }
//        }
//        else if (data['Contact'][i]['list_contact'] == 3) {
//          if (phone == -1) {
//            phone = i;
//          }
//        }
//      }
//      iconEMail.innerHTML = icon['EMail'];
//      if (email !== -1) {
//        labelEMail.innerHTML = '<a title="'+data['Contact'][email]['value']+'" href=mailto:"'+data['Contact'][email]['value']+'">'+data['Contact'][email]['value']+'</a>';
//      }
//      iconPhone.innerHTML = icon['Telephone'];
//      if (phone !== -1) {
//        labelPhone.innerHTML = '<a title="'+data['Contact'][phone]['value']+'" href="tel:'+data['Contact'][phone]['value']+'">'+data['Contact'][phone]['value']+'</a>';
//      }

//      var lastlogin = luxon.DateTime.fromISO(data['RecentLogins'][0]['logged_in'].split(' ').join('T'),{zone:"utc"}).setZone("system").toFormat(window.DisplayDateTimeFormat);
//      iconLastLogin.innerHTML = icon['Login'];
//      labelLastLogin.innerHTML = '<span title="'+lastlogin+'">'+lastlogin+'</span>';
//
//      iconRecentLogins.innerHTML = icon['Clock'];
//      labelRecentLogins.innerHTML = data['RecentLogins'].length+' <small class="text-secondary me-3"> 7d </small> '+data['Logins'][0]['logins']+' <small class="text-secondary"> All </small>';
//
//
//      titleContacts.innerHTML = icon['AddressBook']+'<span class="ms-2">Contacts for '+data['Profile'][0]['first_name']+' '+data['Profile'][0]['last_name']+'</span>';
//      var tablerows = '';
//      for (var i = 0; i < data['Contact'].length; i++) {
//        tablerows += '<tr>'
//        var contact_icon = data['Contact'][i]['contact_attributes'];
//        if (contact_icon.indexOf(':') == 0) {
//          contact_icon = icon[contact_icon.replace(':','')];
//        }
//        tablerows += '<td>'+contact_icon+'</td>';
//        tablerows += '<td>'+data['Contact'][i]['contact_type']+'</td>';
//        tablerows += '<td>'+data['Contact'][i]['value']+'</td>';
//        tablerows += '</tr>'
//      }
//      tableContacts.innerHTML = tablerows;
//
    end;
  end;

  // Configure Activity History List
  comboActivityLog.LookupValues.Clear;
  comboActivityLog.LookupValues.AddPair('Current', 'Current Session');
  i := 0;
  while i < Length(SessionTimestamp) do
  begin
    if btnActivityLogTimeZone.Tag = 0 then
    begin
      comboActivityLog.LookupValues.AddPair(SessionID[i], SessionTimestamp[i]+' UTC');
    end
    else
    begin
      OldDate := EncodeDateTime(
        StrToInt(Copy(SessionTimestamp[i],1,4)),
        StrToInt(Copy(SessionTimestamp[i],6,2)),
        StrToInt(Copy(SessionTimeStamp[i],9,2)),
        StrToInt(Copy(SessionTimestamp[i],12,2)),
        StrToInt(Copy(SessionTimestamp[i],15,2)),
        StrToInt(Copy(SessionTimestamp[i],18,2)),
        StrToInt(Copy(SessionTimestamp[i],21,3))
      );
      NewDate := IncMinute(OldDate, - App_TZOffset);
      comboActivityLog.LookupValues.AddPair(SessionID[i], FormatDateTime(App_LogDateTimeFormat, NewDate));
    end;
    i := i + 1;
  end;

  // Configure Activity Log
  btnActivityLogReloadClick(Sender);
end;

procedure TForm1.btnBlogClick(Sender: TObject);
begin
  // Blog Button Clicked

  // Toggle button highlight (Selected class sets background to Yellow)
  if (Sender is TWebButton) then
  begin
    (Sender as TWebButton).ElementHandle.ParentElement.firstElementChild.classList.toggle('Selected');
  end;


end;

procedure TForm1.btnChangePasswordClick(Sender: TObject);
begin
  // Change Password

end;

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  // Login
  if not(LoggedIn) then
  begin
    editUsername.Text := Trim(TWebLocalStorage.GetValue('Login.Username'));
    editPassword.Text := '';
    divShade.Visible := True;
    divLogin.Visible := True;
    divShade.ElementHandle.style.setProperty('opacity','0.7');
    divLogin.ElementHandle.style.setProperty('opacity','1.0');
    divLoginMessage.ElementHandle.classList.replace('d-flex','d-none');
    if editUsername.Text <> ''
    then editPassword.SetFocus
    else editUsername.SetFocus;
  end;
end;

procedure TForm1.btnPasswordClick(Sender: TObject);
begin
  editPassword.Text := '';
  editPassword.SetFocus;
end;

procedure TForm1.btnRegisterClick(Sender: TObject);
begin
  // Register Account

end;

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  // Search for Blogs

end;

procedure TForm1.btnUsernameClick(Sender: TObject);
begin
  editUsername.Text := '';
  editUsername.SetFocus;
end;

procedure TForm1.comboActivityLogChange(Sender: TObject);
var
  Response: String;
  RemoteActionLog: TStringList;
  LocalActionLog: TStringList;
  LogLine: String;
  OldDate: TDateTime;
  NewDate: TDateTime;
  i: Integer;
begin

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  // Reload current session data
  if comboActivityLog.Value = 'Current' then
  begin
    btnActivityLogReloadClick(Sender);
  end
  else
  begin

    Response := await(JSONRequest('IPersonService.ActionLog',[User_ID, comboActivityLog.Value]));
    asm
      var resp = JSON.parse(Response);
      Response = resp['ActionsLog'][0].actions;
    end;
    RemoteActionLog := TStringList.Create;
    RemoteActionLog.Text := Response;

    if btnActivityLogTimezone.Tag = 1 then
    begin
      LocalActionLog := TStringList.Create;
      i := 0;
      while i < RemoteActionLog.Count do
      begin
        LogLine := RemoteActionLog[i];

        if Copy(LogLine,24,5) = ' UTC ' then
        begin
          OldDate := EncodeDateTime(
            StrToInt(Copy(LogLine,1,4)),
            StrToInt(Copy(LogLine,6,2)),
            StrToInt(Copy(LogLine,9,2)),
            StrToInt(Copy(LogLine,12,2)),
            StrToInt(Copy(LogLine,15,2)),
            StrToInt(Copy(LogLine,18,2)),
            StrToInt(Copy(LogLine,21,3))
          );
          NewDate := IncMinute(OldDate, - App_TZOffset);
          LogLine := FormatDateTime(App_LogDateTimeFormat, NewDate)+Copy(LogLine,28,length(LogLine));
        end;

        LocalActionLog.Add(LogLine);
        i := i + 1;
      end;
      divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+LocalActionLog.Text+'</pre>';
    end
    else
    begin
      divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+RemoteActionLog.Text+'</pre>';
    end;
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';

end;

procedure TForm1.btnThemeClick(Sender: TObject);
begin
  // Switch Themes - only 'dark' and 'light' for now
  if Theme = 'dark' then
  begin
    Theme := 'red';
    btnTheme.Caption := '<i class="fa-duotone fa-heart fa-3x"></i>';
  end
  else if Theme = 'red' then
  begin
    Theme := 'light';
    btnTheme.Caption := '<i class="fa-duotone fa-sun fa-3x"></i>';
  end
  else
  begin
    Theme := 'dark';
    btnTheme.Caption := '<i class="fa-duotone fa-moon fa-3x"></i>';
  end;

  // If Font Awesome Pro is not available, switch to the free version
  // btnTheme.Caption := StringReplace(btnTheme.Caption,'fa-duotone','fa-solid',[]);

  // this sets the 'theme' attribute in the top-most <html> tag
  document.documentElement.setAttribute('theme', Theme);
  TWebLocalStorage.SetValue('Theme',Theme);
end;

procedure TForm1.ConfigureTooltip(Button: TWebButton);
begin
  // If Font Awesome Pro is not available, switch to the free version
  //Button.Caption := StringReplace(Button.Caption,'fa-duotone','fa-solid',[]);

  Button.ElementHandle.setAttribute('title',Button.Hint);
  Button.ElementHandle.setAttribute('data-bs-toggle','tooltip');
  Button.ElementHandle.setAttribute('data-bs-placement','bottom');
  Button.ElementHandle.setAttribute('data-bs-delay','{"show": 1000, "hide": 0}');
  Button.ElementHandle.setAttribute('data-bs-custom-class','BLTooltip');

end;

procedure TForm1.editCurrentPasswordChange(Sender: TObject);
begin
  if (Trim(editCurrentPassword.Text) = '') then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.Caption := 'Enter Current Password';
  end
  else if (SHA256('XData-Password:'+Trim(editCurrentPassword.Text)) <> PasswordCheck)  then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.Caption := 'Current Password Does Not Match Login Password';
  end
  else if Trim(editNewPassword.Text) = '' then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.Caption := 'Enter New Password';
  end
  else if Trim(editConfirmPassword.Text) = '' then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.Caption := 'Confirm New Password';
  end
  else if Trim(editNewPassword.Text) <> Trim(editConfirmPassword.Text) then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.Caption := 'New Password and Confirmation Password Do Not Match';
  end
  else
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-check Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.remove('pe-none');
    labelChangePassword.Caption := 'Save New Password';
  end;
end;

procedure TForm1.FinalRequest;
begin
  LogAction(' ');
  LogAction('Browser closed.');
  LogAction('Session Duration: '+FormatDateTime('h"h "m"m "s"s"', Now - App_Start));
  LoggedIn := False;
  tmrJWTRenewalTimer(nil);
end;

procedure TForm1.btnLoginCancelClick(Sender: TObject);
begin
  divShade.ElementHandle.style.setProperty('opacity','0.0');
  divLogin.ElementHandle.style.setProperty('opacity','0.0');
  asm await sleep(500); end;
  divShade.Visible := False;
  divLogin.Visible := False;
end;

procedure TForm1.btnAccountCloseClick(Sender: TObject);
begin
  divShade.ElementHandle.style.setProperty('opacity','0.0');
  divAccount.ElementHandle.style.setProperty('opacity','0.0');
  divAccount.Width := Trunc(divAccount.ElementHandle.getBoundingClientRect.Width);
  divAccount.Height := Trunc(divAccount.ElementHandle.getBoundingClientRect.Height);
  asm await sleep(500); end;
  divShade.Visible := False;
  divAccount.Visible := False;
  LogAction('[ Account Settings Closed ]');

  await(tmrJWTRenewalTimer(Sender));
end;

procedure TForm1.btnAccountRefreshClick(Sender: TObject);
begin
  LogAction('[ Account Settings Refresh ]');
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin Swap fa-xl"></i>';
  await(btnAccountClick(Sender));
  LogAction('Account Settings Refreshed');
  btnActivityLogReloadClick(Sender);
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;


procedure TForm1.btnActivityLogReloadClick(Sender: TObject);
var
  LocalActionLog: TStringList;
  LogLine: String;
  i: integer;
  OldDate: TDateTime;
  NewDate: TDateTime;
begin
  comboActivityLog.ItemIndex := 0;

  if btnActivityLogTimezone.Tag = 1 then
  begin
    LocalActionLog := TStringList.Create;
    i := 0;
    while i < ActionLog.Count do
    begin
      LogLine := ActionLog[i];

      if Copy(LogLine,24,6) = ' UTC  ' then
      begin
        OldDate := EncodeDateTime(
          StrToInt(Copy(LogLine,1,4)),
          StrToInt(Copy(LogLine,6,2)),
          StrToInt(Copy(LogLine,9,2)),
          StrToInt(Copy(LogLine,12,2)),
          StrToInt(Copy(LogLine,15,2)),
          StrToInt(Copy(LogLine,18,2)),
          StrToInt(Copy(LogLine,21,3))
        );
        NewDate := IncMinute(OldDate, - App_TZOffset);
        LogLine := FormatDateTime(App_LogDateTimeFormat, NewDate)+Copy(LogLine,28,length(LogLine));
      end;

      LocalActionLog.Add(LogLine);
      i := i + 1;
    end;
    divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+LocalActionLog.Text+'</pre>';
  end
  else
  begin
    divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+ActionLog.Text+'</pre>';
  end;
end;

procedure TForm1.btnActivityLogTimezoneClick(Sender: TObject);
begin

  if btnActivityLogTimezone.Tag = 0 then
  begin
    btnActivityLogTimezone.Tag := 1;
    btnActivityLogTimezone.Caption := '<i class="fa-duotone fa-clock-desk fa-lg Swap"></i>';
  end
  else
  begin
    btnActivityLogTimezone.Tag := 0;
    btnActivityLogTimezone.Caption := '<i class="fa-duotone fa-globe fa-lg Swap"></i>';
  end;

  btnAccountRefreshClick(Sender);
end;

procedure TForm1.WebFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (divLogin.Visible) and divLoginMessage.ElementHandle.classList.contains('d-none') then
  begin
    if Key = VK_RETURN then
    begin
      if (Trim(editUsername.Text) = '') then
      begin
        editUsername.SetFocus;
      end
      else if (Trim(editPassword.Text) = '') then
      begin
        editPassword.SetFocus;
      end
      else
      begin
        btnLoginOKClick(Sender);
      end;
    end
    else if Key = VK_ESCAPE then
    begin
      btnLoginCancelClick(Sender);
    end;
  end
  else
  begin
    if (divLogin.Visible = False) and (Key = VK_RETURN) and (LoggedIn = False) then
    begin
      btnLoginClick(Sender);
    end;
  end;

end;


procedure TForm1.tmrLogoutTimer(Sender: TObject);
begin
  tmrLogout.Enabled := False;
  window.location.reload(true);
end;

function TForm1.SHA256(Text2Encode: String): String;
var
  EncodedText: String;
begin
  EncodedText := '';
  asm
var sha256 = function sha256(ascii) {
    function rightRotate(value, amount) {
        return (value>>>amount) | (value<<(32 - amount));
    };

    var mathPow = Math.pow;
    var maxWord = mathPow(2, 32);
    var lengthProperty = 'length'
    var i, j; // Used as a counter across the whole file
    var result = ''

    var words = [];
    var asciiBitLength = ascii[lengthProperty]*8;

    //* caching results is optional - remove/add slash from front of this line to toggle
    // Initial hash value: first 32 bits of the fractional parts of the square roots of the first 8 primes
    // (we actually calculate the first 64, but extra values are just ignored)
    var hash = sha256.h = sha256.h || [];
    // Round constants: first 32 bits of the fractional parts of the cube roots of the first 64 primes
    var k = sha256.k = sha256.k || [];
    var primeCounter = k[lengthProperty];
    /*/
    var hash = [], k = [];
    var primeCounter = 0;
    //*/

    var isComposite = {};
    for (var candidate = 2; primeCounter < 64; candidate++) {
        if (!isComposite[candidate]) {
            for (i = 0; i < 313; i += candidate) {
                isComposite[i] = candidate;
            }
            hash[primeCounter] = (mathPow(candidate, .5)*maxWord)|0;
            k[primeCounter++] = (mathPow(candidate, 1/3)*maxWord)|0;
        }
    }

    ascii += '\x80' // Append Ƈ' bit (plus zero padding)
    while (ascii[lengthProperty]%64 - 56) ascii += '\x00' // More zero padding
    for (i = 0; i < ascii[lengthProperty]; i++) {
        j = ascii.charCodeAt(i);
        if (j>>8) return; // ASCII check: only accept characters in range 0-255
        words[i>>2] |= j << ((3 - i)%4)*8;
    }
    words[words[lengthProperty]] = ((asciiBitLength/maxWord)|0);
    words[words[lengthProperty]] = (asciiBitLength)

    // process each chunk
    for (j = 0; j < words[lengthProperty];) {
        var w = words.slice(j, j += 16); // The message is expanded into 64 words as part of the iteration
        var oldHash = hash;
        // This is now the undefinedworking hash", often labelled as variables a...g
        // (we have to truncate as well, otherwise extra entries at the end accumulate
        hash = hash.slice(0, 8);

        for (i = 0; i < 64; i++) {
            var i2 = i + j;
            // Expand the message into 64 words
            // Used below if
            var w15 = w[i - 15], w2 = w[i - 2];

            // Iterate
            var a = hash[0], e = hash[4];
            var temp1 = hash[7]
                + (rightRotate(e, 6) ^ rightRotate(e, 11) ^ rightRotate(e, 25)) // S1
                + ((e&hash[5])^((~e)&hash[6])) // ch
                + k[i]
                // Expand the message schedule if needed
                + (w[i] = (i < 16) ? w[i] : (
                        w[i - 16]
                        + (rightRotate(w15, 7) ^ rightRotate(w15, 18) ^ (w15>>>3)) // s0
                        + w[i - 7]
                        + (rightRotate(w2, 17) ^ rightRotate(w2, 19) ^ (w2>>>10)) // s1
                    )|0
                );
            // This is only used once, so *could* be moved below, but it only saves 4 bytes and makes things unreadble
            var temp2 = (rightRotate(a, 2) ^ rightRotate(a, 13) ^ rightRotate(a, 22)) // S0
                + ((a&hash[1])^(a&hash[2])^(hash[1]&hash[2])); // maj

            hash = [(temp1 + temp2)|0].concat(hash); // We don't bother trimming off the extra ones, they're harmless as long as we're truncating when we do the slice()
            hash[4] = (hash[4] + temp1)|0;
        }

        for (i = 0; i < 8; i++) {
            hash[i] = (hash[i] + oldHash[i])|0;
        }
    }

    for (i = 0; i < 8; i++) {
        for (j = 3; j + 1; j--) {
            var b = (hash[i]>>(j*8))&255;
            result += ((b < 16) ? 0 : '') + b.toString(16);
        }
    }
    return result;
};

    EncodedText = sha256(Text2Encode);
  end;
  Result := EncodedText;
end;

procedure TForm1.StopLinkerRemoval(P: Pointer);                          begin end;
procedure TForm1.PreventCompilerHint(H: TJSHTMLElement);       overload; begin end;
procedure TForm1.PreventCompilerHint(I: integer);              overload; begin end;
procedure TForm1.PreventCompilerHint(J: JSValue);              overload; begin end;
procedure TForm1.PreventCompilerHint(S: string);               overload; begin end;

end.
