unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfrmTempleSun = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    UpDown1: TUpDown;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTempleSun: TfrmTempleSun;
  chg: shortint;
  bMaxH, bMaxM: byte;

implementation

Uses Unit1;

{$R *.dfm}

procedure TfrmTempleSun.FormShow(Sender: TObject);
begin
  ShowWindow;
  AlphaBlendValue:=220;
  Edit1.Text:='0';
  UpDown1.Position:=0;
  Label1.Caption:=Player[CurPlayer].Name;
  bMaxH:=25 - Player[CurPlayer].Health;
  bMaxM:=Player[CurPlayer].Mana - 1;
  If (bMaxH < bMaxM) then UpDown1.Max:=bMaxH
  else UpDown1.Max:=bMaxM;
end;

procedure TfrmTempleSun.BitBtn2Click(Sender: TObject);
begin
  HealthChange(CurPlayer,tmpHealth-Player[CurPlayer].Health);
  ManaChange(CurPlayer,tmpMana-Player[CurPlayer].Mana);
  Close;
end;

procedure TfrmTempleSun.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTempleSun.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  chg:=tmpHealth-Player[CurPlayer].Health+StrToInt(Edit1.Text);
  ManaChange(CurPlayer,-chg);
  HealthChange(CurPlayer,chg);
end;

procedure TfrmTempleSun.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue < 7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmTempleSun.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
