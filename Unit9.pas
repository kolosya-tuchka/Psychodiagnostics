unit Unit9;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Data.Win.ADODB, StdCtrls;

type
  TForm9 = class(TForm)
    Button2: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery1N_testa: TAutoIncField;
    ADOQuery1Nazv: TStringField;
    ADOQuery1Opis: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit62, Unit27,Unit35;

{$R *.dfm}

procedure TForm9.FormCreate(Sender: TObject);
var Kolvo : Integer;

begin
if not Mymodule.ADOConnection1.Connected then
 begin
Mymodule.ADOConnection1.ConnectionString := Form27.ConnectionString;
Mymodule.ADOConnection1.Connected:=true;
end;
 try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT N_testa, Nazv, Opis FROM Test');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
end;

procedure TForm9.Button1Click(Sender: TObject);
var squery:string;
begin
try
    if Application.MessageBox('Удалить?','Удаление',MB_YESNO)=IDYES then
     begin
        ADOQuery2.SQL.Clear;
       squery:='Delete From Test_Information Where N_testa=' + IntToStr(DBGrid1.Fields[0].AsInteger);
       ADOQuery2.SQL.Text:= squery;
       ADOQuery2.ExecSQL;


       ADOQuery2.SQL.Clear;
       squery:='Delete From Test_App Where Name_Test=:name';
       ADOQuery2.SQL.Text:= squery;
       ADOQuery2.Parameters.ParamByName('name').Value := DBGrid1.Fields[1].AsString;
       ADOQuery2.ExecSQL;



       ADOQuery2.SQL.Clear;
       squery:='Delete From Result Where Name_Test=' + QuotedStr(DBGrid1.Fields[1].AsString);
       ADOQuery2.SQL.Text:= squery;
       ADOQuery2.ExecSQL;

       ADOQuery2.SQL.Clear;
       squery:='Delete From BestResults Where Name_Test=' + QuotedStr(DBGrid1.Fields[1].AsString);
       ADOQuery2.SQL.Text:= squery;
       ADOQuery2.ExecSQL;

       ADOQuery2.SQL.Clear;
       squery:='Delete From Intermediate_result Where N_testa=' + DBGrid1.Fields[0].AsString;
       ADOQuery2.SQL.Text:= squery;
       ADOQuery2.ExecSQL;



       ADOQuery2.SQL.Clear;
       squery:='Delete From Test Where N_testa=' + DBGrid1.Fields[0].AsString;
       ADOQuery2.SQL.Text:= squery;
       ADOQuery2.ExecSQL;

       ADOQuery1.SQL.Clear;
       ADOQuery1.SQL.Add('SELECT N_testa, Nazv, Opis FROM Test');
       ADOQuery1.Active:=True;
         end;
   except
   on e:Exception do
   Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
form9.close;
form62.show;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form62.show;
end;

end.

