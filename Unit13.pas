unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmObelisk = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblKubik1: TLabel;
    btnUse: TBitBtn;
    btnIgnore: TBitBtn;
    btnKubik: TBitBtn;
    lblKubik2: TLabel;
    lblKubik3: TLabel;
    lblKubik4: TLabel;
    Timer1: TTimer;
    procedure btnUseClick(Sender: TObject);
    procedure btnIgnoreClick(Sender: TObject);
    procedure btnKubikClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObelisk: TfrmObelisk;

implementation

uses unit1;

{$R *.dfm}

procedure TfrmObelisk.btnUseClick(Sender: TObject);
begin
  ShowMessage('Вы получили дополнительный ход!' + #13#10 + 'Киньте кубик 2 раза, чтобы определить на какое количество клеток и в каком направлении Вы пойдете.');
  btnKubik.Visible:=true;
  Label3.Visible:=False;
  btnUse.Enabled:=False;
  btnIgnore.Visible:=False;
  btnIgnore.Caption:='Походить';
end;

procedure TfrmObelisk.btnIgnoreClick(Sender: TObject);
begin
  Close;
  if lblKubik2.Visible then begin
    if btmp<4 then PlayerMove(CurPlayer,-(strtoint(lblKubik1.Caption)));
    if btmp>3 then PlayerMove(CurPlayer,strtoint(lblKubik1.Caption));
  end;
end;

procedure TfrmObelisk.btnKubikClick(Sender: TObject);
begin
  if lblKubik1.Visible then begin
    btnKubik.Enabled:=False;
    Sleep(1000);
    bTmp:=Brosok;
    if btmp<4 then lblKubik2.Caption:='назад';
    if btmp>3 then lblKubik2.Caption:='вперед';
    lblKubik2.Visible:=True;
    lblKubik4.Visible:=True;
    btnIgnore.Visible:=True;
  end;
  if lblKubik1.Visible=False then begin
    btnKubik.Enabled:=False;
    Sleep(1000);
    lblKubik1.Caption:=inttostr(Brosok);
    lblkubik1.Visible:=True;
    lblKubik3.Visible:=True;
    btnKubik.Enabled:=true;
  end;
end;

procedure TfrmObelisk.FormShow(Sender: TObject);
begin
  ShowWindow;
  Label1.Caption:=Player[CurPlayer].Name;
  AlphaBlendValue:=220;
  label3.Visible:=True;
  lblKubik1.Visible:=False;
  lblKubik2.Visible:=False;
  btnKubik.Visible:=False;
  btnKubik.Enabled:=True;
  btnUse.Enabled:=True;
  btnIgnore.Caption:='Игнорировать';
  btnIgnore.Visible:=true;
  lblKubik3.Visible:=False;
  lblKubik4.Visible:=False;
end;

procedure TfrmObelisk.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue < 7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmObelisk.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
