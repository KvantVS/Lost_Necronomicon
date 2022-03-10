program Project1;



uses
  Forms,
  Classes,
  ExtCtrls,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {frmPlayers},
  Unit3 in 'Unit3.pas' {frmTrap1},
  Unit4 in 'Unit4.pas' {frmSwamp},
  Unit5 in 'Unit5.pas' {frmMoon},
  Unit6 in 'Unit6.pas' {frmHealthMana},
  Unit7 in 'Unit7.pas' {frmTrap},
  Unit8 in 'Unit8.pas' {frmTempleSun},
  Unit9 in 'Unit9.pas' {frmLabirinth},
  Unit10 in 'Unit10.pas' {frmLabirinth2},
  Unit11 in 'Unit11.pas' {frmStorm},
  Unit12 in 'Unit12.pas' {frmDungeon},
  Unit13 in 'Unit13.pas' {frmObelisk},
  Unit14 in 'Unit14.pas' {frmArtifact},
  Unit15 in 'Unit15.pas' {frmTeleport},
  Unit16 in 'Unit16.pas' {frmPlayerNextMove},
  Unit17 in 'Unit17.pas' {frmMonster};

{$R *.res}

{var
  i:Integer;
  IMG: TComponent;}
begin
  Application.Initialize;
  Application.Title := 'Lost Necronomicon';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmPlayers, frmPlayers);
  Application.CreateForm(TfrmTrap1, frmTrap1);
  Application.CreateForm(TfrmSwamp, frmSwamp);
  Application.CreateForm(TfrmMoon, frmMoon);
  Application.CreateForm(TfrmHealthMana, frmHealthMana);
  Application.CreateForm(TfrmTrap, frmTrap);
  Application.CreateForm(TfrmTempleSun, frmTempleSun);
  Application.CreateForm(TfrmLabirinth, frmLabirinth);
  Application.CreateForm(TfrmLabirinth2, frmLabirinth2);
  Application.CreateForm(TfrmStorm, frmStorm);
  Application.CreateForm(TfrmDungeon, frmDungeon);
  Application.CreateForm(TfrmObelisk, frmObelisk);
  Application.CreateForm(TfrmArtifact, frmArtifact);
  Application.CreateForm(TfrmTeleport, frmTeleport);
  Application.CreateForm(TfrmPlayerNextMove, frmPlayerNextMove);
  Application.CreateForm(TfrmMonster, frmMonster);
  {  For i:=0 to Form1.ComponentCount-1 do begin
    If Form1.Components[i].ClassName='TImage' then begin
      IMG:=Form1.Components[i];
      (IMG as TImage).OnMouseMove:=Form1.Image1MouseMove;
    end;
  end;}
  frmPlayers.ShowModal;
  Application.Run;
end.
