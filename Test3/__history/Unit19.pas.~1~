unit Unit19;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm19 = class(TForm)
    Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button7: TButton;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure FormPaint(Sender: TObject);
   
    procedure N2Click(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button7Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
    { Private declarations }
  public procedure Init;
    { Public declarations }
  end;

const N=60;

var
  Form19: TForm19;
  i :Integer;
  depend, independ, speek, unspeek, fightyes, fightno :Integer;

  Results :Array[1..N] of Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques, papka :string;
  medium :REAL;
  mQues: string;


implementation

uses Unit18, Unit25, Unit28, Unit2;

{$R *.dfm}
procedure TForm19.Init;
begin
   for i:=0 to n do
   results[i]:=0;

   fname:=ExtractFilePath(Application.ExeName) +'Test3\VOPROS.txt';
   i:=1;
   AssignFile(f,fname);
   Reset(f);
   readln(f,Ques);
   Question.Caption:=Ques;
   Caption:='Вопрос 1 из '+IntToStr(n);
   i:=1;
   button1.Enabled:=true;
   button2.Enabled:=true;
end;

procedure TForm19.FormCreate(Sender: TObject);
begin
   Init;
end;

procedure Way(A:string);
begin
   papka:=ExtractFilePath(Application.ExeName) +'Test3/';
   Form25.Memo1.Lines.LoadFromFile(papka+A+'.txt');


end;
procedure Obrabotka;
var
myDate:string;

begin
   depend:=0;
   independ:=0;
   speek:=0;
   unspeek:=0;
   fightyes:=0;
   fightno:=0;

   For i:=1 to N do
     case i of

3,9,15,21,27,39,45,51,54:     If results[i]=1 then depend:=depend+1 else independ:=independ+1;
6,12,18,24,30,36,42,48,57,60: If results[i]=1 then independ:=independ+1 else depend:=depend+1;

5,7,13,19,25,31,37,43,49,52:  If results[i]=1 then speek:=speek+1 else unspeek:=unspeek+1;
4,10,16,22,28,34,40,46,55,58: If results[i]=1 then unspeek:=unspeek+1 else speek:=speek+1;

1,11,17,23,29,35,41,47,56,59: If results[i]=1 then fightyes:=fightyes+1 else fightno:=fightno+1;
2,8,14,20,26,32,38,44,50,53:  If results[i]=1 then fightno:=fightno+1 else fightyes:=fightyes+1;
end; //of Case

If depend>16 then Way('depend');
If independ>16 then Way('independ');
If speek>16 then Way('speek');
If unspeek>16 then Way('unspeek');
If fightyes>16 then Way('fightyes');
If fightno>16 then Way('fightno');
If Form25.Memo1.GetTextLen=0 then Way('Nothing');
 myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
 Form25.Label3.Caption:=myDate;
 for i:=1 to 60 do
  begin
  Form25.massiv[i]:=Results[i];
  end;
 Form25.Show;
Form19.hide;
end;

procedure TForm19.Button1Click(Sender: TObject);
begin
If i<N then
  begin
    If radiogroup1.ItemIndex=0 then results[i]:=1 else results[i]:=0;

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
  end
Else
  begin
      If radiogroup1.ItemIndex=0 then results[i]:=1 else results[i]:=0;
      ShowMessage('Поздравляем, Вы успешно прошли тест!');
      button1.Enabled:=false;
      button2.Enabled:=false;
      CloseFile(f);
      OBRABOTKA;
  end;
end;

procedure TForm19.Button2Click(Sender: TObject);
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
   If results[i]=0 then radiogroup1.ItemIndex:=1;
   If results[i]=1 then radiogroup1.ItemIndex:=0;
end;

procedure TForm19.FormPaint(Sender: TObject);
begin
     {sky := TBitMap.Create;
     sky.LoadFromFile('rakurs.bmp');
     Form1.Canvas.Draw(0,0,sky);      // отрисовка фона
     sky.free;}
end;


procedure TForm19.N2Click(Sender: TObject);
begin
   Init;
end;


procedure TForm19.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm19.Button7Click(Sender: TObject);
begin
form2.show;
Form19.close;
end;

procedure TForm19.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm19.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm19.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;

end;

end.
