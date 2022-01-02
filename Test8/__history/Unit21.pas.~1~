unit Unit21;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm21 = class(TForm)
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
    Image1: TImage;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure N4Click(Sender: TObject);
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

const N=30;

var
  Form21: TForm21;
  i, poz :Integer;
  sky: TBitMap;

  f :TextFile;
  fname :string;
  Ques, Otvet1,Otvet2 :string;

  mQues: string;
  mOtvet1, mOtvet2 :string;

  Results :Array[1..N] of Integer;

implementation

uses Unit22, Unit28, Unit2, Unit1, Unit14;

{$R *.dfm}
procedure TForm21.Init;
begin
    
   Form21.Caption:='¬ÓÔÓÒ '+IntToStr(1)+' ËÁ '+IntToStr(n);
   fname:=ExtractFilePath(Application.ExeName) +'Test8\vopr.txt';
   AssignFile(f,fname);
   Reset(f);

   readln(f,Otvet1);
   poz:=pos('.',Otvet1);
   delete(Otvet1,1,poz+1);
   Label1.Caption:=otvet1;
   readln(f,Otvet2);
   Label2.Caption:=otvet2;

   For i:=1 to N do
   Results[i]:=4;

   i:=1;
   Button1.Enabled:=true;
   Button2.Enabled:=true;
end;

procedure TForm21.FormCreate(Sender: TObject);
begin
   Init;
end;

//Õ≈ »—œŒÀ‹«Œ¬¿“‹ i ƒÀﬂ ÷» ÀŒ¬, “. . ›“Œ Õ¿ Œœ»“≈À‹ ÿ¿√¿!!!
function Opred(a:Integer):Integer;
begin
   Opred:=8-a;
end;

procedure Obrabotka;
var sam, act, nas :Integer;
myDate:string;
begin

sam:=0;
act:=0;
nas:=0;

 for i:=1 to N do
  begin
   case i of
   1,2,7,8,13,14,19,20,25,26: sam:=sam+Opred(Results[i]);
   3,4,9,10,15,16,21,22,27,28: act:=act+Opred(Results[i]);
   5,6,11,12,17,18,23,24,29,30: nas:=nas+Opred(Results[i]);
   end;
  end;
Form22.Edit1.Text:=FloatToStr(sam/10);
Form22.Edit2.Text:=FloatToStr(act/10);
Form22.Edit3.Text:=FloatToStr(nas/10);

  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form22.Label11.Caption:=myDate;
  for i:=1 to 30 do
  begin
  Form22.massiv[i]:=Results[i];
  end;
  Form22.Show;
Form21.hide;
end;

procedure TForm21.Button1Click(Sender: TObject);
label vyvod;
var poz:Integer;
begin
If i<N then
  begin
    results[i]:=radiogroup1.ItemIndex+1;
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
       Form21.Caption:='¬ÓÔÓÒ '+IntToStr(i)+' ËÁ '+IntToStr(n);
       Label1.Caption:=otvet1;
       Label2.Caption:=otvet2;
       If results[i]<>0 then RadioGroup1.ItemIndex:=results[i]-1
       else RadioGroup1.ItemIndex:=3;
 end //of i<n
Else
   begin
    ShowMessage('¬˚ ÛÒÔÂ¯ÌÓ ÔÓ¯ÎË ÚÂÒÚ!');
    Button1.Enabled:=false;
    Button2.Enabled:=false;

    OBRABOTKA;
   end;
end;

//Õ≈ »—œŒÀ‹«Œ¬¿“‹ i ƒÀﬂ ÷» ÀŒ¬, “. . ›“Œ Õ¿ Œœ»“≈À‹ ÿ¿√¿!!!

procedure TForm21.Button2Click(Sender: TObject);
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
       Form21.Caption:='¬ÓÔÓÒ '+IntToStr(i)+' ËÁ '+IntToStr(n);
       Label1.Caption:=otvet1;
       Label2.Caption:=otvet2;

       radiogroup1.ItemIndex:=results[i]-1
end;
end;

procedure TForm21.FormPaint(Sender: TObject);
begin
    { sky := TBitMap.Create;
     sky.LoadFromFile('Chrysanthemum.bmp');
     Form21.Canvas.Draw(0,0,sky);      // ÓÚËÒÓ‚Í‡ ÙÓÌ‡
     sky.free;}
end;

procedure TForm21.N4Click(Sender: TObject);
begin
close;
end;

procedure TForm21.N2Click(Sender: TObject);
begin
   Init;
end;

procedure TForm21.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
(Sender As TButton).Font.Color:=clBlue;
end;

procedure TForm21.Button5Click(Sender: TObject);
begin
form2.show;
form21.close;
end;

procedure TForm21.N3Click(Sender: TObject);
begin
close;//Form4.ShowModal;
end;

procedure TForm21.N1Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.show;

end;

end.
