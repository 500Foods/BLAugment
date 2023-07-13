unit Unit2;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls, jsDelphiSystem,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.WebCtrls,
  Vcl.StdCtrls, WEBLib.StdCtrls, WEBLib.ComCtrls, WEBLib.ExtCtrls;

type
  TForm2 = class(TWebForm)
    divStatsHolder: TWebHTMLDiv;
    divStatOptions: TWebHTMLDiv;
    pcStatistics: TWebPageControl;
    pageLogins: TWebTabSheet;
    pageSessions: TWebTabSheet;
    pageEvents: TWebTabSheet;
    WebLabel1: TWebLabel;
    WebLabel2: TWebLabel;
    divLoginsHeader: TWebHTMLDiv;
    divLoginsChoices: TWebPanel;
    btnLoginsUniqueLogins: TWebButton;
    btnLoginsLogins: TWebButton;
    divLoginsAggChoices: TWebPanel;
    btnLogins15m: TWebButton;
    btnLogins1hr: TWebButton;
    btnLogins3hr: TWebButton;
    btnLogins1d: TWebButton;
    btnLogins7d: TWebButton;
    btnLogins1mo: TWebButton;
    divLoginsChart: TWebHTMLDiv;
    divLoginsControl: TWebHTMLDiv;
    btnLoginsRefresh: TWebButton;
    btnLoginsEMail: TWebButton;
    btnLoginsPrint: TWebButton;
    divLoginsFooter: TWebHTMLDiv;
    WebPanel1: TWebPanel;
    btnLoginsExport: TWebButton;
    btnLoginsExportCSV: TWebButton;
    btnLoginsExportXLS: TWebButton;
    btnLoginsExportPDF: TWebButton;
    btnLoginsExportJSON: TWebButton;
    btnLoginsExportPrint: TWebButton;
    divLoginsDataHolder: TWebHTMLDiv;
    divLoginsData: TWebHTMLDiv;
    divLoginsRecords: TWebLabel;
    btnLogins3mo: TWebButton;
    btnLogins1y: TWebButton;
    btnLoginsClose: TWebButton;
    memoChartRounding: TWebMemo;
    procedure WebFormCreate(Sender: TObject);
    [async] procedure SelectStatOption(OptionID: Integer);
    [async] procedure UpdateStatsNumbers;
    procedure btnLoginsUniqueLoginsClick(Sender: TObject);
    procedure btnLoginsLoginsClick(Sender: TObject);
    procedure btnLogins15mClick(Sender: TObject);
    procedure btnLogins1hrClick(Sender: TObject);
    procedure btnLogins3hrClick(Sender: TObject);
    procedure btnLogins1dClick(Sender: TObject);
    procedure btnLogins7dClick(Sender: TObject);
    procedure btnLogins1moClick(Sender: TObject);
    [async] procedure btnLoginsExportClick(Sender: TObject);
    [async] procedure btnLoginsRefreshClick(Sender: TObject);
    procedure btnLogins3moClick(Sender: TObject);
    procedure btnLogins1yClick(Sender: TObject);
    procedure CreateD3BarChart(Chart:TWebHTMLDiv; XData: String; YData: String);
    procedure btnLoginsExportPrintClick(Sender: TObject);
    procedure btnLoginsPrintClick(Sender: TObject);
    procedure btnLoginsCloseClick(Sender: TObject);
    [async] procedure btnLoginsEMailClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    CurrentStatsPage: String;

    ChartRounding: String;  // This is intentionally bizzare - a block of JS code in a TMemo field
                            // so we don't have to contend with the IDE complaining about backticks
                            // and all the invalid hexadecimal errors that are generated

    tabStatOptions: JSValue;
    tabLogins: JSValue;

    scrollLogins: JSValue;

    Current_Chart: TWebHTMLDiv;
    Current_XData: String;
    Current_YData: String;
  end;

var
  Form2: TForm2;

const
  Aggregates: Array[1..8] of String = ('15 mins', '1 hour', '3 hours', '1 day', '1 week', '1 month', '1 quarter', '1 year');

implementation

{$R *.dfm}
uses Unit1;

procedure TForm2.CreateD3BarChart(Chart: TWebHTMLDiv; XData: String; YData: String);
var
  NewChart: TWebHTMLDiv;
  ChartID: String;
  ChartWidth: Integer;
  ChartHeight: Integer;
  ChartRoundingCode: String;
const
  ChartMargin = 10;

begin

  Current_Chart := Chart;
  Current_XData := XData;
  Current_YData := YData;

  ChartRoundingCode := ChartRounding;

  ChartID := Chart.ElementID+'-D3';
  Chart.ELementHandle.innerHTML := '';
  ChartWidth := Trunc(Chart.ElementHandle.getBoundingClientRect().width) - ChartMargin * 2;
  ChartHeight := Trunc(Chart.ElementHandle.getBoundingClientRect().height) - ChartMargin * 2;

  NewChart := TWebHTMLDiv.Create(Self);
  NewChart.Parent := Chart;
  NewChart.ElementID := 'div'+ChartID;
  NewChart.ElementClassName := 'D3Chart';
  NewChart.Top := ChartMargin;
  NewChart.Left := ChartMargin;
  NewChart.Width := ChartWidth;
  NewChart.Height := ChartHeight;
  NewChart.HTML.Text := '<svg id="'+ChartID+'SVG" width='+IntToStr(ChartWidth)+' height='+IntToStr(ChartHeight)+'></svg>';

  asm
    var svg = d3.select("#"+ChartID+"SVG");
    var xdat = JSON.parse(XData);
    var ydat = JSON.parse(YData);
    var width = svg.attr("width");
    var height = svg.attr("height");
    var margin = {top: 10, right: 10, bottom: 20, left: 30};

    svg.attr("viewBox", [0, 0, width, height])
       .call(zoom);

    // Change the axes to be silver
    d3.select("#"+ChartID+"SVG")
      .style("color", "silver")

    // Gradient Bars
    var gradient = svg.append("svg:defs")
          .append("svg:linearGradient")
          .attr("id", "gradient"+ChartID)
          .attr("x1", "0%")
          .attr("y1", "0%")
          .attr("x2", "100%")
          .attr("y2", "100%");
        gradient.append("svg:stop")
          .attr("offset", "0%")
          .attr("stop-color", "var(--bl-color-two)")
          .attr("stop-opacity", 1);
        gradient.append("svg:stop")
          .attr("offset", "100%")
          .attr("stop-color", "var(--bl-color-five")
          .attr("stop-opacity", 1);

    var x = d3.scaleBand()
              .domain(xdat)
              .range([margin.left, width - margin.right])
              .padding(0.5);

    var y = d3.scaleLinear()
              .domain([0, Math.max(...ydat)])
              .range([height - margin.bottom, margin.top]);

    var tickValues = x.domain()
                      .filter(function(d, i) { return !((i + 1) % Math.floor(x.domain().length /  ( width / 175 )    )); });

    var xAxis = g => g
        .attr("transform", "translate(0,"+(height - margin.bottom)+")")
        .call(d3.axisBottom(x).tickSizeOuter(0).tickValues(tickValues))

    var yAxis = g => g
        .attr("transform", "translate("+margin.left+",0)")
        .call(d3.axisLeft(y))

    var tooltips = d3.select('#'+ChartID+"SVG");
    var tooltip = tooltips.select(function() { return this.parentNode; })
                          .append('div')
                          .attr('class', 'tooltip rounded p-2 border border-secondary DropShadow')
                          .style('position','absolute')
                          .style('z-index','100')
                          .style('color','var(--bl-color-input)')
                          .style('background','var(--bl-color-three)')
                          .style('border','var(--bl-border)')
                          .style('opacity','0');
    tooltip.append('div')
           .attr('class', 'label');
    tooltip.append('div')
           .attr('class', 'data');


    var rx = 8;
    var ry = 8;

    svg.append("g")
       .attr("class", "bars")
       .selectAll("path")
       .data(xdat)
       .join("path")
//       .attr("x", function (d,i) { return x(xdat[i]); })
//       .attr("y", function (d,i) { return y(ydat[i]); })
//       .attr("width", x.bandwidth())
//       .attr("height", function (d,i) { return (height - margin.bottom) - y(ydat[i]); })
       .attr("fill", "url(#gradient"+ChartID+")" )
       .attr("stroke", "var(--bl-color-one)" )
       .attr("d", (d,i) => {
           if (y(ydat[i]) == (height - margin.bottom)) {rx = 0; ry = 0; return ""} else {rx = 8; ry = 8;}
           if (x.bandwidth() < 16) {rx = x.bandwidth() / 2; ry = x.bandwidth() / 2;} else {rx = 8; ry = 8};
           return eval(ChartRoundingCode);
       })
       .on('mouseover', function(d,i) {
         var n = xdat.indexOf(i);
         tooltip.select('.label').html('<div style="color: var(--bl-color-one);">Period: <span style="color: var(--bl-color-input);">'+i+'</span></div>');
         tooltip.select('.data').html('<div style="color: var(--bl-color-one);">Value: <span style="color: var(--bl-color-input);">'+ydat[n]+'</span></div>');
         tooltip.style('display', 'block');
         tooltip.style('opacity','1');
         tooltip.style('top', function(d) { return y(ydat[n]) - 70 + "px"; })
         tooltip.style("left", function(d) { return x(xdat[n]) + "px"; })
         tooltip.style("width", '200px')
       })
       .on('mouseout', function() {
         tooltip.style('display', 'none');
         tooltip.style('opacity','0');
       });

    svg.append("g")
       .attr("class", "x-axis d3axis")
       .call(xAxis);

    svg.append("g")
       .attr("class", "y-axis d3axis")
       .call(yAxis);

    function zoom(svg) {
      const extent = [[margin.left, margin.top], [width - margin.right, height - margin.top]];

      svg.call(d3.zoom()
         .scaleExtent([1, 50])
         .translateExtent(extent)
         .extent(extent)
         .on("zoom", zoomed));

      function zoomed(event) {
        x.range([margin.left, width - margin.right].map(d => event.transform.applyX(d)));
        svg.selectAll(".bars path").attr("d",(d,i) => {
          if (y(ydat[i]) == (height - margin.bottom)) {rx = 0; ry = 0; return ""} else {rx = 8; ry = 8;}
          if (x.bandwidth() < 16) {rx = x.bandwidth() / 2; ry = x.bandwidth() / 2;} else {rx = 8; ry = 8};
          return eval(ChartRoundingCode);
        });

        var tickValues = x.domain()
                          .filter(function(d, i) { return !((i + 1) % Math.floor(x.domain().length /  ( event.transform.k * (width / 175) )    )); });
        var xAxis = g => g.attr("transform", "translate(0,"+(height - margin.bottom)+")")
                          .call(d3.axisBottom(x).tickSizeOuter(0).tickValues(tickValues))
        svg.selectAll(".x-axis").call(xAxis);
      }
    }
  end;
end;

procedure TForm2.btnLogins15mClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 1;
  btnLogins15m.ElementHandle.classList.add('Selected');
  btnLogins1hr.ElementHandle.classList.remove('Selected');
  btnLogins3hr.ElementHandle.classList.remove('Selected');
  btnLogins1d.ElementHandle.classList.remove('Selected');
  btnLogins7d.ElementHandle.classList.remove('Selected');
  btnLogins1mo.ElementHandle.classList.remove('Selected');
  btnLogins3mo.ElementHandle.classList.remove('Selected');
  btnLogins1y.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.btnLogins1dClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 4;
  btnLogins15m.ElementHandle.classList.remove('Selected');
  btnLogins1hr.ElementHandle.classList.remove('Selected');
  btnLogins3hr.ElementHandle.classList.remove('Selected');
  btnLogins1d.ElementHandle.classList.add('Selected');
  btnLogins7d.ElementHandle.classList.remove('Selected');
  btnLogins1mo.ElementHandle.classList.remove('Selected');
  btnLogins3mo.ElementHandle.classList.remove('Selected');
  btnLogins1y.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.btnLogins1hrClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 2;
  btnLogins15m.ElementHandle.classList.remove('Selected');
  btnLogins1hr.ElementHandle.classList.add('Selected');
  btnLogins3hr.ElementHandle.classList.remove('Selected');
  btnLogins1d.ElementHandle.classList.remove('Selected');
  btnLogins7d.ElementHandle.classList.remove('Selected');
  btnLogins1mo.ElementHandle.classList.remove('Selected');
  btnLogins3mo.ElementHandle.classList.remove('Selected');
  btnLogins1y.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.btnLogins1moClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 6;
  btnLogins15m.ElementHandle.classList.remove('Selected');
  btnLogins1hr.ElementHandle.classList.remove('Selected');
  btnLogins3hr.ElementHandle.classList.remove('Selected');
  btnLogins1d.ElementHandle.classList.remove('Selected');
  btnLogins7d.ElementHandle.classList.remove('Selected');
  btnLogins1mo.ElementHandle.classList.add('Selected');
  btnLogins3mo.ElementHandle.classList.remove('Selected');
  btnLogins1y.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.btnLogins1yClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 8;
  btnLogins15m.ElementHandle.classList.remove('Selected');
  btnLogins1hr.ElementHandle.classList.remove('Selected');
  btnLogins3hr.ElementHandle.classList.remove('Selected');
  btnLogins1d.ElementHandle.classList.remove('Selected');
  btnLogins7d.ElementHandle.classList.remove('Selected');
  btnLogins1mo.ElementHandle.classList.remove('Selected');
  btnLogins3mo.ElementHandle.classList.remove('Selected');
  btnLogins1y.ElementHandle.classList.add('Selected');
end;

procedure TForm2.btnLogins3hrClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 3;
  btnLogins15m.ElementHandle.classList.remove('Selected');
  btnLogins1hr.ElementHandle.classList.remove('Selected');
  btnLogins3hr.ElementHandle.classList.add('Selected');
  btnLogins1d.ElementHandle.classList.remove('Selected');
  btnLogins7d.ElementHandle.classList.remove('Selected');
  btnLogins1mo.ElementHandle.classList.remove('Selected');
  btnLogins3mo.ElementHandle.classList.remove('Selected');
  btnLogins1y.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.btnLogins3moClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 7;
  btnLogins15m.ElementHandle.classList.remove('Selected');
  btnLogins1hr.ElementHandle.classList.remove('Selected');
  btnLogins3hr.ElementHandle.classList.remove('Selected');
  btnLogins1d.ElementHandle.classList.remove('Selected');
  btnLogins7d.ElementHandle.classList.remove('Selected');
  btnLogins1mo.ElementHandle.classList.remove('Selected');
  btnLogins3mo.ElementHandle.classList.add('Selected');
  btnLogins1y.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.btnLogins7dClick(Sender: TObject);
begin
  divLoginsAggChoices.Tag := 5;
  btnLogins15m.ElementHandle.classList.remove('Selected');
  btnLogins1hr.ElementHandle.classList.remove('Selected');
  btnLogins3hr.ElementHandle.classList.remove('Selected');
  btnLogins1d.ElementHandle.classList.remove('Selected');
  btnLogins7d.ElementHandle.classList.add('Selected');
  btnLogins1mo.ElementHandle.classList.remove('Selected');
  btnLogins3mo.ElementHandle.classList.remove('Selected');
  btnLogins1y.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.btnLoginsCloseClick(Sender: TObject);
begin
  Form1.divStatisticsLabelClick(Sender);
end;

procedure TForm2.btnLoginsEMailClick(Sender: TObject);
var
  RequestResponse: String;
  MailSubject: String;
  MailBody: TStringList;
  MailFont: TStringList;
  MailIcon: TStringList;
  MailImage: String;

begin
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  if divLoginsChoices.Tag = 1
  then MailSubject := MailSubject + 'Users Chart'
  else MailSubject := MailSubject + 'Logins Chart';
  MailSubject := MailSubject + ' ('+Aggregates[divLoginsAggChoices.Tag]+') ';

  FOrm1.LogAction('[ E-Mail Chart:  '+MailSubject+']');

  MailSubject := '['+Form1.App_Short+'/'+Form1.User_Account+'] '+MailSubject+FormatDateTime('yyyy-MMM-dd HH:nn:ss',Now);

  MailFont := TStringList.Create;
  MailFont.LoadFromFile('fonts/cairo.woff.base64');
  MailIcon := TStringList.Create;
  MailIcon.LoadFromFile('icons/favicon-512x512.png.base64');

  MailImage := '';
  asm MailImage = await modernScreenshot.domToPng(document.querySelector('#divLoginsChart')); end;

  MailBody := TStringList.Create;
  MailBody.Add('<!DOCTYPE html>');
  MailBody.Add('<html lang="en">');
  MailBody.Add('  <head>');
  MailBody.Add('  <style>');
// Alternatives to DataURI-supplied fonts.  Less success with these.  The current approach works great!
//   MailBody.Add('  <link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">');
//   MailBody.Add('    @import url("https://fonts.googleapis.com/css2?family=Cairo&display=swap");');
//   MailBody.Add('      src: url(https://fonts.gstatic.com/s/cairo/v28/SLXgc1nY6HkvangtZmpQdkhzfH5lkSs2SgRjCAGMQ1z0hOA-a1PiKg.woff) format("woff");');
  MailBody.Add('    @font-face {');
  MailBody.Add('      font-family: "Cairo";');
  MailBody.Add('      font-style: normal;');
  MailBody.Add('      font-weight: 400;');
  MailBody.Add('      src: url('+MailFont.Text+') format("woff");');
  MailBody.Add('   }');
  MailBody.Add('  </style>');
  MailBody.Add('  </head>');
  MailBody.Add('  <body>');

  MailBody.Add('<div style="font-family: Cairo, Verdana, sans-serif; font-size: 16px; line-height: 1.2;">');

    MailBody.Add('Hello!');
    MailBody.Add('<p style="font-family: Cairo, Verdana; font-size: 16px; line-height: 1.2;">A request was just made by '+Form1.User_Account+' at <a href="'+FOrm1.App_URLLink+'">'+Form1.App_Short+'</a> for this chart.</p>');

    MailBody.Add('<img width="100%" src="'+MailImage+'">');

    MailBody.Add('<div style="margin: 16px 0px 32px 0px; display: flex;">');
      MailBody.Add('<div style="display: flex; justify-content: center; align-items: center; padding-top: 4px; width: 60px;">');
        MailBody.Add('<a title="'+Form1.App_URL+'" href="'+Form1.App_URLLink+'">');
          MailBody.Add('<img width="100%" src="'+MailIcon.Text+'">');
        MailBody.Add('</a>');
      MailBody.Add('</div>');
      MailBody.Add('<div style="display: flex; align-items: start; justify-content: center; margin-left: 10px; flex-direction: column;">');
        MailBody.Add('<div>Warmest Regards,</div>');
        MailBody.Add('<div>The '+Form1.App_Short+' Concierge.</div>');
        MailBody.Add('<div><a href="'+Form1.App_URLLink+'">'+Form1.App_URL+'</a></div>');
      MailBody.Add('</div>');
    MailBody.Add('</div>');
  MailBody.Add('</div>');

  MailBody.Add('<p><pre style="font-size:10px; line-height:70%;">');
  MailBody.Add('Req &raquo; '+FormatDateTime('yyyy-mmm-dd (ddd) hh:nn:ss', Now)+'/'+Form1.App_TZ+'<br />');
  MailBody.Add('Ref &raquo; '+Form1.App_OS_Short+'/'+Form1.App_Browser_short+'/'+Form1.App_IPAddress+'/'+Form1.App_Session+'<br />');
  MailBody.Add('Res &raquo; '+Form1.App_Country+'/'+Form1.App_Region+'/'+Form1.App_City);
  MailBody.Add('</pre></p>');

  MailBody.Add('  </body>');
  MailBody.Add('</html>');

  RequestResponse := await(Form1.StringRequest('ISystemService.SendEMail',[
    MailSubject,
    MailBody.Text,
    'StatChart'
  ]));

  if RequestResponse = 'Sent' then
  begin
    Form1.LogAction('Chart E-Mail Sent');
  end
  else
  begin
    Form1.LogAction('Chart E-Mail Failed:');
    Form1.LogAction(RequestResponse);
  end;

  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';

  Form1.PreventCompilerHint(MailSubject);
  Form1.PreventCompilerHint(MailBody);
  Form1.PreventCompilerHint(MailImage);
end;

procedure TForm2.btnLoginsExportClick(Sender: TObject);
begin

  if btnLoginsExport.Tag = 0 then
  begin
    btnLoginsExport.Tag := 1;
    asm
      btnLoginsExportCSV.classList.replace('d-none','d-inline');
      btnLoginsExportXLS.classList.replace('d-none','d-inline');
      btnLoginsExportJSON.classList.replace('d-none','d-inline');
      btnLoginsExportPDF.classList.replace('d-none','d-inline');

      await sleep(50);

      btnLoginsExportCSV.style.setProperty('width','75px');
      btnLoginsExportXLS.style.setProperty('width','75px');
      btnLoginsExportJSON.style.setProperty('width','85px');
      btnLoginsExportPDF.style.setProperty('width','75px');
    end;
  end
  else
  begin
    btnLoginsExport.Tag := 0;
    asm
      btnLoginsExportCSV.style.setProperty('width','0px');
      btnLoginsExportXLS.style.setProperty('width','0px');
      btnLoginsExportJSON.style.setProperty('width','0px');
      btnLoginsExportPDF.style.setProperty('width','0px');

      await sleep(300);
      btnLoginsExportCSV.classList.replace('d-inline', 'd-none');
      btnLoginsExportXLS.classList.replace('d-inline', 'd-none');
      btnLoginsExportJSON.classList.replace('d-inline', 'd-none');
      btnLoginsExportPDF.classList.replace('d-inline', 'd-none');
    end;
  end;

end;

procedure TForm2.btnLoginsExportPrintClick(Sender: TObject);
var
  ExportName: String;
begin
  ExportName := 'Blaugment-Stats-';

  if divLoginsChoices.Tag = 1
  then ExportName := ExportName + 'Users-'
  else ExportName := ExportName + 'Logins-';

  ExportName := ExportName + Aggregates[divLoginsAggChoices.Tag];

  if (Sender is TWebButton)
  then Form1.LogAction('[ Exported Chart: '+ExportName+' ('+StringReplace(((Sender as TWebButton).ElementID),'btnLoginsExport','',[])+') ]')
  else Form1.LogAction('[ Exported Chart: '+ExportName+' ]');

  ExportName := ExportName + FormatDateTime('yyyyMMdd-HHnnss',Now);

  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportCSV)   then asm this.tabLogins.download("csv",  ExportName+".csv" ); end;
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportXLS)   then asm this.tabLogins.download("xlsx", ExportName+".xlsx"); end;
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportJSON)  then asm this.tabLogins.download("json", ExportName+".json"); end;
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportPDF)   then asm this.tabLogins.download("pdf",  ExportName+".pdf" ); end;
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportPrint) then asm this.tabLogins.deselectRow(); this.tabLogins.print("active", true); end;

end;

procedure TForm2.btnLoginsLoginsClick(Sender: TObject);
begin
  divLoginsChoices.Tag := 2;
  btnLoginsUniqueLogins.ElementHandle.classList.remove('Selected');
  btnLoginsLogins.ElementHandle.classList.add('Selected');
end;

procedure TForm2.btnLoginsPrintClick(Sender: TObject);
var
  PageHeader: String;

begin

  PageHeader := Form1.App_Name+' / '+Form1.App_Version+' / '+Form1.User_Account+' / Chart / ';

  if divLoginsChoices.Tag = 1
  then PageHeader := PageHeader + 'Users / '
  else PageHeader := PageHeader + 'Logins / ';

  PageHeader := PageHeader + Aggregates[divLoginsAggChoices.Tag]+' / ';
  PageHeader := PageHeader + FormatDateTime('yyyyMMdd-HHnnss',Now);

  Form1.LogAction('[ Print Chart: '+PageHeader+' ]');

  asm {
    printJS({
      printable: 'divLoginsChart',
      type: 'html',
      header: PageHeader,
      headerStyle: 'font-size: 14px; font-weight: bold; font-family: sans-serif;'
    });
  } end;

end;

procedure TForm2.btnLoginsRefreshClick(Sender: TObject);
var
  ResponseString: String;
  ResponseRecords: Integer;
  Query: String;
  Aggregate: Integer;
  XData: String;
  YData: String;
begin
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';


  // Which query to run
  Query := '';
  if      divLoginsChoices.Tag = 1 then Query := 'UniqueLogins'
  else if divLoginsChoices.Tag = 2 then Query := 'Logins';

  // How is data aggregated (1 = 15m, 2 = 1hr, 3 = 3hr, 4 = 1d, 5 = 7d, 6 = 1mo, 7 = 3mo, 8 = 1y
  Aggregate := divLoginsAggChoices.Tag;

  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsRefresh)
  then Form1.LogAction('[ Chart: '+Query+' / '+Aggregates[Aggregate]+' ]');

  ResponseString := await(Form1.JSONRequest('IStatisticsService.StatQuery',[
     Query,
     Aggregate,
     '2023-01-01 00:00:00',
     '2023-12-31 00:00:00'
  ]));

  ResponseRecords := 0;
  asm
    var This = pas.Unit1.Form1.StatsForm;
    var data = JSON.parse(ResponseString);
    This.tabLogins.setData(data);
    ResponseRecords = This.tabLogins.getDataCount().toLocaleString();
    if (ResponseRecords > 0) {
      This.tabLogins.setSort("period","desc");
      this.tabLogins.deselectRow();
      This.tabLogins.selectRow(This.tabLogins.getRowFromPosition(1));
      This.tabLogins.scrollToRow(This.tabLogins.getRowFromPosition(1),"top");

      // This is all about populating the missing data elements.  Long story.
      // Basic idea is that we want to use D3's scaleBand mechanism so that
      // we get our nice pan/zoom feature, which won't work if we use a
      // scaleTime feature.  And as a bonus, it's kinda fun!

      var x = [];
      var y = [];
      for (var i in data) {
        x.push(data[i].period);
        y.push(data[i].logins);
      }
      var arrX = [];
      var arrY = [];
      var i = 0;
      var currX = x[i];
      while (i < x.length) {
        if (currX == x[i]) {
          arrX.push(x[i]);
          arrY.push(y[i]);
          i += 1;
        } else {
          arrX.push(currX);
          arrY.push(0);
        }
        if      (Aggregate == 1) { currX = luxon.DateTime.fromISO(currX.split(' ').join('T')).plus({minutes:15}).toFormat('yyyy-MM-dd HH:mm:ss'); }
        else if (Aggregate == 2) { currX = luxon.DateTime.fromISO(currX.split(' ').join('T')).plus({hours:1}).toFormat('yyyy-MM-dd HH:mm:ss'); }
        else if (Aggregate == 3) { currX = luxon.DateTime.fromISO(currX.split(' ').join('T')).plus({hours:3}).toFormat('yyyy-MM-dd HH:mm:ss'); }
        else if (Aggregate == 4) { currX = luxon.DateTime.fromISO(currX+'T00:00:00').plus({days:1}).toFormat('yyyy-MM-dd'); }
        else if (Aggregate == 5) { currX = currX = currX.substr(0,6) + ((parseInt(currX.substr(6,2)) + 1) % 53).toString().padStart(2,'0'); }
        else if (Aggregate == 6) { currX = luxon.DateTime.fromISO(currX+'T00:00:00').plus({months:1}).toFormat('yyyy-MM-dd'); }
        else if (Aggregate == 7) { currX = luxon.DateTime.fromISO(currX+'T00:00:00').plus({months:3}).toFormat('yyyy-MM-dd'); }
        else if (Aggregate == 8) { currX = luxon.DateTime.fromISO(currX+'T00:00:00').plus({years:1}).toFormat('yyyy-MM-dd'); }
      }
      XData = JSON.stringify(arrX);
      YData = JSON.stringify(arrY);
   }
    else {
      XData = [];
      YData = [];
    }
  end;

  divLoginsRecords.HTML := 'Records: <span style="color: var(--bl-color-input)">'+IntToStr(ResponseRecords)+'</span>';

  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';

  CreateD3BarChart(divLoginsChart, XData, YData);

  Form1.PreventCompilerHint(ResponseString);
end;

procedure TForm2.btnLoginsUniqueLoginsClick(Sender: TObject);
begin
  divLoginsChoices.Tag := 1;
  btnLoginsUniqueLogins.ElementHandle.classList.add('Selected');
  btnLoginsLogins.ElementHandle.classList.remove('Selected');
end;

procedure TForm2.SelectStatOption(OptionID: Integer);
begin
  Form1.HideTooltips;
  CurrentStatsPage := pcStatistics.ActivePAge.Name;

  // Fade In/Out between pages
  if (pcStatistics.TabIndex <> OptionID) then
  begin
    pcStatistics.ActivePage.ElementHandle.style.setProperty('opacity','0');
    asm await sleep(200); end;
  end;

  pcStatistics.TabIndex := OptionID;
  pcStatistics.ActivePage.ElementHandle.style.setProperty('opacity','1');
  Form1.LogAction('[ Statistics: '+StringReplace(pcStatistics.ActivePage.Name,'pageAccount','',[])+' ]');

  if pcStatistics.ActivePage.Name = 'pageLogins' then
  begin
    btnLoginsRefreshClick(nil);
  end;
end;

procedure TForm2.UpdateStatsNumbers;
var
  ResponseString: String;
begin
  ResponseString := await(Form1.JSONRequest('IStatisticsService.Today',[]));
  asm
    var This = pas.Unit1.Form1.StatsForm;
    var data = JSON.parse(ResponseString);
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

  // Initialize this module
  Current_Chart := divLoginsChart;
  Current_XData := '[]';
  Current_YData := '[]';

  // Just using the memo to hold an IDE-incompatible string that we'll need later.
  // It is actually JavaScript code that is used to produce the rounding on D3 bar charts.
  // Other ways to do this would be to replace the JS backtick code with non-backtick code.
  ChartRounding := memoChartRounding.Lines.Text;
  memoChartRounding.ElementHandle.remove();

  // These buttons are hidden initially
  asm
    btnLoginsExportCSV.style.setProperty('width','0px');
    btnLoginsExportXLS.style.setProperty('width','0px');
    btnLoginsExportJSON.style.setProperty('width','0px');
    btnLoginsExportPDF.style.setProperty('width','0px');
  end;


  // Statistics Tabulator
  asm
    var dataSO = [
      { ID:  0, Name: "Users",           Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-cat Swap'></i>"         },
      { ID:  1, Name: "Sessions",        Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-clock'></i>"            },
      { ID:  2, Name: "Events",          Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-computer-mouse'></i>"   },
      { ID:  3, Name: "Changes",         Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-hammer'></i>"           },
      { ID:  4, Name: "Errors",          Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-bug Swap'></i>"         },
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

  // Logins Tabulator
  asm
    this.tabLogins = new Tabulator("#divLoginsData", {
      layout: "fitColumns",
      selectable: 1,
      rowHeight: 24,
      headerVisible: false,
      columnDefaults:{
        resizable: false
      },
      columns: [
        { title: "", width: 5, minWidth: 5},
        { title: "Period", field: "period", width: 150 },
        { title: "Logins", field: "logins", width: 10, hozAlign: "right" },
        { title: "" }
      ]
    });
    this.tabLogins.on('rowClick', function(e, row){
      var This = pas.Unit1.Form1.StatsForm;
      This.tabLogins.selectRow([row]);
    });

  end;

  // Setup Simplebar Scrollbars
  asm
    this.scrollLogins      = new SimpleBar(document.getElementById('divLoginsDataHolder'        ), { forceVisible: 'y', autoHide: false });
  end;


  // Show the page
  divStatsHolder.ElementHandle.style.setProperty('opacity','1');

  // Get Today stats from server
  UpdateStatsNumbers;

  // Start on Logins page
  SelectStatOption(0);


end;

end.