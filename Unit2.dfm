object Form2: TForm2
  Width = 916
  Height = 644
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  OnCreate = WebFormCreate
  object divStatsHolder: TWebHTMLDiv
    Left = 56
    Top = 56
    Width = 745
    Height = 553
    ElementID = 'divStatsHolder'
    HeightStyle = ssPercent
    WidthStyle = ssPercent
    ChildOrder = 1
    ElementPosition = epRelative
    Role = ''
    object divStatOptions: TWebHTMLDiv
      Left = 0
      Top = 24
      Width = 230
      Height = 417
      ElementClassName = 'border-0 nointeract'
      ElementID = 'divStatOptions'
      HeightStyle = ssPercent
      ElementPosition = epRelative
      Role = ''
    end
  end
end
