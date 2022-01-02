unit Unit25;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm25 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Button4: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    SaveDialog1: TSaveDialog;
    Label7: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    massiv: array [1..60] of integer;
    s:string;
    Id:integer;
  end;


var
  Form25: TForm25;

implementation

uses Unit2, Unit8, Unit7, Unit62, Unit27,Unit35;

{$R *.dfm}

procedure TForm25.Button1Click(Sender: TObject);
begin
Form2.show;
Form25.close;
end;

procedure TForm25.Button4Click(Sender: TObject);
var
 Word: variant;
 Doc: variant;
 S: variant;
 z,count:integer;
begin
  try
    Word := CreateOleObject('Word.Application');
    Doc:=Word.Documents.Add;
  except
    ShowMessage('Не удается создать документ Microsoft Word');
  end;
Word.Visible := True;
S:=Word.Selection;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(Form25.label4.caption);
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
S.TypeText(Form25.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Описание: ');
S.Font.Bold := 0;
S.TypeText(Form25.Label1.Caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 0;
count:=Memo1.Lines.Count;
for z:=0 to count do
  begin
    S.TypeText(' '+ Memo1.Lines[z]);
  end;
end;


procedure TForm25.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;

end;
end;

procedure TForm25.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
squery:string;
begin
if (s='') then
begin
for i:=1 to 60 do
    begin
    s:=s + intTostr(massiv[i])+ ',';
    end;
  Delete(s,length(s),length(s));
end;
       ADOQuery1.Close;
       ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Result where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=6';
       ADOQuery1.SQL.Text:= squery;
       ADOQuery1.open;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='6';
         ADOQuery1.FieldByName('Resultat').AsString:=Memo1.Lines.Text;
         ADOQuery1.FieldByName('Result_Data').AsString:=Label3.Caption;
         ADOQuery1.FieldByName('Name_Test').AsString:='Ваше поведение в группе.';
         ADOQuery1.FieldByName('Choice').AsString:=s;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;
       end
       else begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Memo1.Lines.Text) + ',Result_Data=' + QuotedStr(Label3.Caption) + ',Choice=' + QuotedStr(s) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=6';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
         end;
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('SELECT Name_test FROM Test_app where Name_test="Ваше поведение в группе."');
         ADOQuery1.open;
         ADOQuery1.First;
         if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('Name_Test').AsString:='Ваше поведение в группе.';
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

end.
