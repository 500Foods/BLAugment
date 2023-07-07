object Form1: TForm1
  Width = 1129
  Height = 1091
  Caption = 'blaugment'
  CSSLibrary = cssBootstrap
  ElementClassName = 'overflow-hidden Background d-flex flex-column  align-items-start'
  ElementFont = efCSS
  OnCreate = WebFormCreate
  OnKeyDown = WebFormKeyDown
  OnResize = WebFormResize
  object divHeader: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 1089
    Height = 95
    ElementClassName = 'd-flex flex-row flex-wrap p-2 gap-2'
    ElementID = 'divHeader'
    HeightStyle = ssAuto
    WidthStyle = ssPercent
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object divLogo: TWebHTMLDiv
      Left = 10
      Top = 10
      Width = 103
      Height = 75
      ElementClassName = 'flex-grow-1'
      ElementID = 'divLogo'
      WidthStyle = ssAuto
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '<div class="ContainerBG" '
        '        style="position:absolute; width:100%; height:100%;">'
        '</div>'
        
          '<div class="py-2 d-flex flex-column justify-content-center align' +
          '-items-center" '
        
          '          style="position: relative; padding-left: 34px; padding' +
          '-right: 34px;">'
        
          '  <a style="text-decoration: none; cursor: pointer;" href="https' +
          '://www.blaugment.com">'
        '    <div class="DropShadow2" '
        
          '            style="font-size: 36px; font-weight: bold; color: va' +
          'r(--bl-color-one); font-family: Cairo; transition: all 1s;">'
        
          '      bl<span style="color: var(--bl-color-two); transition: all' +
          ' 1s;">augment</span>'
        '    </div>'
        '  </a>'
        '</div>'
        '')
      Role = ''
    end
    object divMainMenu: TWebHTMLDiv
      Left = 566
      Top = 3
      Width = 520
      Height = 75
      ElementClassName = 
        'gap-2 justify-content-center flex-grow-1 d-flex flex-row flex-sh' +
        'rink-1 align-items-center'
      ElementID = 'divMainMenu'
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divMainMenuBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 22
        Height = 69
        ElementClassName = 'ContainerBG position-absolute'
        ElementID = 'divMainMenuBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnRegister: TWebButton
        Left = 181
        Top = 3
        Width = 65
        Height = 65
        Hint = 'Register'
        Caption = '<i class="fa-duotone fa-clipboard-user fa-3x Swap"></i>'
        ChildOrder = 3
        ElementClassName = 'btn btn-link MenuButton ms-2'
        ElementID = 'btnRegister'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnRegisterClick
      end
      object btnLogin: TWebButton
        Left = 254
        Top = 3
        Width = 65
        Height = 65
        Hint = 'Login'
        Caption = '<i class="fa-duotone fa-person-to-portal fa-3x"></i>'
        ChildOrder = 4
        ElementClassName = 'btn btn-link MenuButton'
        ElementID = 'btnLogin'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLoginClick
      end
      object btnAccount: TWebButton
        Left = 106
        Top = 3
        Width = 65
        Height = 65
        Hint = 'Account'
        Caption = '<i class="fa-duotone fa-cat fa-3x Swap"></i>'
        ChildOrder = 2
        ElementClassName = 'btn btn-link MenuButton overflow-hidden '
        ElementID = 'btnAccount'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        Visible = False
        WidthPercent = 100.000000000000000000
        OnClick = btnAccountClick
      end
      object btnAdd: TWebButton
        Left = 31
        Top = 3
        Width = 65
        Height = 65
        Hint = 'Add'
        Caption = '<i class="fa-duotone fa-plus-large fa-3x Swap"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link MenuButton ms-2'
        ElementID = 'btnAdd'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        Visible = False
        WidthPercent = 100.000000000000000000
        OnClick = btnRegisterClick
      end
      object divThemes: TWebHTMLDiv
        Left = 335
        Top = 0
        Width = 75
        Height = 65
        ElementID = 'divThemes'
        ChildOrder = 8
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object btnThemeLight: TWebButton
          Left = 22
          Top = 3
          Width = 65
          Height = 65
          Hint = 'Theme'
          Caption = '<i class="fa-duotone fa-sun fa-3x"></i>'
          ChildOrder = 5
          ElementClassName = 'btn btn-link '
          ElementID = 'btnThemeLight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnThemeDarkClick
        end
        object btnThemeRed: TWebButton
          Left = 3
          Top = 3
          Width = 65
          Height = 65
          Hint = 'Theme'
          Caption = '<i class="fa-duotone fa-heart fa-3x"></i>'
          ChildOrder = 5
          ElementClassName = 'btn btn-link'
          ElementID = 'btnThemeRed'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnThemeDarkClick
        end
        object btnThemeDark: TWebButton
          Left = 11
          Top = 3
          Width = 65
          Height = 65
          Hint = 'Theme'
          Caption = '<i class="fa-duotone fa-moon fa-3x"></i>'
          ChildOrder = 5
          ElementClassName = 'btn btn-link'
          ElementID = 'btnThemeDark'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnThemeDarkClick
        end
      end
    end
    object divSearch: TWebHTMLDiv
      Left = 119
      Top = 10
      Width = 314
      Height = 75
      ElementClassName = 'd-flex flex-row align-items-center justify-content-start'
      ElementID = 'divSearch'
      WidthStyle = ssAuto
      ChildOrder = 1
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divSearchBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 78
        Height = 69
        Cursor = crHandPoint
        ElementClassName = 'ContainerBG position-absolute'
        ElementID = 'divSearchBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object editSearch: TWebEdit
        Left = 176
        Top = 27
        Width = 121
        Height = 22
        ChildOrder = 2
        ElementClassName = 'ms-2 mb-1 me-3 flex-grow-1 DropShadow2'
        ElementID = 'editSearch'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        SpellCheck = False
        TextHint = 'Search Blogs'
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object btnSearch: TWebButton
        Left = 87
        Top = 7
        Width = 55
        Height = 65
        Hint = 'Search'
        Caption = '<i class="fa-duotone fa-magnifying-glass fa-3x Swap"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ms-3 MenuButton'
        ElementID = 'btnSearch'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnSearchClick
      end
    end
  end
  object divBlogTypes: TWebHTMLDiv
    Left = 8
    Top = 101
    Width = 929
    Height = 156
    ElementClassName = 
      'd-flex flex-row flex-wrap px-2 py-0 row-gap-2 column-gap-1  just' +
      'ify-content-center'
    ElementID = 'divBlogTypes'
    HeightStyle = ssAuto
    WidthStyle = ssPercent
    ChildOrder = 1
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object divBlogFood: TWebHTMLDiv
      Left = 3
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogFood'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogFoodBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogFoodBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogFood: TWebButton
        Left = 41
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Food'
        Caption = '<i class="fa-duotone fa-plate-utensils fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogFood'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogWellness: TWebHTMLDiv
      Left = 95
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogWellness'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 1
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogWellnessBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogWellnessBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogWellness: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Wellness'
        Caption = '<i class="fa-duotone fa-spa fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogWellness'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogFitness: TWebHTMLDiv
      Left = 279
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogFitness'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 3
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogFitnessBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogFitnessBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogFitness: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Fitness'
        Caption = '<i class="fa-duotone fa-dumbbell fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogFitness'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogHealth: TWebHTMLDiv
      Left = 187
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogHealth'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogHealthBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogHealthBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogHealth: TWebButton
        Left = 44
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Health'
        Caption = '<i class="fa-duotone fa-heart-pulse fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogHealth'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogLifestyle: TWebHTMLDiv
      Left = 371
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogLifestyle'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 4
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogLifestyleBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogLifestyleBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogLifestyle: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Lifestyle'
        Caption = '<i class="fa-duotone fa-house-heart fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogLifestyle'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogSports: TWebHTMLDiv
      Left = 463
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogSports'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 5
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogSportsBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogSportsBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogSports: TWebButton
        Left = 41
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Sports'
        Caption = '<i class="fa-duotone fa-football-helmet fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogSports'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogFashion: TWebHTMLDiv
      Left = 555
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogFashion'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 6
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogFashionBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogFashionBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogFashion: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Fashion'
        Caption = '<i class="fa-duotone fa-clothes-hanger fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogFashion'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogBeauty: TWebHTMLDiv
      Left = 647
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogBeauty'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 7
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogBeautyBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogBeautyBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogBeauty: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Beauty'
        Caption = '<i class="fa-duotone fa-face-awesome fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogBeauty'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogMovies: TWebHTMLDiv
      Left = 739
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogMovies'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 8
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object WebHTMLDiv2: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogMoviesBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogMovies: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Movies'
        Caption = '<i class="fa-duotone fa-film fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogMovies'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogTravel: TWebHTMLDiv
      Left = 831
      Top = 3
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogTravel'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 9
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogTravelBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogTravelBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogTravel: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Travel'
        Caption = '<i class="fa-duotone fa-island-tropical fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogTravel'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogPhotography: TWebHTMLDiv
      Left = 3
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogPhotography'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 10
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogPhotographyBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogPhotographyBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogPhotography: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Photography'
        Caption = '<i class="fa-duotone fa-camera fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogPhotography'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogMusic: TWebHTMLDiv
      Left = 95
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogMusic'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 11
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogMusicBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogMusicBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogMusic: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Music'
        Caption = '<i class="fa-duotone fa-music fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogMusic'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogArt: TWebHTMLDiv
      Left = 187
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogArt'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 12
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogArtBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogArtBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogArt: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Art'
        Caption = '<i class="fa-duotone fa-palette fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link  ButtonBlog'
        ElementID = 'btnBlogArt'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogWriting: TWebHTMLDiv
      Left = 371
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogWriting'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 14
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogWritingBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogWritingBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogWriting: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Writing'
        Caption = '<i class="fa-duotone fa-typewriter fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogWriting'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogPersonal: TWebHTMLDiv
      Left = 463
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogPersonal'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 15
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogPersonalBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogPersonalBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogPersonal: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Personal'
        Caption = '<i class="fa-duotone fa-feather-pointed fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogPersonal'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogNews: TWebHTMLDiv
      Left = 279
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogNews'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 13
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogNewsBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogNewsBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogNews: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'News'
        Caption = '<i class="fa-duotone fa-newspaper fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogNews'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogDIY: TWebHTMLDiv
      Left = 647
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogDIY'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 17
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogDIYBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogDIYBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogDIY: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'DIY'
        Caption = '<i class="fa-duotone fa-screwdriver-wrench fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogDIY'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogDesign: TWebHTMLDiv
      Left = 739
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogDesign'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 18
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogDesignBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogDesignBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogDesign: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Design'
        Caption = '<i class="fa-duotone fa-compass-drafting fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogDesign'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogInteriors: TWebHTMLDiv
      Left = 831
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogInteriors'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 19
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogInteriorsBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogInteriorsBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogInteriors: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Interiors'
        Caption = '<i class="fa-duotone fa-swatchbook fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogInteriors'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogParenting: TWebHTMLDiv
      Left = 555
      Top = 35
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogParenting'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 16
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogParentingBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogParentingBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogParenting: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Parenting'
        Caption = '<i class="fa-duotone fa-family-pants fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogParenting'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogScience: TWebHTMLDiv
      Left = 3
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogScience'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 20
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogScienceBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogScienceBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogScience: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Science'
        Caption = '<i class="fa-duotone fa-microscope fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogScience'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogTechnology: TWebHTMLDiv
      Left = 95
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogTechnology'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 21
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogTechnologyBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogTechnologyBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogTechnology: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Technology'
        Caption = '<i class="fa-duotone fa-microchip fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogTechnology'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogSpace: TWebHTMLDiv
      Left = 187
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogSpace'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 22
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogSpaceBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogSpaceBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogSpace: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Space'
        Caption = '<i class="fa-duotone fa-rocket-launch fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogSpace'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogFinance: TWebHTMLDiv
      Left = 371
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogFinance'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 24
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogFinanceBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogFinanceBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogFinance: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Finance'
        Caption = '<i class="fa-duotone fa-piggy-bank fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogFinance'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogInvesting: TWebHTMLDiv
      Left = 463
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogInvesting'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 25
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogInvestingBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogInvestingBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogInvesting: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Investing'
        Caption = '<i class="fa-duotone fa-chart-mixed-up-circle-dollar fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogInvesting'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogBusiness: TWebHTMLDiv
      Left = 555
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogBusiness'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 26
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogBusinessBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogBusinessBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogBusiness: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Business'
        Caption = '<i class="fa-duotone fa-money-bill-wave fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogBusiness'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogIndustry: TWebHTMLDiv
      Left = 647
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogIndustry'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 27
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogIndustryBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogIndustryBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogIndustry: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Industry'
        Caption = '<i class="fa-duotone fa-industry-windows fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogIndustry'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogGovernment: TWebHTMLDiv
      Left = 3
      Top = 94
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogGovernment'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 30
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogGovernmentBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogGovernmentBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogGovernment: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Government'
        Caption = '<i class="fa-duotone fa-landmark-dome fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogGovernment'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogClimate: TWebHTMLDiv
      Left = 279
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogClimate'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 23
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogClimateBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogClimateBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogClimate: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Climate'
        Caption = '<i class="fa-duotone fa-cloud-bolt-sun fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogClimate'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogEducation: TWebHTMLDiv
      Left = 739
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogEducation'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 28
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogEducationBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogEducationBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogEducation: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Education'
        Caption = '<i class="fa-duotone fa-graduation-cap fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogEducation'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogHealthcare: TWebHTMLDiv
      Left = 831
      Top = 65
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogHealthcare'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 29
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogHealthcareBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogHealthcareBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogHealthcare: TWebButton
        Left = 41
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Healthcare'
        Caption = '<i class="fa-duotone fa-hospital fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogHealthcare'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogPolitics: TWebHTMLDiv
      Left = 95
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogPolitics'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 31
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogPoliticsBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogPoliticsBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogPolitics: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Politics'
        Caption = '<i class="fa-duotone fa-podium-star fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogPolitics'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogJustice: TWebHTMLDiv
      Left = 187
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogJustice'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 32
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogJusticeBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogJusticeBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogJustice: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Justice'
        Caption = '<i class="fa-duotone fa-scale-balanced fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogJustice'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogReligion: TWebHTMLDiv
      Left = 279
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogReligion'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 33
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogReligionBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogReligionBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogReligion: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Religion'
        Caption = '<i class="fa-duotone fa-person-praying fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogReligion'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogPeople: TWebHTMLDiv
      Left = 371
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogPeople'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 34
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogPeopleBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogPeopleBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogPeople: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'People'
        Caption = '<i class="fa-duotone fa-people-group fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogPeople'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogMotorcycle: TWebHTMLDiv
      Left = 555
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogMotorcycle'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 36
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogMotorcycleBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogMotorcycleBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogMotorcycle: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Motorcycle'
        Caption = '<i class="fa-duotone fa-motorcycle fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogMotorcycle'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogCycling: TWebHTMLDiv
      Left = 463
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogCycling'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 35
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogCyclingBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogCyclingBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogCycling: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Cycling'
        Caption = '<i class="fa-duotone fa-person-biking fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogCycling'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogAuto: TWebHTMLDiv
      Left = 647
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogAuto'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 37
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogAutoBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogAutoBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogAuto: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Auto'
        Caption = '<i class="fa-duotone fa-car-side-bolt fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogAuto'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogBoat: TWebHTMLDiv
      Left = 739
      Top = 94
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogBoat'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 38
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogBoatBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogBoatBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogBoat: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Boats'
        Caption = '<i class="fa-duotone fa-sailboat fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogBoat'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogAviation: TWebHTMLDiv
      Left = 3
      Top = 125
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogAviation'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 40
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogAviationBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogAviationBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogAviation: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Aviation'
        Caption = '<i class="fa-duotone fa-jet-fighter fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogAviation'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogArchitecture: TWebHTMLDiv
      Left = 95
      Top = 125
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder BlogButtonHolder d-flex flex-row flex-shrink-0 ' +
        'align-items-center'
      ElementID = 'divBlogArchitecture'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 41
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogArchitectureBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogArchitectureBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogArchitecture: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Architecture'
        Caption = '<i class="fa-duotone fa-house-turret fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogArchitecture'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogTrain: TWebHTMLDiv
      Left = 831
      Top = 95
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogTrain'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 39
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogTrainBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogTrainBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogTrain: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Trains'
        Caption = '<i class="fa-duotone fa-train-track fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogTrain'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogBridges: TWebHTMLDiv
      Left = 187
      Top = 125
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogBridges'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 42
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogBridgesBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogBridgesBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogBridges: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Bridges'
        Caption = '<i class="fa-duotone fa-bridge-suspension fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogBridges'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogCats: TWebHTMLDiv
      Left = 279
      Top = 125
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogCats'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 43
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogCatsBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogCatsBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogCats: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Cats'
        Caption = '<i class="fa-duotone fa-cat fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogCats'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogDogs: TWebHTMLDiv
      Left = 371
      Top = 125
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogDogs'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 44
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogDogsBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogDogsBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogDogs: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Dogs'
        Caption = '<i class="fa-duotone fa-dog fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlog'
        ElementID = 'btnBlogDogs'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogGardening: TWebHTMLDiv
      Left = 463
      Top = 125
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogGardening'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 45
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogGardeningBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogGardeningBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogGardening: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Gardening'
        Caption = '<i class="fa-duotone fa-shovel fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogGardening'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
    object divBlogGaming: TWebHTMLDiv
      Left = 555
      Top = 125
      Width = 86
      Height = 26
      ElementClassName = 
        'BlogButtonHolder d-flex flex-row flex-shrink-0 align-items-cente' +
        'r'
      ElementID = 'divBlogGaming'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 46
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divBlogGamingBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 30
        Height = 20
        ElementClassName = 'ContainerBlog position-absolute'
        ElementID = 'divBlogGamingBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
      object btnBlogGaming: TWebButton
        Left = 39
        Top = 3
        Width = 42
        Height = 20
        Hint = 'Gaming'
        Caption = '<i class="fa-duotone fa-ghost fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ButtonBlogSwap'
        ElementID = 'btnBlogGaming'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnBlogClick
      end
    end
  end
  object divLogin: TWebHTMLDiv
    Left = 83
    Top = 263
    Width = 350
    Height = 200
    ElementID = 'divLogin'
    ChildOrder = 2
    ElementFont = efCSS
    Role = ''
    Visible = False
    object divLoginMessage: TWebHTMLDiv
      Left = 3
      Top = 55
      Width = 344
      Height = 145
      ElementClassName = 'd-none justify-content-center align-items-center'
      ElementID = 'divLoginMessage'
      ChildOrder = 5
      ElementFont = efCSS
      Role = ''
      Visible = False
    end
    object divLoginBG: TWebHTMLDiv
      Left = 3
      Top = 55
      Width = 344
      Height = 145
      Cursor = crHandPoint
      ElementClassName = 'ContainerBG position-absolute'
      ElementID = 'divLoginBG'
      ElementFont = efCSS
      Role = ''
    end
    object editUsername: TWebEdit
      Left = 80
      Top = 80
      Width = 190
      Height = 45
      AutoCompletion = acUserName
      CharCase = wecUpperCase
      ChildOrder = 3
      ElementID = 'editUsername'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      MaxLength = 32
      SpellCheck = False
      TextHint = 'Username'
      WidthPercent = 100.000000000000000000
    end
    object editPassword: TWebEdit
      Left = 80
      Top = 130
      Width = 190
      Height = 45
      AutoCompletion = acCurrentPassword
      ChildOrder = 4
      ElementID = 'editPassword'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      MaxLength = 50
      PasswordChar = '*'
      SpellCheck = False
      TextHint = 'Password'
      WidthPercent = 100.000000000000000000
    end
    object btnForgotUsername: TWebButton
      Left = 5
      Top = 60
      Width = 50
      Height = 50
      Hint = 'Forgot Username'
      Caption = '<i class="fa-duotone fa-shield-cat fa-3x"></i>'
      ChildOrder = 1
      ElementClassName = 'btn btn-link'
      ElementID = 'btnForgotUsername'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnForgotUsernameClick
    end
    object btnForgotPassword: TWebButton
      Left = 5
      Top = 135
      Width = 50
      Height = 50
      Hint = 'ForgotPassword'
      Caption = '<i class="fa-duotone fa-shield-keyhole fa-3x"></i>'
      ChildOrder = 2
      ElementClassName = 'btn btn-link'
      ElementID = 'btnForgotPassword'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnForgotPasswordClick
    end
    object btnLoginOK: TWebButton
      Left = 273
      Top = 135
      Width = 50
      Height = 50
      Hint = 'Login'
      Caption = '<i class="fa-duotone fa-shield-check fa-3x"></i>'
      ChildOrder = 1
      ElementClassName = 'btn btn-link'
      ElementID = 'btnLoginOK'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnLoginOKClick
    end
    object btnLoginCancel: TWebButton
      Left = 273
      Top = 60
      Width = 50
      Height = 50
      Hint = 'Cancel Login'
      Caption = '<i class="fa-duotone fa-shield-xmark fa-3x"></i>'
      ChildOrder = 2
      ElementClassName = 'btn btn-link'
      ElementID = 'btnLoginCancel'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnLoginCancelClick
    end
    object WebHTMLDiv3: TWebHTMLDiv
      Left = 80
      Top = 5
      Width = 190
      Height = 50
      ElementClassName = 'overflow-hidden'
      ElementID = 'divLogo'
      ChildOrder = 8
      ElementFont = efCSS
      HTML.Strings = (
        '<div class="ContainerBGLogin" '
        '        style="position: absolute; width:100%; height:100%;">'
        '</div>'
        
          '<div class="h-100 d-flex justify-content-center align-items-cent' +
          'er" '
        '        style="position: relative;">'
        '  <div class="DropShadow2" '
        
          '          style="font-size: 32px; padding-bottom: 6px; font-weig' +
          'ht: bold; color: var(--bl-color-one); font-family: Cairo;">'
        '    bl<span style="color: var(--bl-color-two)">augment</span>'
        '  </div>'
        '</div>'
        '')
      Role = ''
    end
  end
  object divShade: TWebHTMLDiv
    Left = 8
    Top = 263
    Width = 53
    Height = 60
    ElementID = 'divShade'
    HeightStyle = ssPercent
    WidthStyle = ssPercent
    ChildOrder = 3
    ElementPosition = epIgnore
    ElementFont = efCSS
    HTML.Strings = (
      '<div style="width:0px; height:0px; overflow:hidden;">'
      '  <i class="fa-duotone fa-atom-simple fa-xl"></i>'
      '  <i class="fa-duotone fa-thumbs-up fa-xl"></i>'
      '  <i class="fa-duotone fa-sun fa-3x"></i>'
      '  <i class="fa-duotone fa-moon fa-3x"></i>'
      '  <i class="fa-duotone fa-heart fa-3x"></i>'
      '  <i class="fa-duotone fa-clock-desk fa-lg"></i>'
      '  <i class="fa-duotone fa-globe fa-lg"></i>'
      '  <i class="fa-duotone fa-computer fa-lg"></i>'
      '  <i class="fa-duotone fa-globe fa-lg"></i>'
      '  <i class="fa-duotone fa-computer"></i>'
      '  <i class="fa-duotone fa-tablet-button"></i>'
      '  <i class="fa-duotone fa-tablet-button"></i>'
      '  <i class="fa-brands fa-chrome"></i>'
      '  <i class="fa-brands fa-edge"></i>'
      '  <i class="fa-brands fa-firefox-browser"></i>'
      '  <i class="fa-brands fa-safari"></i>'
      '  <i class="fa-brands fa-windows"></i>'
      '  <i class="fa-brands-apple"></i>'
      
        '  <img src="https://cdn.jsdelivr.net/npm/language-icons@0.3.0/ic' +
        'ons/en.svg">'
      
        '  <img src="https://cdn.jsdelivr.net/npm/country-flag-icons@1.5.' +
        '7/1x1/CA.svg">'
      
        '  <img src="https://cdn.jsdelivr.net/npm/country-flag-icons@1.5.' +
        '7/1x1/US.svg">'
      
        '  <img src="https://cdn.jsdelivr.net/npm/country-flag-icons@1.5.' +
        '7/1x1/GB.svg">'
      '</div>')
    Role = ''
    Visible = False
  end
  object divAccount: TWebHTMLDiv
    Left = 0
    Top = 536
    Width = 625
    Height = 555
    ElementClassName = 'resize-drag overflow-hidden p-2'
    ElementID = 'divAccount'
    ChildOrder = 4
    ElementFont = efCSS
    Role = ''
    Visible = False
    object divAccountBG: TWebHTMLDiv
      Left = 3
      Top = 3
      Width = 30
      Height = 41
      Cursor = crHandPoint
      ElementClassName = 'ContainerBGPadded position-absolute m-2'
      ElementID = 'divAccountBG'
      HeightStyle = ssPercent
      WidthStyle = ssPercent
      ElementPosition = epIgnore
      ElementFont = efCSS
      Role = ''
    end
    object divAccountTitle: TWebHTMLDiv
      Left = 39
      Top = 3
      Width = 442
      Height = 40
      ElementClassName = 'm-3 Header d-flex flex-row  align-items-center'
      ElementID = 'divAccountTitle'
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
      object labelAccountTitle: TWebLabel
        Left = 64
        Top = 3
        Width = 98
        Height = 35
        AutoSize = False
        ElementClassName = 'd-flex flex-row w-100'
        ElementLabelClassName = 'd-flex flex-row w-100'
        ElementID = 'labelAccountName'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        HTML = 'User Name'
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object btnAccountRefresh: TWebButton
        Left = 260
        Top = -3
        Width = 50
        Height = 50
        Hint = 'Refresh'
        Caption = '<i class="fa-duotone fa-rotate fa-xl"></i>'
        ChildOrder = 2
        ElementClassName = 'btn btn-link'
        ElementID = 'btnAccountRefresh'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnAccountRefreshClick
      end
      object btnAccountClose: TWebButton
        Left = 316
        Top = -3
        Width = 50
        Height = 50
        Hint = 'Close'
        Caption = '<i class="fa-duotone fa-xmark Swap fa-2x"></i>'
        ChildOrder = 3
        ElementClassName = 'btn btn-link'
        ElementID = 'btnAccountClose'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnAccountCloseClick
      end
      object btnAccountChange: TWebButton
        Left = 204
        Top = -3
        Width = 50
        Height = 50
        Hint = 'Change Account'
        Caption = '<i class="fa-duotone fa-user-secret Swap fa-xl"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link'
        ElementID = 'btnAccountChange'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnAccountChangeClick
      end
    end
    object pcAccount: TWebPageControl
      Left = 158
      Top = 46
      Width = 400
      Height = 506
      ElementClassName = 'nav nav-tabs m-2'
      ElementID = 'pcAccount'
      ChildOrder = 3
      ElementTabClassName = 'nav-link'
      ElementTabActiveClassName = 'nav-link active'
      ElementTabItemClassName = 'nav-item'
      ElementFont = efCSS
      TabIndex = 3
      ShowTabs = False
      TabOrder = 2
      object pageAccountName: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountName'
        Caption = 'NM'
        ElementBodyClassName = 'd-flex flex-column gap-2 '
        ElementFont = efCSS
        object labelFirstName: TWebLabel
          Left = 3
          Top = 6
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'First Name *'
          ElementClassName = 'order-0 mx-2 Label mt-2'
          ElementID = 'labelFirstName'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelMiddleName: TWebLabel
          Left = 8
          Top = 66
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'Middle Name(s)'
          ChildOrder = 2
          ElementClassName = 'order-2 mx-2 Label '
          ElementID = 'labelMiddleName'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object WebLabel2: TWebLabel
          Left = 8
          Top = 126
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'Last Name *'
          ChildOrder = 4
          ElementClassName = 'order-4 mx-2 Label'
          ElementID = 'labelLastName'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelEMail: TWebLabel
          Left = 8
          Top = 186
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'E-Mail Address *'
          ChildOrder = 6
          ElementClassName = 'order-6 mx-2 Label'
          ElementID = 'labelEMail'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelAccountName: TWebLabel
          Left = 3
          Top = 311
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'Account Name *'
          ChildOrder = 8
          ElementClassName = 'order-9 mx-2 Label mt-1'
          ElementID = 'labelAccountName'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object editMiddleName: TWebEdit
          Left = 8
          Top = 86
          Width = 200
          Height = 30
          AutoCompletion = acAdditionalName
          ChildOrder = 3
          ElementClassName = 'nointeract order-3 Edit ms-2 me-5'
          ElementID = 'editMiddleName'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          ShowFocus = False
          SpellCheck = False
          TabOrder = 101
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnChange = editFirstNameChange
        end
        object editLastName: TWebEdit
          Left = 8
          Top = 146
          Width = 200
          Height = 30
          AutoCompletion = acFamilyName
          ChildOrder = 5
          ElementClassName = 'nointeract order-5 Edit ms-2 me-5'
          ElementID = 'editLastName'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          ShowFocus = False
          SpellCheck = False
          TabOrder = 102
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnChange = editFirstNameChange
        end
        object editEMail: TWebEdit
          Left = 8
          Top = 206
          Width = 200
          Height = 30
          AutoCompletion = acNope
          ChildOrder = 7
          ElementClassName = 'order-7 Edit ms-2 me-5 '
          ElementID = 'editEMail'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          ShowFocus = False
          SpellCheck = False
          TabOrder = 103
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnChange = editEMailChange
        end
        object editAccountName: TWebEdit
          Left = 3
          Top = 338
          Width = 200
          Height = 30
          AutoCompletion = acNope
          CharCase = wecUpperCase
          ChildOrder = 9
          ElementClassName = 'nointeract order-10 Edit ms-2 mx-5'
          ElementID = 'editAccountName'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 32
          ShowFocus = False
          SpellCheck = False
          TabOrder = 104
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnChange = editAccountNameChange
        end
        object divChangeAccountName: TWebHTMLDiv
          Left = 3
          Top = 374
          Width = 249
          Height = 57
          ElementClassName = 
            'nointeract order-11 mb-3 ms-2 me-5 mt-1 d-flex flex-row align-it' +
            'ems-center pe-none'
          ElementID = 'divChangeAccountName'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 6
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          OnClick = btnChangeAccountNameClick
          object labelChangeAccountName: TWebLabel
            Left = 69
            Top = 15
            Width = 229
            Height = 25
            Cursor = crHandPoint
            AutoSize = False
            Caption = 'Enter New Account Name'
            ChildOrder = 2
            ElementClassName = 'DropShadow LabelAlt my-2 ps-1 pe-5 pb-1 w-100 text-wrap'
            ElementID = 'labelChangeAccountName'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WordWrap = True
            WidthPercent = 100.000000000000000000
          end
          object btnChangeAccountName: TWebButton
            Left = 3
            Top = 4
            Width = 50
            Height = 50
            Caption = '<i class="fa-duotone fa-xmark Swap fa-2x"></i>'
            ChildOrder = 1
            ElementClassName = 'btn btn-link'
            ElementID = 'btnChangeAccountName'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object WebHTMLDiv5: TWebHTMLDiv
            Left = 216
            Top = 13
            Width = 30
            Height = 20
            ElementClassName = 'ContainerBlog position-absolute'
            ElementID = 'divChangePasswordBG'
            HeightStyle = ssPercent
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
          end
        end
        object divChangeAccountEMail: TWebHTMLDiv
          Left = 3
          Top = 246
          Width = 249
          Height = 57
          ElementClassName = 
            'nointeract order-8 ms-2 me-5 mt-1 d-flex flex-row align-items-ce' +
            'nter pe-none'
          ElementID = 'divChangeAccountEMail'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 6
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object labelChangeAccountEMail: TWebLabel
            Left = 69
            Top = 15
            Width = 229
            Height = 25
            Cursor = crHandPoint
            AutoSize = False
            Caption = 'Enter New E-Mail Address'
            ChildOrder = 2
            ElementClassName = 'DropShadow LabelAlt my-2 ps-1 pe-5 pb-1 w-100 text-wrap'
            ElementID = 'labelChangeAccountEMail'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WordWrap = True
            WidthPercent = 100.000000000000000000
            OnClick = btnChangeAccountEMailClick
          end
          object btnChangeAccountEMail: TWebButton
            Left = 3
            Top = 3
            Width = 50
            Height = 50
            Caption = '<i class="fa-duotone fa-xmark Swap fa-2x"></i>'
            ChildOrder = 1
            ElementClassName = 'btn btn-link'
            ElementID = 'btnChangeAccountEMail'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnChangeAccountEMailClick
          end
          object WebHTMLDiv7: TWebHTMLDiv
            Left = 216
            Top = 7
            Width = 30
            Height = 20
            ElementClassName = 'ContainerBlog position-absolute'
            ElementID = 'divChangePasswordBG'
            HeightStyle = ssPercent
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
          end
          object editEMailCode: TWebEdit
            Left = 152
            Top = 24
            Width = 75
            Height = 30
            AutoCompletion = acNope
            ChildOrder = 3
            EditType = weNumeric
            ElementClassName = 'order-7 Edit ms-2 me-5 '
            ElementID = 'editEMailCode'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            MaxLength = 6
            ShowFocus = False
            SpellCheck = False
            TabOrder = 103
            Visible = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnChange = editEMailCodeChange
          end
        end
        object WebHTMLDiv6: TWebHTMLDiv
          Left = 3
          Top = 25
          Width = 321
          Height = 41
          ElementClassName = 'nointeract order-1 ms-2 me-5'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 12
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object editFirstName: TWebEdit
            Left = 3
            Top = 5
            Width = 200
            Height = 30
            AutoCompletion = acGivenName
            ElementClassName = 'Edit'
            ElementID = 'editFirstName'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            MaxLength = 50
            ShowFocus = False
            SpellCheck = False
            TabOrder = 100
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
            OnChange = editFirstNameChange
          end
          object btnFirstNameCancel: TWebButton
            Left = 263
            Top = 3
            Width = 30
            Height = 30
            Caption = '<i class="fa-duotone fa-xmark Swap fa-xl"></i>'
            ChildOrder = 2
            ElementClassName = 'btn btn-link NavButton ButtonR2'
            ElementID = 'btnFirstNameCancel'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnFirstNameCancelClick
          end
          object btnFirstNameSave: TWebButton
            Left = 227
            Top = 3
            Width = 30
            Height = 30
            Caption = '<i class="fa-duotone fa-check fa-xl"></i>'
            ChildOrder = 1
            ElementClassName = 'btn btn-link NavButton ButtonR1'
            ElementID = 'btnFirstNameSave'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnFirstNameSaveClick
          end
        end
      end
      object pageAccountPassword: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountPassword'
        Caption = 'PW'
        ChildOrder = 8
        ElementBodyClassName = 'd-flex flex-column gap-2 '
        ElementFont = efCSS
        object labelCurrentPassword: TWebLabel
          Left = 12
          Top = 11
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'Current Password *'
          ElementClassName = 'mx-2 Label order-0 mt-2'
          ElementID = 'labelCurrentPassword'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelNewPassword: TWebLabel
          Left = 18
          Top = 78
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'New Password *'
          ChildOrder = 2
          ElementClassName = 'mx-2 Label order-2'
          ElementID = 'labelNewPassword'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelConfirmPassword: TWebLabel
          Left = 18
          Top = 134
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'Confirm Password *'
          ChildOrder = 4
          ElementClassName = 'mx-2 Label order-4'
          ElementID = 'labelConfirmPassword'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object editCurrentPassword: TWebEdit
          Left = 18
          Top = 38
          Width = 200
          Height = 30
          AutoCompletion = acCurrentPassword
          ChildOrder = 1
          ElementClassName = 'nointeract Edit ms-2 me-5 order-1'
          ElementID = 'editCurrentPassword'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          PasswordChar = '*'
          SpellCheck = False
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnChange = editCurrentPasswordChange
        end
        object editNewPassword: TWebEdit
          Left = 18
          Top = 98
          Width = 200
          Height = 30
          AutoCompletion = acNewPassword
          ChildOrder = 3
          ElementClassName = 'nointeract Edit ms-2 me-5 order-3'
          ElementID = 'editNewPassword'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          PasswordChar = '*'
          SpellCheck = False
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnChange = editCurrentPasswordChange
        end
        object editConfirmPassword: TWebEdit
          Left = 18
          Top = 154
          Width = 200
          Height = 30
          AutoCompletion = acNewPassword
          ChildOrder = 5
          ElementClassName = 'nointeract Edit ms-2 me-5 order-5'
          ElementID = 'editConfirmPassword'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          PasswordChar = '*'
          SpellCheck = False
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
          OnChange = editCurrentPasswordChange
        end
        object divChangePassword: TWebHTMLDiv
          Left = 3
          Top = 207
          Width = 249
          Height = 57
          ElementClassName = 
            'nointeract order-6 ms-2 me-5 mt-2 d-flex flex-row align-items-ce' +
            'nter'
          ElementID = 'divChangePassword'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 6
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          OnClick = btnChangePasswordClick
          object labelChangePassword: TWebLabel
            Left = 69
            Top = 15
            Width = 229
            Height = 25
            Cursor = crHandPoint
            AutoSize = False
            Caption = 'Enter Current Password'
            ChildOrder = 2
            ElementClassName = 'DropShadow LabelAlt my-2 ps-1 pe-5 pb-1 w-100 text-wrap'
            ElementID = 'labelChangePassword'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WordWrap = True
            WidthPercent = 100.000000000000000000
          end
          object btnChangePassword: TWebButton
            Left = 3
            Top = 4
            Width = 50
            Height = 50
            Caption = '<i class="fa-duotone fa-xmark Swap fa-2x"></i>'
            ChildOrder = 1
            ElementClassName = 'btn btn-link'
            ElementID = 'btnChangePassword'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
          end
          object divChangePasswordBG: TWebHTMLDiv
            Left = 213
            Top = 13
            Width = 30
            Height = 20
            ElementClassName = 'ContainerBlog position-absolute'
            ElementID = 'divChangePasswordBG'
            HeightStyle = ssPercent
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
          end
        end
      end
      object pageAccountPhoto: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page nointeract'
        ElementID = 'pageAccountPhoto'
        Caption = 'PH'
        ChildOrder = 1
        ElementBodyClassName = 'd-flex flex-column gap-2 nointeract'
        ElementFont = efCSS
        object divAccountPhotoOptions: TWebHTMLDiv
          Left = 3
          Top = 14
          Width = 397
          Height = 46
          ElementClassName = 'nointeract mt-2 ms-2 pe-5 d-flex flex-wrap flex-row gap-1 '
          ElementID = 'divAccountPhotoOptions'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnPhotoUpload: TWebButton
            Left = 92
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Upload Photo'
            Caption = '<i class="fa-duotone fa-upload fa-lg Swap"></i>'
            ChildOrder = 2
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnPhotoUpload'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoUploadClick
          end
          object btnPhotoClear: TWebButton
            Left = 3
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Clear Photo'
            Caption = '<i class="fa-duotone fa-trash-can Swap fa-lg"></i>'
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnPhotoClear'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoClearClick
          end
          object btnPhotoIcons: TWebButton
            Left = 138
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Select Icon'
            Caption = '<i class="fa-duotone fa-icons Swap fa-lg"></i>'
            ChildOrder = 3
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnPhotoIcons'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoIconsClick
          end
          object btnPhotoURL: TWebButton
            Left = 46
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Enter URL'
            Caption = '<i class="fa-duotone fa-link Swap fa-lg"></i>'
            ChildOrder = 1
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnPhotoURL'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoURLClick
          end
          object btnPhotoReset: TWebButton
            Left = 184
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Reset Size & Position'
            Caption = '<i class="fa-duotone fa-crosshairs fa-lg"></i>'
            ChildOrder = 4
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnPhotoReset'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoResetClick
          end
          object btnPhotoSave: TWebButton
            Left = 230
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Save Changes'
            Caption = '<i class="fa-duotone fa-check fa-xl Swap"></i>'
            ChildOrder = 5
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnPhotoSave'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoSaveClick
          end
          object btnPhotoCancel: TWebButton
            Left = 276
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Cancel Changes'
            Caption = '<i class="fa-duotone fa-xmark fa-xl"></i>'
            ChildOrder = 6
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnPhotoCancel'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoCancelClick
          end
        end
        object divAccountPhotoHolder: TWebHTMLDiv
          Left = 3
          Top = 58
          Width = 324
          Height = 324
          ElementClassName = 'resize-square ms-2 pe-2 pb-2'
          ElementID = 'divAccountPhotoHolder'
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divAccountPhotoFG: TWebHTMLDiv
            Left = 5
            Top = 13
            Width = 192
            Height = 174
            ElementClassName = 'ContainerPhoto'
            ElementID = 'divAccountPhotoFG'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 4
            ElementFont = efCSS
            Role = ''
            object divAccountPhoto: TWebHTMLDiv
              Left = 12
              Top = 12
              Width = 151
              Height = 88
              ElementClassName = 'nointeractresize'
              ElementID = 'divAccountPhoto'
              HeightStyle = ssAuto
              WidthStyle = ssAuto
              ChildOrder = 2
              ElementPosition = epIgnore
              ElementFont = efCSS
              Role = ''
            end
          end
        end
      end
      object pageAccountAuthor: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountAuthor'
        Caption = 'AP'
        ChildOrder = 12
        ElementBodyClassName = 'd-flex flex-column h-auto gap-2'
        ElementFont = efCSS
        object WebLabel3: TWebLabel
          Left = 0
          Top = 206
          Width = 200
          Height = 26
          AutoSize = False
          Caption = 'Description (Limit: 5,000 characters)'
          ChildOrder = 1
          ElementClassName = 'mt-1 mx-2 Label '
          ElementID = 'labelAuthorDescription'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthStyle = ssAuto
          WidthPercent = 100.000000000000000000
        end
        object divAuthorProfileHolder: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 330
          Height = 190
          ElementClassName = 'm-2 p-2 resize nointeract d-flex flex-column'
          ElementID = 'divAuthorProfileHolder'
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object divAuthorProfileDescription: TWebHTMLDiv
            Left = 10
            Top = 125
            Width = 310
            Height = 55
            ElementClassName = 'nointeractresize pe-1 pt-1 '
            ElementID = 'divAuthorProfileDescription'
            HeightStyle = ssAuto
            WidthStyle = ssPercent
            ChildOrder = 1
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
          end
          object divAuthorProfileTop: TWebHTMLDiv
            Left = 10
            Top = 10
            Width = 310
            Height = 110
            ElementClassName = 'd-flex flex-row'
            ElementID = 'divAuthorProfileTop'
            HeightStyle = ssAuto
            WidthStyle = ssPercent
            ElementPosition = epRelative
            ElementFont = efCSS
            Role = ''
            object divAuthorProfilePhoto: TWebHTMLDiv
              Left = 5
              Top = 5
              Width = 90
              Height = 90
              ElementClassName = 'ContainerAuthorPhoto flex-shrink-0'
              ElementID = 'divAuthorProfilePhoto'
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
            end
            object divAuthorProfileRight: TWebHTMLDiv
              Left = 100
              Top = 5
              Width = 205
              Height = 100
              ElementClassName = 'd-flex flex-column ps-2'
              ElementID = 'divAuthorProfileRight'
              HeightStyle = ssAuto
              WidthStyle = ssPercent
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              Role = ''
              object divAuthorProfileName: TWebHTMLDiv
                Left = 5
                Top = 5
                Width = 195
                Height = 32
                ElementClassName = 'overflow-hidden text-ellipsis nointeractresize'
                ElementID = 'divAuthorProfileName'
                WidthStyle = ssAuto
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
              end
              object divAuthorProfileLinks: TWebHTMLDiv
                Left = 5
                Top = 40
                Width = 195
                Height = 55
                ElementClassName = 
                  'ps-1 nointeractresize d-flex flex-row gap-2 flex-wrap align-item' +
                  's-center'
                ElementID = 'divAuthorProfileLinks'
                HeightStyle = ssAuto
                WidthStyle = ssPercent
                ChildOrder = 1
                ElementPosition = epRelative
                ElementFont = efCSS
                Role = ''
              end
            end
          end
        end
        object divAccountLinks: TWebHTMLDiv
          Left = 0
          Top = 288
          Width = 179
          Height = 41
          ElementClassName = 'mt-2 mb-2 nointeract'
          ElementID = 'divAccountLinks'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object divAccountLinksNav: TWebHTMLDiv
          Left = -3
          Top = 335
          Width = 305
          Height = 48
          ElementClassName = 'd-flex flex-row align-items-center justify-content-between'
          ElementID = 'divAccountLinksNav'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 5
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
          object WebLabel4: TWebLabel
            Left = 3
            Top = 4
            Width = 135
            Height = 31
            AutoSize = False
            Caption = 'Social Media / Contact Links'
            ElementClassName = 'flex-shrink-1'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            ShowAccelChar = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
          end
          object WebHTMLDiv4: TWebHTMLDiv
            Left = 124
            Top = 4
            Width = 178
            Height = 41
            ElementClassName = 'pe-2'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 5
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
            object btnLinkEdit: TWebButton
              Left = 35
              Top = 3
              Width = 30
              Height = 30
              Hint = 'New Link'
              Caption = '<i class="fa-duotone fa-pencil"></i>'
              ChildOrder = 1
              ElementClassName = 'btn btn-link NavButton'
              ElementID = 'btnLinkEdit'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLinkEditClick
            end
            object btnLinkDelete: TWebButton
              Left = 71
              Top = 3
              Width = 30
              Height = 30
              Hint = 'Delete Link'
              Caption = '<i class="fa-duotone fa-trash-can Swap"></i>'
              ChildOrder = 2
              ElementClassName = 'btn btn-link NavButton'
              ElementID = 'btnLinkDelete'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLinkDeleteClick
            end
            object btnLinkSave: TWebButton
              Left = 107
              Top = 3
              Width = 30
              Height = 30
              Hint = 'Save Changes'
              Caption = '<i class="fa-duotone fa-check fa-xl"></i>'
              ChildOrder = 3
              ElementClassName = 'btn btn-link NavButton'
              ElementID = 'btnLinkSave'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLinkSaveClick
            end
            object btnLinkCancel: TWebButton
              Left = 143
              Top = 3
              Width = 30
              Height = 30
              Hint = 'Cancel Changes'
              Caption = '<i class="fa-duotone fa-xmark fa-xl Swap"></i>'
              ChildOrder = 4
              ElementClassName = 'btn btn-link NavButton'
              ElementID = 'btnLinkCancel'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLinkCancelClick
            end
            object btnLinkInsert: TWebButton
              Left = 3
              Top = 3
              Width = 30
              Height = 30
              Hint = 'New Link'
              Caption = '<i class="fa-duotone fa-plus Swap fa-lg"></i>'
              ElementClassName = 'btn btn-link NavButton'
              ElementID = 'btnLinkInsert'
              ElementFont = efCSS
              ElementPosition = epRelative
              HeightStyle = ssAuto
              HeightPercent = 100.000000000000000000
              WidthStyle = ssAuto
              WidthPercent = 100.000000000000000000
              OnClick = btnLinkInsertClick
            end
          end
        end
        object WebHTMLDiv8: TWebHTMLDiv
          Left = 0
          Top = 229
          Width = 321
          Height = 41
          ElementClassName = 'ms-1 me-5'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          object btnDescriptionCancel: TWebButton
            Left = 263
            Top = 3
            Width = 30
            Height = 30
            Caption = '<i class="fa-duotone fa-xmark Swap fa-xl"></i>'
            ChildOrder = 2
            ElementClassName = 'btn btn-link NavButton ButtonR2'
            ElementID = 'btnDescriptionCancel'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnDescriptionCancelClick
          end
          object btnDescriptionSave: TWebButton
            Left = 227
            Top = 3
            Width = 30
            Height = 30
            Caption = '<i class="fa-duotone fa-check fa-xl"></i>'
            ChildOrder = 1
            ElementClassName = 'btn btn-link NavButton ButtonR1'
            ElementID = 'btnDescriptionSave'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnDescriptionSaveClick
          end
          object memoAuthorDescription: TWebMemo
            Left = 3
            Top = 0
            Width = 207
            Height = 40
            AutoSize = False
            BorderStyle = bsNone
            ChildOrder = 2
            ElementClassName = 'Edit nointeract'
            ElementID = 'memoAuthorDescription'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            SelLength = 0
            SelStart = 0
            TextHint = 'What would you like everyone to know about you?'
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
            OnChange = memoAuthorDescriptionChange
          end
        end
      end
      object pageAccountCategories: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountCategories'
        Caption = 'CG'
        ChildOrder = 9
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
      end
      object pageAccountBlogs: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountBlogs'
        Caption = 'BL'
        ChildOrder = 6
        ElementBodyClassName = 'd-flex flex-column gap-2 nointeract'
        ElementFont = efCSS
      end
      object pageAccountNotify: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountNotify'
        Caption = 'NO'
        ChildOrder = 5
        ElementBodyClassName = 'd-flex flex-column gap-2 nointeract'
        ElementFont = efCSS
      end
      object pageAccountRoles: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountRoles'
        Caption = 'RO'
        ChildOrder = 10
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
      end
      object pageAccountActivity: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountActivity'
        Caption = 'AL'
        ChildOrder = 11
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
        object divActivityLogHeader: TWebHTMLDiv
          Left = 0
          Top = 3
          Width = 397
          Height = 46
          ElementClassName = 'nointeract d-flex flex-wrap flex-row gap-1 '
          ElementID = 'divActivityLogHeader'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
          object btnActivityLogEMail: TWebButton
            Left = 49
            Top = 3
            Width = 40
            Height = 40
            Hint = 'E-Mail Activity Log'
            Caption = '<i class="fa-duotone fa-envelope fa-lg Swap"></i>'
            ChildOrder = 1
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnActivityLogEMail'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnActivityLogEMailClick
          end
          object btnActivityLogTimezone: TWebButton
            Left = 141
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Timezone Local / UTC'
            Caption = '<i class="fa-duotone fa-globe fa-lg Swap"></i>'
            ChildOrder = 3
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnActivityLogTimezone'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnActivityLogTimezoneClick
          end
          object btnActivityLogReload: TWebButton
            Left = 3
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Reload Activity Log'
            Caption = '<i class="fa-duotone fa-rotate fa-rotate-270 fa-lg Swap"></i>'
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnActivityLogReload'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            Visible = False
            WidthPercent = 100.000000000000000000
            OnClick = btnActivityLogReloadClick
          end
          object btnActivityLogPrint: TWebButton
            Left = 95
            Top = 3
            Width = 40
            Height = 40
            Hint = 'Print Activity Log'
            Caption = '<i class="fa-duotone fa-print fa-lg Swap"></i>'
            ChildOrder = 2
            ElementClassName = 'btn btn-light ButtonUtility'
            ElementID = 'btnActivityLogPrint'
            ElementFont = efCSS
            ElementPosition = epIgnore
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnActivityLogPrintClick
          end
          object comboActivityLog: TWebLookupComboBox
            Left = 187
            Top = 7
            Width = 145
            Height = 22
            ChildOrder = 4
            ElementClassName = 'flex-grow-1 ComboUtility flex-fill'
            ElementID = 'comboActivityLog'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnChange = comboActivityLogChange
            ItemIndex = -1
            LookupValues = <>
          end
        end
        object divActionLog: TWebHTMLDiv
          Left = 0
          Top = 87
          Width = 179
          Height = 41
          ElementClassName = 'mt-2 ps-2 mb-2 pt-5 nointeract'
          ElementID = 'divActionLog'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
      end
      object pageAccountHistory: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountHistory'
        Caption = 'LH'
        ChildOrder = 2
        ElementBodyClassName = 'd-flex flex-column gap-2 nointeract'
        ElementFont = efCSS
        object divAccountHistory: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 223
          Height = 400
          ElementClassName = 'border-0 mb-2'
          ElementID = 'divAccountHistory'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
      end
      object pageAccountPromotion: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountPromotion'
        Caption = 'PR'
        ChildOrder = 3
        ElementBodyClassName = 'd-flex flex-column gap-2 nointeract'
        ElementFont = efCSS
        object WebLabel1: TWebLabel
          Left = 24
          Top = 32
          Width = 65
          Height = 13
          Caption = 'Coming soon.'
          ElementClassName = 'LabelAlt'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
      end
      object pageAccountDonate: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountDonate'
        Caption = 'DO'
        ChildOrder = 4
        ElementBodyClassName = 'd-flex h-100 align-items-center overflow-hidden nointeract'
        ElementFont = efCSS
        object divDonate: TWebHTMLDiv
          Left = 0
          Top = 9
          Width = 338
          Height = 75
          ElementClassName = 'ps-3 pt-3 pe-5 pb-3 LabelAlt text-center text-wrap'
          ElementID = 'divDonate'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 7
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            '<p>'
            
              'If you find this project interesting, helpful, or useful, please' +
              ' consider direclty supporting these efforts financially via the ' +
              'Buy Me a Pizza link below. '
            '</p>'
            '<p class="text-center mt-4">'
            
              '  <a style="text-decoration: none; color: gray;" target="_blank"' +
              ' href="mailto:concierge@blaugment.com">'
            '    <i class="fa-duotone fa-envelope Swap fa-2x pe-3"></i>'
            '  </a>'
            
              '  <a style="text-decoration: none; color: gray;" target="_blank"' +
              ' href="https://www.buymeacoffee.com/andrewsimard500">'
            
              '     <img style="margin-top: -15px;" src="https://www.actorious.' +
              'com/img/pizza_promo.png" width="45">'
            '  </a>'
            
              '  <a style="text-decoration: none; color: var(--bl-color-one);" ' +
              'target="_blank" href="https://github.com/500Foods/Blaugment">'
            '    <i class="fa-brands fa-github fa-2x ps-3 pe-3"></i>'
            '  </a>'
            '</p>')
          Role = ''
        end
      end
      object pageAccountLogout: TWebTabSheet
        Left = 0
        Top = 20
        Width = 400
        Height = 486
        ElementClassName = 'bg-none Page'
        ElementID = 'pageAccountLogout'
        Caption = 'LO'
        ChildOrder = 7
        ElementBodyClassName = 'd-flex flex-column'
        ElementFont = efCSS
        object divLogoutHere: TWebHTMLDiv
          Left = 3
          Top = 3
          Width = 291
          Height = 62
          Cursor = crHandPoint
          ElementClassName = 'mt-2 w-100 d-flex flex-row align-items-center'
          ElementID = 'divLogoutHere'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          OnClick = btnLogoutHereClick
          object labelLogoutHere: TWebLabel
            Left = 60
            Top = 10
            Width = 229
            Height = 25
            Cursor = crHandPoint
            AutoSize = False
            Caption = 'Logout of This System'
            ChildOrder = 1
            ElementClassName = 'Label ps-2 pe-5 pb-1 w-100'
            ElementID = 'labelLogoutHere'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WordWrap = True
            WidthPercent = 100.000000000000000000
            OnClick = btnLogoutHereClick
          end
          object btnLogoutHere: TWebButton
            Left = 4
            Top = 3
            Width = 50
            Height = 50
            Caption = '<i class="fa-duotone fa-person-from-portal fa-2x"></i>'
            ElementClassName = 'btn btn-link'
            ElementID = 'btnLogoutHere'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnLogoutHereClick
          end
        end
        object divLogoutClean: TWebHTMLDiv
          Left = 6
          Top = 114
          Width = 291
          Height = 62
          Cursor = crHandPoint
          ElementClassName = 'w-100 mt-3 d-flex flex-row align-items-center'
          ElementID = 'divLogoutClean'
          HeightStyle = ssAuto
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            '')
          Role = ''
          OnClick = btnLogoutCleanClick
          object labelLogoutClean: TWebLabel
            Left = 61
            Top = 3
            Width = 228
            Height = 25
            Cursor = crHandPoint
            AutoSize = False
            Caption = 'Logout and Remove All Data'
            ChildOrder = 1
            ElementClassName = 'Label ps-2 pe-5 pb-1 w-100'
            ElementID = 'labelLogoutClean'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WordWrap = True
            WidthPercent = 100.000000000000000000
            OnClick = btnLogoutCleanClick
          end
          object btnLogoutClean: TWebButton
            Left = 5
            Top = 5
            Width = 50
            Height = 50
            Caption = '<i class="fa-duotone fa-person-from-portal fa-2x"></i>'
            ElementClassName = 'btn btn-link '
            ElementID = 'btnLogoutClean'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnLogoutCleanClick
          end
        end
        object divLogoutAll: TWebHTMLDiv
          Left = 11
          Top = 238
          Width = 291
          Height = 62
          Cursor = crHandPoint
          ElementClassName = 'w-100 mt-3 d-flex flex-row align-items-center'
          ElementID = 'divLogoutAll'
          HeightStyle = ssAuto
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
          OnClick = btnLogoutAllClick
          object labelLogoutAll: TWebLabel
            Left = 60
            Top = 8
            Width = 228
            Height = 25
            Cursor = crHandPoint
            AutoSize = False
            Caption = 'Logout of All Systems'
            ChildOrder = 1
            ElementClassName = 'Label ps-2 pe-5 pb-1 w-100'
            ElementID = 'labelLogoutAll'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WordWrap = True
            WidthPercent = 100.000000000000000000
            OnClick = btnLogoutAllClick
          end
          object btnLogoutAll: TWebButton
            Left = 5
            Top = 5
            Width = 50
            Height = 50
            Caption = '<i class="fa-duotone fa-person-from-portal fa-2x"></i>'
            ElementClassName = 'btn btn-link '
            ElementID = 'btnLogoutAll'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnLogoutAllClick
          end
        end
        object WebHTMLDiv1: TWebHTMLDiv
          Left = 6
          Top = 72
          Width = 294
          Height = 41
          ElementClassName = 'ps-3 pe-5 w-100  text-wrap LabelAlt'
          ElementID = 'divLogoutHereDescription'
          HeightStyle = ssAuto
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              'After logging out, you will need to log back in again to access ' +
              'any custom augment data or other personalized features.')
          Role = ''
        end
        object divLogoutCleanDescription: TWebHTMLDiv
          Left = 6
          Top = 182
          Width = 294
          Height = 41
          ElementClassName = 'ps-3 pe-5 w-100 text-wrap LabelAlt'
          ElementID = 'divLogoutCleanDescription'
          HeightStyle = ssAuto
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              'Logout with this option when using a public or otherwise untrust' +
              'ed system. ')
          Role = ''
        end
        object divLogoutAllDescription: TWebHTMLDiv
          Left = 6
          Top = 306
          Width = 294
          Height = 41
          ElementClassName = 'ps-3 pe-5 w-100 text-wrap LabelAlt mb-3'
          ElementID = 'divLogoutAllDescription'
          HeightStyle = ssAuto
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              'Use this option if you'#39've detected unusual login activity.  Plea' +
              'se also change your password if you are concerned about unauthor' +
              'ized access to your account.')
          Role = ''
        end
      end
    end
    object divAccountOptions: TWebHTMLDiv
      Left = 2
      Top = 41
      Width = 150
      Height = 405
      Cursor = crHandPoint
      ElementClassName = 'border-0 m-3 nointeract'
      ElementID = 'divAccountOptions'
      ChildOrder = 2
      ElementFont = efCSS
      Role = ''
    end
    object divAccountFG: TWebHTMLDiv
      Left = 487
      Top = 0
      Width = 30
      Height = 41
      Cursor = crHandPoint
      ElementClassName = 'ContainerFG position-absolute m-2'
      ElementID = 'divAccountFG'
      HeightStyle = ssPercent
      WidthStyle = ssPercent
      ChildOrder = 4
      ElementPosition = epIgnore
      ElementFont = efCSS
      Role = ''
    end
  end
  object divShade2: TWebHTMLDiv
    Left = 8
    Top = 329
    Width = 53
    Height = 60
    ElementID = 'divShade2'
    HeightStyle = ssPercent
    WidthStyle = ssPercent
    ChildOrder = 3
    ElementPosition = epIgnore
    ElementFont = efCSS
    HTML.Strings = (
      '')
    Role = ''
    Visible = False
  end
  object divURL: TWebHTMLDiv
    Left = 439
    Top = 263
    Width = 350
    Height = 90
    ElementID = 'divURL'
    ChildOrder = 2
    ElementFont = efCSS
    Role = ''
    Visible = False
    object WebHTMLDiv11: TWebHTMLDiv
      Left = 0
      Top = 35
      Width = 350
      Height = 50
      Cursor = crHandPoint
      ElementClassName = 'ContainerBG position-absolute'
      ElementID = 'divLoginBG'
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
    end
    object btnURLCancel: TWebButton
      Left = 310
      Top = 41
      Width = 35
      Height = 40
      Caption = '<i class="fa-duotone fa-xmark fa-xl"></i>'
      ChildOrder = 2
      ElementClassName = 'btn btn-link'
      ElementID = 'btnURLCancel'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnURLCancelClick
    end
    object editURL: TWebEdit
      Left = 10
      Top = 43
      Width = 270
      Height = 33
      AutoCompletion = acURL
      ChildOrder = 3
      ElementID = 'editURL'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      SpellCheck = False
      TextHint = 'https://'
      WidthPercent = 100.000000000000000000
    end
    object divURLLabel: TWebHTMLDiv
      Left = 50
      Top = 0
      Width = 250
      Height = 35
      ElementClassName = 'overflow-hidden'
      ElementID = 'divURLLabel'
      ChildOrder = 8
      ElementFont = efCSS
      HTML.Strings = (
        '<div class="ContainerBGLogin" '
        '        style="position: absolute; width:100%; height:100%;">'
        '</div>'
        
          '<div class="h-100 d-flex justify-content-center align-items-cent' +
          'er" '
        '        style="position: relative;">'
        '  <div id="editURLLabel" class="DropShadow" '
        
          '          style="font-size: 16px; font-weight: bold; color: var(' +
          '--bl-color-one); font-family: Cairo;">'
        '    Enter URL for Photo'
        '  </div>'
        '</div>'
        '')
      Role = ''
    end
    object btnURLOK: TWebButton
      Left = 275
      Top = 41
      Width = 35
      Height = 40
      Caption = '<i class="fa-duotone fa-check fa-xl"></i>'
      ChildOrder = 1
      ElementClassName = 'btn btn-link'
      ElementID = 'btnURLOK'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnURLOKClick
    end
  end
  object divIconSearch: TWebHTMLDiv
    Left = 436
    Top = 370
    Width = 350
    Height = 160
    ElementID = 'divIconSearch'
    ChildOrder = 2
    ElementFont = efCSS
    Role = ''
    Visible = False
    object WebHTMLDiv10: TWebHTMLDiv
      Left = 0
      Top = 35
      Width = 350
      Height = 30
      Cursor = crHandPoint
      ElementClassName = 'ContainerBG position-absolute'
      ElementID = 'divLoginBG'
      HeightStyle = ssPercent
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
    end
    object btnIconCancel: TWebButton
      Left = 310
      Top = 41
      Width = 35
      Height = 40
      Caption = '<i class="fa-duotone fa-xmark fa-xl"></i>'
      ChildOrder = 2
      ElementClassName = 'btn btn-link'
      ElementID = 'btnIconCancel'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnIconCancelClick
    end
    object editIconSearch: TWebEdit
      Left = 40
      Top = 43
      Width = 239
      Height = 33
      AutoCompletion = acNope
      ChildOrder = 3
      ElementID = 'editIconSearch'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      SpellCheck = False
      TextHint = 'Search 180,000 Icons'
      WidthPercent = 100.000000000000000000
      OnChange = btnIconSearchClick
    end
    object WebHTMLDiv12: TWebHTMLDiv
      Left = 50
      Top = 0
      Width = 250
      Height = 35
      ElementClassName = 'overflow-hidden'
      ElementID = 'divURLLabel'
      ChildOrder = 8
      ElementFont = efCSS
      HTML.Strings = (
        '<div class="ContainerBGLogin" '
        '        style="position: absolute; width:100%; height:100%;">'
        '</div>'
        
          '<div class="h-100 d-flex justify-content-center align-items-cent' +
          'er" '
        '        style="position: relative;">'
        '  <div id="editURLLabel" class="DropShadow" '
        
          '          style="font-size: 16px; font-weight: bold; color: var(' +
          '--bl-color-one); font-family: Cairo;">'
        '    Select an Icon'
        '  </div>'
        '</div>'
        '')
      Role = ''
    end
    object btnIconOK: TWebButton
      Left = 275
      Top = 41
      Width = 35
      Height = 40
      Caption = '<i class="fa-duotone fa-check fa-xl"></i>'
      ChildOrder = 1
      ElementClassName = 'btn btn-link'
      ElementID = 'btnIconOK'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnIconOKClick
    end
    object btnIconSearch: TWebButton
      Left = 0
      Top = 41
      Width = 35
      Height = 40
      Hint = 'Search'
      Caption = '<i class="fa-duotone fa-magnifying-glass fa-xl Swap"></i>'
      ChildOrder = 1
      ElementClassName = 'btn btn-link'
      ElementID = 'btnIconSearch'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthStyle = ssAuto
      WidthPercent = 100.000000000000000000
      OnClick = btnIconSearchClick
    end
    object divIconSearchDataBG: TWebHTMLDiv
      Left = 2
      Top = 81
      Width = 346
      Height = 30
      ElementID = 'divIconSearchDataBG'
      ChildOrder = 6
      ElementFont = efCSS
      Role = ''
    end
    object divIconSearchResults: TWebHTMLDiv
      Left = 2
      Top = 117
      Width = 346
      Height = 35
      ElementClassName = 'd-flex flex-row justify-content-center'
      ElementID = 'divIconSearchResults'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 6
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divIconSearchResultsInner: TWebHTMLDiv
        Left = 16
        Top = 3
        Width = 258
        Height = 19
        ElementClassName = 
          'd-flex flex-row flex-wrap justify-content-center py-2 ps-2 pe-5 ' +
          'gap-2'
        ElementID = 'divIconSearchResultsInner'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 6
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
      end
    end
    object divIconSearchData: TWebHTMLDiv
      Left = 2
      Top = 81
      Width = 346
      Height = 30
      ElementClassName = 'd-flex align-items-center justify-content-between px-3'
      ElementID = 'divIconSearchData'
      ChildOrder = 6
      ElementFont = efCSS
      Role = ''
    end
  end
  object XDataConn: TXDataWebConnection
    OnRequest = XDataConnRequest
    Left = 464
    Top = 32
  end
  object WebHttpRequest1: TWebHttpRequest
    Left = 528
    Top = 32
  end
  object tmrJWTRenewal: TWebTimer
    Enabled = False
    OnTimer = tmrJWTRenewalTimer
    Left = 992
    Top = 112
  end
  object tmrLogout: TWebTimer
    Enabled = False
    Interval = 2000
    OnTimer = tmrLogoutTimer
    Left = 1000
    Top = 192
  end
  object WebOpenDialog1: TWebOpenDialog
    OnGetFileAsBase64 = WebOpenDialog1GetFileAsBase64
    Left = 24
    Top = 416
  end
end
