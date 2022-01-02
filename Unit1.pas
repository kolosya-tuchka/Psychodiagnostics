unit Unit1;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, Data.Win.ADODB, DB, Grids, DBGrids, jpeg;

type
  TForm1 = class(TForm)
    Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button5: TButton;
    RadioGroup2: TRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   
  private
    { Private declarations }
  public procedure Init;
    { Public declarations }
  end;

const N=187;  //номер вопроса из файла

var
  Form1: TForm1;
  i :Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques, Otvet1,Otvet2,Otvet3 :string;

  age, pol :Integer;

  mQues: string;
  mOtvet1, mOtvet2, mOtvet3 :string;

  Results :Array[1..N] of Integer;

  factorA, factorB, factorC, factorE, factorF, factorG :Integer;
  factorH, factorI, factorL, factorM, factorN, factorO :Integer;
  factorQ1, factorQ2, factorQ3, factorQ4 :Integer;

  stanA,stanB,stanC,stanE,stanF,stanG,stanH,stanI,stanL,stanM,stanN,stanO,stanQ1,stanQ2,stanQ3,stanQ4:Integer;
  F1,F2,F3,F4:real;

implementation

uses Unit5, Unit6,Unit35, Unit28, StartTest;

{$R *.dfm}
procedure TForm1.Init;
begin
   Form1.Caption:='Вопрос '+IntToStr(1)+' из '+IntToStr(n+2);
   fname:=ExtractFilePath(Application.ExeName) +'vopr.txt';
   AssignFile(f,fname);
   Reset(f);

   readln(f,Ques);
   Question.Caption:=Ques;
   readln(f,Otvet1);
   Form1.RadioGroup1.Items.Strings[0]:=otvet1;
   readln(f,Otvet2);
   Form1.RadioGroup1.Items.Strings[1]:=otvet2;
   readln(f,Otvet3);
   Form1.RadioGroup1.Items.Strings[2]:=otvet3;
   For i:=1 to N do
   Results[i]:=0;
   button1.Enabled:=true;
   button2.Enabled:=true;
   RadioGroup1.Visible:=true;
   RadioGroup2.Visible:=false;
   i:=1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Init;
end;

//НЕ ИСПОЛЬЗОВАТЬ i ДЛЯ ЦИКЛОВ, Т.К. ЭТО НАКОПИТЕЛЬ ШАГА!!!

function Factors(FactorName: String; Factor: Integer):Integer;
var step, len, value: Integer;
    first, second: Integer;
    str,squery: String;
begin
   first:=0;
   second:=0;
   For step:=1 to 10 do
   begin


    if MyModule.ADOQuery6.Active then
  MyModule.ADOQuery6.Close;
MyModule.ADOQuery6.SQL.Clear;
MyModule.ADOQuery6.SQL.Add('Select Stan'+IntToStr(Step)+' from '+MyModule.ADOTable1.TableName);
MyModule.ADOQuery6.SQL.Add(' where Factor='''+FactorName+'''');
MyModule.ADOQuery6.Open;

      str:=MyModule.ADOQuery6.Fields[0].Asstring;
      len:=length(str);

      if (len=1) or (len=2) then //Если в строке 1 значение и фактор на входе ему равен
      begin
         value:=StrToInt(str);
         if Factor=value then
         begin
            Factors:=step;
            break;
         end;
      end
      else //Обработка строки
      begin
       if (len=3) then //в строке указан диапазон F.e. 0-3
        begin
           first:=StrToInt(copy(str,1,1));
           second:=StrToInt(copy(str,3,1));
//         Form1.Edit3.Text:=IntToStr(first);
//         Form1.Edit4.Text:=IntToStr(second);
        end;

        if (len=4) then //в строке указан диапазон F.e. 9-12
        begin
           first:=StrToInt(copy(str,1,1));
           second:=StrToInt(copy(str,3,2));
        end;

        if (len=5) then //в строке указан диапазон F.e. 13-15
        begin
           first:=StrToInt(copy(str,1,2));
           second:=StrToInt(copy(str,3,2));
        end;

        If (first<=Factor) and (Factor<=second) then
        begin
           Factors:=step;
           break;
        end;
      end; // of Else

   end; // of For 1-10
end;

procedure Obrabotka;
var
myDate:string;
begin
   MyModule.ADOTable1.Active:=false;
   If pol=0 then //women
   begin
      case age of
        0: MyModule.ADOTable1.TableName:='Girl16';
        1: MyModule.ADOTable1.TableName:='Girl19';
        2: MyModule.ADOTable1.TableName:='Girl29';
      end;
   end
   else //men
   begin
      case age of
        0: MyModule.ADOTable1.TableName:='Boys16';
        1: MyModule.ADOTable1.TableName:='Boys18';
        2: MyModule.ADOTable1.TableName:='Boys29';
      end;
   end;
     MyModule.ADOTable1.Open;
   MyModule.ADOQuery6.SQL.Clear;



   stanA:=Factors('A', factorA);
   stanB:=Factors('B', factorB);
   stanC:=Factors('C', factorC);
   stanE:=Factors('E', factorE);
   stanF:=Factors('F', factorF);
   stanG:=Factors('G', factorG);
   stanH:=Factors('H', factorH);
   stanI:=Factors('I', factorI);
   stanL:=Factors('L', factorL);
   stanM:=Factors('M', factorM);
   stanN:=Factors('N', factorN);
   stanO:=Factors('O', factorO);
   stanQ1:=Factors('Q1', factorQ1);
   stanQ2:=Factors('Q2', factorQ2);
   stanQ3:=Factors('Q3', factorQ3);
   stanQ4:=Factors('Q4', factorQ4);

F1:=((38+2*stanL+30+4*stanQ4)-2*(stanC+stanH+stanQ3))/10;
F2:=((2*stanA+3*stanE+4*stanF+5*stanH)-(2*stanQ2+11))/10;
F3:=((77+2*stanC+2*stanE+2*stanF+2*stanN)-(4*stanA+6*stanI+2*stanM))/10;
F4:=((4*stanE+3*stanM+4*stanQ1+4*stanQ2)-(3*stanA+2*stanC))/10;

Form5.stA:=stanA;
Form5.stB:=stanB;
Form5.stC:=stanC;
Form5.stE:=stanE;
Form5.stF:=stanF;
Form5.stG:=stanG;
Form5.stH:=stanH;
Form5.stI:=stanI;
Form5.stL:=stanL;
Form5.stM:=stanM;
Form5.stN:=stanN;
Form5.stO:=stanO;
Form5.stQ1:=stanQ1;
Form5.stQ2:=stanQ2;
Form5.stQ3:=stanQ3;
Form5.stQ4:=stanQ4;
Form5.stF1:=F1;
Form5.stF2:=F2;
Form5.stF3:=F3;
Form5.stF4:=F4;
  Form5.Memo1.Clear;
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form5.Label3.Caption:=myDate;
  Form5.Label1.Caption:= Form1.Label4.Caption;

Form5.Show;
Form1.hide;

end;

procedure TForm1.Button1Click(Sender: TObject);
label vyvod, obr;
var k: integer;
begin
//Form1.Edit2.Text:=IntToStr(i);
   k:=0;
If i<N+3 then
 begin
   If i<N+1 then
    begin
    If radiogroup1.ItemIndex=0 then results[i]:=1;
    If radiogroup1.ItemIndex=1 then results[i]:=2;
    If radiogroup1.ItemIndex=2 then results[i]:=3;
       i:=i+1;
       Reset(f);
       while NOT EOF(f) do   //poka nomer voprosa ne sovpadet c nomerom shaga
         begin
           readln(f,mQues);
           readln(f,motvet1);
           readln(f,motvet2);
           readln(f,motvet3);
 //Чтобы считывались 3-х значные числа, а не только в 1 символ
           //если стоит в начале строки

           If pos(IntToStr(i),mQues)=1 then
            begin
               Ques:=mQues;
               otvet1:=mOtvet1;
               otvet2:=mOtvet2;
               otvet3:=mOtvet3;
               goto vyvod;
            end;
         end; //of While

vyvod:  Question.Caption:=Ques;
        Form1.Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n+2);
        Form1.RadioGroup1.Items.Strings[0]:=Otvet1;
        Form1.RadioGroup1.Items.Strings[1]:=Otvet2;
        Form1.RadioGroup1.Items.Strings[2]:=Otvet3;
        If results[i]<>0 then Form1.RadioGroup1.ItemIndex:=results[i]-1
        else Form1.RadioGroup1.ItemIndex:=0;
    end; //of i<n

    if i=N+2 then
      begin
         age:=RadioGroup1.ItemIndex;
         RadioGroup2.Visible:=true;
         RadioGroup1.Visible:=false;
         Question.Caption:='189. Ваш пол:';
         Form1.Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n+2);
         i:=i+1;
         k:=k+1;
      end;

    if i=N+1 then
      begin
         Form1.RadioGroup1.Items.Strings[0]:='16-18';
         Form1.RadioGroup1.Items.Strings[1]:='19-27';
         Form1.RadioGroup1.Items.Strings[2]:='28-70';
         Question.Caption:='188. Сколько вам лет?';
         Form1.Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n+2);
         i:=i+1;
      end;

    if k=2 then
      begin
         pol:=RadioGroup2.ItemIndex;
         goto obr;
      end;
   end
Else
obr:
    begin
    ShowMessage('Вы успешно прошли тест!');
//    Form1.Image1.Visible:=true;
    Form1.Button1.Enabled:=false;
    Form1.Button2.Enabled:=false;
    factorA:=0;
    factorB:=0;
    factorC:=0;
    factorE:=0;
    factorF:=0;
    factorG:=0;
    factorH:=0;
    factorI:=0;
    factorL:=0;
    factorM:=0;
    factorN:=0;
    factorO:=0;
    factorQ1:=0;
    factorQ2:=0;
    factorQ3:=0;
    factorQ4:=0;
    For i:=1 to N do
      case i of // i - номер вопроса

3,52,101,126,176: begin
                     If results[i]=1 then factorA:=factorA+2;
                     If results[i]=2 then factorA:=factorA+1;
                  end;
26,27,51,76,151: begin
                     If results[i]=2 then factorA:=factorA+1;
                     If results[i]=3 then factorA:=factorA+2;
                 end;

152,177,178:         If results[i]=1 then factorB:=factorB+1;
28,53,54,78,103,128: If results[i]=2 then factorB:=factorB+1;
77,102,127,153:      If results[i]=3 then factorB:=factorB+1;

4,30,55,104,105,130,179:begin
                     If results[i]=1 then factorC:=factorC+2;
                     If results[i]=2 then factorC:=factorC+1;
                        end;
5,29,79,80,129,154:   begin
                     If results[i]=2 then factorC:=factorC+1;
                     If results[i]=3 then factorC:=factorC+2;
                   end;

7,56,131,155,156,180,181:begin
                     If results[i]=1 then factorC:=factorE+2;
                     If results[i]=2 then factorC:=factorE+1; end;
6,31,32,57,81,106 :begin
                     If results[i]=2 then factorC:=factorE+1;
                     If results[i]=3 then factorC:=factorE+2; end;

33,58,83,132,133,182,183:begin
                     If results[i]=1 then factorF:=factorF+2;
                     If results[i]=2 then factorF:=factorF+1; end;
8,82,107,108,157,158:begin
                     If results[i]=2 then factorF:=factorF+1;
                     If results[i]=3 then factorF:=factorF+2; end;

109,134,160,184,185:begin
                     If results[i]=1 then factorG:=factorG+2;
                     If results[i]=2 then factorG:=factorG+1; end;
9,34,59,84,159:begin
                     If results[i]=2 then factorG:=factorG+1;
                     If results[i]=3 then factorG:=factorG+2; end;

10,36,110,111,135,136,186 :begin
                     If results[i]=1 then factorH:=factorH+2;
                     If results[i]=2 then factorH:=factorH+1; end;
35,60,61,85,86,161:begin
                     If results[i]=2 then factorH:=factorH+1;
                     If results[i]=3 then factorH:=factorH+2; end;

12,37,112,138,163:begin
                     If results[i]=1 then factorI:=factorI+2;
                     If results[i]=2 then factorI:=factorI+1; end;
11,62,87,137,162:begin
                     If results[i]=2 then factorI:=factorI+1;
                     If results[i]=3 then factorI:=factorI+2; end;

38,88,113,114,164:begin
                     If results[i]=1 then factorL:=factorL+2;
                     If results[i]=2 then factorL:=factorL+1; end;
13,63,64,89,139:begin
                     If results[i]=2 then factorL:=factorL+1;
                     If results[i]=3 then factorL:=factorL+2; end;

39,40,65,91,115,116,140:begin
                     If results[i]=1 then factorM:=factorM+2;
                     If results[i]=2 then factorM:=factorM+1; end;
14,15,90,141,165,166:begin
                     If results[i]=2 then factorM:=factorM+1;
                     If results[i]=3 then factorM:=factorM+2; end;

17,42,117,142,167:begin
                     If results[i]=1 then factorN:=factorN+2;
                     If results[i]=2 then factorN:=factorN+1; end;
16,41,66,67,92:begin
                     If results[i]=2 then factorN:=factorN+1;
                     If results[i]=3 then factorN:=factorN+2; end;

18,43,69,94,118,119,143:begin
                     If results[i]=1 then factorO:=factorO+2;
                     If results[i]=2 then factorO:=factorO+1; end;
19,44,68,93,144,168:begin
                     If results[i]=2 then factorO:=factorO+1;
                     If results[i]=3 then factorO:=factorO+2; end;

20,46,70,145,169:begin
                     If results[i]=1 then factorQ1:=factorQ1+2;
                     If results[i]=2 then factorQ1:=factorQ1+1; end;
21,45,95,120,170:begin
                     If results[i]=2 then factorQ1:=factorQ1+1;
                     If results[i]=3 then factorQ1:=factorQ1+2; end;

47,71,72,146,171:begin
                     If results[i]=1 then factorQ2:=factorQ2+2;
                     If results[i]=2 then factorQ2:=factorQ2+1; end;
22,96,97,121,122:begin
                     If results[i]=2 then factorQ2:=factorQ2+1;
                     If results[i]=3 then factorQ2:=factorQ2+2; end;

48,73,98,148,173:begin
                     If results[i]=1 then factorQ3:=factorQ3+2;
                     If results[i]=2 then factorQ3:=factorQ3+1; end;
23,24,123,147,172:begin
                     If results[i]=2 then factorQ3:=factorQ3+1;
                     If results[i]=3 then factorQ3:=factorQ3+2; end;

49,74,99,124,149,174 :begin
                     If results[i]=1 then factorQ4:=factorQ4+2;
                     If results[i]=2 then factorQ4:=factorQ4+1; end;
25,75,100,125,150,175 :begin
                     If results[i]=2 then factorQ4:=factorQ4+1;
                     If results[i]=3 then factorQ4:=factorQ4+2; end;

50: factorQ4:=factorQ4+1;

   end; //of Case

OBRABOTKA;
 end; //of Obr
end;

//НЕ ИСПОЛЬЗОВАТЬ i ДЛЯ ЦИКЛОВ, Т.К. ЭТО НАКОПИТЕЛЬ ШАГА!!!

procedure TForm1.Button2Click(Sender: TObject);
label vyvod;
begin
//Form1.Edit2.Text:=IntToStr(i);
i:=i-1;
  If i<1 then i:=1;
If i=N+1 then i:=i-1;
If i<N+1 then
begin
   Reset(f);
      while NOT EOF(f) do   //poka nomer voprosa ne sovpadet c nomerom shaga
        begin
           readln(f,mQues);
           readln(f,motvet1);
           readln(f,motvet2);
           readln(f,motvet3);
           If pos(IntToStr(i),mQues)=1 then
            begin
               Ques:=mQues;
               otvet1:=mOtvet1;
               otvet2:=mOtvet2;
               otvet3:=mOtvet3;
               goto vyvod;
            end;
        end; //of While

vyvod:        Question.Caption:=Ques;
        Form1.Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n+2);
        Form1.RadioGroup1.Items.Strings[0]:=Otvet1;
        Form1.RadioGroup1.Items.Strings[1]:=Otvet2;
        Form1.RadioGroup1.Items.Strings[2]:=Otvet3;


   If results[i]=1 then radiogroup1.ItemIndex:=0;
   If results[i]=2 then radiogroup1.ItemIndex:=1;
   If results[i]=3 then radiogroup1.ItemIndex:=2;
end
Else
begin
   If i=N+2 then
      begin
         Question.Caption:='188. Сколько вам лет?';
         RadioGroup1.Visible:=true;
         RadioGroup2.Visible:=false;
         Form1.RadioGroup1.Items.Strings[0]:='16-18';
         Form1.RadioGroup1.Items.Strings[1]:='19-27';
         Form1.RadioGroup1.Items.Strings[2]:='28-70';
         Form1.Caption:='Вопрос '+IntToStr(i-1)+' из '+IntToStr(n+2);
      end;
end;
//Form1.Edit1.Text:=IntToStr(i);
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
     {sky := TBitMap.Create;
     sky.LoadFromFile('rakurs.bmp');
     Form1.Canvas.Draw(0,0,sky);      // отрисовка фона
     sky.free;}
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Init;
end;
 
procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form2.show;
form1.close;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.show;

end;

end.
