unit Unit12;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs, DB, Data.Win.ADODB;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;

    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   
  private
    { Private declarations }
  public
    { Public declarations }
    pathtoquestion:string;
    Picture: Array of Array of integer;
    end;

var
  Form12: TForm12;

implementation

uses Unit46, Unit34, Unit35;

{$R *.dfm}


procedure TForm12.Button1Click(Sender: TObject);
var N_testa,N_vopros:integer;
begin
 OpenPictureDialog1.InitialDir:=ExtractFilePath(Application.ExeName) + 'Picture\';
     if OpenPictureDialog1.Execute then
begin
 Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
 pathtoquestion:= OpenPictureDialog1.FileName;
 end;
end;

procedure TForm12.FormShow(Sender: TObject);
begin

pathtoquestion:='';
end;

procedure TForm12.Button2Click(Sender: TObject);
var N_testa:integer;
begin
SetLength(Picture,Form34.GlobKolvo,2);
MyModule.ADOQuery2.Close;
MyModule.ADOQuery2.SQL.clear;
MyModule.ADOQuery2.Sql.Add('SELECT MAX(N_testa) AS MAXN FROM Test');
MyModule.ADOQuery2.Open;
MyModule.ADOQuery2.First;
If MyModule.ADOQuery2.FieldByName ('MAXN').AsInteger-100<=0 then
  begin
    N_testa:= MyModule.ADOQuery2.FieldByName ('MAXN').AsInteger+101;
  end
else
  begin
  N_testa:=MyModule.ADOQuery2.FieldByName ('MAXN').AsInteger+1;
  end;
begin
try
    MyModule.ADOQuery2.SQL.Clear;
    MyModule.ADOQuery2.SQL.Add('SELECT * FROM Pictures');
    MyModule.ADOQuery2.Active:=True;
except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
end;
Picture[Form46._number-2,1]:=N_testa;
Picture[Form46._number-2,0]:=Form46._number-1;
MyModule.ADOQuery2.Insert;
TBlobField(MyModule.ADOQuery2.FieldByName('path_quest')).LoadFromFile(OpenPictureDialog1.FileName);
MyModule.ADOQuery2.FieldByName('N_testa').AsInteger:=N_testa;
MyModule.ADOQuery2.FieldByName('N_vopros').AsInteger:=Form46._number-1;
MyModule.ADOQuery2.Post;


 {if  form34.pathtoquestion = nil then
    form34.pathtoquestion :=  TStringList.Create;
 form34.pathtoquestion.Add(pathtoquestion);}
  Close;
 Image1.Picture:=nil;
 end;
//  pathtoquestion:='';
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Image1.Picture:=nil;
 pathtoquestion:='';
end;



end.
