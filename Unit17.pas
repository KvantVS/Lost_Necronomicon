unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfrmMonster = class(TForm)
    lblPlayer: TLabel;
    Image1: TImage;
    Label1: TLabel;
    lblMonster: TLabel;
    btn_Priruchenie: TButton;
    btn_fight: TButton;
    lbl_Fight1: TLabel;
    lbl_kubik_string: TLabel;
    lbl_kubik_integer: TLabel;
    btn_Kubik: TButton;
    btn_close: TButton;
    lbl_NoMana: TLabel;
    lbl_Luck: TLabel;
    lbl_mana: TLabel;
    lbl_Health: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn_PriruchenieClick(Sender: TObject);
    procedure btn_fightClick(Sender: TObject);
    procedure btn_KubikClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonster: TfrmMonster;
  iPodchinenie: byte;
  iSrajenie:   byte;
  iUron:        byte;
  iType:        byte;

  setLuckyKubik:  set of byte;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmMonster.btn_closeClick(Sender: TObject);
begin
close;
end;

procedure TfrmMonster.btn_fightClick(Sender: TObject);
begin
  label1.visible:=false;
  lbl_Fight1.visible:=true;
  btn_Kubik.visible:=true;
  btn_Priruchenie.visible:=false;
  btn_fight.visible:=false;

end;

procedure TfrmMonster.btn_KubikClick(Sender: TObject);
var
  kub:  byte;
  Panel: TComponent;
begin
  kub:=Brosok;
  lbl_kubik_string.Visible:=true;
  lbl_kubik_integer.Visible:=true;
  lbl_kubik_integer.Caption:=inttostr(kub);
  ManaChange(CurPlayer, -iSrajenie);
  lbl_Mana.caption:='-'+ inttostr(iSrajenie) + ' к мане';
  lbl_mana.Visible:=true;

  if kub in setLuckyKubik then begin       // Победа
    Player[curplayer].OnMonster:=false;
    lblMonster.Caption:='Победа!';
    lbl_Luck.Caption:='Удача!';
    lbl_kubik_integer.Font.Color:=clGreen;
    if (iType<>0) or (not MonsterFromDungeon) then begin                 // Если победили не дракона
      Player[CurPlayer].Expirience:=Player[CurPlayer].Expirience + iUron;
      Player[CurPlayer].PobejdennyeMonstry:=Player[CurPlayer].PobejdennyeMonstry + [NK];
      inc(Player[curplayer].MonstersCount);
      Panel:=Form1.FindComponent('panel_monsters_player'+inttostr(CurPlayer));
      with TImage.Create(Panel) do begin
        Name:='img_pl' + inttostr(curPlayer) + '_monster' + inttostr(Player[curplayer].MonstersCount);
        left:=Player[curplayer].MonstersCount*64 - 63;
        top:=Player[curplayer].MonstersCount div 5 * 64;  // 1,2,3,4div5=0. 6div5=1 1*64 = 64, и так далее
        width:=64;
        height:=64;
        picture.Bitmap.Assign((img as TImage).Picture.Bitmap);
        Cursor:=crHandPoint;
        Tag:=(img as TImage).Tag;
        OnClick:=Form1.ClickMonsterCard;
        parent:=(Panel as TWinControl);
      end;
      Udalennye:=Udalennye+[NK];
      (Img as TImage).SendToBack;
    end;

  end else begin
    lblMonster.Caption:='Поражение...';    // Поражение
    lbl_Luck.Caption:='Неудача...';
    lbl_kubik_integer.Font.Color:=clRed;
    HealthChange(CurPlayer, -iUron);
    lbl_Health.Caption:='-' + inttostr(iUron)+ ' к здоровью';
    lbl_Health.visible:=true;
  end;
  lbl_Luck.Visible:=true;
  lbl_Fight1.visible:=false;     // убираем надпись "киньте кубик"
  btn_Kubik.Visible:=false;
  btn_Close.Visible:=true;
end;

procedure TfrmMonster.btn_PriruchenieClick(Sender: TObject);
begin
  if {NK in [20..21,33..34]} iType=0 then showmessage('Дракона приручить нельзя')
  else begin
    If player[curplayer].Mana<iPodchinenie then showmessage('Недостаточно маны для приручения...')
    else begin
      player[curplayer].PodchinMonstry:=player[curplayer].PodchinMonstry + [NK];
      ManaChange(CurPlayer, -iPodchinenie);
      lbl_Mana.caption:='-'+ inttostr(iPodchinenie) + ' к мане';
      lbl_mana.Visible:=true;
      Label1.caption:='Вы успешно приручили создание!';
      btn_Priruchenie.Visible:=false;
      btn_fight.Visible:=false;
      btn_close.Visible:=true;
    end;
  end;
end;

procedure TfrmMonster.FormShow(Sender: TObject);
var
  i:  integer;
  cmp:  TComponent;
begin
  Label1.caption:='Вы хотите сражаться или попытаетесь приручить существо?';
  setLuckyKubik:=[];
  if MonsterFromDungeon then begin
    if iMonsterType=1 then bTmp:=8;   // Призрак
    if iMonsterType=2 then bTmp:=1;   // Мумия
    if iMonsterType=3 then bTmp:=16;  // Зомби
  end;
  iPodchinenie:=monster[bTmp].Podchinenie;
  iSrajenie:=monster[bTmp].Srajenie;
  iUron:=monster[bTmp].Uron;
  iType:=monster[bTmp].iTypeOfMonster; // iType:=iMonsterType;

  if MonsterFromDungeon then begin
    for i:=0 to Form1.ComponentCount-1 do begin
      cmp:=Form1.Components[i];
      if (cmp.Tag = Monster[bTmp].NomerKarty) and (cmp.ClassName='TImage') then
      Image1.Picture.Bitmap.Assign((cmp as TImage).Picture.Bitmap);
    end;
  end else   Image1.Picture.Bitmap.Assign((img as TImage).Picture.Bitmap);

  if MonsterFromDungeon then btn_priruchenie.visible:=false else btn_priruchenie.visible:=true;
  btn_fight.visible:=true;
  btn_Kubik.visible:=false;
  btn_close.Visible:=false;
  btn_priruchenie.Enabled:=true;
  lblPlayer.Caption:=Player[CurPlayer].Name;
  lbl_NoMana.Visible:=false;
  Label1.Visible:=true;
  lbl_Mana.visible:=false;
  lbl_Health.visible:=false;
  lbl_Luck.visible:=false;
  lbl_kubik_string.visible:=false;
  lbl_kubik_integer.visible:=false;

  if Player[CurPlayer].Mana < iSrajenie then begin
    Label1.Visible:=false;
    lbl_NoMana.Visible:=true;
    btn_fight.visible:=false;
    btn_Priruchenie.Visible:=false;
    btn_close.Visible:=true;
    {dev}
  end;

  for i := 1 to 4 do
  if (NK in Player[i].PodchinMonstry) then begin
    if (i<>CurPlayer) then begin
      btn_Priruchenie.Visible:=false;
      label1.Caption:='Существо принадлежит игроку '+ Player[i].Name + '. Вы должны драться.';
      label1.Visible:=true;
      {dev}
    end;
  end;

  { TODO : Наводишь мышку на карточку монстра (в диалог.окошке) - показываются грани кубика для успешной победы }

  // --- Дракон ---
  if {NK in [20..21,33..34]} iType=0 then begin
    lblMonster.Caption:='Дракон!';
    btn_priruchenie.Enabled:=false;
    label1.Caption:='К сожалению, дракона приручить Вам врядли удастся... Поэтому остается выбор только вступать в схватку!';
    setLuckyKubik:=[5,6];
  end;

  // --- Призрак ---
  if {NK in [30,43..44]} iType=1 then begin
    setLuckyKubik:=[6];
    lblMonster.Caption:='Призрак!';
  end;

  // --- Мумия ---
  if {NK in [15,26..29]} iType=2 then begin
    setLuckyKubik:=[5,6];
    lblMonster.Caption:='Мумия';
  end;

  // --- Зомби ---
  if {NK in [90..93,95..98]} iType=3 then begin
    setLuckyKubik:=[4..6];
    lblMonster.Caption:='Зомби';
  end;
end;

end.
