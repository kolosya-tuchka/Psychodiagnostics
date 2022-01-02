unit Unit47;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm47 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
    balls:array of array of integer;
  end;

var
  Form47: TForm47;

implementation

uses Unit46, Unit1, Unit29, Unit30, Unit34, Unit48, Unit33, Unit2, Unit62;

{$R *.dfm}

procedure TForm47.Button2Click(Sender: TObject);
begin
Form62.show;
Form47.Close;
end;

procedure TForm47.Button3Click(Sender: TObject);
begin
Form47.hide;
Form46.Show;
end;

procedure TForm47.Button1Click(Sender: TObject);
var
i,j:integer;

begin
 Form47.hide;

 begin
   Form48:=nil;
   try
     Form48:=TForm48.Create(nil);
     if Form34.Type_otvet = 5 then
     Form34.Type_obr:=1
     else
     Form34.Type_obr:=2;
     Form48.ShowModal;
  SetLength(balls, Length(Form48.balls), Length(Form48.balls[0]));
  For i:=0 to  Length(Form48.balls)-1 do
    for j:=0 to Length(Form48.balls[0])-1 do
        balls[i,j]:=Form48.balls[i,j];
   finally

     FreeAndNil(Form48);
   end;


 end;
 end;





procedure TForm47.RadioButton1Click(Sender: TObject);
begin

label6.Enabled:=true;





label6.Enabled:=false;
label7.Enabled:=false;
label9.Enabled:=false;
label10.Enabled:=false;
end;

procedure TForm47.RadioButton2Click(Sender: TObject);
begin
label6.Enabled:=true;
label7.Enabled:=true;
label9.Enabled:=true;
label10.Enabled:=true;
  
end;

procedure TForm47.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
 