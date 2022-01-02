unit Defender;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm61 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form61: TForm61;

implementation
uses PW, Unit27;
{$R *.dfm}

procedure TForm61.Button1Click(Sender: TObject);
 var
  keyString, accessCodeString: string;
begin
  if((trim(Edit2.Text) <> '') and (trim(Edit3.Text) <> ''))then begin
    keyString := Edit1.Text;
    accessCodeString := Edit2.Text + Edit3.Text;
    if CheckAccessCode(keyString, accessCodeString) then begin
      WriteAccessCode(accessCodeString);
      Application.MessageBox('Совпадение ключа. Дождитесь запуска программы!', ' Подтверждение');
      //Exit;
      Form61.Close;
    end
    else begin
      ShowMessage('Пароль не подходит');
     end;
  end
  else begin
   ShowMessage('Вы не ввели пароль, попробуйте ещё раз, либо попробуйте удалить REG.KEY');
  end;
end;

procedure TForm61.Button2Click(Sender: TObject);
var
 H             : HWND;
 PrID          : Cardinal;
 ProcessHandle : THandle;   
begin
  H:=FindWindow(nil,'Project1');
 GetWindowThreadProcessID(H, @PrID);
 // ????????? Handle
 ProcessHandle := OpenProcess(PROCESS_TERMINATE, FALSE, PrId);
 TerminateProcess(ProcessHandle,0);
 // ????????? Handle
 CloseHandle(ProcessHandle);

end;

end.
