program P_MoesInvaders;

uses
  Forms,
  U_Moes in 'U_Moes.pas' {frmTela1},
  U_Menu in 'U_Menu.pas' {frmMenu},
  U_Eng in 'U_Eng.pas' {frmEng},
  U_Marca in 'U_Marca.pas' {frmApp},
  U_App in 'U_App.pas' {frmAppT},
  U_Tela2 in 'U_Tela2.pas' {frmTela2},
  U_Musicas in 'U_Musicas.pas' {frmMusicas},
  U_GameOver in '..\..\..\Moes Invaders\Codigo\U_GameOver.pas' {frmGameOver};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Moyes Invaders - Alpha Version';
  Application.CreateForm(TfrmAppT, frmAppT);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmTela1, frmTela1);
  Application.CreateForm(TfrmGameOver, frmGameOver);
  Application.CreateForm(TfrmEng, frmEng);
  Application.CreateForm(TfrmApp, frmApp);
  Application.CreateForm(TfrmTela2, frmTela2);
  Application.CreateForm(TfrmMusicas, frmMusicas);
  Application.CreateForm(TfrmGameOver, frmGameOver);
  Application.Run;
end.
