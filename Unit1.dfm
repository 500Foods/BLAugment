object Form1: TForm1
  Width = 1129
  Height = 676
  Caption = 'blaugment'
  CSSLibrary = cssBootstrap
  ElementClassName = 'overflow-hidden Background d-flex flex-column  align-items-start'
  ElementFont = efCSS
  OnCreate = WebFormCreate
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
      ElementID = 'divLogo'
      WidthStyle = ssAuto
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '<div class="ContainerBG" '
        '        style="position:absolute; width:100%; height:100%;">'
        '</div>'
        
          '<div class="py-2 d-flex flex-column justiy-content-center align-' +
          'items-center" '
        
          '          style="position: relative; padding-left: 34px; padding' +
          '-right: 34px;">'
        
          '  <a style="text-decoration: none; cursor: pointer;" href="https' +
          '://www.blaugment.com">'
        '    <div class="DropShadow" '
        
          '            style="font-size: 36px; font-weight: bold; color: va' +
          'r(--bl-color-one); font-family: Cairo;">'
        '      bl<span style="color: var(--bl-color-two)">augment</span>'
        '    </div>'
        '  </a>'
        '</div>'
        '')
      Role = ''
    end
    object divAccounts: TWebHTMLDiv
      Left = 787
      Top = 10
      Width = 294
      Height = 75
      ElementClassName = 'd-flex flex-row flex-shrink-0 align-items-center'
      ElementID = 'divAccounts'
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '')
      Role = ''
      object divAccountsBG: TWebHTMLDiv
        Left = 3
        Top = 3
        Width = 78
        Height = 69
        ElementClassName = 'ContainerBG position-absolute'
        ElementID = 'divAccountsBG'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
      object btnTheme: TWebButton
        Left = 236
        Top = 3
        Width = 65
        Height = 65
        Hint = 'Theme'
        Caption = '<i class="fa-duotone fa-moon fa-3x"></i>'
        ChildOrder = 3
        ElementClassName = 'btn btn-link me-3'
        ElementID = 'btnTheme'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnThemeClick
      end
      object btnRegister: TWebButton
        Left = 95
        Top = 3
        Width = 55
        Height = 65
        Hint = 'Register'
        Caption = '<i class="fa-duotone fa-user-plus fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ms-3'
        ElementID = 'btnRegister'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnRegisterClick
      end
      object btnLogin: TWebButton
        Left = 167
        Top = 3
        Width = 55
        Height = 65
        Hint = 'Login'
        Caption = '<i class="fa-duotone fa-right-to-bracket fa-3x"></i>'
        ChildOrder = 2
        ElementClassName = 'btn btn-link mx-3'
        ElementID = 'btnLogin'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnLoginClick
      end
    end
    object divSearch: TWebHTMLDiv
      Left = 119
      Top = 10
      Width = 314
      Height = 75
      ElementClassName = 
        'flex-grow-1 d-flex flex-row align-items-center justify-content-s' +
        'tart'
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
        AutoCompletion = acNone
        ChildOrder = 2
        ElementClassName = 'mb-1'
        ElementID = 'editSearch'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        SpellCheck = False
        TextHint = 'Search Blogs'
        WidthStyle = ssPercent
        WidthPercent = 100.000000000000000000
      end
      object btnSearch: TWebButton
        Left = 87
        Top = 7
        Width = 55
        Height = 65
        Hint = 'Search'
        Caption = '<i class="fa-duotone fa-magnifying-glass fa-3x"></i>'
        ChildOrder = 1
        ElementClassName = 'btn btn-link ms-3'
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
end
