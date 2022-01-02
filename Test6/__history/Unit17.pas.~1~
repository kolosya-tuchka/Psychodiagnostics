unit Unit17;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm17 = class(TForm)
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

const N=88;

var
  Form17: TForm17;
  i :Integer;
  dem,zas,ped,voz,gip,dis,tre,ekz,emot,cik :Integer;

  Results :Array[1..N] of Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques :string;
  medium :REAL;
  mQues, Papka: string;


implementation

uses Unit18, Unit28, Unit2;

{$R *.dfm}
procedure TForm17.Init;
begin
   for i:=0 to n do
   results[i]:=0;

   fname:=ExtractFilePath(Application.ExeName) +'Test6\VOPROS.txt';
   i:=1;
   AssignFile(f,fname);
   Reset(f);
   readln(f,Ques);
   Question.Caption:=Ques;
   Caption:='Вопрос 1 из '+IntToStr(n);
   i:=1;
   Button1.Enabled:=true;
   Button2.Enabled:=true;
end;

procedure TForm17.FormCreate(Sender: TObject);
begin
   Init;
end;

procedure Way(A:string);
begin
   papka:=ExtractFilePath(Application.ExeName) +'Test6/';
   Form18.Memo4.Lines.LoadFromFile(papka+A+'.txt');
   Form18.Memo2.Lines.AddStrings(Form18.Memo4.Lines);
   Form18.Memo2.Lines.Append(chr(13));
end;

procedure Way2(A:string);
begin
   papka:=ExtractFilePath(Application.ExeName) +'Test6/';
   Form18.Memo4.Lines.LoadFromFile(papka+A+'.txt');
   Form18.Memo3.Lines.AddStrings(Form18.Memo4.Lines);
   Form18.Memo3.Lines.Append(chr(13));
end;

procedure Obrabotka;
var
myDate:string;
begin
   dem:=0;
   zas:=0;
   ped:=0;
   voz:=0;
   gip:=0;
   dis:=0;
   tre:=0;
   ekz:=0;
   emot:=0;
   cik:=0;

   For i:=1 to N do
     case i of

7,19,22,29,41,44,63,66,73,85,88: If results[i]=1 then dem:=dem+1;
51:                              If results[i]=0 then dem:=dem+1;

2,15,24,34,37,56,68,78,81: If results[i]=1 then zas:=zas+1;
12,46,59:                  If results[i]=0 then zas:=zas+1;

4,14,17,26,39,48,58,61,70,80,83: If results[i]=1 then ped:=ped+1;
36:                              If results[i]=0 then ped:=ped+1;

8,20,30,42,52,64,74,86:  If results[i]=1 then voz:=voz+1;
1,11,23,33,45,55,67,77:  If results[i]=1 then gip:=gip+1;
6,18,28,40,50,62,72,84:  If results[i]=1 then cik:=cik+1;
9,21,43,75,87:           If results[i]=1 then dis:=dis+1;
10,32,54,76:             If results[i]=1 then ekz:=ekz+1;

16,27,38,49,60,71,82:  If results[i]=1 then tre:=tre+1;
5:                     If results[i]=0 then tre:=tre+1;

3,13,35,47,57,69,79:  If results[i]=1 then emot:=emot+1;
25:                   If results[i]=0 then emot:=emot+1;

   end; //of Case

   dem:=dem*2;
   zas:=zas*2;
   ped:=ped*2;
   voz:=voz*3;
   gip:=gip*3;
   dis:=dis*3;
   tre:=tre*3;
   ekz:=ekz*6;
   emot:=emot*3;
   cik:=cik*3;

 If dem>19 then Way('Dem');
 If zas>19 then Way('Zas');
 If ped>19 then Way('Ped');
 If voz>19 then Way('Voz');
 If gip>19 then Way('Gip');
 If dis>13 then Way('Dis');
 If tre>19 then Way('Tre');
 If ekz>19 then Way('Ekz');
 If emot>19 then Way('Emot');
 If cik>19 then Way('Cik');
 If Form18.Memo4.SelLength=0 then Way('Nothing');

 If (dem>14) and (dem<20) then Way2('Dem');
 If (zas>14) and (zas<20) then Way2('Zas');
 If (ped>14) and (ped<20) then Way2('Ped');
 If (voz>14) and (voz<20) then Way2('Voz');
 If (gip>14) and (gip<20) then Way2('Gip');
 If (dis>10) and (dis<14) then Way2('Dis');
 If (tre>14) and (tre<20) then Way2('Tre');
 If (ekz>14) and (ekz<20) then Way2('Ekz');
 If (emot>14) and (emot<20) then Way2('Emot');
 If (cik>14) and (cik<20) then Way2('Cik');
 If Form18.Memo3.SelLength=0 then Way2('Nothing2');

 Form18.dem:=dem;
 Form18.zas:=zas;
 Form18.ped:=ped;
 Form18.voz:=voz;
 Form18.gip:=gip;
 Form18.dis:=dis;
 Form18.tre:=tre;
 Form18.ekz:=ekz;
 Form18.emot:=emot;
 Form18.cik:=cik;
 Form18.Memo1.Clear;
 myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
 Form18.Label8.Caption:=myDate;
 Form18.Memo1.Lines.Add('Время прохождения: ' + Form18.label8.caption);
 Form18.Memo1.Lines.Add(Form18.label6.caption);
 Form18.Memo1.Lines.Add('Пользователь: ' + Form2.label3.caption);
 Form18.Memo1.Lines.Add('Описание: ' + Form18.label1.caption);
 Form18.Memo1.Lines.Add('Результат: ');
 Form18.Memo1.Lines.AddStrings(Form18.Memo2.Lines);
 Form18.Memo1.Lines.AddStrings(Form18.Memo3.Lines);
 for i:=1 to 88 do
  begin
  Form18.massiv[i]:=Results[i];
  end;
 Form18.Show;
 Form17.hide;
end;

procedure TForm17.Button1Click(Sender: TObject);
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
      Button1.Enabled:=false;
      Button2.Enabled:=false;
      OBRABOTKA;
  end;
end;

procedure TForm17.Button2Click(Sender: TObject);
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


procedure TForm17.FormPaint(Sender: TObject);
begin
     {sky := TBitMap.Create;
     sky.LoadFromFile('rakurs.bmp');
     Form1.Canvas.Draw(0,0,sky);      // отрисовка фона
     sky.free;}

end;



procedure TForm17.N2Click(Sender: TObject);
begin
   Init;
end;

procedure TForm17.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm17.Button7Click(Sender: TObject);
begin
form2.show;
Form17.close;
end;

procedure TForm17.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm17.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;

end;

end.
