unit SelectSection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm80 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    section, course: string;
  end;

var
  sectionSelection: TForm80;

implementation

{$R *.dfm}

uses Unit35, Unit27, Unit62, Unit30, CreateSection, Unit34, CreateCourse;

procedure TForm80.Button1Click(Sender: TObject);
begin
  hide;
  Form30.Show;
end;

procedure TForm80.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm80.Button3Click(Sender: TObject);
begin
  sections.mode := 'constructor';
  visible := false;
  sections.Show;
end;

procedure TForm80.Button4Click(Sender: TObject);
begin
  CrCourse.mode := 'constructor';
  visible := false;
  CrCourse.Show;
end;

procedure TForm80.ComboBox1Change(Sender: TObject);
begin
section := combobox1.Text;
form34.section := section;
button1.Enabled := true;
end;

procedure TForm80.ComboBox2Change(Sender: TObject);
begin
Combobox1.Clear;
course := combobox2.Text;
form34.course := course;

MyModule.ADOQuery2.SQL.Clear;
if not MyModule.ADOConnection2.Connected then
 begin
MyModule.ADOConnection2.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection2.Connected:=true;
end;
 with MyModule do begin
 try
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM Sections, Courses WHERE CourseTitle=:course AND Sections.Course_ID = Courses.Course_ID');
    ADOQuery2.Parameters.ParamByName('course').Value := course;
    ADOQuery2.Open;
    ADOQuery2.First;
    ADOQuery2.Active := true;

while not ADOQuery2.Eof do
    begin
    ComboBox1.Items.Add(ADOQuery2.FieldByName('SectionTitle').AsString);
    ADOQuery2.Next;
 end;

except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
end;

end;

procedure TForm80.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form62.show;
end;

procedure TForm80.FormShow(Sender: TObject);
begin
button1.Enabled := false;

ComboBox1.Clear;
ComboBox2.Clear;
MyModule.ADOQuery2.SQL.Clear;
if not MyModule.ADOConnection2.Connected then
 begin
MyModule.ADOConnection2.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection2.Connected:=true;
end;
 with MyModule do begin
 try
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM Courses');
    ADOQuery2.Open;

while not ADOQuery2.Eof do
    begin
    ComboBox2.Items.Add(ADOQuery2.FieldByName('CourseTitle').AsString);
    ADOQuery2.Next;
 end;

except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
end;
end;

end.
