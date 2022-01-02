unit Unit4;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
 
  private
    { Private declarations }
  public
    { Public declarations }
     kol:integer;
    
  end;

var
  Form4: TForm4;

implementation

uses Unit34, Unit46, Unit30;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);

begin
       try
      kol:=strtoint(Edit1.Text);
   except
     on Exception : EConvertError do begin

       ShowMessage('ошибка ввода');
        exit;
        end;
     end;

  Form34.GlobKol_otvet:=kol;
  Form4.hide;
  Form46._kol:=kol;
   Form46.CreateDynamics;
  Form46.show;

end;




procedure TForm4.Button2Click(Sender: TObject);
begin
close;
end;


end.
