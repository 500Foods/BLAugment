object Form1: TForm1
  Width = 996
  Height = 676
  Caption = 'blaugment'
  CSSLibrary = cssBootstrap
  ElementClassName = 'bg-black d-flex justify-content-center align-items-center'
  ElementFont = efCSS
  object WebHTMLDiv1: TWebHTMLDiv
    Left = 176
    Top = 120
    Width = 265
    Height = 177
    ElementID = 'divCenter'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    ElementPosition = epIgnore
    ElementFont = efCSS
    HTML.Strings = (
      
        '<div class="d-flex flex-column justiy-content-center align-items' +
        '-center gap-3">'
      
        '  <div style="font-size: 36px; font-weight: bold; color: royalbl' +
        'ue; font-family: Cairo;">'
      '    blaugment'
      '  </div>'
      
        '  <div style="font-size: 24px; font-weight: normal; color: silve' +
        'r; font-family: Cairo">'
      '    coming soon'
      '  </div>'
      '</div>')
    Role = ''
  end
end
