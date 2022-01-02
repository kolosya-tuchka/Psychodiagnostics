unit Unit22;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm22 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    SaveDialog1: TSaveDialog;
    Label10: TLabel;
    Label11: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
    massiv: array [1..30] of integer;
    s:string;
    Id:integer;
  end;

var
  Form22: TForm22;

implementation

uses Unit2, Unit8, Unit7, Unit62, Unit27,Unit35;

{$R *.dfm}

procedure TForm22.Button1Click(Sender: TObject);
begin
Form2.show;
Form22.close;
end;

procedure TForm22.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
end;

procedure TForm22.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
e: TEdit;
squery:string;
begin
if (s='') then
begin
  for i:=1 to 30 do
    begin
    s:=s + intTostr(massiv[i])+ ',';
    end;
  Delete(s,length(s),length(s));
end;
ADOQuery1.Close;
       ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Result where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=8';
       ADOQuery1.SQL.Text:= squery;
       ADOQuery1.open;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='8';
         ADOQuery1.FieldByName('Resultat').AsString:=Edit1.Text;
         ADOQuery1.FieldByName('Result_Data').AsString:=Label11.Caption;
         ADOQuery1.FieldByName('Name_Test').AsString:='Самочувствие. Активность. Настроение.';
         ADOQuery1.FieldByName('Choice').AsString:=s;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;

         for i:=1 to 2 do
         begin
            ADOQuery1.Insert;
            ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            ADOQuery1.FieldByName('N_testa').AsString:='8' +inttostr(i);
            e:=(FindComponent('Edit'+IntToStr(i+1)) as TEdit);
            ADOQuery1.FieldByName('Resultat').AsString:=e.Text;
            ADOQuery1.Active:=True;
            ADOQuery1.Post;
         end;

       end
       else begin

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Edit1.Text) + ',Result_Data=' + QuotedStr(Label11.Caption) + ',Choice=' + QuotedStr(s) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=8';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
        for i:=1 to 2 do
         begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         e:=(FindComponent('Edit'+IntToStr(i+1)) as TEdit);
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(e.Text) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=8' + inttostr(i);
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
         end;
        end;

         if Form7.button_select = 0 then
Form2.show
else
begin
Form62.show;

end;
end;

procedure TForm22.Button2Click(Sender: TObject);
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
S.TypeText(label11.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Описание: ');
S.Font.Bold := 0;
S.TypeText(Label5.Caption);
S.TypeText(' ' + Label8.Caption);
S.TypeText(' ' + Label9.Caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Самочувствие: ' );
S.Font.Bold := 0;
S.TypeText(Form22.Edit1.Text);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Активность: ' );
S.Font.Bold := 0;
S.TypeText(Form22.Edit2.Text);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Настроение: ' );
S.Font.Bold := 0;
S.TypeText(Form22.Edit3.Text);
end;

end.
