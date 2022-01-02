unit SelectCourse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm83 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ScrollBox1: TScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   course: integer;
    { Public declarations }
  end;

var
  sctCourse: TForm83;

implementation

{$R *.dfm}

uses Unit78, Unit38, Unit28, Unit35, sectionsTest, TestQueue;

procedure TForm83.Button1Click(Sender: TObject);
begin
Form78.show;
Close;
end;

procedure TForm83.Button2Click(sender: TObject);
begin
 course := (Sender as TButton).Tag;
 hide;
 if (TestsQueue <> nil) then freeandnil(TestsQueue);
 TestsQueue :=TForm84.Create(nil);
 TestsQueue.Show;

 if (sectionsTests <> nil) then freeandnil(sectionsTests);
 sectionsTests :=TForm81.Create(nil);
 sectionsTests.Label3.Caption:=Label3.Caption;
 sectionsTests.Show;
end;

procedure TForm83.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form78.Show;
end;

procedure TForm83.FormCreate(Sender: TObject);
var
  k: Integer;
  b: TButton;
begin
   Panel1.Color:= Form28.Color;
   try
   MyModule.ADOQuery2.SQL.Clear;
    MyModule.ADOQuery2.SQL.Add('SELECT * FROM Courses');
    MyModule.ADOQuery2.Active:=True;
    k:=0;

    MyModule.ADOQuery2.First;

    while not MyModule.ADOQuery2.Eof do
    begin

      k := k + 1;
      b:=TButton.Create(Self);
      b.Parent:=ScrollBox1;
       b.Font.Size:=12;
       b.Font.Style:=[fsBold];
       b.Font.Name:='Times New Roman';
      b.Left:= ScrollBox1.Width div 9;
      b.Height:=28;
      b.Top:=0+k*b.Height;
      b.Font.Size:=14;

      b.Width := 7 * ScrollBox1.Width div 9;
      b.Caption:=MyModule.ADOQuery2.FieldByName('CourseTitle').AsString;
      b.OnClick:=Button2Click;
      b.Tag := MyModule.ADOQuery2.FieldByName('Course_ID').AsInteger;
      b.Visible := true;

      //b.Hint := MyModule.ADOQuery2.FieldByName('Opis').AsString;

     MyModule.ADOQuery2.Next;

    end;

except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;

end;

procedure TForm83.FormShow(Sender: TObject);
begin
  if (TestsQueue <> nil) then TestsQueue.Close;
end;

end.
