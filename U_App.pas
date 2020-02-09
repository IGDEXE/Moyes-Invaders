unit U_App;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TfrmAppT = class(TForm)
    Tm: TTimer;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure TmTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAppT: TfrmAppT;
  Cont : Integer;

implementation

uses U_Eng, U_Marca;

{$R *.dfm}

procedure TfrmAppT.TmTimer(Sender: TObject);
begin
   Cont := Cont + 1;
   if (Cont = 3) then
   begin
     frmEng.Show;
     frmAppT.Hide;
     Tm.Enabled := False;
   end;
end;

end.
