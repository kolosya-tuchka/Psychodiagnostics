unit Key;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, sLabel, registry;


type
  TForm9 = class(TForm)
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sButton1: TsButton;
    sButton2: TsButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses PW;

{$R *.dfm}

procedure TForm9.sButton1Click(Sender: TObject);
var
  keyString, accessCodeString: string;
begin
  if((trim(sEdit2.Text) <> '') and (trim(sEdit3.Text) <> ''))then begin
    keyString := sEdit1.Text;
    accessCodeString := sEdit2.Text + sEdit3.Text;
    if CheckAccessCode(keyString, accessCodeString) then begin
      WriteAccessCode(accessCodeString);
      ShowMessage('СОВПАДЕНИЕ КЛЮЧА');
    end
    else begin
      ShowMessage('Пароль не подходит');
    end;
  end
  else begin
    ShowMessage('Вы не ввели пароль, попробуйте ещё раз, либо попробуйте удалить REG.KEY');
   Application.Terminate;
  end;
//  end
 // else begin
   // ShowMessage('Вы не ввели пароль, попробуйте ещё раз, либо попробуйте удалить REG.KEY');
 //    Application.Terminate;
//  end;
//  end;
end;

procedure TForm9.sButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
