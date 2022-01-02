unit Unit6;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
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
  Form6: TForm6;

implementation

uses Unit1, StartTest;

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'instruction.txt');
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form1.Init;
Form6.hide;
Form1.Show;

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form2.show;
Form6.Close;

end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.show;


end;

end.
