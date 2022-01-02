unit Unit35;

interface

uses
  SysUtils, Classes, DB, Data.Win.ADODB, Forms, xmldom, XMLIntf,
  XMLDoc, Xml.Win.msxmldom;

type
  TMyModule = class(TDataModule)
    INFORM: TADOTable;
    SourceINFORM: TDataSource;
    Generation1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    ADOConnection2: TADOConnection;
    ADOQuery6: TADOQuery;
    XMLDocument1: TXMLDocument;
    procedure DataModuleCreate(Sender: TObject);
    procedure INFORMAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Delimited(Str:string):TstringList;

var
  MyModule: TMyModule;

implementation

uses Unit27;

{$R *.dfm}

procedure TMyModule.DataModuleCreate(Sender: TObject);
begin
begin
if not ADOConnection1.Connected then
 begin
ADOConnection1.ConnectionString :=  Form27.ConnectionString;
ADOConnection1.Connected:=true;
end;
   try
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Add('SELECT N_testa, Nazv, Opis FROM Test ORDER BY Nazv');
    ADOQuery3.Active:=True;
    except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
begin
if not ADOConnection1.Connected then
 begin
ADOConnection1.ConnectionString :=  Form27.ConnectionString;
ADOConnection1.Connected:=true;
end;
   try
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('SELECT * FROM Test_Information');
    ADOQuery4.Active:=True;
   except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
end;
if not ADOConnection1.Connected then
 begin
ADOConnection1.ConnectionString :=Form27.ConnectionString;
ADOConnection1.Connected:=true;
end;
end;
end;


procedure TMyModule.INFORMAfterInsert(DataSet: TDataSet);
begin
   MyModule.Generation1.Open();
   if(Generation1.FieldValues['Max']>=0) Then
     Inform.FieldValues['n']:=Generation1.FieldValues['Max']+1
   Else
     Inform.FieldValues['n']:=0;
   Generation1.Close();

end;

function Delimited(Str:string):TstringList;
var
start:integer;
index:integer;
begin
result:=TstringList.create;
start := 1;
repeat
  index :=Pos('|', Copy(Str, start, Length(Str)));
  if index = 0 then
    result.Add(Copy(str, start, Length(Str)))
  else
    result.Add(Copy(str, start, index - 1));
  start := index + 1;
until index = 0;

end;
end.
