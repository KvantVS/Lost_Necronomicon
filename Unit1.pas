// {dev} - пометка, где я закончил работать
// tag у карточек здесь - их номер, соответсвующий расположению в картинке
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, StdCtrls, Buttons, jpeg, XPMan, Gauges,
  ComCtrls, AppEvnts, System.ImageList;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    Pole: TImage;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Image65: TImage;
    Image66: TImage;
    Image67: TImage;
    Image68: TImage;
    Image69: TImage;
    Image70: TImage;
    Image71: TImage;
    Image72: TImage;
    Image73: TImage;
    Image74: TImage;
    Image75: TImage;
    Image76: TImage;
    Image77: TImage;
    Image78: TImage;
    Image79: TImage;
    Image80: TImage;
    Image81: TImage;
    Image82: TImage;
    Image83: TImage;
    Image84: TImage;
    Image85: TImage;
    Image86: TImage;
    Image87: TImage;
    Image88: TImage;
    Image89: TImage;
    Image90: TImage;
    Image91: TImage;
    Image92: TImage;
    Image93: TImage;
    Image94: TImage;
    Image95: TImage;
    Image96: TImage;
    Image97: TImage;
    Image98: TImage;
    Fishka4: TImage;
    Fishka2: TImage;
    Fishka3: TImage;
    Fishka1: TImage;
    btnMove: TBitBtn;
    ImgTab1: TImage;
    ImgTab2: TImage;
    ImgTab3: TImage;
    ImgTab4: TImage;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    gPl1Health: TGauge;
    XPManifest1: TXPManifest;
    gPl1Mana: TGauge;
    gPl2Health: TGauge;
    gPl3Health: TGauge;
    gPl4Health: TGauge;
    gPl2Mana: TGauge;
    gPl3Mana: TGauge;
    gPl4Mana: TGauge;
    BitBtn7: TBitBtn;
    lbl_player1name: TLabel;
    lbl_player2name: TLabel;
    lbl_player3name: TLabel;
    lbl_player4name: TLabel;
    btnHMIncrease: TBitBtn;
    btnGameBegin: TBitBtn;
    BitBtn1: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    btnEnd: TBitBtn;
    BitBtn12: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    BitBtn5: TBitBtn;
    Button14: TButton;
    Image99: TImage;
    Button15: TButton;
    lblPlayerName: TLabel;
    Bevel4: TBevel;
    lblbtnArtefacts: TLabel;
    lblbtnMonsters: TLabel;
    Bevel5: TBevel;
    lblbtnTraps: TLabel;
    btnDungeon: TBitBtn;
    Button16: TButton;
    panel_Arts_player1: TPanel;
    Button17: TButton;
    panel_Arts_player2: TPanel;
    panel_Arts_player3: TPanel;
    panel_Arts_player4: TPanel;
    panel_monsters_player1: TPanel;
    panel_monsters_player2: TPanel;
    panel_monsters_player3: TPanel;
    panel_monsters_player4: TPanel;
    panel_traps_player1: TPanel;
    panel_traps_player2: TPanel;
    panel_traps_player3: TPanel;
    panel_traps_player4: TPanel;
    Label1: TLabel;
    btn_AttackAgain: TButton;
    Label2: TLabel;
    Button18: TButton;
    Edit1: TEdit;
    Button19: TButton;
    Button20: TButton;
    lblDropMonster: TLabel;
    Shape1: TShape;
    Bevel6: TBevel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMoveClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnHMIncreaseClick(Sender: TObject);
    procedure btnGameBeginClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnEndClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure btnDungeonClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure lblbtnArtefactsMouseEnter(Sender: TObject);
    procedure lblbtnArtefactsMouseLeave(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure lblbtnArtefactsClick(Sender: TObject);
    procedure lblbtnMonstersClick(Sender: TObject);
    procedure btn_AttackAgainClick(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClickMonsterCard(Sender: TOBject);
    procedure DeselectMonsterCard(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  end;
  //  KType = (Monster, Artifact, Stroenie, Other, Teleport);

var
  Form1:          TForm1;
  Kubik:          byte;   // Число на кубике
  CurPlayer:      byte;   // Текущий игрок, который должен ходить
  PlayersNumber:  byte;   // Количество игроков
  NK:             byte;   // Номер карты (исп. при ходе игроков)
  blTrapStandoff: boolean;// Ловушка ничья?
  blPerevorot:    boolean;// Можно ли переворачивать карточку (рубашкой вверх)
  bTmp:           ShortInt=0; // для передачи в сообщения (в Form6, frmTrap1, ...)
  bTmp2:          ShortInt;
  sTmp:           string; // для передачи в сообщения (в Form6, frmTrap1, ...)
  tmpMana:        byte;   // для frmMoon (Храм Луны)
  tmpHealth:      byte;   // для frmMoon (Храм Луны)
  bPLTrap:        byte;   // для frmTrap (Номер игрока, чья ловушка)
  blColor1UP:     boolean = True;
  blColor2UP:     boolean = True;
  blColor3UP:     boolean = True;
  IMG:            TComponent; // Карточка, на которую ступает игрок, сделав ход
  ImgOld:         TComponent; // Карточка, С КОТОРОЙ игрок делает ход
  iOldNK:         byte;   // Номер этой самой карточки
  MonsterFromDungeon: boolean = false;    // Монстр из подземелья?
  // (устанавливается в true, если игрок ступил на карточку с монстром
  // (                в false - если игрок встретил монстра в подземелье)
  iMonsterType:   byte;      // Тип монстра (0-Дракон, 1-призрак, 2-мумия, 3-зомби)
  {для монстров подземелья}
  booleanTemp:  boolean;

  Player: array [1..4] of record    // Массив игроков как записи
    Name:                 string;
    StartX, StartY:       word;     // начальные координаты фишек игроков
    Position:             byte;     // На какой карточке находится
    XDisplace, YDisplace: byte;     // Смещение фишек относительно Image'а (в пикселях)(в игре не применяется)
    Health, Mana:         shortint; // Жизни и Мана игроков
    Artifacts:   set of (Clock,AirShield,Medalion,Staff,Rune,Pentagramma,
LifeSphere,ThunderSword);           // Артефакты игроков
    ArtifactsCount:       byte;     // Количество артефактов
    Expirience:           word;     // Опыт за убийства врагов
    HealthManaInc:        boolean;  // Проверка, можно ли увеличить ману и здор.
    setPlTraps:  set of byte;       // Контролируемые игроком ловушки (просто номера карт)
    PropuskSledHoda:      boolean;  // Пропустить следующий ход
    InLabirint:           boolean;  // Игрок стоит в Лабиринте
    InDungeon:            boolean;  // Игрок в подземелье (возможность исследовать подземелье)
    OnMonster:            boolean;  // Игрок на карточке с монстром
    PodchinMonstry:       set of byte;// Контролируемые игроком монстры
    PobejdennyeMonstry:   set of byte;// монстры у игрока на руках (карточки)
    MonstersCount:        byte;       // Количество монстров на руках (кол-во PobejdennyeMonstry)
    DopHod:               boolean;
  end;

  //-----Описание карточек: ------------------------------------------------------
  // [15,20,21,26,27,28,29,30,33,34,43,44,90,91,92,93,95,96,97,98]
  Monster:    array [1..20] of record
    NomerKarty:   byte;         // Номер карты монстра
    Podchinenie:  byte;         // Кол-во маны для подчинения
    Srajenie:     byte;         // Кол-во маны для сражения
    Uron:         byte;         // Урон, причиняемый игроку
    iTypeOfMonster:  byte;      // Тип монстра (0-Дракон, 1-призрак, 2-мумия, 3-зомби)
  end;

  // [3,4,17,35,36,37,40,55]
  Artifact:     set of byte;  // номера карт артефактов
  // [16,25,31,32,38,39,41,42,45,46,47,48,49,56,57,58,59]
  Stroenie:     set of byte;  // номера карт строений
  // [45,46,47,48,56,57,58,59]
  Boloto:       array [1..8] of byte; // Номер карты болота (8 штук)
  // [80,81,82,85,86,87,88,89,94]
  //  TrapNK:       set of byte;  // Номера карточек ловушек
  Traps:        array [1..9] of record // Карточки ловушек
    NomerKarty:   byte;         // Номер карты
    Uron:         byte;         // Урон, причиняемый карточкой
  end;
  // [0,1,2,10,11,12,13,14,22,23,24]
  HPotion:      array [1..11] of record        // Карточки здоровья
    HPotionNK:    byte;         // Номера карточек здоровья
    Value:        byte;         // Кол-во здоровья, прибавляемое игроку
  end;
  // [5,6,7,8,9,18,19,60,61]
  MPotion:      array [1..9] of record         // Карточки маны
    MPotionNK:    byte;         // Номера карточек маны
    Value:        byte;         // Кол-во маны, прибавляемое игроку
  end;
  // [50,51,52,53,54,62,63,64]
  Storm:      array [1..8] of record
    StormNK:    byte;
    Uron:       byte;
  end;
  // [65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,83,84]
  Teleport:   array [1..17] of record        //
    NomerKarty:    byte;  //
    bmove:         ShortInt;         //
  end;

  Udalennye:  set of byte=[];  // Карточки, удаленные с поля (просто их номера)

  procedure GameBegin;       // "Начать игру"
  function Brosok: byte;      // Кидание кубика
  procedure HealthChange(iPlayer: byte; Value: ShortInt);
  procedure ManaChange(iPlayer: byte; Value: ShortInt);
  procedure PlayerDeath(iPlayer: byte);
  procedure PlayerMove(iPlayer: byte; iMove: ShortInt);
  procedure ShowWindow;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17;

{$R *.dfm}

//==============================================================================

procedure ShowWindow;
begin
  (Img as TImage).Repaint;
  Form1.Fishka1.Repaint;
  Form1.Fishka2.Repaint;
  Form1.Fishka3.Repaint;
  Form1.Fishka4.Repaint;

  If iOldNK<>0 then begin    // простая проверка, не на начале игры ли стоит игрок
    ImgOld := Form1.FindComponent('Image'+IntToStr(iOldNK)); // перерисовываем
    (imgOld as TImage).Repaint;                              // старую карточку
  end;
end;

procedure PlayerMove(iPlayer: byte; iMove: ShortInt);
var
  Fishka:   TImage;     // Фишка игрока
  i,j:      Integer;
begin
  if iMove=0 then iMove:=Brosok;

  iOldNK:=Player[iPlayer].Position; // номер старой карточки, С КОТОРОЙ игрок начинает ход

  blTrapStandoff:=False;
  blPerevorot:=True;      // По умолчанию карточка переворачивается. Если к-ка НЕ должна переворачиваться, то это в коде карточки надо указать.
  Player[iPlayer].InDungeon:=False;
  Player[iPlayer].InLabirint:=False;
  Player[iPlayer].OnMonster:=false;
  Form1.btn_AttackAgain.Visible:=false;
  form1.btnDungeon.Visible:=false;
  Form1.btnMove.Enabled:=False;

  Player[iPlayer].Position:=Player[iPlayer].Position + iMove;
  If (Player[iPlayer].Position < 0) or (Player[iPlayer].Position > 200) then Player[iPlayer].Position:=0;
  If (Player[iPlayer].Position > 99) and (Player[iPlayer].Position < 200) then Player[iPlayer].Position:=99;
  Fishka:=nil;
  If iPlayer=1 then Fishka:=Form1.Fishka1;
  If iPlayer=2 then Fishka:=Form1.Fishka2;
  If iPlayer=3 then Fishka:=Form1.Fishka3;
  If iPlayer=4 then Fishka:=Form1.Fishka4;
  If Player[CurPlayer].Position=0 then begin
    Fishka.Left:=Player[CurPlayer].StartX;
    Fishka.Top:=Player[CurPlayer].StartY;
    Form1.btnMove.Enabled:=False;
    exit;
  end;
  If Player[CurPlayer].Position=99 then begin
    {dev}
    // игра почти выиграна
    Player[CurPlayer].Position:=0;  //just for Teleport Test
    exit;
  end;
  //------Ищем игровую карточку (Image с номером "Player.Position"): -----------
  Img := Form1.FindComponent('Image'+IntToStr(Player[iPlayer].Position));

  //------Двигаем фишку игрока: ------------------------------------------------
  Fishka.left:=(Img as TImage).Left + Player[iPlayer].XDisplace;
  Fishka.Top:=(Img as TImage).Top + Player[iPlayer].YDisplace;

  //--------------------------------------------------------------------------------
  // Дальнейшие действия должны производиться только если карточка не удалена с поля
  //--------------------------------------------------------------------------------
  //------"Переворачиваем" карточку, на которую ступил игрок: ------------------
  NK:=(Img as TImage).tag;
  if not (NK in Udalennye) then begin
    (Img as TImage).BringToFront;
    Form1.Fishka1.BringToFront;
    Form1.Fishka2.BringToFront;
    Form1.Fishka3.BringToFront;
    Form1.Fishka4.BringToFront;

    //-----Смотрим, что за карточка (монстр, артефакт, и т.д.): ------------------

  // 1. Ловушка.................
    For i:=1 to 9 do begin
      If NK = Traps[i].NomerKarty then begin  // Если карточка принадлежит карточкам "Ловушка"
        for j:=1 to PlayersNumber do begin    // Проверка, принадлежит ли кому-нибудь ловушка
          If NK in Player[j].setPlTraps then begin
            blTrapStandoff:=False;            // Ловушка НЕ ничья (кому-то принадлежит)
            If j<>iPlayer then begin        // если ловушка не текущего игрока, то...
              Player[iPlayer].HealthManaInc:=False;
              blTrapStandoff:=False;
              bPLTrap:=j;                 // Для передачи в форму frmTrap
              bTmp:=Traps[i].Uron;        // Для передачи в форму frmTrap
              if (not frmTrap.visible) then frmTrap.ShowModal else frmTrap.SetFocus;
              Form1.Fishka1.Repaint;
              Form1.Fishka2.Repaint;
              Form1.Fishka3.Repaint;
              Form1.Fishka4.Repaint;
  {            HealthChange(iPlayer,-(Traps[i].Uron)); // урон текущему игроку
              HealthChange(j,Traps[i].Uron);            // ++ здоровье владельцу ловушки    }
              Udalennye:=Udalennye+[NK];
              (Img as TImage).SendToBack;
              Break;
            end;
          end else blTrapStandoff:=True;    // иначе ловушка ничья
        end;
        if blTrapStandoff then begin       // Если ловушка ничья
          if (not frmTrap1.visible) then frmTrap1.ShowModal else frmTrap1.SetFocus;
          Form1.Fishka1.Repaint;
          Form1.Fishka2.Repaint;
          Form1.Fishka3.Repaint;
          Form1.Fishka4.Repaint;
          if blPerevorot then (Img as TImage).SendToBack; // перевернуть рубашкой вверх
        end;
        exit;//Break;
      end;
    end;

  // 2. Магический Шторм.................
    For i:=1 to 8 do begin
      if NK = Storm[i].StormNK then begin
        bTmp:=Storm[i].Uron;
        if (not frmStorm.visible) then frmStorm.ShowModal else frmStorm.SetFocus;
        Form1.Fishka1.Repaint;
        Form1.Fishka2.Repaint;
        Form1.Fishka3.Repaint;
        Form1.Fishka4.Repaint;
        HealthChange(CurPlayer,-(Storm[i].Uron));
        (Img as TImage).SendToBack;
        Udalennye:=Udalennye + [NK];
        Player[CurPlayer].HealthManaInc:=False;
        exit;
      end;
    end;

  // 3. Напиток здоровья.................
    for i:=1 to 12 do begin
      if NK = HPotion[i].HPotionNK then begin
        bTmp:=HPotion[i].Value;  // Количество здор/маны в карточке
        sTmp:=' здоровью';
        if (not frmHealthMana.visible) then frmHealthMana.ShowModal else frmHealthMana.SetFocus;
        Form1.Fishka1.Repaint;
        Form1.Fishka2.Repaint;
        Form1.Fishka3.Repaint;
        Form1.Fishka4.Repaint;
        HealthChange(CurPlayer,HPotion[i].Value);
          Player[curplayer].HealthManaInc:=True;
        (IMG as TImage).SendToBack;
        Udalennye:=Udalennye+[NK];
        exit;
      end;
    end;

  // 4. Напиток маны.................
    for i:=1 to 10 do begin
      if NK = MPotion[i].MPotionNK then begin
        bTmp:=MPotion[i].Value;
        sTmp:=' мане';
        if (not frmHealthMana.visible) then frmHealthMana.ShowModal else frmHealthMana.SetFocus;
        Form1.Fishka1.Repaint;
        Form1.Fishka2.Repaint;
        Form1.Fishka3.Repaint;
        Form1.Fishka4.Repaint;
        ManaChange(CurPlayer,MPotion[i].Value);
        Player[curplayer].HealthManaInc:=True;
        (IMG as TImage).SendToBack;
        Udalennye:=Udalennye+[NK];
        exit;
      end;
    end;

  // 5. Болото.................
    for i:=1 to 8 do begin
      if NK = Boloto[i] then begin
        if (not frmSwamp.visible) then frmSwamp.ShowModal else frmSwamp.SetFocus;
        Form1.Fishka1.Repaint;
        Form1.Fishka2.Repaint;
        Form1.Fishka3.Repaint;
        Form1.Fishka4.Repaint;
        Player[CurPlayer].HealthManaInc:=False;
        (IMG as TImage).SendToBack;
        exit;
      end;
    end;
  //  blPerevorot:=True;

  // 6. Храм Луны.................
    if NK=16 then begin
      tmpMana:=Player[CurPlayer].Mana;
      tmpHealth:=Player[CurPlayer].Health;
      frmMoon.AlphaBlendValue:=255;
      if (not frmMoon.visible) then frmMoon.ShowModal else frmMoon.SetFocus;
      Form1.Fishka1.Repaint;
      Form1.Fishka2.Repaint;
      Form1.Fishka3.Repaint;
      Form1.Fishka4.Repaint;
      Player[CurPlayer].HealthManaInc:=False;
      exit;
    end;

  // 7. Храм Солнца
    If NK=49 then begin
      tmpMana:=Player[CurPlayer].Mana;
      tmpHealth:=Player[CurPlayer].Health;
      if (not FrmTempleSun.visible) then FrmTempleSun.ShowModal else FrmTempleSun.SetFocus;
      Form1.Fishka1.Repaint;
              Form1.Fishka2.Repaint;
              Form1.Fishka3.Repaint;
              Form1.Fishka4.Repaint;
      Player[CurPlayer].HealthManaInc:=False;
      exit;
    end;

  // 8. Лабиринт
    If (NK = 41) or (NK = 42) then begin
      if (not frmLabirinth.visible) then frmLabirinth.ShowModal else frmLabirinth.SetFocus;
      Form1.Fishka1.Repaint;
              Form1.Fishka2.Repaint;
              Form1.Fishka3.Repaint;
              Form1.Fishka4.Repaint;
      Player[CurPlayer].InLabirint:=True;
      exit;
    end;

  // 9. Подземелье
    If (NK = 31) or (NK = 32) then begin
      if (not frmDungeon.visible) then frmDungeon.ShowModal else frmDungeon.SetFocus;
      Form1.Fishka1.Repaint;
              Form1.Fishka2.Repaint;
              Form1.Fishka3.Repaint;
              Form1.Fishka4.Repaint;
      Player[CurPlayer].HealthManaInc:=False;
      Player[CurPlayer].InDungeon:=true;
      exit;
  {dev}    // переворачивается вверх рубашкой
    end;

  // 10. Обелиск
    if (NK=25) or (NK=38) or (NK=39) then begin
      if (not frmObelisk.visible) then frmObelisk.ShowModal else frmObelisk.SetFocus;
      Form1.Fishka1.Repaint;
              Form1.Fishka2.Repaint;
              Form1.Fishka3.Repaint;
              Form1.Fishka4.Repaint;
              exit;
  {dev}    // переворачивается вверх рубашкой
    end;

  // 11. Артефакты  ([3,4,17,35,36,37,40,55])
    if NK in Artifact then begin
      if (not frmArtifact.visible) then frmArtifact.ShowModal else frmArtifact.SetFocus;
      Form1.Fishka1.Repaint;
              Form1.Fishka2.Repaint;
              Form1.Fishka3.Repaint;
              Form1.Fishka4.Repaint;
      (Img as TImage).SendToBack;
      Udalennye:=Udalennye+[NK];
      exit;
    end;

  // 12. Телепорт [65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,83,84]
    for i:=1 to 17 do begin
      If NK = Teleport[i].NomerKarty then begin
        bTmp:=0;
        sTmp:=' клетки';
        If not (NK in [67..69]) then bTmp:=Teleport[i].bmove;
        If (NK=83) or (NK=84) then sTmp:=' клеток';
        If (NK=68) or (NK=69) then sTmp:='Вы телепортируетесь на внутренний виток спирали!';
        If (NK=67)            then sTmp:='Вы телепортируетесь на внешний виток спирали!';
        if (not frmTeleport.visible) then frmTeleport.ShowModal
        else begin
          frmTeleport.Hide;
          frmTeleport.Show;
        end;
        Form1.Fishka1.Repaint;
        Form1.Fishka2.Repaint;
        Form1.Fishka3.Repaint;
        Form1.Fishka4.Repaint;
        // bTmp=0 тогда, когда внешний телепорт, и игрок не выкинул на кубике 5 или 6, тогда ходить не надо.
        if bTmp<>0 then PlayerMove(CurPlayer, bTmp);

        exit;
      end;
    end;

  // Враги
  {  Monster:    array [1..20] of record
      NomerKarty:   byte;         // Номер карты монстра
      Podchinenie:  byte;         // Кол-во маны для подчинения
      Srajenie:     byte;         // Кол-во маны для сражения
      Uron:         byte;         // Урон, причиняемый игроку
    end;
    }
  //  MonsterNK:=[15,20,21,26,27,28,29,30,33,34,43,44,90,91,92,93,95,96,97,98];
    For i:=1 to 20 do begin
      IF NK=Monster[i].NomerKarty then begin
        bTmp:=i;  // передаем индекс карточки в форму frmMonster
        player[curPlayer].HealthManaInc:=false;
        Player[curplayer].OnMonster:=true;
        MonsterFromDungeon:=false;

        // показываем диалог только, если существо НЕ свое
        for j := 1 to 4 do
          if not (NK in Player[j].PodchinMonstry)
             or ((NK in Player[j].PodchinMonstry) and (j<>CurPlayer)) then booleanTemp:=true;
//        break;
        if booleanTemp then frmMonster.Showmodal;

        exit;
      end;
    end;

{  (Img as TImage).Repaint;
  Form1.Fishka1.Repaint;
  Form1.Fishka2.Repaint;
  Form1.Fishka3.Repaint;
  Form1.Fishka4.Repaint;    }

  //------------------------------------------------------------------------------
  //---- Конец описания карточек -------------------------------------------------

  end;  //для условия If not (NK in Udalennye)
end;

procedure PlayerDeath(iPlayer: byte);
var
  comp: TComponent;
begin
  ShowMessage('Игрок '+inttostr(iPlayer)+' погиб.');
  // {dev} сделать тут действие артефакта "Сфера жизни", иначе:
  comp:=Form1.FindComponent('Fishka'+inttostr(iPlayer));
  (comp as TImage).Left:=Player[IPlayer].StartX;
  (comp as TImage).Top:=Player[IPlayer].StartY;
  Player[iPlayer].Position:=0;
  Player[iPlayer].Health:=10;
  Player[iPlayer].Mana:=15;
  comp:=Form1.FindComponent('gPL'+inttostr(iPlayer)+'Health');
  (comp as TGauge).Progress:=10;
  comp:=Form1.FindComponent('gPL'+inttostr(iPlayer)+'Mana');
  (comp as TGauge).Progress:=15;
  Player[iPlayer].Artifacts:=[];
  Player[iPlayer].Expirience:=0;
  Player[iPlayer].HealthManaInc:=False;
  Player[iPlayer].setPlTraps:=[];
  Player[iPlayer].PropuskSledHoda:=False;
end;

procedure HealthChange(iPlayer: byte; Value: ShortInt);
var
  comp: TComponent;
begin
  Player[iPlayer].Health:=Player[iPlayer].Health+Value;
  comp:=Form1.FindComponent('gPL' + IntToStr(iPlayer) + 'Health');
  (comp as TGauge).Progress:=Player[iPlayer].Health;
  if (Player[iPlayer].Health<=0) then PlayerDeath(iPlayer); // Если здоровья меньше нуля
//{dev}
end;

procedure ManaChange(iPlayer: byte; Value: ShortInt);
var
  comp: TComponent;
begin
  Player[iPlayer].Mana:=Player[iPlayer].Mana+Value;
  comp:=Form1.FindComponent('gPL' + IntToStr(iPlayer) +'Mana');
  (comp as TGauge).AddProgress(Value);
end;

procedure GameBegin;     // "Начать игру"
var
  a: integer;                 // Случайное число
  i, mojno, k, k2: byte;
  comp: TComponent;
  mas: array [0..98] of byte; // Массив номеров сгенерированных карточек
  PName: PChar;               // имя Image'ов в формате PChar (для сравнения при прорисовке)
  additionalNumbers: set of byte;
  masAdditional:    array [0..6] of byte;
begin
  additionalNumbers:=[1..99];
  randomize;
  Form1.Pole.BringToFront;
  k:=0;     // Количество сгенериррованных карточек
  for i:=0 to Length(mas) do mas[i]:=0;

  //-----Генерация случайных карточек: -----------------------------------------
  repeat
    a:=random(Form1.ImageList1.Count-2);  // -1 : Последняя карточка (Белый квадрат) не учитывается
    mojno:=1;

    for i:=0 to Form1.ImageList1.Count-2 do if a=mas[i] then mojno:=0;    // если новая карточка уже есть, тогда НЕЛЬЗЯ ее брать

    if mojno=1 then begin // если mojno=1, то такой карточки еще нет, добавляем ее
      mas[k]:=a;
      inc(k);
    end;

    IF k=92 then begin
      k2:=0;
      for i:=0 to 91 do additionalNumbers:=additionalNumbers-[mas[i]]; // оставляем в множестве только те номера (карт), которые еще не были использованы
      for i:=1 to 99 do begin                 // заполняем дополнительный массив
        if i in additionalNumbers then begin  //
          masadditional[k2]:=i;               //
          inc(k2);                            //
        end;                                  //
      end;                                    //////////////////////////////////
      mas[92]:=masAdditional[0];
      mas[93]:=masAdditional[2];
      mas[94]:=masAdditional[5];
      mas[95]:=masAdditional[1];
      mas[96]:=masAdditional[6];
      mas[97]:=masAdditional[3];
      mas[98]:=masAdditional[4];
      k:=100;
    end;
  until k=100;
    k:=0;
//-----Заполнение TImage'ов карточками по сгенерированным номерам---------------
//------------------------------------------------------------------------------
  for i:=0 to Form1.ComponentCount-1 do begin   // i - для пробега по компонентам формы,
    comp:=Form1.Components[i];                  // k - для пробега по всем карточкам (mas[k])
    PName:=PChar(comp.name);    // Перевод comp.name в PChar (для сравнения)
    if (comp.ClassName='TImage') and (StrLComp(PName,'Image',5)=0) {and (comp.name<>'Pole') and (comp.name<>'Fishka1') and (comp.name<>'Fishka2') and (comp.name<>'Fishka3') and (comp.name<>'Fishka4') }then begin
      Form1.ImageList1.GetBitmap(mas[k],(comp as TImage).picture.Bitmap);
      (comp as TImage).Repaint;
      (comp as TImage).Tag:=mas[k];  // присвоение картинке определенного номера карточки (занесём его в свойство "tag")
    end;
    k:=k+1;
  end;
  Form1.Fishka1.BringToFront;
  Form1.Fishka2.BringToFront;
  Form1.Fishka3.BringToFront;
  Form1.Fishka4.BringToFront;

  for i := 1 to PlayersNumber do begin
    player[i].Position:=0;
    player[i].Health:=10;
    player[i].Mana:=15;
    player[i].Artifacts:=[];
    player[i].ArtifactsCount:=0;
    player[i].Expirience:=0;
    player[i].HealthManaInc:=true; // ???
    player[i].setPlTraps:=[];
    player[i].PropuskSledHoda:=false;
    player[i].InLabirint:=false;
    player[i].InDungeon:=false;
    player[i].PodchinMonstry:=[];
  end;

end;

function Brosok;   // Кидание кубика
begin
  repeat
    {Kubik}result:=random(7);
  until result<>0;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i:Integer;
  comp: TComponent;
begin                                          //
  for i := 0 to componentCount - 1 do begin    //
    comp:=Form1.Components[i];                 //  debug
    if comp.ClassName='TImage' then begin      //
      (comp as TImage).ShowHint:=true;         //
      (comp as TImage).Hint:='1';              //
    end;                                       //
  end;                                         //

  for i:=1 to 4 do begin
    Player[i].Position:=0;
    Player[i].Health:=10;
    Player[i].Mana:=15;
    Player[i].Artifacts:=[];
    Player[i].HealthManaInc:=False;
    Player[i].MonstersCount:=0;
  end;

  PlayersNumber:=2;

  Player[1].StartX:=352;
  Player[1].StartY:=292;
  Player[2].StartX:=376;
  Player[2].StartY:=292;
  Player[3].StartX:=352;
  Player[3].StartY:=312;
  Player[4].StartX:=376;
  Player[4].StartY:=312;

  Player[1].XDisplace:=6;
  Player[1].YDisplace:=12;
  Player[2].XDisplace:=30;
  Player[2].YDisplace:=12;
  Player[3].XDisplace:=6;
  Player[3].YDisplace:=32;
  Player[4].XDisplace:=30;
  Player[4].YDisplace:=32;

  Kubik:=1;
  CurPlayer:=1;
  Height:=708;

  gPl1Health.BackColor:=$C8E2F2;
  gPl2Health.BackColor:=$C8E2F2;
  gPl3Health.BackColor:=$C8E2F2;
  gPl4Health.BackColor:=$C8E2F2;
  gPl1Mana.BackColor:=$C8E2F2;
  gPl2Mana.BackColor:=$C8E2F2;
  gPl3Mana.BackColor:=$C8E2F2;
  gPl4Mana.BackColor:=$C8E2F2;

  Udalennye:=[];

//==============================================================================
//-----------------Описание нач. значений карточек------------------------------
//==============================================================================

//---Монстры--------------------------------------------------------------------
{  MonsterNK:=[15,20,21,26,27,28,29,30,33,34,43,44,90,91,92,93,95,96,97,98];
   NomerKarty:   byte;         // Номер карты монстра
    Podchinenie:  byte;         // Кол-во маны для подчинения
    Srajenie:     byte;         // Кол-во маны для сражения
    Uron:         byte;         // Урон, причиняемый игроку
    strType:      string;       // Тип монстра (Дракон, зомби, ...) }

  Monster[1].iTypeOfMonster:=2;
  Monster[2].iTypeOfMonster:=0;
  Monster[3].iTypeOfMonster:=0;
  Monster[4].iTypeOfMonster:=2;
  Monster[5].iTypeOfMonster:=2;
  Monster[6].iTypeOfMonster:=2;
  Monster[7].iTypeOfMonster:=2;
  Monster[8].iTypeOfMonster:=1;
  Monster[9].iTypeOfMonster:=0;
  Monster[10].iTypeOfMonster:=0;
  Monster[11].iTypeOfMonster:=1;
  Monster[12].iTypeOfMonster:=1;
  Monster[13].iTypeOfMonster:=3;
  Monster[14].iTypeOfMonster:=3;
  Monster[15].iTypeOfMonster:=3;
  Monster[16].iTypeOfMonster:=3;
  Monster[17].iTypeOfMonster:=3;
  Monster[18].iTypeOfMonster:=3;
  Monster[19].iTypeOfMonster:=3;
  Monster[20].iTypeOfMonster:=3;

  Monster[1].NomerKarty:=15;
  Monster[1].Podchinenie:=3;
  Monster[1].Srajenie:=2;
  Monster[1].Uron:=2;

  Monster[2].NomerKarty:=20;
  Monster[2].Podchinenie:=0;
  Monster[2].Srajenie:=3;
  Monster[2].Uron:=4;

  Monster[3].NomerKarty:=21;
  Monster[3].Podchinenie:=0;
  Monster[3].Srajenie:=3;
  Monster[3].Uron:=4;

  Monster[4].NomerKarty:=26;
  Monster[4].Podchinenie:=3;
  Monster[4].Srajenie:=2;
  Monster[4].Uron:=2;

  Monster[5].NomerKarty:=27;
  Monster[5].Podchinenie:=3;
  Monster[5].Srajenie:=2;
  Monster[5].Uron:=2;

  Monster[6].NomerKarty:=28;
  Monster[6].Podchinenie:=3;
  Monster[6].Srajenie:=2;
  Monster[6].Uron:=2;

  Monster[7].NomerKarty:=29;
  Monster[7].Podchinenie:=3;
  Monster[7].Srajenie:=2;
  Monster[7].Uron:=2;

  Monster[8].NomerKarty:=30;
  Monster[8].Podchinenie:=4;
  Monster[8].Srajenie:=3;
  Monster[8].Uron:=3;

  Monster[9].NomerKarty:=33;
  Monster[9].Podchinenie:=0;
  Monster[9].Srajenie:=3;
  Monster[9].Uron:=4;

  Monster[10].NomerKarty:=34;
  Monster[10].Podchinenie:=0;
  Monster[10].Srajenie:=3;
  Monster[10].Uron:=4;

  Monster[11].NomerKarty:=43;
  Monster[11].Podchinenie:=4;
  Monster[11].Srajenie:=3;
  Monster[11].Uron:=3;

  Monster[12].NomerKarty:=44;
  Monster[12].Podchinenie:=4;
  Monster[12].Srajenie:=3;
  Monster[12].Uron:=3;

  Monster[13].NomerKarty:=90;
  Monster[13].Podchinenie:=2;
  Monster[13].Srajenie:=1;
  Monster[13].Uron:=1;

  Monster[14].NomerKarty:=91;
  Monster[14].Podchinenie:=2;
  Monster[14].Srajenie:=1;
  Monster[14].Uron:=1;

  Monster[15].NomerKarty:=92;
  Monster[15].Podchinenie:=2;
  Monster[15].Srajenie:=1;
  Monster[15].Uron:=1;

  Monster[16].NomerKarty:=93;
  Monster[16].Podchinenie:=2;
  Monster[16].Srajenie:=1;
  Monster[16].Uron:=1;

  Monster[17].NomerKarty:=95;
  Monster[17].Podchinenie:=2;
  Monster[17].Srajenie:=1;
  Monster[17].Uron:=1;

  Monster[18].NomerKarty:=96;
  Monster[18].Podchinenie:=2;
  Monster[18].Srajenie:=1;
  Monster[18].Uron:=1;

  Monster[19].NomerKarty:=97;
  Monster[19].Podchinenie:=2;
  Monster[19].Srajenie:=1;
  Monster[19].Uron:=1;

  Monster[20].NomerKarty:=98;
  Monster[20].Podchinenie:=2;
  Monster[20].Srajenie:=1;
  Monster[20].Uron:=1;
//------------------------------------------------------------------------------

  Artifact:=[3,4,17,35,36,37,40,55];
  Stroenie:=[16,25,31,32,38,39,41,42,45,46,47,48,49,56,57,58,59];
//  Potion.NomerKarty:=[0,1,2,10,11,12,13,14,22,23,24];
//  Mana.NomerKarty:=[5,6,7,8,9,18,19,60,61];
//  TrapNK:=[80,81,82,85,86,87,88,89,94];
//  Storm:=[50,51,52,53,54,62,63,64];

//---Телепорты------------------------------------------------------------------
// [65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,83,84]
  for i:=1 to 15 do Teleport[i].NomerKarty:=i+64;
  Teleport[16].NomerKarty:=83;
  Teleport[17].NomerKarty:=84;

  Teleport[1].bmove:=4;
  Teleport[2].bmove:=2;
  Teleport[3].bmove:=0;
  Teleport[4].bmove:=0;
  Teleport[5].bmove:=0;
  Teleport[6].bmove:=-2;
  Teleport[7].bmove:=-2;
  Teleport[8].bmove:=3;
  Teleport[9].bmove:=3;
  Teleport[10].bmove:=3;
  Teleport[11].bmove:=-4;
  Teleport[12].bmove:=-4;
  Teleport[13].bmove:=-3;
  Teleport[14].bmove:=-3;
  Teleport[15].bmove:=-2;
  Teleport[16].bmove:=-6;
  Teleport[17].bmove:=-5;

//---Ловушка--------------------------------------------------------------------
  Traps[1].NomerKarty:=80;
  Traps[1].Uron:=1;
  Traps[2].NomerKarty:=81;
  Traps[2].Uron:=1;
  Traps[3].NomerKarty:=82;
  Traps[3].Uron:=1;
  Traps[4].NomerKarty:=85;
  Traps[4].Uron:=3;
  Traps[5].NomerKarty:=86;
  Traps[5].Uron:=2;
  Traps[6].NomerKarty:=87;
  Traps[6].Uron:=2;
  Traps[7].NomerKarty:=88;
  Traps[7].Uron:=2;
  Traps[8].NomerKarty:=89;
  Traps[8].Uron:=1;
  Traps[9].NomerKarty:=94;
  Traps[9].Uron:=3;

//---Магический шторм-----------------------------------------------------------
  Storm[1].StormNK:=50;
  Storm[2].StormNK:=51;
  Storm[3].StormNK:=52;
  Storm[4].StormNK:=53;
  Storm[5].StormNK:=54;
  Storm[6].StormNK:=62;
  Storm[7].StormNK:=63;
  Storm[8].StormNK:=64;
  Storm[1].Uron:=1;
  Storm[2].Uron:=1;
  Storm[3].Uron:=1;
  Storm[4].Uron:=1;
  Storm[5].Uron:=1;
  Storm[6].Uron:=2;
  Storm[7].Uron:=2;
  Storm[8].Uron:=1;

//---Напиток здоровья-----------------------------------------------------------
  HPotion[1].HPotionNK:=0;
  HPotion[2].HPotionNK:=1;
  HPotion[3].HPotionNK:=2;
  HPotion[4].HPotionNK:=10;
  HPotion[5].HPotionNK:=11;
  HPotion[6].HPotionNK:=12;
  HPotion[7].HPotionNK:=13;
  HPotion[8].HPotionNK:=14;
  HPotion[9].HPotionNK:=22;
  HPotion[10].HPotionNK:=23;
  HPotion[11].HPotionNK:=24;
  HPotion[1].Value:=1;
  HPotion[2].Value:=1;
  HPotion[3].Value:=1;
  HPotion[4].Value:=2;
  HPotion[5].Value:=2;
  HPotion[6].Value:=2;
  HPotion[7].Value:=2;
  HPotion[8].Value:=1;
  HPotion[9].Value:=3;
  HPotion[10].Value:=3;
  HPotion[11].Value:=3;

//---Напиток маны---------------------------------------------------------------
  MPotion[1].MPotionNK:=5;
  MPotion[2].MPotionNK:=6;
  MPotion[3].MPotionNK:=7;
  MPotion[4].MPotionNK:=8;
  MPotion[5].MPotionNK:=9;
  MPotion[6].MPotionNK:=18;
  MPotion[7].MPotionNK:=19;
  MPotion[8].MPotionNK:=60;
  MPotion[9].MPotionNK:=61;
  MPotion[1].Value:=2;
  MPotion[2].Value:=1;
  MPotion[3].Value:=1;
  MPotion[4].Value:=1;
  MPotion[5].Value:=1;
  MPotion[6].Value:=2;
  MPotion[7].Value:=2;
  MPotion[8].Value:=3;
  MPotion[9].Value:=3;

//---Болото---------------------------------------------------------------------
  Boloto[1]:=45;
  Boloto[2]:=46;
  Boloto[3]:=47;
  Boloto[4]:=48;
  Boloto[5]:=56;
  Boloto[6]:=57;
  Boloto[7]:=58;
  Boloto[8]:=59;

  GameBegin;
end;

procedure TForm1.btnMoveClick(Sender: TObject);
begin
  PlayerMove(CurPlayer,0);
end;

procedure TForm1.btn_AttackAgainClick(Sender: TObject);
begin
  MonsterFromDungeon:=False;
  Img := Form1.FindComponent('Image'+IntToStr(Player[CurPlayer].Position));
  NK:=(img as TImage).Tag;
  FrmMonster.ShowModal;
  btnMove.Enabled:=false;
  btn_AttackAgain.Enabled:=false;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  frmPlayers.ShowModal;
end;

procedure TForm1.btnHMIncreaseClick(Sender: TObject);
begin
  if Player[CurPlayer].HealthManaInc=False then
    ShowMessage('В данный момент увеличить здоровье и ману нельзя')
  else begin
    if Player[CurPlayer].Health=Player[curplayer].Mana then begin
      If Brosok=6 then begin
        ShowMessage('Вы подняли здоровье и ману на 1!');
        Player[CurPlayer].Health:=Player[CurPlayer].Health+1;
        Player[CurPlayer].Mana:=Player[CurPlayer].Mana+1;
        HealthChange(CurPlayer,1);
        ManaChange(CurPlayer,1)
      end else
        ShowMessage('Не удалось увеличить ману и здоровье на 1...');
      btnHMIncrease.Enabled:=False;
    end;
  end;
end;

procedure TForm1.btnGameBeginClick(Sender: TObject);
begin
  If MessageDlg('Вы хотите начать заново?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  GameBegin;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  gPL1Health.progress:=15;
  PLayer[1].HealthManaInc:=true;
end;

procedure TForm1.ApplicationEvents1Hint(Sender: TObject);
var
  comp: TComponent;
  i:  integer;
begin
  for i:=0 to Form1.ComponentCount-1 do begin
    comp:=Form1.Components[i];
    If Comp.ClassName='TGauge' then
      (comp as TGauge).Hint:=IntToStr((comp as TGauge).Progress);
    If Comp.ClassName='TImage' then begin                 //
      (comp as TImage).Hint:=comp.name;                   // debug
      (comp as TImage).ShowHint:=true;                    //
    end;                                                  //
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Player[2].SetPLTraps:=[80,81,82,85,86,87,88,89,94];
  Player[1].SetPLTraps:=[80,81,82,85,86,87,88,89,94];
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to PlayersNumber do
    Player[i].Mana:=0;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to PlayersNumber do Player[i].Health:=1;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  HealthChange(1,-2);
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
  Udalennye:=Udalennye+[Storm[3].StormNK];
  Udalennye:=Udalennye+[Storm[5].StormNK];
  Udalennye:=Udalennye+[Storm[4].StormNK];
  Udalennye:=Udalennye-[Storm[3].StormNK];
end;

procedure TForm1.btnEndClick(Sender: TObject);
label 1;
begin
//-----Передаем ход след. игроку
1:If CurPlayer<>PlayersNumber then CurPlayer:=CurPlayer+1
    else CurPlayer:=1;
//-----Если игрок пропускает свой ход-------------------------------------------    
  if Player[CurPlayer].PropuskSledHoda then begin
    ShowMessage('Игрок ' + IntToStr(CurPlayer) + 'пропускает ход');
    Player[CurPlayer].PropuskSledHoda:=False;
    goto 1;
  end;
//-----Если Мана=Здор. (у след. игрока), то вкл. возможность поднять их: -------
  If (Player[CurPlayer].Health=Player[CurPlayer].Mana) then Player[CurPlayer].HealthManaInc:=True
  else Player[CurPlayer].HealthManaInc:=False;
  btnMove.Enabled:=True;
  btnHMIncrease.Enabled:=True;
  frmPlayerNextMove.Show;
//-----Если игрок в лабиринте:--------------------------------------------------
  If Player[CurPlayer].InLabirint then begin
    btnMove.Enabled:=False;
    frmLabirinth2.ShowModal;
  end;
//-----Если игрок стоит на карточке подземелья----------------------------------
  If Player[CurPlayer].InDungeon then begin
    btnDungeon.Visible:=True;
    btnDungeon.Enabled:=True;
  end;
//-----Если игрок стоит на карточке с монстром----------------------------------
  if Player[curplayer].OnMonster then begin
    btn_AttackAgain.Visible:=true;
    btn_AttackAgain.Enabled:=true;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
tmpMana:=Player[CurPlayer].Mana;
tmpHealth:=Player[CurPlayer].Health;
frmMoon.showmodal;
end;

procedure TForm1.Button20Click(Sender: TObject);
var
  i: integer;
begin
  for i:=1 to 20 do begin
    IMG:=FindComponent('Image'+InttoStr(i));
    (img as TImage).Tag:=i+19;
    ImageList1.GetBitmap(i+19,(img as TImage).Picture.Bitmap);
    (img as TImage).BringToFront;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  frmTrap.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  frmSwamp.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ManaChange(1,6);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  frmHealthMana.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  frmTrap.ShowModal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  tmpMana:=Player[CurPlayer].Mana;
  tmpHealth:=Player[CurPlayer].Health;
  frmTempleSun.ShowModal;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  frmLabirinth2.ShowModal
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  frmLabirinth.ShowModal;
end;

procedure TForm1.ClickMonsterCard(Sender: TOBject);
begin
  with TShape.Create(TPanel(TWinControl(Sender).parent)) do begin  //panel_traps_player1
    left:=(Sender as TImage).Left;
    top:=(Sender as TImage).top;
    width:=(Sender as TImage).width;
    height:=(Sender as TImage).height;
    Shape:=stRoundRect;
    brush.Color:=clWhite;
    brush.Style:=bsClear;//bsBDiagonal;
    pen.Color:=clAqua;
    pen.Style:=psSolid;
    pen.Width:=2;
    tag:=(Sender as Timage).Tag;
    cursor:=crHandPoint;
    onMouseDown:=DeselectMonsterCard;
    parent:=(Sender as TImage).Parent;
  end;
end;

procedure TForm1.DeselectMonsterCard(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  (sender as TShape).visible:=false;
  (sender as TShape).free;

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
frmStorm.ShowModal;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  frmDungeon.ShowModal;
  Player[curplayer].InDungeon:=True;
end;

procedure TForm1.btnDungeonClick(Sender: TObject);
begin
  frmDungeon.ShowModal;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  frmObelisk.ShowModal;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Nk:=40;
  frmArtifact.ShowModal;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  Player[CurPlayer].Artifacts:=Player[CurPlayer].Artifacts + [AirShield];
  bPLTrap:=2;
  bTmp:=4;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  PlayerMove(CurPlayer,2);
  NK:=67;
  bTmp:=0;
  sTmp:='Вы телепортируетесь на внешний виток спирали';
  frmTeleport.Show;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  frmPlayerNextMove.show;
end;

procedure TForm1.lblbtnArtefactsClick(Sender: TObject);
var
  panel:  TComponent;
begin
  panel:=FindComponent('panel_arts_player' + inttostr(curPlayer));
  (panel as TPanel).bringtofront;
end;

procedure TForm1.lblbtnArtefactsMouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Font.Color:=clBlue;
end;

procedure TForm1.lblbtnArtefactsMouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Color:=clBlack;
end;

procedure TForm1.lblbtnMonstersClick(Sender: TObject);
var
  panel:  TComponent;
begin
  panel:=FindComponent('panel_monsters_player' + inttostr(curPlayer));
  (panel as TPanel).bringtofront;
end;

procedure TForm1.Button16Click(Sender: TObject);
var
  i: integer;
begin
  for i:=1 to 20 do begin
    IMG:=FindComponent('Image'+InttoStr(i));
    (img as TImage).Tag:=i+64;
    ImageList1.GetBitmap(i+64,(img as TImage).Picture.Bitmap);
    (img as TImage).BringToFront;
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Panel_Arts_player1.BringToFront;
      with TImage.Create(Panel_Arts_player1) do begin
        inc(Player[curplayer].ArtifactsCount);
        Name:='img_pl' + inttostr(curPlayer) + '_art' + inttostr(Player[curplayer].ArtifactsCount+1);
        left:=Player[curplayer].ArtifactsCount*64 - 63;
        top:=0;
        width:=64;
        height:=64;
        picture.Bitmap.Assign(image1.Picture.Bitmap);
        parent:=Panel_Arts_player1;
        //    Player[CUrPlayer].Artifacts:=Player[CUrPlayer].Artifacts+[CLock];
      end;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  Pole.sendToBack;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  Playermove(CurPlayer, strtoint(edit1.Text));
end;

end.
