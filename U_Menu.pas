unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TfrmMenu = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses U_Moes, U_App, U_Marca;

{$R *.dfm}

procedure TfrmMenu.Label3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenu.Label2Click(Sender: TObject);
begin
  frmApp.ShowModal;
end;

end.
