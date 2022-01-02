unit Config;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TConfig_set = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_set: TConfig_set;

implementation

uses Unit27;

{$R *.dfm}

procedure TConfig_set.Button1Click(Sender: TObject);
var config_ini, sel:TextFile;

begin
if radiobutton1.Checked then
begin
if ((Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') or (Edit5.Text = '')) then
  Application.MessageBox('Все поля должны быть заполнены','Внимание')
  else
    begin
      try
      AssignFile(config_ini, Extractfilepath(application.ExeName) + 'Defender\Key\Config.ini');
      ReWrite(config_ini);
      WriteLn(config_ini, Edit1.Text);
      WriteLn(config_ini, Edit2.Text);
      WriteLn(config_ini, Edit3.Text);
      WriteLn(config_ini, Edit4.Text);
      WriteLn(config_ini, Edit5.Text);
      CloseFile(config_ini);

      AssignFile(sel, Extractfilepath(application.ExeName) + 'Defender\Key\Sel.ini');
      ReWrite(sel);
      Write(sel, 'Сетевая');
      CloseFile(sel);

      Application.MessageBox('Настройки сохранены, перезапустите программу, чтобы изменения вступили в силу','Внимание');
      Config_set.Close;
      except
      on e:Exception do
      Application.MessageBox('Ошибка при работе с файлом настроек','Ошибка');
      end;
    end;
end
else
begin
AssignFile(sel, Extractfilepath(application.ExeName) + 'Defender\Key\Sel.ini');
ReWrite(sel);
Write(sel, 'Локальная');
CloseFile(sel);
Application.MessageBox('Настройки сохранены, перезапустите программу, чтобы изменения вступили в силу','Внимание');
Config_set.Close;
end;
end;

procedure TConfig_set.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
end;


procedure TConfig_set.RadioButton2Click(Sender: TObject);
begin

  Edit1.Enabled:= False;
  Label1.Enabled:= False;
  Edit2.Enabled:= False;
  Label2.Enabled:= False;
  Edit3.Enabled:= False;
  Label3.Enabled:= False;
  Edit4.Enabled:= False;
  Label4.Enabled:= False;
  Edit5.Enabled:= False;
  Label5.Enabled:= False;
  Button2.Enabled:= True;

end;

procedure TConfig_set.RadioButton1Click(Sender: TObject);
var config_ini:TextFile;
edit:string;
e: TEdit;
i:integer;
begin
    i:=1;
    AssignFile(config_ini, Extractfilepath(application.ExeName) + 'Defender\Key\Config.ini');
    reset(config_ini);
    while not Eof(config_ini) do
      begin
        e:=(FindComponent('Edit'+IntToStr(i)) as TEdit);
        ReadLn(config_ini, edit);
        e.Text:=edit;
        i:=i+1;
      end;
    CloseFile(config_ini);
  Edit1.Enabled:= True;
  Label1.Enabled:= True;
  Edit2.Enabled:= True;
  Label2.Enabled:= True;
  Edit3.Enabled:= True;
  Label3.Enabled:= True;
  Edit4.Enabled:= True;
  Label4.Enabled:= True;
  Edit5.Enabled:= True;
  Label5.Enabled:= True;
  Button2.Enabled:= True;
end;

procedure TConfig_set.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('Перед закрытием окна вы сохранили изменения? Если сохранили, то нажмите "Да", иначе нажмите "Нет" и сохраните настройки подключения к базе','Внимание',MB_YESNO)=IDNO then
  Action:= caNone
  else
  begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  end;
end;

procedure TConfig_set.FormShow(Sender: TObject);
var config_ini:TextFile;
edit:string;
e: TEdit;
i:integer;
begin
if Form27.check = 1 then
  begin
    i:=1;
    radiobutton1.Checked:= True;
    AssignFile(config_ini, Extractfilepath(application.ExeName) + 'Defender\Key\Config.ini');
    reset(config_ini);
    while not Eof(config_ini) do
      begin
        e:=(FindComponent('Edit'+IntToStr(i)) as TEdit);
        ReadLn(config_ini, edit);
        e.Text:=edit;
        i:=i+1;
      end;
    CloseFile(config_ini);
   end
  else
radiobutton2.Checked:=True;
end;

end.

