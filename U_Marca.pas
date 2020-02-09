unit U_Marca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TfrmApp = class(TForm)
    Image1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Label4: TLabel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    image3: TImage;
    lblbeta: TLabel;
    lblbeta2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure image3Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure lbl1Click(Sender: TObject);
    procedure lbl2Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApp: TfrmApp;

implementation

uses U_Menu, U_Eng, U_Moes, U_Tela2, U_App, U_Musicas;

{$R *.dfm}

procedure TfrmApp.FormShow(Sender: TObject);
begin
   if (Pontos1 > 50) then
   begin
      img1.Enabled := True;
      lbl1.Enabled := True;
   end;
   if (Pontos > 100) then
   begin
      img2.Enabled := True;
      lbl2.Enabled := True;
   end;
end;

procedure TfrmApp.Label4Click(Sender: TObject);
begin
  TelaAtual := 'Tela1';
  //frmMusicas.Mplayer.FileName := 'Musica/Tela1.mp3';
  //frmMusicas.Mplayer.Open;
  //frmMusicas.Mplayer.Play;
  frmTela1.Show;
  frmApp.Close;
end;

procedure TfrmApp.image3Click(Sender: TObject);
begin
  TelaAtual := 'Tela1';
  frmMusicas.Mplayer.FileName := 'Musica/Tela1.mp3';
  frmMusicas.Mplayer.Open;
  frmMusicas.Mplayer.Play;
  frmTela1.Show;
  frmApp.Close;
end;

procedure TfrmApp.img1Click(Sender: TObject);
begin
  TelaAtual := 'Tela2';
  frmMusicas.Mplayer.FileName := 'Musica/Tela2.mp3';
  frmMusicas.Mplayer.Open;
  frmMusicas.Mplayer.Play;
  frmTela2.Show;
  frmApp.Close;
end;

procedure TfrmApp.lbl1Click(Sender: TObject);
begin
  TelaAtual := 'Tela2';
  frmMusicas.Mplayer.FileName := 'Musica/Tela2.mp3';
  frmMusicas.Mplayer.Open;
  frmMusicas.Mplayer.Play;
  frmTela2.Show;
  frmApp.Close;
end;

procedure TfrmApp.lbl2Click(Sender: TObject);
begin
  lblbeta.Visible := True;
  lblbeta2.Visible := True;
end;

procedure TfrmApp.img2Click(Sender: TObject);
begin
  lblbeta.Visible := True;
  lblbeta2.Visible := True;
end;

procedure TfrmApp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
  lblbeta.Visible := False;
  lblbeta2.Visible := False;
  end;
end;

end.
