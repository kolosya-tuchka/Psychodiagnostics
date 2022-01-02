unit Unit23;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm23 = class(TForm)
    Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    RadioGroup2: TRadioGroup;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    
    procedure FormPaint(Sender: TObject);

    procedure N2Click(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
    { Private declarations }
  public procedure Init;
    { Public declarations }
  end;

const N=40;

var
  Form23: TForm23;
  i, itog :Integer;

  Results :Array[1..N] of Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques :string;
  medium :REAL;
  mQues: string;

implementation

uses Unit26, Unit28, Unit2;

{$R *.dfm}
procedure TForm23.Init;
begin
   for i:=0 to n do
   results[i]:=1;

   fname:=ExtractFilePath(Application.ExeName) +'Test9\VOPROS.txt';
   i:=1;
   AssignFile(f,fname);
   Reset(f);
   readln(f,Ques);
   Question.Caption:=Ques;
   Caption:='Вопрос 1 из '+IntToStr(n);
   i:=1;
   RadioGroup1.Visible:=true;
   RadioGroup2.Visible:=false;
end;

procedure TForm23.FormCreate(Sender: TObject);
begin
   Init;
end;

procedure Obrabotka;
var RTsum1, RTsum2, RT, LTsum1, LTsum2, LT:Integer;
myDate:string; 
begin

RTsum1:=0;
RTsum2:=0;
RT:=0;

LTsum1:=0;
LTsum2:=0;
LT:=0;

  For i:=1 to N do
  case i of
    3,4,6,7,9,12,13,14,17,18: RTsum1:=RTsum1+results[i];
    1,2,5,8,10,11,15,16,19,20: RTsum2:=RTsum2+results[i];
  end;

  RT:=RTsum1-RTsum2+35;

  For i:=1 to N do
  case i of
    22,23,24,25,28,29,31,32,34,35,37,38,40: LTsum1:=LTsum1+results[i];
    21,26,27,30,33,36,39: LTsum2:=LTsum2+results[i];
  end;

  LT:=LTsum1-LTsum2+35;

Form26.Edit1.Text:=IntToStr(RT);
Form26.Edit2.Text:=IntToStr(LT);
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form26.Label8.Caption:=myDate;
  for i:=1 to 40 do
    begin
      Form26.massiv[i]:=results[i];
    end;
  Form26.Show;
Form23.hide;
end;

procedure TForm23.Button1Click(Sender: TObject);
begin
If i<N then
  begin
    If i<21 then results[i]:=radiogroup1.ItemIndex+1
    Else results[i]:=radiogroup2.ItemIndex+1;

    i:=i+1;
    Reset(f);
    while NOT EOF(f) do   //poka nomer voprosa ne sovpadet c nomerom shaga
      begin
         read(f,medium);
         readln(f,mQues);
         if i=medium then Ques:=mQues;
      end;

    Question.Caption:=IntToStr(i)+Ques;
    Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n);
    if i=21 then
    begin
       RadioGroup2.Visible:=true;
       RadioGroup1.Visible:=false;
    end;
    If i<21 then radiogroup1.ItemIndex:=results[i]-1
    Else radiogroup2.ItemIndex:=results[i]-1;
  end
Else
  begin
      results[i]:=radiogroup2.ItemIndex+1;
      ShowMessage('Поздравляем, Вы успешно прошли тест!');
      OBRABOTKA;
  end;
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
   i:=i-1;
   If i<1 then i:=1;
   Reset(f);
   while NOT EOF(f) do
   begin
      read(f,medium);
      readln(f,mQues);
      if i=medium then Question.Caption:=IntToStr(i)+mQues;
   end;

   Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n);
   if i=20 then
   begin
      RadioGroup1.Visible:=true;
      RadioGroup2.Visible:=false;
   end;
   If i<20 then radiogroup1.ItemIndex:=results[i]-1
   Else radiogroup2.ItemIndex:=results[i]-1;

end;


procedure TForm23.FormPaint(Sender: TObject);
begin
     {sky := TBitMap.Create;
     sky.LoadFromFile('rakurs.bmp');
     Form1.Canvas.Draw(0,0,sky);      // отрисовка фона
     sky.free;}

end;



procedure TForm23.N2Click(Sender: TObject);
begin
   Init;
end;

procedure TForm23.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm23.Button7Click(Sender: TObject);
begin
Form23.close;
end;

procedure TForm23.Button5Click(Sender: TObject);
begin
form23.close;
form2.show;
end;

procedure TForm23.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm23.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm23.FormClose(Sender: TObject; var Action: TCloseAction);
begin

form2.show;
end;

end.
