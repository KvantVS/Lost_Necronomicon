unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmLabirinth = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Timer1: TTimer;
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
  frmLabirinth: TfrmLabirinth;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmLabirinth.FormShow(Sender: TObject);
begin
  ShowWindow;

  AlphaBlendValue:=220;
  Label1.Caption:=Player[CurPlayer].Name;
end;

procedure TfrmLabirinth.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLabirinth.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  If AlphaBlendValue<7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmLabirinth.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=False;
  if AlphaBlendValue<8 then CanClose:=True;
  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
