unit Unit44;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm44 = class(TForm)
    Edit5: TEdit;
       Edit3: TEdit;
    Edit4: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form44: TForm44;

implementation

uses Unit34, Unit33, Unit30, Unit29, Unit45, Unit2, Unit62;

{$R *.dfm}

procedure TForm44.Button1Click(Sender: TObject);
begin

If RadioButton2.Checked=true then
 begin
    Form34.Type_obr:=2;
    Form44.hide;
    Form45.Show;
    
    end
Else
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

    If Edit5.Text='' then MessageBox(0, 'Введите количество баллов за пятый ответ.','Не закончен ввод информации', MB_OK)
   Else
    begin
      begin
             try
      Form34.GlobBal1:=StrToInt(Edit1.Text);
    Form34.GlobBal2:=StrToInt(Edit2.Text);
    Form34.GlobBal3:=StrToInt(Edit3.Text);
    Form34.GlobBal4:=StrToInt(Edit4.Text);
    Form34.GlobBal5:=StrToInt(Edit5.Text);
   except
     on Exception : EConvertError do begin

       ShowMessage('ошибка ввода');
        exit;
        end;
     end;


    Form34.Type_obr:=1;
    Form33.Label4.Caption:='(В Вашем тесте ' + IntToStr(Form34.GlobKolvo) + ' вопросов)';
    Form44.hide;
    Form33.Show;
 end;
 end;
 end;
 end;
 end;

 end;
 end;
end;

procedure TForm44.Button3Click(Sender: TObject);
begin
Form44.hide;;
Form30.Show;
end;

procedure TForm44.Button2Click(Sender: TObject);
begin
Form62.show;
Form44.Close;
end;

procedure TForm44.RadioButton2Click(Sender: TObject);
begin
label6.Enabled:=true;
label7.Enabled:=true;
label9.Enabled:=true;
label10.Enabled:=true;

label1.Enabled:=false;
label11.Enabled:=false;
label12.Enabled:=false;
label13.Enabled:=false;
label14.Enabled:=false;
label3.Enabled:=false;
label4.Enabled:=false;
label5.Enabled:=false;
label8.Enabled:=false;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
Edit3.Enabled:=false;
Edit4.Enabled:=false;
Edit5.Enabled:=false;

end;

procedure TForm44.RadioButton1Click(Sender: TObject);
begin
label1.Enabled:=true;
label11.Enabled:=true;
label13.Enabled:=true;
label14.Enabled:=true;
label12.Enabled:=true;
label3.Enabled:=true;
label4.Enabled:=true;
label5.Enabled:=true;
label6.Enabled:=true;
label8.Enabled:=true;
Edit1.Enabled:=true;
Edit2.Enabled:=true;
Edit3.Enabled:=true;
Edit4.Enabled:=true;
Edit5.Enabled:=true;

label6.Enabled:=false;
label7.Enabled:=false;
label9.Enabled:=false;
label10.Enabled:=false;

end;


procedure TForm44.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
 