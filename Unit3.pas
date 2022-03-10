unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmTrap1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrap1: TfrmTrap1;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmTrap1.FormShow(Sender: TObject);
begin
  ShowWindow;
  AlphaBlendValue:=220;
  Label2.Caption:=Player[CurPlayer].Name;
  If Player[CurPlayer].Mana>0 then BitBtn1.Font.Color:=$000000
  else BitBtn1.Font.Color:=$AAAAAA;
end;

procedure TfrmTrap1.BitBtn1Click(Sender: TObject);
begin
  if Player[CurPlayer].Mana>0 then begin
    Player[CurPlayer].setPlTraps:=Player[CurPlayer].setPlTraps+[NK];
    ManaChange(CurPlayer,-1);
    blPerevorot:=False;
{dev}//вставить процедуру пометки карточки с ловушкой "своим" знаком
  end else
    ShowMessage('Ќедостаточно маны!');
  Close;
end;

procedure TfrmTrap1.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTrap1.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue < 7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmTrap1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
