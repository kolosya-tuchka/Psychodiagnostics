unit Unit11;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm11 = class(TForm)
    Edit3: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    Button4: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    Label5: TLabel;
    Label7: TLabel;
    Memo2: TMemo;
    Label8: TLabel;
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label1DblClick(Sender: TObject);
    procedure Label2DblClick(Sender: TObject);
    procedure Label3DblClick(Sender: TObject);
    procedure Label4DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
    massiv: array [1..101] of integer;
    Id:integer;
    s:string;
  end;

var
  Form11: TForm11;
  res :String;

implementation

uses Unit10, Unit2, Unit18, Unit35, Unit8, Unit62, Unit7, Unit27;

{$R *.dfm}

procedure TForm11.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TLabel).Font.Color:=clBlue;
end;

procedure TForm11.Label2MouseLeave(Sender: TObject);
begin
(Sender As TLabel).Font.Color:=clWindowText;
end;

procedure TForm11.Label2DblClick(Sender: TObject);
begin
Memo1.lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\psyho.txt');  //про психотизм
end;

procedure TForm11.Label1DblClick(Sender: TObject);
begin
Memo1.lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\extra.txt');  //про экстраверсию
end;

procedure TForm11.Label3DblClick(Sender: TObject);
begin
Memo1.lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\neyro.txt');  //про нейротизм
end;

procedure TForm11.Label4DblClick(Sender: TObject);
begin
Memo1.lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\iskreno.txt');  //про честность
end;

procedure TForm11.Button1Click(Sender: TObject);
begin
res:=Memo1.Text;
Memo1.lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\all.txt');  //про все
Button1.Enabled:=False;
Button3.Enabled:=False;
Button2.Enabled:=True;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
Button1.Enabled:=True;
Button2.Enabled:=False;
Button3.Enabled:=True;
Memo1.Lines.Text:=res;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
Form2.show;
Form11.Close;
end;


procedure TForm11.Button4Click(Sender: TObject);
var
  i,z,count:integer;
  Word: variant;
  Doc: variant;
  S: variant;

begin
  try
    Word := CreateOleObject('Word.Application');
    //Doc:=Word.Documents.Add;
    Doc:=Word.Documents.Open;
  except
    ShowMessage('Не удается создать документ Microsoft Word');
  end;
Word.Visible := True;
S:=Word.Selection;
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(Label6.Caption);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(Form11.label5.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 0;
S.TypeText(Memo2.Lines[0]);
count:= Memo2.Lines.Count;
for i:=1 to 4 do
  begin
  S.TypeParagraph;
  S.TypeText(Memo2.Lines[i]);
  end;
for z:=4 to count do
  begin
    S.TypeText(' '+ Memo2.Lines[z]);
  end;
end;



procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
e: TEdit;
squery:string;
begin
if (s='') then
begin
  for i:=1 to 101 do
    begin
    s:=s + intTostr(massiv[i])+ ',';
    end;
  Delete(s,length(s),length(s));
end; 
res:=Memo1.Lines.Text;
 ADOQuery1.Close;
       ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Result where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=2';
       ADOQuery1.SQL.Text:= squery;
       ADOQuery1.open;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='2';
         ADOQuery1.FieldByName('Resultat').AsString:=Memo1.Lines.Text;
         ADOQuery1.FieldByName('Result_Data').AsString:=Label5.Caption;
         ADOQuery1.FieldByName('Name_Test').AsString:='Флегматик, меланхолик, холерик, сангвиник - кто вы?';
         ADOQuery1.FieldByName('Choice').AsString:= s;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;

         for i:=1 to 4 do
         begin
            ADOQuery1.Insert;
            ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            ADOQuery1.FieldByName('N_testa').AsString:='2' +inttostr(i);
            e:=(FindComponent('Edit'+IntToStr(i)) as TEdit);
            ADOQuery1.FieldByName('Resultat').AsString:=e.Text;
            ADOQuery1.Active:=True;
            ADOQuery1.Post;
         end;

       end
       else begin

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Memo1.Lines.Text) + ',Result_Data=' + QuotedStr(Label5.Caption) + ',Choice=' + QuotedStr(s) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=2';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
        for i:=1 to 4 do
         begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         e:=(FindComponent('Edit'+IntToStr(i)) as TEdit);
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(e.Text) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=2' + inttostr(i);
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
         end;

        end;
        s:='';
        ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('SELECT Name_test FROM Test_app where Name_test="Флегматик, меланхолик, холерик, сангвиник - кто вы?"');
         ADOQuery1.open;
         ADOQuery1.First;
         if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('Name_Test').AsString:='Флегматик, меланхолик, холерик, сангвиник - кто вы?';
         ADOQuery1.Active:=True;
         ADOQuery1.Post;
         end;
         if Form7.button_select = 0 then
Form2.show
else
begin
Form62.show;
end;



end;


procedure TForm11.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
end;

end.
