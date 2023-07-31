unit Unit2;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls, jsDelphiSystem,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.WebCtrls, System.DateUtils,
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
    divLoginsDateChoices: TWebPanel;
    btnLoginsPeriodBefore: TWebButton;
    btnLoginsPeriod: TWebButton;
    btnLoginsDateTime1: TWebButton;
    divLoginsCalendarEdit1: TWebEdit;
    btnLoginsDateTime2: TWebButton;
    divLoginsCalendarEdit2: TWebEdit;
    btnLoginsPeriodAfter: TWebButton;
    btnLoginsShowDates: TWebButton;
    divLoginsControl: TWebHTMLDiv;
    btnLoginsEMail: TWebButton;
    btnLoginsPrint: TWebButton;
    btnLoginsCopyChart: TWebButton;
    btnLoginsDownloadChart: TWebButton;
    btnLoginsRefresh: TWebButton;
    divLoginsD3Chart: TWebHTMLDiv;
    btnLoginsClearSelection: TWebButton;
    btnLoginsSelectAll: TWebButton;
    procedure btnLoginsUniqueLoginsClick(Sender: TObject);
    procedure btnLoginsLoginsClick(Sender: TObject);
    procedure btnLogins15mClick(Sender: TObject);
    procedure btnLogins1hrClick(Sender: TObject);
    procedure btnLogins3hrClick(Sender: TObject);
    procedure btnLogins1dClick(Sender: TObject);
    procedure btnLogins7dClick(Sender: TObject);
    procedure btnLogins1moClick(Sender: TObject);
    procedure btnLogins3moClick(Sender: TObject);
    procedure btnLogins1yClick(Sender: TObject);
    [async] procedure CreateD3BarChart(Chart:TWebHTMLDiv; XData: String; YData: String; Quick: Boolean);
    procedure btnLoginsCloseClick(Sender: TObject);
    procedure btnLoginsDateTime1Click(Sender: TObject);
    procedure btnLoginsDateTime2Click(Sender: TObject);
    procedure btnLoginsShowDatesClick(Sender: TObject);
    [async] procedure WebFormCreate(Sender: TObject);
    [async] procedure SelectStatOption(OptionID: Integer);
    [async] procedure UpdateStatsNumbers;
    [async] procedure btnLoginsExportClick(Sender: TObject);
    [async] procedure btnLoginsRefreshClick(Sender: TObject);
    [async] procedure btnLoginsExportPrintClick(Sender: TObject);
    [async] procedure btnLoginsPrintClick(Sender: TObject);
    [async] procedure btnLoginsEMailClick(Sender: TObject);
    [async] procedure btnLoginsCopyChartClick(Sender: TObject);
    [async] procedure btnLoginsDownloadChartClick(Sender: TObject);
    procedure btnLoginsPeriodClick(Sender: TObject);
    procedure UpdateLoginsDateAdjustments;
    procedure btnLoginsPeriodBeforeClick(Sender: TObject);
    procedure btnLoginsPeriodAfterClick(Sender: TObject);
    procedure btnLoginsClearSelectionClick(Sender: TObject);
    procedure btnLoginsSelectAllClick(Sender: TObject);
    procedure AddStatsBootstrapTooltips;

  private
    { Private declarations }
  public
    { Public declarations }
    ModuleInit: Boolean;

    CurrentStatsPage: String;

    ChartRounding: String;  // This is intentionally bizzare - a block of JS code in a TMemo field
                            // so we don't have to contend with the IDE complaining about backticks
                            // and all the invalid hexadecimal errors that are generated

    tabStatOptions: JSValue;
    tabLogins: JSValue;

    dateLogins1: JSValue;
    dateLogins2: JSValue;
    dateLogins1Selected: String;
    dateLogins2Selected: String;
    dateLogins1Display: String;
    dateLogins2Display: String;
    dateLoginsAdjustment: String;

    scrollLogins: JSValue;

    Current_Chart: TWebHTMLDiv;
    Current_XData: String;
    Current_YData: String;

    XData: String;
    YData: String;

    CurrentChart: JSValue;
  end;

var
  Form2: TForm2;

const
  Aggregates: Array[1..8] of String = ('15 mins', '1 hour', '3 hours', '1 day', '1 week', '1 month', '1 quarter', '1 year');

implementation

{$R *.dfm}

uses Unit1;


procedure TForm2.CreateD3BarChart(Chart: TWebHTMLDiv; XData: String; YData: String; Quick: Boolean);
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

  if not(Quick) then
  begin
    Chart.ElementHandle.style.setProperty('opacity','0');
    {$IFNDEF WIN32} asm { await sleep(200); } end; {$ENDIF}
  end;

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

  {$IFNDEF WIN32} asm {
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

    var gradient = svg.append("svg:defs")
          .append("svg:linearGradient")
          .attr("id", "gradient-highlight"+ChartID)
          .attr("x1", "0%")
          .attr("y1", "0%")
          .attr("x2", "100%")
          .attr("y2", "100%");
        gradient.append("svg:stop")
          .attr("offset", "0%")
          .attr("stop-color", "yellow")
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
                          .style('opacity','0')
                          .style('display','block')
                          .style('pointer-events','none');
    tooltip.append('div')
           .attr('class', 'label');
    tooltip.append('div')
           .attr('class', 'data');


    var rx = 8;
    var ry = 8;
    var Tab = pas.Unit1.Form1.StatsForm.tabLogins;
    var rows = [];

    svg.append("g")
       .attr("class", "bars")
       .attr("style", "clip-path: polygon(0% 0%, 105% 0%, 105% "+(height - margin.bottom - 10)+"px, 0% "+(height - margin.bottom -10)+"px)")
       .selectAll("path")
       .data(xdat)
       .join("path")
//       .attr("x", function (d,i) { return x(xdat[i]); })
//       .attr("y", function (d,i) { return y(ydat[i]); })
//       .attr("width", x.bandwidth())
//       .attr("height", function (d,i) { return (height - margin.bottom) - y(ydat[i]); })
       .attr("id", (d) => { return "Bar-Period-"+d.replaceAll('-','').replaceAll(' ','').replaceAll(':',''); })
       .attr("fill", (d,i) => {
         rows = Tab.searchRows('period','=',d);
         if ((rows.length > 0) && rows[0].isSelected()) {
           return "url(#gradient-highlight"+ChartID+")"
         } else {
           return "url(#gradient"+ChartID+")"
         }
       })
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
         tooltip.style('opacity','1');
         tooltip.style('top', function(d) { return y(ydat[n]) - 70 + "px"; })
         tooltip.style("left", function(d) { return x(xdat[n]) + "px"; })
         tooltip.style("width", '200px'),
         tooltip.style('transition','opacity 300ms linear 1s');
         d3.select(this).attr("stroke","var(--bl-color-input)");
       })
       .on('mouseout', function() {
         tooltip.style('transition','opacity 200ms linear 0s');
         tooltip.style('opacity','0');
         d3.select(this).attr("stroke","var(--bl-color-one)");
       })
       .on('click', function(d) {
         d3.select(this).attr("fill", function(d) {
           var rows = pas.Unit1.Form1.StatsForm.tabLogins.searchRows('period','=',d);
           if (rows.length > 0) {
             rows[0].toggleSelect();
             if (rows[0].isSelected()) {

               // This doesn't work because we've setup an external scroll mechanism - SimpleBar
               // This means that Tabulator always thinks its rows are all visible, and no scrolling is required
               // pas.Unit1.Form1.StatsForm.tabLogins.scrollToRow(rows[0], "top", true);

               // Instead, we find out where the row is and scroll SimpleBar to that position instead
               var toprow = pas.Unit1.Form1.StatsForm.tabLogins.getRowPosition(rows[0]) - 1;
               pas.Unit1.Form1.StatsForm.scrollLogins.getScrollElement().scrollTo(0,toprow * 24)

               return "url(#gradient-highlight"+ChartID+")";
             } else {
               return "url(#gradient"+ChartID+")";
             }
           }
         })
       });

    svg.append("g")
       .attr("class", "x-axis d3axis")
       .call(xAxis);

    svg.append("g")
       .attr("class", "y-axis d3axis")
       .call(yAxis);

    pas.Unit1.Form1.StatsForm.CurrentChart = svg;

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
  } end; {$ENDIF}

  if not(Quick) then
  begin
    Chart.ElementHandle.style.setProperty('opacity','1');
  end;

  Form1.PreventCompilerHint(ChartRoundingCode);
end;

procedure TForm2.AddStatsBootstrapTooltips;
begin
  // If Font Awesome Pro is not available, switch to the free version
  //Button.Caption := StringReplace(Button.Caption,'fa-duotone','fa-solid',[]);

  {$IFNDEF WIN32} asm {
    var elements = divStatistics.querySelectorAll('button');
    var hint = '';
    for (var i = 0; i < elements.length; i++) {
      if (elements[i].id !== undefined) {
        hint = eval('pas.Unit1.Form1.StatsForm.'+elements[i].id+'.FHint');
        if (hint !== '') {
          elements[i].setAttribute('title',hint);
          elements[i].setAttribute('data-bs-toggle','tooltip');
          elements[i].setAttribute('data-bs-trigger','hover');
          elements[i].setAttribute('data-bs-placement','bottom');
          elements[i].setAttribute('data-bs-delay','{"show": 1000, "hide": 100}');
          elements[i].setAttribute('data-bs-custom-class','BLTooltip');
        }
      }
    }
  } end; {$ENDIF}

  Form1.HideTooltips;
end;

procedure TForm2.btnLogins15mClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 1 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLogins1dClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 4 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLogins1hrClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 2 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLogins1moClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 6 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLogins1yClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 8 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLogins3hrClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 3 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLogins3moClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 7 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLogins7dClick(Sender: TObject);
begin
  if divLoginsAggChoices.Tag <> 5 then
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
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLoginsClearSelectionClick(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    var Tab = pas.Unit1.Form1.StatsForm.tabLogins;
    Tab.deselectRow();
    for (var i = 1; i <= Tab.getDataCount(); i++) {
      var row = Tab.getRowFromPosition(i);
      var bar = document.getElementById('Bar-Period-'+row.getCell('period').getValue().replaceAll('-','').replaceAll(':','').replaceAll(' ',''));
      bar.setAttribute('fill', 'url(#gradientdivLoginsD3Chart-D3)');
    }
  } end; {$ENDIF}
end;

procedure TForm2.btnLoginsCloseClick(Sender: TObject);
begin
  Form1.divStatisticsLabelClick(Sender);
end;

procedure TForm2.btnLoginsCopyChartClick(Sender: TObject);
var
  ChartName: String;
begin
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin fa-xl"></i>';

  if divLoginsChoices.Tag = 1
  then ChartName := 'Chart-Users'
  else ChartName := 'Chart-Logins';
  ChartName := ChartName + '-'+StringReplace(Aggregates[divLoginsAggChoices.Tag],' ','',[rfReplaceAll])+'.png';

  Form1.LogAction('[ Copy Chart:  '+ChartName+' ]');

  {$IFNDEF WIN32} asm {
    try {
      const getChartPromise = async () => {
        return await new modernScreenshot.domToBlob(document.querySelector('#divLoginsChart'), {type:"image/png"});
      }
      await navigator.clipboard.write(
        [new ClipboardItem({["image/png"]: getChartPromise() })]
      )
    }
    catch {
      var blob = await modernScreenshot.domToBlob(document.querySelector('#divLoginsChart'));
      await navigator.clipboard.write([
        new ClipboardItem({
          [blob.type]: blob
        })
      ]);
    }
  } end; {$ENDIF}

  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-xl"></i>';
end;

procedure TForm2.btnLoginsDateTime1Click(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    divLoginsCalendarEdit1.style.setProperty('left',(btnLoginsDateTime1.getBoundingClientRect().x - divLoginsDateChoices.getBoundingClientRect().x - 25)+'px');
    divLoginsCalendarEdit1.style.setProperty('top',(btnLoginsDateTime1.getBoundingClientRect().height - 25)+'px');
    divLoginsCalendarEdit1.click();
  } end; {$ENDIF}
end;

procedure TForm2.btnLoginsDateTime2Click(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    divLoginsCalendarEdit2.style.setProperty('left',(btnLoginsDateTime2.getBoundingClientRect().x - divLoginsDateChoices.getBoundingClientRect().x - 25)+'px');
    divLoginsCalendarEdit2.style.setProperty('top',(btnLoginsDateTime2.getBoundingClientRect().height - 25)+'px');
    divLoginsCalendarEdit2.click();
  } end; {$ENDIF}
end;

procedure TForm2.btnLoginsDownloadChartClick(Sender: TObject);
var
  ChartName: String;
begin
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin fa-xl"></i>';

  if divLoginsChoices.Tag = 1
  then ChartName := 'Chart-Users'
  else ChartName := 'Chart-Logins';
  ChartName := ChartName + '-'+StringReplace(Aggregates[divLoginsAggChoices.Tag],' ','',[rfReplaceAll])+'.png';

  Form1.LogAction('[ Download Chart:  '+ChartName+']');

  {$IFNDEF WIN32} asm {
    var blob = await modernScreenshot.domToBlob(document.querySelector('#divLoginsChart'));
    var streamSaver = window.streamSaver;
    const fileStream = streamSaver.createWriteStream(ChartName, {
      size: blob.size // Makes the procentage visiable in the download
    })
    const readableStream = blob.stream()
    window.writer = fileStream.getWriter()
    const reader = readableStream.getReader()
    const pump = () => reader.read()
      .then(res => res.done
            ? writer.close()
            : writer.write(res.value).then(pump))
    pump()
  } end; {$ENDIF}
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-xl"></i>';
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
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin fa-xl"></i>';

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
  {$IFNDEF WIN32} asm {
    MailImage = await modernScreenshot.domToPng(document.querySelector('#divLoginsChart'));
  } end; {$ENDIF}

// Alternatives to DataURI-supplied fonts.  Less success with these.  The current approach works great!
//   MailBody.Add('  <link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">');
//   MailBody.Add('    @import url("https://fonts.googleapis.com/css2?family=Cairo&display=swap");');
//   MailBody.Add('      src: url(https://fonts.gstatic.com/s/cairo/v28/SLXgc1nY6HkvangtZmpQdkhzfH5lkSs2SgRjCAGMQ1z0hOA-a1PiKg.woff) format("woff");');

  MailBody := TStringList.Create;
  MailBody.Add('<!DOCTYPE html>');
  MailBody.Add('<html lang="en">');
  MailBody.Add(  '<head>');
  MailBody.Add(    '<style>');
  MailBody.Add(      '@font-face {');
  MailBody.Add(        'font-family: "Cairo";');
  MailBody.Add(        'font-style: normal;');
  MailBody.Add(        'font-weight: 400;');
  MailBody.Add(        'src: url('+MailFont.Text+') format("woff");');
  MailBody.Add(      '}');
  MailBody.Add(    '</style>');
  MailBody.Add(  '</head>');
  MailBody.Add(  '<body>');
  MailBody.Add(    '<div style="font-family: Cairo, Verdana, sans-serif; font-size: 16px; line-height: 1.2;">');
  MailBody.Add(      'Hello!');
  MailBody.Add(      '<p style="font-family: Cairo, Verdana; font-size: 16px; line-height: 1.2;">A request was just made by '+Form1.User_Account+' at <a href="'+FOrm1.App_URLLink+'">'+Form1.App_Short+'</a> for this chart.</p>');
  MailBody.Add(      '<img width="100%" src="'+MailImage+'">');
  MailBody.Add(      '<div style="margin: 16px 0px 32px 0px; display: flex;">');
  MailBody.Add(        '<div style="display: flex; justify-content: center; align-items: center; padding-top: 4px; width: 60px;">');
  MailBody.Add(          '<a title="'+Form1.App_URL+'" href="'+Form1.App_URLLink+'">');
  MailBody.Add(            '<img width="100%" src="'+MailIcon.Text+'">');
  MailBody.Add(          '</a>');
  MailBody.Add(        '</div>');
  MailBody.Add(        '<div style="display: flex; align-items: start; justify-content: center; margin-left: 10px; flex-direction: column;">');
  MailBody.Add(          '<div>Warmest Regards,</div>');
  MailBody.Add(          '<div>The '+Form1.App_Short+' Concierge.</div>');
  MailBody.Add(          '<div><a href="'+Form1.App_URLLink+'">'+Form1.App_URL+'</a></div>');
  MailBody.Add(        '</div>');
  MailBody.Add(      '</div>');
  MailBody.Add(    '</div>');
  MailBody.Add(    '<p><pre style="font-size:10px; line-height:70%;">');
  MailBody.Add(      'Req &raquo; '+FormatDateTime('yyyy-mmm-dd (ddd) hh:nn:ss', Now)+'/'+Form1.App_TZ+'<br />');
  MailBody.Add(      'Ref &raquo; '+Form1.App_OS_Short+'/'+Form1.App_Browser_short+'/'+Form1.App_IPAddress+'/'+Form1.App_Session+'<br />');
  MailBody.Add(      'Res &raquo; '+Form1.App_Country+'/'+Form1.App_Region+'/'+Form1.App_City);
  MailBody.Add(    '</pre></p>');
  MailBody.Add(  '</body>');
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

  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-xl"></i>';

  Form1.PreventCompilerHint(MailSubject);
  Form1.PreventCompilerHint(MailBody);
  Form1.PreventCompilerHint(MailImage);
end;

procedure TForm2.btnLoginsExportClick(Sender: TObject);
begin

  if btnLoginsExport.Tag = 0 then
  begin
    btnLoginsExport.Tag := 1;
    {$IFNDEF WIN32} asm {
      btnLoginsExportCSV.classList.replace('d-none','d-inline');
      btnLoginsExportXLS.classList.replace('d-none','d-inline');
      btnLoginsExportJSON.classList.replace('d-none','d-inline');
      btnLoginsExportPDF.classList.replace('d-none','d-inline');

      await sleep(50);

      btnLoginsExportCSV.style.setProperty('width','75px');
      btnLoginsExportXLS.style.setProperty('width','75px');
      btnLoginsExportJSON.style.setProperty('width','85px');
      btnLoginsExportPDF.style.setProperty('width','75px');
    } end; {$ENDIF}
  end
  else
  begin
    btnLoginsExport.Tag := 0;
    {$IFNDEF WIN32} asm {
      btnLoginsExportCSV.style.setProperty('width','0px');
      btnLoginsExportXLS.style.setProperty('width','0px');
      btnLoginsExportJSON.style.setProperty('width','0px');
      btnLoginsExportPDF.style.setProperty('width','0px');

      await sleep(300);
      btnLoginsExportCSV.classList.replace('d-inline', 'd-none');
      btnLoginsExportXLS.classList.replace('d-inline', 'd-none');
      btnLoginsExportJSON.classList.replace('d-inline', 'd-none');
      btnLoginsExportPDF.classList.replace('d-inline', 'd-none');
    } end; {$ENDIF}
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

  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportCSV)   then {$IFNDEF WIN32} asm { this.tabLogins.download("csv",  ExportName+".csv" ); } end; {$ENDIF}
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportXLS)   then {$IFNDEF WIN32} asm { this.tabLogins.download("xlsx", ExportName+".xlsx"); } end; {$ENDIF}
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportJSON)  then {$IFNDEF WIN32} asm { this.tabLogins.download("json", ExportName+".json"); } end; {$ENDIF}
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportPDF)   then {$IFNDEF WIN32} asm { this.tabLogins.download("pdf",  ExportName+".pdf" ); } end; {$ENDIF}
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsExportPrint) then
  begin
    {$IFNDEF WIN32} asm {
      this.tabLogins.deselectRow();
      this.tabLogins.print("active", true);
    } end; {$ENDIF}
  end;

end;

procedure TForm2.btnLoginsLoginsClick(Sender: TObject);
begin
  if divLoginsChoices.Tag <> 2 then
  begin
    divLoginsChoices.Tag := 2;
    btnLoginsUniqueLogins.ElementHandle.classList.remove('Selected');
    btnLoginsLogins.ElementHandle.classList.add('Selected');
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.btnLoginsPeriodAfterClick(Sender: TObject);
var
  StartPeriod: TDateTime;
  EndPeriod: TDateTime;
  Date1: String;
  Date2: String;
begin
  Form1.LogAction('[ Selected Next Period ]');

  StartPeriod := EncodeDateTime(
    StrToInt(Copy(dateLogins1Selected,  1, 4)),
    StrToInt(Copy(dateLogins1Selected,  6, 2)),
    StrToInt(Copy(dateLogins1Selected,  9, 2)),
    StrToInt(Copy(dateLogins1Selected, 12, 2)),
    StrToInt(Copy(dateLogins1Selected, 15, 2)),
    StrToInt(Copy(dateLogins1Selected, 18, 2)),
    StrToInt(Copy(dateLogins1Selected, 21, 3))
  );
  EndPeriod := EncodeDateTime(
    StrToInt(Copy(dateLogins2Selected,  1, 4)),
    StrToInt(Copy(dateLogins2Selected,  6, 2)),
    StrToInt(Copy(dateLogins2Selected,  9, 2)),
    StrToInt(Copy(dateLogins2Selected, 12, 2)),
    StrToInt(Copy(dateLogins2Selected, 15, 2)),
    StrToInt(Copy(dateLogins2Selected, 18, 2)),
    StrToInt(Copy(dateLogins2Selected, 21, 3))
  );

  if dateLoginsAdjustment = 'day' then
  begin
    StartPeriod := StartPeriod + 1;
    EndPeriod := EndPeriod + 1;
  end
  else if dateLoginsAdjustment = 'week' then
  begin
    StartPeriod := StartPeriod + 7;
    EndPeriod := EndPeriod + 7;
  end
  else if dateLoginsAdjustment = '2week' then
  begin
    StartPeriod := StartPeriod + 14;
    EndPeriod := EndPeriod + 14;
  end
  else if dateLoginsAdjustment = 'month' then
  begin
    EndPeriod := IncMonth(StartPeriod, +2) - 60/86400;
    StartPeriod := IncMonth(StartPeriod, +1);
  end
  else if dateLoginsAdjustment = 'quarter' then
  begin
    StartPeriod := IncMonth(StartPeriod, +3);
    EndPeriod := IncMonth(StartPeriod, +3) - 60/86400;
  end
  else if dateLoginsAdjustment = 'year' then
  begin
    StartPeriod := IncMonth(StartPeriod, +12);
    EndPeriod := IncMonth(EndPeriod, +12);
  end
  else if dateLoginsAdjustment = 'fullmonth' then
  begin
    StartPeriod := IncMonth(StartPeriod, +1);
    EndPeriod := IncMonth(StartPeriod, +1) - 60/86400;
  end
  else if dateLoginsAdjustment = 'fullquarter' then
  begin
    StartPeriod := IncMonth(StartPeriod, +3);
    EndPeriod := IncMonth(StartPeriod, +3) - 60/86400;
  end
  else if dateLoginsAdjustment = 'fullyear' then
  begin
    StartPeriod := IncMonth(StartPeriod, +12);
    EndPeriod := IncMonth(StartPeriod, +12) - 60/86400;
  end
  else if dateLoginsAdjustment = 'day-start' then
  begin
    StartPeriod := StartPeriod + 1;
  end
  else if dateLoginsAdjustment = 'week-start' then
  begin
    StartPeriod := StartPeriod + 7;
  end
  else if dateLoginsAdjustment = 'month-start' then
  begin
    StartPeriod := IncMonth(StartPeriod, +1);
  end
  else if dateLoginsAdjustment = 'quarter-start' then
  begin
    StartPeriod := IncMonth(StartPeriod, +3);
  end
  else if dateLoginsAdjustment = 'year-start' then
  begin
    StartPeriod := IncMonth(StartPeriod, +12);
  end
  else if dateLoginsAdjustment = 'period' then
  begin
    Date1 := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', StartPeriod);
    Date2 := '';
    {$IFNDEF WIN32} asm {
      var This = pas.Unit1.Form1;
      if (This.Periods.length > 0) {
        for (var i = 0; i < This.Periods.length; i++) {
          if ((Date2 == '') && (Date1 == This.Periods[i]['period_start']) && (i > 1) && (This.Periods[i - 1]['adjustment'] == 'period')) {
            Date1 = This.Periods[i - 1]['period_start'];
            Date2 = This.Periods[i - 1]['period_end'];
          }
        }
      }
    } end; {$ENDIF}
    if (Date2 <> '') then
    begin
      StartPeriod := StrToDateTime(Date1);
      EndPeriod := StrToDateTime(Date2);
    end;
  end;

  Date1 := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', StartPeriod);
  Date2 := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', EndPeriod);

  ModuleInit := True;

  {$IFNDEF WIN32} asm {
    this.dateLogins1.setDate(Date1, true, 'Y-m-d H:i:s');
  } end; {$ENDIF}

  ModuleInit := False;

  {$IFNDEF WIN32} asm {
    this.dateLogins2.setDate(Date2, true, 'Y-m-d H:i:s');
  } end; {$ENDIF}

  Form1.PreventCompilerHint(Date1);
  Form1.PreventCompilerHint(Date2);
end;

procedure TForm2.btnLoginsPeriodBeforeClick(Sender: TObject);
var
  StartPeriod: TDateTime;
  EndPeriod: TDateTime;
  Date1: String;
  Date2: String;
begin
  Form1.LogAction('[ Selected Previous Period ]');

  StartPeriod := EncodeDateTime(
    StrToInt(Copy(dateLogins1Selected,  1, 4)),
    StrToInt(Copy(dateLogins1Selected,  6, 2)),
    StrToInt(Copy(dateLogins1Selected,  9, 2)),
    StrToInt(Copy(dateLogins1Selected, 12, 2)),
    StrToInt(Copy(dateLogins1Selected, 15, 2)),
    StrToInt(Copy(dateLogins1Selected, 18, 2)),
    StrToInt(Copy(dateLogins1Selected, 21, 3))
  );
  EndPeriod := EncodeDateTime(
    StrToInt(Copy(dateLogins2Selected,  1, 4)),
    StrToInt(Copy(dateLogins2Selected,  6, 2)),
    StrToInt(Copy(dateLogins2Selected,  9, 2)),
    StrToInt(Copy(dateLogins2Selected, 12, 2)),
    StrToInt(Copy(dateLogins2Selected, 15, 2)),
    StrToInt(Copy(dateLogins2Selected, 18, 2)),
    StrToInt(Copy(dateLogins2Selected, 21, 3))
  );

  if dateLoginsAdjustment = 'day' then
  begin
    StartPeriod := StartPeriod - 1;
    EndPeriod := EndPeriod - 1;
  end
  else if dateLoginsAdjustment = 'week' then
  begin
    StartPeriod := StartPeriod - 7;
    EndPeriod := EndPeriod - 7;
  end
  else if dateLoginsAdjustment = '2week' then
  begin
    StartPeriod := StartPeriod - 14;
    EndPeriod := EndPeriod - 14;
  end
  else if dateLoginsAdjustment = 'month' then
  begin
    EndPeriod := StartPeriod - 60/86400;
    StartPeriod := IncMonth(StartPeriod, -1);
  end
  else if dateLoginsAdjustment = 'quarter' then
  begin
    EndPeriod := StartPeriod - 60/86400;
    StartPeriod := IncMonth(StartPeriod, -3);
  end
  else if dateLoginsAdjustment = 'year' then
  begin
    StartPeriod := IncMonth(StartPeriod, -12);
    EndPeriod := IncMonth(EndPeriod, -12);
  end
  else if dateLoginsAdjustment = 'fullmonth' then
  begin
    StartPeriod := IncMonth(StartPeriod, -1);
    EndPeriod := IncMonth(StartPeriod, +1) - 60/86400;
  end
  else if dateLoginsAdjustment = 'fullquarter' then
  begin
    StartPeriod := IncMonth(StartPeriod, -3);
    EndPeriod := IncMonth(StartPeriod, +3) - 60/86400;
  end
  else if dateLoginsAdjustment = 'fullyear' then
  begin
    StartPeriod := IncMonth(StartPeriod, -12);
    EndPeriod := IncMonth(EndPeriod, -12);
    EndPeriod := IncMonth(StartPeriod, +12) - 60/86400;
  end
  else if dateLoginsAdjustment = 'day-start' then
  begin
    StartPeriod := StartPeriod - 1;
  end
  else if dateLoginsAdjustment = 'week-start' then
  begin
    StartPeriod := StartPeriod - 7;
  end
  else if dateLoginsAdjustment = 'month-start' then
  begin
    StartPeriod := IncMonth(StartPeriod, -1);
  end
  else if dateLoginsAdjustment = 'quarter-start' then
  begin
    StartPeriod := IncMonth(StartPeriod, -3);
  end
  else if dateLoginsAdjustment = 'year-start' then
  begin
    StartPeriod := IncMonth(StartPeriod, -12);
  end
  else if dateLoginsAdjustment = 'period' then
  begin
    Date1 := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', StartPeriod);
    Date2 := '';
    {$IFNDEF WIN32} asm {
      var This = pas.Unit1.Form1;
      if (This.Periods.length > 0) {
        for (var i = 0; i < This.Periods.length; i++) {
          if ((Date2 == '') && (Date1 == This.Periods[i]['period_start']) && (i < (This.Periods.length - 1)) && (This.Periods[i + 1]['adjustment'] == 'period')) {
            Date1 = This.Periods[i+1]['period_start'];
            Date2 = This.Periods[i+1]['period_end'];
          }
        }
      }
    } end; {$ENDIF}
    if (Date2 <> '') then
    begin
      StartPeriod := StrToDateTime(Date1);
      EndPeriod := StrToDateTime(Date2);
    end;
  end;

  Date1 := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', StartPeriod);
  Date2 := FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', EndPeriod);

  ModuleInit := True;

  {$IFNDEF WIN32} asm {
    this.dateLogins1.setDate(Date1, true, 'Y-m-d H:i:s');
  } end; {$ENDIF}

  ModuleInit := False;

  {$IFNDEF WIN32} asm {
    this.dateLogins2.setDate(Date2, true, 'Y-m-d H:i:s');
  } end; {$ENDIF}

  Form1.PreventCompilerHint(Date1);
  Form1.PreventCompilerHint(Date2);
end;

procedure TForm2.btnLoginsPeriodClick(Sender: TObject);
begin
  if (Trunc(Form1.PeriodsGenerated) <> Trunc(Now)) or
     (MinutesBetween(Now, Form1.PeriodsGenerated) > 5)
  then Form1.GeneratePeriods;

  Form1.divShade3.Visible := True;
  Form1.divPeriods.Visible := True;
  Form1.divPeriods.Tag := 0; // Statistics - Logins
  Form1.divShade3.ElementHandle.style.setProperty('opacity','var(--bl-opacity)');
  Form1.divPeriods.ElementHandle.style.setProperty('opacity','1.0');

  {$IFNDEF WIN32} asm {
    pas.Unit1.Form1.tabPeriods.redraw(true);
//    divSessionList.firstElementChild.style.setProperty('position','absolute');
//    divSessionList.firstElementChild.style.setProperty('z-index', '10');
//    divSessionList.firstElementChild.style.setProperty('top', 'px');
  } end; {$ENDIF}

  Form1.LogAction(' ');
  Form1.LogAction('[ Selecting Period ]');

  Form1.State := 'Periods';
  Form1.StatePosition := Form1.StatePosition + 1;
  window.history.pushState(Form1.CaptureState, '', Form1.StateURL);

  Form1.HideToolTips;
end;

procedure TForm2.btnLoginsPrintClick(Sender: TObject);
var
  PageHeader: String;

begin
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin fa-xl"></i>';

  PageHeader := Form1.App_Name+' / '+Form1.App_Version+' / '+Form1.User_Account+' / Chart / ';

  if divLoginsChoices.Tag = 1
  then PageHeader := PageHeader + 'Users / '
  else PageHeader := PageHeader + 'Logins / ';

  PageHeader := PageHeader + Aggregates[divLoginsAggChoices.Tag]+' / ';
  PageHeader := PageHeader + FormatDateTime('yyyyMMdd-HHnnss',Now);

  Form1.LogAction('[ Print Chart: '+PageHeader+' ]');

  {$IFNDEF WIN32} asm {
    var MailImage = await modernScreenshot.domToPng(document.querySelector('#divLoginsChart'));
    printJS({
      printable: MailImage,
      type: 'image',
      header: PageHeader,
      headerStyle: 'font-size: 14px; font-weight: bold; font-family: sans-serif;'
    });
  } end; {$ENDIF}

  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-xl"></i>';
end;

procedure TForm2.btnLoginsRefreshClick(Sender: TObject);
var
  ResponseString: String;
  ResponseRecords: Integer;
  Query: String;
  QueryName: String;
  Aggregate: Integer;
begin
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin fa-xl"></i>';


  // Which query to run
  Query := '';
  if      divLoginsChoices.Tag = 1 then Query := 'UniqueLogins'
  else if divLoginsChoices.Tag = 2 then Query := 'Logins';

  // How is data aggregated (1 = 15m, 2 = 1hr, 3 = 3hr, 4 = 1d, 5 = 7d, 6 = 1mo, 7 = 3mo, 8 = 1y
  Aggregate := divLoginsAggChoices.Tag;

  QueryName := Query+' / '+Aggregates[Aggregate]+' / '+btnLoginsPeriod.Caption+' / '+dateLogins1Selected+' - '+dateLogins2Selected;

  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLoginsRefresh)
  then Form1.LogAction('[ Chart: '+QueryName+' ]')
  else Form1.LogAction('Updating Chart: '+QueryName);

  // Dates are yyyy-MM-dd hh:nn:ss so this should work fine.
  if (dateLogins1Selected <> '') and
     (dateLogins2Selected <> '') and
     (dateLogins1Selected < dateLogins2Selected) then
  begin
    ResponseString := await(Form1.JSONRequest('IStatisticsService.StatQuery',[
       Query,
       Aggregate,
       dateLogins1Selected,
       dateLogins2Selected
    ]));
  end
  else
  begin
    Form1.LogAction('Query Skipped: ( '+dateLogins1Selected+' ) > ( '+dateLogins2Selected+' )');
    ResponseString := '[]';
  end;

  XData := '';
  YData := '';
  ResponseRecords := 0;
  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1.StatsForm;
    var data = JSON.parse(ResponseString);
    var selectedrows = This.tabLogins.getSelectedRows();

    This.tabLogins.replaceData(data);

    var i = 0;
    this.tabLogins.deselectRow();
    while (i < selectedrows.length) {
      This.tabLogins.selectRow(selectedrows[i].getData()['period']);
      i += 1;
    }

    ResponseRecords = This.tabLogins.getDataCount().toLocaleString();
    if (ResponseRecords > 0) {
      This.tabLogins.setSort("period","desc");
//      this.tabLogins.deselectRow();
// Highlight first row
//      This.tabLogins.selectRow(This.tabLogins.getRowFromPosition(1));
//      This.tabLogins.scrollToRow(This.tabLogins.getRowFromPosition(1),"top");

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
      this.XData = JSON.stringify(arrX);
      this.YData = JSON.stringify(arrY);
   }
    else {
      this.XData = '[]';
      this.YData = '[]';
    }
  } end; {$ENDIF}

  divLoginsRecords.HTML := 'Records: <span style="color: var(--bl-color-input)">'+IntToStr(ResponseRecords)+'</span>';
  btnLoginsRefresh.Caption := '<i class="fa-duotone fa-rotate fa-xl"></i>';
  CreateD3BarChart(divLoginsD3Chart, XData, YData, False);
  Form1.HideTooltips;
  Form1.PreventCompilerHint(ResponseString);
end;

procedure TForm2.btnLoginsSelectAllClick(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    var Tab = pas.Unit1.Form1.StatsForm.tabLogins;
    Tab.selectRow();
    for (var i = 1; i <= Tab.getDataCount(); i++) {
      var row = Tab.getRowFromPosition(i);
      var bar = document.getElementById('Bar-Period-'+row.getCell('period').getValue().replaceAll('-','').replaceAll(':','').replaceAll(' ',''));
      bar.setAttribute('fill', 'url(#gradient-highlightdivLoginsD3Chart-D3)');
    }
  } end; {$ENDIF}
end;

procedure TForm2.btnLoginsShowDatesClick(Sender: TObject);
var
  PanelSize: Double;
begin

  PanelSize := divLoginsHeader.ElementHandle.getBoundingClientRect.Height;

  if btnLoginsShowDates.Tag = 0 then
  begin
    btnLoginsShowDates.Tag := 1;
    btnLoginsDateTime1.Visible := True;
    btnLoginsDateTime2.Visible := True;
    btnLoginsShowDates.Caption := '<i class="fa-duotone fa-arrows-to-line fa-rotate-90 fa-xl"></i>';
    {$IFNDEF WIN32} asm {
      var This = pas.Unit1.Form1.StatsForm;
      btnLoginsDateTime1.innerHTML = This.dateLogins1Display;
      btnLoginsDateTime2.innerHTML = This.dateLogins2Display;
    } end; {$ENDIF}
  end
  else
  begin
    btnLoginsShowDates.Tag := 0;
    btnLoginsDateTime1.Visible := False;
    btnLoginsDateTime2.Visible := False;
    btnLoginsShowDates.Caption := '<i class="fa-duotone fa-calendar-days Swap fa-xl"></i>';
  end;

  if ModuleInit = false then
  begin
    if PanelSize <> divLoginsHeader.ElementHandle.getBoundingClientRect.Height
    then btnLoginsRefreshClick(Sender);
  end;
  Form1.HideTooltips;
end;

procedure TForm2.btnLoginsUniqueLoginsClick(Sender: TObject);
begin
  if divLoginsChoices.Tag <> 1 then
  begin
    divLoginsChoices.Tag := 1;
    btnLoginsUniqueLogins.ElementHandle.classList.add('Selected');
    btnLoginsLogins.ElementHandle.classList.remove('Selected');
    btnLoginsRefreshClick(Sender);
  end;
end;

procedure TForm2.SelectStatOption(OptionID: Integer);
begin
  Form1.HideTooltips;
  CurrentStatsPage := pcStatistics.ActivePAge.Name;

  // Fade In/Out between pages
  if (pcStatistics.TabIndex <> OptionID) then
  begin
    pcStatistics.ActivePage.ElementHandle.style.setProperty('opacity','0');
    {$IFNDEF WIN32} asm { await sleep(200); } end; {$ENDIF}
  end;

  {$IFNDEF WIN32} asm {
    if (pas.Unit1.Form1.MenusCollapsed == true) {
      divStatOptions.style.setProperty('width','40px');
    }
    else {
      divStatOptions.style.setProperty('width','230px');
    }
  } end; {$ENDIF}

  pcStatistics.TabIndex := OptionID;
  pcStatistics.ActivePage.ElementHandle.style.setProperty('opacity','1');
  Form1.LogAction('[ Statistics: '+StringReplace(pcStatistics.ActivePage.Name,'pageAccount','',[])+' ]');

  if pcStatistics.ActivePage.Name = 'pageLogins' then
  begin
    btnLoginsRefreshClick(nil);
  end;
end;

procedure TForm2.UpdateLoginsDateAdjustments;
var
  StartPeriod: TDateTime;
  EndPeriod: TDateTime;
  PeriodName: String;
begin
  if (dateLogins1Selected = '') or (dateLogins2Selected = '') then
  begin
    btnLoginsPeriodBefore.Enabled := False;
    btnLoginsPeriodAfter.Enabled := False;
    exit;
  end;

  StartPeriod := EncodeDateTime(
    StrToInt(Copy(dateLogins1Selected,  1, 4)),
    StrToInt(Copy(dateLogins1Selected,  6, 2)),
    StrToInt(Copy(dateLogins1Selected,  9, 2)),
    StrToInt(Copy(dateLogins1Selected, 12, 2)),
    StrToInt(Copy(dateLogins1Selected, 15, 2)),
    StrToInt(Copy(dateLogins1Selected, 18, 2)),
    StrToInt(Copy(dateLogins1Selected, 21, 3))
  );
  EndPeriod := EncodeDateTime(
    StrToInt(Copy(dateLogins2Selected,  1, 4)),
    StrToInt(Copy(dateLogins2Selected,  6, 2)),
    StrToInt(Copy(dateLogins2Selected,  9, 2)),
    StrToInt(Copy(dateLogins2Selected, 12, 2)),
    StrToInt(Copy(dateLogins2Selected, 15, 2)),
    StrToInt(Copy(dateLogins2Selected, 18, 2)),
    StrToInt(Copy(dateLogins2Selected, 21, 3))
  );

  btnLoginsPeriodBefore.Enabled := True;

  if dateLoginsAdjustment = 'day' then
  begin
    if Trunc(StartPeriod + 1) > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'week' then
  begin
    if Trunc(StartPeriod + 7)  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = '2week' then
  begin
    if Trunc(StartPeriod + 14)  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'month' then
  begin
    if Trunc(IncMonth(StartPeriod, 1))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'quarter' then
  begin
    if Trunc(IncMonth(StartPeriod, 3))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'year' then
  begin
    if Trunc(IncMonth(StartPeriod, 12))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'fullmonth' then
  begin
    if Trunc(IncMonth(StartPeriod, 1))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'fullquarter' then
  begin
    if Trunc(IncMonth(StartPeriod, 3))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'fullyear' then
  begin
    if Trunc(IncMonth(StartPeriod, 12))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'day-start' then
  begin
    if Trunc(StartPeriod + 2) > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'week-start' then
  begin
    if Trunc(StartPeriod + 14)  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'month-start' then
  begin
    if Trunc(IncMonth(StartPeriod, 2))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'quarter-start' then
  begin
    if Trunc(IncMonth(StartPeriod, 6))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'year-start' then
  begin
    if Trunc(IncMonth(StartPeriod, 24))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end
  else if dateLoginsAdjustment = 'period' then
  begin
    if Trunc(StartPeriod + (EndPeriod - StartPeriod))  > Trunc(Now)
    then btnLoginsPeriodAfter.Enabled := False
    else btnLoginsPeriodAfter.Enabled := True;
  end;

  PeriodName := 'Custom';
  {$IFNDEF WIN32} asm {
    var That = pas.Unit1.Form1;

    // Search list of buttons for a match
    var i = 0;
    while (i < That.PeriodArray.length) {
      if ((this.dateLogins1Display == '<div>'+That.PeriodArray[i]['start_period_display']+'</div>') && (this.dateLogins2Display == '<div>'+That.PeriodArray[i]['end_period_display']+'</div>')) {
        PeriodName = That.PeriodArray[i]['long_name'];
        i = That.PeriodArray.length;
      }
      i += 1;
    }

    // Search list of Periods for a match if none found
    if (PeriodName == 'Custom') {
      var i = 0;
      while (i < That.Periods.length) {
        var period_start_display = luxon.DateTime.fromISO(That.Periods[i]['period_start'].split(' ').join('T')).toFormat('yyyy-MMM-dd (ccc) HH:mm');
        var period_end_display = luxon.DateTime.fromISO(That.Periods[i]['period_end'].split(' ').join('T')).toFormat('yyyy-MMM-dd (ccc) HH:mm');
        if ((this.dateLogins1Display == '<div>'+period_start_display+'</div>') && (this.dateLogins2Display == '<div>'+period_end_display+'</div>')) {
          PeriodName = That.Periods[i]['name_long'];
          i = That.Periods.length;
        }
        i += 1;
      }
    }
  } end; {$ENDIF}

  btnLoginsPeriod.Caption := PeriodName;

  Form1.PreventCompilerHint(EndPeriod);
end;

procedure TForm2.UpdateStatsNumbers;
var
  ResponseString: String;
begin
  ResponseString := await(Form1.JSONRequest('IStatisticsService.Today',[]));

  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1.StatsForm;
    var data = JSON.parse(ResponseString);
    This.tabStatOptions.getRow(0).getCell('Entries').setValue((data['Logins'][0]['logins']).toLocaleString());
    This.tabStatOptions.getRow(1).getCell('Entries').setValue((data['Sessions'][0]['sessions']).toLocaleString());
    This.tabStatOptions.getRow(2).getCell('Entries').setValue((data['Events'][0]['events']).toLocaleString());
    This.tabStatOptions.getRow(3).getCell('Entries').setValue((data['Changes'][0]['changes']).toLocaleString());
    This.tabStatOptions.getRow(4).getCell('Entries').setValue((data['Errors'][0]['errors']).toLocaleString());
    This.tabStatOptions.getRow(5).getCell('Entries').setValue((data['Registrations'][0]['registrations']).toLocaleString());
    This.tabStatOptions.getRow(6).getCell('Entries').setValue((data['Endpoints'][0]['endpoints']).toLocaleString());
  } end; {$ENDIF}

  Form1.PreventCompilerHint(ResponseString);
end;

procedure TForm2.WebFormCreate(Sender: TObject);
begin

  // Initialize this module
  ModuleInit := True;
  Current_Chart := divLoginsChart;
  Current_XData := '[]';
  Current_YData := '[]';


  pcStatistics.TabIndex := 0;
  pcStatistics.Visible := True;


  // Just using the memo to hold an IDE-incompatible string that we'll need later.
  // It is actually JavaScript code that is used to produce the rounding on D3 bar charts.
  // Other ways to do this would be to replace the JS backtick code with non-backtick code.
  ChartRounding := memoChartRounding.Lines.Text;
  memoChartRounding.ElementHandle.remove();



  // These buttons are hidden initially
  {$IFNDEF WIN32} asm {
    btnLoginsExportCSV.style.setProperty('width','0px');
    btnLoginsExportXLS.style.setProperty('width','0px');
    btnLoginsExportJSON.style.setProperty('width','0px');
    btnLoginsExportPDF.style.setProperty('width','0px');
  } end; {$ENDIF}


  // Statistics Options Tabulator
  {$IFNDEF WIN32} asm {
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
    this.tabStatOptions.on('rowDblClick', function(e, row){
      var This = pas.Unit1.Form1.StatsForm;
      var That = pas.Unit1.Form1;
      This.tabStatOptions.selectRow([row]);
      This.SelectStatOption(row.getCell('ID').getValue());
      if (That.MenusCollapsed == true) {
        divStatOptions.style.setProperty('width','230px');
        localStorage.setItem('MenusCollapsed', 'False');

        That.MenusCollapsed = false;
        divAccountOptions.style.setProperty('width','150px');
        pcAccount.style.setProperty('left', '152px','important');
        pcAccount.style.setProperty('width','calc(100% - 2rem - 154px)', 'important');
        divActivityLogHeader.style.setProperty('left','174px');
      }
      else {
        divStatOptions.style.setProperty('width','40px');
        localStorage.setItem('MenusCollapsed', 'True');

        That.MenusCollapsed = true;
        divAccountOptions.style.setProperty('width','40px');
        pcAccount.style.setProperty('left', '42px','important');
        pcAccount.style.setProperty('width','calc(100% - 2rem - 44px)', 'important');
        divActivityLogHeader.style.setProperty('left','64px');
      }
    });
  } end; {$ENDIF}



  // Logins Tabulator
  {$IFNDEF WIN32} asm {
    this.tabLogins = new Tabulator("#divLoginsData", {
      layout: "fitColumns",
      selectable: true,
      rowHeight: 24,
      headerVisible: false,
      index: "period",
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
      var bar = document.getElementById('Bar-Period-'+row.getCell('period').getValue().replaceAll('-','').replaceAll(':','').replaceAll(' ',''));
      if (row.isSelected()) {
        bar.setAttribute('fill', 'url(#gradient-highlightdivLoginsD3Chart-D3)');
      } else {
        bar.setAttribute('fill', 'url(#gradientdivLoginsD3Chart-D3)');
      }
    });
  } end; {$ENDIF}



  // Logins FlatPickr Calendars
  {$IFNDEF WIN32} asm {
    this.dateLogins1 = flatpickr('#divLoginsCalendarEdit1', {
      weekNumbers: true,
      enableTime: true,
      defaultHour: 0,
      defaultMinute: 0,
      time_24hr: true,
      dateFormat: "Y-M-d (D) H:i",
      onChange: function(selectedDates, dateStr, instance) {
        var This = pas.Unit1.Form1.StatsForm;
        This.dateLogins1Selected = luxon.DateTime.fromJSDate(selectedDates[0]).toFormat('yyyy-MM-dd HH:mm:ss.SSS');
        This.dateLogins1Display = '<div>'+dateStr+'</div>';
        btnLoginsDateTime1.innerHTML = This.dateLogins1Display;
        document.activeElement.blur()
        if (This.ModuleInit == false) {
          This.btnLoginsRefreshClick(null);
        }
        This.UpdateLoginsDateAdjustments();
      }
    });
    this.dateLogins2 = flatpickr('#divLoginsCalendarEdit2', {
      weekNumbers: true,
      enableTime: true,
      defaultHour: 23,
      defaultMinute: 59,
      time_24hr: true,
      dateFormat: "Y-M-d (D) H:i",
      onChange: function(selectedDates, dateStr, instance) {
        var This = pas.Unit1.Form1.StatsForm;
        This.dateLogins2Selected = luxon.DateTime.fromJSDate(selectedDates[0]).toFormat('yyyy-MM-dd HH:mm:ss.SSS');
        This.dateLogins2Display = '<div>'+dateStr+'</div>';
        btnLoginsDateTime2.innerHTML = This.dateLogins2Display;
        document.activeElement.blur();
        if (This.ModuleInit == false) {
          This.btnLoginsRefreshClick(null);
        }
        This.UpdateLoginsDateAdjustments();
      }
    });
    this.dateLoginsAdjustment = 'month-start';
    this.dateLogins1.setDate(new Date(new Date(new Date().setMonth(new Date().getMonth() -1)).setHours(0,0,0,0)), true);
    this.dateLogins2.setDate(new Date(new Date().setHours(23, 59, 59, 999)), true);
  } end; {$ENDIF}

  // Hidden by default
  btnLoginsShowDates.Tag := 1;
  btnLoginsShowDatesClick(Sender);



  // Setup Simplebar Scrollbars
  {$IFNDEF WIN32} asm {
    this.scrollLogins      = new SimpleBar(document.getElementById('divLoginsDataHolder'        ), { forceVisible: 'y', autoHide: false });
  } end; {$ENDIF}



  // Read to do real work
  ModuleInit := False;


  // Add Tooltips
  AddStatsBootstrapTooltips;

  // Get Today stats from server
  await(UpdateStatsNumbers);

  // Start on Logins page
  SelectStatOption(0);

  // Show the page
  divStatsHolder.ElementHandle.style.setProperty('opacity','1');

end;

end.