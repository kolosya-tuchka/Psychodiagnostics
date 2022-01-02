unit Unit52;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm52 = class(TForm)
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel5Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
   
    private
    { Private declarations }
  public
    { Public declarations }
      porka:array [1..8]  of string;
     __number:integer;
     _index:integer;
  end;

var
  Form52: TForm52;

implementation

uses Unit53, Unit2, Unit39, Unit60;

{$R *.dfm}


procedure TForm52.FormCreate(Sender: TObject);
var k,i:integer;
Ti:TImage;
begin
  for i := 0 to PageControl1.PageCount-1 do
      PageControl1.Pages[i].TabVisible := false;
    for k:=1 to 8 do
      begin
         Ti:=findcomponent('image' + inttostr(k)) as TImage;
         if Ti<> nil then begin
          Ti.Canvas.Brush.Color:= RGB(255,255,255);
          Ti.Show;
         end;

      end;
     __number := 0;
     _index:=0;
    PageControl1.ActivePageIndex :=0;

end;

procedure TForm52.Button2Click(Sender: TObject);
var i,j:integer;
myDate:string;
begin
  for i:=1 to 8 do
    Form53.porka[i]:=porka[i];
    Form53.Label1.Caption:=Form52.Label2.Caption;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form53.Label4.Caption:=myDate;
form52.Hide;
form53.show;
Form53.Memo1.Clear;
Form53.Memo2.Clear;
Form53.PageControl1.ActivePageIndex:=1;
end;

procedure TForm52.Button3Click(Sender: TObject);
begin
form2.show;
form52.Close;
end;

procedure TForm52.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;
end;

procedure TForm52.Panel5Click(Sender: TObject);
var
  checked: Tradiobutton;
  pnl:TPanel;
  index:integer;
  labels:TLabel;
begin
     if Sender = Panel1 then
        begin
          labels:=label17;
          pnl:= panel1;
          __number:=__number+1;
          index:=1;
          porka[__number]:='1';
        end;
     if Sender = Panel2 then
        begin
          labels:=label18;
          pnl:= panel2;
          __number:=__number+1;
          index:=2;
          porka[__number]:='2';
        end;
     if Sender = Panel3 then
        begin
          labels:=label14;
          pnl:= panel3;
          __number:=__number+1;
          index:=3;
          porka[__number]:='3';
        end;
     if Sender = Panel4 then
        begin
          labels:=label19;
          pnl:= panel4;
          __number:=__number+1;
          index:=4;
          porka[__number]:='4';
        end;
     if Sender = Panel5 then
        begin
          labels:=label13;
          pnl:= panel5;
          __number:=__number+1;
          index:=5;
          porka[__number]:='5';
        end;
    if Sender = Panel6 then
        begin
          labels:=label20;
          pnl:= panel6;
          __number:=__number+1;
          index:=6;
          porka[__number]:='6';
        end;
    if Sender = Panel7 then
        begin
          labels:=label15;
          pnl:= panel7;
          __number:=__number+1;
          index:=7;
          porka[__number]:='7';
        end;
    if Sender = Panel8 then
        begin
          labels:=label16;
          pnl:= panel8;
          __number:=__number+1;
          index:=8;
          porka[__number]:='0';
        end;
    labels.visible:=false;
    pnl.Visible:=false;

if __number = 8 then
  begin
    button2.Enabled:=true;
  end;
end;

procedure TForm52.Panel9Click(Sender: TObject);
var
_label:Tlabel;
_pnl:TPanel;
  begin
  if Sender = Panel9 then
    begin
      _label:=label5;
      _pnl:= panel9;
      _index:=_index+1;
    end;
  if Sender = Panel10 then
    begin
      _label:=label6;
      _pnl:= panel10;
      _index:=_index+1;
    end;

  if Sender = Panel11 then
    begin
      _label:=label7;
      _pnl:= panel11;
      _index:=_index+1;
    end;

  if Sender = Panel12 then
    begin
      _label:=label8;
      _pnl:= panel12;
      _index:=_index+1;
    end;

  if Sender = Panel13 then
    begin
      _label:=label9;
      _pnl:= panel13;
      _index:=_index+1;
    end;

  if Sender = Panel14 then
    begin
      _label:=label10;
      _pnl:= panel14;
      _index:=_index+1;
    end;

  if Sender = Panel15 then
    begin
      _label:=label11;
      _pnl:= panel15;
      _index:=_index+1;
    end;

  if Sender = Panel16 then
    begin
      _label:=label12;
      _pnl:= panel16;
      _index:=_index+1;
    end;

_label.visible:=false;
_pnl.Visible:=false;


if _index = 8 then begin
    Form52.hide;
    Form60:=nil;
    try
      Form60:=TForm60.Create(nil);
      form52.hide;
      Form60.Showmodal;
      Form60.Animate1.Active:=True;
      finally
      FreeAndNil(Form60);
    end;
Form52.Show;
PageControl1.ActivePageIndex :=1;
end;
end;


end.
