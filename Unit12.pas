unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmDungeon = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lblMonster: TLabel;
    lblHM: TLabel;
    lblKubik: TLabel;
    Timer1: TTimer;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDungeon: TfrmDungeon;

implementation

Uses Unit1, Unit17;

{$R *.dfm}

procedure TfrmDungeon.BitBtn2Click(Sender: TObject);
begin
  BitBtn2.Enabled:=False;
  form1.btnDungeon.Enabled:=False;
  Sleep(2000);
  bTmp:=Brosok;
//  LblKubik.Caption:=IntToStr(bTmp);
//  lblKubik.Visible:=True;
//{dev} - ������ � ���������
  if bTmp=1 then begin
    lblMonster.Visible:=True;
    lblMonster.Caption:='�� ��������� ��������!';
    iMonsterType:=1;
    MonsterFromDungeon:=true;
    frmMonster.showmodal;
  end;
  if bTmp=2 then begin
    lblMonster.Visible:=True;
    lblMonster.Caption:='�� ��������� �����!';
    iMonsterType:=2;
    MonsterFromDungeon:=true;
    frmMonster.showmodal;
  end;
  if bTmp=3 then begin
    lblMonster.Visible:=True;
    lblMonster.Caption:='�� ��������� �����!';
    iMonsterType:=3;
    MonsterFromDungeon:=true;
    frmMonster.showmodal;
  end;
  if bTmp=4 then begin
    lblHM.Visible:=True;
    lblHM.Caption:='�� ����� �������, +8 � ����';
    ManaChange(CurPlayer,8);
    Player[CurPlayer].HealthManaInc:=False;
  end;
  if bTmp=5 then begin
    lblHM.Visible:=True;
    lblHM.Caption:='�� ����� �������, +8 � ��������';
    HealthChange(CurPlayer,8);
    Player[CurPlayer].HealthManaInc:=False;
  end;
  if bTmp=6 then begin
    lblHM.Visible:=True;
    lblHM.Caption:='+4 � ����' + #13#10 + '+4 � ��������';
    HealthChange(CurPlayer,4);
    ManaChange(CurPlayer,4);
    Player[CurPlayer].HealthManaInc:=False;
  end;
  BitBtn1.Caption:='�������';
end;

procedure TfrmDungeon.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDungeon.FormShow(Sender: TObject);
begin
  ShowWindow;

  AlphaBlendValue:=220;
  Label1.Caption:=Player[CurPlayer].Name;
  lblHM.Visible:=false;
  lblMonster.Visible:=false;
  lblKubik.Visible:=False;
  BitBtn1.Caption:='��������';
  bitbtn2.Enabled:=True;
end;

procedure TfrmDungeon.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue<7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmDungeon.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
