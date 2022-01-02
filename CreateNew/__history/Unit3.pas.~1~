unit Unit3;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Data.Win.ADODB, StdCtrls, ExtDlgs, ExtCtrls,JPEG;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button2: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit27, Unit7, Unit24, Unit11, Unit14, Unit16, Unit18, Unit25,
  Unit22, Unit26, Unit64,Unit35;

{$R *.dfm}
procedure TForm3.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
   try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM People');
    ADOQuery1.Active:=True;
    except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
end;

procedure TForm3.Button1Click(Sender: TObject);

begin
if ((Edit1.text<>'')and(Edit2.text<>'')and(Edit3.Text<>'')and(Edit4.Text<>''))
    then
 try  ADOQuery1.Active:=True;
  ADOQuery1.Insert;
  ADOQuery1.FieldByName('Familia').AsString:=Edit1.Text;
  ADOQuery1.FieldByName('Imi').AsString:=Edit2.Text;
  ADOQuery1.FieldByName('Passw').AsString:=Edit3.Text;
  ADOQuery1.FieldByName('Old').AsString:=Edit4.Text;
  ADOQuery1.FieldByName('Pol').AsInteger:=RadioGroup1.ItemIndex;
  ADOQuery1.Active:=True;
  ADOQuery1.Post;
  Form2.Label3.Caption:= Edit1.Text + ' ' + Edit2.Text;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Application.MessageBox('Вы успешно зарегистрированны','Поздравляем');
  
  Form3.Hide;
  Form2.Show;
  except
   on e:Exception do
   Application.MessageBox('Программа запущена не под администратором','Ошибка');
    end
    else
Application.MessageBox('Проверьте правильность введеных данных, все поля долны быть заполнены','Ошибка');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form27.visible:=true;
Form3.Close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form27.visible:=true;

end;

procedure TForm3.Button3Click(Sender: TObject);
var all:integer;
begin
all:=0;

 end;
end.
