unit Unit43;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm43 = class(TForm)
    Label7: TLabel;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form43: TForm43;
  number:integer;

implementation

uses Unit32, Unit33, Unit42, Unit30, Unit29, Unit34, Unit2, Unit62;

{$R *.dfm}

procedure TForm43.Button4Click(Sender: TObject);
begin
If Edit1.Text='' then MessageBox(0, 'Введите количество баллов за первый ответ.','Не закончен ввод информации', MB_OK)
 Else
  begin

  If Edit2.Text='' then MessageBox(0, 'Введите количество баллов за второй ответ.','Не закончен ввод информации', MB_OK)
  Else
   begin

   If Edit3.Text='' then MessageBox(0, 'Введите количество баллов за третий ответ.','Не закончен ввод информации', MB_OK)
   Else
    begin

  If Edit4.Text='' then MessageBox(0, 'Введите количество баллов за четвертый ответ.','Не закончен ввод информации', MB_OK)
   Else
    begin
                  try
    Form32.bals1[number]:=StrToInt(Edit1.Text);
Form32.bals2[number]:=StrToInt(Edit2.Text);
Form32.bals3[number]:=StrToInt(Edit3.Text);
Form32.bals4[number]:=StrToInt(Edit4.Text);
Form32.bals5[number]:=0;
   except
     on Exception : EConvertError do begin

       ShowMessage('ошибка ввода');
        exit;
        end;
     end;


Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
If number<Form34.GlobKolvo then
 begin
   number:=number+1;
   label3.Caption:=IntToStr(number);
 end
else
 begin
    button4.Enabled:=false;
    button1.Enabled:=true;
 end;

end;
end;
end;
end;

end;

procedure TForm43.Button1Click(Sender: TObject);
begin
   Form33.Label4.Caption:='(В Вашем тесте ' + IntToStr(Form34.GlobKolvo) + ' вопросов)';
   Form43.hide;
   Form33.Show;
   
end;

procedure TForm43.Button2Click(Sender: TObject);
begin
Form62.show;
Form43.Close;
end;

procedure TForm43.FormCreate(Sender: TObject);
begin
number:=1;
end;

procedure TForm43.Button3Click(Sender: TObject);
begin
Form43.hide;;
Form42.Show;
end;

procedure TForm43.FormShow(Sender: TObject);
begin
number:=1;
end;

procedure TForm43.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
 