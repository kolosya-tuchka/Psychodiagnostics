unit Unit31;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm31 = class(TForm)
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
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form31: TForm31;

implementation

uses Unit30, Unit32, Unit29, Unit33, Unit34, Unit35, StartTest, Unit62;

{$R *.dfm}

procedure TForm31.Button3Click(Sender: TObject);
begin
Form31.hide;
Form30.Show;
end;

procedure TForm31.RadioButton1Click(Sender: TObject);
begin
label1.Enabled:=true;
label3.Enabled:=true;
label4.Enabled:=true;
label5.Enabled:=true;
label6.Enabled:=true;
label8.Enabled:=true;
Edit1.Enabled:=true;
Edit2.Enabled:=true;

label6.Enabled:=false;
label7.Enabled:=false;
label9.Enabled:=false;
label10.Enabled:=false;
end;

procedure TForm31.RadioButton2Click(Sender: TObject);
begin
label6.Enabled:=true;
label7.Enabled:=true;
label9.Enabled:=true;
label10.Enabled:=true;

label1.Enabled:=false;
label3.Enabled:=false;
label4.Enabled:=false;
label5.Enabled:=false;
label8.Enabled:=false;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
end;

procedure TForm31.Button1Click(Sender: TObject);
begin
      If RadioButton2.Checked=true then
       begin
        Form34.Type_obr:=2;
        Form31.hide;
        Form32.Show;
        
       end
      Else
       begin

 If Edit1.Text='' then MessageBox(0, '������� ���������� ������ �� ������ �����.','�� �������� ���� ����������', MB_OK)
 Else
  begin

    If Edit2.Text='' then MessageBox(0, '������� ���������� ������ �� ������ �����.','�� �������� ���� ����������', MB_OK)
    Else
     begin
   try
      Form34.GlobBal1:=StrToInt(Edit1.Text);
      Form34.GlobBal2:=StrToInt(Edit2.Text);
   except
     on Exception : EConvertError do begin

       ShowMessage('������ �����');
        exit;
        end;
     end;
         Form34.GlobBal3:=0;
        Form34.Type_obr:=1;
        Form31.hide;
        Form33.Show;
       end;
       end;

  end;
end;

procedure TForm31.Button2Click(Sender: TObject);
begin
Form62.show;
Form31.close;
end;



procedure TForm31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
