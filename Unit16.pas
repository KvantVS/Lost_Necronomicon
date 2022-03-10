unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPlayerNextMove = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlayerNextMove: TfrmPlayerNextMove;
  TimerOn:  boolean = False;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmPlayerNextMove.FormShow(Sender: TObject);
begin
  Top:=Form1.Top+25;
  left:=(form1.Left+form1.Width) div 2;
  TimerOn:=False;
  AlphaBlendValue:=1;
  label2.Caption:=Player[CurPlayer].Name;
  Form1.lblPlayerName.Caption:=Player[CurPlayer].Name;
  case CurPlayer of
    1: begin label2.Font.Color:=clRed;    form1.lblPlayerName.Font.Color:=clRed; end;
    2: begin label2.Font.Color:=clBlue;   form1.lblPlayerName.Font.Color:=clBlue; end;
    3: begin label2.Font.Color:=clYellow; form1.lblPlayerName.Font.Color:=clYellow; end;
    4: begin label2.Font.Color:=clGreen;  form1.lblPlayerName.Font.Color:=clGreen; end;
  end;

  Timer1.Enabled:=True;
end;

procedure TfrmPlayerNextMove.Timer1Timer(Sender: TObject);
begin
  If not TimerON then begin              // если форма начинает появляться
    AlphaBlendValue:=AlphaBlendValue+7;  //
    If AlphaBlendValue > 220 then begin  //
      Timer1.Enabled:=False;             //
      Timer2.Enabled:=True;              //
    end;                                 //
  end;                                   /////////////////////////////////
  If TimerON then begin                  // если форма закрывается
    AlphaBlendValue:=AlphaBlendValue-10; //
    If AlphaBlendValue < 11 then begin   //
      Timer1.Enabled:=False;             //
      Close;                             //
    end;                                 //
  end;                                   /////////////////////////
end;

procedure TfrmPlayerNextMove.Timer2Timer(Sender: TObject);
begin
  TimerON:=True;
  Timer1.Enabled:=True;
  Timer2.Enabled:=False;
end;

end.
