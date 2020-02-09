unit U_Musicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls;

type
  TfrmMusicas = class(TForm)
    Mplayer: TMediaPlayer;
    lblMusica: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMusicas: TfrmMusicas;
  TelaAtual : String;

implementation

{$R *.dfm}

end.
