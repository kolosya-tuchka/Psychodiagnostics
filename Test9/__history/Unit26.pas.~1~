unit Unit26;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm26 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    massiv: array [1..40] of integer;
    s:string;
    Id:integer;
  end;

var
  Form26: TForm26;

implementation

uses Unit2, Unit8, Unit7, Unit62, Unit27,Unit35;

{$R *.dfm}

procedure TForm26.Button1Click(Sender: TObject);
begin

Form26.close;
end;





procedure TForm26.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;

end;
end;

procedure TForm26.FormClose(Sender: TObject; var Action: TCloseAction);

var i:integer;
squery:string;
begin
if (s='') then
begin
  for i:=1 to 40 do
    begin
    s:=s + intTostr(massiv[i])+ ',';
    end;
  Delete(s,length(s),length(s));
  end;
 ADOQuery1.Close;
       ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Result where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=9';
       ADOQuery1.SQL.Text:= squery;
       ADOQuery1.open;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='9';
         ADOQuery1.FieldByName('Resultat').AsString:=Edit1.Text;
         ADOQuery1.FieldByName('Result_Data').AsString:=Label8.Caption;
         ADOQuery1.FieldByName('Name_Test').AsString:='Ваш уровень тревожности.';
         ADOQuery1.FieldByName('Choice').AsString:=s;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;

         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='91';
         ADOQuery1.FieldByName('Resultat').AsString:=Edit2.Text;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;
       end
       else begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Edit1.Text) + ',Result_Data=' + QuotedStr(Label8.Caption) + ',Choice=' + QuotedStr(s) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=9';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Edit2.Text) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=91';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
         end;
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('SELECT Name_test FROM Test_app where Name_test="Ваш уровень тревожности."');
         ADOQuery1.open;
         ADOQuery1.First;
         if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('Name_Test').AsString:='Ваш уровень тревожности.';
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

procedure TForm26.Button2Click(Sender: TObject);
var
 Word: variant;
 Doc: variant;
 S: variant;
// z,count:integer;
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
S.TypeText(Label4.Caption);
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
S.TypeText(label8.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Описание: ');
S.Font.Bold := 0;
S.TypeText(Label3.Caption);
S.TypeText(' ' + Label6.Caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Реактивная: ' );
S.Font.Bold := 0;
S.TypeText(Form26.Edit1.Text);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Личностная: ' );
S.Font.Bold := 0;
S.TypeText(Form26.Edit2.Text);
end;

end.
