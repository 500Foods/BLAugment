program blaugment;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  UnitMain in 'forms\UnitMain.pas' {FormMain: TWebForm} {*.html},
  UnitStats in 'forms\UnitStats.pas' {FormStats: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
