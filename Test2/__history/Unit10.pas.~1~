unit Unit10;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm10 = class(TForm)
    Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    Panel1: TPanel;
    Button5: TButton;
    Button6: TButton;
    Memo1: TMemo;
    Button7: TButton;
    Label4: TLabel;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
      private
    { Private declarations }
  public
  Procedure Init;
    { Public declarations }
  end;

const N=101;

var
  Form10: TForm10;
  i, psyho, extra, neyro, iskreno :Integer;

  Results :Array[1..N] of Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques :string;
  medium :REAL;
  mQues: string;


implementation

uses Unit11, Unit28, Unit2, Unit18;

{$R *.dfm}

procedure TForm10.Init;
begin
   panel1.Visible:=false;
   button5.Visible:=false;
   button6.Visible:=false;
   Memo1.Visible:=false;
   for i:=0 to n do
   results[i]:=0;

   fname:=ExtractFilePath(Application.ExeName) +'Test2\VOPROS.txt';
   i:=1;
   AssignFile(f,fname);
   Reset(f);
   readln(f,Ques);
   Question.Caption:=Ques;
   Caption:='Вопрос 1 из '+IntToStr(n);
   i:=1;
   psyho:=0;
   extra:=0;
   neyro:=0;
   iskreno:=0;
   RadioGroup1.ItemIndex:=0;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
   Init;
end;

procedure TForm10.Button1Click(Sender: TObject);
var
 s,myDate:string;
begin
Caption:='Вопрос '+IntToStr(i+1)+' из '+IntToStr(n);
        if  radiogroup1.ItemIndex=0 then results[i]:=1 else results[i]:=0;
   If i>=N then
      begin
          {ШКАЛА ПСИХОТИЗМА - psyho
          ШКАЛА ЭКСТРАВЕРСИИ - ИНТРОВЕРСИИ - extra
          ШКАЛА ИСКРЕННОСТИ - iskreno
          для положительных ответов  =1
          для отрицательных  =0
          ШКАЛА НЕЙРОТИЗМА - neyro
          только для положительных ответов  =1}
      psyho:=0;
      extra:=0;
      neyro:=0;
      iskreno:=0;

      For i:=1 to N do
         case i of

14,23,27,31,35,47,51,55,71,85,88,93,97: If results[i]=1 then psyho:=psyho+1;
2,6,9,11,19,39,43,59,63,67,78,100:      If results[i]=0 then psyho:=psyho+1;

1,5,10,15,18,26,34,38,42,50,54: If results[i]=1 then extra:=extra+1;
58,62,66,70,74,77,81,90,92,96:  If results[i]=1 then extra:=extra+1;
22,30,46,84:                    If results[i]=0 then extra:=extra+1;

3,7,12,16,20,24,28,32,36,40,44,48,52: If results[i]=1 then neyro:=neyro+1;
56,60,64,68,72,75,79,83,86,89,94,98:  If results[i]=1 then neyro:=neyro+1;

13,21,33,37,61,73,87,99:  If results[i]=1 then iskreno:=iskreno+1;
4,8,17,25,29,41,45,49,53: If results[i]=0 then iskreno:=iskreno+1;
57,65,69,76,80,82,91,95:  If results[i]=0 then iskreno:=iskreno+1;

      end; //of Case
      If iskreno>10 then
         begin
            panel1.Visible:=true;
            button5.Visible:=true;
            button6.Visible:=true;
            Memo1.Visible:=true;
            Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\lier.txt');
         end
      else
         begin
         ShowMessage('Поздравляем, Вы успешно прошли тест!');

         Form11.edit1.Text:=IntToStr(psyho);
         Form11.edit2.Text:=IntToStr(extra);
         Form11.edit3.Text:=IntToStr(neyro);
         Form11.edit4.Text:=IntToStr(iskreno);

         If (neyro>=14) and (extra<=12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\melan.txt'); //меланхолик
         If (neyro>=14) and (extra>12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\holer.txt'); //холерик
         If (neyro<14) and (extra<=12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\fleg.txt'); //флегматик
         If (neyro<14) and (extra>12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\sang.txt'); //сангвиник
        Form11.Memo2.Clear;
        myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
        Form11.Label5.Caption:=myDate;
        Form11.Memo2.Lines.Add('Шкала психотизма: ' + Form11.Edit1.Text);
        Form11.Memo2.Lines.Add('Шкала экстраверсии\интроверсии: ' + Form11.Edit2.Text);
        Form11.Memo2.Lines.Add('Шкала нейротизма: ' + Form11.Edit3.Text);
        Form11.Memo2.Lines.Add('Шкала искренности: ' + Form11.Edit4.Text);
        Form11.Memo2.Lines.AddStrings(Form11.Memo1.Lines);
        for i:=1 to 101 do
        begin
        Form11.massiv[i]:=results[i];
        end;
         Form11.Show;
         Form10.hide;
         end;
      end
   else
      begin
        //Caption:='Вопрос '+IntToStr(i+1)+' из '+IntToStr(n);
       // if  radiogroup1.ItemIndex=0 then results[i]:=1 else results[i]:=0;
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
      end;
end;

procedure TForm10.Button2Click(Sender: TObject);
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

procedure TForm10.Button3Click(Sender: TObject);
begin
form11.Show;
Form10.Close;
end;

procedure TForm10.FormPaint(Sender: TObject);
begin
     {sky := TBitMap.Create;
     sky.LoadFromFile('rakurs.bmp');
     Form1.Canvas.Draw(0,0,sky);      // отрисовка фона
     sky.free;}

end;

procedure TForm10.N4Click(Sender: TObject);
begin
Form10.close;
end;

procedure TForm10.N2Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm10.Button1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);


begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm10.Button6Click(Sender: TObject);
var
 myDate:string;
begin
Form11.edit1.Text:=IntToStr(psyho);
Form11.edit2.Text:=IntToStr(extra);
Form11.edit3.Text:=IntToStr(neyro);
Form11.edit4.Text:=IntToStr(iskreno);

If (neyro>=14) and (extra<=12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\melan.txt'); //меланхолик
If (neyro>=14) and (extra>12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\holer.txt'); //холерик
If (neyro<14) and (extra<=12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\fleg.txt'); //флегматик
If (neyro<14) and (extra>12) then Form11.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test2\sang.txt'); //сангвиник
 Form11.Memo2.Clear;
        myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
        Form11.Label5.Caption:=myDate;
        Form11.Memo2.Lines.Add('Шкала психотизма: ' + Form11.Edit1.Text);
        Form11.Memo2.Lines.Add('Шкала экстраверсии\интроверсии: ' + Form11.Edit2.Text);
        Form11.Memo2.Lines.Add('Шкала нейротизма: ' + Form11.Edit3.Text);
        Form11.Memo2.Lines.Add('Шкала искренности: ' + Form11.Edit4.Text);
        Form11.Memo2.Lines.AddStrings(Form11.Memo1.Lines);

        for i:=1 to 101 do
        begin
        Form11.massiv[i]:=results[i];
    end;
 form10.hide;
 Form11.Show;

end;

procedure TForm10.Button5Click(Sender: TObject);
begin
   Init;
end;

procedure TForm10.Button7Click(Sender: TObject);
begin
form2.show;
Form10.close;
end;

procedure TForm10.N1Click(Sender: TObject);
begin
   Init;
end;



procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;

end;

end.
