unit Unit15;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm15 = class(TForm)
    Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
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

const N=16;

var
  Form15: TForm15;
  i, poz :Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques, Otvet1,Otvet2 :string;

  mQues: string;
  mOtvet1, mOtvet2 :string;

  Results :Array[1..N] of Integer;

implementation

uses Unit16, Unit28, Unit2;

{$R *.dfm}

procedure TForm15.Init;
begin
   Form15.Caption:='¬ÓÔÓÒ '+IntToStr(1)+' ËÁ '+IntToStr(n);
   fname:=ExtractFilePath(Application.ExeName) +'Test5\vopr.txt';
   AssignFile(f,fname);
   Reset(f);

   readln(f,Otvet1);
   poz:=pos('.',Otvet1);
   delete(Otvet1,1,poz+1);
   Label1.Caption:=otvet1;
   readln(f,Otvet2);
   Label2.Caption:=otvet2;

   For i:=1 to N do
   Results[i]:=0;

   Button1.Enabled:=true;
   Button2.Enabled:=true;
   RadioGroup1.ItemIndex:=0;
   i:=1;
end;

procedure TForm15.FormCreate(Sender: TObject);
var
myDate:string;
begin
   Init;
end;

//Õ≈ »—œŒÀ‹«Œ¬¿“‹ i ƒÀﬂ ÷» ÀŒ¬, “. . ›“Œ Õ¿ Œœ»“≈À‹ ÿ¿√¿!!!

procedure Obrabotka;
var summa:Integer;
myDate:string;
begin
summa:=0;
 for i:=1 to N do
  begin
   case i of
   1,2,9,11,15:                If Results[i]=1 then summa:=summa+1;
   3,4,5,6,7,8,10,12,13,14,16: If Results[i]=2 then summa:=summa+1;
   end;
  end;
  case summa of
    0..5: Form16.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test5/low.txt');
    6..10: Form16.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test5/medium.txt');
    11..16: Form16.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +'Test5/high.txt');
  end;
 myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
 Form16.Label4.Caption:=myDate;
 for i:=1 to 16 do
  begin
  Form16.massiv[i]:=Results[i];
  end;
 Form16.Show;
Form15.hide;
end;

procedure TForm15.Button1Click(Sender: TObject);
label vyvod;
var poz:Integer;
begin
results[i]:=radiogroup1.ItemIndex+1;
If i<N then
  begin

    i:=i+1;
    Reset(f);
    while NOT EOF(f) do   //poka nomer voprosa ne sovpadet c nomerom shaga
      begin
         readln(f,motvet1);
         readln(f,motvet2);
//◊ÚÓ·˚ Ò˜ËÚ˚‚‡ÎËÒ¸ 3-ı ÁÌ‡˜Ì˚Â ˜ËÒÎ‡, ‡ ÌÂ ÚÓÎ¸ÍÓ ‚ 1 ÒËÏ‚ÓÎ
  //ÂÒÎË ÒÚÓËÚ ‚ Ì‡˜‡ÎÂ ÒÚÓÍË
         If pos(IntToStr(i),motvet1)=1 then
           begin
               otvet1:=mOtvet1;
               otvet2:=mOtvet2;
               goto vyvod;
           end;
    end; //of While

vyvod:
       poz:=pos('.',Otvet1);
       delete(Otvet1,1,poz+1);
       Form15.Caption:='¬ÓÔÓÒ '+IntToStr(i)+' ËÁ '+IntToStr(n);
       Label1.Caption:=otvet1;
       Label2.Caption:=otvet2;
       If results[i]<>0 then RadioGroup1.ItemIndex:=results[i]-1
       else RadioGroup1.ItemIndex:=0;
 end //of i<n
Else
   begin
    ShowMessage('¬˚ ÛÒÔÂ¯ÌÓ ÔÓ¯ÎË ÚÂÒÚ!');
    Button1.Enabled:=false;
    Button2.Enabled:=false;
    CloseFile(f);
    OBRABOTKA;
   end;
end;

//Õ≈ »—œŒÀ‹«Œ¬¿“‹ i ƒÀﬂ ÷» ÀŒ¬, “. . ›“Œ Õ¿ Œœ»“≈À‹ ÿ¿√¿!!!

procedure TForm15.Button2Click(Sender: TObject);
label vyvod;
var poz:Integer;
begin
//Form1.Edit2.Text:=IntToStr(i);
i:=i-1;
If i<1 then i:=1;
If i<N+1 then
begin
   Reset(f);
   while NOT EOF(f) do   //poka nomer voprosa ne sovpadet c nomerom shaga
      begin
         readln(f,motvet1);
         readln(f,motvet2);
         If pos(IntToStr(i),motvet1)=1 then
           begin
               otvet1:=mOtvet1;
               otvet2:=mOtvet2;
               goto vyvod;
           end;
    end; //of While

vyvod: poz:=pos('.',Otvet1);
       delete(Otvet1,1,poz+1);
       Form15.Caption:='¬ÓÔÓÒ '+IntToStr(i)+' ËÁ '+IntToStr(n);
       Label1.Caption:=otvet1;
       Label2.Caption:=otvet2;

       radiogroup1.ItemIndex:=results[i]-1
end;
end;

procedure TForm15.FormPaint(Sender: TObject);
begin
     {sky := TBitMap.Create;
     sky.LoadFromFile('rakurs.bmp');
     Form1.Canvas.Draw(0,0,sky);      // ÓÚËÒÓ‚Í‡ ÙÓÌ‡
     sky.free;}
end;

procedure TForm15.N2Click(Sender: TObject);
begin
   Init;
end;

procedure TForm15.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm15.Button5Click(Sender: TObject);
begin
form2.show;
form15.close;
end;

procedure TForm15.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm15.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;

end;

end.
