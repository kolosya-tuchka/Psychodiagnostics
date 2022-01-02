unit Unit78;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm78 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form78: TForm78;

implementation

uses Unit27, StartTest, Unit38, Unit8, SelectCourse, TestQueue;

{$R *.dfm}

procedure TForm78.Button1Click(Sender: TObject);
begin
  Form78.hide;
  Form2.Show;
end;

procedure TForm78.Button2Click(Sender: TObject);
begin
 Form78.hide;
 if (sctCourse <> nil)
  then freeandnil(sctCourse);
 sctCourse := TForm83.Create(nil);
 sctCourse.Label3.Caption:=Label2.Caption;
 sctCourse.ShowModal;
end;

procedure TForm78.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm78.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form27.Show;
end;

procedure TForm78.FormShow(Sender: TObject);
begin
  if (TestsQueue <> nil) then TestsQueue.Close;
end;

end.
