unit Unit24;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm24 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Label3: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    massiv: array [1..20] of integer;
    Id:integer;
    s:string;
  end;

var
  Form24: TForm24;

implementation

uses Unit2, Unit20, Unit8, Unit62, Unit7, Unit27,Unit35;

{$R *.dfm}

procedure TForm24.Button1Click(Sender: TObject);
begin
Form24.close;
end;



procedure TForm24.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString :=Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
end;

procedure TForm24.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
squery:string;
begin
if (s='') then
begin
  for i:=1 to 20 do
    begin
    s:=s + intTostr(massiv[i])+ ',';
    end;
  Delete(s,length(s),length(s));
end;  

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    squery:= 'SELECT * FROM Result where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND' + ' N_testa=1';
    ADOQuery1.SQL.Text:= squery;
    ADOQuery1.open;
    ADOQuery1.First;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='1';
         ADOQuery1.FieldByName('Resultat').AsString:=quotedstr(Edit1.Text);
         ADOQuery1.FieldByName('Result_Data').AsString:=Label5.Caption;
         ADOQuery1.FieldByName('Name_Test').AsString:='Шкала одиночества';
         ADOQuery1.FieldByName('Choice').AsString:= s;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;
         {squery:= 'INSERT INTO Result (N_vlast, N_testa,Resultat,Result_Data,Name_Test,Choice)';
  squery:= squery + ' Values';
  squery:= squery + '(' + IntToStr(Form8.id_vlast) + ',' + '''-1''' + ',' + Quotedstr(Edit1.Text) + ',' + QuotedStr(Label5.Caption) + ',' + '''Шкала одиночества''' + ',' + QuotedStr(s) + ')';
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.ExecSQL; }
       end
       else

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Edit1.Text) + ',Result_Data=' + QuotedStr(Label5.Caption) + ',Choice=' + QuotedStr(s) + 'where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=1';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('SELECT Name_test FROM Test_app where Name_test="Шкала одиночества"');
         ADOQuery1.open;
         ADOQuery1.First;
         if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('Name_Test').AsString:='Шкала одиночества';
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

procedure TForm24.Button2Click(Sender: TObject);
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
S.TypeText(label5.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Описание: ');
S.Font.Bold := 0;
S.TypeText(Label1.Caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 0;
S.TypeText(Edit1.Text);
end;

end.

