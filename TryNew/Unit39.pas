unit Unit39;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, System.Win.ComObj;

type
  TForm39 = class(TForm)
    Button1: TButton;
    Label2: TLabel;
    Memo1: TMemo;
    Label1: TLabel;
    Label3: TLabel;
    Button4: TButton;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    SaveDialog1: TSaveDialog;
    Label6: TLabel;
    ScoreLabel: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

     private
    { Private declarations }
  public
    numeretic,kolvo_vopros, score:Integer;
    massiv: array  of integer;
    isAdmin: boolean;

    s:string;
    { Public declarations }
  end;

var
  Form39: TForm39;

implementation

uses Unit37, Unit36, StartTest, Unit38,Unit35,Unit8, Unit7, Unit62, Unit27,
  Unit78, TestQueue;

{$R *.dfm}

procedure TForm39.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm39.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
squery:string;
begin
if (not isAdmin) then begin

if (s='') then
begin
  for i:=1 to kolvo_vopros do
    begin
    s:=s + intTostr(massiv[i-1])+ ',';
    end;
  Delete(s,length(s),length(s));
       MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM BestResults where N_vlast=' + inttostr(Form8.id_vlast)+ ' AND N_testa=' + inttostr(numeretic);
       MyModule.ADOQuery1.SQL.Text:= squery;
       MyModule.ADOQuery1.open;
       if (MyModule.ADOQuery1.RecordCount = 0) then begin
         MyModule.ADOQuery1.Insert;
         MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         MyModule.ADOQuery1.FieldByName('N_testa').AsString:=inttostr(numeretic);
         MyModule.ADOQuery1.FieldByName('Resultat').AsString:=Memo1.Lines.Text;
         MyModule.ADOQuery1.FieldByName('Result_Data').AsString:=Label5.Caption;
         MyModule.ADOQuery1.FieldByName('Choice').Value :=s;
         MyModule.ADOQuery1.FieldByName('Score').AsInteger := score;
         MyModule.ADOQuery1.FieldByName('Name_Test').AsString := Label2.Caption;
         MyModule.ADOQuery1.Active:=True;
         MyModule.ADOQuery1.Post;
       end


       else if (score > MyModule.ADOQuery1.FieldByName('Score').AsInteger) then begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE BestResults SET Resultat=' + QuotedStr(Memo1.Lines.Text) + ',Result_Data=' + QuotedStr(Label5.Caption) + ',Choice=' + QuotedStr(s) + ',Score=' + IntToStr(score) + ' where N_vlast='+ inttostr(Form8.id_vlast)+ ' AND N_testa=' + inttostr(numeretic);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;


       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Result where N_vlast=' + inttostr(Form8.id_vlast)+ ' AND N_testa=' + inttostr(numeretic);
       MyModule.ADOQuery1.SQL.Text:= squery;
       MyModule.ADOQuery1.open;
       MyModule.ADOQuery1.Insert;
       MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
       MyModule.ADOQuery1.FieldByName('N_testa').AsString:=inttostr(numeretic);
       MyModule.ADOQuery1.FieldByName('Resultat').AsString:=Memo1.Lines.Text;
       MyModule.ADOQuery1.FieldByName('Result_Data').AsString:=Label5.Caption;
       MyModule.ADOQuery1.FieldByName('Choice').Value :=s;
       MyModule.ADOQuery1.FieldByName('Score').AsInteger := score;
       MyModule.ADOQuery1.FieldByName('Name_Test').AsString := Label2.Caption;
       MyModule.ADOQuery1.Active:=True;
       MyModule.ADOQuery1.Post;
 s:='';

end;
end;

if (Form38.cascade) and (TestsQueue.cur <> TestsQueue.qsize-1) then begin
TestsQueue.cur := TestsQueue.cur + 1;
Form38.Button2Click(TestsQueue.queue[TestsQueue.cur]);
TestsQueue.Label3.Caption := TestsQueue.queue[TestsQueue.cur].Caption;
end
else begin
TestsQueue.Close;
if (isAdmin) then begin
Form62.show;
isAdmin := false;
end
else Form78.Show;
end;
end;

procedure TForm39.FormShow(Sender: TObject);
begin
if (not isAdmin) then begin
  Label2.Caption := Form38.nametest;
  Memo1.Visible := (Memo1.Text <> '');
  ScoreLabel.Caption := '';
  ScoreLabel.Caption:= IntToStr(score);
end;
end;

procedure TForm39.Button4Click(Sender: TObject);
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
    ShowMessage('?? ??????? ??????? ???????? Microsoft Word');
  end;
Word.Visible := True;
S:=Word.Selection;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(Label2.Caption);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('????????????: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('????? ???????????: ');
S.Font.Bold := 0;
S.TypeText(label5.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('????????: ');
S.Font.Bold := 0;
S.TypeText(Label1.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('??????????: ');
S.TypeParagraph;
S.Font.Bold := 0;
count:=Memo1.Lines.Count;
for z:=0 to count do
  begin
    S.TypeText(' '+ Memo1.Lines[z]);
  end;
end;
end.


