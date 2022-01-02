unit Unit40;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm40 = class(TForm)
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
    Edit3: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form40: TForm40;

implementation

uses Unit29, Unit30, Unit34, Unit32, Unit33, Unit41, Unit2, Unit62;

{$R *.dfm}

procedure TForm40.Button1Click(Sender: TObject);
begin
     If RadioButton2.Checked=true then
       begin
         Form34.Type_obr:=2;
         Form40.hide;
         Form41.Show;
         
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
                      try
       Form34.GlobBal1:=StrToInt(Edit1.Text);
         Form34.GlobBal2:=StrToInt(Edit2.Text);
         Form34.GlobBal3:=StrToInt(Edit3.Text);
   except
     on Exception : EConvertError do begin

       ShowMessage('ошибка ввода');
        exit;
        end;
     end;

         Form34.Type_obr:=1;
         Form33.Label4.Caption:='(В Вашем тесте ' + IntToStr(Form34.GlobKolvo) + ' вопросов)';
         Form40.hide;
         Form33.Show;
        end;
      end;
    end;

   end;
end;

procedure TForm40.Button3Click(Sender: TObject);
begin
Form40.hide;
Form30.Show;
end;

procedure TForm40.Button2Click(Sender: TObject);
begin
Form62.show;
Form40.Close;
end;

procedure TForm40.RadioButton1Click(Sender: TObject);
begin
label1.Enabled:=true;
label11.Enabled:=true;
label12.Enabled:=true;
label3.Enabled:=true;
label4.Enabled:=true;
label5.Enabled:=true;
label6.Enabled:=true;
label8.Enabled:=true;
Edit1.Enabled:=true;
Edit2.Enabled:=true;
Edit3.Enabled:=true;

label6.Enabled:=false;
label7.Enabled:=false;
label9.Enabled:=false;
label10.Enabled:=false;
end;

procedure TForm40.RadioButton2Click(Sender: TObject);
begin
label6.Enabled:=true;
label7.Enabled:=true;
label9.Enabled:=true;
label10.Enabled:=true;

label1.Enabled:=false;
label11.Enabled:=false;
label12.Enabled:=false;
label3.Enabled:=false;
label4.Enabled:=false;
label5.Enabled:=false;
label8.Enabled:=false;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
Edit3.Enabled:=false;
end;

procedure TForm40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;



end.
 