unit U_Eng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TfrmEng = class(TForm)
    Image1: TImage;
    Tm2: TTimer;
    procedure Tm2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEng: TfrmEng;
  Conte : Integer;

implementation

uses U_Marca, U_Menu, U_Musicas;

{$R *.dfm}

procedure TfrmEng.Tm2Timer(Sender: TObject);
begin
   Conte := Conte + 1;
   if (Conte = 3) then
   begin
    TelaAtual := 'Menu';
     frmMusicas.Mplayer.FileName := 'Musica/Menu.mp3';
     frmMusicas.Mplayer.Open;
     frmMusicas.Mplayer.Play;
     frmMenu.Show;
     frmEng.Close;
     Tm2.Enabled := False;
   end;
end;

procedure TfrmEng.FormShow(Sender: TObject);
begin
  Conte := 0;
end;

end.
