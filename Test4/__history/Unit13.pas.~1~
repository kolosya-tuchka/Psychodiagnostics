unit Unit13;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm13 = class(TForm)
    Question: TLabel;
    Button1: TButton;
    RadioGroup2: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    Label4: TLabel;
    N1: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public GlobalY, GlobalO, GlobalD :Integer;
  public procedure Init;
    { Public declarations }
  end;

const N=27;  //номер вопроса из файла
var
  Form13: TForm13;

  i :Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques, Otvet1,Otvet2,Otvet3 :string;

  mQues: string;
  mOtvet1, mOtvet2, mOtvet3 :string;

  ResultsMore :Array[1..N] of Integer;  //подходит больше всего
  ResultsLess :Array[1..N] of Integer;  //меньше всего
  ResultsMidi :Array[1..N] of Integer;  //посередине

  Y, O, D :Integer;

implementation

uses Unit1, Unit14, Unit27, Unit28, Unit2;

{$R *.dfm}

procedure TForm13.Init;
begin
   Form13.Caption:='Вопрос '+IntToStr(1)+' из '+IntToStr(n);
   Form13.Button1.Enabled:=true;
   Form13.Button2.Enabled:=true;
   fname:=ExtractFilePath(Application.ExeName) +'Test4\vopr.txt';
   AssignFile(f,fname);
   Reset(f);

   readln(f,Ques);
   Question.Caption:=Ques;
   readln(f,Otvet1);
   Form13.RadioGroup2.Items.Strings[0]:=otvet1;
   readln(f,Otvet2);
   Form13.RadioGroup2.Items.Strings[1]:=otvet2;
   readln(f,Otvet3);
   Form13.RadioGroup2.Items.Strings[2]:=otvet3;

   For i:=1 to N do
   begin
    ResultsMore[i]:=-1;
    ResultsLess[i]:=-1;
    ResultsMidi[i]:=-1;
   end;

   i:=1;

   Y:=0;
   O:=0;
   D:=0;
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
   Init;
end;

procedure OBRABOTKA;
var
myDate:string;
begin
   For i:=1 to N do
      case i of // i - номер вопроса

8,18,19: // А, Б, В
   begin
      Case ResultsMore[i] of
        0: Y:=Y+2;
        1: O:=O+2;
        2: D:=D+2;
      end;
      Case ResultsMidi[i] of
        0: Y:=Y+1;
        1: O:=O+1;
        2: D:=D+1;
      end;
   end;

1,3,10,14,16,17,25: // А, В, Б
   begin
      Case ResultsMore[i] of
        0: Y:=Y+2;
        1: D:=D+2;
        2: O:=O+2;
      end;
      Case ResultsMidi[i] of
        0: Y:=Y+1;
        1: D:=D+1;
        2: O:=O+1;
      end;
   end;

5,12,21,22,27: // Б, А, В
   begin
      Case ResultsMore[i] of
        0: O:=O+2;
        1: Y:=Y+2;
        2: D:=D+2;
      end;
      Case ResultsMidi[i] of
        0: O:=O+1;
        1: Y:=Y+1;
        2: D:=D+1;
      end;
   end;

2,11,15,24: // Б, В, А
   begin
      Case ResultsMore[i] of
        0: D:=D+2;
        1: Y:=Y+2;
        2: O:=O+2;
      end;
      Case ResultsMidi[i] of
        0: D:=D+1;
        1: Y:=Y+1;
        2: O:=O+1;
      end;
   end;

6,9,13,23,26: // В, А, Б
   begin
      Case ResultsMore[i] of
        0: O:=O+2;
        1: D:=D+2;
        2: Y:=Y+2;
      end;
      Case ResultsMidi[i] of
        0: O:=O+1;
        1: D:=D+1;
        2: Y:=Y+1;
      end;
   end;

4,7,20: // В, Б, А
   begin
      Case ResultsMore[i] of
        0: D:=D+2;
        1: O:=O+2;
        2: Y:=Y+2;
      end;
      Case ResultsMidi[i] of
        0: D:=D+1;
        1: O:=O+1;
        2: Y:=Y+1;
      end;
   end;
end;

Form14.edit1.text:=IntToStr(Y);
Form14.edit2.text:=IntToStr(O);
Form14.edit3.text:=IntToStr(D);
If (Y>O) and (Y>D) then Form14.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test4\Ya.txt');
If (O>Y) and (O>D) then Form14.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test4\Ob.txt');
If (D>O) and (D>Y) then Form14.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test4\D.txt');
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form14.Label8.Caption:=myDate;
for i:=1 to 27 do
  begin
  Form14.massivM[i]:=resultsMore[i];
  end;
for i:=1 to 27 do
  begin
  Form14.massivL[i]:=resultsLess[i];
  end;
Form14.Show;
Form13.hide;
end;

procedure TForm13.Button1Click(Sender: TObject);
label vyvod;
begin
  If i<N then
   begin
    resultsMore[i]:=radioGroup1.ItemIndex;
    resultsLess[i]:=radioGroup2.ItemIndex;
If (radioGroup1.ItemIndex<>0)and(radioGroup2.ItemIndex<>0) then resultsMidi[i]:=0;
If (radioGroup1.ItemIndex<>1)and(radioGroup2.ItemIndex<>1) then resultsMidi[i]:=1;
If (radioGroup1.ItemIndex<>2)and(radioGroup2.ItemIndex<>2) then resultsMidi[i]:=2;

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
        Form13.Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n);
        Form13.RadioGroup2.Items.Strings[0]:=Otvet1;
        Form13.RadioGroup2.Items.Strings[1]:=Otvet2;
        Form13.RadioGroup2.Items.Strings[2]:=Otvet3;
        If resultsMore[i]<>-1 then Form13.RadioGroup1.ItemIndex:=resultsMore[i]
        else Form13.RadioGroup1.ItemIndex:=0;
        If resultsLess[i]<>-1 then Form13.RadioGroup2.ItemIndex:=resultsLess[i]
        else Form13.RadioGroup2.ItemIndex:=2;
    end //of i<n
Else
   begin
    resultsMore[i]:=radioGroup1.ItemIndex;
    resultsLess[i]:=radioGroup2.ItemIndex;
If (radioGroup1.ItemIndex<>0)and(radioGroup2.ItemIndex<>0) then resultsMidi[i]:=0;
If (radioGroup1.ItemIndex<>1)and(radioGroup2.ItemIndex<>1) then resultsMidi[i]:=1;
If (radioGroup1.ItemIndex<>2)and(radioGroup2.ItemIndex<>2) then resultsMidi[i]:=2;

      ShowMessage('Вы успешно прошли тест!');
      CloseFile(f);
      Form13.Button1.Enabled:=false;
      Form13.Button2.Enabled:=false;
      OBRABOTKA;
   end;
end;

procedure TForm13.Button2Click(Sender: TObject);
label vyvod;
begin
//Form1.Edit2.Text:=IntToStr(i);
  i:=i-1;
  If i<1 then i:=1;

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
        Form13.Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(n);
        Form13.RadioGroup2.Items.Strings[0]:=Otvet1;
        Form13.RadioGroup2.Items.Strings[1]:=Otvet2;
        Form13.RadioGroup2.Items.Strings[2]:=Otvet3;

   radioGroup1.ItemIndex:=resultsMore[i];
   radioGroup2.ItemIndex:=resultsLess[i];
end;

procedure TForm13.Button5Click(Sender: TObject);
begin
form2.show;
form13.close;
end;

procedure TForm13.N3Click(Sender: TObject);
begin
    close;
end;

procedure TForm13.N2Click(Sender: TObject);
begin
Init;
end;

procedure TForm13.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;

end;

end.
