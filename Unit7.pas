unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmTrap = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnOK: TButton;
    btnArtifact: TBitBtn;
    Label5: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnArtifactClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrap: TfrmTrap;
  bArt: byte;         // Переключатель (Использовал ли игрок артефакт)

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmTrap.FormShow(Sender: TObject);
begin
  ShowWindow;
  AlphaBlendValue:=220;
  btnOK.Enabled:=True;
  btnArtifact.Visible:=False;
  bArt:=0;
  If AirShield in Player[CurPlayer].Artifacts then btnArtifact.Visible:=True;
  label1.Caption:=Player[CurPlayer].Name;
  Label2.Caption:='Эта ловушка принадлежит игроку ' + #13#10 + IntToStr(bPLTrap);
  Label3.Caption:='Игрок ' + IntToStr(CurPlayer) + ': -' + IntToStr(bTmp) + ' к здоровью';
  Label4.Caption:='Игрок ' + IntToStr(bPLTrap)   + ': +' + IntToStr(bTmp) + ' к здоровью';
end;


procedure TfrmTrap.btnOKClick(Sender: TObject);
begin
  btnOK.Enabled:=False;
  If bArt=0 then begin
    HealthChange(CurPlayer,-bTmp); // урон текущему игроку
    HealthChange(bPLTrap,bTmp);    // ++ здоровье владельцу ловушки
  end;
  Close;
end;

procedure TfrmTrap.btnArtifactClick(Sender: TObject);
begin
  btnArtifact.Visible:=False;
  Player[CurPlayer].Artifacts:=Player[CurPlayer].Artifacts - [AirShield];
  Label2.Caption:='Вы использовали артефакт "Воздушный Щит". Ловушка была уничтожена, а игрок ' + IntToStr(bPLTrap) + ' теряет в два раза больше здоровья, чем была сила ловушки.';
  Label3.Caption:='Игрок ' + IntToStr(bPLTrap) + ': -' + IntToStr(bTmp * 2) + ' к здоровью';
  Label4.Visible:=False;
  HealthChange(bPLTrap,-(bTmp*2));
  bArt:=1;
end;

procedure TfrmTrap.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue < 7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmTrap.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
