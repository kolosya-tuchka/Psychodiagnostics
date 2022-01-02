unit Unit20;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, DB, Data.Win.ADODB;

type
  TForm20 = class(TForm)

    Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label4: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure FormPaint(Sender: TObject);

    procedure N4Click(Sender: TObject);
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
  public //procedure Init;
      

  procedure Init;
    { Public declarations }
  end;


const N=20;

var
  Form20: TForm20;
  i, itog :Integer;

  Results :Array[1..20] of integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques :string;
  medium :REAL;
  mQues: string;

implementation

uses Unit24, Unit28, Unit2, Unit21, Unit18;

{$R *.dfm}
procedure TForm20.Init;
Begin
   for i:=0 to n do
   results[i]:=0;

   fname:=ExtractFilePath(Application.ExeName) +'Test7\VOPROS.txt';
   i:=1;
   AssignFile(f,fname);
   Reset(f);
   readln(f,Ques);
   Question.Caption:=Ques;
   Caption:='Вопрос 1 из '+IntToStr(n);
   i:=1;
end;

procedure TForm20.FormCreate(Sender: TObject);
begin
   Init;
end;

procedure Obrabotka;
var
myDate:string;
begin
itog:=0;
   For i:=1 to N do
    case results[i] of
    0: itog:=itog+3;
    1: itog:=itog+2;
    2: itog:=itog+1;
    3: itog:=itog+0;
    end; //of Case

    case itog of
    0..20: Form24.Edit1.Text:='степень одиночества низкая';
    21..40: Form24.Edit1.Text:='степень одиночества средняя';
    41..60: Form24.Edit1.Text:='степень одиночества высокая';
    end;





  for i:=1 to 20 do
    begin
      Form24.massiv[i]:=results[i];
    end;
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form24.Label5.Caption:=myDate;
  Form24.Show;
  form20.hide;

end;

procedure TForm20.Button1Click(Sender: TObject);
begin
If i<N then
  begin
    results[i]:=radiogroup1.ItemIndex;

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
      results[i]:=radiogroup1.ItemIndex;


      ShowMessage('Поздравляем, Вы успешно прошли тест!');
      OBRABOTKA;
  end;
end;

procedure TForm20.Button2Click(Sender: TObject);
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
   radiogroup1.ItemIndex:=results[i];
end;


procedure TForm20.FormPaint(Sender: TObject);
begin
     {sky := TBitMap.Create;
     sky.LoadFromFile('Chrysanthemum.bmp');
     Form20.Canvas.Draw(0,0,sky);      // отрисовка фона
     sky.free; }

end;

procedure TForm20.N4Click(Sender: TObject);
begin
Form20.close;
end;

procedure TForm20.N2Click(Sender: TObject);
begin
   Init;
end;

procedure TForm20.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm20.Button7Click(Sender: TObject);
begin
Form20.close;
end;

procedure TForm20.Button5Click(Sender: TObject);
begin
form2.show;
form20.close;
end;

procedure TForm20.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm20.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;

end;


end.
