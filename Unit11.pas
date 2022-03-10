unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmStorm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStorm: TfrmStorm;

implementation

uses unit1;

{$R *.dfm}

procedure TfrmStorm.FormShow(Sender: TObject);
begin
  ShowWindow;
  AlphaBlendValue:=220;
  Label1.Caption:=Player[CurPlayer].Name;
  Label3.Caption:='- ' + IntToStr(bTmp) + ' � ��������';
end;

procedure TfrmStorm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmStorm.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue<7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmStorm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
