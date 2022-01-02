unit Unit14;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm14 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    SaveDialog1: TSaveDialog;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    massivM: array [1..27] of integer;
    massivL: array [1..27] of integer;
    Id:integer;
    sM,sL:string;
  end;

var
  Form14: TForm14;

implementation

uses Unit13, Unit2, Unit4, Unit8, Unit62, Unit7, Unit27,Unit35;

{$R *.dfm}



procedure TForm14.Button2Click(Sender: TObject);
begin
Form2.show;
Form14.Close;
end;

procedure TForm14.Button4Click(Sender: TObject);
var
  i,z,count:integer;
  Word: variant;
  Doc: variant;
  S: variant;

begin
  try
    Word := CreateOleObject('Word.Application');
    Doc:=Word.Documents.Add;

  except
    ShowMessage('Не удается создать документ Microsoft Word');
  end;
Word.Visible := True;
S:=Word.Selection;
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(Label3.Caption);
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
S.TypeText(Form14.label8.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Описание: ');
S.Font.Bold := 0;
S.TypeText(Form14.Label4.Caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=0;
S.TypeText('На себя: ');
S.Font.Bold := 0;
S.TypeText(Edit1.Text);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=0;
S.TypeText('На общение: ');
S.Font.Bold := 0;
S.TypeText(Edit2.Text);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=0;
S.TypeText('На дело: ');
S.Font.Bold := 0;
S.TypeText(Edit3.Text);
S.TypeParagraph;
count:= Memo1.Lines.Count;
for z:=0 to count do
  begin
    S.TypeText(' '+ Memo1.Lines[z]);
  end;
end;


procedure TForm14.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
e: TEdit;
squery:string;
begin
if (sM='') then
begin
  for i:=1 to 27 do
    begin
    sM:=sM + intTostr(massivM[i])+ ',';
    end;
  Delete(sM,length(sM),length(sM));
end;
if (sL='') then
begin
  for i:=1 to 27 do
    begin
    sL:=sL + intTostr(massivL[i])+ ',';
    end;
  Delete(sL,length(sL),length(sL));
end;
ADOQuery1.Close;
       ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Result where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=3';
       ADOQuery1.SQL.Text:= squery;
       ADOQuery1.open;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='3';
         ADOQuery1.FieldByName('Resultat').AsString:=Memo1.Lines.Text;
         ADOQuery1.FieldByName('Result_Data').AsString:=Label8.Caption;
         ADOQuery1.FieldByName('Name_Test').AsString:='Определение направленности личности.';
         ADOQuery1.FieldByName('Choice').AsString:= sM;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;

         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='31';
         ADOQuery1.FieldByName('Resultat').AsString:=Edit1.Text;
         ADOQuery1.FieldByName('Choice').AsString:= sL;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;

         for i:=2 to 3 do
         begin
            ADOQuery1.Insert;
            ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            ADOQuery1.FieldByName('N_testa').AsString:='3' +inttostr(i);
            e:=(FindComponent('Edit'+IntToStr(i)) as TEdit);
            ADOQuery1.FieldByName('Resultat').AsString:=e.Text;
            ADOQuery1.Active:=True;
            ADOQuery1.Post;
         end;

       end
       else begin

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Memo1.Lines.Text) + ',Result_Data=' + QuotedStr(Label8.Caption) + ',Choice=' + QuotedStr(sM) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=3';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Edit1.Text) + ',Choice=' + QuotedStr(sL) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=31';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;

        for i:=2 to 3 do
         begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         e:=(FindComponent('Edit'+IntToStr(i)) as TEdit);
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(e.Text) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=3' + inttostr(i);
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
         end;

        end;
        ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('SELECT Name_test FROM Test_app where Name_test="Определение направленности личности."');
         ADOQuery1.open;
         ADOQuery1.First;
         if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('Name_Test').AsString:='Определение направленности личности.';
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
