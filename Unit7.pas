unit Unit7;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, DBCtrls, ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm7 = class(TForm)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    TestsGrid: TDBGrid;
    ADOQuery1Name_Test: TStringField;
    ADOQuery1Score: TIntegerField;
    ADOQuery1Result_Data: TWideStringField;
    ADOQuery1Resultat: TWideMemoField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  {  procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject); }
    procedure Button10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TestsGridCellClick(Column: TColumn);


  private
    { Private declarations }
  public
    { Public declarations }
    button_select : Integer;
    Id, iduser: Integer;
  end;

var
  Form7: TForm7;

implementation

uses Unit35, Unit24, Unit11, Unit14, Unit16, Unit18, Unit25, Unit5,
  Unit22, Unit26, StartTest, Unit17, Unit10, Unit53, Unit1, Unit39, Unit8,
  Unit62, Test, Unit38, Balls, Unit27;

{$R *.dfm}



procedure TForm7.Button1Click(Sender: TObject);
var squery:string;
begin

Close;
 { try
    with MyModule.ADOQuery2 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=1';
        SQL.Text:= squery;
        open;
        first;
    Form24.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
    Form24.Label5.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
    Form24.s:= MyModule.ADOQuery2.Fields[2].AsString;
    Form7.hide;
    Form24.show;
      end;


except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
 end;
procedure TForm7.Button2Click(Sender: TObject);
var i:integer;
  e:TEdit;
  squery:string;
begin
try
       with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=2';
    SQL.Text:= squery;
    open;
    first;
   Form11.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form11.Label5.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form11.s:= MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=21';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=22';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=23';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit3.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=24';
   SQL.Text:= squery;
   open;
   first;
   Form11.Edit4.Text:=MyModule.ADOQuery2.Fields[0].AsString;

 Form11.Memo2.Clear;
 Form11.Memo2.Lines.Add('Время прохождения: ' + Form11.label5.caption);
 Form11.Memo2.Lines.Add('Пользователь: ' + Form2.label3.caption);
 Form11.Memo2.Lines.Add(Form11.label6.caption);
 Form11.Memo2.Lines.Add('Описание: ' + Form18.label1.caption);
 Form11.Memo2.Lines.Add('Шкала психотизма: ' + Form11.Edit1.Text);
 Form11.Memo2.Lines.Add('Шкала экстраверсии\интроверсии: ' + Form11.Edit2.Text);
 Form11.Memo2.Lines.Add('Шкала нейротизма: ' + Form11.Edit3.Text);
 Form11.Memo2.Lines.Add('Шкала искренности: ' + Form11.Edit4.Text);
 Form11.Memo2.Lines.AddStrings(Form11.Memo1.Lines);
    Form7.hide;
   Form11.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
 end;
procedure TForm7.Button4Click(Sender: TObject);
var i:integer;
    e:TEdit;
    squery:string;
begin
try
with MyModule.ADOQuery2 do
   begin
   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=3';
   SQL.Text:= squery;
   open;
   first;
   Form14.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form14.Label8.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form14.sM:= MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=31';
   SQL.Text:= squery;
   open;
   first;
   Form14.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form14.sL:= MyModule.ADOQuery2.Fields[1].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=32';
   SQL.Text:= squery;
   open;
   first;
   Form14.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=33';
   SQL.Text:= squery;
   open;
   first;
   Form14.Edit3.Text:=MyModule.ADOQuery2.Fields[0].AsString;


  Form7.hide;
  Form14.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
   end;

procedure TForm7.Button5Click(Sender: TObject);
var squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=4';
   SQL.Text:= squery;
   open;
   first;
   Form16.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form16.Label4.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form16.s:=MyModule.ADOQuery2.Fields[2].AsString;
   Form7.hide;
   Form16.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
end;

procedure TForm7.Button6Click(Sender: TObject);
var squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=5';
    SQL.Text:= squery;
    open;
    first;
   Form18.Memo2.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form18.Label8.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form18.s:=MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=51';
   SQL.Text:= squery;
   open;
   first;
   Form18.Memo3.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Form18.Memo1.Clear;
   Form18.Memo1.Lines.Add('Время прохождения: ' + Form18.label8.caption);
   Form18.Memo1.Lines.Add(Form18.label6.caption);
   Form18.Memo1.Lines.Add('Пользователь: ' + Form2.label3.caption);
   Form18.Memo1.Lines.Add(Form2.label3.caption);
   Form18.Memo1.Lines.Add('Описание: ' + Form18.label1.caption);
   Form18.Memo1.Lines.AddStrings(Form18.Memo2.Lines);
   Form18.Memo1.Lines.AddStrings(Form18.Memo3.Lines);
   Form7.hide;
   Form18.show;
  end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
end;
procedure TForm7.Button7Click(Sender: TObject);
var squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
   Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=6';
    SQL.Text:= squery;
    open;
    first;
   Form25.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form25.Label3.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form25.s:=MyModule.ADOQuery2.Fields[2].AsString;
     Form7.hide;
   Form25.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
 end;
procedure TForm7.Button8Click(Sender: TObject);
var squery:string;
begin
try
with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=7';
    SQL.Text:= squery;
    open;
    first;
   Form5.Memo1.Lines.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form5.Label3.caption:=MyModule.ADOQuery2.Fields[1].AsString;

   Form7.hide;
   Form5.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
end;
procedure TForm7.Button9Click(Sender: TObject);
var i:integer;
  e:TEdit;
  squery:string;
begin
try
   with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=8';
   SQL.Text:= squery;
    open;
    first;
   Form22.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form22.Label11.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form22.s:=MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=81';
   SQL.Text:= squery;
   open;
   first;
   Form22.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=82';
   SQL.Text:= squery;
   open;
   first;
   Form22.Edit3.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Form7.hide;
   Form22.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;}
end;

procedure TForm7.Button10Click(Sender: TObject);
var squery:string;
begin
try
     with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.Clear;
    squery:= 'SELECT Resultat,Result_Data,Choice FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=9';
    SQL.Text:= squery;
    open;
    first;
   Form26.Edit1.Text:=MyModule.ADOQuery2.Fields[0].AsString;
   Form26.Label8.Caption:=MyModule.ADOQuery2.Fields[1].AsString;
   Form26.s:=MyModule.ADOQuery2.Fields[2].AsString;

   Close;
   SQL.Clear;
   squery:= 'SELECT Resultat FROM Result WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=91';
   SQL.Text:= squery;
   open;
   first;
   Form26.Edit2.Text:=MyModule.ADOQuery2.Fields[0].AsString;

   Form7.hide;
   Form26.show;
end;
except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
exit;
end;

procedure TForm7.FormCreate(Sender: TObject);

begin
button_select:=0;
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
  end;
  try
    MyModule.ADOQuery2.SQL.Clear;
    MyModule.ADOQuery2.SQL.Add('SELECT * FROM Result');
    MyModule.ADOQuery2.Active:=True;
   except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
 end;
procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if button_select = 0 then
Form2.show
else
begin
Form62.show;
button_select:=0;
end;
end;

procedure TForm7.FormShow(Sender: TObject);
var squery:string;
begin

if not MyModule.ADOConnection1.Connected then
 begin
 try
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;

except
on e:Exception do
    begin
    Application.MessageBox('Ошибка подключения к базе данных. Проверьте параметры подключения в разделе "Администратор"','Ошибка');
    exit;
    end;
    end;
end;
    try
    MyModule.ADOQuery1.SQL.Clear;
    MyModule.ADOQuery1.SQL.Add('SELECT Name_Test, Result_Data, Score, Resultat FROM Result WHERE N_vlast=' +IntToStr(iduser));
    MyModule.ADOQuery1.SQL.Add('ORDER BY Result_Data DESC');
    MyModule.ADOQuery1.Active := true;
   except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;

end;

procedure TForm7.TestsGridCellClick(Column: TColumn);
var i, score: integer; name, time: string;
begin
  i := TestsGrid.SelectedIndex;
  if (i = 0) then begin
    name := TestsGrid.DataSource.DataSet.Fields.Fields[0].Value;
    time := TestsGrid.DataSource.DataSet.Fields.Fields[1].Value;
    score := TestsGrid.DataSource.DataSet.Fields.Fields[2].Value;
    Form39.Memo1.Text := TestsGrid.DataSource.DataSet.Fields[3].Value;
    Form39.Label2.Caption := name;
    Form39.Memo1.Text := TestsGrid.DataSource.DataSet.Fields.Fields[3].Value;
    Form39.ScoreLabel.Caption := IntToStr(score);

    Form39.Label5.Caption := time;
    Form39.isAdmin := true;
    hide;
    Form39.Show;
  end;
end;

end.
