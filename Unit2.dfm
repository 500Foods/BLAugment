object Form2: TForm2
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
          Left = 11
          Top = 32
          Width = 673
          Height = 169
          ElementClassName = 'p-1 ChartHeader d-flex flex-row flex-wrap gap-1'
          ElementID = 'divLoginsHeader'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divLoginsChoices: TWebPanel
            Tag = 1
            Left = 170
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
            Tag = 1
            Left = 3
            Top = 50
            Width = 374
            Height = 44
            ElementClassName = 'DropShadow d-flex flex-row bg-none gap-0 p-0 m-0'
            ElementID = 'divLoginsAggChoices'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 2
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
              ElementClassName = 'btn btn-light ButtonUtilityGroup Selected'
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
              ElementClassName = 'btn btn-light ButtonUtilityGroup'
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
              Top = 2
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
              HeightStyle = ssAuto
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
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLogins1yClick
            end
          end
          object divLoginsControl: TWebHTMLDiv
            Left = 3
            Top = 3
            Width = 150
            Height = 44
            ElementClassName = 'd-flex flex-row gap-1'
            ElementID = 'divLoginsControl'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object btnLoginsRefresh: TWebButton
              Left = 3
              Top = 1
              Width = 40
              Height = 40
              Caption = '<i class="fa-duotone fa-rotate fa-xl Swap"></i>'
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsRefresh'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsRefreshClick
            end
            object btnLoginsEMail: TWebButton
              Left = 49
              Top = 1
              Width = 40
              Height = 40
              Caption = '<i class="fa-duotone fa-envelope fa-xl Swap"></i>'
              ChildOrder = 1
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
              Left = 95
              Top = 1
              Width = 40
              Height = 40
              Caption = '<i class="fa-duotone fa-print fa-xl Swap"></i>'
              ChildOrder = 2
              ElementClassName = 'btn btn-light ButtonUtility border-1'
              ElementID = 'btnLoginsPrint'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsPrintClick
            end
          end
          object btnLoginsClose: TWebButton
            Left = 41
            Top = 100
            Width = 50
            Height = 50
            Hint = 'Close Stats Window'
            Caption = '<i class="fa-duotone fa-xmark Swap fa-xl"></i>'
            ChildOrder = 4
            ElementClassName = 'btn btn-link ms-auto'
            ElementID = 'btnLoginsClose'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnLoginsCloseClick
          end
        end
        object divLoginsChart: TWebHTMLDiv
          Left = 32
          Top = 224
          Width = 249
          Height = 200
          ElementClassName = 'resize-vertical Chart'
          ElementID = 'divLoginsChart'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object divLoginsFooter: TWebHTMLDiv
          Left = 0
          Top = 448
          Width = 673
          Height = 73
          ElementClassName = 
            'p-1 ChartFooter d-flex flex-row flex-wrap gap-1 align-items-cent' +
            'er justify-content-between'
          ElementID = 'divLoginsFooter'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divLoginsRecords: TWebLabel
            Left = 400
            Top = 24
            Width = 105
            Height = 17
            AutoSize = False
            ChildOrder = 1
            ElementClassName = 'pe-2 Label DropShadow'
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
            Left = 3
            Top = 3
            Width = 292
            Height = 44
            ElementClassName = 'DropShadow d-flex flex-row bg-none gap-0 p-0 m-0'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ElementBodyClassName = 'btn btn-group btn-group-sm p-0 m-0'
            ElementFont = efCSS
            ElementPosition = epRelative
            object btnLoginsExport: TWebButton
              Left = 3
              Top = 1
              Width = 40
              Height = 40
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
              Caption = 
                '<i class="fa-duotone fa-file-csv fa-xl me-2"></i><div style="dis' +
                'play:inline-block;">CSV</div>'
              ChildOrder = 1
              ElementClassName = 'd-none btn btn-light ButtonUtilityGroup px-0'
              ElementID = 'btnLoginsExportCSV'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightPercent = 100.000000000000000000
              WidthPercent = 100.000000000000000000
              OnClick = btnLoginsExportPrintClick
            end
            object btnLoginsExportXLS: TWebButton
              Left = 95
              Top = 1
              Width = 50
              Height = 40
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
            ElementClassName = 'w-100 h-100'
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
    Top = 544
    Width = 198
    Height = 96
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
