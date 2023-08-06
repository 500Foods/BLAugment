object FormStats: TFormStats
  Width = 1092
  Height = 713
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  OnCreate = WebFormCreate
  object divStatsHolder: TWebHTMLDiv
    Left = 8
    Top = 8
    Width = 1049
    Height = 697
    ElementClassName = 'd-flex flex-row'
    ElementID = 'divStatsHolder'
    HeightStyle = ssPercent
    WidthStyle = ssPercent
    ChildOrder = 1
    ElementPosition = epRelative
    Role = ''
    object divStatOptions: TWebHTMLDiv
      Left = 3
      Top = 3
      Width = 230
      Height = 691
      ElementClassName = 'border-0 nointeract'
      ElementID = 'divStatOptions'
      HeightStyle = ssPercent
      ElementPosition = epRelative
      Role = ''
    end
    object pcStatistics: TWebPageControl
      Left = 239
      Top = 3
      Width = 807
      Height = 678
      ElementClassName = 'nav nav-tabs m-2'
      ElementID = 'pcStatistics'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 1
      ElementTabClassName = 'nav-link'
      ElementTabActiveClassName = 'nav-link active'
      ElementTabItemClassName = 'nav-item'
      ElementFont = efCSS
      TabIndex = 0
      ShowTabs = False
      TabOrder = 1
      Visible = False
      object pageLogins: TWebTabSheet
        Left = 0
        Top = 20
        Width = 807
        Height = 658
        ElementClassName = 'bg-none Page m-0 p-0 d-flex flex-column'
        ElementID = 'pageLogins'
        Caption = 'Logins'
        ElementBodyClassName = 'd-flex flex-column flex-fill overflow-hidden'
        ElementFont = efCSS
        object divLoginsHeader: TWebHTMLDiv
          Left = 3
          Top = 32
          Width = 673
          Height = 153
          ElementClassName = 'p-1 ChartHeader d-flex flex-row flex-wrap gap-1'
          ElementID = 'divLoginsHeader'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divLoginsChoices: TWebPanel
            Tag = 1
            Left = 257
            Top = 3
            Width = 114
            Height = 44
            ElementClassName = 'DropShadow d-flex flex-row bg-none gap-0 p-0 m-0'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementBodyClassName = 'btn btn-group btn-group-sm p-0 m-0'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnLoginsUniqueLogins: TWebButton
              Left = 3
              Top = 1
              Width = 40
              Height = 40
              Caption = 
                '<i class="fa-duotone fa-cat me-2 fa-xl Swap"></i><div style="dis' +
                'play:inline-block;">Users</div>'
              ElementClassName = 'btn btn-light ButtonUtilityGroup Selected'
              ElementID = 'btnLoginsUniqueLogins'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsUniqueLoginsClick
            end
            object btnLoginsLogins: TWebButton
              Left = 49
              Top = 1
              Width = 40
              Height = 40
              Caption = 
                '<i class="fa-duotone fa-person-to-portal me-2 fa-xl Swap"></i><d' +
                'iv style="display:inline-block;">Logins</div>'
              ChildOrder = 1
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLoginsLogins'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsLoginsClick
            end
          end
          object divLoginsAggChoices: TWebPanel
            Tag = 4
            Left = 12
            Top = 50
            Width = 374
            Height = 44
            ElementClassName = 'DropShadow d-flex flex-row bg-none gap-0 p-0 m-0'
            ElementID = 'divLoginsAggChoices'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 3
            ElementBodyClassName = 'btn btn-group btn-group-sm p-0 m-0'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnLogins15m: TWebButton
              Tag = 1
              Left = 3
              Top = 2
              Width = 40
              Height = 40
              Caption = '<div>15m</div>'
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLogins15m'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins15mClick
            end
            object btnLogins1hr: TWebButton
              Left = 49
              Top = 2
              Width = 40
              Height = 40
              Caption = '<div>1h</div>'
              ChildOrder = 1
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLogins1hr'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins1hrClick
            end
            object btnLogins3hr: TWebButton
              Left = 95
              Top = 2
              Width = 40
              Height = 40
              Caption = '<div>3h</div>'
              ChildOrder = 2
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLogins3hr'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins3hrClick
            end
            object btnLogins1d: TWebButton
              Left = 141
              Top = 2
              Width = 40
              Height = 40
              Caption = '<div>1d</div>'
              ChildOrder = 3
              ElementClassName = 'btn btn-light ButtonUtilityGroup Selected'
              ElementID = 'btnLogins1d'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins1dClick
            end
            object btnLogins7d: TWebButton
              Left = 187
              Top = 2
              Width = 40
              Height = 40
              Caption = '<div>1w</div>'
              ChildOrder = 4
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLogins7d'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins7dClick
            end
            object btnLogins1mo: TWebButton
              Left = 233
              Top = 1
              Width = 40
              Height = 40
              Caption = '<div>1m</div>'
              ChildOrder = 5
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLogins1mo'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins1moClick
            end
            object btnLogins3mo: TWebButton
              Left = 279
              Top = 1
              Width = 40
              Height = 40
              Caption = '<div>1q</div>'
              ChildOrder = 6
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLogins3mo'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins3moClick
            end
            object btnLogins1y: TWebButton
              Left = 325
              Top = 1
              Width = 40
              Height = 40
              Caption = '<div>1y</div>'
              ChildOrder = 7
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLogins1y'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins1yClick
            end
          end
          object btnLoginsClose: TWebButton
            Left = 601
            Top = 3
            Width = 50
            Height = 50
            Hint = 'Close Server Statistics Window'
            Caption = '<i class="fa-duotone fa-xmark Swap fa-2x"></i>'
            ChildOrder = 4
            ElementClassName = 'btn btn-link ms-auto'
            ElementID = 'btnLoginsClose'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLoginsCloseClick
          end
          object divLoginsDateChoices: TWebPanel
            Tag = 1
            Left = 12
            Top = 97
            Width = 645
            Height = 44
            ElementClassName = 'DropShadow d-flex flex-row flex-wrap bg-none gap-0 p-0 m-0'
            ElementID = 'divLoginsDateChoices'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 2
            ElementBodyClassName = 'btn btn-group btn-group-sm p-0 m-0'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnLoginsDateTime2: TWebButton
              Tag = 1
              Left = 401
              Top = 1
              Width = 180
              Height = 40
              ChildOrder = 4
              ElementClassName = 'text-wrap order-5 btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLoginsDateTime2'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsDateTime2Click
            end
            object btnLoginsDateTime1: TWebButton
              Tag = 1
              Left = 167
              Top = 2
              Width = 180
              Height = 40
              ChildOrder = 2
              ElementClassName = 'text-wrap order-2 btn btn-light ButtonUtilityGroup '
              ElementID = 'btnLoginsDateTime1'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsDateTime1Click
            end
            object btnLoginsPeriodBefore: TWebButton
              Left = 8
              Top = 2
              Width = 30
              Height = 40
              Hint = 'Previous Period'
              Caption = '<i class="fa-duotone fa-caret-left fa-xl Swap"></i>'
              ChildOrder = 1
              ElementClassName = 'order-0 btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLoginsPeriodBefore'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsPeriodBeforeClick
            end
            object btnLoginsPeriod: TWebButton
              Tag = 1
              Left = 59
              Top = 3
              Width = 120
              Height = 40
              Caption = 'Past Month'
              ChildOrder = 6
              ElementClassName = 'text-wrap order-1 btn btn-light ButtonUtilityGroup Selected'
              ElementID = 'btnLoginsPeriod'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsPeriodClick
            end
            object divLoginsCalendarEdit1: TWebEdit
              Left = 197
              Top = 7
              Width = 50
              Height = 30
              Alignment = taCenter
              ChildOrder = 3
              ElementClassName = 'order-3 opacity-0 pe-none'
              ElementID = 'divLoginsCalendarEdit1'
              ElementFont = efCSS
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
            end
            object divLoginsCalendarEdit2: TWebEdit
              Left = 408
              Top = 7
              Width = 50
              Height = 30
              Alignment = taCenter
              AutoSelect = False
              ChildOrder = 5
              ElementClassName = 'order-5 opacity-0 pe-none'
              ElementID = 'divLoginsCalendarEdit2'
              ElementFont = efCSS
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
            end
            object btnLoginsPeriodAfter: TWebButton
              Left = 607
              Top = 2
              Width = 30
              Height = 40
              Hint = 'Next Period'
              Caption = '<i class="fa-duotone fa-caret-right fa-xl Swap"></i>'
              ChildOrder = 6
              ElementClassName = 'order-7 btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLoginsPeriodAfter'
              ElementFont = efCSS
              ElementPosition = epRelative
              Enabled = False
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsPeriodAfterClick
            end
            object btnLoginsShowDates: TWebButton
              Left = 353
              Top = 3
              Width = 30
              Height = 40
              Hint = 'Toggle Dates'
              Caption = '<i class="fa-duotone fa-calendar-days Swap fa-xl"></i>'
              ChildOrder = 6
              ElementClassName = 'flex-shrink-0 p-0 order-4 btn btn-light ButtonUtilityGroup'
              ElementID = 'btnLoginsShowDates'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsShowDatesClick
            end
          end
          object btnLoginsRefresh: TWebButton
            Left = 12
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Reload Data'
            Caption = '<i class="fa-duotone fa-rotate fa-xl"></i>'
            ElementClassName = 'btn btn-link ButtonUtility border-1'
            ElementID = 'btnLoginsRefresh'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLoginsRefreshClick
          end
        end
        object divLoginsChart: TWebHTMLDiv
          Left = 15
          Top = 216
          Width = 249
          Height = 200
          ElementClassName = 'resize-vertical ChartBorder'
          ElementID = 'divLoginsChart'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divLoginsD3Chart: TWebHTMLDiv
            Left = 80
            Top = 128
            Width = 100
            Height = 41
            ElementClassName = 'Chart'
            ElementID = 'divLoginsD3Chart'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
        end
        object divLoginsFooter: TWebHTMLDiv
          Left = 0
          Top = 448
          Width = 673
          Height = 73
          ElementClassName = 
            'p-1 ChartFooter d-flex flex-row flex-wrap gap-1 align-items-cent' +
            'er '
          ElementID = 'divLoginsFooter'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divLoginsRecords: TWebLabel
            Left = 607
            Top = 16
            Width = 105
            Height = 17
            AutoSize = False
            ChildOrder = 1
            ElementClassName = 'pe-2 Label DropShadow ms-auto'
            ElementID = 'divLoginsRecords'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            HTML = 'Records: 0'
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object WebPanel1: TWebPanel
            Tag = 1
            Left = 309
            Top = 3
            Width = 292
            Height = 40
            ElementClassName = 'DropShadow d-flex flex-row bg-none '
            WidthStyle = ssAuto
            ElementBodyClassName = 'btn btn-group btn-group-sm p-0 m-0'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnLoginsExport: TWebButton
              Left = 3
              Top = 1
              Width = 40
              Height = 40
              Hint = 'Export Chart Data'
              Caption = 
                '<i class="fa-duotone fa-download fa-xl me-2"></i><div style="dis' +
                'play:inline-block;">Export</div>'
              ElementClassName = 'btn btn-light ButtonUtilityGroup px-2'
              ElementID = 'btnLoginsExport'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsExportClick
            end
            object btnLoginsExportCSV: TWebButton
              Left = 49
              Top = 0
              Width = 50
              Height = 40
              Hint = 'Export Chart Data to CSV File'
              Caption = 
                '<i class="fa-duotone fa-file-csv fa-xl me-2"></i><div style="dis' +
                'play:inline-block;">CSV</div>'
              ChildOrder = 1
              ElementClassName = 'd-none btn btn-light ButtonUtilityGroup px-0'
              ElementID = 'btnLoginsExportCSV'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsExportPrintClick
            end
            object btnLoginsExportXLS: TWebButton
              Left = 95
              Top = 1
              Width = 50
              Height = 40
              Hint = 'Export Chart Data to Excel File'
              Caption = 
                '<i class="fa-duotone fa-file-excel fa-xl me-2"></i><div style="d' +
                'isplay:inline-block;">XLS</div>'
              ChildOrder = 2
              ElementClassName = 'd-none btn btn-light ButtonUtilityGroup px-0'
              ElementID = 'btnLoginsExportXLS'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsExportPrintClick
            end
            object btnLoginsExportPDF: TWebButton
              Left = 187
              Top = 1
              Width = 50
              Height = 40
              Hint = 'Export Chart Data to PDF File'
              Caption = 
                '<i class="fa-duotone fa-file-pdf fa-xl me-2"></i><div style="dis' +
                'play:inline-block;">PDF</div>'
              ChildOrder = 4
              ElementClassName = 'd-none btn btn-light ButtonUtilityGroup px-0'
              ElementID = 'btnLoginsExportPDF'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsExportPrintClick
            end
            object btnLoginsExportJSON: TWebButton
              Left = 141
              Top = 1
              Width = 50
              Height = 40
              Hint = 'Export Chart Data to JSON File'
              Caption = 
                '<i class="fa-duotone fa-file-code fa-xl me-2"></i><div style="di' +
                'splay:inline-block;">JSON</div>'
              ChildOrder = 3
              ElementClassName = 'd-none btn btn-light ButtonUtilityGroup px-0'
              ElementID = 'btnLoginsExportJSON'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsExportPrintClick
            end
            object btnLoginsExportPrint: TWebButton
              Left = 233
              Top = 1
              Width = 40
              Height = 40
              Hint = 'Print Chart Data'
              Caption = 
                '<i class="fa-duotone fa-print fa-xl me-2 Swap"></i><div style="d' +
                'isplay:inline-block;">Print</div>'
              ChildOrder = 5
              ElementClassName = 'btn btn-light ButtonUtilityGroup px-2'
              ElementID = 'btnLoginsExportPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsExportPrintClick
            end
          end
          object divLoginsControl: TWebHTMLDiv
            Left = 12
            Top = 3
            Width = 291
            Height = 40
            ElementClassName = 'd-flex flex-row gap-1'
            ElementID = 'divLoginsControl'
            WidthStyle = ssAuto
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object btnLoginsEMail: TWebButton
              Left = 191
              Top = 1
              Width = 40
              Height = 40
              Hint = 'E-Mail Chart'
              Caption = '<i class="fa-duotone fa-envelope fa-xl Swap"></i>'
              ChildOrder = 4
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsEMail'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsEMailClick
            end
            object btnLoginsPrint: TWebButton
              Left = 230
              Top = 1
              Width = 40
              Height = 40
              Hint = 'Print Chart'
              Caption = '<i class="fa-duotone fa-print fa-xl Swap"></i>'
              ChildOrder = 5
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsPrintClick
            end
            object btnLoginsCopyChart: TWebButton
              Left = 107
              Top = 1
              Width = 40
              Height = 40
              Hint = 'Copy Chart to Clipboard'
              Caption = '<i class="fa-duotone fa-copy fa-xl Swap"></i>'
              ChildOrder = 2
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsCopyChart'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsCopyChartClick
            end
            object btnLoginsDownloadChart: TWebButton
              Left = 153
              Top = 1
              Width = 40
              Height = 40
              Hint = 'Download Chart'
              Caption = '<i class="fa-duotone fa-download fa-xl Swap"></i>'
              ChildOrder = 3
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsDownloadChart'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsDownloadChartClick
            end
            object btnLoginsClearSelection: TWebButton
              Left = 3
              Top = 3
              Width = 40
              Height = 40
              Hint = 'Deselect All'
              Caption = '<i class="fa-duotone fa-circle fa-xl "></i>'
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsClearSelection'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsClearSelectionClick
            end
            object btnLoginsSelectAll: TWebButton
              Left = 49
              Top = 3
              Width = 40
              Height = 40
              Hint = 'Select All'
              Caption = '<i class="fa-duotone fa-circle fa-xl Swap"></i>'
              ChildOrder = 1
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsSelectAll'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsSelectAllClick
            end
          end
        end
        object divLoginsDataHolder: TWebHTMLDiv
          Left = 3
          Top = 527
          Width = 673
          Height = 300
          ElementClassName = 'ChartData'
          ElementID = 'divLoginsDataHolder'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divLoginsData: TWebHTMLDiv
            Left = 14
            Top = 0
            Width = 233
            Height = 49
            ElementClassName = 'w-100 h-100 mb-1'
            ElementID = 'divLoginsData'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
        end
      end
      object pageSessions: TWebTabSheet
        Left = 0
        Top = 20
        Width = 807
        Height = 658
        ElementClassName = 'bg-none Page'
        ElementID = 'pageSessions'
        Caption = 'Sessions'
        ChildOrder = 1
        ElementFont = efCSS
        object WebLabel1: TWebLabel
          Left = 32
          Top = 48
          Width = 73
          Height = 49
          AutoSize = False
          Caption = 'Sessions'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
      end
      object pageEvents: TWebTabSheet
        Left = 0
        Top = 20
        Width = 807
        Height = 658
        ElementClassName = 'bg-none Page'
        ElementID = 'pageEvents'
        Caption = 'Events'
        ChildOrder = 2
        ElementFont = efCSS
        object WebLabel2: TWebLabel
          Left = 40
          Top = 56
          Width = 73
          Height = 49
          AutoSize = False
          Caption = 'Events'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
      end
    end
  end
  object memoChartRounding: TWebMemo
    Left = 11
    Top = 536
    Width = 198
    Height = 104
    AutoSize = False
    ElementClassName = 'd-none'
    ElementID = 'memoChartRounding'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    Lines.Strings = (
      '`'
      'M${x(xdat[i])},${y(ydat[i]) + ry}'
      'a${rx},${ry} 0 0 1 ${rx},${-ry}'
      'h${x.bandwidth() - 2 * rx}'
      'a${rx},${ry} 0 0 1 ${rx},${ry}'
      'v${height - margin.bottom - y(ydat[i]) - ry}'
      'h${-x.bandwidth()}Z'
      '`')
    SelLength = 0
    SelStart = 201
    WidthPercent = 100.000000000000000000
    WordWrap = False
  end
end
