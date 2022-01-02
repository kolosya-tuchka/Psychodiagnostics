unit CreateCourse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm82 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mode, course : string;
  end;

var
  CrCourse: TForm82;

implementation

{$R *.dfm}

uses Unit30, Unit62, Unit35, Unit34, SelectSection;

procedure TForm82.Button1Click(Sender: TObject);
var id: Integer;
begin
  form34.section := edit1.Text;
  course := edit1.Text;
  with MyModule.ADOQuery2 do begin
    SQL.Clear;
    Sql.Add('SELECT MAX(Course_ID) AS maxid FROM Courses');
    Open;
    id := FieldByName('maxid').AsInteger + 1;
    SQL.Clear;
    SQL.Add('Select * from Courses Where CourseTitle =:' + course);
    Open;
    First;
    if eof then  begin
      SQL.Clear;
      SQL.Add('Select * from Courses');
      open;
      Insert;
      FieldByName('CourseTitle').AsString := course;
      FieldByName('Course_ID').AsInteger := id;
      Active:=True;
      Post;

    end
    else begin
    MessageBox(Handle, 'Ошибка','Этот раздел уже существует', MB_OK);
    end;

  end;
  edit1.Clear;
  Close;

end;

procedure TForm82.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm82.Edit1Change(Sender: TObject);
begin
button1.Enabled := edit1.Text <> '';

end;

procedure TForm82.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if mode = 'constructor' then begin
  sectionSelection.Show;
end
else if mode = 'section' then begin
  form62.show;
end;
end;

procedure TForm82.FormShow(Sender: TObject);
begin
button1.Enabled := false;
edit1.Text := '';
end;

end.
