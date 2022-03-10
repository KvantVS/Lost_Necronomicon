unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmLabirinth2 = class(TForm)
    lblPlayer: TLabel;
    lblInfo1: TLabel;
    BitBtn1: TBitBtn;
    lblKubik: TLabel;
    Button1: TButton;
    lblInfo2: TLabel;
    lblFail: TLabel;
    Timer1: TTimer;
    lbl_Luck: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLabirinth2: TfrmLabirinth2;
  bMove:  byte;   // Переключатель (попытка выбраться или походить)

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmLabirinth2.BitBtn1Click(Sender: TObject);
begin
  If bMove=1 then begin                 // После удачного броска кубика
    bTmp:=Brosok;
    lblKubik.Caption:=lblKubik.Caption + '  ' + IntToStr(bTmp);
    lblKubik.Font.Color:=clBlack;
    Button1.Enabled:=True;
    BitBtn1.Enabled:=False;
  end;
  If bMove=0 then begin                 // Кидаем первый раз
    bTmp:=Brosok;
    lblKubik.Caption:=IntToStr(bTmp);
    lblKubik.Visible:=True;
    If (bTmp=5) or (bTmp=6) then begin  // Если удачно кинули кубик
      bMove:=1;
      Lbl_luck.Visible:=true;
      lblKubik.Font.Color:=clGreen;
      lblInfo1.Visible:=False;
      lblInfo2.Visible:=True;
      Button1.Enabled:=False;
      Button1.Caption:='Походить';
    end else begin
      lblInfo1.Visible:=False;
      lblFail.Visible:=True;
      BitBtn1.Enabled:=False;
    end;
  end;
end;

procedure TfrmLabirinth2.FormShow(Sender: TObject);
begin
  ShowWindow;
  AlphaBlendValue:=220;
  bMove:=0;
  BitBtn1.Enabled:=True;
  Button1.Caption:='Закрыть';
  lblPlayer.Caption:=Player[CurPlayer].Name;
  lblKubik.Font.Color:=clBlack;
  lblKubik.Visible:=False;
  lblInfo1.Visible:=True;
  lblInfo2.Visible:=False;
  lblFail.Visible:=False;
  Lbl_luck.Visible:=false;
end;

procedure TfrmLabirinth2.Button1Click(Sender: TObject);
begin
  close;
  if bMove=1 then begin
    PlayerMove(CurPlayer,bTmp);
  end;
end;

procedure TfrmLabirinth2.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue<7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmLabirinth2.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
