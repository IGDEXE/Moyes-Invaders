unit U_Tela2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TfrmTela2 = class(TForm)
    imgBT1: TImage;
    imgBT2: TImage;
    imgBT3: TImage;
    imgBT4: TImage;
    imgBT5: TImage;
    imgBT6: TImage;
    imgP1: TImage;
    lblPontos: TLabel;
    imgBT7: TImage;
    imgBT8: TImage;
    imgBT9: TImage;
    imgBT10: TImage;
    imgBT11: TImage;
    imgBT12: TImage;
    TmBt1: TTimer;
    TmBt2: TTimer;
    TmBt3: TTimer;
    TmBt4: TTimer;
    TmBt5: TTimer;
    TmBt6: TTimer;
    TmVelocidade: TTimer;
    TmFisica: TTimer;
    TmBt7: TTimer;
    TmBt8: TTimer;
    TmBt9: TTimer;
    TmBt10: TTimer;
    TmBt11: TTimer;
    TmBt12: TTimer;
    TmFisicax: TTimer;
    TmVelocidadex: TTimer;
    imgBT13: TImage;
    imgBT14: TImage;
    imgBT15: TImage;
    imgBT16: TImage;
    imgBT17: TImage;
    imgBT18: TImage;
    TmBt13: TTimer;
    TmBt14: TTimer;
    TmBt15: TTimer;
    TmBt16: TTimer;
    TmBt17: TTimer;
    TmBt18: TTimer;
    TmFisicay: TTimer;
    TmVelocidadey: TTimer;
    BtCont: TTimer;
    Label1: TLabel;
    lbl1: TLabel;
    img1: TImage;
    Label2: TLabel;
    TmNext: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    procedure TmBt1Timer(Sender: TObject);
    procedure TmBt2Timer(Sender: TObject);
    procedure TmBt3Timer(Sender: TObject);
    procedure TmBt4Timer(Sender: TObject);
    procedure TmBt5Timer(Sender: TObject);
    procedure TmBt6Timer(Sender: TObject);
    procedure TmBt7Timer(Sender: TObject);
    procedure TmBt8Timer(Sender: TObject);
    procedure TmBt9Timer(Sender: TObject);
    procedure TmBt10Timer(Sender: TObject);
    procedure TmBt11Timer(Sender: TObject);
    procedure TmBt12Timer(Sender: TObject);
    procedure TmFisicaTimer(Sender: TObject);
    procedure TmBt13Timer(Sender: TObject);
    procedure TmBt14Timer(Sender: TObject);
    procedure TmBt15Timer(Sender: TObject);
    procedure TmBt16Timer(Sender: TObject);
    procedure TmBt17Timer(Sender: TObject);
    procedure TmBt18Timer(Sender: TObject);
    procedure BtContTimer(Sender: TObject);
    procedure TmVelocidadeTimer(Sender: TObject);
    procedure TmVelocidadexTimer(Sender: TObject);
    procedure TmVelocidadeyTimer(Sender: TObject);
    procedure TmFisicaxTimer(Sender: TObject);
    procedure TmFisicayTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TmNextTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTela2: TfrmTela2;
  FinalTop, Pontos, FinalLeft, VelocidadeBt1,VelocidadeBt2,Velo,VelocidadeBt3,VelocidadeBt4,VelocidadeBt5,VelocidadeBt6, VelocidadeP1, Bth, Bthx, VelocidadeBt7,VelocidadeBt8,Velox,VelocidadeBt9,VelocidadeBt10,VelocidadeBt11,VelocidadeBt12, VelocidadeBt13, VelocidadeBt14, VelocidadeBt15, VelocidadeBt16, VelocidadeBt17, VelocidadeBt18, Veloy, Bthy : Integer;
  BtPower, Bvelo : Integer;

implementation

uses U_GameOver, U_Musicas, U_Marca;

{$R *.dfm}

procedure TfrmTela2.TmBt1Timer(Sender: TObject);
begin
  //Both 1
  if (imgBT1.Top < FinalTop) then
  begin
    imgBT1.Visible := True;
    imgBT1.Top := imgBT1.Top + VelocidadeBt1;
  end;
  if (imgBT1.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT1.Top := -24;
    imgBT1.Visible := False;
    Randomize;
    Bth := 1 + Random(5);
    TmBt1.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt2Timer(Sender: TObject);
begin
 //Both 2
  if (imgBT2.Top < FinalTop) then
  begin
    imgBT2.Visible := True;
    imgBT2.Top := imgBT2.Top + VelocidadeBt2;
  end;
  if (imgBT2.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT2.Top := -24;
    imgBT2.Visible := False;
    Bth := 1 + Random(5);
    TmBt2.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt3Timer(Sender: TObject);
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
    Pontos := Pontos + 1;
    imgBT3.Visible := False;
    Bth := 1 + Random(5);
    TmBt3.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt4Timer(Sender: TObject);
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
    Pontos := Pontos + 1;
    imgBT4.Visible := False;
    Bth := 1 + Random(5);
    TmBt4.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt5Timer(Sender: TObject);
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
    Pontos := Pontos + 1;
    imgBT5.Visible := False;
    Bth := 1 + Random(5);
    TmBt5.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt6Timer(Sender: TObject);
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
    Pontos := Pontos + 1;
    imgBT6.Visible := False;
    Bth := 1 + Random(5);
    TmBt6.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt7Timer(Sender: TObject);
begin
 //Both 7
  if (imgBT7.Top < FinalTop) then
  begin
    imgBT7.Visible := True;
    imgBT7.Top := imgBT7.Top + VelocidadeBt7;
  end;
  if (imgBT7.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT7.Top := -24;
    imgBT7.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt7.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt8Timer(Sender: TObject);
begin
  //Both 8
  if (imgBT8.Top < FinalTop) then
  begin
    imgBT8.Visible := True;
    imgBT8.Top := imgBT8.Top + VelocidadeBt8;
  end;
  if (imgBT8.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT8.Top := -24;
    imgBT8.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt8.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt9Timer(Sender: TObject);
begin
 //Both 9
  if (imgBT9.Top < FinalTop) then
  begin
    imgBT9.Visible := True;
    imgBT9.Top := imgBT9.Top + VelocidadeBt9;
  end;
  if (imgBT9.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT9.Top := -24;
    imgBT9.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt9.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt10Timer(Sender: TObject);
begin
 //Both 10
  if (imgBT10.Top < FinalTop) then
  begin
    imgBT10.Visible := True;
    imgBT10.Top := imgBT10.Top + VelocidadeBt10;
  end;
  if (imgBT10.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT10.Top := -24;
    imgBT10.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt10.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt11Timer(Sender: TObject);
begin
 //Both 11
  if (imgBT11.Top < FinalTop) then
  begin
    imgBT11.Visible := True;
    imgBT11.Top := imgBT11.Top + VelocidadeBt11;
  end;
  if (imgBT11.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT11.Top := -24;
    imgBT11.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt11.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt12Timer(Sender: TObject);
begin
 //Both 12
  if (imgBT12.Top < FinalTop) then
  begin
    imgBT12.Visible := True;
    imgBT12.Top := imgBT12.Top + VelocidadeBt12;
  end;
  if (imgBT12.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    imgBT12.Top := -24;
    imgBT12.Visible := False;
    Randomize;
    Bthx := 1 + Random(5);
    TmBt12.Enabled := False;
  end;
end;

procedure TfrmTela2.TmFisicaTimer(Sender: TObject);
begin
  lblPontos.Caption := IntToStr(Pontos);
  if (imgBT1.Top > 280) and (imgBT1.Top < FinalTop) and (imgP1.Left > imgBT1.Left - 30) and (imgP1.Left < imgBT1.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT2.Top > 280) and (imgBT2.Top < FinalTop) and (imgP1.Left > imgBT2.Left - 30) and (imgP1.Left < imgBT2.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT3.Top > 280) and (imgBT3.Top < FinalTop) and (imgP1.Left > imgBT3.Left - 30) and (imgP1.Left < imgBT3.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT4.Top > 280) and (imgBT4.Top < FinalTop) and (imgP1.Left > imgBT4.Left - 30) and (imgP1.Left < imgBT4.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT5.Top > 280) and (imgBT5.Top < FinalTop) and (imgP1.Left > imgBT5.Left - 30) and (imgP1.Left < imgBT5.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT6.Top > 280) and (imgBT6.Top < FinalTop) and (imgP1.Left > imgBT6.Left - 30) and (imgP1.Left < imgBT6.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
end;

procedure TfrmTela2.TmBt13Timer(Sender: TObject);
begin
  //Both 13
  if (imgBT13.Top < FinalTop) then
  begin
    imgBT13.Visible := True;
    imgBT13.Top := imgBT13.Top + VelocidadeBt13;
  end;
  if (imgBT13.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    BtPower := BtPower + 1;
    imgBT13.Top := -14;
    imgBT13.Visible := False;
    Randomize;
    Bthy := 1 + Random(5);
    TmBt13.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt14Timer(Sender: TObject);
begin
  //Both 14
  if (imgBT14.Top < FinalTop) then
  begin
    imgBT14.Visible := True;
    imgBT14.Top := imgBT14.Top + VelocidadeBt14;
  end;
  if (imgBT14.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    BtPower := BtPower + 1;
    imgBT14.Top := -14;
    imgBT14.Visible := False;
    Randomize;
    Bthy := 1 + Random(5);
    TmBt1.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt15Timer(Sender: TObject);
begin
  //Both 15
  if (imgBT15.Top < FinalTop) then
  begin
    imgBT15.Visible := True;
    imgBT15.Top := imgBT15.Top + VelocidadeBt15;
  end;
  if (imgBT15.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    BtPower := BtPower + 1;
    imgBT15.Top := -14;
    imgBT15.Visible := False;
    Randomize;
    Bthy := 1 + Random(5);
    TmBt1.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt16Timer(Sender: TObject);
begin
  //Both 16
  if (imgBT16.Top < FinalTop) then
  begin
    imgBT16.Visible := True;
    imgBT16.Top := imgBT16.Top + VelocidadeBt16;
  end;
  if (imgBT16.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    BtPower := BtPower + 1;
    imgBT16.Top := -14;
    imgBT16.Visible := False;
    Randomize;
    Bthy := 1 + Random(5);
    TmBt1.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt17Timer(Sender: TObject);
begin
  //Both 17
  if (imgBT17.Top < FinalTop) then
  begin
    imgBT17.Visible := True;
    imgBT17.Top := imgBT17.Top + VelocidadeBt17;
  end;
  if (imgBT17.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    BtPower := BtPower + 1;
    imgBT17.Top := -14;
    imgBT17.Visible := False;
    Randomize;
    Bthy := 1 + Random(5);
    TmBt1.Enabled := False;
  end;
end;

procedure TfrmTela2.TmBt18Timer(Sender: TObject);
begin
  //Both 18
  if (imgBT18.Top < FinalTop) then
  begin
    imgBT18.Visible := True;
    imgBT18.Top := imgBT18.Top + VelocidadeBt18;
  end;
  if (imgBT18.Top >= FinalTop) then
  begin
    Pontos := Pontos + 1;
    BtPower := BtPower + 1;
    imgBT18.Top := -14;
    imgBT18.Visible := False;
    Randomize;
    Bthy := 1 + Random(5);
    TmBt1.Enabled := False;
  end;
end;

procedure TfrmTela2.BtContTimer(Sender: TObject);
begin
  if (BtPower = 10) then
  begin
    Bvelo := Bvelo + 1;
    BtPower := 0;
  end;
end;

procedure TfrmTela2.TmVelocidadeTimer(Sender: TObject);
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

procedure TfrmTela2.TmVelocidadexTimer(Sender: TObject);
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
      VelocidadeBt7 := Velox + 1;
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
      VelocidadeBt8 := Velox + 1;
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
      VelocidadeBt9 := Velox + 1;
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
      VelocidadeBt10 := Velox + 1;
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
      VelocidadeBt11 := Velox + 1;
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
      VelocidadeBt12 := Velox + 1;
    end;
    TmBt12.Enabled := True;
  end;
end;

procedure TfrmTela2.TmVelocidadeyTimer(Sender: TObject);
begin
  if (Bthy = 1) then
  begin
    Randomize;
    Veloy := Random(15);
    if (Veloy <= 7 ) then
    begin
      VelocidadeBt13 := 7;
    end;
    if (Veloy > 7 ) then
    begin
      VelocidadeBt13 := Veloy + BtPower;
    end;
    TmBt13.Enabled := True;
  end;
  if (Bthy = 2) then
  begin
    Randomize;
    Veloy := Random(15);
    if (Veloy <= 7 ) then
    begin
      VelocidadeBt14 := 7;
    end;
    if (Veloy > 7 ) then
    begin
      VelocidadeBt14 := Veloy + BtPower;
    end;
    TmBt14.Enabled := True;
  end;
  if (Bthy = 3) then
  begin
    Randomize;
    Veloy := Random(15);
    if (Veloy <= 7 ) then
    begin
      VelocidadeBt15 := 7;
    end;
    if (Veloy > 7 ) then
    begin
      VelocidadeBt15 := Veloy + BtPower;
    end;
    TmBt15.Enabled := True;
  end;
  if (Bthy = 4) then
  begin
    Randomize;
    Veloy := Random(15);
    if (Veloy <= 7 ) then
    begin
      VelocidadeBt16 := 7;
    end;
    if (Veloy > 7 ) then
    begin
      VelocidadeBt16 := Veloy + BtPower;
    end;
    TmBt16.Enabled := True;
  end;
  if (Bthy = 5) then
  begin
    Randomize;
    Veloy := Random(15);
    if (Veloy <= 7 ) then
    begin
      VelocidadeBt17 := 7;
    end;
    if (Veloy > 7 ) then
    begin
      VelocidadeBt17 := Veloy + BtPower;
    end;
    TmBt17.Enabled := True;
  end;
  if (Bthy = 6) then
  begin
    Randomize;
    Veloy := Random(15);
    if (Veloy <= 7 ) then
    begin
      VelocidadeBt18 := 7;
    end;
    if (Veloy > 7 ) then
    begin
      VelocidadeBt18 := Veloy + BtPower;
    end;
    TmBt18.Enabled := True;
  end;
end;

procedure TfrmTela2.TmFisicaxTimer(Sender: TObject);
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    BtCont.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT8.Top > 280) and (imgBT8.Top < FinalTop) and (imgP1.Left > imgBT8.Left - 30) and (imgP1.Left < imgBT8.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT9.Top > 280) and (imgBT9.Top < FinalTop) and (imgP1.Left > imgBT9.Left - 30) and (imgP1.Left < imgBT9.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT10.Top > 280) and (imgBT10.Top < FinalTop) and (imgP1.Left > imgBT10.Left - 30) and (imgP1.Left < imgBT10.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT11.Top > 280) and (imgBT11.Top < FinalTop) and (imgP1.Left > imgBT11.Left - 30) and (imgP1.Left < imgBT11.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT12.Top > 280) and (imgBT12.Top < FinalTop) and (imgP1.Left > imgBT12.Left - 30) and (imgP1.Left < imgBT12.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
end;

procedure TfrmTela2.TmFisicayTimer(Sender: TObject);
begin
  if (imgBT13.Top > 280) and (imgBT13.Top < FinalTop) and (imgP1.Left > imgBT13.Left - 30) and (imgP1.Left < imgBT13.Left + 30) then
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    BtCont.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT14.Top > 280) and (imgBT14.Top < FinalTop) and (imgP1.Left > imgBT14.Left - 30) and (imgP1.Left < imgBT14.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT15.Top > 280) and (imgBT15.Top < FinalTop) and (imgP1.Left > imgBT15.Left - 30) and (imgP1.Left < imgBT15.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT16.Top > 280) and (imgBT16.Top < FinalTop) and (imgP1.Left > imgBT16.Left - 30) and (imgP1.Left < imgBT16.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT17.Top > 280) and (imgBT17.Top < FinalTop) and (imgP1.Left > imgBT17.Left - 30) and (imgP1.Left < imgBT17.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
  if (imgBT18.Top > 280) and (imgBT18.Top < FinalTop) and (imgP1.Left > imgBT18.Left - 30) and (imgP1.Left < imgBT18.Left + 30) then
  begin
   TelaAtual := 'GameOver';
    frmMusicas.Mplayer.FileName := 'Musica/GameOver.mp3';
    frmMusicas.Mplayer.Open;
    frmMusicas.Mplayer.Play;
    TmBt1.Enabled := False;
    BtCont.Enabled := False;
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    frmGameOver.ShowModal;
    frmTela2.Close;
  end;
end;

procedure TfrmTela2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
  frmMusicas.Mplayer.FileName := 'Musica/Menu.mp3';
     frmMusicas.Mplayer.Open;
     frmMusicas.Mplayer.Play;
    frmApp.Show;
    frmTela2.Close;
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

procedure TfrmTela2.FormShow(Sender: TObject);
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
  imgBT13.Top := -84;
  imgBT14.Top := -84;
  imgBT15.Top := -84;
  imgBT16.Top := -84;
  imgBT17.Top := -84;
  imgBT18.Top := -84;
  TmVelocidade.Enabled := True;
  TmVelocidadex.Enabled := True;
  TmVelocidadey.Enabled := True;
  TmFisicay.Enabled := True;
  TmFisica.Enabled := True;
  TmFisicax.Enabled := True;
  BtCont.Enabled := True;
  DoubleBuffered := True;
  FinalLeft := 200;
  FinalTop := 320;
  VelocidadeP1 := 10;
  Bth := 1;
  Bthx := 6;
  Bthy := 3;
  BtPower := 0;
  Pontos := 0;
end;

procedure TfrmTela2.TmNextTimer(Sender: TObject);
begin
  if (Pontos = 101) then
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
    TmBt13.Enabled := False;
    TmBt14.Enabled := False;
    TmBt15.Enabled := False;
    TmBt16.Enabled := False;
    TmBt17.Enabled := False;
    TmBt18.Enabled := False;
    TmVelocidade.Enabled := False;
    TmVelocidadex.Enabled := False;
    TmVelocidadey.Enabled := False;
    TmFisicay.Enabled := False;
    TmFisica.Enabled := False;
    TmFisicax.Enabled := False;
    BtCont.Enabled := False;
    img1.Visible := True;
    lbl1.Visible := True;
    Label1.Visible := True;
    Label2.Visible := True;
    Label3.Visible :=  True;
    Label4.Visible :=  True;
  end;
end;

end.
