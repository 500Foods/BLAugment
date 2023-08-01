unit Unit1;

interface

uses
  System.SysUtils,
  System.Classes,
  System.DateUtils,
  System.StrUtils,

  JS,
  Web,

  XData.Web.Connection,
  XData.Web.Client,

  WEBLib.REST,
  WEBLib.JSON,
  WEBLib.Storage,

  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  Vcl.Controls,
  WEBLib.WebCtrls,
  Vcl.StdCtrls,
  WEBLib.StdCtrls,
  WEBLib.ComCtrls,
  WEBLib.ExtCtrls;

type
  TForm1 = class(TWebForm)
    divHeader: TWebHTMLDiv;
    divLogo: TWebHTMLDiv;
    divMainMenu: TWebHTMLDiv;
    divSearch: TWebHTMLDiv;
    divSearchBG: TWebHTMLDiv;
    editSearch: TWebEdit;
    divMainMenuBG: TWebHTMLDiv;
    btnRegister: TWebButton;
    btnLogin: TWebButton;
    divBlogTypes: TWebHTMLDiv;
    divBlogFood: TWebHTMLDiv;
    divBlogFoodBG: TWebHTMLDiv;
    btnBlogFood: TWebButton;
    btnSearch: TWebButton;
    divBlogWellness: TWebHTMLDiv;
    divBlogWellnessBG: TWebHTMLDiv;
    btnBlogWellness: TWebButton;
    divBlogFitness: TWebHTMLDiv;
    divBlogFitnessBG: TWebHTMLDiv;
    btnBlogFitness: TWebButton;
    divBlogHealth: TWebHTMLDiv;
    divBlogHealthBG: TWebHTMLDiv;
    btnBlogHealth: TWebButton;
    divBlogLifestyle: TWebHTMLDiv;
    divBlogLifestyleBG: TWebHTMLDiv;
    btnBlogLifestyle: TWebButton;
    divBlogSports: TWebHTMLDiv;
    divBlogSportsBG: TWebHTMLDiv;
    btnBlogSports: TWebButton;
    divBlogFashion: TWebHTMLDiv;
    divBlogFashionBG: TWebHTMLDiv;
    btnBlogFashion: TWebButton;
    divBlogBeauty: TWebHTMLDiv;
    divBlogBeautyBG: TWebHTMLDiv;
    btnBlogBeauty: TWebButton;
    divBlogMovies: TWebHTMLDiv;
    WebHTMLDiv2: TWebHTMLDiv;
    btnBlogMovies: TWebButton;
    divBlogTravel: TWebHTMLDiv;
    divBlogTravelBG: TWebHTMLDiv;
    btnBlogTravel: TWebButton;
    divBlogPhotography: TWebHTMLDiv;
    divBlogPhotographyBG: TWebHTMLDiv;
    btnBlogPhotography: TWebButton;
    divBlogMusic: TWebHTMLDiv;
    divBlogMusicBG: TWebHTMLDiv;
    btnBlogMusic: TWebButton;
    divBlogArt: TWebHTMLDiv;
    divBlogArtBG: TWebHTMLDiv;
    btnBlogArt: TWebButton;
    divBlogWriting: TWebHTMLDiv;
    divBlogWritingBG: TWebHTMLDiv;
    btnBlogWriting: TWebButton;
    divBlogPersonal: TWebHTMLDiv;
    divBlogPersonalBG: TWebHTMLDiv;
    btnBlogPersonal: TWebButton;
    divBlogNews: TWebHTMLDiv;
    divBlogNewsBG: TWebHTMLDiv;
    btnBlogNews: TWebButton;
    divBlogDIY: TWebHTMLDiv;
    divBlogDIYBG: TWebHTMLDiv;
    btnBlogDIY: TWebButton;
    divBlogDesign: TWebHTMLDiv;
    divBlogDesignBG: TWebHTMLDiv;
    btnBlogDesign: TWebButton;
    divBlogInteriors: TWebHTMLDiv;
    divBlogInteriorsBG: TWebHTMLDiv;
    btnBlogInteriors: TWebButton;
    divBlogParenting: TWebHTMLDiv;
    divBlogParentingBG: TWebHTMLDiv;
    btnBlogParenting: TWebButton;
    divBlogScience: TWebHTMLDiv;
    divBlogScienceBG: TWebHTMLDiv;
    btnBlogScience: TWebButton;
    divBlogTechnology: TWebHTMLDiv;
    divBlogTechnologyBG: TWebHTMLDiv;
    btnBlogTechnology: TWebButton;
    divBlogSpace: TWebHTMLDiv;
    divBlogSpaceBG: TWebHTMLDiv;
    btnBlogSpace: TWebButton;
    divBlogFinance: TWebHTMLDiv;
    divBlogFinanceBG: TWebHTMLDiv;
    btnBlogFinance: TWebButton;
    divBlogInvesting: TWebHTMLDiv;
    divBlogInvestingBG: TWebHTMLDiv;
    btnBlogInvesting: TWebButton;
    divBlogBusiness: TWebHTMLDiv;
    divBlogBusinessBG: TWebHTMLDiv;
    btnBlogBusiness: TWebButton;
    divBlogIndustry: TWebHTMLDiv;
    divBlogIndustryBG: TWebHTMLDiv;
    btnBlogIndustry: TWebButton;
    divBlogGovernment: TWebHTMLDiv;
    divBlogGovernmentBG: TWebHTMLDiv;
    btnBlogGovernment: TWebButton;
    divBlogClimate: TWebHTMLDiv;
    divBlogClimateBG: TWebHTMLDiv;
    btnBlogClimate: TWebButton;
    divBlogEducation: TWebHTMLDiv;
    divBlogEducationBG: TWebHTMLDiv;
    btnBlogEducation: TWebButton;
    divBlogHealthcare: TWebHTMLDiv;
    divBlogHealthcareBG: TWebHTMLDiv;
    btnBlogHealthcare: TWebButton;
    divBlogPolitics: TWebHTMLDiv;
    divBlogPoliticsBG: TWebHTMLDiv;
    btnBlogPolitics: TWebButton;
    divBlogJustice: TWebHTMLDiv;
    divBlogJusticeBG: TWebHTMLDiv;
    btnBlogJustice: TWebButton;
    divBlogReligion: TWebHTMLDiv;
    divBlogReligionBG: TWebHTMLDiv;
    btnBlogReligion: TWebButton;
    divBlogPeople: TWebHTMLDiv;
    divBlogPeopleBG: TWebHTMLDiv;
    btnBlogPeople: TWebButton;
    divBlogMotorcycle: TWebHTMLDiv;
    divBlogMotorcycleBG: TWebHTMLDiv;
    btnBlogMotorcycle: TWebButton;
    divBlogCycling: TWebHTMLDiv;
    divBlogCyclingBG: TWebHTMLDiv;
    btnBlogCycling: TWebButton;
    divBlogAuto: TWebHTMLDiv;
    divBlogAutoBG: TWebHTMLDiv;
    btnBlogAuto: TWebButton;
    divBlogBoat: TWebHTMLDiv;
    divBlogBoatBG: TWebHTMLDiv;
    btnBlogBoat: TWebButton;
    divBlogAviation: TWebHTMLDiv;
    divBlogAviationBG: TWebHTMLDiv;
    btnBlogAviation: TWebButton;
    divBlogArchitecture: TWebHTMLDiv;
    divBlogArchitectureBG: TWebHTMLDiv;
    btnBlogArchitecture: TWebButton;
    divBlogTrain: TWebHTMLDiv;
    divBlogTrainBG: TWebHTMLDiv;
    btnBlogTrain: TWebButton;
    divBlogBridges: TWebHTMLDiv;
    divBlogBridgesBG: TWebHTMLDiv;
    btnBlogBridges: TWebButton;
    divBlogCats: TWebHTMLDiv;
    divBlogCatsBG: TWebHTMLDiv;
    btnBlogCats: TWebButton;
    divBlogDogs: TWebHTMLDiv;
    divBlogDogsBG: TWebHTMLDiv;
    btnBlogDogs: TWebButton;
    divBlogGardening: TWebHTMLDiv;
    divBlogGardeningBG: TWebHTMLDiv;
    btnBlogGardening: TWebButton;
    divBlogGaming: TWebHTMLDiv;
    divBlogGamingBG: TWebHTMLDiv;
    btnBlogGaming: TWebButton;
    divLogin: TWebHTMLDiv;
    divLoginBG: TWebHTMLDiv;
    btnForgotUsername: TWebButton;
    editUsername: TWebEdit;
    btnForgotPassword: TWebButton;
    editPassword: TWebEdit;
    divLoginMessage: TWebHTMLDiv;
    btnLoginOK: TWebButton;
    btnLoginCancel: TWebButton;
    divShade: TWebHTMLDiv;
    XDataConn: TXDataWebConnection;
    WebHttpRequest1: TWebHttpRequest;
    btnAccount: TWebButton;
    btnAdd: TWebButton;
    divAccount: TWebHTMLDiv;
    divAccountBG: TWebHTMLDiv;
    divAccountTitle: TWebHTMLDiv;
    btnAccountRefresh: TWebButton;
    pcAccount: TWebPageControl;
    pageAccountName: TWebTabSheet;
    pageAccountPhoto: TWebTabSheet;
    pageAccountHistory: TWebTabSheet;
    pageAccountPromotion: TWebTabSheet;
    pageAccountDonate: TWebTabSheet;
    pageAccountNotify: TWebTabSheet;
    pageAccountBlogs: TWebTabSheet;
    labelAccountTitle: TWebLabel;
    divAccountOptions: TWebHTMLDiv;
    labelFirstName: TWebLabel;
    pageAccountLogout: TWebTabSheet;
    labelMiddleName: TWebLabel;
    editMiddleName: TWebEdit;
    WebLabel2: TWebLabel;
    editLastName: TWebEdit;
    labelEMail: TWebLabel;
    editEMail: TWebEdit;
    labelAccountName: TWebLabel;
    editAccountName: TWebEdit;
    divLogoutHere: TWebHTMLDiv;
    divLogoutClean: TWebHTMLDiv;
    divLogoutAll: TWebHTMLDiv;
    btnLogoutHere: TWebButton;
    labelLogoutHere: TWebLabel;
    btnLogoutClean: TWebButton;
    labelLogoutClean: TWebLabel;
    btnLogoutAll: TWebButton;
    labelLogoutAll: TWebLabel;
    WebHTMLDiv1: TWebHTMLDiv;
    divLogoutCleanDescription: TWebHTMLDiv;
    divLogoutAllDescription: TWebHTMLDiv;
    pageAccountPassword: TWebTabSheet;
    labelCurrentPassword: TWebLabel;
    editCurrentPassword: TWebEdit;
    labelNewPassword: TWebLabel;
    editNewPassword: TWebEdit;
    labelConfirmPassword: TWebLabel;
    editConfirmPassword: TWebEdit;
    pageAccountCategories: TWebTabSheet;
    pageAccountRoles: TWebTabSheet;
    divChangePassword: TWebHTMLDiv;
    btnChangePassword: TWebButton;
    labelChangePassword: TWebLabel;
    divChangePasswordBG: TWebHTMLDiv;
    tmrJWTRenewal: TWebTimer;
    divAccountFG: TWebHTMLDiv;
    pageAccountActivity: TWebTabSheet;
    divActivityLogHeader: TWebHTMLDiv;
    divActionLog: TWebHTMLDiv;
    btnActivityLogEMail: TWebButton;
    btnActivityLogTimezone: TWebButton;
    btnActivityLogReload: TWebButton;
    btnActivityLogPrint: TWebButton;
    divAccountHistory: TWebHTMLDiv;
    WebLabel1: TWebLabel;
    divDonate: TWebHTMLDiv;
    divAccountPhotoOptions: TWebHTMLDiv;
    btnPhotoUpload: TWebButton;
    btnPhotoClear: TWebButton;
    btnPhotoIcons: TWebButton;
    btnAccountClose: TWebButton;
    btnAccountChange: TWebButton;
    tmrLogout: TWebTimer;
    divLoginLabel: TWebHTMLDiv;
    divChangeAccountName: TWebHTMLDiv;
    labelChangeAccountName: TWebLabel;
    btnChangeAccountName: TWebButton;
    WebHTMLDiv5: TWebHTMLDiv;
    divChangeAccountEMail: TWebHTMLDiv;
    labelChangeAccountEMail: TWebLabel;
    btnChangeAccountEMail: TWebButton;
    WebHTMLDiv7: TWebHTMLDiv;
    editEMailCode: TWebEdit;
    pageAccountAuthor: TWebTabSheet;
    WebLabel3: TWebLabel;
    divAuthorProfileHolder: TWebHTMLDiv;
    divAuthorProfileDescription: TWebHTMLDiv;
    divAuthorProfileTop: TWebHTMLDiv;
    divAuthorProfilePhoto: TWebHTMLDiv;
    divAuthorProfileRight: TWebHTMLDiv;
    divAuthorProfileName: TWebHTMLDiv;
    divAuthorProfileLinks: TWebHTMLDiv;
    divAccountLinks: TWebHTMLDiv;
    divAccountLinksNav: TWebHTMLDiv;
    WebLabel4: TWebLabel;
    WebHTMLDiv4: TWebHTMLDiv;
    btnLinkEdit: TWebButton;
    btnLinkDelete: TWebButton;
    btnLinkSave: TWebButton;
    btnLinkCancel: TWebButton;
    WebHTMLDiv6: TWebHTMLDiv;
    editFirstName: TWebEdit;
    btnFirstNameCancel: TWebButton;
    btnFirstNameSave: TWebButton;
    WebHTMLDiv8: TWebHTMLDiv;
    btnDescriptionCancel: TWebButton;
    btnDescriptionSave: TWebButton;
    memoAuthorDescription: TWebMemo;
    divThemes: TWebHTMLDiv;
    btnThemeLight: TWebButton;
    btnThemeRed: TWebButton;
    btnThemeDark: TWebButton;
    btnPhotoURL: TWebButton;
    btnPhotoReset: TWebButton;
    btnPhotoSave: TWebButton;
    btnPhotoCancel: TWebButton;
    divAccountPhotoHolder: TWebHTMLDiv;
    divAccountPhotoFG: TWebHTMLDiv;
    divAccountPhoto: TWebHTMLDiv;
    divShade2: TWebHTMLDiv;
    divURL: TWebHTMLDiv;
    WebHTMLDiv11: TWebHTMLDiv;
    editURL: TWebEdit;
    btnURLOK: TWebButton;
    btnURLCancel: TWebButton;
    divURLLabel: TWebHTMLDiv;
    btnLinkInsert: TWebButton;
    divIconSearch: TWebHTMLDiv;
    divIconSearchBG: TWebHTMLDiv;
    btnIconCancel: TWebButton;
    editIconSearch: TWebEdit;
    divIconSearchLabel: TWebHTMLDiv;
    btnIconOK: TWebButton;
    btnIconSearch: TWebButton;
    divIconSearchDataBG: TWebHTMLDiv;
    divIconSearchResults: TWebHTMLDiv;
    divIconSearchData: TWebHTMLDiv;
    divIconSearchResultsInner: TWebHTMLDiv;
    btnSelectActivityLog: TWebButton;
    divSessions: TWebHTMLDiv;
    divSessionListHolderBG: TWebHTMLDiv;
    divSessionListLabel: TWebHTMLDiv;
    divSessionListHolder: TWebHTMLDiv;
    divSessionList: TWebHTMLDiv;
    btnServerStats: TWebButton;
    divAccountRoles: TWebHTMLDiv;
    divGetImage: TWebHTMLDiv;
    btnRotate: TWebButton;
    divStatistics: TWebHTMLDiv;
    divStatisticsBG: TWebHTMLDiv;
    divStatisticsLabel: TWebHTMLDiv;
    divStatisticsHolder: TWebHTMLDiv;
    divPeriods: TWebHTMLDiv;
    divPeriodsBG: TWebHTMLDiv;
    divPeriodsLabel: TWebHTMLDiv;
    divPeriodsPresets: TWebHTMLDiv;
    divPeriodsDay: TWebHTMLDiv;
    btnPeriodD1: TWebButton;
    btnPeriodD2: TWebButton;
    btnPeriodD3: TWebButton;
    divPeriodsWeek: TWebHTMLDiv;
    btnPeriodW1: TWebButton;
    btnPeriodW2: TWebButton;
    btnPeriodW3: TWebButton;
    divPeriodsMonth: TWebHTMLDiv;
    btnPeriodM1: TWebButton;
    btnPeriodM2: TWebButton;
    btnPeriodM3: TWebButton;
    divPeriodsYear: TWebHTMLDiv;
    btnPeriodY1: TWebButton;
    btnPeriodY2: TWebButton;
    btnPeriodY3: TWebButton;
    btnPeriodD5: TWebButton;
    btnPeriodD6: TWebButton;
    btnPeriodD7: TWebButton;
    btnPeriodW5: TWebButton;
    btnPeriodW6: TWebButton;
    btnPeriodW7: TWebButton;
    btnPeriodM5: TWebButton;
    btnPeriodM6: TWebButton;
    btnPeriodM7: TWebButton;
    btnPeriodY5: TWebButton;
    btnPeriodY6: TWebButton;
    btnPeriodY7: TWebButton;
    btnPeriodY4: TWebButton;
    btnPeriodD4: TWebButton;
    btnPeriodW4: TWebButton;
    btnPeriodM4: TWebButton;
    divPeriodsHolder: TWebHTMLDiv;
    divShade3: TWebHTMLDiv;
    divPeriodsQuarter: TWebHTMLDiv;
    btnPeriodQ1: TWebButton;
    btnPeriodQ2: TWebButton;
    btnPeriodQ3: TWebButton;
    btnPeriodQ5: TWebButton;
    btnPeriodQ6: TWebButton;
    btnPeriodQ7: TWebButton;
    btnPeriodQ4: TWebButton;
    btnPeriodY8: TWebButton;
    btnPeriodD8: TWebButton;
    btnPeriodW8: TWebButton;
    btnPeriodM8: TWebButton;
    btnPeriodQ8: TWebButton;

    procedure FinalRequest;
    procedure btnThemeDarkClick(Sender: TObject);
    [async] procedure WebFormCreate(Sender: TObject);
    procedure btnBlogClick(Sender: TObject);
    procedure AddBootstrapTooltips;
    procedure btnSearchClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnForgotUsernameClick(Sender: TObject);
    procedure btnForgotPasswordClick(Sender: TObject);
    [async] procedure btnLoginCancelClick(Sender: TObject);
    [async] procedure btnLoginOKClick(Sender: TObject);
    procedure WebFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    [async] function XDataLogin(Username, Password: String):String;
    procedure LogAction(Action: String);
    [async] procedure XDataConnect;
    [async] procedure ProcessJWT(aJWT: String);
    [async] procedure btnAccountClick(Sender: TObject);
    [async] procedure btnAccountRefreshClick(Sender: TObject);
    [async] procedure SelectAccountOption(OptionID: Integer);
    [async] procedure btnLogoutHereClick(Sender: TObject);
    [async] procedure btnLogoutCleanClick(Sender: TObject);
    [async] procedure btnLogoutAllClick(Sender: TObject);
    procedure editCurrentPasswordChange(Sender: TObject);
    [async] procedure btnChangePasswordClick(Sender: TObject);
    [async] procedure Logout(Reason: String; LogoutAll: Boolean);
    [async] procedure tmrJWTRenewalTimer(Sender: TObject);
    [async] function JSONRequest(Endpoint: String; Params: array of JSValue): String;
    [async] function StringRequest(Endpoint: String; Params: array of JSValue): String;
    procedure ProcessLogin;
    function SHA256(Text2Encode: String): String;
    procedure XDataConnRequest(Args: TXDataWebConnectionRequest);
    [async] procedure btnActivityLogEMailClick(Sender: TObject);
    procedure btnActivityLogReloadClick(Sender: TObject);
    procedure btnActivityLogTimezoneClick(Sender: TObject);
    procedure btnActivityLogPrintClick(Sender: TObject);
    [async] procedure btnAccountCloseClick(Sender: TObject);
    procedure btnAccountChangeClick(Sender: TObject);
    [async] procedure ActivityLogChange(Sender: TObject);
    procedure tmrLogoutTimer(Sender: TObject);
    [async] procedure editAccountNameChange(Sender: TObject);
    [async] procedure btnChangeAccountNameClick(Sender: TObject);
    [async] procedure editEMailChange(Sender: TObject);
    [async] procedure btnChangeAccountEMailClick(Sender: TObject);
    [async] procedure editEMailCodeChange(Sender: TObject);
    procedure memoAuthorDescriptionChange(Sender: TObject);
    procedure UpdateAccountLinks;
    procedure btnLinkDeleteClick(Sender: TObject);
    procedure btnLinkEditClick(Sender: TObject);
    procedure HideToolTips;
    [async] procedure btnLinkSaveClick(Sender: TObject);
    [async] procedure btnLinkCancelClick(Sender: TObject);
    procedure editFirstNameChange(Sender: TObject);
    procedure btnFirstNameCancelClick(Sender: TObject);
    [async] procedure btnFirstNameSaveClick(Sender: TObject);
    [async] procedure btnDescriptionSaveClick(Sender: TObject);
    procedure btnDescriptionCancelClick(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
    procedure btnPhotoClearClick(Sender: TObject);
    [async] procedure btnPhotoUploadClick(Sender: TObject);
    procedure btnPhotoURLClick(Sender: TObject);
    procedure btnPhotoResetClick(Sender: TObject);
    [async] procedure btnPhotoCancelClick(Sender: TObject);
    [async] procedure btnPhotoSaveClick(Sender: TObject);
    procedure PhotoChanged;
    procedure PhotoNotChanged;
    [async] procedure btnURLCancelClick(Sender: TObject);
    procedure btnURLOKClick(Sender: TObject);
    function GetFavIcon(FavURL: String): String;
    [async] function AccountIsValid(acct: String):String;
    [async] function EMailIsValid(EMail: String):String;
    procedure btnLinkInsertClick(Sender: TObject);
    procedure btnPhotoIconsClick(Sender: TObject);
    [async] procedure btnIconCancelClick(Sender: TObject);
    procedure btnIconOKClick(Sender: TObject);
    [async] procedure btnIconSearchClick(Sender: TObject);
    procedure btnSelectActivityLogClick(Sender: TObject);
    [async] procedure divSessionListLabelClick(Sender: TObject);
    procedure labelAccountTitleDblClick(Sender: TObject);
    procedure divShadeClick(Sender: TObject);
    procedure divShade2Click(Sender: TObject);
    [async] procedure btnServerStatsClick(Sender: TObject);
    procedure btnRotateClick(Sender: TObject);
    function CaptureState: JSValue;
    procedure RevertState(StateData: JSValue);
    [async] procedure divStatisticsLabelClick(Sender: TObject);
    [async] procedure LoadIconSets;
    procedure divShade3Click(Sender: TObject);
    [async] procedure divPeriodsLabelClick(Sender: TObject);
    procedure btnPeriodSelect(Sender: TObject);
    procedure GeneratePeriods;
    procedure SelectPeriodRow(Category, ShortName, LongName, PeriodStart, PeriodEnd, Adjustment: String);

  private
    { Private declarations }

  public
    { Public declarations }
    Theme: String;            // Current Theme, eg: Dark, Red, Light
    BootstrapTT: String;      // Bootstrap Tooltip HTML to add to icon classes
    Server_URL: String;       // XData server
    StatsForm: TWEbForm;      // Statistics - only loaded when needed
    MenusCollapsed: Boolean;  // Applies to all menus

    // These are used to handle the browser back button situation
    State: String;
    StatePosition: Integer;
    StartPosition: Integer;
    StateURL : String;

    LoggedIn: Boolean;       // Whether there is a current login in place
    JWT: String;             // JWT for current session
    JWT_Expiry: TDateTime;   // When the JWT Expires
    PasswordCheck: String;   // Encoded version password

    App_Name: String;
    App_Short: String;
    App_Version: String;
    App_Release: String;
    App_Start: TDateTime;
    App_Start_UTC: TDateTime;
    App_Session: String;
    App_APIKey: String;
    App_URL: String;
    App_URLLink: String;

    App_TZ: String;
    App_TZOffset: Integer;
    App_LogDateTimeFormat: String;
    App_DisplayDateTimeFormat: String;
    App_LogDateFormat: String;
    App_DisplayDateFormat: String;
    App_LogTimeFormat: String;
    App_DisplayTimeFormat: String;

    App_IPAddress: String;
    App_Location: String;
    App_Device: String;
    App_Browser: String;
    App_Browser_Short: String;
    App_OS_Short: String;
    App_Country: String;
    App_Region: String;
    App_City: String;

    ActionLog: TStringList;          // The entire action log for current session
    ActionLogCurrent: TStringList;   // Fragment of action log that hasn't been uploaded to server yet
    LastAction: String;              // Used to prevent adding duplicate lines (particularly blank lines)
    Current_ActionLog: String;       // The selected action long in the Accounts Activity page

    User_Profile_Age: TDateTime; // When was the profile last retrieved
    User_Profile: String;        // The actual User Profile data
    User_ID: Integer;            // Used as the primary identifier
    User_Account: String;        // Mainly used for login and display
    User_FirstName: String;
    User_MiddleName: String;
    User_LastName: String;
    User_Name: String;           // Names combined into one
    User_Birthdate: String;
    User_Description: String;
    User_EMail: String;
    User_Photo: String;          // Data URI - could be <svg> or <img src=http> or <img src="data"> for example

    Roles: JSValue;           // All Available Roles (JSON)
    User_Roles: TStringList;  // List of roles from JWT

    tabAccountOptions: JSValue;
    tabAccountHistory: JSValue;
    tabAccountLinks: JSValue;
    LinksData: JSValue;
    LinksDataBackup: JSValue;
    tabAccountSessions: JSValue;
    tabAccountRoles: JSValue;
    tabPeriods: JSValue;

    // Simplebar References
    scrollAccountName: JSValue;
    scrollAccountPassword: JSValue;
    scrollAccountAuthor: JSValue;
    scrollAccountProfile: JSValue;
    scrollAccountPhoto: JSValue;
    scrollAccountRoles: JSValue;
    scrollAccountCategories: JSValue;
    scrollAccountBlogs: JSValue;
    scrollAccountNotify: JSValue;
    scrollAccountPromotion: JSValue;
//    scrollAccountDonate: JSValue;
    scrollAccountHistory: JSValue;
    scrollAccountActivity: JSValue;
    scrollAccountLogout: JSValue;
    scrollIcons: JSValue;
    scrollSessions: JSValue;
    scrollPeriods: JSValue;

    // Account Photo Pan/Zoom object
    pz: JSValue;

    // Icon Search
    IconSetsLoaded: Boolean;         // We only need to load these once
    IconSetList: JSValue;            // Icon sets retrieved from server
    IconSetNames: Array of String;   // Icon set names
    IconSetCount: Array of Integer;  // How many icons in each set
    IconResults: Integer;            // How many total icons
    IconSelected: String;            // The selected Icon

    Periods: JSValue;              // Periods table from server
    PeriodArray: JSValue;          // Periods table for local values (this month, last month, etc.)
    PeriodsGenerated: TDateTime;   // Indicates when the local values were last refreshed



    // Use these to help reduce compiler hints about....
    // ...Delphi variables used only in ASM blocks
    // ...Delphi methods called only from ASM blocks
    procedure StopLinkerRemoval(P: Pointer);
    procedure PreventCompilerHint(I: integer); overload;
    procedure PreventCompilerHint(S: string); overload;
    procedure PreventCompilerHint(J: JSValue); overload;
    procedure PreventCompilerHint(H: TJSHTMLElement); overload;

  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.GeneratePeriods;
var
  Period: Integer;
  PeriodShort: String;
  PeriodLong: String;
  PeriodStart: TDateTime;
  PeriodStartDisplay: String;
  PeriodStartValue: String;
  PeriodEnd: TDateTime;
  PeriodEndDisplay: String;
  PeriodEndValue: String;
  PeriodAdjustment: String;

  aYear: Word;
  aMonth: Word;
  aDay: Word;

  bYear: Word;
  bMonth: Word;
  bDay: Word;
  bHour: Word;
  bMinute: Word;
  bSecond: Word;
  bMillisecond: Word;

  procedure AddPeriod;
  begin
    PeriodStartDisplay := FormatDateTime('yyyy-mmm-dd (ddd) hh:nn', PeriodStart);
    PeriodStartValue := FormatDateTime('yyyy-mm-dd hh:nn:ss', PeriodStart);
    PeriodEndDisplay := FormatDateTime('yyyy-mmm-dd (ddd) hh:nn', PeriodEnd);
    PeriodEndValue := FormatDateTime('yyyy-mm-dd hh:nn:ss', PeriodEnd);

    {$IFNDEF WIN32} asm {
      pas.Unit1.Form1.PeriodArray.push({
        "id":Period,
        "long_name": PeriodLong,
        "short_name": PeriodShort,
        "start_period" : PeriodStartValue,
        "end_period": PeriodEndValue,
        "start_period_display": PeriodStartDisplay,
        "end_period_display": PeriodEndDisplay,
        "adjustment": PeriodAdjustment,
        "group": "local"
      });
    } end; {$ENDIF}
  end;

begin
  // These are generated and added to the period table so we don't have
  // to do as much work to track them down later when trying to find a match

  // This is what we're populating - a JSON array
  PeriodArray := nil;
  {$IFNDEF WIN32} asm {
    this.PeriodArray = [];
  } end; {$ENDIF}


  // Make a note of when these were last updated
  LogAction('Generating Periods (Last Generated: '+IntToStr(MinutesBetween(now, PeriodsGenerated))+'min ago)');
  PeriodsGenerated := Now;


  // Day Periods

  // Today
  Period := 11;
  DecodeDate(Now, aYear, aMonth, aDay);
  PeriodShort := 'Today';
  PeriodLong := 'Today';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(aYear, aMonth, aDay, 23, 59, 59, 999);
  PeriodAdjustment := 'day';
  AddPeriod;

  // Yesterday
  Period := 12;
  DecodeDate(Now - 1, aYear, aMonth, aDay);
  PeriodShort := FormatDateTime('ddd', Now - 1);
  PeriodLong := FormatDateTime('dddd', Now - 1);
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(aYear, aMonth, aDay, 23, 59, 59, 999);
  btnPeriodD2.Caption := '<div>'+PeriodShort+'</div>';
  PeriodAdjustment := 'day';
  AddPeriod;

  // Previous Day
  Period := 13;
  DecodeDate(Now - 2, aYear, aMonth, aDay);
  PeriodShort := FormatDateTime('ddd', Now - 2);
  PeriodLong := FormatDateTime('dddd', Now - 2);
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(aYear, aMonth, aDay, 23, 59, 59, 999);
  btnPeriodD3.Caption := '<div>'+PeriodShort+'</div>';
  PeriodAdjustment := 'day';
  AddPeriod;

  // Last Dtd
  Period := 14;
  DecodeDate(Now - 1, aYear, aMonth, aday);
  DecodeTime(Now, bHour, bMinute, bSecond, bMillisecond);
  PeriodShort := 'Last DTD';
  PeriodLong := 'Last DTD';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(aYear, aMonth, aDay, bHour, bMinute, bSecond, bMillisecond);
  PeriodAdjustment := 'day';
  AddPeriod;

  // Past 1d
  Period := 15;
  DecodeDate(Now - 1, aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 1d';
  PeriodLong := 'Past Day';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'day-start';
  AddPeriod;

  // Past 2d
  Period := 16;
  DecodeDate(Now - 2, aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 2d';
  PeriodLong := 'Past 2 Days';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'day-start';
  AddPeriod;

  // Past 3d
  Period := 17;
  DecodeDate(Now - 3, aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 3d';
  PeriodLong := 'Past 3 Days';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'day-start';
  AddPeriod;

  // Last 2wks Sun-Sat
  Period := 18;
  DecodeDate(Now - DayofWeek(Now) - 13, aYear, aMonth, aDay);
  DecodeDate(Now - DayofWeek(Now), bYear, bMonth, bDay);
  PeriodShort := 'Last 2w';
  PeriodLong := 'Last 2 Weeks';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := '2week';
  AddPeriod;



  // Week Periods

  // This Week
  Period := 21;
  DecodeDate(Now - DayofWeek(Now) + 1, aYear, aMonth, aDay);
  DecodeDate(Now - DayofWeek(Now) + 7, bYear, bMonth, bDay);
  PeriodShort := 'This Wk';
  PeriodLong := 'This Week';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'week';
  AddPeriod;

  // Last Week
  Period := 22;
  DecodeDate(Now - DayofWeek(Now) - 6, aYear, aMonth, aDay);
  DecodeDate(Now - DayofWeek(Now), bYear, bMonth, bDay);
  PeriodShort := 'Last Wk';
  PeriodLong := 'Last Week';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'week';
  AddPeriod;

  // Previous Week
  Period := 23;
  DecodeDate(Now - DayofWeek(Now) - 13, aYear, aMonth, aDay);
  DecodeDate(Now - DayofWeek(Now) - 7, bYear, bMonth, bDay);
  PeriodShort := 'Prev Wk';
  PeriodLong := 'Previous Week';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'week';
  AddPeriod;

  // Last Wtd
  Period := 24;
  DecodeDate(Now - DayofWeek(Now) - 6, aYear, aMonth, aDay);
  DecodeDate(Now - 7, bYear, bMonth, bDay);
  PeriodShort := 'Last WTD';
  PeriodLong := 'Last WTD';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'week';
  AddPeriod;

  // Past 1w
  Period := 25;
  DecodeDate(Now - 7, aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 1w';
  PeriodLong := 'Past Week';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'week-start';
  AddPeriod;

  // Past 2w
  Period := 26;
  DecodeDate(Now - 14, aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 2w';
  PeriodLong := 'Past 2 Weeks';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'week-start';
  AddPeriod;

  // Past 3w
  Period := 27;
  DecodeDate(Now - 21, aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 3w';
  PeriodLong := 'Past 3 Weeks';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'week-start';
  AddPeriod;

  // Previous 2wks Sun-Sat
  Period := 28;
  DecodeDate(Now - DayofWeek(Now) - 27, aYear, aMonth, aDay);
  DecodeDate(Now - DayofWeek(Now) - 14, bYear, bMonth, bDay);
  PeriodShort := 'Prev 2w';
  PeriodLong := 'Previous 2 Weeks';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := '2week';
  AddPeriod;


  // Month Periods

  // This Month
  Period := 31;
  DecodeDate(Now, aYear, aMonth, aDay);
  PeriodShort := FormatDateTime('mmm',Now);
  PeriodLong := 'This Month';
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  DecodeDate(IncMonth(PeriodStart,1) - 1, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'fullmonth';
  AddPeriod;

  // Last Month
  Period := 32;
  DecodeDate(IncMonth(Now,-1), aYear, aMonth, aDay);
  PeriodShort := FormatDateTime('mmm',IncMonth(Now,-1));
  PeriodLong := FormatDateTime('mmmm',IncMonth(Now,-1));
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  DecodeDate(IncMonth(PeriodStart,1) -1, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  btnPeriodM2.Caption := '<div>'+PeriodShort+'</div>';
  PeriodAdjustment := 'fullmonth';
  AddPeriod;

  // Prev Month
  Period := 33;
  DecodeDate(IncMonth(Now,-2), aYear, aMonth, aDay);
  PeriodShort := FormatDateTime('mmm',IncMonth(Now,-2));
  PeriodLong := FormatDateTime('mmmm',IncMonth(Now,-2));
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  DecodeDate(IncMonth(PeriodStart,1) -1, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  btnPeriodM3.Caption := '<div>'+PeriodShort+'</div>';
  PeriodAdjustment := 'fullmonth';
  AddPeriod;

  // Last Mtd
  Period := 34;
  DecodeDate(IncMonth(Now,-1), aYear, aMonth, aDay);
  PeriodShort := 'Last MTD';
  PeriodLong := 'Last MTD';
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(aYear, aMonth, aDay, 23, 59, 59, 999);
  PeriodAdjustment := 'month';
  AddPeriod;

  // Past 1 Month
  Period := 35;
  DecodeDate(IncMonth(Now, -1), aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 1mo';
  PeriodLong := 'Past Month';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'month-start';
  AddPeriod;

  // Past 2 Month
  Period := 36;
  DecodeDate(IncMonth(Now, -2), aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 2mo';
  PeriodLong := 'Past 2 Months';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'month-start';
  AddPeriod;

  // Past 3 Month
  Period := 37;
  DecodeDate(IncMonth(Now, -3), aYear, aMonth, aDay);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodShort := 'Past 3mo';
  PeriodLong := 'Past 3 Months';
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'month-start';
  AddPeriod;

  // This Custom Period
  Period := 38;
  PeriodAdjustment := 'period';
  PeriodStartDisplay := '';
  PeriodEndDisplay := '';
  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1;
    var found = 0;
    if (This.Periods.length > 0) {
      for (var i = 0; i < This.Periods.length; i++) {
        if (This.Periods[i]['adjustment'] == 'period') {
          found += 1;
        }
        if (found == 1) {
          PeriodShort = This.Periods[i]['name_short'];
          PeriodLong = This.Periods[i]['name_long'];
          PeriodStartDisplay = this.Periods[i]['period_start'];
          PeriodEndDisplay = this.Periods[i]['period_end'];
        }
      }
    }
  } end; {$ENDIF}
  if (PeriodStartDisplay <> '') then
  begin
    PeriodStart := StrToDateTime(PeriodStartDisplay);
    PeriodEnd := StrToDateTime(PeriodEndDisplay);
  end;
  btnPeriodM8.Caption := '<div>'+PeriodShort+'</div>';
  AddPeriod;


  // Quarter Periods

  // This Quarter
  Period := 41;
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) +1), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  DecodeDate(IncMonth(PeriodStart,3) - 1, bYear, bMonth, bDay);
  PeriodShort := 'This Q';
  PeriodLong := 'This Quarter';
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'fullquarter';
  AddPeriod;

  // Last Quarter
  Period := 42;
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) -2), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  DecodeDate(IncMonth(PeriodStart,3) - 1, bYear, bMonth, bDay);
  PeriodShort := 'Last Q';
  PeriodLong := 'Last Quarter';
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'fullquarter';
  AddPeriod;

  // This Quarter
  Period := 43;
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) -5), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  DecodeDate(IncMonth(PeriodStart,3) - 1, bYear, bMonth, bDay);
  PeriodShort := 'Prev Q';
  PeriodLong := 'Previous Quarter';
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodAdjustment := 'fullquarter';
  AddPeriod;

  // Last Quarter-to-date
  Period := 44;
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) -2), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, 1, 0, 0, 0, 0);
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) +1), bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, 1, 0, 0, 0, 0);
  DecodeDate(PeriodStart + (Trunc(Now) - PeriodEnd), bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Last QTD';
  PeriodLong := 'Last QTD';
  PeriodAdjustment := 'quarter';
  AddPeriod;

  // Past 1Q
  Period := 45;
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) -2), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Past 1Q';
  PeriodLong := 'Past Quarter';
  PeriodAdjustment := 'quarter-start';
  AddPeriod;

  // Past 2Q
  Period := 46;
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) -5), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Past 2Q';
  PeriodLong := 'Past 2 Quarters';
  PeriodAdjustment := 'quarter-start';
  AddPeriod;

  // Past 3Q
  Period := 47;
  DecodeDate(IncMonth(Now,-(MonthOfTheYear(Now) mod 3) -8), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Past 3Q';
  PeriodLong := 'Past 3 Quarters';
  PeriodAdjustment := 'quarter-start';
  AddPeriod;

  // Last CP
  Period := 48;
  PeriodAdjustment := 'period';
  PeriodStartDisplay := '';
  PeriodEndDisplay := '';
  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1;
    var found = 0;
    if (This.Periods.length > 0) {
      for (var i = 0; i < This.Periods.length; i++) {
        if (This.Periods[i]['adjustment'] == 'period') {
          found += 1;
        }
        if (found == 2) {
          PeriodShort = This.Periods[i]['name_short'];
          PeriodLong = This.Periods[i]['name_long'];
          PeriodStartDisplay = this.Periods[i]['period_start'];
          PeriodEndDisplay = this.Periods[i]['period_end'];
        }
      }
    }
  } end; {$ENDIF}
  if (PeriodStartDisplay <> '') then
  begin
    PeriodStart := StrToDateTime(PeriodStartDisplay);
    PeriodEnd := StrToDateTime(PeriodEndDisplay);
  end;
  btnPeriodQ8.Caption := '<div>'+PeriodShort+'</div>';
  AddPeriod;

  // Year Periods

  // This Year
  Period := 51;
  DecodeDate(Now, aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, 1, 1, 0, 0, 0, 0);
  DecodeDate(IncYear(PeriodStart,1) -1, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'This Yr';
  PeriodLong := 'This Year';
  PeriodAdjustment := 'fullyear';
  AddPeriod;

  // Last Year
  Period := 52;
  DecodeDate(IncYear(Now,-1), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, 1, 1, 0, 0, 0, 0);
  DecodeDate(IncYear(PeriodStart,1) -1, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := FormatDateTime('yyyy',PeriodStart);
  PeriodLong := FormatDateTime('yyyy',PeriodStart);
  btnPeriodY2.Caption := '<div>'+PeriodShort+'</div>';
  PeriodAdjustment := 'fullyear';
  AddPeriod;

  // Previous Year
  Period := 53;
  DecodeDate(IncYear(Now,-2), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, 1, 1, 0, 0, 0, 0);
  DecodeDate(IncYear(PeriodStart,1) -1, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := FormatDateTime('yyyy',PeriodStart);
  PeriodLong := FormatDateTime('yyyy',PeriodStart);
  btnPeriodY3.Caption := '<div>'+PeriodShort+'</div>';
  PeriodAdjustment := 'fullyear';
  AddPeriod;

  // Last Year-to-date
  Period := 54;
  DecodeDate(IncYear(Now,-1), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, 1, 1, 0, 0, 0, 0);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, 1, 1, 0, 0, 0, 0);
  DecodeDate(PeriodStart + (Trunc(Now) - PeriodEnd), bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Last YTD';
  PeriodLong := 'Last YTD';
  PeriodAdjustment := 'year';
  AddPeriod;

  // Past Year
  Period := 55;
  DecodeDate(IncYear(Now,-1), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, aDay, 0, 0, 0, 0);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Past 1y';
  PeriodLong := 'Past Year';
  PeriodAdjustment := 'year-start';
  AddPeriod;

  // Past 2 Years
  Period := 56;
  DecodeDate(IncYear(Now,-2), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, ADay, 0, 0, 0, 0);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Past 2y';
  PeriodLong := 'Past 2 Years';
  PeriodAdjustment := 'year-start';
  AddPeriod;

  // Past 3 Years
  Period := 57;
  DecodeDate(IncYear(Now,-3), aYear, aMonth, aDay);
  PeriodStart := EncodeDateTime(aYear, aMonth, ADay, 0, 0, 0, 0);
  DecodeDate(Now, bYear, bMonth, bDay);
  PeriodEnd := EncodeDateTime(bYear, bMonth, bDay, 23, 59, 59, 999);
  PeriodShort := 'Past 3y';
  PeriodLong := 'Past 3 Years';
  PeriodAdjustment := 'year-start';
  AddPeriod;

  // Previous CP
  Period := 58;
  PeriodAdjustment := 'period';
  PeriodStartDisplay := '';
  PeriodEndDisplay := '';
  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1;
    var found = 0;
    if (This.Periods.length > 0) {
      for (var i = 0; i < This.Periods.length; i++) {
        if (This.Periods[i]['adjustment'] == 'period') {
          found += 1;
        }
        if (found == 3) {
          PeriodShort = This.Periods[i]['name_short'];
          PeriodLong = This.Periods[i]['name_long'];
          PeriodStartDisplay = this.Periods[i]['period_start'];
          PeriodEndDisplay = this.Periods[i]['period_end'];
        }
      }
    }
  } end; {$ENDIF}
  if (PeriodStartDisplay <> '') then
  begin
    PeriodStart := StrToDateTime(PeriodStartDisplay);
    PeriodEnd := StrToDateTime(PeriodEndDisplay);
  end;
  btnPeriodY8.Caption := '<div>'+PeriodShort+'</div>';
  AddPeriod;

  PreventcompilerHint(Period);
  PreventCompilerHint(PeriodShort);
  PreventCompilerHint(PeriodLong);
  PreventCompilerHint(PeriodStartValue);
  PreventCompilerHint(PeriodStartDisplay);
  PreventCompilerHint(PeriodEndValue);
  PreventCompilerHint(PeriodEndDisplay);
  PreventcompilerHint(PeriodAdjustment);
end;

function TForm1.GetFavIcon(FavURL: String): String;
var
  Domain: String;
  ImageLink: String;

begin
  if Pos('mailto:', FavURL) > 0 then
  begin
    ImageLink := '<i class="fa-duotone fa-envelope mt-1 Swap fa-xl"></i>';
    Domain := 'E-Mail';
  end
  else if pos('http', FavURL) = 0 then
  begin
    ImageLink := '<i class="fa-duotone fa-sheep mt-1 fa-xl"></i>';
    Domain := 'Invalid URL';
  end
  else
  begin
    {$IFNDEF WIN32} asm {
      try {
        Domain = (new URL(FavURL).hostname.replace('www.',''));
      } catch {
        Domain = 'Missing';
      }
    } end; {$ENDIF}

    if Domain = 'Missing' then
    begin
      ImageLink := '<i class="fa-duotone fa-globe mt-1 fa-xl"></i>';
      Domain := 'FavIcon Missing';
    end
    else if Domain = 'blaugment.com' then
    begin
      ImageLink := '<img style="object-fit:contain; border-radius: 4px; width:100%;" src="icons/favicon-256x256.png">';
      Domain := 'blaugment.com';
    end
    else
    begin
      ImageLink := '<img style="object-fit:contain; border-radius: 4px; width:100%;" src="https://www.google.com/s2/favicons?domain='+Domain+'&sz=180">';
    end;
  end;

  Result := '<div title="'+Domain+'" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-trigger="hover" data-bs-custom-class="BLTooltip" style="border-radius: 8px; width: 28px;">'+
              '<a target="_blank" style="text-decoration: none;" href="'+FavURL+'">'+
                 '<div class="DropShadow">'+
                   ImageLink+
                 '</div>'+
              '</a>'+
            '</div>';

end;

procedure TForm1.PhotoChanged;
begin
  if btnPhotoCancel.Tag <> 1 then
  begin
    btnPhotoSave.Enabled := True;
    btnPhotoCancel.Enabled := True;
  end;
end;

procedure TForm1.PhotoNotChanged;
begin
  btnPhotoSave.Enabled := False;
  btnPhotoCancel.Enabled := False;
end;

procedure TForm1.HideToolTips;
begin
  {$IFNDEF WIN32} asm {
    setTimeout(function() {
      var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
      tooltipTriggerList.forEach( (e) => e.setAttribute('data-bs-delay', '{"show": 1000, "hide": 100}'));
      var tooltipList = tooltipTriggerList.map( function(tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl, {
          trigger : 'hover'
        });
      });
    },500);

    setTimeout(function() {
      var badtooltips = document.getElementsByClassName('bs-tooltip-auto');
      if (badtooltips.length > 0) {
        for (var i = 0; i < badtooltips.length; i++) {
          badtooltips[i].style.setProperty('opacity','0');
          var x = badtooltips[i];
          setTimeout(function() {
            x.remove()
          }, 500);
        }
      }
    },1250);
  } end; {$ENDIF}
end;

procedure TForm1.btnActivityLogEMailClick(Sender: TObject);
var
  RequestResponse: String;
  MailSubject: String;
  MailBody: TStringList;
  MailFont: TStringList;
  MailIcon: TStringList;

begin
  // Change Account Name
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
  divChangeAccountName.ElementHandle.classList.Add('pe-none');
  LogAction('[ E-Mail Activity Log ]');

  MailFont := TStringList.Create;
  MailFont.LoadFromFile('fonts/cairo.woff.base64');
  MailIcon := TStringList.Create;
  MailIcon.LoadFromFile('icons/favicon-512x512.png.base64');

  MailSubject := '['+Form1.App_Short+'/'+Form1.User_Account+'] Acitivity Log for '+btnSelectActivityLog.Caption;

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
    MailBody.Add('<p style="font-family: Cairo, Verdana; font-size: 16px; line-height: 1.2;">A request was just made by '+Form1.User_Account+' at <a href="'+FOrm1.App_URLLink+'">'+Form1.App_Short+'</a> for this activity log.</p>');

    MailBody.Add(divActionLog.ElementHandle.innerHTML);

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

  RequestResponse := await(StringRequest('ISystemService.SendEMail',[
    MailSubject,
    MailBody.Text,
    'ActionLog'
  ]));

  if RequestResponse = 'Sent' then
  begin
    LogAction('<< Activity Log E-Mail Sent >>');
    LogAction(' ');
  end
  else
  begin
    LogAction('Activity Log E-Mail Failed:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnActivityLogPrintClick(Sender: TObject);
var
  PageHeader: String;

begin
  PageHeader := '[ '+App_Name+' '+App_Version+' ][ '+User_Account+' ] Activity Log for ';
  PageHeader := PageHeader + btnSelectActivityLog.Caption;
  LogAction('[ Activity Log Printed: '+btnSelectActivityLog.Caption+' ]');

  {$IFNDEF WIN32} asm {
    printJS({
      printable: 'divActionLog',
      type: 'html',
      header: PageHeader,
      headerStyle: 'font-size: 14px; font-weight: bold; font-family: sans-serif;'
    });
  } end; {$ENDIF}
end;

procedure TForm1.UpdateAccountLinks;
begin
  {$IFNDEF WIN32} asm {
    this.tabAccountOptions.getRow(3).getCell('Entries').setValue(this.tabAccountLinks.getDataCount().toLocaleString());
    divAuthorProfileLinks.innerHTML = '';
    for (var i = 1; i <= this.tabAccountLinks.getDataCount(); i++) {
      var row = this.tabAccountLinks.getRowFromPosition(i);
      var image = pas.Unit1.Form1.GetFavIcon(row.getCell('Link').getValue());
      divAuthorProfileLinks.innerHTML += image;
    }

    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    tooltipTriggerList.forEach( (e) => e.setAttribute('data-bs-delay', '{"show": 1000, "hide": 100}'));
    var tooltipList = tooltipTriggerList.map( function(tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl, {
        trigger : 'hover',
        container: 'body'
      });
    });

    // Also update navigator buttons
    var This = pas.Unit1.Form1;
    var tab = This.tabAccountLinks;
    var rowcount = tab.getDataCount();

    if (JSON.stringify(tab.getData()) != JSON.stringify(This.LinksDataBackup)) {
      btnLinkSave.removeAttribute('disabled');
      btnLinkCancel.removeAttribute('disabled');
    } else {
      btnLinkSave.setAttribute('disabled','');
      btnLinkCancel.setAttribute('disabled','');
    }

    if (rowcount == 0) {
      btnLinkEdit.setAttribute('disabled','');
      btnLinkDelete.setAttribute('disabled','');
    } else {
      btnLinkEdit.removeAttribute('disabled');
      btnLinkDelete.removeAttribute('disabled');
      if (tab.getSelectedRows().length == 0) {
        tab.selectRow(tab.getRowFromPosition(1));
      }
    }
  } end; {$ENDIF}

end;

procedure TForm1.WebFormCreate(Sender: TObject);
var
  i: Int64;
  ConfigResponse: TJSXMLHttpRequest;
  ConfigData: TJSONObject;
  ConfigURL: String;
  ResponseString: String;
begin
  // This is used to ensure that StrToDateTime works
  FormatSettings.ShortDateFormat := 'yyyy-mm-dd';
  FormatSettings.LongTimeFormat := 'hh:nn:ss';

  // Default Theme
  Theme := TWebLocalStorage.GetValue('Theme');
  if (Theme <> 'Dark'  ) and
     (Theme <> 'Light' ) and
     (Theme <> 'Red'   ) then Theme := 'Dark';
  TWebLocalStorage.SetValue('Theme',Theme);

  if      Theme = 'Dark'  then btnThemeDark.ElementHandle.style.setProperty('opacity','1')
  else if Theme = 'Light' then btnThemeLight.ElementHandle.style.setProperty('opacity','1')
  else if Theme = 'Red'   then btnThemeRed.ElementHandle.style.setProperty('opacity','1');

  document.documentElement.setAttribute('theme', Theme);
  BootstrapTT := ' data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-trigger="hover" data-bs-custom-class="BLTooltip">';

  editSearch.ElementHandle.setAttribute('size','1');


  // Global setting for whether menus are normal or collapsed
  MenusCollapsed := False;
  if TWebLocalStorage.getValue('MenusCollapsed') = 'True'
  then MenusCollapsed := True;


  // If Font Awesome Pro is not available, switch to the free version
  // btnTheme.Caption := StringReplace(btnTheme.Caption,'fa-duotone','fa-solid',[]);

  // Application Information
  App_Name := 'blaugment';
  App_Short := 'Blaugment';
  App_URL := 'www.blaugment.com';
  App_URLLink := 'https://www.blaugment.com';
  App_Version := '1.0.1';
  App_Release := '2023-Jul-12';
  App_APIKey := '{2DF239F0-8A9D-4531-9BC2-AB911CB40C4E}';
  App_Start := Now();
  App_Start_UTC := TTimeZone.Local.ToUniversalTime(Now);
  PeriodsGenerated := Now;

  // MainForm Options
  Caption := App_Name;
  IconSetsLoaded := False;

  // Overide some locale options?
  FormatSettings.TimeSeparator := ':';
  FormatSettings.DateSeparator := '-';
  {$IFNDEF WIN32} asm {
    this.App_TZ = Intl.DateTimeFormat().resolvedOptions().timeZone;
    this.App_TZOffset = new Date().getTimezoneOffset();
  } end; {$ENDIF}

  // These are intended for use with Delphi's FormatDateTime
  App_LogDateTimeFormat := 'yyyy-MM-dd HH:nn:ss.zzz';
  App_DisplayDateTimeFormat := 'yyyy-MMM-dd HH:nn:ss';
  App_LogDateFormat := 'yyyy-MM-dd';
  App_DisplayDateFormat := 'yyyy-MMM-dd';
  App_LogTimeFormat := 'HH:nn:ss.zzz';
  App_DisplayTimeFormat := 'HH:nn:ss';

  // These are intended for use with Luxon's toFormat
  {$IFNDEF WIN32} asm {
    window.LogDateTimeFormat = this.App_LogDateTimeFormat.replace('nn','mm');
    window.DisplayDateTimeFormat = this.App_DisplayDateTimeFormat.replace('nn','mm');
    window.LogDateFormat = this.App_LogDateFormat.replace('nn','mm');
    window.DisplayDateFormat = this.App_DisplayDateFormat.replace('nn','mm');
    window.LogTimeFormat = this.App_LogTimeFormat.replace('nn','mm');
    window.DisplayTimeFormat = this.App_DisplayTimeFormat.replace('nn','mm');
  } end; {$ENDIF}

  // JWT Handling
  JWT := '';
  JWT_Expiry := App_Start_UTC;

  // User Information
  LoggedIn := False;
  User_Profile := '{}';
  User_Profile_Age := Now - 1;
  User_FirstName := '';
  User_MiddleName :=  '';
  User_LastName := '';
  User_Name := '';
  User_EMail := '';
  User_Account := '';
  User_id := 0;
  User_Roles := TStringList.Create;

  // Page Control defaults
  pcAccount.TabIndex := 0;
  pcAccount.Visible := True;

  // Create an App Session key - just a custom Base48-encoded timestamp
  // https://github.com/marko-36/base29-shortener
  App_Session := '';
  i := DateTimeToUnix(App_Start_UTC)*1000+MillisecondOf(App_Start_UTC);

  {$IFNDEF WIN32} asm {
    // Encode Integer (eg: Unix Timestamp) into String
    const c = ['B','b','C','c','D','d','F','f','G','g','H','h','J','j','K','k','L','M','m','N','n','P','p','Q','q','R','r','S','s','T','t','V','W','w','X','x','Z','z','0','1','2','3','4','5','6','7','8','9'];
    var sLen = Math.floor(Math.log(i)/Math.log(c.length)) +1;
    for(var ex=sLen-1; ex>-1; --ex){
      this.App_Session += c[Math.floor(i / Math.pow(c.length,ex))];
      i = [i % Math.pow(c.length,ex)];
    }

    // Decode String into Integer
    // var s = this.App_Session;
    // i = 0;
    // for (var ex=0; ex<s.length; ++ex){
    //   i += c.indexOf(s.substring(ex,ex+1)) * Math.pow(c.length,s.length-1-ex);
    // }
    // return i
  } end; {$ENDIF}

  // Get some client information
  App_IPAddress := 'Not Defined';
  App_Location := 'Not Defined';
  App_Device := 'Not Defined';
  App_Browser := 'Not Defined';
  {$IFNDEF WIN32} asm {
    var ipdata = await fetch('https://ipapi.co/json/').then(function(response) {return response.json()});
    var uap = new UAParser().getResult();
    var browser = [];
    var locn = [];

    browser.push(uap.browser.name);
    browser.push(uap.browser.version);
    browser.push(uap.os.name);
    browser.push(uap.os.version);

    this.App_Country = ipdata['country_name'];
    this.App_Region = ipdata['region']
    this.App_City = ipdata['city']

    locn.push(ipdata['country']);
    locn.push(ipdata['country_name']);
    locn.push(ipdata['region']);
    locn.push(ipdata['city']);
    locn.push(ipdata['latitude']);
    locn.push(ipdata['longitude']);
    locn.push(window.navigator.language);

    this.App_IPAddress = ipdata['ip'];
    this.App_Location = JSON.stringify(locn);
    this.App_Device = JSON.stringify(uap.device);
    this.App_Browser = JSON.stringify(browser);
  } end; {$ENDIF}

  // Log what we're doing in the application
  ActionLog := TStringList.Create;
  ActionLog.Delimiter := chr(10);
  ActionLogCurrent := TStringList.Create;
  ActionLogCurrent.Delimiter := chr(10);
  LogAction('=====================================================================');

  // Application Details
  LogAction('Application Startup');
  LogAction(' -- '+App_Name);
  LogAction(' -- Version '+App_Version);
  LogAction(' -- Release '+App_Release);
  LogAction(' -- App Started: '+FormatDateTime(App_LogDateTimeFormat, App_Start)+' '+App_TZ);
  LogAction(' -- App Started: '+FormatDateTime(App_LogDateTimeFormat, App_Start_UTC)+' UTC');
  LogAction(' -- App Session: '+App_Session);
  LogAction(' -- App Theme: '+Theme);
  LogAction(' -- App IP Address: '+App_IPAddress);
  LogAction(' -- App Location');

  {$IFNDEF WIN32} asm {
    var locn = JSON.parse(this.App_Location);
    this.LogAction(' ----- Country Code: '+locn[0]);
    this.LogAction(' ----- Country: '+locn[1]);
    this.LogAction(' ----- Region: '+locn[2]);
    this.LogAction(' ----- City: '+locn[3]);
    this.LogAction(' ----- Latitude: '+locn[4]);
    this.LogAction(' ----- Longitude: '+locn[5]);
    this.LogAction(' ----- Language: '+locn[6]);
  } end; {$ENDIF}

  LogAction(' -- App Device');

  {$IFNDEF WIN32} asm {
    try {
      var dvc = JSON.parse(this.App_Device);
    } catch {
      var dvc = {model:"undefined", type:"undefined", vendor:"undefined"}
    }
    this.LogAction(' ----- Model: '+dvc.model);
    this.LogAction(' ----- Type: '+dvc.type);
    this.LogAction(' ----- Vendor: '+dvc.vendor);
  } end; {$ENDIF}

  LogAction(' -- App Browser');

  {$IFNDEF WIN32} asm {
    try {
      var brw = JSON.parse(this.App_Browser);
    } catch {
      var brw = ['undefined', 'undefined', 'undefined', 'undefined'];
    }
    this.LogAction(' ----- Browser: '+brw[0]);
    this.LogAction(' ----- Version: '+brw[1]);
    this.LogAction(' ----- OS: '+brw[2]);
    this.LogAction(' ----- Version: '+brw[3]);
    this.App_Browser_Short = brw[0];
    this.App_OS_Short = brw[2];
  } end; {$ENDIF}

  LogAction('======================================================================');
  LogAction(' ');

  // Figure out what our server connection might be
  Server_URL := '';

  try
    {$IFNDEF WIN32} asm {
      ConfigURL = window.location.origin+(window.location.pathname.split('/').slice(0,-1).join('/')+'/blaugment_configuration.json').replace('/\/\//g','/');
    } end; {$ENDIF}

    LogAction('Loading Configuration');
    LogAction(' -- '+ConfigURL);
    WebHTTPRequest1.URL := ConfigURL;
    ConfigResponse := await( TJSXMLHttpRequest, WebHTTPRequest1.Perform() );
    if String(COnfigResponse.Response) <> '' then
    begin
      LogAction(' -- Configuration Loaded');
      ConfigData := TJSONObject.ParseJSONValue(String(ConfigResponse.Response)) as TJSONObject;

      // Get Server URL - Presumably if we've got a config file, this is defined
      Server_URL := (ConfigData.GetValue('Server') as TJSONString).Value;
      LogAction('Server (Configured)');
      LogAction(' -- '+Server_URL);

    end;
  except on E: Exception do
    begin
    end
  end;

  if (Server_URL = '') then
  begin
    Server_URL := 'http://localhost:44444/tms/xdata';
    LogAction(' -- Configuration Missing');
    LogAction('Server (Default)');
    LogAction(' -- '+Server_URL);
  end;

  // Connect to XData
  LogAction(' ');
  LogAction('Attempting Connection');
  await(XDataConnect);
  LogAction(' ');
  await(LoadIconSets);

  // Load up Basic info from the server
  ResponseString := await(JSONRequest('ISystemService.Info',[App_TZ]));
  {$IFNDEF WIN32} asm {
    var data = JSON.parse(ResponseString);

    this.Roles = data['Roles'];
    this.Periods = data['Periods'];

    if (this.Roles == undefined) { this.Roles = [] }
    if (this.Periods == undefined) { this.Periods = [] }

    var rolecategories = this.Roles.reduce( (cat, o) => (cat[o.category] = (cat[o.category] || 0)+1, cat), {});
    var periodcategories = this.Periods.reduce( (cat, o) => (cat[o.category] = (cat[o.category] || 0)+1, cat), {});

    if (rolecategories == undefined) { rolecategories = {} };
    if (periodcategories == undefined) { periodcategories = {} };

    // Generate Periods
    this.LogAction(' ');
    this.GeneratePeriods();

    this.LogAction(' ')
    this.LogAction('======================================================================');
    this.LogAction(' -- Server Name: '+data['Application Name']);
    this.LogAction(' -- Server Version: '+data['Application Version']);
    this.LogAction(' -- Server Release: '+data['Application Release']);
    this.LogAction(' -- Server Release(UTC): '+data['Application Release (UTC)']);
    this.LogAction(' -- ');
    this.LogAction(' -- Available Roles: '+Object.keys(rolecategories).length.toLocaleString()+' categories, '+this.Roles.length.toLocaleString()+' roles');
    this.LogAction(' -- Available Periods: '+Object.keys(periodcategories).length.toLocaleString()+' categories, '+this.Periods.length.toLocaleString()+' periods ('+this.PeriodArray.length.toLocaleString()+' local)');
    this.LogAction(' -- Available Icon Sets: '+this.IconSetList.length.toLocaleString()+' sets, '+this.IconResults.toLocaleString()+' icons');
    this.LogAction('======================================================================');
    this.LogAction(' ')
  } end; {$ENDIF}



  // Configure bootstrap Tooltips - All <button> elements with a Hint assigned
  AddBootstrapTooltips;



  // JavaScript Sleep Function
  {$IFNDEF WIN32} asm {
    window.sleep = async function(msecs) {
      return new Promise((resolve) => setTimeout(resolve, msecs));
    }
  } end; {$ENDIF}



  // Make the page visibile
  {$IFNDEF WIN32} asm {
    document.body.style.setProperty('opacity','1');
  } end; {$ENDIF}



  // Tabulator Defaults
  {$IFNDEF WIN32} asm {
    Tabulator.defaultOptions.layout = "fitColumns";
    Tabulator.defaultOptions.selectable = 1;
    Tabulator.defaultOptions.columnHeaderSortMulti = true,
    Tabulator.defaultOptions.clipboard = "copy";
    Tabulator.defaultOptions.groupToggleElement = "header",
    Tabulator.defaultOptions.headerSortElement = function(column, dir) {
      switch(dir){
        case "asc":  return "<i class='fa-duotone fa-sort-up DropShadow'>";
                     break;
        case "desc": return "<i class='fa-duotone fa-sort-down DropShadow'>";
                     break;
        default:     return "<i class='fa-duotone fa-sort DropShadow'>";
      }
    },
    Tabulator.defaultOptions.columnDefaults = {
      headerHozAlign: "left",
      hozAlign: "left",
      headerSortStartingDir:"desc",
      headerSortTristate:true
    };
  } end; {$ENDIF}



  // Account Options
  {$IFNDEF WIN32} asm {
    var dataAO = [
      { ID:  0, Name: "Contact Info",    Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-cat Swap'></i>"           },
      { ID:  1, Name: "Set Password",    Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-shield-keyhole'></i>"     },
      { ID:  2, Name: "Photo / Avatar",  Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-camera Swap'></i>"        },
      { ID:  3, Name: "Author Profile",  Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-address-card'></i>"       },
      { ID:  4, Name: "Categories",      Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-sitemap Swap'></i>"       },
      { ID:  5, Name: "Favorites",       Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-star'></i>"               },
      { ID:  6, Name: "Notifications",   Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-bell'></i>"               },
      { ID:  7, Name: "Roles",           Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-chess-knight Swap'></i>"  },
      { ID:  8, Name: "Sessions",        Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-scroll'></i>"             },
      { ID:  9, Name: "Logins",          Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-clock'></i>"              },
      { ID: 10, Name: "Campaigns",       Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-chart-mixed'></i>"        },
      { ID: 11, Name: "Donate",          Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-gift'></i>"               },
      { ID: 12, Name: "Logout",          Entries: 0, Icon: "<i class='fa-duotone fa-fw fa-xl fa-person-from-portal'></i>" }
    ];

    this.tabAccountOptions = new Tabulator("#divAccountOptions", {
      data: dataAO,
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
    this.tabAccountOptions.on('rowClick', function(e, row){
      var This = pas.Unit1.Form1;
      This.tabAccountOptions.selectRow([row]);
      This.SelectAccountOption(row.getCell('ID').getValue());
    });
    this.tabAccountOptions.on('rowDblClick', function(e, row){
      var This = pas.Unit1.Form1;
      This.tabAccountOptions.selectRow([row]);
      This.SelectAccountOption(row.getCell('ID').getValue());
      if (This.MenusCollapsed == true) {
        This.MenusCollapsed = false;
        localStorage.setItem('MenusCollapsed', 'False');
        divAccountOptions.style.setProperty('width','150px');
        pcAccount.style.setProperty('left', '152px','important');
        pcAccount.style.setProperty('width','calc(100% - 2rem - 154px)', 'important');
        divActivityLogHeader.style.setProperty('left','174px');
      }
      else {
        This.MenusCollapsed = true;
        localStorage.setItem('MenusCollapsed', 'True');
        divAccountOptions.style.setProperty('width','40px');
        pcAccount.style.setProperty('left', '42px','important');
        pcAccount.style.setProperty('width','calc(100% - 2rem - 44px)', 'important');
        divActivityLogHeader.style.setProperty('left','64px');
      }
    });
  } end; {$ENDIF}

  // Account Login History
  {$IFNDEF WIN32} asm {
    this.tabAccountHistory = new Tabulator("#divAccountHistory",{
      layout: "fitColumns",
      selectable: 1,
      rowHeight: 28,
      maxHeight: "100%",
      columns: [
        { title: "", field: "Spacer", width: 8, minWidth: 8, headerSort: false, resizable: false,
            formatter: function(cell, formatterParams, onRendered) {
              return '';
            }
        },
        { title: "Logged In", field: "logged_in", width: 145, minWidth: 145,
            formatter: function(cell, formatterParams, onRendered) {
              return luxon.DateTime.fromISO(cell.getValue().split(' ').join('T'),{zone:"utc"}).setZone("system").toFormat(window.DisplayDateTimeFormat);
            }
        },
        { title: "", field: "ip_location", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              try {
                var locndata = JSON.parse(cell.getValue());
              } catch {
                locndata = ['CA','undefined','undefined','undefined','undefined','undefined','EN'];
              }
              var clientlocation = locndata[3]+', '+locndata[2]+', '+locndata[1];
              return '<div title="'+clientlocation+'"'+pas.Unit1.Form1.BootstrapTT+'<img style="width:24px; border-radius:4px;" src="https://cdn.jsdelivr.net/npm/country-flag-icons@1.5.7/1x1/'+locndata[0]+'.svg"></div>';
            }
        },
        { title: "", field: "browser_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              try {
                var browser = JSON.parse(cell.getValue());
              } catch {
                var browser = ['undefined','undefined','undefined','undefined']
              }
              var icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-duotone fa-browser"></i>';
              var title = browser[0]+' '+browser[1];
              if (browser[0] == 'Chrome') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-chrome"></i>';
              }
              else if (browser[0] == 'Firefox') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-firefox-browser"></i>';
              }
              else if (browser[0] == 'Mobile Safari') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-safari"></i>';
              }
              else if (browser[0] == 'Safari') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-safari"></i>';
              }
              else if (browser[0] == 'Edge') {
                icon = '<i style="color: var(--bl-color-one); width:24px; height:24px;" class="fa-brands fa-edge"></i>';
              }
              return '<div title="'+title+'"'+pas.Unit1.Form1.BootstrapTT+icon+'</div>';
            }
        },
        { title: "", field: "browser_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              try {
                var browser = JSON.parse(cell.getValue());
              } catch {
                var browser = ['undefined','undefined','undefined','undefined']
              }
              var icon = '';
              var title = browser[2]+' '+browser[3];
              if (browser[2] == 'Windows') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-windows"></i>';
              }
              else if (browser[2] == 'Mac OS') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-apple"></i>';
              }
              else if (browser[2] == 'Fedora') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-fedora"></i>';
              }
              else if (browser[2] == 'Ubuntu') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-ubuntu"></i>';
              }
              else if (browser[2] == 'Redhat') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-redhat"></i>';
              }
              else if (browser[2] == 'SUSE') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-suse"></i>';
              }
              else if (browser[2] == 'CentOS') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-centos></i>';
              }
              else if (browser[2] == 'Android') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-android"></i>';
              }
              else if (browser[2] == 'Linux') {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-brands fa-linux"></i>';
              }
              else {
                icon = '<i style="color: var(--bl-color-input); width:24px; height:24px;" class="fa-duotone fa-display"></i>';
              }
              return '<div title="'+title+'"'+pas.Unit1.Form1.BootstrapTT+icon+'</div>';
            }
        },
        { title: "", field: "device_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              try {
                var device = JSON.parse(cell.getValue());
              } catch {
                var device = {model:"undefined", type:"undefined", vendor: "undefined"}
              }
              var icon = '';
              var title = device.model+' / '+device.type+' / '+device.vendor;

              if (device.type == undefined) {
                title = 'No information Available';
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-computer"></i>';
              }
              else if (device.type == 'mobile') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-mobile-button Swap"></i>';
              }
              else if (device.type == 'tablet') {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-tablet-button"></i>';
              }
              else {
                icon = '<i style="color: var(--bl-color-two); width:24px; height:24px;" class="fa-duotone fa-display Swap"></i>';
              }
              return '<div title="'+title+'"'+pas.Unit1.Form1.BootstrapTT+icon+'</div>';
            }
        },

        { title: "", field: "ip_location", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              try {
                var locndata = JSON.parse(cell.getValue());
              } catch {
                locndata = ['CA','undefined','undefined','undefined','undefined','undefined','EN'];
              }
              var clientlanguage = locndata[6];
              return '<div title="'+clientlanguage+'"'+pas.Unit1.Form1.BootstrapTT+'<img style="width:24px; border-radius:4px;" src="https://cdn.jsdelivr.net/npm/language-icons@0.3.0/icons/'+locndata[6].slice(0,2).toLowerCase()+'.svg"></div>';
            }
        },
        { title: "IP Address", field: "ip_address", width: 125, minWidth: 100 },
        { title: "Location", field: "ip_location", minWidth: 150,
            formatter: function(cell, formatterParams, onRendered) {
              try {
                var locndata = JSON.parse(cell.getValue());
              } catch {
                locndata = ['CA','undefined','undefined','undefined','undefined','undefined','EN'];
              }
              var clientlocation = locndata[3]+', '+locndata[2]+', '+locndata[1];
              return clientlocation;
            }
        }
      ]
    });
    this.tabAccountHistory.on('tableBuilt', function(){
      divAccountHistory.firstElementChild.style.setProperty('position','absolute');
      divAccountHistory.firstElementChild.style.setProperty('z-index', '10');
      divAccountHistory.firstElementChild.style.setProperty('top', '0px');
    });

    this.tabAccountHistory.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAccountHistory.selectRow([row]);
    });
  } end; {$ENDIF}

  // Account links
  {$IFNDEF WIN32} asm {
    this.tabAccountLinks = new Tabulator("#divAccountLinks", {
      index: "ID",
      layout: "fitColumns",
      selectable: 1,
      rowHeight: 36,
      movableRows: true,
      columnDefaults:{
        resizable: false,
        headerSort: false
      },
      columns: [
        { title: "ID", field: "ID", visible: false },
        { title: "", field: "Sort", width: 30, minWidth:30, formatter: "handle", sorter: "number" },
        { title: "", field: "LinkIcon", hozAlign: "center", formatter: "html", width: 40,
            formatter: function(cell, formatterParams, onRendered) {
              return pas.Unit1.Form1.GetFavIcon(cell.getRow().getCell('Link').getValue());
            }
        },
        { title: "", field: "Link", cssClass: "Links" }
      ]
    });
    this.tabAccountLinks.on('tableBuilt', function() {
      var el = document.getElementsByClassName('Links')[0];
      el.firstElementChild.firstElementChild.firstElementChild.innerHTML = '';
      el.firstElementChild.style.setProperty('padding-top','0px');
      el.firstElementChild.firstElementChild.firstElementChild.appendChild(divAccountLinksNav);
    });
    this.tabAccountLinks.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAccountLinks.selectRow([row]);
    });
    this.tabAccountLinks.on('rowMoved', function(row){
      var This = pas.Unit1.Form1;
      var tab = This.tabAccountLinks;
      for (var i = 1; i <= tab.getDataCount(); i++) {
        tab.getRowFromPosition(i).getCell('Sort').setValue(i);
      }
      This.UpdateAccountLinks();
      This.LogAction('[ Reordered Account Links ]');
    });
    this.tabAccountLinks.on('cellEditing', function(cell){
      pas.Unit1.Form1.tabAccountLinks.deselectRow();
      pas.Unit1.Form1.tabAccountLinks.selectRow([cell.getRow()]);
    });
    this.tabAccountLinks.on('cellEdited', function(cell){
      if (cell.getField() == 'Link') {
        var This = pas.Unit1.Form1;
        This.tabAccountLinks.redraw(true);
        This.UpdateAccountLinks();
        This.LogAction('[ Edited Account Link: '+cell.getValue()+' ]');
      }
    });
  } end; {$ENDIF}



  // Account Session List
  {$IFNDEF WIN32} asm {
    this.tabAccountSessions = new Tabulator("#divSessionList", {
      layout: "fitColumns",
      selectable: 1,
      maxHeight: "100%",
      columnDefaults:{
        resizable: false,
        headerWordWrap:true,
      },
      columns: [
        { title: false, field:"session_id", headerSort: false, width: 5, minWidth: 5, formatter: function(cell, formatterParams, onRendered) {return "";}},
        { title: false, field: "log_status", width: 25, minWidth: 25,
            formatter: function(cell, formatterParams, onRendered) {
              var icon = '';
              var status = cell.getValue();
              var TT = pas.Unit1.Form1.BootstrapTT;
              if (status == 1) {
                icon = '<div title="Browser Closed"'+TT+'<i class="fa-duotone fa-flag fa-lg Swap"></i></div>';
              }
              else if (status == 2) {
                icon = '<div title="Logout: Normal"'+TT+'<i class="fa-duotone fa-flag-pennant fa-lg"></i></div>';
              }
              else if (status == 3) {
                icon = '<div title="Logout: Clear"'+TT+'<i class="fa-duotone fa-flag-swallowtail fa-lg"></i></div>';
              }
              else if (status == 4) {
                icon = '<div title="Logout: All"'+TT+'<i class="fa-duotone fa-flag-checkered fa-lg"></i></div>';
              }
              return icon;
            }
        },
        { title: false, field: "log_start", width: 25, minWidth: 25,
            formatter: function(cell, formatterParams, onRendered) {
              var icon = '';
              var start = cell.getValue();
              var TT = pas.Unit1.Form1.BootstrapTT;
              if (start == 1) {
                icon = '<div title="Login"'+TT+'<i class="fa-duotone fa-shield-keyhole Swap fa-lg"></i></div>';
              }
              else if (start == 2) {
                icon = '<div title="AutoLogin"'+TT+'<i class="fa-duotone fa-shield-check fa-lg"></i></div>';
              }
              return icon;
            }
        },
        { title: '<div class="ps-1">Session Start</div>', field: "session_start",
            formatter: function(cell, formatterParams, onRendered) {
              return luxon.DateTime.fromISO(cell.getValue().split(' ').join('T'),{zone:"utc"}).setZone("system").toFormat(window.DisplayDateTimeFormat);
            }
        },
        { title: '<div title="Events"'+this.BootstrapTT+'<i class="fa-duotone fa-computer-mouse fa-fw Swap fa-lg"></i></div>', field: "log_events", width: 42, hozAlign: "center" },
        { title: '<div title="Changes"'+this.BootstrapTT+'<i class="fa-duotone fa-hammer fa-fw Swap fa-lg"></i></div>', field: "log_changes", width: 42, hozAlign: "center" },
        { title: '<div title="Errors"'+this.BootstrapTT+'<i class="fa-duotone fa-bug fa-fw fa-lg"></i></div>', field: "log_errors", width: 42, hozAlign: "center" },
        { title: false, field: "person_id", headerSort: false, width: 5, minWidth: 5, formatter: function(cell, formatterParams, onRendered) {return ""; } }
      ]
    });
    this.tabAccountSessions.on('tableBuilt', function() {
      divSessionList.firstElementChild.style.setProperty('position','absolute');
      divSessionList.firstElementChild.style.setProperty('z-index', '10');
      divSessionList.firstElementChild.style.setProperty('top', '0px');
    });
    this.tabAccountSessions.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAccountSessions.selectRow([row]);
    });
    this.tabAccountSessions.on('rowDblClick', function(e, row){
      var This = pas.Unit1.Form1;
      This.tabAccountSessions.selectRow([row]);

      if (This.btnActivityLogTimezone.FTag$1 == 0) {
        btnSelectActivityLog.innerHTML = row.getCell('session_start').getValue()+' UTC' ;
        This.btnSelectActivityLog.FCaption = btnSelectActivityLog.innerHTML;
      } else {
        btnSelectActivityLog.innerHTML = luxon.DateTime.fromISO(row.getCell('session_start').getValue().split(' ').join('T'),{zone:"utc"}).setZone("system").toFormat(window.DisplayDateTimeFormat);
        This.btnSelectActivityLog.FCaption = btnSelectActivityLog.innerHTML;
      }
      This.Current_ActionLog = row.getCell('session_id').getValue();
      This.ActivityLogChange(null);
      This.divSessionListLabelClick(null);
    });
  } end; {$ENDIF}


  // Account Roles
  {$IFNDEF WIN32} asm {
    this.tabAccountRoles = new Tabulator("#divAccountRoles", {
      index: "role_id",
      layout: "fitColumns",
      selectable: 1,
      headerVisible: false,
      groupBy: 'category',
      groupHeader:function(value, count, data, group){
        if (count == 1) {
          return '<div style="color: var(--bl-color-input); display: inline-block; font-size: 14px; filter: var(--bl-shadow); padding-right: 15px;">'+value+'</div><span style="color: var(--bl-color-one); filter: var(--bl-shadow);">( ' + count + ' item )</span>';
        } else {
          return '<div style="color: var(--bl-color-input); display: inline-block; font-size: 14px; filter: var(--bl-shadow); padding-right: 15px;">'+value+'</div><span style="color: var(--bl-color-one); filter: var(--bl-shadow);">( ' + count + ' items )</span>';
        }
      },
      columnDefaults:{
        resizable: false
      },
      columns: [
        { title: false, field:"role_id", headerSort: false, width: 5, minWidth: 5, formatter: function(cell, formatterParams, onRendered) {return "";}},
        { title: "category", field: "category", visible: false },
        { title: false, field: "icon", width: 35, minWidth: 35,
            formatter: function(cell, formatterParams, onRendered) {
              return '<i class="fa-duotone '+cell.getValue().replace(':','')+' fa-xl fa-fw"></i>';
            }
        },
        { title: "Role", field: "name" },
        { title: "Access", field: "valid_from" }
      ]
    });
    this.tabAccountRoles.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAccountRoles.selectRow([row]);
    });
  } end; {$ENDIF}


  // Periods
  {$IFNDEF WIN32} asm {
    this.tabPeriods = new Tabulator("#divPeriodsHolder", {
      layout: "fitColumns",
      selectable: 1,
      headerVisible: false,
      groupBy: 'category',
      groupStartOpen: false,
      groupHeader:function(value, count, data, group){
        if (count == 1) {
          return '<div style="color: var(--bl-color-input); display: inline-block; font-size: 14px; filter: var(--bl-shadow); padding-right: 15px;">'+value+'</div><span style="color: var(--bl-color-one); filter: var(--bl-shadow);">( ' + count + ' item )</span>';
        } else {
          return '<div style="color: var(--bl-color-input); display: inline-block; font-size: 14px; filter: var(--bl-shadow); padding-right: 15px;">'+value+'</div><span style="color: var(--bl-color-one); filter: var(--bl-shadow);">( ' + count + ' items )</span>';
        }
      },
      columnDefaults:{
        resizable: false
      },
      columns: [
        { title: false, field: "", headerSort: false, width: 5, minWidth: 5, formatter: function(cell, formatterParams, onRendered) {return "";}},
        { title: "category", field: "category", visible: false },
        { title: "Name", field: "name_long" },
        { title: "SName", field: "name_short", visible: false },
        { title: "Starts", field: "period_start",
            formatter: function(cell, formatterParams, onRendered) {
              return luxon.DateTime.fromISO(cell.getValue().split(' ').join('T')).toFormat('yyyy-MMM-dd');
            }
        },
        { title: "Ends", field: "period_end",
            formatter: function(cell, formatterParams, onRendered) {
              return luxon.DateTime.fromISO(cell.getValue().split(' ').join('T')).toFormat('yyyy-MMM-dd');
            }
        },
        { title: "Adjustment", field: "adjustment", visible: false },
      ]
    });
    this.tabPeriods.on('tableBuilt', function() {
      pas.Unit1.Form1.tabPeriods.setData(pas.Unit1.Form1.Periods);
    });
    this.tabPeriods.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabPeriods.selectRow([row]);
    });
    this.tabPeriods.on('rowDblClick', function(e, row){
      var This = pas.Unit1.Form1;
      var Tab = This.tabPeriods;
      Tab.selectRow([row]);
      This.SelectPeriodRow(
        row.getCell('category').getValue(),
        row.getCell('name_short').getValue(),
        row.getCell('name_long').getValue(),
        row.getCell('period_start').getValue(),
        row.getCell('period_end').getValue(),
        row.getCell('adjustment').getValue()
      );
    });
  } end; {$ENDIF}


  // This is used to adjust the size and position of "windows"
  {$IFNDEF WIN32} asm {
    interact('.resize-drag')
      .resizable({
        edges: { left: true, right: true, bottom: true, top: true },
        margin: 12, // size of resizing boundary interaction area
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)
//            var x = (parseFloat(target.getAttribute('data-x')) || -target.getBoundingClientRect().width/2)
//            var y = (parseFloat(target.getAttribute('data-y')) || -target.getBoundingClientRect().height/2)
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'
            x += event.deltaRect.left
            y += event.deltaRect.top
            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'
            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        },
        ignoreFrom: '.nointeract'
      })
      .draggable({
        listeners: { move: dragMoveListener },
        ignoreFrom: '.nointeract'
      })
      .pointerEvents({
        ignoreFrom: '.nointeract'
      });

    interact('.resize')
      .resizable({
        edges: { left: false, right: true, bottom: true, top: false },
        margin: 10, // size of resizing boundary interaction area
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)
//            var x = (parseFloat(target.getAttribute('data-x')) || -target.getBoundingClientRect().width/2)
//            var y = (parseFloat(target.getAttribute('data-y')) || -target.getBoundingClientRect().height/2)
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'
            x += event.deltaRect.left
            y += event.deltaRect.top
            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'
            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        },
        ignoreFrom: '.nointeractresize .simplebar-scrollbar'
      })
//      .draggable({
//        listeners: { move: dragMoveListener },
//        ignoreFrom: '.nointeractresize'
//      })
      .pointerEvents({
        ignoreFrom: '.nointeractresize .simplebar-scrollbar'
      });

    interact('.resize-square')
      .resizable({
        modifiers: [
          interact.modifiers.aspectRatio({
            ratio: 1
          })
        ],
        edges: { left: false, right: true, bottom: true, top: false },
        margin: 20, // size of resizing boundary interaction area
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)
//            var x = (parseFloat(target.getAttribute('data-x')) || -target.getBoundingClientRect().width/2)
//            var y = (parseFloat(target.getAttribute('data-y')) || -target.getBoundingClientRect().height/2)
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'
            x += event.deltaRect.left
            y += event.deltaRect.top
            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'
            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        },
        ignoreFrom: '.nointeractresize .simplebar-scrollbar'
      })
//      .draggable({
//        listeners: { move: dragMoveListener },
//        ignoreFrom: '.nointeractresize'
//      })
      .pointerEvents({
        ignoreFrom: '.nointeractresize .simplebar-scrollbar'
      });

    interact('.resize-vertical')
      .resizable({
        edges: { left: false, right: false, bottom: true, top: false },
        margin: 20, // size of resizing boundary interaction area
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)
//            var x = (parseFloat(target.getAttribute('data-x')) || -target.getBoundingClientRect().width/2)
//            var y = (parseFloat(target.getAttribute('data-y')) || -target.getBoundingClientRect().height/2)
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'
            x += event.deltaRect.left
            y += event.deltaRect.top
            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'
            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)

            var That = pas.Unit1.Form1.StatsForm;
            That.CreateD3BarChart(That.Current_Chart, That.Current_XData, That.Current_YData);

          }
        },
        ignoreFrom: '.nointeractresize .simplebar-scrollbar'
      })
//      .draggable({
//        listeners: { move: dragMoveListener },
//        ignoreFrom: '.nointeractresize'
//      })
      .pointerEvents({
        ignoreFrom: '.nointeractresize .simplebar-scrollbar'
      });

    function dragMoveListener (event) {
      var target = event.target
      var x = (parseFloat(target.getAttribute('data-x')) || 0 ) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || 0 ) + event.dy
//      var x = (parseFloat(target.getAttribute('data-x')) || -target.getBoundingClientRect().width/2) + event.dx
//      var y = (parseFloat(target.getAttribute('data-y')) || -target.getBoundingClientRect().height/2) + event.dy
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    };
    window.dragMoveListener = dragMoveListener
  } end; {$ENDIF}

  // Enable Simplebar on Options pages
  {$IFNDEF WIN32} asm {
    this.scrollAccountName       = new SimpleBar(document.getElementById('pageAccountName'        ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountPassword   = new SimpleBar(document.getElementById('pageAccountPassword'    ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountAuthor     = new SimpleBar(document.getElementById('pageAccountAuthor'      ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountProfile    = new SimpleBar(document.getElementById('divAuthorProfileHolder' ), { forceVisible: 'n', autoHide: true  });
    this.scrollAccountPhoto      = new SimpleBar(document.getElementById('pageAccountPhoto'       ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountRoles      = new SimpleBar(document.getElementById('pageAccountRoles'       ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountCategories = new SimpleBar(document.getElementById('pageAccountCategories'  ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountBlogs      = new SimpleBar(document.getElementById('pageAccountBlogs'       ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountNotify     = new SimpleBar(document.getElementById('pageAccountNotify'      ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountPromotion  = new SimpleBar(document.getElementById('pageAccountPromotion'   ), { forceVisible: 'y', autoHide: false });
//    this.scrollAccountDonate     = new SimpleBar(document.getElementById('pageAccountDonate'      ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountHistory    = new SimpleBar(document.getElementById('pageAccountHistory'     ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountActivity   = new SimpleBar(document.getElementById('pageAccountActivity'    ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountLogout     = new SimpleBar(document.getElementById('pageAccountLogout'      ), { forceVisible: 'y', autoHide: false });
    this.scrollIcons             = new SimpleBar(document.getElementById('divIconSearchResults'   ), { forceVisible: 'y', autoHide: false });
    this.scrollSessions          = new SimpleBar(document.getElementById('divSessionListHolder'   ), { forceVisible: 'y', autoHide: false });
    this.scrollPeriods           = new SimpleBar(document.getElementById('divPeriodsPresets'      ), { forceVisible: 'y', autoHide: false });

    // Fix tabulator headers to top

    this.scrollAccountHistory.getScrollElement().addEventListener('scroll', (evt) => {
      divAccountHistory.firstElementChild.style.setProperty('top',
        divAccountHistory.parentElement.parentElement.parentElement.getBoundingClientRect().y
        - divAccountHistory.getBoundingClientRect().y
        + 'px');
    }, {capture: true, passive: true});

    this.scrollSessions.getScrollElement().addEventListener('scroll', (evt) => {
      divSessionList.firstElementChild.style.setProperty('top',
        divSessionList.parentElement.parentElement.parentElement.getBoundingClientRect().y
        - divSessionList.getBoundingClientRect().y
        + 'px');
    }, {capture: true, passive: true});

  } end; {$ENDIF}



  // This loads up pan/zoom functionality
  {$IFNDEF WIN32} asm {
    this.pz = Panzoom(divAccountPhoto, {
      animate: true,
      cursor: 'all-scroll',
      minScale: 0.5,
      maxScale: 20,
//      duration: 50,
      step: 0.1
    });
    divAccountPhoto.addEventListener('wheel',pas.Unit1.Form1.pz.zoomWithWheel);
    divAccountPhoto.addEventListener('panzoomchange', (event) => {
      pas.Unit1.Form1.PhotoChanged();
    });
  } end; {$ENDIF}



  // Autologin if possible
  LoggedIn := False;
  if (TWebLocalStorage.GetValue('Login.Expiry') <> '') then
  begin
    JWT_Expiry := StrToFloat(TWebLocalStorage.GetValue('Login.Expiry'));
    if JWT_Expiry > (TTimeZone.Local.ToUniversalTime(Now) + 60/86400) then
    begin
      LoggedIn := True;
      LogAction('AutoLogin - JWT Time Remaining: '+IntToStr(SecondsBetween(JWT_Expiry, TTimeZone.Local.ToUniversalTime(Now)))+'s');
      await(ProcessJWT(TWebLocalStorage.GetValue('Login.JWT')));
      PasswordCheck := TWebLocalStorage.GetValue('Login.PasswordHash');

//      window.history.pushState(MainForm.CaptureState, '', MainForm.URL);
//      MainForm.Position := window.history.length;
//      MainForm.StartPosition := MainForm.Position - 1;
      ProcessLogin;

      User_Photo := TWebLocalStorage.GetValue('User.Photo.'+User_Account);
      if Trim(User_Photo) = ''
      then User_Photo := '<img width="100%" style="transform: scale(1) translate(0%, 0%);" src="icons/favicon-192x192.png">';
      btnAccount.ElementHandle.innerHTML := User_Photo;

      await(tmrJWTRenewalTimer(Sender));
      LogAction('Login Complete');
      LogAction(' ');

      {$IFNDEF WIN32} asm { await sleep(1000); } end; {$ENDIF}
      await(btnAccountClick(Sender));
      LogAction(' ');

    end
    else
    begin
      LogAction('Automatic Login Skipped: Login Token Expired');
      LogAction(' ');
    end;
  end
  else
  begin
    LogAction('Automatic Login Skipped: No Login Token Found');
    LogAction(' ');
  end;



  // AutoLogout if possible - what to do if the browser closes unexpectedly
  {$IFNDEF WIN32} asm {
    window.addEventListener('beforeunload', async function (e) {
      pas.Unit1.Form1.FinalRequest();
    });
  } end; {$ENDIF}



  // Disable edit scrolling
  {$IFNDEF WIN32} asm {
    document.querySelectorAll('.Edit').forEach(function(item){
      item.addEventListener('wheel', preventScroll, {passive: false});
    });
    function preventScroll(e) {
      e.preventDefault();
      e.target.parentElement.parentElement.parentElement.scrollTop += e.deltaY;
      return false;
    }
  } end; {$ENDIF}



  // TWebMemo auto resizing
  {$IFNDEF WIN32} asm {
    // https://stephanwagner.me/auto-resizing-textarea-with-vanilla-javascript
    function addAutoResize() {
      document.querySelectorAll('[data-autoresize]').forEach(function (element) {
        element.style.boxSizing = 'border-box';
        var offset = element.offsetHeight - element.clientHeight;
        element.addEventListener('input', function (event) {
          event.target.style.height = 'auto';
          event.target.style.height = event.target.scrollHeight + offset + 'px';
          event.target.parentElement.style.height = event.target.scrollHeight + offset + 4 + 'px';
          pas.Unit1.Form1.scrollAccountAuthor.recalculate();
        });
        element.removeAttribute('data-autoresize');
      });
    }
    memoAuthorDescription.setAttribute('data-autoresize','');
    memoAuthorDescription.setAttribute('rows','1');
    memoAuthorDescription.setAttribute('maxlength','5000');
    addAutoResize();
  } end; {$ENDIF}



  // Icon Selection
  {$IFNDEF WIN32} asm {
    divIconSearchResultsInner.addEventListener('click', (e) => {

      // Remove current highlight
      var selected = divIconSearchResultsInner.querySelectorAll('.Selected');
      selected.forEach(el => {
        el.classList.remove('Selected');
      });
      pas.Unit1.Form1.btnIconOK.FEnabled = false;
      btnIconOK.setAttribute('disabled','');

     // What was clicked on? Could be the icon itself or the icon name
      var el = null;
      if (e.target.getAttribute('icon-library') !== null) {
        var el = e.target;
        this.IconSelected = el.firstElementChild.outerHTML;
        pas.Unit1.Form1.btnIconOKClick(null);
      } else if (e.target.classList.contains('IconName')) {
        var el = e.target.parentElement;
        el.classList.add('Selected');
        btnIconOK.removeAttribute('disabled');
        pas.Unit1.Form1.btnIconOK.FEnabled = true;
        divIconSearchData.innerHTML =
            '<div>Results: <span style="color: var(--bl-color-input);">'+this.IconResults+'</span></div>'+
            '<div>'+el.getAttribute('icon-library')+'</div>'+
            '<div>'+el.getAttribute('icon-license')+'</div>'+
          '</div>';
      }
    });
  } end; {$ENDIF}



  // Image Selecttion
  {$IFNDEF WIN32} asm {
    var SquareImage = 1024; // This is our working image size

    function getBase64Image(img, width, height) {
      var canvas = document.createElement("canvas");
      canvas.width = SquareImage;
      canvas.height = SquareImage;
      var ctx = canvas.getContext("2d");
      var ctx = canvas.getContext('2d');
      ctx.drawImage(img, (SquareImage - width) / 2, (SquareImage- height) / 2, width, height);
      var dataURL = canvas.toDataURL("image/png");
      return dataURL;
    }
    document.getElementById('fileinput').onchange = function () {
      var This = pas.Unit1.Form1;
      This.LogAction(' -- Original Image Name: '+this.files[0].name);
      This.LogAction(' -- Original Image Size: '+parseInt(this.files[0].size / 1024).toLocaleString()+' KB');
      This.LogAction(' -- Original Image Type: '+this.files[0].type);

      loadImage(this.files[0], {meta: true, canvas: true, contain: true, cover: false })
        .then(function (data) {

          // Size image to 'contain' within SquareImage - stretch or shrink
          var width = data.image.width;
          var height = data.image.height;
          if (width >= height) {
            width = SquareImage;
            height = SquareImage * data.image.height / data.image.width;
          } else {
            height = SquareImage;
            width = SquareImage * data.image.width / data.image.height;
          }
          width = parseInt(width);
          height = parseInt(height);

          var dataURI = getBase64Image(data.image, width, height);
          divAccountPhoto.innerHTML = '<img style="position: absolute; width: 100%; top: 0px; left: 0px;" src="'+dataURI+'">';

          This.LogAction(' -- Original Image Width: '+data.originalWidth);
          This.LogAction(' -- Original Image Height: '+data.originalHeight);
          This.LogAction(' -- Uploaded Image Size: '+parseInt(dataURI.length / 1024).toLocaleString()+' KB');
          This.LogAction(' -- Uploaded Image Width: '+width);
          This.LogAction(' -- Uploaded Image Height: '+height);

          This.pz.reset();
          This.btnRotate.FTag$1 = 0;
        })
        .catch(function (err) {
          console.log(err)
        });

//    // load any meta data that can be found in the image
//    loadImage.parseMetaData(this.files[0],{})
//      .then(function (data) {
//        console.log('Original image head: ', data.imageHead);
//        console.log('EXIF data: ', data.exif);
//        console.log('IPTC data: ', data.iptc);
//      });

     // Resets, so the same file can be loaded again if necessary
     fileinput.value = '';
    }
  } end; {$ENDIF}



  // Set our current state as the state we want to go back to
  State := 'Home';
  StatePosition := window.history.length;
  StartPosition := window.history.length;
  StateURL := window.location.href;
  window.history.pushState(CaptureState, '', StateURL);
  StatePosition := window.history.length;
  window.history.pushState(CaptureState, '', StateURL);

  // What to do when we hit back/forward button
  {$IFNDEF WIN32} asm {
    window.addEventListener('popstate', function(popstateEvent)  {
      pas.Unit1.Form1.RevertState(popstateEvent.state);
    });
  } end; {$ENDIF}



  HideTooltips;
  PreventCompilerHint(i);
  PreventCompilerHint(ResponseString);
end;

function TForm1.JSONRequest(Endpoint: String; Params: array of JSValue): String;
var
  ClientConn: TXDataWebClient;
  Response: TXDataClientResponse;
  Blob: JSValue;
  ErrorCode: String;
  ErrorMessage: String;
  Elapsed: TDateTime;
begin
  Elapsed := Now;
  Result := '';
  LogAction('Requested: '+Endpoint);

  await(XDataConnect);
  if (XdataConn.Connected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := XDataConn;
      Response := await(ClientConn.RawInvokeAsync(Endpoint, Params));

      Blob := Response.Result;
      {$IFNDEF WIN32} asm {
        Result = await Blob.text();
      } end; {$ENDIF}

    except on E: Exception do
      begin
        // Get the error message we created in XData
        {$IFNDEF WIN32} asm {
          var ErrorDetail = JSON.parse( await E.FErrorResult.FResponse.$o.FXhr.response.text() );
          ErrorCode = ErrorDetail.error.code;
          ErrorMessage = ErrorDetail.error.message;
        } end; {$ENDIF}

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('ERROR: Request Exception Received From '+Endpoint);
        LogAction(' -- EXCEPTION: '+E.ClassName);
        LogAction(' -- '+Copy(E.Message,1,Pos('Uri:',E.Message)-2));
        LogAction(' -- '+Copy(E.Message,Pos('Status code:',E.Message),16));
        LogAction(' -- '+ErrorCode);
        LogAction(' -- '+ErrorMessage);
      end;
    end;
  end;

  LogAction('Responded: '+Endpoint+' ('+IntToStr(MillisecondsBetween(Now, Elapsed))+'ms)');
  PreventCompilerHint(Blob);
end;

procedure TForm1.labelAccountTitleDblClick(Sender: TObject);
begin
  if divAccount.Tag = 0 then
  begin
    divAccount.Tag := 1;
    divAccount.ElementHandle.removeAttribute('data-x');
    divAccount.ElementHandle.removeAttribute('data-y');
    divAccount.ElementHandle.style.setProperty('top','5px');
    divAccount.ElementHandle.style.setProperty('left','5px');
    divAccount.ElementHandle.style.setProperty('right','5px');
    divAccount.ElementHandle.style.setProperty('bottom','5px');
    divAccount.ElementHandle.style.setProperty('width','unset');
    divAccount.ElementHandle.style.setProperty('height','unset');
    divAccount.ElementHandle.style.setProperty('transform','translate(0px,0px)');
    divAccount.ElementHandle.removeAttribute('data-x');
    divAccount.ElementHandle.removeAttribute('data-y');
  end
  else
  begin
    divAccount.Tag := 0;
    divAccount.ElementHandle.setAttribute('data-x', FloatToSTr(window.innerWidth / 4));
    divAccount.ElementHandle.setAttribute('data-y', FloatToStr(window.innerHeight / 10));
    divAccount.ElementHandle.style.setProperty('top','unset');
    divAccount.ElementHandle.style.setProperty('left','unset');
    divAccount.ElementHandle.style.setProperty('right','unset');
    divAccount.ElementHandle.style.setProperty('bottom','unset');
    divAccount.ElementHandle.style.setProperty('width',FloatToSTr(window.innerWidth * 0.5)+'px');
    divAccount.ElementHandle.style.setProperty('height',FloatToSTr(window.innerHeight * 0.8)+'px');
    divAccount.ElementHandle.style.setProperty('transform','translate('+FloatToSTr(window.innerWidth / 4)+'px, '+FloatToSTr(window.innerHeight / 10)+'px');

  end;
end;

function TForm1.StringRequest(Endpoint: String; Params: array of JSValue): String;
var
  ClientConn: TXDataWebClient;
  Response: TXDataClientResponse;
  ErrorCode: String;
  ErrorMessage: String;
  Elapsed: TDateTime;
begin
  Elapsed := Now;
  Result := '';
  LogAction('Requested: '+Endpoint);

  await(XDataConnect);
  if (XdataConn.Connected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := XDataConn;
      Response := await(ClientConn.RawInvokeAsync(Endpoint, Params));
      Result := string(TJSObject(Response.Result)['value']);

    except on E: Exception do
      begin
        // Get the error message we created in XData
        {$IFNDEF WIN32} asm {
          try {
            var ErrorDetail = JSON.parse(await E.FErrorResult.FResponse.$o.FXhr.responseText );
            ErrorCode = ErrorDetail.error.code;
            ErrorMessage = ErrorDetail.error.message;
          }
          catch {
            ErrorCode = 'Configuration Error';
            ErrorMessage = 'Endpoint Call Failed';
          }
        } end; {$ENDIF}

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('ERROR: Request Exception Received From '+Endpoint);
        LogAction(' -- EXCEPTION: '+E.ClassName);
        LogAction(' -- '+Copy(E.Message,1,Pos('Uri:',E.Message)-2));
        LogAction(' -- '+Copy(E.Message,Pos('Status code:',E.Message),16));
        LogAction(' -- '+ErrorCode);
        LogAction(' -- '+ErrorMessage);
        Result := ErrorMessage;
      end;
    end;
  end;

  LogAction('Responded: '+Endpoint+' ('+IntToStr(MillisecondsBetween(Now, Elapsed))+'ms)');
end;

procedure TForm1.Logout(Reason: String; LogoutAll: Boolean);
var
  FinalLog: String;
begin
  if LoggedIn then
  begin
    LoggedIn := False;
    TWebLocalStorage.RemoveKey('Login.JWT');
    TWebLocalStorage.RemoveKey('Login.Expiry');

    // We'll do our best to logout cleanly, but if anything is amiss, we still want to logout
    tmrLogout.Enabled := True;

    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

    // Make sure this doesn't fire
    tmrJWTRenewal.Enabled := False;

    // Make a note of session time
    LogAction(' ');
    LogAction('Logout: '+Reason);
    LogAction('Session Duration: '+FormatDateTime('h"h "m"m "s"s"', Now - App_Start));

    FinalLog := ActionLogCurrent.Text;
    ActionLogCurrent.Text := '';
    ActionLog.text := '';

    // Record logout at Server
    if LogoutAll
    then await(JSONRequest('ISystemService.LogoutAll',[App_Session, FinalLog]))
    else await(JSONRequest('ISystemService.Logout',[App_Session, FinalLog]));

    // Hide the page, remove the history
    {$IFNDEF WIN32} asm {
      window.history.replaceState(null,null,window.location.href.split('#')[0]);
      document.body.style.setProperty('opacity','0');
    } end; {$ENDIF}

    // This effectively ends the current session
    JWT := '';


  end;
end;

procedure TForm1.memoAuthorDescriptionChange(Sender: TObject);
var
  displaytext: String;
  i: Integer;
begin
  i := 0;
  while i < memoAuthorDescription.Lines.Count do
  begin
    displaytext := displaytext+memoAuthorDescription.Lines[i]+'<br />';
    i := i + 1;
  end;
  divAuthorProfileDescription.ElementHandle.innerHTML := '<div class="DropShadow text-wrap" style="color: var(--bl-color-input); line-height: 1.25; font-size: 12px; overflow: hidden;">'+displaytext+'</div>';

  if User_Description = memoAuthorDescription.Lines.Text then
  begin
    btnDescriptionSave.Enabled := False;
    btnDescriptionCancel.Enabled := False;
  end
  else
  begin
    btnDescriptionSave.Enabled := True;
    btnDescriptionCancel.Enabled := True;
  end;
end;

procedure TForm1.XDataConnect;
var
  ElapsedTime: TDateTime;
begin
  ElapsedTime := Now;

  if not(XDataConn.Connected) then
  begin

    // Should be updated to point at our XData server, wherever it may be
    XDataConn.URL := Server_URL;

    // Try and establish a connection to the server
    try
      LogAction('Connecting to: '+XDataConn.URL);
      await(XDataConn.OpenAsync);
      LogAction('Connection Established ('+IntToStr(MillisecondsBetween(Now, ElapsedTime))+'ms)');
    except on E: Exception do
      begin
        LogAction('Connection Unsuccessful: '+XDataConn.URL);
        LogAction(' -- EXCEPTION: '+E.ClassName);
        LogAction(' -- '+E.Message);
      end;
    end;
  end;
end;

procedure TForm1.XDataConnRequest(Args: TXDataWebConnectionRequest);
begin
  Args.Request.Headers.SetValue('Authorization', JWT);
end;

procedure TForm1.LoadIconSets;
var
  i: Integer;
  count: integer;
  ResponseString: String;
begin
  // This intializes the custom icon editor to use the "remote" approach.
  if IconSetsLoaded = False then
  begin
    ResponseString := await(JSONRequest('ISystemService.AvailableIconSets',[]));
    {$IFNDEF WIN32} asm {
      this.IconSets = [];
      this.IconSetNames = [];
      this.IconSetCount = [];

      // Load up our Local icon sets
      this.IconSetList = JSON.parse(ResponseString);

      // Original list is soprted by filename.  Lets sort it by library name instead (case-insensitive)
      this.IconSetList = this.IconSetList.sort((a, b) => {
        if (a.name.toLowerCase() < b.name.toLowerCase()) {
          return -1;
        }
      });

      // Get count data from this list
      for (var i = 0; i < this.IconSetList.length; i++) {
        var iconcount = this.IconSetList[i].count
        this.IconSetNames.push(this.IconSetList[i].name+': '+iconcount+' icons');
        this.IconSetCount.push(iconcount);
      };
    } end; {$ENDIF}

    // Populate the listLibraries control
    count := 0;
    for i := 0 to Length(IconsetNames)-1 do
    begin
      count := count + IconSetCount[i];
    end;
    editIconSearch.TextHint := 'Search '+FloatToStrF(count,ffNumber,5,0)+' icons';
    IconSetsLoaded := True;
    IconResults := count;
  end;

  PreventCompilerHint(ResponseString);
end;

procedure TForm1.LogAction(Action: String);
var
  FilterAction: String;
begin
  FilterAction := StringReplace(Action, chr(10), '', [rfReplaceAll]);
  FilterAction := StringReplace(FilterAction, chr(13), '', [rfReplaceAll]);
  FilterAction := StringReplace(FilterAction, '"', '''', [rfReplaceAll]);

  if (Trim(FilterAction) <> Trim(LastAction)) then
  begin
    LastAction := FilterAction;

    // Log the action to a TStringList
    ActionLog.Add(FormatDateTime(App_LogDateTimeFormat,  TTimeZone.Local.ToUniversalTime(Now))+' UTC  '+FilterAction);
    ActionLogCurrent.Add(FormatDateTime(App_LogDateTimeFormat,  TTimeZone.Local.ToUniversalTime(Now))+' UTC  '+FilterAction);

    // Log to Console
//    console.Log(FilterAction);
  end;

end;

function TForm1.XDataLogin(Username, Password: String):String;
var
  Response: TXDataClientResponse;
  ClientConn: TXDataWebClient;
  Blob: JSValue;
  NewJWT: String;
  ElapsedTime: TDateTime;
  ErrorCode: String;
  ErrorMessage: String;
  ActionLogSend: String;
begin

  ElapsedTime := Now;
  NewJWT := '';
  ErrorCode := '';
  ErrorMessage := '';

  LogAction('Attempting Login');


  // Call it again in case it has been disconnected
  await(XDataConnect);

  ActionLogSend := ActionLogCurrent.Text;
  ActionLogCurrent.Text := '';

  if (XDataConn.Connected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := XDataConn;
      Response := await(ClientConn.RawInvokeAsync('ISystemService.Login', [
        Username,
        Password,
        App_APIKey,
        App_TZ,
        App_IPAddress,
        App_Location,
        App_Device,
        App_Browser,
        App_Session,
        ActionLogSend
      ]));

      Blob := Response.Result;
      {$IFNDEF WIN32} asm {
        NewJWT = await Blob.text();
      } end; {$ENDIF}

    except on E: Exception do
      begin
        // Get the error message we created in XData
        {$IFNDEF WIN32} asm {
          var ErrorDetail = JSON.parse( await E.FErrorResult.FResponse.$o.FXhr.response.text() );
          ErrorCode = ErrorDetail.error.code;
          ErrorMessage = ErrorDetail.error.message;
        } end; {$ENDIF}

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('Login Exception');
        LogAction(' -- EXCEPTION: '+E.ClassName);
        LogAction(' -- '+Copy(E.Message,1,Pos('Uri:',E.Message)-2));
        LogAction(' -- '+Copy(E.Message,Pos('Status code:',E.Message),16));
        LogAction(' -- '+ErrorCode);
        LogAction(' -- '+ErrorMessage);
      end;
    end;
  end;

  // We've got a JWT
  if Pos('Bearer ', NewJWT) = 1 then
  begin
    // How long did it take?
    LogAction('Login Successful ('+IntToStr(MilliSecondsBetween(Now, ElapsedTime))+'ms)');

    // Do stuff with the JWT
    await(ProcessJWT(NewJWT));

    // All done
    Result := 'Success';
    LoggedIn := True;
  end
  else
  begin
    LoggedIn := False;
    Result := ErrorCode+' / '+ErrorMessage;
  end;

  PreventCompilerHint(Blob);
end;


procedure TForm1.ProcessJWT(aJWT: String);
var
  JWTClaims: TJSONObject;
  i: Integer;
begin
  JWT := aJWT;

  // Get JSON Claims from JWT
  JWTClaims := TJSONObject.ParseJSONValue(Window.atob(Copy(JWT, Pos('.',JWT)+1, LastDelimiter('.',JWT)-Pos('.',JWT)-1))) as TJSONObject;

  // Extract user information
  User_FirstName :=  (JWTClaims.GetValue('fnm') as TJSONString).Value;
  User_MiddleName :=  (JWTClaims.GetValue('mnm') as TJSONString).Value;
  User_LastName :=  (JWTClaims.GetValue('lnm') as TJSONString).Value;
  User_Name := StringReplace(User_FirstName+' '+User_MiddleName+' '+User_LastName,'  ',' ',[rfReplaceAll]);
  User_EMail :=  (JWTClaims.GetValue('eml') as TJSONString).Value;
  User_Account := (JWTClaims.GetValue('anm') as TJSONString).Value;
  User_ID := (JWTClaims.GetValue('usr') as TJSONNumber).AsInt;
  User_Roles.CommaText :=  (JWTClaims.GetValue('rol') as TJSONString).Value;

  // Set renewal to one minute before expiration
  JWT_Expiry := UnixToDateTime((JWTClaims.GetValue('exp') as TJSONNumber).AsInt);

  // Set renewal to one minute before expiration
  JWT_Expiry := UnixToDateTime((JWTClaims.GetValue('exp') as TJSONNumber).AsInt);
  tmrJWTRenewal.Enabled := False;
  tmrJWTRenewal.Interval := MillisecondsBetween(JWT_Expiry, TTimeZone.Local.ToUniversalTime(Now)) - 30000;
//  tmrJWTRenewal.Interval := 30000;

  // If it has already expired, then not much point in continuing?
  if tmrJWTRenewal.Interval <= 0 then
  begin
    await(Logout('JWT Expired', False));
    exit;
  end;

  tmrJWTRenewal.Enabled := True;

  TWebLocalStorage.SetValue('Login.JWT', JWT);
  TWebLocalStorage.SetValue('Login.Expiry', FloatToStr(JWT_Expiry));

  LogAction('Processing Token');
  LogAction(' -- Name: '+StringReplace(User_FirstName+' '+User_MiddleName+' '+User_LastName,'  ',' ',[rfReplaceAll]));
  LogAction(' -- Account: '+User_Account);
  LogAction(' -- EMail: '+User_Email);
  LogAction(' -- Active Roles');
  i := 0;
  while i < User_Roles.Count do
  begin
    {$IFNDEF WIN32} asm {
      this.LogAction(' ----- ' + i.toString().padStart(3,' ') + ': ' + this.Roles.find(x => x.role_id == i).category + ' / ' + this.Roles.find(x => x.role_id == i).name );
    } end; {$ENDIF}
    i := i + 1;
  end;

  LogAction(' -- Expires: '+(JWTClaims.GetValue('unt') as TJSONString).Value);
  LogAction(' -- Token Processed');

end;

procedure TForm1.ProcessLogin;
begin
  btnRegister.Visible := False;
  btnLogin.Visible := False;
  btnAdd.Visible := True;
  btnAccount.Visible := True;
end;

procedure TForm1.RevertState(StateData: JSValue);
var
  PriorState: String;
begin
  {$IFNDEF WIN32} asm {
    if (StateData !== null) {
      this.StatePosition = StateData.StatePosition;
      this.StateURL = StateData.StateURL;
      PriorState = StateData.CurrentState
    }
  } end; {$ENDIF}

  // Disable Back button
  if StatePosition <= StartPosition then
  begin
    StatePosition := StatePosition + 1;
    window.history.pushState(CaptureState, '', StateURL);
  end
  else
  begin

    if (PriorState <> State) and (PriorState <> '') then
    begin
        if      State = 'Account'    then btnAccountCloseClick(nil)
        else if State = 'Sessions'   then divSessionListLabelClick(nil)
        else if State = 'Statistics' then divStatisticsLabelClick(nil)
        else if State = 'URL'        then btnURLCancelClick(nil)
        else if State = 'Login'      then btnLOginCancelClick(nil)
        else if State = 'Icon'       then btnIconCancelClick(nil)
        else if State = 'Periods'    then divPeriodsLabelClick(nil)
        else console.log('Unexpected State: '+State);
    end;
  end;
end;

procedure TForm1.SelectAccountOption(OptionID: Integer);
var
  CurrentPage: String;
begin
  HideTooltips;
  CurrentPage := pcAccount.ActivePAge.Name;

  // Fade In/Out between pages
  if (pcAccount.TabIndex <> OptionID) then
  begin
    pcAccount.ActivePage.ElementHandle.style.setProperty('opacity','0');
    {$IFNDEF WIN32} asm { await sleep(200); } end; {$ENDIF}
  end;

  pcAccount.TabIndex := OptionID;
  pcAccount.ActivePage.ElementHandle.style.setProperty('opacity','1');
  LogAction('[ Account Settings: '+StringReplace(pcAccount.ActivePage.Name,'pageAccount','',[])+' ]');

  {$IFNDEF WIN32} asm {
    if (this.MenusCollapsed == true) {
      divAccountOptions.style.setProperty('width','40px');
      pcAccount.style.setProperty('left', '42px','important');
      pcAccount.style.setProperty('width','calc(100% - 2rem - 44px)', 'important');
      divActivityLogHeader.style.setProperty('left','64px');
    }
    else {
      divAccountOptions.style.setProperty('width','150px');
      pcAccount.style.setProperty('left', '152px','important');
      pcAccount.style.setProperty('width','calc(100% - 2rem - 154px)', 'important');
      divActivityLogHeader.style.setProperty('left','174px');
    }
  } end; {$ENDIF}

  if pcAccount.ActivePage.Name = 'pageAccountName' then
  begin
    editAccountName.SetFocus;
//    editEMailChange(nil);
    labelFirstName.SetFocus;
  end
  else if (pcAccount.ActivePage.Name = 'pageAccountPassword') then
  begin
    labelCurrentPassword.SetFocus;
//     editCurrentPassword.SetFocus;
  end
  else if (pcAccount.ActivePage.Name = 'pageAccountPhoto') and (currentPage <> 'pageAccountPhoto') then
  begin
    btnPhotoCancelClick(nil);
  end
  else if pcAccount.ActivePage.Name = 'pageAccountHistory' then
  begin
    {$IFNDEF WIN32} asm {
      pas.Unit1.Form1.tabAccountHistory.redraw(true);
      divAccountHistory.firstElementChild.style.setProperty('position','absolute');
      divAccountHistory.firstElementChild.style.setProperty('z-index', '10');
      divAccountHistory.firstElementChild.style.setProperty('top', '0px');
    } end; {$ENDIF}
  end
  else if pcAccount.ActivePage.Name = 'pageAccountActivity' then
  begin
    divActivityLogHeader.ElementHandle.classList.add('position-fixed');
    btnActivityLogReloadClick(nil);
  end
  else if pcAccount.ActivePage.Name = 'pageAccountAuthor' then
  begin
    {$IFNDEF WIN32} asm {
      pas.Unit1.Form1.tabAccountLinks.redraw(true);
      memoAuthorDescription.dispatchEvent(new Event('input'));
    } end; {$ENDIF}
  end
  else if pcAccount.ActivePage.Name = 'pageAccountRoles' then
  begin
    {$IFNDEF WIN32} asm {
      pas.Unit1.Form1.tabAccountRoles.redraw(true);
    } end; {$ENDIF}
  end;
end;

procedure TForm1.SelectPeriodRow(Category, ShortName, LongName,  PeriodStart, PeriodEnd, Adjustment: String);
begin
  LogAction('[ Selected Period: '+LongName+' ]');
  // Status - Logins
  if (divPeriods.Tag = 0) and (ShortName <> '') then
  begin
    (StatsForm as TForm2).btnLoginsPeriod.Caption := LongName;
    (StatsForm as TForm2).CurrentChartPeriod := LongName;

    {$IFNDEF WIN32} asm {
      var That = pas.Unit1.Form1.StatsForm;
      That.dateLoginsAdjustment = Adjustment;
      That.ModuleInit = true;
      That.dateLogins1.setDate(PeriodStart, true, 'Y-m-d H:i:s');
      That.ModuleInit = false;
      That.dateLogins2.setDate(PeriodEnd, true, 'Y-m-d H:i:s');
    } end; {$ENDIF}
  end;

  divPeriodsLabelClick(nil);
end;

procedure TForm1.tmrJWTRenewalTimer(Sender: TObject);
var
  ResponseString: String;
  ActionLogSend: String;
begin
  tmrJWTRenewal.Enabled := False;

  if LoggedIn then
  begin
    LogAction('Renew JWT');
  end;

  ActionLogSend := ActionLogCurrent.Text;
  ActionLogCurrent.Text := '';

  ResponseString := await(JSONRequest('ISystemService.Renew',[App_Session, ActionLogSend]));
  if Copy(ResponseString,1,6) =  'Bearer' then
  begin
    await(ProcessJWT(ResponseString));
    LogAction('JWT Renewed');
  end
  else
  begin
    // Otherwise perform an automatic logout of this session
    LogAction('JWT NOT Renewed');
    LoggedIn := False;
    btnRegister.Visible := True;
    btnLogin.Visible := True;
    btnAdd.Visible := False;
    btnAccount.Visible := False;

//    await(Logout('NoRenewal', False));
  end
end;

procedure TForm1.btnLoginOKClick(Sender: TObject);
var
  LoginCheck: String;
begin

  LoggedIn := False;
  btnLoginOK.setFocus;

  divLoginMessage.ElementHandle.classList.replace('d-none','d-flex');
  divLoginMessage.HTML.Text := '<div class="DropShadow">Authorizing... <i class="fa-duotone fa-atom-simple ms-3 fa-xl fa-spin Swap"></i></div>';

  LoginCheck := await(XDataLogin(editUSername.Text, editPassword.Text));

  if LoginCheck = 'Success' then
  begin
    // Briefly show successful login message
    PasswordCheck := SHA256('XData-Password:'+Trim(editPassword.Text));
    editPassword.Text := '';
    TWebLocalStorage.SetValue('Login.Username', editUsername.Text);
    TWebLocalStorage.SetValue('Login.JWT', JWT);
    TWebLocalStorage.SetValue('Login.Expiry', FloatToStr(JWT_Expiry));
    TWebLocalStorage.SetValue('Login.PasswordHash', PasswordCheck);

    divLoginmessage.HTML.Text := '<div class="DropShadow">Successful... <i class="fa-duotone fa-thumbs-up ms-3 Swap fa-xl"></i></div>';
    {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}
    btnLoginCancelClick(Sender);

    ProcessLogin;

    User_Photo := TWebLocalStorage.GetValue('User.Photo.'+User_Account);
    if Trim(User_Photo) = ''
    then User_Photo := '<img width="100%" style="transform: scale(1) translate(0%, 0%);" src="icons/favicon-192x192.png">';
    btnAccount.ElementHandle.innerHTML := User_Photo;
    LogAction('Login Complete');
    LogAction(' ');

    {$IFNDEF WIN32} asm { await sleep(1000); } end; {$ENDIF}
    await(btnAccountClick(Sender));
    LogAction(' ');

    State := 'Home';

  end
  else
  begin
    LoginCheck := StringReplace(LoginCheck,': ',':<br />',[]);
    LoginCheck := StringReplace(LoginCheck,'. ','.<br />',[]);
    if Trim(LoginCheck) = '/'
    then LoginCheck := 'System Error / Server connection could not be established.';
    divLoginMessage.HTML.Text := '<div class="DropShadow">'+Copy(LoginCheck,1,Pos('/',LoginCheck) -2)+'<br/>'+Copy(LoginCheck, Pos('/',LoginCheck)+2,Length(LoginCheck));
    {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}
    divLoginMessage.ElementHandle.classList.replace('d-flex','d-none');
    editPassword.SetFocus;
    editPassword.SelectAll;
  end;

end;

procedure TForm1.btnLogoutAllClick(Sender: TObject);
begin
  // Logout All
  TWebLocalStorage.RemoveKey('Theme');
  TWebLocalStorage.RemoveKey('Login.Username');
  TWebLocalStorage.RemoveKey('Login.JWT');
  TWebLocalStorage.RemoveKey('Login.Expiry');
  TWebLocalStorage.RemoveKey('Login.PasswordHash');
  TWebLocalStorage.RemoveKey('User.Photo.'+User_Account);
  TWebLocalStorage.RemoveKey('MenusCollapsed');
  TWebLocalStorage.RemoveKey('Window.Accounts.Top');
  TWebLocalStorage.RemoveKey('Window.Accounts.Left');
  TWebLocalStorage.RemoveKey('Window.Accounts.Width');
  TWebLocalStorage.RemoveKey('Window.Accounts.Height');
  await(Logout('All', True));
end;

procedure TForm1.btnLogoutCleanClick(Sender: TObject);
begin
  // Logout Clean
  TWebLocalStorage.RemoveKey('Theme');
  TWebLocalStorage.RemoveKey('Login.Username');
  TWebLocalStorage.RemoveKey('Login.JWT');
  TWebLocalStorage.RemoveKey('Login.Expiry');
  TWebLocalStorage.RemoveKey('Login.PasswordHash');
  TWebLocalStorage.RemoveKey('User.Photo.'+User_Account);
  TWebLocalStorage.RemoveKey('MenusCollapsed');
  TWebLocalStorage.RemoveKey('Window.Accounts.Top');
  TWebLocalStorage.RemoveKey('Window.Accounts.Left');
  TWebLocalStorage.RemoveKey('Window.Accounts.Width');
  TWebLocalStorage.RemoveKey('Window.Accounts.Height');
  await(Logout('Clean', False));
end;

procedure TForm1.btnLogoutHereClick(Sender: TObject);
begin
  // Logout Here
  await(Logout('Normal', False));
end;

procedure TForm1.btnAccountChangeClick(Sender: TObject);
begin

  // Manage different Account

  HideToolTips;

end;

procedure TForm1.btnAccountClick(Sender: TObject);
var
  i: Integer;
  count: Integer;
  ResponseString: String;
begin

  i := 0;
  count := 0;

  // Account Information
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnAccount) then
  begin
    // Show window with shade
    divShade.Visible := True;
    divAccount.Visible := True;
    divShade.ElementHandle.style.setProperty('opacity','var(--bl-opacity)');
    divAccount.ElementHandle.style.setProperty('opacity','1.0');
    HideTooltips;

    LogAction(' ');
    LogAction('[ Account Settings ]');

    State := 'Account';
    StatePosition := StatePosition + 1;
    window.history.pushState(CaptureState, '', StateURL);

    editAccountName.Text := User_Account;
    editFirstName.Text := User_Firstname;
    editMiddleName.Text := User_MiddleName;
    editLastName.Text := User_LastName;
    editEMail.Text := User_EMail;

    btnFirstNameSave.Enabled := False;
    btnFirstNameCancel.Enabled := False;

    // Make sure first row is selected
    SelectAccountOption(0);

    {$IFNDEF WIN32} asm {
      this.tabAccountOptions.deselectRow();
      this.tabAccountOptions.selectRow([0]);
    } end; {$ENDIF}

    divAccount.ElementHandle.removeAttribute('data-x');
    divAccount.ElementHandle.removeAttribute('data-y');
    divAccount.ElementHandle.style.setProperty('transform', 'translate(0px,0px)');

    // Positioning
    if TWebLocalStorage.getValue('Window.Accounts.Top') <> '' then
    begin
      divAccount.ElementHandle.style.setProperty('top',TWebLocalStorage.getValue('Window.Accounts.Top')+'px');
      divAccount.ElementHandle.style.setProperty('left',TWebLocalStorage.getValue('Window.Accounts.Left')+'px');
      divAccount.ElementHandle.style.setProperty('width',TWebLocalStorage.getValue('Window.Accounts.Width')+'px');
      divAccount.ElementHandle.style.setProperty('height',TWebLocalStorage.getValue('Window.Accounts.Height')+'px');
    end
    else
    begin
      divAccount.ElementHandle.style.setProperty('top','calc(50% - 225px)');
      divAccount.ElementHandle.style.setProperty('left','calc(50% - 315px)');
      divAccount.ElementHandle.style.setProperty('width','630px');
      divAccount.ElementHandle.style.setProperty('height','450px');
    end;
    WebFormResize(Sender);

  end;

  // Reset Change Password fields
  btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap me-2 fa-2x"></i>';
  divChangePassword.ElementHandle.classList.Add('pe-none');
  editCurrentPassword.Text := '';
  editNewPassword.Text := '';
  editConfirmPassword.Text := '';
  editCurrentPasswordChange(Sender);

  // Author Profile
  divAuthorProfileName.ElementHandle.innerHTML := '<div class="LabelAlt DropShadow ps-1 pe-5" style="width: auto; overflow: hidden; text-overflow: ellipsis;">'+User_Name+'</div>';

  // Get other Account Information
  if User_Profile_Age < IncMinute(Now, -5) then
  begin
    LogAction('Retrieving Account Information');
    ResponseString := await(JSONRequest('IPersonService.Profile',[]));
    User_Profile := ResponseString;
    User_Profile_Age := Now;
  end
  else
  begin
    ResponseString := User_Profile;
  end;

  if ResponseString <> '' then
  begin
    {$IFNDEF WIN32} asm {
      var data = JSON.parse(ResponseString);

      // Account
      this.User_Birthdate = data['Profile'][0]['birthdate'] || '1900-01-01';
      this.User_Description = data['Profile'][0]['description'] || '';

      // Main Menu - Photo
      this.User_Photo = data['Photo'];
      if (this.User_Photo == '') {
        this.User_Photo = '<img width="100%" style="transform: scale(1) translate(0%, 0%);" src="icons/favicon-192x192.png">';
      }
      btnAccount.innerHTML = this.User_Photo;

      // Account Page - Logins
      this.tabAccountOptions.getRow(9).getCell('Entries').setValue(data['RecentLogins'].length.toLocaleString());
      this.tabAccountHistory.setData(data['RecentLogins']);

      // Account Page - Sessions
      this.tabAccountOptions.getRow(8).getCell('Entries').setValue(data['RecentActions'].length.toLocaleString());
      this.tabAccountSessions.setData(data['RecentActions']);

//      var lastlogin = luxon.DateTime.fromISO(data['RecentLogins'][0]['logged_in'].split(' ').join('T'),{zone:"utc"}).setZone("system").toFormat(window.DisplayDateTimeFormat);
//      iconLastLogin.innerHTML = icon['Login'];
//      labelLastLogin.innerHTML = '<span title="'+lastlogin+'">'+lastlogin+'</span>';

      // Account Page - Author Profile
      divAuthorProfilePhoto.innerHTML = this.User_Photo;
      this.LinksData = [];
      this.LinksDataBackup = [];
      var linkindex = 0;
      for (var i = 0; i < data['Contact'].length; i++) {
        if (data['Contact'][i]['contact_type'] == 'Social Media Link') {
          this.LinksData.push({
           "ID": linkindex,
           "Sort": linkindex + 1,
           "Link": data['Contact'][i]['value'],
          });
          linkindex += 1;
        }
      }
      this.tabAccountLinks.setData(this.LinksData);
      this.LinksDataBackup = JSON.parse(JSON.stringify(this.LinksData));
      this.UpdateAccountLinks();

      // Account Page - Roles
      count = 0;
      i = 0;
      var iconcache = '<div style="width:0px; height:0px; overflow:hidden;">';
      while (i < data['Role'].length) {
        if ((data['Role'][i]['valid_after'] !== null) && (data['Role'][i]['valid_until'] !== null)) {
          var valid_now = luxon.DateTime.now();
          var utczone = new Object();
          utczone.zone = 'utc';
          var valid_after = luxon.DateTime.fromISO(data['Role'][i]['valid_after'].split(' ').join('T'),utczone).setZone('system');
          var valid_until = luxon.DateTime.fromISO(data['Role'][i]['valid_until'].split(' ').join('T'),utczone).setZone('system');
          if ((valid_after < valid_now) && (valid_until > valid_now)) {
            count += 1;
          }
          iconcache += '<i class="fa-duotone '+data['Role'][i]['icon'].replace(':','')+'"></i>';
        }
        i += 1;
      }
      iconcache += '</div>';
      divShade.innerHTML += iconcache;
      this.tabAccountOptions.getRow(7).getCell('Entries').setValue(count);
      this.tabAccountRoles.setData(data['Role']);
    } end; {$ENDIF}
  end;

  // Update "window" header icon
  labelAccountTitle.HTML := '<div style="container-type: size; osition: relative; width: 35px; height: 35px; border-radius: 5px; margin:0px 4px 0px 1.51px; padding: 0px; overflow: hidden;">'+btnAccount.ElementHandle.innerHTML+'</div>'+
                            '<div class="DropShadow mt-1">'+User_Name+'</div>';

  // Author Page
  memoAuthorDescription.Lines.Text := User_Description;


  // Configure Activity Log
  btnActivityLogReloadClick(Sender);

  PreventCompilerHint(i);
  PreventCompilerHint(count);
end;

procedure TForm1.btnBlogClick(Sender: TObject);
begin
  // Blog Button Clicked

  // Toggle button highlight (Selected class sets background to Yellow)
  if (Sender is TWebButton) then
  begin
    (Sender as TWebButton).ElementHandle.ParentElement.firstElementChild.classList.toggle('Selected');
  end;


end;

procedure TForm1.btnChangeAccountEMailClick(Sender: TObject);
var
  RequestResponse: String;
  MailBody: TStringList;
  MailFont: TStringList;
  MailIcon: TStringList;

begin
  // Change EMail
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
  divChangeAccountEMail.ElementHandle.classList.Add('pe-none');

  // Send Confirmation EMail
  if editEMailCode.Visible
  then labelChangeAccountEMail.ElementHandle.innerHTML := 'Resending...'
  else labelChangeAccountEMail.ElementHandle.innerHTML := 'Sending...';

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

  MailFont := TStringList.Create;
  MailFont.LoadFromFile('fonts/cairo.woff.base64');
  MailIcon := TStringList.Create;
  MailIcon.LoadFromFile('icons/favicon-512x512.png.base64');

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
    MailBody.Add('<p>A request was just made to change the <a href="'+App_URLLink+'">'+App_Short+'</a> e-mail address linked to the '+User_Account+' account.</p>');
    MailBody.Add('<p>The current e-mail address for this account is <a href="mailto:'+User_EMail+'">'+User_EMail+'</a>.</p>');
    MailBody.Add('<p>To confirm this request, please use the following Confirmation Code:</p>');
    MailBody.Add('<p><br /><span style="font-size:20px; font-style:bold;padding-left: 20px;">{AUTHORIZATION_CODE}</span><br /><br /></p>');
    MailBody.Add('<p>Additional information:<ul>');
    MailBody.Add('<li>This code is only valid for 10 minutes.</li>');
    MailBody.Add('<li>You can use Copy & Paste to enter this code.</li>');
    MailBody.Add('<li>If you did not make this request, please disregard.</li>');
    MailBody.Add('</ul></p><br />');

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

  RequestResponse := await(StringRequest('ISystemService.SendConfirmationCode',[
    'Change EMail Address',
    editEMail.Text,
    '['+App_Short+'/'+User_Account+'] E-Mail Change Confirmation Code: {AUTHORIZATION_CODE}',
    MailBody.Text,
    App_Session,
    App_APIKey
  ]));

  if RequestResponse = 'Sent' then
  begin
    divChangeAccountEMail.ElementHandle.classList.remove('pe-none');
    editEMailCode.Text := '';
    editEMailCode.Visible := True;
    editEMailCode.SetFocus;
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Enter Confirmation Code';
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-key Swap fa-2x"></i>';
    LogAction('Confirmation Code E-Mail sent');
  end
  else
  begin
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Confirmation Code Not Sent:<br>'+RequestResponse;
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangeAccountEMail.ElementHandle.classList.add('pe-none');
    LogAction('Confirmation Code Not Sent:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnChangeAccountNameClick(Sender: TObject);
var
  RequestResponse: String;
begin
  // Change Account Name
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
  divChangeAccountName.ElementHandle.classList.Add('pe-none');

  RequestResponse := await(StringRequest('ISystemService.ChangeAccount',[
    editAccountName.Text
  ]));

  if RequestResponse = 'Success' then
  begin
    labelChangeAccountName.ElementHandle.innerHTML := 'Account Name Updated';
    LogAction('<< Account Name Changed: '+editAccountName.Text + ' >>');
    LogAction(' ');
    tmrJWTRenewalTimer(Sender);
  end
  else
  begin
    btnChangeAccountName.Caption := '<i class="fa-duotone fa-xmark Swap me-2 fa-2x"></i>';
    labelChangeAccountName.ElementHandle.innerHTML := RequestResponse;
    LogAction('Account Name Change Failed:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;


procedure TForm1.btnChangePasswordClick(Sender: TObject);
var
  RequestResponse: String;
begin
  // Change Password
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
  divChangePassword.ElementHandle.classList.Add('pe-none');

  RequestResponse := await(StringRequest('ISystemService.ChangePassword',[
    editCurrentPassword.Text,
    editNewPassword.Text,
    SHA256(editCurrentPassword.Text+'-TEST-'+editNewPassword.Text)
  ]));

  if RequestResponse = 'Success' then
  begin
    labelChangePassword.ElementHandle.innerHTML := 'Password Updated.';
    PasswordCheck := SHA256('XData-Password:'+Trim(editNewPassword.Text));
    editCurrentPassword.Text := '';
    editNewPassword.Text := '';
    editConfirmPassword.Text := '';
    TWebLocalStorage.SetValue('Login.PasswordHash', PasswordCheck);
    editCurrentPassword.SetFocus;
    LogAction('<< Password Changed >>');
    LogAction(' ');
    tmrJWTRenewalTimer(Sender);
  end
  else
  begin
    btnChangePAssword.Caption := '<i class="fa-duotone fa-xmark Swap me-2 fa-2x"></i>';
    labelChangePassword.ElementHandle.innerHTML := RequestResponse;
    LogAction('Password Change Failed:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnDescriptionCancelClick(Sender: TObject);
begin
  memoAuthorDescription.Lines.Text  := User_Description;
end;

procedure TForm1.btnDescriptionSaveClick(Sender: TObject);
var
  RequestResponse: String;
  Description: String;
begin
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
  Description := memoAuthorDescription.Lines.Text;

  LogAction('[ Saving Account Description ]');
  RequestResponse := await(StringRequest('IPersonService.UpdatePerson',[
    User_ID,
    User_FirstName,
    User_MiddleName,
    User_LastName,
    User_Birthdate,
    Description
  ]));

  if RequestResponse = 'Success' then
  begin
    btnDescriptionSave.Enabled := False;
    btnDescriptionCancel.Enabled := False;
    User_Description := memoAuthorDescription.Lines.Text;
    LogAction('<< Author Description Updated >>');
    LogAction(' ');
  end
  else
  begin
    btnDescriptionCancelClick(Sender);
    LogAction('Author Description Update Failed:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnFirstNameCancelClick(Sender: TObject);
begin
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnFirstNameCancel)
  then LogAction('[ Reverting Account Names ]');

  editFirstName.Text := User_FirstName;
  editMiddleName.Text := User_MiddleName;
  editLastName.Text := User_LastName;

  btnFirstNameSave.Enabled := False;
  btnFirstNameCancel.Enabled := False;
end;

procedure TForm1.btnFirstNameSaveClick(Sender: TObject);
var
  RequestResponse: String;
begin
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  LogAction('[ Saving Account Names ]');
  RequestResponse := await(StringRequest('IPersonService.UpdatePerson',[
    User_ID,
    Trim(editFirstName.Text),
    Trim(editMiddleName.Text),
    Trim(editLastName.Text),
    User_Birthdate,
    User_Description
  ]));

  if RequestResponse = 'Success' then
  begin
    User_FirstName := Trim(editFirstName.Text);
    User_MiddleName := Trim(editMiddleName.Text);
    User_LastName := Trim(editLastName.Text);
    User_Name := StringReplace(User_FirstName+' '+User_MiddleName+' '+User_LastName,'  ',' ',[rfReplaceAll]);

    LogAction('<< Names Updated >>');
    LogAction(' ');

    btnFirstNameSave.Enabled := False;
    btnFirstNameCancel.Enabled := False;

    tmrJWTRenewalTimer(Sender);
  end
  else
  begin
    btnFirstNameCancelClick(Sender);
    LogAction('Names Update Failed:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  HideToolTips;

  // Login
  if not(LoggedIn) then
  begin
    editUsername.Text := Trim(TWebLocalStorage.GetValue('Login.Username'));
    editPassword.Text := '';
    divShade.Visible := True;
    divLogin.Visible := True;
    divShade.ElementHandle.style.setProperty('opacity','0.7');
    divLogin.ElementHandle.style.setProperty('opacity','1.0');
    divLoginMessage.ElementHandle.classList.replace('d-flex','d-none');
    if editUsername.Text <> ''
    then editPassword.SetFocus
    else editUsername.SetFocus;
  end;
end;

procedure TForm1.btnForgotPasswordClick(Sender: TObject);
begin
  editPassword.Text := '';
  editPassword.SetFocus;
end;

procedure TForm1.btnPeriodSelect(Sender: TObject);
var
  Period: Integer;
  PeriodShort: String;
  PeriodLong: String;
  PeriodStartDisplay: String;
  PeriodStartValue: String;
  PeriodEndDisplay: String;
  PeriodEndValue: String;
  PeriodAdjustment: String;

begin

  if (Sender is TWebButton)  and ((Sender as TWebButton).Tag > 0) then
  begin
    Period := (Sender as TWebButton).Tag;
    PeriodShort := (Sender as TWebButton).Caption;
    PeriodLong := (Sender as TWebButton).Hint;
  end
  else
  begin
    if (Sender is TWebButton)
    then LogAction('Error: Unexpected Period: '+(Sender as TWebButton).Name)
    else LogAction('Error: Unexpected Period');
    exit;
  end;

  // Update Button Selection
  {$IFNDEF WIN32} asm {
    var selected = divPeriodsPresets.querySelectorAll('.Selected');
    selected.forEach(el => {
      el.classList.remove('Selected');
    });
  } end; {$ENDIF}

  (Sender as TWebButton).ElementHandle.classList.add('Selected');

  PeriodShort := '';
  PeriodLong := '';
  PeriodStartValue := '';
  PeriodStartDisplay := '';
  PeriodEndValue := '';
  PeriodEndDisplay := '';
  PeriodAdjustment := '';

  // This is how PeriodArray is gneerated, for quick reference
  //   "id":Period,
  //   "long_name": PeriodLong,
  //   "short_name": PeriodShort,
  //   "start_period" : PeriodStartValue,
  //   "end_period": PeriodEndValue,
  //   "start_period_display": PeriodStartDisplay,
  //   "end_period_display": PeriodEndDisplay,
  //   "adjustment": PeriodAdjustment,
  //   "group": "local"

  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1;
    var selected = This.PeriodArray.find(elem => elem.id === Period);
    if (selected !== undefined) {
      PeriodShort = selected['short_name'];
      PeriodLong = selected['long_name']
      PeriodStartValue = selected['start_period'];
      PeriodStartDisplay = selected['start_period_display'];
      PeriodEndValue = selected['end_period'];
      PeriodEndDisplay = selected['end_period_display'];
      PeriodAdjustment = selected['adjustment'];
      This.LogAction('[ Selected Period: '+PeriodLong+' ]');
    }
    else {
      This.LogAction('Error: Unexpected Period ('+Period+')');
    }
  } end; {$ENDIF}

  // Statistics - Logins
  if (divPeriods.Tag = 0) and (PeriodShort <> '') then
  begin
    {$IFNDEF WIN32} asm {
      var That = pas.Unit1.Form1.StatsForm;
      That.dateLoginsAdjustment = PeriodAdjustment;
      That.btnLoginsPeriod.GetElementHandle().innerHTML = PeriodLong;
      That.ModuleInit = true;
      That.dateLogins1.setDate(PeriodStartValue, true, 'Y-m-d H:i:s');
      That.ModuleInit = false;
      That.dateLogins2.setDate(PeriodEndValue, true, 'Y-m-d H:i:s');
    } end; {$ENDIF}
  end;

  divPeriodsLabelClick(Sender);

  PreventCompilerHint(Period);
  PreventCompilerHint(PeriodShort);
  PreventCompilerHint(PeriodLong);
  PreventCompilerHint(PeriodStartValue);
  PreventCompilerHint(PeriodStartDisplay);
  PreventCompilerHint(PeriodEndValue);
  PreventCompilerHint(PeriodEndDisplay);
  PreventCompilerHint(PeriodAdjustment);
end;

procedure TForm1.btnPhotoCancelClick(Sender: TObject);
begin
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnPhotoCancel)
  then LogAction('[ Cancelled Photo Change ]');

  btnPhotoSave.Enabled := False;
  btnPhotoCancel.Enabled := False;
  btnPhotoCancel.Tag := 1;

  {$IFNDEF WIN32} asm {
    if (btnAccount.firstElementChild !== null) {
      divAccountPhoto.innerHTML = btnAccount.firstElementChild.innerHTML;
      var MoveTransform = btnAccount.firstElementChild.style.getPropertyValue('transform');
      if (MoveTransform !== '') {
        divAccountPhoto.style.setProperty('transform','scale(1) transform(0cqh, 0cqh)');
        var Scale = parseFloat(MoveTransform.split(/\(|\)|cqh|, /)[1]);
        var LeftOffset = parseFloat(MoveTransform.split(/\(|\)|cqh|, /)[3]);
        var TopOffset = parseFloat(MoveTransform.split(/\(|\)|cqh|, /)[5]);

        this.pz.reset();
        this.pz.zoom(Scale);
//        divAccountPhoto.firstElementChild.style.setProperty('transform','scale(1) translate(0cqh, 0cqh)')
//        await sleep(250);
        pas.Unit1.Form1.pz.pan(
          (LeftOffset / 100) * (divAccountPhotoFG.getBoundingClientRect().width ),
          (TopOffset / 100) * (divAccountPhotoFG.getBoundingClientRect().height )
        );
      }
    }
  } end; {$ENDIF}

  {$IFNDEF WIN32} asm { await sleep(100); } end; {$ENDIF}
  btnPhotoCancel.Tag := 0;
  HideTooltips;

end;

procedure TForm1.btnPhotoClearClick(Sender: TObject);
begin
  HideTooltips;
  if divAccountPhoto.ElementHandle.innerHTML <> '' then
  begin
    divAccountPhoto.elementHandle.innerHTML := '';
    btnPhotoSave.Enabled := True;
    btnPhotoCancel.Enabled := True;
  end;
  LogAction('[ Cleared Photo ]');
end;

procedure TForm1.btnPhotoIconsClick(Sender: TObject);
begin
  HideTooltips;
  editIconSearch.Text := '';
  btnIconOK.Tag := 1; // Account Photo

  divShade2.Visible := True;
  divIconSearch.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','var(--bl-opacity)');
  divIconSearch.ElementHandle.style.setProperty('opacity','1.0');

  LogAction(' ');
  LogAction('[ Searching Photo Icons ]');

  State := 'Icons';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);

  editIconSearch.setFocus;

end;

procedure TForm1.btnPhotoResetClick(Sender: TObject);
begin
  HideTooltips;
  LogAction('[ Reset Photo Size / Position ]');

  btnRotate.Tag := 0;
  {$IFNDEF WIN32} asm {
    // Reset Pan/Zoom
    pas.Unit1.Form1.pz.reset();
    btnRotate.Tag = 0;
    divAccountPhoto.firstElementChild.style.removeProperty('transform');
  } end; {$ENDIF}
end;

procedure TForm1.btnPhotoSaveClick(Sender: TObject);
var
  RequestResponse: String;
  Rotation: Integer;

begin
  HideTooltips;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  LogAction('[ Saving Account Photo ]');

  Rotation := btnRotate.Tag;
  {$IFNDEF WIN32} asm {
    var Scale = this.pz.getScale();
    var Pan = this.pz.getPan();
    var br = divAccountPhoto.getBoundingClientRect();
    var TopOffset = 100 * Scale * Pan.y / br.height;
    var LeftOffset = 100 * Scale * Pan.x / br.width;

    divAuthorProfilePhoto.innerHTML = '<div style="width: 100%; height: 100%;">'+divAccountPhoto.innerHTML+'</div>';
    if (divAuthorProfilePhoto.firstElementChild !== null) {
      divAuthorProfilePhoto.firstElementChild.style.setProperty('transform','scale('+Scale+') translate('+LeftOffset+'cqh,'+TopOffset+'cqh)');
      this.User_Photo = divAuthorProfilePhoto.innerHTML;
    } else {
      this.User_Photo = '<div><img width="100%" style="scale(1) translate(0cqh, 0cqh);" src="icons/favicon-192x192.png"></div>';
      divAuthorProfilePhoto.innerHTML = this.User_Photo;
    }
    btnAccount.innerHTML = divAuthorProfilePhoto.innerHTML;
  } end; {$ENDIF}


  labelAccountTitle.HTML := '<div style="container-type: size; position: relative; width: 35px; height: 35px; border-radius: 5px; margin:0px 4px 0px 1.51px; padding: 0px; overflow: hidden;">'+btnAccount.ElementHandle.innerHTML+'</div>'+
                            '<div class="DropShadow mt-1">'+User_Name+'</div>';

  TWebLocalStorage.SetValue('User.Photo.'+User_Account, User_Photo);

  RequestResponse := await(StringRequest('IPersonService.UpdatePersonPhoto',[
    User_ID,
    User_Photo
  ]));

  if RequestResponse = 'Success' then
  begin
    btnPhotoSave.Enabled := False;
    btnPhotoCancel.Enabled := False;
    LogAction('<< Account Photo Updated >>');
    LogAction(' ');
  end
  else
  begin
    btnPhotoSave.Enabled := True;
    btnPhotoCancel.Enabled := True;
    LogAction('Account Photo Update Failed:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';

  PreventCompilerHint(Rotation);
end;

procedure TForm1.btnPhotoUploadClick(Sender: TObject);
begin
  HideTooltips;
  LogAction('[ Uploading Photo ]');
  {$IFNDEF WIN32} asm {
    fileinput.click();
  } end; {$ENDIF}
end;

procedure TForm1.btnPhotoURLClick(Sender: TObject);
begin
  HideTooltips;
  editURL.Text := '';
  {$IFNDEF WIN32} asm {
    editURLLabel.innerHTML = 'Enter an Image Link';
  } end; {$ENDIF}
  btnURLOK.Tag := 1; // Photo URL

  divShade2.Visible := True;
  divURL.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','var(--bl-opacity)');
  divURL.ElementHandle.style.setProperty('opacity','1.0');

  LogAction(' ');
  LogAction('[ Requesting Photo URL ]');

  editURL.setFocus;

end;

procedure TForm1.btnRegisterClick(Sender: TObject);
begin
  // Register Account

end;

procedure TForm1.btnRotateClick(Sender: TObject);
begin
  if btnRotate.Tag = 0 then
  begin
    btnRotate.Tag := 45;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.setProperty('transform','rotate(45deg)');
    } end; {$ENDIF}
  end
  else if btnRotate.Tag = 45 then
  begin
    btnRotate.Tag := 90;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.setProperty('transform','rotate(90deg)');
    } end; {$ENDIF}
  end
  else if btnRotate.Tag = 90 then
  begin
    btnRotate.Tag := 135;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.setProperty('transform','rotate(135deg)');
    } end; {$ENDIF}
  end
  else if btnRotate.Tag = 135 then
  begin
    btnRotate.Tag := 180;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.setProperty('transform','rotate(180deg)');
    } end; {$ENDIF}
  end
  else if btnRotate.Tag = 180 then
  begin
    btnRotate.Tag := 225;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.setProperty('transform','rotate(225deg)');
    } end; {$ENDIF}
  end
  else if btnRotate.Tag = 225 then
  begin
    btnRotate.Tag := 270;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.setProperty('transform','rotate(270deg)');
    } end; {$ENDIF}
  end
  else if btnRotate.Tag = 270 then
  begin
    btnRotate.Tag := 315;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.setProperty('transform','rotate(315deg)');
    } end; {$ENDIF}
  end
  else if btnRotate.Tag = 315 then
  begin
    btnRotate.Tag := 0;
    {$IFNDEF WIN32} asm {
      divAccountPhoto.firstElementChild.style.removeProperty('transform');
    } end; {$ENDIF}
  end;

  LogAction('[ Rotated Photo: '+IntToStr(btnRotate.tag)+'deg ]');
  PhotoChanged;
  HideToolTips;
end;

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  HideToolTips;
  // Search for Blogs

end;

procedure TForm1.btnSelectActivityLogClick(Sender: TObject);
var
  SessionCount: Integer;
begin
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  divShade2.Visible := True;
  divSessions.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','var(--bl-opacity)');
  divSessions.ElementHandle.style.setProperty('opacity','1.0');

  SessionCount := 0;
  {$IFNDEF WIN32} asm {
    this.tabAccountSessions.redraw(true);
    SessionCount = this.tabAccountSessions.getDataCount();
    divSessionList.firstElementChild.style.setProperty('position','absolute');
    divSessionList.firstElementChild.style.setProperty('z-index', '10');
    divSessionList.firstElementChild.style.setProperty('top', 'px');
  } end; {$ENDIF}

  LogAction(' ');
  LogAction('[ Searching Sessions ]');

  State := 'Sessions';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);

  if SessionCount < 100
  then HideToolTips;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnServerStatsClick(Sender: TObject);
var
  ElapsedTime: TDateTime;

  procedure AfterCreate(AForm: TObject);
  begin
    LogAction('[ Server Statistics ]');
    LogAction('Statistics Form Loaded ('+IntToStr(MillisecondsBetween(Now, ElapsedTime))+'ms)');
  end;

begin
  divShade2.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','0.85');
  divStatistics.Visible := True;
  divStatistics.ElementHandle.classList.replace('d-none','d-flex');

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}
  divStatistics.ElementHandle.style.setProperty('opacity','1');


  // Time this action
  ElapsedTime := Now;

   // Launch Form
  StatsForm := TForm2.CreateNew(divStatisticsHolder.ElementID, @AfterCreate);

  State := 'Statistics';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);



  HideTooltips;
end;

procedure TForm1.btnForgotUsernameClick(Sender: TObject);
begin
  editUsername.Text := '';
  editUsername.SetFocus;
end;

procedure TForm1.btnIconCancelClick(Sender: TObject);
begin
  divShade2.ElementHandle.style.setProperty('opacity','0');
  divIconSearch.ElementHandle.style.setProperty('opacity','0');

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

  divIconSearch.Visible := False;
  divShade2.Visible := False;

  State := 'Account';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);

end;

procedure TForm1.btnIconOKClick(Sender: TObject);
begin
  if IconSelected <> '' then
  begin
    {$IFNDEF WIN32} asm {
      divAccountPhoto.innerHTML = '';
      this.pz.reset();
      divAccountPhoto.innerHTML = this.IconSelected;
    } end; {$ENDIF}
  end;
  btnIconCancelClick(Sender);

end;

procedure TForm1.btnIconSearchClick(Sender: TObject);
var
  Search: String;
  IconSize: Integer;
  MaxResults: Integer;
  SearchLib: String;
begin
  // Icon names are always lower case, so search with that
  Search := LowerCase(Trim(editIconSearch.text));

  // Limit returns while typing
  MaxResults := 500;
  IconSize := 40;
  SearchLib := 'all';

  // Must have something to search for and somewhere to search
  if Trim(Search) = '' then
  begin
    {$IFNDEF WIN32} asm {
      divIconSearchResultsInner.replaceChildren();
    } end; {$ENDIF}
    exit;
  end;

  {$IFNDEF WIN32} asm {

    // Build a new results array
    var results = [];

    // Search for at most three terms
    var searchterms = Search.split(' ').slice(0,3).join(' ');

    var response = await fetch(this.Server_URL+'/SystemService/SearchIconSets'+
      '?SearchTerms='+encodeURIComponent(searchterms)+
      '&SearchSets=all'+
      '&Results='+MaxResults);
    var results = await response.json();

    // Sort results by icon name
    results = results.sort((a, b) => {
      if (a[0] < b[0]) {
        return -1;
      }
    });

    // Update count
    pas.Unit1.Form1.LogAction('[ Icon Search: '+Search+' ('+results.length+' results) ]');
    divIconSearchData.innerHTML = '<div>Results: <span style="color: var(--bl-color-input);">'+results.length+'</span></div>';
    this.IconResults = results.length;

    // Clear existing results
    divIconSearchResultsInner.replaceChildren();

    // Create icons for display
    var display = '';
    for (var i = 0; i < results.length; i++) {

      // Figure out which library we're using - note that it is now sorted differently
      var lib = this.IconSetList.find( o => o.library == results[i][1]);

      // Each library has its default width and height, and then overrides at the icon level
      var iconheight = results[i][2].height || lib.height;
      var iconwidth = results[i][2].width || lib.width;

      var displayicon = '<div style="font-size:'+IconSize+'px;" class="SearchIcon" '+
                             'icon-library="'+lib.name+'" '+
                             'icon-license="'+lib.license+'">'+
                           '<svg class="pe-none" width="100%" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" '+
                             'viewBox="0 0 '+iconwidth+' '+iconheight+'">'+
                               results[i][2].body+
                           '</svg>'+
                           '<div class="IconName text-wrap" style="font-size:12px; text-align:center; width:100%;">'+
                             results[i][0]+
                           '</div>'+
                         '</div>';

      display += displayicon;
    }
    divIconSearchResultsInner.innerHTML = display;

  } end; {$ENDIF}

  PreventCompilerHint(IconSize);
  PreventCompilerHint(MaxResults);
  PreventCompilerHint(SearchLib);
end;

procedure TForm1.ActivityLogChange(Sender: TObject);
var
  Response: String;
  RemoteActionLog: TStringList;
  LocalActionLog: TStringList;
  LogLine: String;
  OldDate: TDateTime;
  NewDate: TDateTime;
  i: Integer;
begin

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  // Reload current session data
  if Pos('Now', btnSelectActivityLog.Caption) > 0 then
  begin
    btnActivityLogReloadClick(Sender);
  end
  else
  begin

    Response := await(JSONRequest('IPersonService.ActionLog',[User_ID, Current_ActionLog]));
    {$IFNDEF WIN32} asm {
      var resp = JSON.parse(Response);
      Response = resp['ActionsLog'][0].actions;
    } end; {$ENDIF}
    RemoteActionLog := TStringList.Create;
    RemoteActionLog.Text := Response;

    if btnActivityLogTimezone.Tag = 1 then
    begin
      LocalActionLog := TStringList.Create;
      i := 0;
      while i < RemoteActionLog.Count do
      begin
        LogLine := RemoteActionLog[i];

        if Copy(LogLine,24,5) = ' UTC ' then
        begin
          OldDate := EncodeDateTime(
            StrToInt(Copy(LogLine,1,4)),
            StrToInt(Copy(LogLine,6,2)),
            StrToInt(Copy(LogLine,9,2)),
            StrToInt(Copy(LogLine,12,2)),
            StrToInt(Copy(LogLine,15,2)),
            StrToInt(Copy(LogLine,18,2)),
            StrToInt(Copy(LogLine,21,3))
          );
          NewDate := IncMinute(OldDate, - App_TZOffset);
          LogLine := FormatDateTime(App_LogDateTimeFormat, NewDate)+Copy(LogLine,28,length(LogLine));
        end;

        LocalActionLog.Add(LogLine);
        i := i + 1;
      end;
      divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+LocalActionLog.Text+'</pre>';
    end
    else
    begin
      divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+RemoteActionLog.Text+'</pre>';
    end;
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';

end;

procedure TForm1.btnThemeDarkClick(Sender: TObject);
begin
  HideToolTips;

  // Switch Themes - only 'dark' and 'light' for now
  if Theme = 'Dark' then
  begin
    btnThemeDark.ElementHandle.style.setProperty('opacity','0');
    btnThemeRed.ElementHandle.style.setProperty('opacity','1');
    Theme := 'Red';
  end
  else if Theme = 'Red' then
  begin
    btnThemeRed.ElementHandle.style.setProperty('opacity','0');
    btnThemeLight.ElementHandle.style.setProperty('opacity','1');
    Theme := 'Light';
  end
  else if Theme = 'Light' then
  begin
    btnThemeLight.ElementHandle.style.setProperty('opacity','0');
    btnThemeDark.ElementHandle.style.setProperty('opacity','1');
    Theme := 'Dark';
  end;

  // If Font Awesome Pro is not available, switch to the free version
  // btnTheme.Caption := StringReplace(btnTheme.Caption,'fa-duotone','fa-solid',[]);

  // this sets the 'theme' attribute in the top-most <html> tag
  document.documentElement.setAttribute('theme', Theme);
  TWebLocalStorage.SetValue('Theme',Theme);
  LogAction('[ Changed Theme: '+Theme+' ]');
end;

procedure TForm1.btnURLCancelClick(Sender: TObject);
begin
  divShade2.ElementHandle.style.setProperty('opacity','0');
  divURL.ElementHandle.style.setProperty('opacity','0');

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

  divURL.Visible := False;
  divShade2.Visible := False;

  State := 'Account';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);
end;

procedure TForm1.btnURLOKClick(Sender: TObject);
var
  RowCount: Integer;
  Link: String;
begin

  // Account Photo
  if btnURLOK.Tag = 1 then
  begin
    divAccountPhoto.ElementHandle.style.setProperty('transform','scale(1) translate(0%, 0%)');
    divAccountPhoto.ElementHandle.innerHTML := '<img width="100%" src="'+editURL.Text+'">';
    {$IFNDEF WIN32} asm {
      this.pz.reset();
    } end; {$ENDIF}
    PhotoChanged;
    LogAction('[ New Photo URL Selected ]');
  end

  // Insert Account Author Profile Link
  else if btnURLOK.Tag = 2 then
  begin
    RowCount := -1;
    Link := editURL.Text;
    {$IFNDEF WIN32} asm {
      var This = pas.Unit1.Form1;
      var newid = This.tabAccountLinks.getDataCount();
      This.tabAccountLinks.addRow({
        "ID": newid,
        "Sort": newid,
        "Link": Link
      });
      RowCount = newid;
    } end; {$ENDIF}

    HideTooltips;
    UpdateAccountLinks();
    LogAction('[ Insert Account Link (#'+IntToStr(RowCount)+'): '+Link+' ]');
  end

  // Edit Account Author Profile Link
  else if btnURLOK.Tag = 3 then
  begin
    RowCount := -1;
    Link := editURL.Text;
    {$IFNDEF WIN32} asm {
      var This = pas.Unit1.Form1;
      var tab = This.tabAccountLinks;
      var rows = tab.getSelectedRows();
      rows[0].getCell('Link').setValue(Link);
    } end; {$ENDIF}

    HideTooltips;
    UpdateAccountLinks();
    LogAction('[ Edited Account Link (#'+IntToStr(RowCount)+'): '+Link+' ]');
  end;
  btnURLCancelClick(Sender);
end;

function TForm1.CaptureState: JSValue;
begin
  Result := nil;
  // Return state of some kind
  {$IFNDEF WIN32} asm {
    Result = {
      "StatePosition": this.StatePosition,
      "StateURL": this.URL,
      "State": this.State
    }
  } end; {$ENDIF}
end;

procedure TForm1.AddBootstrapTooltips;
begin
  // If Font Awesome Pro is not available, switch to the free version
  //Button.Caption := StringReplace(Button.Caption,'fa-duotone','fa-solid',[]);

  {$IFNDEF WIN32} asm {
    var elements = document.querySelectorAll('button');
    var hint = '';
    for (var i = 0; i < elements.length; i++) {
      if (elements[i].id !== undefined) {
        hint = eval('pas.Unit1.Form1.'+elements[i].id+'.FHint');
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

  HideTooltips;
end;

procedure TForm1.divPeriodsLabelClick(Sender: TObject);
begin
  // Serves as our close button
  divShade3.ElementHandle.style.setProperty('opacity','0');
  divPeriods.ElementHandle.style.setProperty('opacity','0');

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

  divPeriods.Visible := False;
  divShade3.Visible := False;

  if divPeriods.Tag = 0 then State := 'Statistics';

  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);
end;

procedure TForm1.divSessionListLabelClick(Sender: TObject);
begin
  // Serves as our close button
  divShade2.ElementHandle.style.setProperty('opacity','0');
  divSessions.ElementHandle.style.setProperty('opacity','0');

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

  divSessions.Visible := False;
  divShade2.Visible := False;

  State := 'Account';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);

end;

procedure TForm1.divShade2Click(Sender: TObject);
begin
  if divSessions.Visible then divSessionListLabelClick(Sender)
  else if divURL.Visible then btnURLCancelClick(Sender)
  else if divIconSearch.Visible then btnIconCancelClick(Sender)
  else if divStatistics.Visible then divStatisticsLabelClick(Sender);
end;

procedure TForm1.divShade3Click(Sender: TObject);
begin
  if divPeriods.Visible then divPeriodsLabelClick(Sender);
end;

procedure TForm1.divShadeClick(Sender: TObject);
begin
  if divAccount.Visible then btnAccountCloseClick(Sender);
  if divLogin.Visible then btnLoginCancelClick(Sender);
end;

procedure TForm1.divStatisticsLabelClick(Sender: TObject);
begin
  // Serves as our close button
  divShade2.ElementHandle.style.setProperty('opacity','0');
  divStatistics.ElementHandle.style.setProperty('opacity','0');
  LogAction('[ Statistics Closed ]');

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

  StatsForm.Close();
  StatsForm := nil;

  divStatistics.Visible := False;
  divShade2.Visible := False;
  divStatistics.ElementHandle.classList.replace('d-flex','d-none');

  State := 'Account';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);
end;

function TForm1.AccountIsValid(acct: String):String;
var
  i: Integer;
  fail: Integer;
  RequestResponse: String;
const
//    Nums: array[0..9] of String = ('0','1','2','3','4','5','6','7','8','9');
    // removed hyphen, dot, and forward slash
  Syms: array[0..25] of String = ('!','@','#','$','%','^','&','*','(',')','+','=',',','<','>','?','`','~','[',']','{','}','\','|',';',':');

begin
  Result := '';

  // Must have 4-32 characters
  if (Length(Trim(acct)) < 4) or (Length(Trim(acct)) > 50) then Result := Result + 'L';

  // Must not have any blank spaces
  if Pos(' ',acct) > 0 then Result := Result + 'B';

  // Must not start with a number
//  fail := 0;
//  for i := 0 to 9 do
//     if Pos(Nums[i], acct) = 1 then fail := fail + 1;
//  if fail > 0 then Result := Result + 'N';

  // Must not have a symbol
  fail := 0;
  for i := 0 to 25 do
    if Pos(Syms[i], acct) = 0 then fail := fail + 1;
  if fail <> 26 then Result := Result + 'S';

  // Must be unique - only check this when everything else passes
  if Result = '' then
  begin
    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
     RequestResponse := await(StringRequest('ISystemService.CheckUniqueAccount',[
      acct
    ]));
    if RequestResponse = 'false' then Result := Result + 'U';
    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
  end;
end;

procedure TForm1.editAccountNameChange(Sender: TObject);
var
  ValidTest: String;
  ValidText: String;

begin
  ValidTest := await(AccountIsValid(editAccountName.Text));

  if (Trim(editAccountName.Text) = '') or (Trim(editAccountName.Text) = User_Account) then
  begin
    btnChangeAccountName.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangeAccountName.ElementHandle.classList.Add('pe-none');
    labelChangePassword.ElementHandle.innerHTML := 'Enter New Account Name';
  end
  else if ValidTest <> '' then
  begin
    btnChangeAccountName.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangeAccountName.ElementHandle.classList.Add('pe-none');
    ValidText := 'Invalid Account Name:';
    if Pos('L', ValidTest) > 0 then ValidText := ValidText + '<br> - Between 4 and 50 characters';
    if Pos('B', ValidTest) > 0 then ValidText := ValidText + '<br> - No spaces';
//    if Pos('N', ValidTest) > 0 then ValidText := ValidText + '<br> - Must not start with a number';
    if Pos('S', ValidTest) > 0 then ValidText := ValidText + '<br> - No symbols except - . /';
    if Pos('U', ValidTest) > 0 then ValidText := ValidText + '<br> - Not Available';
    labelChangeAccountName.ElementHandle.innerHTML := ValidText;
  end
  else
  begin
    btnChangeAccountName.Caption := '<i class="fa-duotone fa-check Swap fa-2x"></i>';
    divChangeAccountName.ElementHandle.classList.remove('pe-none');
    labelChangeAccountName.ElementHandle.innerHTML := 'Save New Account Name';
  end;
end;

procedure TForm1.editCurrentPasswordChange(Sender: TObject);
var
  ComplexTest: String;
  ComplexText: String;

  function IsComplex(pass: String):String;
  var
    i: Integer;
    fail: Integer;
  const
    Nums: array[0..9] of String = ('0','1','2','3','4','5','6','7','8','9');
    Syms: array[0..28] of String = ('!','@','#','$','%','^','&','*','(',')','-','+','=',',','.','<','>','/','?','`','~','[',']','{','}','\','|',';',':');
  begin
    Result := '';

    // Must have at least 8 characters
    if (Length(Trim(pass)) < 8) or (Length(Trim(pass)) > 50) then Result := Result + 'L';

    // Must have upper + lower case characters
    if (CompareStr(pass, LowerCase(pass)) = 0) or (CompareStr(pass, UpperCase(pass)) = 0) then Result := Result + 'C';

    // Must have a number
    fail := 0;
    for i := 0 to 9 do
      if Pos(Nums[i], pass) = 0 then fail := fail + 1;
    if fail = 10 then Result := Result + 'N';

    // Must have a symbol
    fail := 0;
    for i := 0 to 28 do
      if Pos(Syms[i], pass) = 0 then fail := fail + 1;
    if fail = 29 then Result := Result + 'S';

  end;

begin
  ComplexTest := IsComplex(editNewPassword.Text);

  if (Trim(editCurrentPassword.Text) = '') then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.ElementHandle.innerHTML := 'Enter Current Password';
  end
  else if (SHA256('XData-Password:'+Trim(editCurrentPassword.Text)) <> PasswordCheck)  then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.ElementHandle.innerHTML := 'Current Password Does Not Match Login Password';
  end
  else if Trim(editNewPassword.Text) = '' then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.ElementHandle.innerHTML := 'Enter New Password';
  end
  else if ComplexTest <> '' then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    ComplexText := 'New Password is not complex enough:';
    if Pos('L', ComplexTest) > 0 then ComplexText := ComplexText + '<br> - Between 8 and 50 characters';
    if Pos('C', ComplexTest) > 0 then ComplexText := ComplexText + '<br> - Mix of uppercase and lowercase';
    if Pos('N', ComplexTest) > 0 then ComplexText := ComplexText + '<br> - At least one number';
    if Pos('S', ComplexTest) > 0 then ComplexText := ComplexText + '<br> - At least one symbol';
    labelChangePassword.ElementHandle.innerHTML := ComplexText;
  end
  else if Trim(editConfirmPassword.Text) = '' then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.ElementHandle.innerHTML := 'Confirm New Password';
  end
  else if Trim(editNewPassword.Text) <> Trim(editConfirmPassword.Text) then
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.Add('pe-none');
    labelChangePassword.ElementHandle.innerHTML := 'New Password and Confirm Password Do Not Match';
  end
  else
  begin
    btnChangePassword.Caption := '<i class="fa-duotone fa-check Swap fa-2x"></i>';
    divChangePassword.ElementHandle.classList.remove('pe-none');
    labelChangePassword.ElementHandle.innerHTML := 'Save New Password';
  end;
end;

function TForm1.EMailIsValid(EMail: String):String;
var
  RequestResponse: String;

begin

  Result := 'F';
  {$IFNDEF WIN32} asm {
    // https://www.regextester.com/115911
    var validformat = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/;
    if (EMail.match(validformat)) {
      Result = 'P'
    } else {
      Result = 'F'
    }
  } end; {$ENDIF}

  // Must be unique - only check this when everything else passes
  if Result = 'P' then
  begin
    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
     RequestResponse := await(StringRequest('ISystemService.CheckUniqueEMail',[
      EMail
    ]));
    if RequestResponse = 'false' then Result := 'U';
    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
  end;
end;

procedure TForm1.editEMailChange(Sender: TObject);
var
  EMailValid: String;

begin
  editEMailCode.Visible := False;
  EMailValid := await(EMailIsValid(editEMail.Text));
  if (Trim(editEMail.Text) = '') or (Trim(editEMail.Text) = User_EMail) then
  begin
    divChangeAccountEMail.ElementHandle.classList.add('pe-none');
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Enter New E-Mail Address';
  end
  else if (EmailValid= 'P') then
  begin
    divChangeAccountEMail.ElementHandle.classList.remove('pe-none');
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-paper-plane Swap fa-2x"></i>';
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Send Confirmation Code';
  end
  else if (EmailValid= 'U') then
  begin
    divChangeAccountEMail.ElementHandle.classList.add('pe-none');
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Enter Valid E-Mail Address<br />- E-Mail Address is not available';
  end
  else
  begin
    divChangeAccountEMail.ElementHandle.classList.add('pe-none');
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Enter Valid E-Mail Address';
  end;
end;

procedure TForm1.editEMailCodeChange(Sender: TObject);
var
  RequestResponse: String;
begin
  if Length(Trim(editEMailCode.Text)) = 6 then
  begin
    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

    RequestResponse := await(StringRequest('ISystemService.VerifyConfirmationCode',[
      editEMail.Text,
      App_Session,
      editEMailCode.Text,
      App_APIKey,
      'EMAIL-'+IntToStr(User_ID)
    ]));

    if RequestResponse = 'Success' then
    begin
      divChangeAccountEMail.ElementHandle.classList.add('pe-none');
      btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-check Swap fa-2x"></i>';
      labelChangeAccountEMail.ElementHandle.innerHTML := 'Code Cofirmed';
      editEMailCode.Visible := False;

      {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

      labelChangeAccountEMail.ElementHandle.innerHTML := 'E-Mail Address Updated';
      LogAction('<< E-Mail Address Updated >>');
      LogAction(' ');
      User_EMail := editEMail.text;
      tmrJWTRenewalTimer(Sender);
    end
    else if RequestResponse = 'Invalid' then
    begin
      labelChangeAccountEMail.ElementHandle.innerHTML := 'Code Invalid - Try Again.';
      editEMailCode.Text := '';
      LogAction('E-Mail Address Confirmation Code Invalid');
    end
    else
    begin
      divChangeAccountEMail.ElementHandle.classList.add('pe-none');
      labelChangeAccountEMail.ElementHandle.innerHTML := 'E-Mail Update Failed: <br>'+RequestResponse;
      editEMailCode.Visible := False;
      LogAction('E-Mail Address Update Failed:');
      LogAction(RequestResponse);
    end;

    btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';

  end;
end;

procedure TForm1.editFirstNameChange(Sender: TObject);
begin

  if (Trim(editFirstName.Text) <> User_FirstName) or
     (Trim(editMiddleName.Text) <> User_MiddleName) or
     (Trim(editLastName.Text) <> User_MiddleName)
  then btnFirstNameCancel.Enabled := True
  else btnFirstNameCancel.Enabled := False;

  if (Trim(editFirstName.Text) <> '') and
     (Trim(editLastName.Text) <> '') and
     (btnFirstNameCancel.Enabled = True)
  then btnFirstNameSave.Enabled := True
  else btnFirstNameSave.Enabled := False;

end;

procedure TForm1.FinalRequest;
begin
  LogAction(' ');
  LogAction('Browser Closed');
  LogAction('Session Duration: '+FormatDateTime('h"h "m"m "s"s"', Now - App_Start));
  LoggedIn := False;
  tmrJWTRenewalTimer(nil);
end;

procedure TForm1.btnLinkCancelClick(Sender: TObject);
begin
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLinkCancel)
  then LogAction('[ Revert Account Links ]')
  else LogAction('Reverting Account Links');

  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1;
    var tab = This.tabAccountLinks;
    This.LinksData = JSON.parse(JSON.stringify(This.LinksDataBackup));
    tab.setData(This.LinksData);
  } end; {$ENDIF}

  HideTooltips;
  UpdateAccountLInks;
  divAccountLinks.SetFocus();
end;

procedure TForm1.btnLinkDeleteClick(Sender: TObject);
var
  Link: String;
begin
  Link := 'not defined';
  {$IFNDEF WIN32}
  asm
    var This = pas.Unit1.Form1;
    var tab = This.tabAccountLinks;
    var rows = tab.getSelectedRows();
    tab.deselectRow();
    if (rows.length == 1) {
      var rowcount = tab.getDataCount();
      var rowpos = tab.getRowPosition(rows[0]);
      // If more than one row, select a new row
      if (rowcount > 1) {
        if (rowpos == rowcount) {
          tab.selectRow(tab.getRowFromPosition(rowpos - 1));
        } else {
          tab.selectRow(tab.getRowFromPosition(rowpos + 1));
        }
      }
      Link = rows[0].getCell('Link').getValue();
      rows[0].delete();
    }
  end;
  {$ENDIF}

  HideTooltips;
  UpdateAccountLinks;
  divAccountLinks.SetFocus();
  LogAction('[ Delete Account Link: '+Link+' ]');
end;

procedure TForm1.btnLinkEditClick(Sender: TObject);
var
  CurrentLink: String;
begin
  CurrentLink := 'none';
  {$IFNDEF WIN32} asm {
    var This = pas.Unit1.Form1;
    var tab = This.tabAccountLinks;
    var rows = tab.getSelectedRows();
    if (rows.length == 1) {
      CurrentLink = rows[0].getCell('Link').getValue();
    }
  } end; {$ENDIF}

  if CurrentLink <> 'none' then
  begin
    editURL.Text :=  CurrentLink;
    {$IFNDEF WIN32} asm {
      editURLLabel.innerHTML = 'Edit Social Media / Contact Link';
    } end; {$ENDIF}
    btnURLOK.Tag := 3; // Edit Account Author Profile Link

    divShade2.Visible := True;
    divURL.Visible := True;
    divShade2.ElementHandle.style.setProperty('opacity','var(--bl-opacity)');
    divURL.ElementHandle.style.setProperty('opacity','1.0');
    HideTooltips;

    LogAction(' ');
    LogAction('[ Editing Social Media URL ]');
  end;
end;

procedure TForm1.btnLinkInsertClick(Sender: TObject);
begin
  editURL.Text := '';
  {$IFNDEF WIN32} asm {
    editURLLabel.innerHTML = 'Enter a Social Media / Contact Link';
  } end; {$ENDIF}
  btnURLOK.Tag := 2; // Insert Account Author Profile Link

  divShade2.Visible := True;
  divURL.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','var(--bl-opacity)');
  divURL.ElementHandle.style.setProperty('opacity','1.0');
  HideTooltips;

  LogAction(' ');
  LogAction('[ Requesting Social Media URL ]');

  editURL.setFocus;
end;

procedure TForm1.btnLinkSaveClick(Sender: TObject);
var
  RequestResponse: String;
  LinkSave: String;
begin
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  LinkSave := '';
  {$IFNDEF WIN32} asm {
    LinkSave = JSON.stringify(pas.Unit1.Form1.tabAccountLinks.getData());
  } end; {$ENDIF}

  LogAction('[ Saving Account Links ]');
  RequestResponse := await(StringRequest('IPersonService.UpdatePersonLinks',[
    User_ID,
    LinkSave
  ]));

  if RequestResponse = 'Success' then
  begin
    {$IFNDEF WIN32} asm {
      btnLinkSave.setAttribute('disabled','');
      btnLinkCancel.setAttribute('disabled','');
      this.LinksDataBackup = JSON.parse(LinkSave);
      LogAction('<< Account Links Updated >>');
      LogAction(' ');
    } end; {$ENDIF}
  end
  else
  begin
    btnLinkCancelClick(Sender);
    LogAction('Account Links Update Failed:');
    LogAction(RequestResponse);
  end;

  HideTooltips;
  divAccountLinks.SetFocus();
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnLoginCancelClick(Sender: TObject);
begin
  divShade.ElementHandle.style.setProperty('opacity','0.0');
  divLogin.ElementHandle.style.setProperty('opacity','0.0');
  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}
  divShade.Visible := False;
  divLogin.Visible := False;
end;

procedure TForm1.btnAccountCloseClick(Sender: TObject);
begin
  HideTooltips;

  TWebLocalStorage.SetValue('Window.Accounts.Top',FloatToStr(divAccount.ElementHandle.getBoundingClientRect.top));
  TWebLocalStorage.SetValue('Window.Accounts.Left',FloatToStr(divAccount.ElementHandle.getBoundingClientRect.left));
  TWebLocalStorage.SetValue('Window.Accounts.Width',FloatToStr(divAccount.ElementHandle.getBoundingClientRect.width));
  TWebLocalStorage.SetValue('Window.Accounts.Height',FloatToStr(divAccount.ElementHandle.getBoundingClientRect.height));

  divShade.ElementHandle.style.setProperty('opacity','0.0');
  divAccount.ElementHandle.style.setProperty('opacity','0.0');

  {$IFNDEF WIN32} asm { await sleep(500); } end; {$ENDIF}

  divShade.Visible := False;
  divAccount.Visible := False;
  divAccount.ElementHandle.removeAttribute('data-x');
  divAccount.ElementHandle.removeAttribute('data-y');
  divAccount.ElementHandle.style.removeProperty('transform');

  LogAction('[ Account Settings Closed ]');
  LogAction(' ');

  State := 'Home';
  StatePosition := StatePosition + 1;
  window.history.pushState(CaptureState, '', StateURL);

  await(tmrJWTRenewalTimer(Sender));
end;

procedure TForm1.btnAccountRefreshClick(Sender: TObject);
begin
  HideToolTips;
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin Swap fa-xl"></i>';

  if (Sender is TWebButton) and ((Sender as TWebButton) = btnAccountRefresh)
  then LogAction('[ Account Settings Refresh ]')
  else LogAction('Refreshing Account Settings');

  User_Profile_Age := Now - 1;
  await(btnAccountClick(Sender));

  LogAction('Account Settings Refreshed');
  btnActivityLogReloadClick(Sender);

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;


procedure TForm1.btnActivityLogReloadClick(Sender: TObject);
var
  LocalActionLog: TStringList;
  LogLine: String;
  i: integer;
  OldDate: TDateTime;
  NewDate: TDateTime;
begin

  if btnActivityLogTimezone.Tag = 1 then
  begin
    btnSelectActivityLog.Caption := 'Now: '+FormatDateTime(App_LogDateTimeFormat, App_Start);
    LocalActionLog := TStringList.Create;
    i := 0;
    while i < ActionLog.Count do
    begin
      LogLine := ActionLog[i];

      if Copy(LogLine,24,6) = ' UTC  ' then
      begin
        OldDate := EncodeDateTime(
          StrToInt(Copy(LogLine,1,4)),
          StrToInt(Copy(LogLine,6,2)),
          StrToInt(Copy(LogLine,9,2)),
          StrToInt(Copy(LogLine,12,2)),
          StrToInt(Copy(LogLine,15,2)),
          StrToInt(Copy(LogLine,18,2)),
          StrToInt(Copy(LogLine,21,3))
        );
        NewDate := IncMinute(OldDate, - App_TZOffset);
        LogLine := FormatDateTime(App_LogDateTimeFormat, NewDate)+Copy(LogLine,28,length(LogLine));
      end;

      LocalActionLog.Add(LogLine);
      i := i + 1;
    end;
    divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+LocalActionLog.Text+'</pre>';
  end
  else
  begin
    btnSelectActivityLog.Caption := 'Now: '+FormatDateTime(App_LogDateTimeFormat, App_Start_UTC)+' UTC';
    divActionLog.HTML.Text := '<pre style="overflow-x: hidden; font-size: 10px; color: var(--bl-color-input">'+ActionLog.Text+'</pre>';
  end;
end;

procedure TForm1.btnActivityLogTimezoneClick(Sender: TObject);
begin

  if btnActivityLogTimezone.Tag = 0 then
  begin
    btnActivityLogTimezone.Tag := 1;
    btnActivityLogTimezone.Caption := '<i class="fa-duotone fa-clock-desk fa-lg Swap"></i>';
    LogAction('[ Timezone: Local ]');
  end
  else
  begin
    btnActivityLogTimezone.Tag := 0;
    btnActivityLogTimezone.Caption := '<i class="fa-duotone fa-globe fa-lg Swap"></i>';
    LogAction('[ Timezone: UTC ]');
  end;

  btnAccountRefreshClick(Sender);
end;

procedure TForm1.WebFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (divLogin.Visible) and divLoginMessage.ElementHandle.classList.contains('d-none') then
  begin
    if Key = VK_RETURN then
    begin
      if (Trim(editUsername.Text) = '') then
      begin
        editUsername.SetFocus;
      end
      else if (Trim(editPassword.Text) = '') then
      begin
        editPassword.SetFocus;
      end
      else
      begin
        btnLoginOKClick(Sender);
      end;
    end
    else if Key = VK_ESCAPE then
    begin
      btnLoginCancelClick(Sender);
    end;
  end
  else if (divLogin.Visible = False) and (Key = VK_RETURN) and (LoggedIn = False) then
  begin
    btnLoginClick(Sender);
  end
  else if (divAccount.Visible) and (pcAccount.ActivePage.Name = 'pageAccountPassword') and not(divChangePassword.ElementHandle.classList.contains('pe-none')) then
  begin
    btnChangePasswordClick(Sender);
  end;

  if (Key = VK_ESCAPE) then
  begin
    if (divIconSearch.Visible = True) then btnIconCancelClick(Sender)
    else if (divPeriods.Visible = True) then divPeriodsLabelClick(Sender)
    else if (divURL.Visible = True) then btnURLCancelClick(Sender)
    else if (divSessions.Visible = True) then divSessionListLabelClick(Sender)
    else if (divStatistics.Visible = True) then divStatisticsLabelClick(Sender)
    else if (divAccount.Visible = True) then btnAccountCloseClick(Sender);
  end

  else if (Key = VK_RETURN) then
  begin
    if (divIconSearch.Visible = True) then btnIconSearchClick(Sender)
    else if (divURL.Visible = True) then btnURLOKClick(Sender);
  end;


end;


procedure TForm1.WebFormResize(Sender: TObject);
var
  innerWidth: Double;
  innerHeight: Double;

  dialogTop: Double;
  dialogLeft: Double;
  dialogWidth: Double;
  dialogHeight: Double;

begin
  if divAccount.Visible then
  begin
    {$IFNDEF WIN32} asm {
      innerWidth = divShade.getBoundingClientRect().width;
      innerHeight = divShade.getBoundingClientRect().height;

      dialogTop = divAccount.getBoundingClientRect().top + (divAccount.getAttribute('data-y') || 0);
      dialogLeft = divAccount.getBoundingClientRect().left + (divAccount.getAttribute('data-x') || 0);
      dialogWidth = divAccount.getBoundingClientRect().width;
      dialogHeight = divAccount.getBoundingClientRect().height;
//      console.log('t: '+dialogTop+', l: '+dialogLeft+', w: '+dialogWidth+', h: '+dialogHeight+', IW: '+innerWidth+', IH: '+innerHeight);
    } end; {$ENDIF}

    if (dialogTop < 0) or
       ((dialogTop + dialogHeight) > innerHeight) or
       (dialogLeft < 0) or
       ((dialogLeft + dialogWidth) > innerWidth) then
    begin
      divAccount.ElementHandle.setAttribute('data-x','0');
      divAccount.ElementHandle.setAttribute('data-y','0');
      divAccount.ElementHandle.style.setProperty('transform','translate(0px, 0px)');
      divAccount.ElementHandle.style.setProperty('top','2px');
      divAccount.ElementHandle.style.setProperty('left','2px');
      divAccount.ElementHandle.style.setProperty('width',IntToStr(Trunc(innerWidth - 4))+'px');
      divAccount.ElementHandle.style.setProperty('height',IntToStr(Trunc(innerHeight - 4))+'px');
    end;
  end;

  if divStatistics.Visible then
  begin
    {$IFNDEF WIN32} asm {
      var That = pas.Unit1.Form1.StatsForm;
      That.CreateD3BarChart(That.Current_Chart, That.Current_XData, That.Current_YData);
    } end; {$ENDIF}
  end;

end;

procedure TForm1.tmrLogoutTimer(Sender: TObject);
begin
  tmrLogout.Enabled := False;
  window.location.reload(true);
end;

function TForm1.SHA256(Text2Encode: String): String;
var
  EncodedText: String;
begin
  EncodedText := '';
  {$IFNDEF WIN32} asm {
    var sha256 = function sha256(ascii) {
    function rightRotate(value, amount) {
        return (value>>>amount) | (value<<(32 - amount));
    };

    var mathPow = Math.pow;
    var maxWord = mathPow(2, 32);
    var lengthProperty = 'length'
    var i, j; // Used as a counter across the whole file
    var result = ''

    var words = [];
    var asciiBitLength = ascii[lengthProperty]*8;

    //* caching results is optional - remove/add slash from front of this line to toggle
    // Initial hash value: first 32 bits of the fractional parts of the square roots of the first 8 primes
    // (we actually calculate the first 64, but extra values are just ignored)
    var hash = sha256.h = sha256.h || [];
    // Round constants: first 32 bits of the fractional parts of the cube roots of the first 64 primes
    var k = sha256.k = sha256.k || [];
    var primeCounter = k[lengthProperty];
    /*/
    var hash = [], k = [];
    var primeCounter = 0;
    //*/

    var isComposite = {};
    for (var candidate = 2; primeCounter < 64; candidate++) {
        if (!isComposite[candidate]) {
            for (i = 0; i < 313; i += candidate) {
                isComposite[i] = candidate;
            }
            hash[primeCounter] = (mathPow(candidate, .5)*maxWord)|0;
            k[primeCounter++] = (mathPow(candidate, 1/3)*maxWord)|0;
        }
    }

    ascii += '\x80' // Append Ƈ' bit (plus zero padding)
    while (ascii[lengthProperty]%64 - 56) ascii += '\x00' // More zero padding
    for (i = 0; i < ascii[lengthProperty]; i++) {
        j = ascii.charCodeAt(i);
        if (j>>8) return; // ASCII check: only accept characters in range 0-255
        words[i>>2] |= j << ((3 - i)%4)*8;
    }
    words[words[lengthProperty]] = ((asciiBitLength/maxWord)|0);
    words[words[lengthProperty]] = (asciiBitLength)

    // process each chunk
    for (j = 0; j < words[lengthProperty];) {
        var w = words.slice(j, j += 16); // The message is expanded into 64 words as part of the iteration
        var oldHash = hash;
        // This is now the undefinedworking hash", often labelled as variables a...g
        // (we have to truncate as well, otherwise extra entries at the end accumulate
        hash = hash.slice(0, 8);

        for (i = 0; i < 64; i++) {
            var i2 = i + j;
            // Expand the message into 64 words
            // Used below if
            var w15 = w[i - 15], w2 = w[i - 2];

            // Iterate
            var a = hash[0], e = hash[4];
            var temp1 = hash[7]
                + (rightRotate(e, 6) ^ rightRotate(e, 11) ^ rightRotate(e, 25)) // S1
                + ((e&hash[5])^((~e)&hash[6])) // ch
                + k[i]
                // Expand the message schedule if needed
                + (w[i] = (i < 16) ? w[i] : (
                        w[i - 16]
                        + (rightRotate(w15, 7) ^ rightRotate(w15, 18) ^ (w15>>>3)) // s0
                        + w[i - 7]
                        + (rightRotate(w2, 17) ^ rightRotate(w2, 19) ^ (w2>>>10)) // s1
                    )|0
                );
            // This is only used once, so *could* be moved below, but it only saves 4 bytes and makes things unreadble
            var temp2 = (rightRotate(a, 2) ^ rightRotate(a, 13) ^ rightRotate(a, 22)) // S0
                + ((a&hash[1])^(a&hash[2])^(hash[1]&hash[2])); // maj

            hash = [(temp1 + temp2)|0].concat(hash); // We don't bother trimming off the extra ones, they're harmless as long as we're truncating when we do the slice()
            hash[4] = (hash[4] + temp1)|0;
        }

        for (i = 0; i < 8; i++) {
            hash[i] = (hash[i] + oldHash[i])|0;
        }
    }

    for (i = 0; i < 8; i++) {
        for (j = 3; j + 1; j--) {
            var b = (hash[i]>>(j*8))&255;
            result += ((b < 16) ? 0 : '') + b.toString(16);
        }
    }
    return result;
    };

    EncodedText = sha256(Text2Encode);
  } end; {$ENDIF}

  Result := EncodedText;
end;

procedure TForm1.StopLinkerRemoval(P: Pointer);                          begin end;
procedure TForm1.PreventCompilerHint(H: TJSHTMLElement);       overload; begin end;
procedure TForm1.PreventCompilerHint(I: integer);              overload; begin end;
procedure TForm1.PreventCompilerHint(J: JSValue);              overload; begin end;
procedure TForm1.PreventCompilerHint(S: string);               overload; begin end;

end.
