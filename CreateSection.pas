unit CreateSection;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Data.Win.ADODB, StdCtrls;

type
  TForm79 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mode, section : string;
    courseid: integer;
  end;

var
  sections: TForm79;

implementation

{$R *.dfm}

uses Unit30, Unit62, Unit35, Unit34, SelectSection, Unit27;

procedure TForm79.Button1Click(Sender: TObject);
var id: Integer;
begin
  form34.section := edit1.Text;
  section := edit1.Text;
  with MyModule.ADOQuery2 do begin
    SQL.Clear;
    Sql.Add('SELECT MAX(Section_ID) AS maxid FROM Sections');
    Open;
    id := FieldByName('maxid').AsInteger + 1;
    SQL.Clear;
    SQL.Add('Select * from Sections Where Sections.SectionTitle =:' + section);
    Open;
    First;
    if eof then  begin
      SQL.Clear;
      SQL.Add('Select * from Sections');
      open;
      Insert;
      FieldByName('SectionTitle').AsString := section;
      FieldByName('Section_ID').AsInteger := id;
      FieldByName('Course_ID').AsInteger := courseid;
      Active:=True;
      Post;

      sections.Close;
    end
    else begin
    MessageBox(Handle, 'Ошибка','Этот раздел уже существует', MB_OK);
    end;

  end;

end;

procedure TForm79.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm79.ComboBox2Change(Sender: TObject);
var course: string;
begin
button1.Enabled := (edit1.Text <> '') and (combobox2.Text <> '');
course := combobox2.Text;
  with MyModule.ADOQuery2 do begin
    SQL.Clear;
    SQL.Add('Select Course_ID From Courses Where CourseTitle =:course');
    Parameters.ParamByName('course').Value := course;
    Open;
    courseid := FieldByName('Course_ID').AsInteger;
  end;
end;

procedure TForm79.Edit1Change(Sender: TObject);
begin
button1.Enabled := (edit1.Text <> '') and (combobox2.Text <> '');
end;

procedure TForm79.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if mode = 'constructor' then begin
  sectionSelection.Show;
end
else if mode = 'section' then begin
  form62.show;
end;
end;

procedure TForm79.FormShow(Sender: TObject);
begin
button1.Enabled := false;
edit1.Text := '';
combobox2.Clear;

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
