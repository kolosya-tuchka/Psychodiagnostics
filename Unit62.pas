unit Unit62;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Data.Win.ADODB, StdCtrls;

type
  TForm62 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Button8: TButton;
    Button14: TButton;
    Edit7: TEdit;
    Label9: TLabel;
    Button15: TButton;
    Button16: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Button12: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button7Click(Sender: TObject);
   procedure Button8Click(Sender: TObject);

    procedure Button14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button16Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);


  private
    { Private declarations }
  public
  N_vlast:integer;
    { Public declarations }
  end;

var
  Form62: TForm62;


implementation

uses StartTest, Unit29, Unit30, Unit31, Unit40, Unit42, Unit44, Unit47,
  Unit32, Unit41, Unit43, Unit45, Unit48, Unit33, Unit46,
  Unit34, Unit27, Unit9, Unit54,Result, hand_test, Unit8, Unit7, Config,
  Unit49,Unit35, Unit39;



{$R *.dfm}

procedure TForm62.FormCreate(Sender: TObject);
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
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM People');
    ADOQuery1.Active:=True;
   except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;


end;

procedure TForm62.Button4Click(Sender: TObject);
begin
     ADOQuery1.First;
end;

procedure TForm62.Button5Click(Sender: TObject);
begin
      ADOQuery1.Last;
end;

procedure TForm62.Button6Click(Sender: TObject);
begin
       ADOQuery1.Refresh;
end;

procedure TForm62.Button2Click(Sender: TObject);
var squery:string;
begin
try

  ADOQuery1.SQL.Clear;
  squery:='Delete From People Where N_vlast=' + IntTostr(N_vlast);
  ADOQuery1.SQL.Text:= squery ;
  ADOQuery1.ExecSQL;
  
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit7.Clear;
  GroupBox2.Visible:=False;
  //Button12.Enabled:=False;

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM People'); 
  ADOQuery1.Active:=True;

except
  on e:Exception do
  Application.MessageBox('Ошибка базы данных','Ошибка');
end;
end;


procedure TForm62.Button1Click(Sender: TObject);
begin

if  ((Edit1.text<>'')and(Edit2.text<>'')and(Edit3.Text<>''))then
    try
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('Familia').AsString:=Edit1.Text;
    ADOQuery1.FieldByName('Imi').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('Passw').AsString:=Edit3.Text;
    ADOQuery1.FieldByName('Old').AsString:= Edit7.Text;
    ADOQuery1.Active:=True;
    ADOQuery1.Post;

    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit7.Clear;
    GroupBox2.Visible:=False;
    Button12.Enabled:=False;
    except
      on e:Exception do
      Application.MessageBox('Программа запущена не под администратором','Ошибка');
      end
        else
  Application.MessageBox('Все поля должны быть заполнены','Ошибка');
  exit;
end;

procedure TForm62.Button3Click(Sender: TObject);
begin

try
  if  ((Edit1.text<>'')and(Edit2.text<>'')and(Edit3.Text<>'') and(Edit7.Text<>''))then begin
    ADOQuery1.Edit;
    ADOQuery1.FieldByName('Familia').AsString:=Edit1.Text;
    ADOQuery1.FieldByName('Imi').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('Passw').AsString:=Edit3.Text;
    ADOQuery1.FieldByName('Old').AsString:= Edit7.Text;
    ADOQuery1.Active:=True;
    ADOQuery1.Post;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit7.Clear;
    GroupBox2.Visible:=False;
    //Button12.Enabled:=False;
  end
  else
     Application.MessageBox('Все поля должны быть заполнены','Ошибка');
except
  on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
end;
end;
procedure TForm62.DBGrid1CellClick(Column: TColumn);
begin
Button10.Enabled:=True;
   try
    GroupBox2.Visible:=True;
    Button12.Enabled:=True;
    Edit1.Text:=ADOQuery1.FieldByName('Familia').AsString;
    Edit2.Text:=ADOQuery1.FieldByName('Imi').AsString;
    Edit3.Text:=ADOQuery1.FieldByName('Passw').AsString;
    Edit7.Text:=ADOQuery1.FieldByName('Old').AsString;
    N_vlast:=ADOQuery1.FieldByName('N_vlast').AsInteger;
    except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
end;
procedure TForm62.Button7Click(Sender: TObject);
begin
    GroupBox2.Visible:=False;
    Button12.Enabled:=False;
    DBGrid1.SelectedIndex:=3;
    form27.visible:=true;
    Form62.Close;


end;

procedure TForm62.Button8Click(Sender: TObject);
//begin
begin
Form62.hide;
Form29.Memo1.Clear;
Form30.Label1.Caption:='';
Form30.Button1.Enabled:=false;
Form30.ListBox1.ItemIndex:=-1;

Form29.Edit1.Text:='';
Form29.Edit2.Text:='';
Form31.Edit1.Text:='';
Form31.Edit2.Text:='';
Form40.Edit1.Text:='';
Form40.Edit2.Text:='';
Form40.Edit3.Text:='';
Form42.Edit1.Text:='';
Form42.Edit2.Text:='';
Form42.Edit3.Text:='';
Form42.Edit4.Text:='';
Form44.Edit1.Text:='';
Form44.Edit2.Text:='';
Form44.Edit3.Text:='';
Form44.Edit4.Text:='';
Form44.Edit5.Text:='';




Form32.label3.Caption:='1';
Form32.button4.Enabled:=true;
Form41.label3.Caption:='1';
Form41.button4.Enabled:=true;
Form43.label3.Caption:='1';
Form43.button4.Enabled:=true;
Form45.label3.Caption:='1';
Form45.button4.Enabled:=true;

Form33.number:=1;
Form33.Label3.Caption:='1';


Form33.Memo1.Clear;

Form33.ListBox1.Clear;



Form33.Button1.Enabled:=false;
Form33.Button4.Enabled:=true;

HandTest.number:=1;
HandTest.Label4.Caption:=intTostr(HandTest.number);
HandTest.ListBox1.Clear;
HandTest.Button4.Enabled:= True;
HandTest.Button1.Enabled:= False;


Form34.number:=1;


Form34.Label7.Caption:='Введите 1 группу:';

Form34.Button4.Enabled:=true;
Form34.Button1.Enabled:=false;
form62.hide;
Form29.Show;

end;

procedure TForm62.Button14Click(Sender: TObject);
begin
form62.hide;
form9.show;

end;

procedure TForm62.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      form27.visible:=true;
      Form39.isAdmin := false;
end;

procedure TForm62.Button16Click(Sender: TObject);
begin
   form62.hide;
    try
      Form54 :=TForm54.Create(nil);
      Form54.ShowModal;
    finally
      freeandnil(Form54);
    end;
   Form62.Show;
end;




procedure TForm62.DBGrid1TitleClick(Column: TColumn);
begin
ADOQuery1.sort:=Column.FieldName;
end;

procedure TForm62.Button9Click(Sender: TObject);
begin
 form62.hide;
    try
      Results :=TResults.Create(nil);
      Results.mode := 0;
      Results.ShowModal;
    finally
      freeandnil(Results);
    end;
   Form62.Show;
end;
procedure TForm62.Button10Click(Sender: TObject);
begin
Form7.iduser:=N_vlast;
Form7.button_select:=1;
GroupBox2.Visible:=False;
DBGrid1.SelectedIndex:=3;
Form7.show;
Form62.hide;

end;





procedure TForm62.FormShow(Sender: TObject);
begin
Form39.isAdmin := true;
Button10.Enabled:= False;
//Button12.Enabled:= False;
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
    DBGrid1.Columns[0].Width:=220;
    DBGrid1.Columns[1].Width:=220;
    DBGrid1.Columns[2].Width:=50;
    DBGrid1.Columns[3].Width:=130;
   except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
   end;
   exit;
end;

procedure TForm62.Button11Click(Sender: TObject);
begin
Config_set.showmodal;
end;



procedure TForm62.Button12Click(Sender: TObject);
begin
 form62.hide;
    try
      Results :=TResults.Create(nil);
      Results.ShowModal;
    finally
      freeandnil(Results);
    end;
   Form62.Show;
end;

end.
