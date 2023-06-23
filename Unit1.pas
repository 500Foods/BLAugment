unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.WebCtrls,
  Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TForm1 = class(TWebForm)
    divHeader: TWebHTMLDiv;
    divLogo: TWebHTMLDiv;
    divAccounts: TWebHTMLDiv;
    divSearch: TWebHTMLDiv;
    divSearchBG: TWebHTMLDiv;
    editSearch: TWebEdit;
    divAccountsBG: TWebHTMLDiv;
    btnTheme: TWebButton;
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
    procedure WebFormCreate(Sender: TObject);
    procedure btnThemeClick(Sender: TObject);
    procedure btnBlogClick(Sender: TObject);
    procedure ConfigureTooltip(Button: TWebButton);
    procedure btnSearchClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Theme: String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnBlogClick(Sender: TObject);
begin
  // Blog Button Clicked

  // Toggle button highlight (Selected class sets background to Yellow)
  if (Sender is TWebButton) then
  begin
    (Sender as TWebButton).ElementHandle.ParentElement.firstElementChild.classList.toggle('Selected');
  end;


end;

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  // Login

end;

procedure TForm1.btnRegisterClick(Sender: TObject);
begin
  // Register Account

end;

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  // Search for Blogs

end;

procedure TForm1.btnThemeClick(Sender: TObject);
begin
  // Switch Themes - only 'dark' and 'light' for now
  if Theme = 'dark' then
  begin
    Theme := 'red';
    btnTheme.Caption := '<i class="fa-duotone fa-heart fa-3x"></i>';
  end
  else if Theme = 'red' then
  begin
    Theme := 'light';
    btnTheme.Caption := '<i class="fa-duotone fa-sun fa-3x"></i>';
  end
  else
  begin
    Theme := 'dark';
    btnTheme.Caption := '<i class="fa-duotone fa-moon fa-3x"></i>';
  end;

  // If Font Awesome Pro is not available, switch to the free version
  // btnTheme.Caption := StringReplace(btnTheme.Caption,'fa-duotone','fa-solid',[]);

  // this sets the 'theme' attribute in the top-most <html> tag
  document.documentElement.setAttribute('theme', Theme);
end;

procedure TForm1.ConfigureTooltip(Button: TWebButton);
begin
  // If Font Awesome Pro is not available, switch to the free version
  //Button.Caption := StringReplace(Button.Caption,'fa-duotone','fa-solid',[]);

  Button.ElementHandle.setAttribute('title',Button.Hint);
  Button.ElementHandle.setAttribute('data-bs-toggle','tooltip');
  Button.ElementHandle.setAttribute('data-bs-placement','bottom');
  Button.ElementHandle.setAttribute('data-bs-delay','{"show": 1000, "hide": 0}');
  Button.ElementHandle.setAttribute('data-bs-custom-class','BLTooltip');

end;

procedure TForm1.WebFormCreate(Sender: TObject);
begin

  // Set Default Theme
  Theme := 'dark';

  // Configure buttons to use Bootstrap tooltips
  ConfigureTooltip(btnSearch);
  ConfigureTooltip(btnRegister);
  ConfigureTooltip(btnLogin);
  ConfigureTooltip(btnTheme);

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

  asm
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
  end;


end;

end.
