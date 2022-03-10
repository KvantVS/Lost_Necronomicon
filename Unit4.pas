unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmSwamp = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  frmSwamp: TfrmSwamp;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmSwamp.FormShow(Sender: TObject);
begin
  ShowWindow;
  AlphaBlendValue:=220;
  Label1.Caption:=Player[CurPlayer].Name;
end;

procedure TfrmSwamp.BitBtn1Click(Sender: TObject);
begin
  ManaChange(CurPlayer,-1);
  Udalennye:=Udalennye+[NK];
  Close;
end;

procedure TfrmSwamp.BitBtn2Click(Sender: TObject);
begin
  Player[CurPlayer].PropuskSledHoda:=True;
{dev}  // перевернуть рубашкой вверх
  ShowMessage('Игрок ' + IntToStr(CurPlayer) + ' погряз в болоте и пропускает следующий ход...');
  Close;
end;

procedure TfrmSwamp.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue < 7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmSwamp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
