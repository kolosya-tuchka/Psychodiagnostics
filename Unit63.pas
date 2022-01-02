unit Unit63;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm63 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
   
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form63: TForm63;

implementation

uses Unit62, Unit27;

{$R *.dfm}

procedure TForm63.Button1Click(Sender: TObject);
begin
if (Edit1.Text='12345') then
begin

     form63.hide;
     Form62.show;
     Edit1.Clear;

     end
  else
  ShowMessage('Неверный логин или пароль.');
      Edit1.Clear;
  end;


procedure TForm63.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Clear;
Form27.visible:=true;
end;

end.
