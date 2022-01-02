unit TestQueue;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm84 = class(TForm)
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
   cur, qsize: Integer;
   queue: array of TLabel;
    { Public declarations }
  end;

var
  TestsQueue: TForm84;

implementation

Uses Unit38;

{$R *.dfm}

procedure TForm84.FormCreate(Sender: TObject);
begin
  Show;
end;

procedure TForm84.Button1Click(Sender: TObject);
var i: Integer;
begin
  Form38.cascade := true;
  Form38.Button2Click(queue[cur]);
  Form38.Hide;
  Label3.Caption := queue[cur].Caption;
  Button1.Enabled := false;
end;

end.
