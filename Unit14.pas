unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmArtifact = class(TForm)
    Label1: TLabel;
    lblDesc: TLabel;
    btnClose: TButton;
    Timer1: TTimer;
    lbl_art: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArtifact: TfrmArtifact;

implementation

Uses Unit1;

{$R *.dfm}
{[3,4,17,35,36,37,40,55]
Clock,AirShield,Medalion,Staff,Rune,Pentagramma,LifeSphere,ThunderSword}
procedure TfrmArtifact.FormShow(Sender: TObject);
begin

  ShowWindow;

  AlphaBlendValue:=220;
  Label1.Caption:=Player[CurPlayer].Name;
  If NK = 3 then begin
    lbl_art.Caption:='�� ����� �������� "����"!';
    lblDesc.Caption:='� ��� ������� ����� �������������� �������� ��������� � ������ �������� � ����.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [Clock];
  end;
  If NK = 4 then begin
    lbl_art.Caption:='�� ����� �������� "��������� ���"!';
    lblDesc.Caption:='�� ����� ���������� ����� �������������� �������, ��� ���� ������ ������� ������ � ��� ���� ������ ��������, ��� ���� ���� �������.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [AirShield];
  end;
  If NK = 17 then begin
    lbl_art.Caption:='�� ����� �������� "��������"!';
    lblDesc.Caption:='����� �� ������ �� ������ �������� �� ��������� � ��������� � ������. ���� � ����� �� ���� ����� �� �������� +7 � ����.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [Medalion];
  end;
  If NK = 35 then begin
    lbl_art.Caption:='�� ����� �����!';
    lblDesc.Caption:='� ��� ������� ����� ��������� �����, ������������ �� ����� ������ � ����.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [Staff];
  end;
  If NK = 36 then begin
    lbl_art.Caption:='�� ����� ����!';
    lblDesc.Caption:='� ������� ��� ����� ��������� �����, ����������� �� ����� ������ � ����.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [Rune];
  end;
  If NK = 37 then begin
    lbl_art.Caption:='�� ����� �������� "�����������"!';
    lblDesc.Caption:='� �� ������� ����� ��������� ��������, ������������ �� ����� ������ � ����.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [Pentagramma];
  end;
  If NK = 40 then begin
    lbl_art.Caption:='�� ����� �������� "����� �����"!';
    lblDesc.Caption:='���� ��� �����-���� ��������������� �������� ������ ����� ������ ���� ��� 0, �� ����������� �����, �� ��������� +10 � �������� � ����������� ����.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [LifeSphere];
  end;
  If NK = 55 then begin
    lbl_art.Caption:='�� ����� "��� ������"!';
    lblDesc.Caption:='�� ����� ��������� �������, ������������ �� ����� ������ � ����.';
    Player[CurPlayer].Artifacts := Player[CurPlayer].Artifacts + [ThunderSword];
  end;
end;

procedure TfrmArtifact.btnCloseClick(Sender: TObject);
begin
  close;
//  lblDesc.Caption:='';
end;

procedure TfrmArtifact.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue < 8 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmArtifact.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
