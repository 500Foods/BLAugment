object Form1: TForm1
  Width = 996
  Height = 676
  Caption = 'blaugment'
  CSSLibrary = cssBootstrap
  ElementClassName = 'Background d-flex justify-content-center align-items-center'
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
      
        '  <div class="DropShadow" style="font-size: 36px; font-weight: b' +
        'old; color: royalblue; font-family: Cairo;">'
      '    bl<span style="color: #0047AB">augment</span>'
      '  </div>'
      
        '  <div class="DropShadow" style="font-size: 24px; font-weight: n' +
        'ormal; color: silver; font-family: Cairo">'
      '    coming soon'
      '  </div>'
      '</div>')
    Role = ''
  end
end
