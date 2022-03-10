{  If Player[1].Position < 9 then begin
    If Player[1].Position=3 then PlayerMove(1,-Player[1].Position);
    If Player[1].Position=4 then PlayerMove(1,-Player[1].Position);
    If Player[1].Position=5 then PlayerMove(1,-Player[1].Position);
    If Player[1].Position=6 then PlayerMove(1,-Player[1].Position);
    If Player[1].Position=7 then PlayerMove(1,-Player[1].Position);
    If Player[1].Position=8 then PlayerMove(1,-7);
  end else begin
    for i:=3 to 9 do begin
      if (Player[1].Position=sqr(i)) then begin
        PlayerMove(1,-Player[1].Position + sqr(i-2));         // угловые точки
        exit;
      end;
      if (Player[1].Position=sqr(i)+i) then begin
        PlayerMove(1,-Player[1].Position + sqr(i-2) + (i-2)); // угловые точки
        exit;
      end else begin
        IF (Player[1].Position > sqr(i)) AND (Player[1].Position < sqr(i)+i) then begin
          if i mod 2 <> 0 then bBase:=1;
          if i mod 2 = 0  then bBase:=-3;
          PlayerMove(1,-(bBase + 8 * (i div 2)));
          exit;
        end;
        IF (Player[1].Position > sqr(i)+i) AND (Player[1].Position < sqr(i+1)) then begin
          if i mod 2 <> 0 then bBase:=3;
          if i mod 2 = 0  then bBase:=-1;
          PlayerMove(1,-(bBase + 8 * (i div 2)));
          exit;
        end;
      end;
    end;
  end;    }

{     -= VARIANT II =-
      if (Player[1].Position=sqr(i)) then begin
        PlayerMove(1,-Player[1].Position + sqr(i-2));        // угловые точки
        Exit;
      end;
      if (Player[1].Position=sqr(i)+i) then begin
        PlayerMove(1,-Player[1].Position + sqr(i-2) + (i-2)); // угловые точки
        exit;
      end
      else
      If i > 3 then begin
        IF (Player[1].Position > sqr(i-1)+(i-1)) AND (Player[1].Position < sqr(i)) then begin
          if (i mod 2 = 0) then bBase:=3;          //Ќижн€€ сторона спирали
          if (i mod 2 <>0) then bBase:=7;          //¬ерхн€€ сторона спирали
          PlayerMove(1,-(bBase + 8 * (i div 2 - 1)));
        end;
        IF (Player[1].Position > sqr(i)) AND (Player[1].Position < sqr(i)+i) then begin
          if (i mod 2 = 0) then bBase:=5;          //ѕрава€ сторона спирали
          if (i mod 2 <>0) then bBase:=9;          //Ћева€ сторона спирали
          PlayerMove(1,-(bBase + 8 * (i div 2 - 1)));
        end;
      end;
}
unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit1, ExtCtrls;

type
  TfrmTeleport = class(TForm)
    Label1: TLabel;
    lblText: TLabel;
    lblTeleport: TLabel;
    btnClose: TButton;
    lblOutside: TLabel;
    lblKubik: TLabel;
    Timer1: TTimer;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeleport: TfrmTeleport;
  blMove: boolean;

implementation

//uses Unit1;

{$R *.dfm}

procedure TfrmTeleport.FormShow(Sender: TObject);
VAR
  s:  string;
begin
  ShowWindow;
  s:=inttostr(bTmp);
  if s[1]='-' then delete(s,1,1);
  Label1.Caption:=Player[CurPlayer].Name;
  AlphaBlendValue:=220;
  lblOutside.Visible:=False;
  lblTeleport.Visible:=True;
  lblKubik.Visible:=False;
  If NK=67 then begin
    lblTeleport.Caption:=sTmp;
    lblTeleport.Font.Color:=clGreen;
    lblTeleport.Visible:=False;
    lblOutside.Visible:=True;
    btnClose.Caption:=' инуть кубик';
  end;
//  If (NK=83) or (NK=84) then sTmp:=' клеток';
  If bTmp<0 then begin
    lblTeleport.font.Color:=clRed;
    lblTeleport.Caption:='¬ы перемещаетесь на ' + s + ' клетки назад.';
  end;
  If bTmp>0 then begin
    lblTeleport.Font.Color:=clGreen;
    lblTeleport.Caption:='¬ы перемещаетесь на ' + s + ' клетки вперед.';
  end;
  If (NK=68) or (NK=69) then begin
    lblTeleport.Font.Color:=clRed;
    lblTeleport.Caption:=sTmp;
  end;
end;

procedure TfrmTeleport.btnCloseClick(Sender: TObject);
var
  bBase:  ShortInt;
  i:  byte;
  iPP:  byte;
  bMove:  ShortInt;
begin
  iPP:=Player[CurPlayer].Position;
  If NK=67 then begin                 // Ќа внешний виток
    If not lblKubik.Visible then begin          //  инуть кубик
      bTmp2:=0;
      bTmp2:=Brosok;
      btnClose.Enabled:=False;
      Sleep(1000);
      lblKubik.Caption:=inttostr(btmp2);
      lblKubik.Visible:=True;
      btnClose.Enabled:=True;
      btnClose.Caption:='OK';
      If (bTmp2=5) or (bTmp2=6) then blMove:=True
      else begin
        blMove:=False;
        lblTeleport.Font.color:=$8c8c8c;
        lblTeleport.Caption:='¬ы не сумели активировать портал.';
        bMove:=0;
      end;
      lblTeleport.Visible:=True;
      lblOutside.Visible:=False;
      exit;
    end else begin         // ≈сли кубик уже кидалс€
      If blMove then begin
        for i:=8 downto 2 do begin
          if (iPP=sqr(i)) then begin
            If i=8 then bMove:=-iPP + sqr(i+2)-1 else
              bMove:=-iPP + sqr(i+2);       // угловые точки
            break;
          end;
          if (iPP=sqr(i)-i) then begin
            bMove:=-iPP + sqr(i+2) - (i+2); // угловые точки
            break;
          end;
          IF (iPP < sqr(i)) AND (iPP > sqr(i)-i) then begin
            if i mod 2 <> 0 then bBase:=7;
            if i mod 2 = 0  then bBase:=3;
            bMove:=bBase + 8 * (i div 2);
            break;
          end;
          IF (iPP < sqr(i)-i) AND (iPP > sqr(i-1)) then begin
            if i mod 2 <> 0 then bBase:=5;
            if i mod 2 = 0  then bBase:=1;
            bMove:=bBase + 8 * (i div 2);
            break;
          end;
        end;
      end else begin// если в первом нажатии кнопки не выпало "5" или "6"
        Close;
        Exit;
      end;
    end;
  end
  else If (NK=68) or (NK=69) then begin    // на внутренний виток
    If (iPP<9) then begin
      If (iPP=1) or (iPP=2) or (iPP=3) or (iPP=4) or (iPP=5) or (iPP=6) or (iPP=7) then bMove:=-iPP;
      If iPP=8 then bMove:=-7;
    end else begin
      for i:=3 to 9 do begin
        if (iPP=sqr(i)) then begin
          bMove:=-iPP + sqr(i-2);         // угловые точки
          break;
        end;
        if (iPP=sqr(i)+i) then begin
          bMove:=-iPP + sqr(i-2) + (i-2); // угловые точки
          break;
        end else begin
          IF (iPP > sqr(i)) AND (iPP < sqr(i)+i) then begin
            if i mod 2 <> 0 then bBase:=1;
            if i mod 2 = 0  then bBase:=-3;
            bMove:=-(bBase + 8 * (i div 2));
            break;
          end;
          IF (iPP > sqr(i)+i) AND (iPP < sqr(i+1)) then begin
            if i mod 2 <> 0 then bBase:=3;
            if i mod 2 = 0  then bBase:=-1;
            bMove:=-(bBase + 8 * (i div 2));
            break;
          end;
        end;
      end;
    end;
  end else If (NK<>67) AND (NK<>68) AND (NK<>69) THEN bMove:=bTmp;
//  PlayerMove(CurPlayer,bMove);
  bTmp:=bMove;  // передаем обратно на главную форму (количество шагов дл€ движени€) и там уже вызываем PlayerMove
  Close;
end;

procedure TfrmTeleport.Timer1Timer(Sender: TObject);
begin
  AlphaBlendValue:=AlphaBlendValue-7;
  if AlphaBlendValue < 7 then begin
    Timer1.Enabled:=False;
    Close;
  end;
end;

procedure TfrmTeleport.Button1Click(Sender: TObject);
begin
  playermove(curplayer, strtoint(edit1.Text));
end;

procedure TfrmTeleport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//  CanClose:=False;
//  if AlphaBlendValue<8 then CanClose:=True;
//  if canclose then Timer1.enabled:=False else Timer1.enabled:=True;
end;

end.
