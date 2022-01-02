unit Unit32;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm32 = class(TForm)
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
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public    bals1: Array[1..200] of integer;
            bals2: Array[1..200] of integer;
            bals3: Array[1..200] of integer;
            bals4: Array[1..200] of integer;
            bals5: Array[1..200] of integer;
    { Public declarations }
  end;

var
  Form32: TForm32;

  number:integer;

implementation

uses Unit31, Unit30, Unit29, Unit33, Unit34, Unit35, Unit2, Unit62;

{$R *.dfm}

procedure TForm32.Button2Click(Sender: TObject);
begin
Form62.show;
Form32.Close;
end;

procedure TForm32.Button4Click(Sender: TObject);
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
        Form32.bals3[number]:=0;
        Form32.bals4[number]:=0;
        Form32.bals5[number]:=0;
   except
     on Exception : EConvertError do begin

       ShowMessage('ошибка ввода');
        exit;
        end;
     end;

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

procedure TForm32.FormCreate(Sender: TObject);
begin
number:=1;
end;

procedure TForm32.Button1Click(Sender: TObject);
begin
   Form32.hide;
   Form33.Show;
   end;

procedure TForm32.Button3Click(Sender: TObject);
begin
Form32.hide;
Form31.Show;
end;

procedure TForm32.FormShow(Sender: TObject);
begin
 number:=1;
end;

procedure TForm32.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
 