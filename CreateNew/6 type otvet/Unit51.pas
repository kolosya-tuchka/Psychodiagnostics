unit Unit51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm51 = class(TForm)
   Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form51: TForm51;
  number:integer;

implementation

uses Unit29, Unit30, Unit49, Unit50, Unit32, Unit34, Unit2, Unit62;

{$R *.dfm}

procedure TForm51.Button2Click(Sender: TObject);
begin
Form62.show;
Form51.Close;
end;

procedure TForm51.Button3Click(Sender: TObject);
begin
Form51.hide;
Form50.Show;
end;

procedure TForm51.Button4Click(Sender: TObject);
begin

 If Edit1.Text='' then MessageBox(0, 'Введите количество баллов за первый ответ.','Не закончен ввод информации', MB_OK)
 Else
  begin

    If Edit2.Text='' then MessageBox(0, 'Введите количество баллов за второй ответ.','Не закончен ввод информации', MB_OK)
    Else
     begin
       try
       Form32.bals1[number]:=StrToInt(Edit1.Text);
        Form32.bals2[number]:=StrToInt(Edit2.Text);
   except
     on Exception : EConvertError do begin

       ShowMessage('ошибка ввода');
        exit;
        end;
     end;

Form32.bals3[number]:=0;
Form32.bals4[number]:=0;
Form32.bals5[number]:=0;
Edit1.Text:='';
Edit2.Text:='';
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

procedure TForm51.FormCreate(Sender: TObject);
begin
number:=1;
end;

procedure TForm51.Button1Click(Sender: TObject);
begin
Form51.hide;
Form34.show;

end;

procedure TForm51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
 