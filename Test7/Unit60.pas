unit Unit60;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm60 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    Animate1: TAnimate;
    Label3: TLabel;
    Button2: TButton;

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Animate1Stop(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    Time_Start:TDateTime;
    Time_Stop:TDateTime;
    { Private declarations }
  public
     { Public declarations }
  end;

var
  Form60: TForm60;
  implementation


{$R *.dfm}




procedure TForm60.FormCreate(Sender: TObject);
begin
    Animate1.FileName:= (ExtractFilePath(Application.ExeName) +'clock.avi');
    Animate1.Active:= True;
    Button1.Enabled:= False;
    Timer1.Enabled:=True;
    Time_Start:= Now;

end;

procedure TForm60.Button1Click(Sender: TObject);
begin
    Button1.Enabled:= False;
    Form60.Close;
end;

procedure TForm60.Animate1Stop(Sender: TObject);
begin
  Timer1.Enabled:= False;
  Button1.Enabled:= True;

end;

procedure TForm60.Timer1Timer(Sender: TObject);
var
  DateDiff:TDateTime;
begin
    Time_Stop:= Now;
    DateDiff:=(Time_Stop-Time_Start);
    Label1.Caption:=TimeToStr(DateDiff);
end;

procedure TForm60.Button2Click(Sender: TObject);
begin
    Timer1.Enabled:= False;
    Form60.Close;
end;

end.
