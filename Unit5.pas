unit Unit5;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm5 = class(TForm)
    Memo2: TMemo;
    Memo1: TMemo;
    Button5: TButton;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SaveDialog1: TSaveDialog;
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Text_Result();{ Private declarations }
  public
    procedure Grafic(canvas: TCanvas);
  public
    stA, stB, stC, stE, stF, stG, stH, stI, stL, stM, stN, stO, stQ1, stQ2, stQ3, stQ4,Id:Integer;
    stF1, stF2, stF3, stF4:Real;

  end;

var
  Form5: TForm5;

implementation

uses Unit1, StartTest, Unit62, Unit6, Unit27,Unit35;

{$R *.dfm}

const n=11;


// строит график функции
procedure TForm5.Grafic(canvas: TCanvas);
var
 x1,x2:integer;    // границы изменения аргумента функции
 y1,y2:integer;    // границы изменения значения функции
 x,y:real;        // аргумент функции
 dx:integer;    // приращение аргумента
 l,u:integer;
 w,h:integer;   // ширина и высота области вывода графика
 mx,my:real;    // масштаб по осям X и Y
 x0,y0:integer; // точка - начало координат
 i,right:integer;
 left,up:integer; //расстояние до рамки
begin
 left:=400; up:=50;
 l:=30+left; // расстояние слева : X - координата левого верхнего угла
 u:=20+up;  // расстояние сверху: Y - координата левого верхнего угла

 w:=320;  //Form5.Width-200;
 h:=150+u; //Form5.ClientHeight-100;

 x1:=0;     // нижняя граница диапазона аргумента
 x2:=20;    // верхняя граница диапазона аргумента
 dx:=1;     // шаг аргумента
 y1:=-1;
 y2:=10;

 mx:=w/abs(x2-x1);  // масштаб по оси X
 my:=h/abs(y2-y1);  // масштаб по оси Y

 x0:=l;  // оси
 y0:=u+Round((n-5.5)*my);
 right:=round(x2*mx)+x0;

 with Canvas do
 begin
   //двойная рамка
   MoveTo(left,up); LineTo(right+15,up); LineTo(right+15,Round(n*my)+u+35);
   LineTo(left,Round(n*my)+u+35); LineTo(left,up);
   MoveTo(left-3,up-3); LineTo(right+18,up-3); LineTo(right+18,Round(n*my)+u+38);
   LineTo(left-3,Round(n*my)+u+38); LineTo(left-3,up-3);

   // оси
   MoveTo(x0,y0);LineTo(right+5,y0); //X
   MoveTo(x0,u);LineTo(x0,Round(n*my)+u+21);  //Y

   //насечки
   x:=x1;
   for i:=1 to x2+1 do
   begin
      MoveTo(Round(x*mx)+x0,y0+2);
      LineTo(Round(x*mx)+x0,y0-2); //X
      x:=x+dx;
   end;
   y:=0;
   for i:=y1 to y2+1 do
   begin
      MoveTo(x0-2,u+Round(y*my));
      LineTo(x0+2,u+Round(y*my)); //Y
      y:=y+1;
   end;

   //подписи по Y
   TextOut(x0-12,Round((n+1)*my)+u-5,FloatToStrF(y1,ffGeneral,6,3));
   TextOut(x0-12,Round((n-1)*my)+u-5,FloatToStrF(1,ffGeneral,6,3));
   TextOut(x0-12,Round((n-3)*my)+u-5,FloatToStrF(3,ffGeneral,6,3));
//   TextOut(x0-12,Round((n-4)*my)+u-5,FloatToStrF(4,ffGeneral,6,3));
   TextOut(x0-20,Round((n-5.5)*my)+u-5,FloatToStrF(5.5,ffGeneral,6,3));
   TextOut(x0-12,Round((n-8)*my)+u-5,FloatToStrF(8,ffGeneral,6,3));
   TextOut(x0-18,Round((n-10)*my)+u-5,FloatToStrF(y2,ffGeneral,6,3));

   //подписи по X
   x:=1;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'A'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'B'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'C'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'E'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'F'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'G'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'H'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'I'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'L'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'M'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'N'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'O'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'Q1'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'Q2'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'Q3'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'Q4'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'F1'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'F2'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-5.5)*my)+u+3,'F3'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n-6.2)*my)+u,'F4');

   // построение графика
   x:=x1;
   x:=x+dx;
   MoveTo(Round(x*mx)+x0,Round(my*(n-stA))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stB))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stC))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stE))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stF))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stG))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stH))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stI))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stL))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stM))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stN))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stO))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stQ1))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stQ2))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stQ3))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stQ4))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stF1))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stF2))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stF3))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-stF4))+u);
 end;
end;

procedure TForm5.FormPaint(Sender: TObject);
begin
  Form5.Grafic(Form5.Canvas);
end;

procedure Way(A:string; znak:string);
begin
   Form5.Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +znak+'factor'+A+'.txt');
   Form5.Memo1.Lines.AddStrings(Form5.Memo2.Lines);
   Form5.Memo1.Lines.Append(chr(13));
   end;

procedure TForm5.Text_Result;
begin
   if (stA>=0) and (stA<=3)  then Way('A','-');
   if (stA>=8) and (stA<=10) then Way('A','+');

   if (stB>=0) and (stB<=3)  then Way('B','-');
   if (stB>=8) and (stB<=10) then Way('B','+');

   if (stC>=0) and (stC<=3)  then Way('C','-');
   if (stC>=8) and (stC<=10) then Way('C','+');

   if (stE>=0) and (stE<=3)  then Way('E','-');
   if (stE>=8) and (stE<=10) then Way('E','+');

   if (stF>=0) and (stF<=3)  then Way('F','-');
   if (stF>=8) and (stF<=10) then Way('F','+');

   if (stG>=0) and (stG<=3)  then Way('G','-');
   if (stG>=8) and (stG<=10) then Way('G','+');

   if (stH>=0) and (stH<=3)  then Way('H','-');
   if (stH>=8) and (stH<=10) then Way('H','+');

   if (stI>=0) and (stI<=3)  then Way('I','-');
   if (stI>=8) and (stI<=10) then Way('I','+');

   if (stL>=0) and (stL<=3)  then Way('L','-');
   if (stL>=8) and (stL<=10) then Way('L','+');

   if (stM>=0) and (stM<=3)  then Way('M','-');
   if (stM>=8) and (stM<=10) then Way('M','+');

   if (stN>=0) and (stN<=3)  then Way('N','-');
   if (stN>=8) and (stN<=10) then Way('N','+');

   if (stO>=0) and (stO<=3)  then Way('O','-');
   if (stO>=8) and (stO<=10) then Way('O','+');

   if (stQ1>=0) and (stQ1<=3)  then Way('Q1','-');
   if (stQ1>=8) and (stQ1<=10) then Way('Q1','+');

   if (stQ2>=0) and (stQ2<=3)  then Way('Q2','-');
   if (stQ2>=8) and (stQ2<=10) then Way('Q2','+');

   if (stQ3>=0) and (stQ3<=3)  then Way('Q3','-');
   if (stQ3>=8) and (stQ3<=10) then Way('Q3','+');

   if (stQ4>=0) and (stQ4<=3)  then Way('Q4','-');
   if (stQ4>=8) and (stQ4<=10) then Way('Q4','+');

   if (stF1>=0) and (stF1<=3)  then Way('F1','-');
   if (stF1>=8) and (stF1<=10) then Way('F1','+');

   if (stF2>=0) and (stF2<=3)  then Way('F2','-');
   if (stF2>=8) and (stF2<=10) then Way('F2','+');

   if (stF3>=0) and (stF3<=3)  then Way('F3','-');
   if (stF3>=8) and (stF3<=10) then Way('F3','+');

   if (stF4>=0) and (stF4<=3)  then Way('F4','-');
   if (stF4>=8) and (stF4<=10) then Way('F4','+');

   //ShowMessage('Результаты закончены!');
end;

procedure TForm5.FormShow(Sender: TObject);
var squery:string;
begin
  Form5.Text_Result;
 ADOQuery1.Close;
       ADOQuery1.SQL.Clear;
       squery:= 'SELECT COUNT(*) FROM People where N_vlast=' + IntTostr(Id);
       ADOQuery1.SQL.Text:= squery;
       ADOQuery1.open;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Close;
       end
       else begin
 ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE People SET  test7=' + Memo1.Lines.Text + 'where N_vlast=' + IntTostr(Id) ;
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
 ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE People SET  test7_data=' + Label3.Caption + 'where N_vlast=' + IntTostr(Id) ;
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;

       end;

end;

procedure TForm5.Button5Click(Sender: TObject);

begin

Form2.show;
Form5.Close;
end;

procedure TForm5.Button1Click(Sender: TObject);
var
 Word: variant;
 Doc: variant;
 S: variant;
 z,count:integer;
begin
  try
    Word := CreateOleObject('Word.Application');
    Doc:=Word.Documents.Add;
  except
    ShowMessage('Не удается создать документ Microsoft Word');
  end;
Word.Visible := True;
S:=Word.Selection;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(Label1.Caption);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(Form5.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Описание: ');
S.Font.Bold := 0;
S.TypeText(Form6.Memo1.Text);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 0;
count:=Memo1.Lines.Count;
for z:=0 to count do
  begin
    S.TypeText(' '+ Memo1.Lines[z]);
  end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString :=Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.show;

end;

end.

