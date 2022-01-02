unit Unit8;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, DBCtrls, Buttons;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    ADOQuery2N_vlast: TAutoIncField;
    ADOQuery2Familia: TWideStringField;
    ADOQuery2Imi: TWideStringField;
    DataSource2: TDataSource;
    ADOQuery3: TADOQuery;
    BitBtn1: TBitBtn;

    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    
  private
    { Private declarations }
  public
  GlobName:String;

  id_vlast,pol: integer;
    { Public declarations }

  end;

var
  Form8: TForm8;

implementation

uses StartTest, Unit27, Unit7, Unit24, Unit11, Unit14, Unit16, Unit18, Unit25,
  Unit5, Unit22, Unit26, Unit53,Unit35, Unit78;

{$R *.dfm}

procedure TForm8.BitBtn1Click(Sender: TObject);
var squery:string;
  begin
  if ((DBLookupComboBox1.Text <> '') and (DBLookupComboBox2.Text <> ''))
  then
  begin
  ADOQuery3.Close;
  ADOQuery3.SQL.Clear;
  squery:='SELECT * FROM People WHERE Familia=' + QuotedStr(Form8.DBLookupComboBox1.Text) + ' AND Imi=' + QuotedStr(DBLookupComboBox2.Text) + 'AND Passw=' + QuotedStr(Edit1.Text);
  ADOQuery3.SQL.Text:= squery;
     try
      ADOQuery3.Open;
       ADOQuery3.first;
        Form7.Id :=   ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form5.Id :=   ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form24.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form11.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form14.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form16.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form18.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form25.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form22.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form26.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        Form53.Id :=  ADOQuery1.FieldByName('N_vlast').AsInteger;
        id_vlast:=ADOQuery3.FieldByName('N_vlast').AsInteger;
        pol:=ADOQuery3.FieldByName('Pol').AsInteger;
      Except
      ShowMessage('Не удалось открыть таблицу пользователей');
      Exit;
    end;
    if ADOQuery3.RecordCount > 0
    then
    begin
      Form2.Label3.Caption:='';
      Form2.Label3.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
      Form78.Label2.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
      DBLookupComboBox1.KeyValue:=null;
      DBLookupComboBox2.KeyValue:=null;
      Edit1.Clear;
      form8.hide;
      Form78.show;

    end
    else
    begin
      Application.MessageBox('Неверные фамилия\имя или пароль','Ошибка');
      DBLookupComboBox1.KeyValue:=null;
      DBLookupComboBox2.KeyValue:=null;
      Edit1.Clear;
    end;
  end
  else
  Application.MessageBox('Пустые поля фамилия\имя и пароль не допускаються','Ошибка')

end;



procedure TForm8.Button2Click(Sender: TObject);
begin
DBLookupComboBox1.KeyValue:=null;
DBLookupComboBox2.KeyValue:=null;
Edit1.Clear;
Form27.Visible:=True;
Form8.Close;
end;




procedure TForm8.FormShow(Sender: TObject);
begin
MyModule.ADOConnection1.Connected:= False;
MyModule.ADOQuery1.Active:=False;
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
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM People');
    ADOQuery1.Active:=True;
    DBLookupComboBox1.Enabled:=True;
    except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
    end;


try
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT N_vlast, Familia,Imi FROM People');
    ADOQuery2.Active:=True;

  except
  on e:Exception do
  Application.MessageBox('Ошибка базы данных','Ошибка');
  end;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Form27.Visible:=True;
    
end;


end.
