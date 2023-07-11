unit Unit2;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls, jsDelphiSystem,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.WebCtrls;

type
  TForm2 = class(TWebForm)
    divStatsHolder: TWebHTMLDiv;
    divStatOptions: TWebHTMLDiv;
    procedure WebFormCreate(Sender: TObject);
    procedure SelectStatOption(Option: Integer);
    [async] procedure UpdateStatsNumbers;
  private
    { Private declarations }
  public
    { Public declarations }

    tabStatOptions: JSValue;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses Unit1;

procedure TForm2.SelectStatOption(Option: Integer);
begin
  //
end;

procedure TForm2.UpdateStatsNumbers;
var
  ResponseString: String;
begin
  ResponseString := await(Form1.JSONRequest('IStatisticsService.Today',[]));
  asm
    var This = pas.Unit1.Form1.StatsForm;
    var data = JSON.parse(ResponseString);
    console.log(data);
    This.tabStatOptions.getRow(0).getCell('Entries').setValue((data['Logins'][0]['logins']).toLocaleString());
    This.tabStatOptions.getRow(1).getCell('Entries').setValue((data['Sessions'][0]['sessions']).toLocaleString());
    This.tabStatOptions.getRow(2).getCell('Entries').setValue((data['Events'][0]['events']).toLocaleString());
    This.tabStatOptions.getRow(3).getCell('Entries').setValue((data['Changes'][0]['changes']).toLocaleString());
    This.tabStatOptions.getRow(4).getCell('Entries').setValue((data['Errors'][0]['errors']).toLocaleString());
    This.tabStatOptions.getRow(5).getCell('Entries').setValue((data['Registrations'][0]['registrations']).toLocaleString());
    This.tabStatOptions.getRow(6).getCell('Entries').setValue((data['Endpoints'][0]['endpoints']).toLocaleString());
  end;

  Form1.PreventCompilerHint(ResponseString);
end;

procedure TForm2.WebFormCreate(Sender: TObject);
begin

  // Statistics Tabulator
  asm
    var dataSO = [
      { ID:  0, Name: "Unique Logins",   Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-person-to-portal'></i>" },
      { ID:  1, Name: "Sessions",        Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-clock'></i>"            },
      { ID:  2, Name: "Events",          Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-computer-mouse'></i>"   },
      { ID:  3, Name: "Changes",         Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-hammer'></i>"           },
      { ID:  4, Name: "Errors",          Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-bug'></i>"              },
      { ID:  5, Name: "Registrations",   Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-clipboard-user'></i>"   },
      { ID:  6, Name: "Endpoints",       Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-split'></i>"            }
    ];

    this.tabStatOptions = new Tabulator("#divStatOptions", {
      data: dataSO,
      index: "ID",
      layout: "fitColumns",
      selectable: 1,
      rowHeight: 27,
      headerVisible: false,
      columnDefaults:{
        resizable: false
      },
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "Icon", field: "Icon", hozAlign: "center", formatter: "html", minWidth: 40, width: 40},
        { title: "Name", field: "Name" },
        { title: "Entries", field: "Entries", width: 40,
            formatter: function(cell, formatterParams, onRendered) {
              if (cell.getValue() == 0) {
                return '';
              }
              else {
                return '<div class="d-flex justify-content-end align-items-center"><div class="Entries"><div>'+cell.getValue()+'</div></div></div>';
              }
            }
        }
      ]
    });
    this.tabStatOptions.on('rowClick', function(e, row){
      var This = pas.Unit1.Form1.StatsForm;
      This.tabStatOptions.selectRow([row]);
      This.SelectStatOption(row.getCell('ID').getValue());
    });
    this.tabStatOptions.on('tableBuilt', function(e, row){
      var This = pas.Unit1.Form1.StatsForm;
      This.tabStatOptions.selectRow([0]);
    });

  end;

  divStatsHolder.ElementHandle.style.setProperty('opacity','1');
  UpdateStatsNumbers;
end;

end.