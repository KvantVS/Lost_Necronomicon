unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmHealthMana = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Timer1: TTimer;
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
  frmHealthMana: TfrmHealthMana;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmHealthMana.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmHealthMana.FormShow(Sender: TObject);
begin
  ShowWindow;
  Label1.Caption:=Player[CurPlayer].Name;
  Label3.Caption:='+ ' + inttostr(bTmp) + sTmp;
  AlphaBlendValue:=220;
end;

procedure TfrmHealthMana.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  If AlphaBlendValue<7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmHealthMana.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
