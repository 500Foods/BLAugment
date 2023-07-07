unit Unit1;

interface

uses
  System.SysUtils,
  System.Classes,
  System.DateUtils,

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
    comboActivityLog: TWebLookupComboBox;
    tmrLogout: TWebTimer;
    WebHTMLDiv3: TWebHTMLDiv;
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
    WebOpenDialog1: TWebOpenDialog;
    btnLinkInsert: TWebButton;
    divIconSearch: TWebHTMLDiv;
    WebHTMLDiv10: TWebHTMLDiv;
    btnIconCancel: TWebButton;
    editIconSearch: TWebEdit;
    WebHTMLDiv12: TWebHTMLDiv;
    btnIconOK: TWebButton;
    btnIconSearch: TWebButton;
    divIconSearchDataBG: TWebHTMLDiv;
    divIconSearchResults: TWebHTMLDiv;
    divIconSearchData: TWebHTMLDiv;
    divIconSearchResultsInner: TWebHTMLDiv;

    procedure FinalRequest;
    procedure btnThemeDarkClick(Sender: TObject);
    [async] procedure WebFormCreate(Sender: TObject);
    procedure btnBlogClick(Sender: TObject);
    procedure ConfigureTooltip(Button: TWebButton);
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
    [async] procedure comboActivityLogChange(Sender: TObject);
    procedure tmrLogoutTimer(Sender: TObject);
    [async] procedure editAccountNameChange(Sender: TObject);
    [async] procedure btnChangeAccountNameClick(Sender: TObject);
    procedure editEMailChange(Sender: TObject);
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
    procedure WebOpenDialog1GetFileAsBase64(Sender: TObject; AFileIndex: Integer; ABase64: string);
    [async] function AccountIsValid(acct: String):String;
    procedure btnLinkInsertClick(Sender: TObject);
    procedure btnPhotoIconsClick(Sender: TObject);
    [async] procedure btnIconCancelClick(Sender: TObject);
    procedure btnIconOKClick(Sender: TObject);
    [async] procedure btnIconSearchClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    Theme: String;
    LoggedIn: Boolean;
    Server_URL: String;
    LastAction: String;

    JWT: String;
    JWT_Expiry: TDateTime;
    PasswordCheck: String;

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

    ActionLog: TStringList;
    ActionLogCurrent: TStringList;

    User_FirstName: String;
    User_MiddleName: String;
    User_LastName: String;
    User_Birthdate: String;
    User_Description: String;
    User_Name: String;
    User_EMail: String;

    User_Photo: String;
    User_Account: String;
    User_ID: Integer;
    User_Roles: TStringList;

    tabAccountOptions: JSValue;
    tabAccountRoles: JSValue;
    tabAccountHistory: JSValue;
    tabAccountLinks: JSValue;
    LinksData: JSValue;
    LinksDataBackup: JSValue;

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
    scrollAccountDonate: JSValue;
    scrollAccountHistory: JSValue;
    scrollAccountActivity: JSValue;
    scrollAccountLogout: JSValue;
    scrollIcons: JSValue;

    // Account Photo Pan/Zoom object
    pz: JSValue;

    // Icon Search
    IconSetList: JSValue;            // Icon sets retrieved from server
    IconSetNames: Array of String;   // Icon set names
    IconSetCount: Array of Integer;  // How many icons in each set
    IconResults: Integer;            // How many total icons
    IconSelected: String;            // The selected Icon

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

{$R *.dfm}

procedure TForm1.WebOpenDialog1GetFileAsBase64(Sender: TObject; AFileIndex: Integer; ABase64: string);
var
  ImageFile: String;
  ImageType: String;
  ImageData: String;

begin
  // Figure out what kind of image we have
  ImageFile := Lowercase(WebOpenDialog1.Files[AFileIndex].Name);
  if Pos('jpg',  ImageFile) > 0 then ImageType := 'image/jpeg';
  if Pos('jpeg', ImageFile) > 0 then ImageType := 'image/jpeg';
  if Pos('png',  ImageFile) > 0 then ImageType := 'image/png';
  if Pos('gif',  ImageFile) > 0 then ImageType := 'image/gif';
  if Pos('bmp',  ImageFile) > 0 then ImageType := 'image/bmp';
  if Pos('webp', ImageFile) > 0 then ImageType := 'image/webp';
  if Pos('svg',  ImageFile) > 0 then ImageType := 'image/svg+xml';
  if Pos('ico',  ImageFile) > 0 then ImageType := 'image/x-icon';

  // Set Form variables
  ImageData := '<img width="100%" src="data:'+ImageType+';base64,'+ABase64+'">';

  // Update interface
  asm
    divAccountPhoto.innerHTML = ImageData;
    this.pz.reset();
  end;

  PreventCompilerHint(ImageData);
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
    asm {
      try {
        Domain = (new URL(FavURL).hostname.replace('www.',''));
      } catch {
        Domain = 'Missing';
      }
    } end;

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
  btnPhotoSave.Enabled := True;
  btnPhotoCancel.Enabled := True;
end;

procedure TForm1.PhotoNotChanged;
begin
  btnPhotoSave.Enabled := False;
  btnPhotoCancel.Enabled := False;
end;

procedure TForm1.HideToolTips;
begin
  asm
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
  end;
end;

procedure TForm1.btnActivityLogEMailClick(Sender: TObject);
var
  RequestResponse: String;
  LogStamp: String;
  LogMessage: String;

begin
  // Change Account Name
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
  divChangeAccountName.ElementHandle.classList.Add('pe-none');
  LogAction('[ E-Mail Activity Log ]');

  LogMessage :=
      '<p>Hello!</p>'+
      '<p>A request was just made by '+User_Account+' at <a href="'+App_URLLink+'">'+App_Short+'</a> for this activity log.</p>'+
      divActionLog.ElementHandle.innerHTML+
      '<p>Warmest Regards,<br >'+
      'The '+App_Short+' Conciege<br >'+
      '<a href="'+App_URLLink+'">'+App_URL+'</a><br /></p><br />'+
      '<p><pre style="font-size:smallest;">'+
        'Req &raquo; '+FormatDateTime('yyyy-mmm-dd (ddd) hh:nn:ss', Now)+'/'+App_TZ+'<br />'+
        'Ref &raquo; '+App_OS_Short+'/'+App_Browser_short+'/'+App_IPAddress+'/'+App_Session+'<br />'+
        'Res &raquo; '+App_Country+'/'+App_Region+'/'+App_City+
      '</pre></p>';

  if comboActivityLog.DisplayText = 'Current Session'
  then LogStamp := 'Current Session: '+FormatDateTime('yyyy-mmm-dd hh:nn:ss',App_Start)
  else LogStamp := comboActivityLog.DisplayText;

  RequestResponse := await(StringRequest('IPersonService.SendActionLog',[
    LogMessage,
    LogStamp
  ]));

  if RequestResponse = 'Sent' then
  begin
    LogAction('Activity Log E-Mail Sent');
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
  if comboActivityLog.DisplayText = 'Current Session'
  then PageHeader := PageHeader+'Current Session: '+FormatDateTime('yyyy-mmm-dd hh:nn:ss',App_Start)
  else PageHeader := PageHeader+comboActivityLog.DisplayText;

  LogAction('[ Activity Log Printed: '+comboActivityLog.DisplayText+' ]');

  asm {
    printJS({
      printable: 'divActionLog',
      type: 'html',
      header: PageHeader,
      headerStyle: 'font-size: 14px; font-weight: bold; font-family: sans-serif;'
    });
  } end;
end;

procedure TForm1.UpdateAccountLinks;
begin
  asm
    this.tabAccountOptions.getRow(3).getCell('Entries').setValue(this.tabAccountLinks.getDataCount());
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

  end;
end;

procedure TForm1.WebFormCreate(Sender: TObject);
var
  i: Int64;
  ConfigResponse: TJSXMLHttpRequest;
  ConfigData: TJSONObject;
  ConfigURL: String;
begin

  // Default Theme
  Theme := TWebLocalStorage.GetValue('Theme');
  if (Theme <> 'dark'  ) and
     (Theme <> 'light' ) and
     (Theme <> 'red'   ) then Theme := 'dark';
  TWebLocalStorage.SetValue('Theme',Theme);

  if      Theme = 'dark'  then btnThemeDark.ElementHandle.style.setProperty('opacity','1')
  else if Theme = 'light' then btnThemeLight.ElementHandle.style.setProperty('opacity','1')
  else if Theme = 'red'   then btnThemeRed.ElementHandle.style.setProperty('opacity','1');

  document.documentElement.setAttribute('theme', Theme);

  editSearch.ElementHandle.setAttribute('size','1');

  // If Font Awesome Pro is not available, switch to the free version
  // btnTheme.Caption := StringReplace(btnTheme.Caption,'fa-duotone','fa-solid',[]);

  // Application Information
  App_Name := 'blaugment';
  App_Short := 'Blaugment';
  App_URL := 'www.blaugment.com';
  App_URLLink := 'https://www.blaugment.com';
  App_Version := '1.0';
  App_Release := '2023-Jun-23';
  App_APIKey := '{2DF239F0-8A9D-4531-9BC2-AB911CB40C4E}';
  App_Start := Now();
  App_Start_UTC := TTimeZone.Local.ToUniversalTime(Now);

  // MainForm Options
  Caption := App_Name;

  // Overide some locale options?
  FormatSettings.TimeSeparator := ':';
  FormatSettings.DateSeparator := '-';
  asm
    this.App_TZ = Intl.DateTimeFormat().resolvedOptions().timeZone;
    this.App_TZOffset = new Date().getTimezoneOffset();
  end;

  // These are intended for use with Delphi's FormatDateTime
  App_LogDateTimeFormat := 'yyyy-MM-dd HH:nn:ss.zzz';
  App_DisplayDateTimeFormat := 'yyyy-MMM-dd HH:nn:ss';
  App_LogDateFormat := 'yyyy-MM-dd';
  App_DisplayDateFormat := 'yyyy-MMM-dd';
  App_LogTimeFormat := 'HH:nn:ss.zzz';
  App_DisplayTimeFormat := 'HH:nn:ss';

  // These are intended for use with Luxon's toFormat
  asm
    window.LogDateTimeFormat = this.App_LogDateTimeFormat.replace('nn','mm');
    window.DisplayDateTimeFormat = this.App_DisplayDateTimeFormat.replace('nn','mm');
    window.LogDateFormat = this.App_LogDateFormat.replace('nn','mm');
    window.DisplayDateFormat = this.App_DisplayDateFormat.replace('nn','mm');
    window.LogTimeFormat = this.App_LogTimeFormat.replace('nn','mm');
    window.DisplayTimeFormat = this.App_DisplayTimeFormat.replace('nn','mm');
  end;

  // JWT Handling
  JWT := '';
  JWT_Expiry := App_Start_UTC;

  // User Information
  LoggedIn := False;
  User_FirstName := '';
  User_MiddleName :=  '';
  User_LastName := '';
  User_Name := '';
  User_EMail := '';
  User_Account := '';
  User_id := 0;
  User_Roles := TStringList.Create;

  // Create an App Session key - just a custom Base48-encoded timestamp
  // https://github.com/marko-36/base29-shortener
  App_Session := '';
  i := DateTimeToUnix(App_Start_UTC)*1000+MillisecondOf(App_Start_UTC);

  asm
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
  end;

  // Get some client information
  App_IPAddress := 'Not Defined';
  App_Location := 'Not Defined';
  App_Device := 'Not Defined';
  App_Browser := 'Not Defined';
  asm
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
  end;


  // Log what we're doing in the application
  ActionLog := TStringList.Create;
  ActionLog.Delimiter := chr(10);
  ActionLogCurrent := TStringList.Create;
  ActionLogCurrent.Delimiter := chr(10);
  LogAction('============================================================');

  // Application Details
  LogAction('Application Startup');
  LogAction(' -- '+App_Name);
  LogAction(' -- Version '+App_Version);
  LogAction(' -- Release '+App_Release);
  LogAction(' -- App Started: '+FormatDateTime(App_LogDateTimeFormat, App_Start)+' '+App_TZ);
  LogAction(' -- App Started: '+FormatDateTime(App_LogDateTimeFormat, App_Start_UTC)+' UTC');
  LogAction(' -- App Session: '+App_Session);
  LogAction(' -- App IP Address: '+App_IPAddress);
  LogAction(' -- App Location: ');
  asm
    var locn = JSON.parse(this.App_Location);
    this.LogAction(' ----- Country Code: '+locn[0]);
    this.LogAction(' ----- Country: '+locn[1]);
    this.LogAction(' ----- Region: '+locn[2]);
    this.LogAction(' ----- City: '+locn[3]);
    this.LogAction(' ----- Latitude: '+locn[4]);
    this.LogAction(' ----- Longitude: '+locn[5]);
    this.LogAction(' ----- Language: '+locn[6]);
  end;
  LogAction(' -- App Device: ');
  asm
    var dvc = JSON.parse(this.App_Device);
    this.LogAction(' ----- Model: '+dvc.model);
    this.LogAction(' ----- Type: '+dvc.type);
    this.LogAction(' ----- Vendor: '+dvc.vendor);
  end;
  LogAction(' -- App Browser: ');
  asm
    var brw = JSON.parse(this.App_Browser);
    this.LogAction(' ----- Browser: '+brw[0]);
    this.LogAction(' ----- Version: '+brw[1]);
    this.LogAction(' ----- OS: '+brw[2]);
    this.LogAction(' ----- Version: '+brw[3]);
    this.App_Browser_Short = brw[0];
    this.App_OS_Short = brw[2];
  end;
  LogAction('============================================================');
  LogAction(' ');

  // Figure out what our server connection might be
  Server_URL := '';

  try
    asm ConfigURL = window.location.origin+(window.location.pathname.split('/').slice(0,-1).join('/')+'/blaugment_configuration.json').replace('/\/\//g','/'); end;
    LogAction('Loading Configuration:');
    LogAction(' -- '+ConfigURL);
    WebHTTPRequest1.URL := ConfigURL;
    ConfigResponse := await( TJSXMLHttpRequest, WebHTTPRequest1.Perform() );
    if String(COnfigResponse.Response) <> '' then
    begin
      LogAction(' -- Configuration Loaded');
      ConfigData := TJSONObject.ParseJSONValue(String(ConfigResponse.Response)) as TJSONObject;

      // Get Server URL - Presumably if we've got a config file, this is defined
      Server_URL := (ConfigData.GetValue('Server') as TJSONString).Value;
      LogAction('Server (Configured):');
      LogAction(' -- '+Server_URL);

    end;
  except on E:Exception do
    begin
    end
  end;
  if (Server_URL = '') then
  begin
    Server_URL := 'http://localhost:44444/tms/xdata';
     LogAction(' -- Configuration Missing');
    LogAction('Server (Default):');
    LogAction(' -- '+Server_URL);
  end;

  // Connect to XData
  LogAction(' ');
  LogAction('Attempting Connection');
  await(XDataConnect);
  LogAction(' ');

  // Configure buttons to use Bootstrap tooltips
  ConfigureTooltip(btnSearch);
  ConfigureTooltip(btnRegister);
  ConfigureTooltip(btnAdd);
  ConfigureTooltip(btnAccount);
  ConfigureTooltip(btnLogin);
  ConfigureTooltip(btnThemeDark);

  ConfigureTooltip(btnBlogArchitecture);
  ConfigureTooltip(btnBlogArt);
  ConfigureTooltip(btnBlogAuto);
  ConfigureTooltip(btnBlogAviation);
  ConfigureTooltip(btnBlogBeauty);
  ConfigureTooltip(btnBlogBoat);
  ConfigureTooltip(btnBlogBridges);
  ConfigureTooltip(btnBlogBusiness);
  ConfigureTooltip(btnBlogCats);
  ConfigureTooltip(btnBlogClimate);
  ConfigureTooltip(btnBlogCycling);
  ConfigureTooltip(btnBlogDesign);
  ConfigureTooltip(btnBlogDIY);
  ConfigureTooltip(btnBlogDogs);
  ConfigureTooltip(btnBlogEducation);
  ConfigureTooltip(btnBlogFashion);
  ConfigureTooltip(btnBlogFinance);
  ConfigureTooltip(btnBlogFitness);
  ConfigureTooltip(btnBlogFood);
  ConfigureTooltip(btnBlogGaming);
  ConfigureTooltip(btnBlogGardening);
  ConfigureTooltip(btnBlogGovernment);
  ConfigureTooltip(btnBlogHealth);
  ConfigureTooltip(btnBlogHealthcare);
  ConfigureTooltip(btnBlogIndustry);
  ConfigureTooltip(btnBlogInteriors);
  ConfigureTooltip(btnBlogInvesting);
  ConfigureTooltip(btnBlogJustice);
  ConfigureTooltip(btnBlogLifestyle);
  ConfigureTooltip(btnBlogMotorcycle);
  ConfigureTooltip(btnBlogMovies);
  ConfigureTooltip(btnBlogMusic);
  ConfigureTooltip(btnBlogNews);
  ConfigureTooltip(btnBlogParenting);
  ConfigureTooltip(btnBlogPeople);
  ConfigureTooltip(btnBlogPersonal);
  ConfigureTooltip(btnBlogPhotography);
  ConfigureTooltip(btnBlogPolitics);
  ConfigureTooltip(btnBlogReligion);
  ConfigureTooltip(btnBlogScience);
  ConfigureTooltip(btnBlogSpace);
  ConfigureTooltip(btnBlogSports);
  ConfigureTooltip(btnBlogTechnology);
  ConfigureTooltip(btnBlogTrain);
  ConfigureTooltip(btnBlogTravel);
  ConfigureTooltip(btnBlogWellness);
  ConfigureTooltip(btnBlogWriting);

  ConfigureTooltip(btnLinkInsert);
  ConfigureTooltip(btnLinkDelete);
  ConfigureTooltip(btnLinkSave);
  ConfigureTooltip(btnLinkCancel);

  ConfigureTooltip(btnLoginOK);
  ConfigureTooltip(btnLoginCancel);
  ConfigureTooltip(btnForgotUsername);
  ConfigureTooltip(btnForgotPassword);

  ConfigureTooltip(btnPhotoClear);
  ConfigureTooltip(btnPhotoURL);
  ConfigureTooltip(btnPhotoUpload);
  ConfigureTooltip(btnPhotoIcons);
  ConfigureTooltip(btnPhotoReset);
  ConfigureTooltip(btnPhotoSave);
  ConfigureTooltip(btnPhotoCancel);


  // Convert all tooltips to Bootstrap tooltips
  asm
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    tooltipTriggerList.forEach( (e) => e.setAttribute('data-bs-delay', '{"show": 1000, "hide": 100}'));
    var tooltipList = tooltipTriggerList.map( function(tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl, {
        trigger : 'hover'
      });
    });
  end;

  // JavaScript Sleep Function
  asm window.sleep = async function(msecs) {return new Promise((resolve) => setTimeout(resolve, msecs)); } end;


  // Tabulator Defaults
  asm
    Tabulator.defaultOptions.layout = "fitColumns";
    Tabulator.defaultOptions.selectable = 1;
    Tabulator.defaultOptions.columnHeaderSortMulti = true,
    Tabulator.defaultOptions.clipboard = "copy";
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
  end;


  // Account Options
  asm
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
      pas.Unit1.Form1.tabAccountOptions.selectRow([row]);
      pas.Unit1.Form1.SelectAccountOption(row.getCell('ID').getValue());
    });
  end;

  // Account Login History
  asm
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
              var locndata = JSON.parse(cell.getValue());
              var clientlocation = locndata[3]+', '+locndata[2]+', '+locndata[1];
              return '<img title="'+clientlocation+'" style="width:24px; border-radius:4px;" src="https://cdn.jsdelivr.net/npm/country-flag-icons@1.5.7/1x1/'+JSON.parse(cell.getValue())[0]+'.svg">';
            }
        },
        { title: "", field: "browser_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var browser = JSON.parse(cell.getValue());
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
              return '<div title="'+title+'">'+icon+'</div>';
            }
        },
        { title: "", field: "browser_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var browser = JSON.parse(cell.getValue());
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
              return '<div title="'+title+'">'+icon+'</div>';
            }
        },
        { title: "", field: "device_info", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var device = JSON.parse(cell.getValue());
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
              return '<div title="'+title+'">'+icon+'</div>';
            }
        },

        { title: "", field: "ip_location", width: 30, minWidth: 30, resizable: false, headerSort: false, cssClass: "IconColumn",
            formatter: function(cell, formatterParams, onRendered) {
              var clientlanguage = JSON.parse(cell.getValue())[6];
              return '<img title="'+clientlanguage+'" style="width:24px; border-radius:4px;" src="https://cdn.jsdelivr.net/npm/language-icons@0.3.0/icons/'+JSON.parse(cell.getValue())[6].slice(0,2).toLowerCase()+'.svg">';
            }
        },
        { title: "IP Address", field: "ip_address", width: 125, minWidth: 100 },
        { title: "Location", field: "ip_location", minWidth: 150,
            formatter: function(cell, formatterParams, onRendered) {
              var locndata = JSON.parse(cell.getValue());
              var clientlocation = locndata[3]+', '+locndata[2]+', '+locndata[1];
              return clientlocation;
            }
        }
      ]
    });
    this.tabAccountHistory.on('tableBuilt', function(){
      divAccountHistory.firstElementChild.style.setProperty('position','absolute');
      divAccountHistory.firstElementChild.style.setProperty('z-index', '1');
      divAccountHistory.firstElementChild.style.setProperty('top', '0px');
    });

    this.tabAccountHistory.on('rowClick', function(e, row){
      pas.Unit1.Form1.tabAccountHistory.selectRow([row]);
    });
  end;

  // Account links
  asm
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
  end;

  // This is used to adjust the size and position of "windows"
  asm
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
  end;

  // Enable Simplebar on Options pages
  asm
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
    this.scrollAccountDonate     = new SimpleBar(document.getElementById('pageAccountDonate'      ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountHistory    = new SimpleBar(document.getElementById('pageAccountHistory'     ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountActivity   = new SimpleBar(document.getElementById('pageAccountActivity'    ), { forceVisible: 'y', autoHide: false });
    this.scrollAccountLogout     = new SimpleBar(document.getElementById('pageAccountLogout'      ), { forceVisible: 'y', autoHide: false });
    this.scrollIcons             = new SimpleBar(document.getElementById('divIconSearchResults'   ), { forceVisible: 'y', autoHide: false });

    this.scrollAccountHistory.getScrollElement().addEventListener('scroll', function(){
      divAccountHistory.firstElementChild.style.setProperty('top',
        divAccountHistory.parentElement.parentElement.parentElement.getBoundingClientRect().y
        - divAccountHistory.getBoundingClientRect().y
        + 'px');
    });
  end;

  asm
    document.body.style.setProperty('opacity','1');
  end;


  // This loads up pan/zoom functionality
  asm
    this.pz = Panzoom(divAccountPhoto, {
      animate: true,
      cursor: 'all-scroll',
      minScale: 0.5,
      maxScale: 20,
      duration: 50
    });
    divAccountPhoto.addEventListener('wheel',pas.Unit1.Form1.pz.zoomWithWheel);
    divAccountPhoto.addEventListener('panzoomchange', (event) => {
      pas.Unit1.Form1.PhotoChanged();
    });
  end;


  // Autologin if possible
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

    end
    else
    begin
      LoggedIn := False;
    end;
  end;

  // AutoLogout if possible - what to do if the browser closes unexpectedly
  asm
    window.addEventListener('beforeunload', async function (e) {
      pas.Unit1.Form1.FinalRequest();
    });
  end;

  // Disable edit scrolling
  asm
    document.querySelectorAll('.Edit').forEach(function(item){
      item.addEventListener('wheel', preventScroll, {passive: false});
    });
    function preventScroll(e) {
      e.preventDefault();
      e.target.parentElement.parentElement.parentElement.scrollTop += e.deltaY;
      return false;
    }
  end;

  // TWebMemo auto resizing
  asm
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
  end;



  // Icon Selection
  asm
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
  end;


  PreventCompilerHint(i);
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
      asm Result = await Blob.text(); end;

    except on E: Exception do
      begin
        // Get the error message we created in XData
        asm {
          var ErrorDetail = JSON.parse( await E.FErrorResult.FResponse.$o.FXhr.response.text() );
          ErrorCode = ErrorDetail.error.code;
          ErrorMessage = ErrorDetail.error.message;
        } end;

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('ERROR Request Exception Received From'+Endpoint);
        LogAction(' -- ['+E.ClassName+']');
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
        asm {
          try {
            var ErrorDetail = JSON.parse(await E.FErrorResult.FResponse.$o.FXhr.responseText );
            ErrorCode = ErrorDetail.error.code;
            ErrorMessage = ErrorDetail.error.message;
          }
          catch {
            ErrorCode = 'Configuration Error';
            ErrorMessage = 'Endpoint Call Failed';
          }
        } end;

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('ERROR Request Exception Received From'+Endpoint);
        LogAction(' -- ['+E.ClassName+']');
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
    asm
      window.history.replaceState(null,null,window.location.href.split('#')[0]);
      document.body.style.setProperty('opacity','0');
    end;

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
      LogAction('Connection Established: ('+IntToStr(MillisecondsBetween(Now, ElapsedTime))+'ms)');
    except on E: Exception do
      begin
        LogAction('Connection Failed: '+XDataConn.URL);
        LogAction(' -- ['+E.ClassName+']');
        LogAction(' -- '+E.Message);
      end;
    end;
  end;
end;

procedure TForm1.XDataConnRequest(Args: TXDataWebConnectionRequest);
begin
  Args.Request.Headers.SetValue('Authorization', JWT);
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
begin

  ElapsedTime := Now;
  NewJWT := '';
  ErrorCode := '';
  ErrorMessage := '';

  LogAction('Attempting Login');


  // Call it again in case it has been disconnected
  await(XDataConnect);


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
        App_Browser
      ]));

      Blob := Response.Result;
      asm NewJWT = await Blob.text(); end;

    except on E: Exception do
      begin
        // Get the error message we created in XData
        asm {
          var ErrorDetail = JSON.parse( await E.FErrorResult.FResponse.$o.FXhr.response.text() );
          ErrorCode = ErrorDetail.error.code;
          ErrorMessage = ErrorDetail.error.message;
        } end;

        // Log the error, but leave out the URI (because it includes the password)
        LogAction('Login Exception:');
        LogAction(' -- ['+E.ClassName+']');
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
//  i: Integer;
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

  LogAction('Processing Token:');
  LogAction(' -- Name: '+StringReplace(User_FirstName+' '+User_MiddleName+' '+User_LastName,'  ',' ',[rfReplaceAll]));
  LogAction(' -- Account: '+User_Account);
  LogAction(' -- EMail: '+User_Email);
  LogAction(' -- Roles: '+User_Roles.CommaText);
  LogAction(' -- Expires: '+(JWTClaims.GetValue('unt') as TJSONString).Value);
  LogAction(' -- Token Processed.');

end;

procedure TForm1.ProcessLogin;
begin
  btnRegister.Visible := False;
  btnLogin.Visible := False;
  btnAdd.Visible := True;
  btnAccount.Visible := True;
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
    asm await sleep(200); end;
  end;

  pcAccount.TabIndex := OptionID;
  pcAccount.ActivePage.ElementHandle.style.setProperty('opacity','1');
  LogAction('[ Account Settings: '+StringReplace(pcAccount.ActivePage.Name,'pageAccount','',[])+' ]');

  if pcAccount.ActivePage.Name = 'pageAccountName' then
  begin
    editAccountName.SetFocus;
    editEMailChange(nil);
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
    asm
      pas.Unit1.Form1.tabAccountHistory.redraw(true);
      divAccountHistory.firstElementChild.style.setProperty('position','absolute');
      divAccountHistory.firstElementChild.style.setProperty('z-index', '1');
      divAccountHistory.firstElementChild.style.setProperty('top', '0px');
    end;
  end
  else if pcAccount.ActivePage.Name = 'pageAccountActivity' then
  begin
    divActivityLogHeader.ElementHandle.classList.add('position-fixed');
    btnAccountRefreshClick(nil);
  end
  else if pcAccount.ActivePage.Name = 'pageAccountAuthor' then
  begin
    asm
      pas.Unit1.Form1.tabAccountLinks.redraw(true);
      memoAuthorDescription.dispatchEvent(new Event('input'));
    end;
  end;
end;

procedure TForm1.tmrJWTRenewalTimer(Sender: TObject);
var
  ResponseString: String;
  ActionLogSend: String;
begin
  tmrJWTRenewal.Enabled := False;

  if LoggedIn then
  begin
    LogAction(' ');
    LogAction('Renew JWT');
  end;

  ActionLogSend := ActionLogCurrent.Text;
  ActionLogCurrent.Text := '';

  ResponseString := await(JSONRequest('ISystemService.Renew',[App_Session, ActionLogSend]));
  if Copy(ResponseString,1,6) =  'Bearer' then
  begin
    await(ProcessJWT(ResponseString));
    LogAction('JWT Renewed');
    LogAction(' ');
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
    asm await sleep(500); end;
    btnLoginCancelClick(Sender);

    ProcessLogin;
    btnAccountClick(Sender);

  end
  else
  begin
    LoginCheck := StringReplace(LoginCheck,': ',':<br />',[]);
    LoginCheck := StringReplace(LoginCheck,'. ','.<br />',[]);
    if Trim(LoginCheck) = '/'
    then LoginCheck := 'System Error / Server connection could not be established.';
    divLoginMessage.HTML.Text := '<div class="DropShadow">'+Copy(LoginCheck,1,Pos('/',LoginCheck) -2)+'<br/>'+Copy(LoginCheck, Pos('/',LoginCheck)+2,Length(LoginCheck));
    asm await sleep(5000); end;
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
  HideToolTips;

  // Manage different Account


end;

procedure TForm1.btnAccountClick(Sender: TObject);
var
  i: Integer;
  count: Integer;
  ResponseString: String;
  SessionTimestamp: Array of String;
  SessionID: Array of String;
  OldDate: TDateTime;
  NewDate: TDateTime;
begin



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

    // Set Caption for "window"
    labelAccountTitle.HTML := '<div style="width: 35px; height: 35px; border-radius: 5px; margin:0px 4px 0px 1.51px; padding: 0px; overflow: hidden;">'+btnAccount.ElementHandle.innerHTML+'</div>'+
                              '<div class="DropShadow mt-1">'+User_Name+'</div>';
    editAccountName.Text := User_Account;
    editFirstName.Text := User_Firstname;
    editMiddleName.Text := User_MiddleName;
    editLastName.Text := User_LastName;
    editEMail.Text := User_EMail;

    btnFirstNameSave.Enabled := False;
    btnFirstNameCancel.Enabled := False;

    // Make sure first row is selected
    pcAccount.TabIndex := 0;
    pcAccount.ActivePage.ElementHandle.style.setProperty('opacity','1');
    asm
      this.tabAccountOptions.deselectRow();
      this.tabAccountOptions.selectRow([0]);
    end;

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
  ResponseString := await(JSONRequest('IPersonService.Profile',[]));
  if ResponseString <> '' then
  begin
    asm
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
      this.tabAccountOptions.getRow(9).getCell('Entries').setValue(data['RecentLogins'].length);
      this.tabAccountHistory.setData(data['RecentLogins']);

      // Account Page - Sessions
      this.tabAccountOptions.getRow(8).getCell('Entries').setValue(data['RecentActions'].length);
      for (var i = 0; i < data['RecentActions'].length; i++) {
        SessionTimestamp.push(data['RecentActions'][i].session_start);
        SessionID.push(data['RecentActions'][i].session_id);
      }

//
//      var lastlogin = luxon.DateTime.fromISO(data['RecentLogins'][0]['logged_in'].split(' ').join('T'),{zone:"utc"}).setZone("system").toFormat(window.DisplayDateTimeFormat);
//      iconLastLogin.innerHTML = icon['Login'];
//      labelLastLogin.innerHTML = '<span title="'+lastlogin+'">'+lastlogin+'</span>';
//
//      iconRecentLogins.innerHTML = icon['Clock'];
//      labelRecentLogins.innerHTML = data['RecentLogins'].length+' <small class="text-secondary me-3"> 7d </small> '+data['Logins'][0]['logins']+' <small class="text-secondary"> All </small>';
//
//
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
    end;
  end;

  // Configure Activity History List
  comboActivityLog.LookupValues.Clear;
  comboActivityLog.LookupValues.AddPair('Current', 'Current Session');
  i := 0;
  while i < Length(SessionTimestamp) do
  begin
    if btnActivityLogTimeZone.Tag = 0 then
    begin
      comboActivityLog.LookupValues.AddPair(SessionID[i], SessionTimestamp[i]+' UTC');
    end
    else
    begin
      OldDate := EncodeDateTime(
        StrToInt(Copy(SessionTimestamp[i],1,4)),
        StrToInt(Copy(SessionTimestamp[i],6,2)),
        StrToInt(Copy(SessionTimeStamp[i],9,2)),
        StrToInt(Copy(SessionTimestamp[i],12,2)),
        StrToInt(Copy(SessionTimestamp[i],15,2)),
        StrToInt(Copy(SessionTimestamp[i],18,2)),
        StrToInt(Copy(SessionTimestamp[i],21,3))
      );
      NewDate := IncMinute(OldDate, - App_TZOffset);
      comboActivityLog.LookupValues.AddPair(SessionID[i], FormatDateTime(App_LogDateTimeFormat, NewDate));
    end;
    i := i + 1;
  end;

  // Author Page
  memoAuthorDescription.Lines.Text := User_Description;


  // Configure Activity Log
  btnActivityLogReloadClick(Sender);



  // This intializes the custom icon editor to use the "remote" approach.
  ResponseString := await(JSONRequest('ISystemService.AvailableIconSets',[]));
  asm
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
  end;

  // Populate the listLibraries control
  count := 0;
  for i := 0 to Length(IconsetNames)-1 do
  begin
    count := count + IconSetCount[i];
  end;
  editIconSearch.TextHint := 'Search '+FloatToStrF(count,ffNumber,5,0)+' icons';


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
begin
  // Change EMail
  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';
  divChangeAccountEMail.ElementHandle.classList.Add('pe-none');

  // Send Confirmation EMail
  if editEMailCode.Visible
  then labelChangeAccountEMail.ElementHandle.innerHTML := 'Resending...'
  else labelChangeAccountEMail.ElementHandle.innerHTML := 'Sending...';
  asm await sleep(1000); end;

  RequestResponse := await(StringRequest('ISystemService.SendConfirmationCode',[
    'Change EMail Address',
    editEMail.Text,
    '[ '+App_Short+' ] E-Mail Change Confirmation Code: {AUTHORIZATION_CODE}',
    '<p>Hello!</p>'+
      '<p>A request was just made to change the <a href="'+App_URLLink+'">'+App_Short+'</a> e-mail address linked to the '+User_Account+' account.</p>'+
      '<p>The current e-mail address for this account is <a href="mailto:'+User_EMail+'">'+User_EMail+'</a>.</p>'+
      '<p>To confirm this request, please use the following Confirmation Code:</p>'+
      '<p><br /><span style="font-size:20px; font-style:bold;padding-left: 20px;">{AUTHORIZATION_CODE}</span><br /><br /></p>'+
      '<p>Additional information:<ul>'+
        '<li>This code is only valid for 10 minutes.</li>'+
        '<li>You can use Copy & Paste to enter this code.</li>'+
        '<li>If you did not make this request, please disregard.</li>'+
      '</ul></p><br />'+
      '<p>Warmest Regards,<br >'+
      'The '+App_Short+' Conciege<br >'+
      '<a href="'+App_URLLink+'">'+App_URL+'</a><br /></p><br />'+
      '<p><pre style="font-size:smallest;">'+
        'Req &raquo; '+FormatDateTime('yyyy-mmm-dd (ddd) hh:nn:ss', Now)+'/'+App_TZ+'<br />'+
        'Ref &raquo; '+App_OS_Short+'/'+App_Browser_short+'/'+App_IPAddress+'/'+App_Session+'<br />'+
        'Res &raquo; '+App_Country+'/'+App_Region+'/'+App_City+
      '</pre></p>',
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
    LogAction('Account Name Changed: '+editAccountName.Text);
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
    LogAction('Password Changed Successfully.');
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
  end
  else
  begin
    btnDescriptionCancelClick(Sender);
    LogAction('Description Update Failed:');
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

    btnFirstNameSave.Enabled := False;
    btnFirstNameCancel.Enabled := False;

    tmrJWTRenewalTimer(Sender);
  end
  else
  begin
    btnFirstNameCancelClick(Sender);
    LogAction('Person Update Failed:');
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

procedure TForm1.btnPhotoCancelClick(Sender: TObject);
begin
  HideTooltips;
  asm
    divAccountPhoto.innerHTML = this.User_Photo;
    if (btnAccount.firstElementChild !== null) {
      var MoveTransform = btnAccount.firstElementChild.style.getPropertyValue('transform');
      if (MoveTransform !== '') {
        divAccountPhoto.style.setProperty('transform','scale(1) transform(0%, 0%)');
        var Scale = parseFloat(MoveTransform.split(/\(|\)|%|, /)[1]);
        var LeftOffset = parseFloat(MoveTransform.split(/\(|\)|%|, /)[3]);
        var TopOffset = parseFloat(MoveTransform.split(/\(|\)|%|, /)[5]);

//        console.log('S: '+Scale+', L: '+LeftOffset+', T: '+TopOffset);
//        console.log('PanX: '+ (LeftOffset / 100) * (divAccountPhoto.getBoundingClientRect().width / Scale));
//        console.log('PanY: '+           (TopOffset / 100) * (divAccountPhoto.getBoundingClientRect().height / Scale));

        this.pz.reset();
        this.pz.zoom(Scale);
        divAccountPhoto.firstElementChild.style.setProperty('transform','scale(1) translate(0%, 0%)')
        await sleep(250);
        pas.Unit1.Form1.pz.pan(
          (LeftOffset / 100) * (divAccountPhoto.getBoundingClientRect().width / Scale),
          (TopOffset / 100) * (divAccountPhoto.getBoundingClientRect().height / Scale)
        );
      }
    }
  end;
  asm await sleep(100); end;
  btnPhotoSave.Enabled := False;
  btnPhotoCancel.Enabled := False;
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
end;

procedure TForm1.btnPhotoIconsClick(Sender: TObject);
begin
  HideTooltips;
  editIconSearch.Text := '';
  btnIconOK.Tag := 1; // Account Photo

  divShade2.Visible := True;
  divIconSearch.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','0.75');
  divIconSearch.ElementHandle.style.setProperty('opacity','1.0');
  HideTooltips;

  LogAction(' ');
  LogAction('[ Searching Photo Icons ]');

  editIconSearch.setFocus;

end;

procedure TForm1.btnPhotoResetClick(Sender: TObject);
begin
  HideTooltips;
  asm
   // Reset Pan/Zoom
    pas.Unit1.Form1.pz.reset();
  end;
end;

procedure TForm1.btnPhotoSaveClick(Sender: TObject);
var
  RequestResponse: String;

begin
  HideTooltips;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-spin fa-xl"></i>';

  LogAction('[ Saving Account Photo ]');

  asm
    var Scale= this.pz.getScale();
    var TopOffset = 100 * this.pz.getPan().y / divAccountPhoto.getBoundingClientRect().height * Scale;
    var LeftOffset = 100 * this.pz.getPan().x / divAccountPhoto.getBoundingClientRect().width * Scale;

    divAuthorProfilePhoto.innerHTML = divAccountPhoto.innerHTML;
    if (divAuthorProfilePhoto.firstElementChild !== null) {
      divAuthorProfilePhoto.firstElementChild.style.setProperty('transform','scale('+Scale+') translate('+LeftOffset+'%,'+TopOffset+'%)');
      this.User_Photo = divAuthorProfilePhoto.innerHTML;
    } else {
      this.User_Photo = '<img width="100%" style="transform: scale(1) translate(0%, 0%);" src="icons/favicon-192x192.png">';;
      divAuthorProfilePhoto.innerHTML = this.User_Photo;
    }
    btnAccount.innerHTML = divAuthorProfilePhoto.innerHTML;
  end;

  labelAccountTitle.HTML := '<div style="width: 35px; height: 35px; border-radius: 5px; margin:0px 4px 0px 1.51px; padding: 0px; overflow: hidden;">'+btnAccount.ElementHandle.innerHTML+'</div>'+
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
    LogAction('Account Photo Updated');
  end
  else
  begin
    btnPhotoSave.Enabled := True;
    btnPhotoCancel.Enabled := True;
    LogAction('Account Photo Update Failed:');
    LogAction(RequestResponse);
  end;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate Swap fa-xl"></i>';
end;

procedure TForm1.btnPhotoUploadClick(Sender: TObject);
var
  i: Integer;
begin
  HideTooltips;

  WebOpenDialog1.Accept := 'image/*';

  await(string, WebOpenDialog1.Perform);

  // If files were selected, iterate through them
  i := 0;
  while (i < WebOpenDialog1.Files.Count) do
  begin
    WebOpenDialog1.Files.Items[i].GetFileAsBase64;
    i := i + 1;
  end;
end;

procedure TForm1.btnPhotoURLClick(Sender: TObject);
begin
  HideTooltips;
  editURL.Text := '';
  asm editURLLabel.innerHTML = 'Enter an Image Link'; end;
  btnURLOK.Tag := 1; // Photo URL

  divShade2.Visible := True;
  divURL.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','0.75');
  divURL.ElementHandle.style.setProperty('opacity','1.0');
  HideTooltips;

  LogAction(' ');
  LogAction('[ Requesting Photo URL ]');

  editURL.setFocus;

end;

procedure TForm1.btnRegisterClick(Sender: TObject);
begin
  // Register Account

end;

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  HideToolTips;
  // Search for Blogs

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

  asm await sleep(1000); end;

  divIconSearch.Visible := False;
  divShade2.Visible := False;
end;

procedure TForm1.btnIconOKClick(Sender: TObject);
begin
  if IconSelected <> '' then
  begin
    asm
      divAccountPhoto.innerHTML = '';
      this.pz.reset();
      divAccountPhoto.innerHTML = this.IconSelected;
    end;
  end;
  btnIconCancelClick(Sender);
end;

procedure TForm1.btnIconSearchClick(Sender: TObject);
var
  Search: String;
  IconSize:Integer;
  MaxResults: Integer;
  SearchLib: String;
  RequestResponse: String;
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
    asm
      divIconSearchResultsInner.replaceChildren();
    end;
    exit;
  end;

    asm

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
    end;


end;

procedure TForm1.comboActivityLogChange(Sender: TObject);
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
  if comboActivityLog.Value = 'Current' then
  begin
    btnActivityLogReloadClick(Sender);
  end
  else
  begin

    Response := await(JSONRequest('IPersonService.ActionLog',[User_ID, comboActivityLog.Value]));
    asm
      var resp = JSON.parse(Response);
      Response = resp['ActionsLog'][0].actions;
    end;
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
  if Theme = 'dark' then
  begin
    btnThemeDark.ElementHandle.style.setProperty('opacity','0');
    btnThemeRed.ElementHandle.style.setProperty('opacity','1');
    Theme := 'red';
  end
  else if Theme = 'red' then
  begin
    btnThemeRed.ElementHandle.style.setProperty('opacity','0');
    btnThemeLight.ElementHandle.style.setProperty('opacity','1');
    Theme := 'light';
  end
  else if Theme = 'light' then
  begin
    btnThemeLight.ElementHandle.style.setProperty('opacity','0');
    btnThemeDark.ElementHandle.style.setProperty('opacity','1');
    Theme := 'dark';
  end;

  // If Font Awesome Pro is not available, switch to the free version
  // btnTheme.Caption := StringReplace(btnTheme.Caption,'fa-duotone','fa-solid',[]);

  // this sets the 'theme' attribute in the top-most <html> tag
  document.documentElement.setAttribute('theme', Theme);
  TWebLocalStorage.SetValue('Theme',Theme);
end;

procedure TForm1.btnURLCancelClick(Sender: TObject);
begin
  divShade2.ElementHandle.style.setProperty('opacity','0');
  divURL.ElementHandle.style.setProperty('opacity','0');

  asm await sleep(1000); end;

  divURL.Visible := False;
  divShade2.Visible := False;
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
    asm
      this.pz.reset();
    end;
    PhotoChanged;
    LogAction('[ New Photo URL Selected ]');
  end

  // Insert Account Author Profile Link
  else if btnURLOK.Tag = 2 then
  begin
    RowCount := -1;
    Link := editURL.Text;
    asm
      var This = pas.Unit1.Form1;
      var newid = This.tabAccountLinks.getDataCount();
      This.tabAccountLinks.addRow({
        "ID": newid,
        "Sort": newid,
        "Link": Link
      });
      RowCount = newid;
    end;

    HideTooltips;
    UpdateAccountLinks();
    LogAction('[ Insert Account Link (#'+IntToStr(RowCount)+'): '+Link+' ]');
  end

  // Edit Account Author Profile Link
  else if btnURLOK.Tag = 3 then
  begin
    RowCount := -1;
    Link := editURL.Text;
    asm
      var This = pas.Unit1.Form1;
      var tab = This.tabAccountLinks;
      var rows = tab.getSelectedRows();
      rows[0].getCell('Link').setValue(Link);
    end;

    HideTooltips;
    UpdateAccountLinks();
    LogAction('[ Edited Account Link (#'+IntToStr(RowCount)+'): '+Link+' ]');
  end;
  btnURLCancelClick(Sender);
end;

procedure TForm1.ConfigureTooltip(Button: TWebButton);
begin
  // If Font Awesome Pro is not available, switch to the free version
  //Button.Caption := StringReplace(Button.Caption,'fa-duotone','fa-solid',[]);

  Button.ElementHandle.setAttribute('title',Button.Hint);
  Button.ElementHandle.setAttribute('data-bs-toggle','tooltip');
  Button.ElementHandle.setAttribute('data-bs-trigger','hover');
  Button.ElementHandle.setAttribute('data-bs-placement','bottom');
  Button.ElementHandle.setAttribute('data-bs-delay','{"show": 1000, "hide": 100}');
  Button.ElementHandle.setAttribute('data-bs-custom-class','BLTooltip');

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
  if (Length(Trim(acct)) < 4) or (Length(Trim(acct)) > 32) then Result := Result + 'L';

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
     RequestResponse := await(StringRequest('ISystemService.CheckUnique',[
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

  // THIS NEEDS TO BE FIXED BY THE IDE?!


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
    if Pos('L', ValidTest) > 0 then ValidText := ValidText + '<br> - Between 4 and 32 characters';
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

procedure TForm1.editEMailChange(Sender: TObject);
var
  EMailValid: Boolean;

  function IsValidEMail(EMail: String):Boolean;
  begin
    Result := False;
    asm
      // https://www.regextester.com/115911
      var validformat = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/;
      if (EMail.match(validformat)) {
        Result = true;
      } else {
        Result = false;
      }
    end;
  end;

begin
  editEMailCode.Visible := False;
  EMailValid := IsValidEmail(editEMail.Text);
  if (Trim(editEMail.Text) = '') or (Trim(editEMail.Text) = User_EMail) then
  begin
    divChangeAccountEMail.ElementHandle.classList.add('pe-none');
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-xmark Swap fa-2x"></i>';
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Enter New E-Mail Address';
  end
  else if (EmailValid) then
  begin
    divChangeAccountEMail.ElementHandle.classList.remove('pe-none');
    btnChangeAccountEMail.Caption := '<i class="fa-duotone fa-paper-plane Swap fa-2x"></i>';
    labelChangeAccountEMail.ElementHandle.innerHTML := 'Send Confirmation Code';
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

      asm await sleep(1000); end;

      labelChangeAccountEMail.ElementHandle.innerHTML := 'E-Mail Address Updated';
      LogAction('E-Mail Address Updated');
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
  LogAction('Browser closed.');
  LogAction('Session Duration: '+FormatDateTime('h"h "m"m "s"s"', Now - App_Start));
  LoggedIn := False;
  tmrJWTRenewalTimer(nil);
end;

procedure TForm1.btnLinkCancelClick(Sender: TObject);
begin
  if (Sender is TWebButton) and ((Sender as TWebButton) = btnLinkCancel)
  then LogAction('[ Revert Account Links ]')
  else LogAction('Reverting Account Links');

  asm
    var This = pas.Unit1.Form1;
    var tab = This.tabAccountLinks;
    This.LinksData = JSON.parse(JSON.stringify(This.LinksDataBackup));
    tab.setData(This.LinksData);
  end;
  HideTooltips;
  UpdateAccountLInks;
  divAccountLinks.SetFocus();
end;

procedure TForm1.btnLinkDeleteClick(Sender: TObject);
var
  Link: String;
begin
  Link := 'not defined';
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
  asm
    var This = pas.Unit1.Form1;
    var tab = This.tabAccountLinks;
    var rows = tab.getSelectedRows();
    if (rows.length == 1) {
      CurrentLink = rows[0].getCell('Link').getValue();
    }
  end;

  if CurrentLink <> 'none' then
  begin
    editURL.Text :=  CurrentLink;
    asm editURLLabel.innerHTML = 'Edit Social Media / Contact Link'; end;
    btnURLOK.Tag := 3; // Edit Account Author Profile Link

    divShade2.Visible := True;
    divURL.Visible := True;
    divShade2.ElementHandle.style.setProperty('opacity','0.75');
    divURL.ElementHandle.style.setProperty('opacity','1.0');
    HideTooltips;

    LogAction(' ');
    LogAction('[ Editing Social Media URL ]');
  end;
end;

procedure TForm1.btnLinkInsertClick(Sender: TObject);
begin
  editURL.Text := '';
  asm editURLLabel.innerHTML = 'Enter a Social Media / Contact Link'; end;
  btnURLOK.Tag := 2; // Insert Account Author Profile Link

  divShade2.Visible := True;
  divURL.Visible := True;
  divShade2.ElementHandle.style.setProperty('opacity','0.75');
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
  asm
    LinkSave = JSON.stringify(pas.Unit1.Form1.tabAccountLinks.getData());
  end;

  LogAction('[ Saving Account Links ]');
  RequestResponse := await(StringRequest('IPersonService.UpdatePersonLinks',[
    User_ID,
    LinkSave
  ]));

  if RequestResponse = 'Success' then
  begin
    asm
      btnLinkSave.setAttribute('disabled','');
      btnLinkCancel.setAttribute('disabled','');
      this.LinksDataBackup = JSON.parse(LinkSave);
    end;
  end
  else
  begin
    btnLinkCancelClick(Sender);
    LogAction('Update Account Links Failed:');
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
  asm await sleep(500); end;
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

  asm await sleep(1000); end;
  divShade.Visible := False;
  divAccount.Visible := False;
  divAccount.ElementHandle.removeAttribute('data-x');
  divAccount.ElementHandle.removeAttribute('data-y');
  divAccount.ElementHandle.style.removeProperty('transform');

  LogAction('[ Account Settings Closed ]');

  await(tmrJWTRenewalTimer(Sender));
end;

procedure TForm1.btnAccountRefreshClick(Sender: TObject);
begin
  HideToolTips;

  btnAccountRefresh.Caption := '<i class="fa-duotone fa-rotate fa-spin Swap fa-xl"></i>';

  if (Sender is TWebButton) and ((Sender as TWebButton) = btnAccountRefresh)
  then LogAction('[ Account Settings Refresh ]')
  else LogAction('Refreshing Account Settings');

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
  comboActivityLog.ItemIndex := 0;

  if btnActivityLogTimezone.Tag = 1 then
  begin
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
    else if (divURL.Visible = True) then btnURLCancelClick(Sender)
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
    asm
      innerWidth = divShade.getBoundingClientRect().width;
      innerHeight = divShade.getBoundingClientRect().height;

      dialogTop = divAccount.getBoundingClientRect().top + (divAccount.getAttribute('data-y') || 0);
      dialogLeft = divAccount.getBoundingClientRect().left + (divAccount.getAttribute('data-x') || 0);
      dialogWidth = divAccount.getBoundingClientRect().width;
      dialogHeight = divAccount.getBoundingClientRect().height;
//      console.log('t: '+dialogTop+', l: '+dialogLeft+', w: '+dialogWidth+', h: '+dialogHeight+', IW: '+innerWidth+', IH: '+innerHeight);
    end;

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
  asm
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
  end;
  Result := EncodedText;
end;

procedure TForm1.StopLinkerRemoval(P: Pointer);                          begin end;
procedure TForm1.PreventCompilerHint(H: TJSHTMLElement);       overload; begin end;
procedure TForm1.PreventCompilerHint(I: integer);              overload; begin end;
procedure TForm1.PreventCompilerHint(J: JSValue);              overload; begin end;
procedure TForm1.PreventCompilerHint(S: string);               overload; begin end;

end.
