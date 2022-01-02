 unit Unit27;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Data.Win.ADODB, VCLTee.TeEngine, VCLTee.Series, ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, StrUtils, Buttons;

type
  TForm27 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Button4: TButton;
    BitBtn1: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);


  private
    { Private declarations }
  public
  config_mas: array [0..5] of string;
  ConnectionString:string;
  check:integer;
    { Public declarations }
  end;

var
     Form27: TForm27;
    

implementation

uses StartTest,Unit16, Unit62, Unit63, Unit3, Unit8, Config;

{$R *.dfm}

procedure TForm27.Button2Click(Sender: TObject);
begin
Form27.Close;
end;

procedure TForm27.BitBtn1Click(Sender: TObject);
begin
Application.MessageBox('"Автоматизированная система психологического тестирования"'  + #13#10 + 'Все права защищены © Тищенко А.И., 2012-2015' + #13#10  + 'CopyRight © Tishchenko A.I., 2012-2015' + #13#10 + 'Версия: 10.586.71' ,'Информация');
end;

procedure TForm27.Button1Click(Sender: TObject);
begin
Form27.visible:=false;
Form8.show;

end;

procedure TForm27.Button4Click(Sender: TObject);
begin
  Form27.visible:=false;
Form63.show;


end;


procedure TForm27.Button3Click(Sender: TObject);
begin
Form27.visible:=false;
Form3.show;

end;

procedure TForm27.FormCreate(Sender: TObject);
var
i:integer;
config_ini, sel:TextFile;
text:string;
begin
i:=0;
check:=0;
AssignFile(sel, Extractfilepath(application.ExeName) + 'Defender\Key\Sel.ini');
reset(sel);
ReadLn(sel, text);
CloseFile(sel);
if text = 'Сетевая' then
  begin
    AssignFile(config_ini, Extractfilepath(application.ExeName) + 'Defender\Key\Config.ini');
    reset(config_ini);
    while not Eof(config_ini) do
      begin
        ReadLn(config_ini, config_mas[i]);
        i:=i+1;
      end;
     CloseFile(config_ini);
     ConnectionString:= 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties=DSN=' + config_mas[0] + ';SERVER=' + config_mas[1] + ';UID=' + config_mas[2] + ';DATABASE=' + config_mas[3] +';PORT=' + config_mas[4] + ';';
     Button2.Enabled:= True;
     check:=1;

    end
else
begin
ConnectionString:= 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + Extractfilepath(application.ExeName) + 'DataBase\DataBase.mdb;Persist Security Info=False;';
check:=2;
end;
end;


end.

