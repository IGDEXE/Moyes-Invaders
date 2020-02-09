unit U_Moes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  TfrmTela1 = class(TForm)
    imgBT1: TImage;
    imgBT2: TImage;
    imgBT3: TImage;
    imgBT4: TImage;
    imgBT5: TImage;
    imgBT6: TImage;
    imgP1: TImage;
    TmBt1: TTimer;
    TmBt2: TTimer;
    TmBt3: TTimer;
    TmBt4: TTimer;
    TmBt5: TTimer;
    TmBt6: TTimer;
    TmVelocidade: TTimer;
    TmFisica: TTimer;
    lblPontos: TLabel;
    imgBT7: TImage;
    imgBT8: TImage;
    imgBT9: TImage;
    imgBT10: TImage;
    imgBT11: TImage;
    imgBT12: TImage;
    TmBt7: TTimer;
    TmBt8: TTimer;
    TmBt9: TTimer;
    TmBt10: TTimer;
    TmBt11: TTimer;
    TmBt12: TTimer;
    TmFisicax: TTimer;
    TmVelocidadex: TTimer;
    Label1: TLabel;
    lbl1: TLabel;
    img1: TImage;
    Label2: TLabel;
    TmNext: TTimer;
    Label3: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TmBt1Timer(Sender: TObject);
    procedure TmBt2Timer(Sender: TObject);
    procedure TmBt3Timer(Sender: TObject);
    procedure TmBt4Timer(Sender: TObject);
    procedure TmBt5Timer(Sender: TObject);
    procedure TmBt6Timer(Sender: TObject);
    procedure TmVelocidadeTimer(Sender: TObject);
    procedure TmFisicaTimer(Sender: TObject);
    procedure TmBt7Timer(Sender: TObject);
    procedure TmBt8Timer(Sender: TObject);
    procedure TmBt9Timer(Sender: TObject);
    procedure TmBt10Timer(Sender: TObject);
    procedure TmBt11Timer(Sender: TObject);
    procedure TmBt12Timer(Sender: TObject);
    procedure TmFisicaxTimer(Sender: TObject);
    procedure TmVelocidadexTimer(Sender: TObject);
    procedure TmNextTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTela1: TfrmTela1;
  FinalTop, Pontos1, FinalLeft, VelocidadeBt1,VelocidadeBt2,Velo,VelocidadeBt3,VelocidadeBt4,VelocidadeBt5,VelocidadeBt6, VelocidadeP1, Bth, Bthx, VelocidadeBt7,VelocidadeBt8,Velox,VelocidadeBt9,VelocidadeBt10,VelocidadeBt11,VelocidadeBt12 : Integer;
  
implementation

uses U_GameOver, U_App, U_Marca, U_Musicas;

{$R *.dfm}

procedure TfrmTela1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
    frmMusicas.Mplayer.FileName := 'Musica/Menu.mp3';
     frmMusicas.Mplayer.Open;
     frmMusicas.Mplayer.Play;
    frmApp.Show;
    frmTela1.Close;
  end;
   if (imgP1.Left >= 0) and (imgP1.Left <= FinalLeft) then
   //Tela
   begin
    if (Key = 39) then
    begin
      imgP1.Left := imgP1.Left + VelocidadeP1;
    end;
    if (Key = 37) then
    begin
      imgP1.Left := imgP1.Left - VelocidadeP1;
    end;
   end;
   if (imgP1.Left < 0) then
    begin
      imgP1.Left := 0;
    end;
    if (imgP1.Left > 200) then
    begin
      imgP1.Left := FinalLeft;
    end;
end;

procedure TfrmTela1.FormShow(Sender: TObject);
begin
  imgBT1.Top := -84;
  imgBT2.Top := -84;
  imgBT3.Top := -84;
  imgBT4.Top := -84;
  imgBT5.Top := -84;
  imgBT6.Top := -84;
  imgBT7.Top := -84;
  imgBT8.Top := -84;
  imgBT9.Top := -84;
  imgBT10.Top := -84;
  imgBT11.Top := -84;
  imgBT12.Top := -84;
  TmVelocidade.Enabled := True;
  TmVelocidadex.Enabled := True;
  TmFisica.Enabled := True;
  TmFisicax.Enabled := True;
  DoubleBuffered := True;
  FinalLeft := 200;
  FinalTop := 320;
  VelocidadeP1 := 10;
  Bth := 1;
  Bthx := 6;
  Pontos1 := 0;
end;

procedure TfrmTela1.TmBt1Timer(Sender: TObject);
begin
  //Both 1
  if (imgBT1.Top < FinalTop) then
  begin
    imgBT1.Visible := True;
    imgBT1.Top := imgBT1.Top + VelocidadeBt1;
  end;
  if (imgBT1.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT1.Top := -24;
    imgBT1.Visible := False;
    Randomize;
    Bth := 1 + Random(5);
    TmBt1.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt2Timer(Sender: TObject);
begin
   //Both 2
  if (imgBT2.Top < FinalTop) then
  begin
    imgBT2.Visible := True;
    imgBT2.Top := imgBT2.Top + VelocidadeBt2;
  end;
  if (imgBT2.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT2.Top := -24;
    imgBT2.Visible := False;
    Bth := 1 + Random(5);
    TmBt2.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt3Timer(Sender: TObject);
begin
  //Both 3
  if (imgBT3.Top < FinalTop) then
  begin
    imgBT3.Visible := True;
    imgBT3.Top := imgBT3.Top + VelocidadeBt3;
  end;
  if (imgBT3.Top >= FinalTop) then
  begin
    imgBT3.Top := -24;
    Pontos1 := Pontos1 + 1;
    imgBT3.Visible := False;
    Bth := 1 + Random(5);
    TmBt3.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt4Timer(Sender: TObject);
begin
  //Both 4
  if (imgBT4.Top < FinalTop) then
  begin
    imgBT4.Visible := True;
    imgBT4.Top := imgBT4.Top + VelocidadeBt4;
  end;
  if (imgBT4.Top >= FinalTop) then
  begin
    imgBT4.Top := -24;
    Pontos1 := Pontos1 + 1;
    imgBT4.Visible := False;
    Bth := 1 + Random(5);
    TmBt4.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt5Timer(Sender: TObject);
begin
  //Both 5
  if (imgBT5.Top < FinalTop) then
  begin
    imgBT5.Visible := True;
    imgBT5.Top := imgBT5.Top + VelocidadeBt5;
  end;
  if (imgBT5.Top >= FinalTop) then
  begin
    imgBT5.Top := -24;
    Pontos1 := Pontos1 + 1;
    imgBT5.Visible := False;
    Bth := 1 + Random(5);
    TmBt5.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt6Timer(Sender: TObject);
begin
  //Both 6
  if (imgBT6.Top < FinalTop) then
  begin
    imgBT6.Visible := True;
    imgBT6.Top := imgBT6.Top + VelocidadeBt6;
  end;
  if (imgBT6.Top >= FinalTop) then
  begin
    imgBT6.Top := -24;
    Pontos1 := Pontos1 + 1;
    imgBT6.Visible := False;
    Bth := 1 + Random(5);
    TmBt6.Enabled := False;
  end;
end;

procedure TfrmTela1.TmVelocidadeTimer(Sender: TObject);
begin
  if (Bth = 1) then
  begin
    Randomize;
    Velo := Random(15);
    if (Velo <= 7 ) then
    begin
      VelocidadeBt1 := 7;
    end;
    if (Velo > 7 ) then
    begin
      VelocidadeBt1 := Velo;
    end;
    TmBt1.Enabled := True;
  end;
  if (Bth = 2) then
  begin
    Randomize;
    Velo := Random(15);
    if (Velo <= 7 ) then
    begin
      VelocidadeBt2 := 7;
    end;
    if (Velo > 7 ) then
    begin
      VelocidadeBt2 := Velo;
    end;
    TmBt2.Enabled := True;
  end;
  if (Bth = 3) then
  begin
    Randomize;
    Velo := Random(15);
    if (Velo <= 7 ) then
    begin
      VelocidadeBt3 := 7;
    end;
    if (Velo > 7 ) then
    begin
      VelocidadeBt3 := Velo;
    end;
    TmBt3.Enabled := True;
  end;
  if (Bth = 4) then
  begin
    Randomize;
    Velo := Random(15);
    if (Velo <= 7 ) then
    begin
      VelocidadeBt4 := 7;
    end;
    if (Velo > 7 ) then
    begin
      VelocidadeBt4 := Velo;
    end;
    TmBt4.Enabled := True;
  end;
  if (Bth = 5) then
  begin
    Randomize;
    Velo := Random(15);
    if (Velo <= 7 ) then
    begin
      VelocidadeBt5 := 7;
    end;
    if (Velo > 7 ) then
    begin
      VelocidadeBt5 := Velo;
    end;
    TmBt5.Enabled := True;
  end;
  if (Bth = 6) then
  begin
    Randomize;
    Velo := Random(15);
    if (Velo <= 7 ) then
    begin
      VelocidadeBt6 := 7;
    end;
    if (Velo > 7 ) then
    begin
      VelocidadeBt6 := Velo;
    end;
    TmBt6.Enabled := True;
  end;
end;

procedure TfrmTela1.TmFisicaTimer(Sender: TObject);
begin
  lblPontos.Caption := IntToStr(Pontos1);
  if (imgBT1.Top > 280) and (imgBT1.Top < FinalTop) and (imgP1.Left > imgBT1.Left - 30) and (imgP1.Left < imgBT1.Left + 30) then
  begin
    TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT2.Top > 280) and (imgBT2.Top < FinalTop) and (imgP1.Left > imgBT2.Left - 30) and (imgP1.Left < imgBT2.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT3.Top > 280) and (imgBT3.Top < FinalTop) and (imgP1.Left > imgBT3.Left - 30) and (imgP1.Left < imgBT3.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT4.Top > 280) and (imgBT4.Top < FinalTop) and (imgP1.Left > imgBT4.Left - 30) and (imgP1.Left < imgBT4.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT5.Top > 280) and (imgBT5.Top < FinalTop) and (imgP1.Left > imgBT5.Left - 30) and (imgP1.Left < imgBT5.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT6.Top > 280) and (imgBT6.Top < FinalTop) and (imgP1.Left > imgBT6.Left - 30) and (imgP1.Left < imgBT6.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
end;

procedure TfrmTela1.TmBt7Timer(Sender: TObject);
begin
  //Both 7
  if (imgBT7.Top < FinalTop) then
  begin
    imgBT7.Visible := True;
    imgBT7.Top := imgBT7.Top + VelocidadeBt7;
  end;
  if (imgBT7.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT7.Top := -24;
    imgBT7.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt7.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt8Timer(Sender: TObject);
begin
  //Both 8
  if (imgBT8.Top < FinalTop) then
  begin
    imgBT8.Visible := True;
    imgBT8.Top := imgBT8.Top + VelocidadeBt8;
  end;
  if (imgBT8.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT8.Top := -24;
    imgBT8.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt8.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt9Timer(Sender: TObject);
begin
  //Both 9
  if (imgBT9.Top < FinalTop) then
  begin
    imgBT9.Visible := True;
    imgBT9.Top := imgBT9.Top + VelocidadeBt9;
  end;
  if (imgBT9.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT9.Top := -24;
    imgBT9.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt9.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt10Timer(Sender: TObject);
begin
  //Both 10
  if (imgBT10.Top < FinalTop) then
  begin
    imgBT10.Visible := True;
    imgBT10.Top := imgBT10.Top + VelocidadeBt10;
  end;
  if (imgBT10.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT10.Top := -24;
    imgBT10.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt10.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt11Timer(Sender: TObject);
begin
  //Both 11
  if (imgBT11.Top < FinalTop) then
  begin
    imgBT11.Visible := True;
    imgBT11.Top := imgBT11.Top + VelocidadeBt11;
  end;
  if (imgBT11.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT11.Top := -24;
    imgBT11.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt11.Enabled := False;
  end;
end;

procedure TfrmTela1.TmBt12Timer(Sender: TObject);
begin
  //Both 12
  if (imgBT12.Top < FinalTop) then
  begin
    imgBT12.Visible := True;
    imgBT12.Top := imgBT12.Top + VelocidadeBt12;
  end;
  if (imgBT12.Top >= FinalTop) then
  begin
    Pontos1 := Pontos1 + 1;
    imgBT12.Top := -24;
    imgBT12.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt12.Enabled := False;
  end;
end;

procedure TfrmTela1.TmFisicaxTimer(Sender: TObject);
begin
  if (imgBT7.Top > 280) and (imgBT7.Top < FinalTop) and (imgP1.Left > imgBT7.Left - 30) and (imgP1.Left < imgBT7.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT8.Top > 280) and (imgBT8.Top < FinalTop) and (imgP1.Left > imgBT8.Left - 30) and (imgP1.Left < imgBT8.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT9.Top > 280) and (imgBT9.Top < FinalTop) and (imgP1.Left > imgBT9.Left - 30) and (imgP1.Left < imgBT9.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT10.Top > 280) and (imgBT10.Top < FinalTop) and (imgP1.Left > imgBT10.Left - 30) and (imgP1.Left < imgBT10.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT11.Top > 280) and (imgBT11.Top < FinalTop) and (imgP1.Left > imgBT11.Left - 30) and (imgP1.Left < imgBT11.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
  if (imgBT12.Top > 280) and (imgBT12.Top < FinalTop) and (imgP1.Left > imgBT12.Left - 30) and (imgP1.Left < imgBT12.Left + 30) then
  begin
  TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela1.Close;
  end;
end;

procedure TfrmTela1.TmVelocidadexTimer(Sender: TObject);
begin
  if (Bthx = 1) then
  begin
    Randomize;
    Velox := Random(15);
    if (Velox <= 7 ) then
    begin
      VelocidadeBt7 := 7;
    end;
    if (Velox > 7 ) then
    begin
      VelocidadeBt7 := Velox;
    end;
    TmBt7.Enabled := True;
  end;
  if (Bthx = 2) then
  begin
    Randomize;
    Velox := Random(15);
    if (Velox <= 7 ) then
    begin
      VelocidadeBt8 := 7;
    end;
    if (Velox > 7 ) then
    begin
      VelocidadeBt8 := Velox;
    end;
    TmBt8.Enabled := True;
  end;
  if (Bthx = 3) then
  begin
    Randomize;
    Velox := Random(15);
    if (Velox <= 7 ) then
    begin
      VelocidadeBt9 := 7;
    end;
    if (Velox > 7 ) then
    begin
      VelocidadeBt9 := Velox;
    end;
    TmBt9.Enabled := True;
  end;
  if (Bthx = 4) then
  begin
    Randomize;
    Velox := Random(15);
    if (Velox <= 7 ) then
    begin
      VelocidadeBt10 := 7;
    end;
    if (Velox > 7 ) then
    begin
      VelocidadeBt10 := Velox;
    end;
    TmBt10.Enabled := True;
  end;
  if (Bthx = 5) then
  begin
    Randomize;
    Velox := Random(15);
    if (Velox <= 7 ) then
    begin
      VelocidadeBt11 := 7;
    end;
    if (Velox > 7 ) then
    begin
      VelocidadeBt11 := Velox;
    end;
    TmBt11.Enabled := True;
  end;
  if (Bthx = 6) then
  begin
    Randomize;
    Velox := Random(15);
    if (Velox <= 7 ) then
    begin
      VelocidadeBt12 := 7;
    end;
    if (Velox > 7 ) then
    begin
      VelocidadeBt12 := Velox;
    end;
    TmBt12.Enabled := True;
  end;
end;

procedure TfrmTela1.TmNextTimer(Sender: TObject);
begin
  if (Pontos1 = 51) then
  begin
    TmBt1.Enabled := False;
    TmBt2.Enabled := False;
    TmBt3.Enabled := False;
    TmBt4.Enabled := False;
    TmBt5.Enabled := False;
    TmBt6.Enabled := False;
    TmBt7.Enabled := False;
    TmBt8.Enabled := False;
    TmBt9.Enabled := False;
    TmBt10.Enabled := False;
    TmBt11.Enabled := False;
    TmBt12.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    img1.Visible := True;
    lbl1.Visible := True;
    Label1.Visible := True;
    Label2.Visible := True;
    Label3.Visible :=  True;
  end;
end;

end.
