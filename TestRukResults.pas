unit TestRukResults;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TTestResults = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  massiv: array  of integer;
    { Public declarations }
  end;

var
  TestResults: TTestResults;

implementation

uses Test, Unit62, Unit7;

{$R *.dfm}

procedure TTestResults.FormShow(Sender: TObject);
var sum,i:Integer;

begin
sum:=0;
   for i:=1 to TestRuk.N do
   begin
    sum:=sum+massiv[i-1];
   end;
   Label2.Caption:=intTostr(sum);
end;

procedure TTestResults.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form62.show;
Form7.button_select:=0;
end;

procedure TTestResults.Button1Click(Sender: TObject);
begin
Close;
end;

end.
