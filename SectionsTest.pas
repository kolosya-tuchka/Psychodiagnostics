unit SectionsTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm81 = class(TForm)
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    course, section: integer;
  end;

var
  sectionsTests: TForm81;

implementation

{$R *.dfm}

uses Unit78, Unit38, Unit28, Unit35, SelectCourse;

procedure TForm81.Button1Click(Sender: TObject);
begin
Form78.Show;
hide;
end;

procedure TForm81.Button2Click(sender: TObject);
begin
 section := (sender as TButton).tag;
 hide;
 if (Form38 <> nil) then freeandnil(Form38);
 Form38 :=TForm38.Create(nil);
 Form38.Label3.Caption:=Label3.Caption;
 Form38.Show;
end;

procedure TForm81.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form78.Show;
end;

procedure TForm81.FormCreate(Sender: TObject);
var
  k: Integer;
  b: TButton;
begin
   course := sctCourse.course;
   Panel1.Color:= Form28.Color;
   try
   MyModule.ADOQuery2.SQL.Clear;
    MyModule.ADOQuery2.SQL.Add('SELECT * FROM Sections Where Course_ID =' + IntToStr(course));
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
      b.Caption:=MyModule.ADOQuery2.FieldByName('SectionTitle').AsString;
      b.OnClick:=Button2Click;
      b.Tag := MyModule.ADOQuery2.FieldByName('Section_ID').AsInteger;
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

end.
