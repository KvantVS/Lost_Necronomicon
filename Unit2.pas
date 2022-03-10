unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPlayers = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlayers: TfrmPlayers;
  SavePlayersNumber:  byte;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmPlayers.BitBtn1Click(Sender: TObject);
begin
  IF PlayersNumber=2 then begin
    Form1.Fishka3.Visible:=False;
    Form1.Fishka4.Visible:=False;
    Form1.lbl_player3name.Visible:=False;
    Form1.lbl_player4name.Visible:=False;
    Form1.ImgTab3.Visible:=False;
    Form1.ImgTab4.Visible:=False;
        Form1.gPl3Health.Visible:=False;
    Form1.gPl3Mana.Visible:=False;
    Form1.gPl4Health.Visible:=False;
    Form1.gPl4Mana.Visible:=False;
    Form1.Bevel3.Visible:=False;
  end;
  IF PlayersNumber=3 then begin
    Form1.Fishka3.Visible:=True;
    Form1.Fishka4.Visible:=False;
    Form1.lbl_player3name.Visible:=True;
    Form1.lbl_player4name.Visible:=False;
    Form1.ImgTab3.Visible:=True;
    Form1.ImgTab4.Visible:=False;
        Form1.gPl3Health.Visible:=True;
    Form1.gPl3Mana.Visible:=True;
    Form1.gPl4Health.Visible:=False;
    Form1.gPl4Mana.Visible:=False;
    Form1.Bevel3.Visible:=True;
  end;
  IF PlayersNumber=4 then begin
    Form1.Fishka3.Visible:=True;
    Form1.Fishka4.Visible:=True;
    Form1.lbl_player3name.Visible:=True;
    Form1.lbl_player4name.Visible:=True;
    Form1.ImgTab3.Visible:=True;
    Form1.ImgTab4.Visible:=True;
        Form1.gPl3Health.Visible:=True;
    Form1.gPl3Mana.Visible:=True;
    Form1.gPl4Health.Visible:=True;
    Form1.gPl4Mana.Visible:=True;
    Form1.Bevel3.Visible:=True;
  end;
  Close;
end;

procedure TfrmPlayers.BitBtn2Click(Sender: TObject);
begin
  PlayersNumber:=SavePlayersNumber;     // если нажали "отмена" - оставляем прежнее кол-во игроков
  Close;
end;

procedure TfrmPlayers.CheckBox1Click(Sender: TObject);
begin
  Edit3.Enabled:=(Sender as TCheckbox).checked;
  Image3.Visible:=(Sender as TCheckbox).checked;
  if (Sender as TCheckbox).checked then inc(PlayersNumber) else dec(PlayersNumber);
end;

procedure TfrmPlayers.CheckBox2Click(Sender: TObject);
begin
  Edit4.Enabled:=(Sender as TCheckbox).checked;
  Image4.Visible:=(Sender as TCheckbox).checked;
  if (Sender as TCheckbox).checked then inc(PlayersNumber) else dec(PlayersNumber);
end;

procedure TfrmPlayers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (checkbox2.checked) and (not checkbox1.checked) then
    edit3.Text:=edit4.text;

  If Edit1.Text='' then Player[1].Name:='Игрок 1' else Player[1].Name:=Edit1.Text;
  If Edit2.Text='' then Player[2].Name:='Игрок 2' else Player[2].Name:=Edit2.Text;
  If Edit3.Text='' then Player[3].Name:='Игрок 3' else Player[3].Name:=Edit3.Text;
  If Edit4.Text='' then Player[4].Name:='Игрок 4' else Player[4].Name:=Edit4.Text;

  Form1.lbl_player1name.Caption:=Player[1].Name;
  Form1.lbl_player2name.Caption:=Player[2].Name;
  Form1.lbl_player3name.Caption:=Player[3].Name;
  Form1.lbl_player4name.Caption:=Player[4].Name;
end;

procedure TfrmPlayers.FormShow(Sender: TObject);
begin
  SavePlayersNumber:=PlayersNumber;
  Image1.Visible:=true;
  Image2.Visible:=true;
end;

end.
