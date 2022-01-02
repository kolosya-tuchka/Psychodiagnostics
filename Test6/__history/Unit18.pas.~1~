
unit Unit18;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, System.Win.ComObj;

type
  TForm18 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo2: TMemo;
    Label3: TLabel;
    Memo3: TMemo;
    Label4: TLabel;
    Button1: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    Memo4: TMemo;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ADOQuery1: TADOQuery;
    procedure FormPaint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  massiv: array [1..88] of integer;
    s:string;
  procedure Grafic;{ Public declarations }

  public dem,zas, ped, voz, gip, dis,tre,ekz,emot,cik,Id:Integer;
  end;

var
  Form18: TForm18;

implementation

uses Unit2, Unit8, Unit7, Unit62, Unit27,Unit35;

{$R *.dfm}
const N=24;
procedure TForm18.Grafic;
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

 Begin
 left:=20; up:=210;
 l:=30+left; // расстояние слева : X - координата левого верхнего угла
 u:=40+up;  // расстояние сверху: Y - координата левого верхнего угла

 w:=295;  //Form5.Width-200;
 h:=u-5; //Form5.ClientHeight-100;

 x1:=0;     // нижняя граница диапазона аргумента
 x2:=10;    // верхняя граница диапазона аргумента
 dx:=1;     // шаг аргумента
 y1:=0;
 y2:=24;

 mx:=w/abs(x2-x1);  // масштаб по оси X
 my:=h/abs(y2-y1);  // масштаб по оси Y

 x0:=l;  // оси
 y0:=u+Round((n)*my);
 right:=round(x2*mx)+x0;

 with form18.Canvas do
 begin
   //двойная рамка
   MoveTo(left,up); LineTo(right+15,up); LineTo(right+15,Round(n*my)+u+35);
   LineTo(left,Round(n*my)+u+35); LineTo(left,up);
   MoveTo(left-3,up-3); LineTo(right+18,up-3); LineTo(right+18,Round(n*my)+u+38);
   LineTo(left-3,Round(n*my)+u+38); LineTo(left-3,up-3);

   // оси
   MoveTo(x0,y0);LineTo(right+5,y0); //X
   MoveTo(x0,u-2);LineTo(x0,Round(n*my)+u);  //Y

   //насечки
   x:=x1;
   for i:=1 to x2+1 do
   begin
      MoveTo(Round(x*mx)+x0,y0+2);
      LineTo(Round(x*mx)+x0,y0-2); //X
      x:=x+dx;
   end;
   y:=0;
   for i:=y1 to y2 do
   begin
      MoveTo(x0-2,y0-Round(y*my));
      LineTo(x0+2,y0-Round(y*my)); //Y
      y:=y+1;
   end;

   //подписи по Y
//   TextOut(x0-12,Round((n)*my)+u-5,FloatToStrF(y1,ffGeneral,6,3));
   TextOut(x0-12,Round((n-5)*my)+u-5,FloatToStrF(5,ffGeneral,6,3));
   TextOut(x0-18,Round((n-10)*my)+u-5,FloatToStrF(10,ffGeneral,6,3));
   TextOut(x0-18,Round((n-15)*my)+u-5,FloatToStrF(15,ffGeneral,6,3));
   TextOut(x0-18,Round((n-19)*my)+u-5,FloatToStrF(19,ffGeneral,6,3));
   TextOut(x0-18,Round((n-24)*my)+u-5,FloatToStrF(y2,ffGeneral,6,3));

   //подписи по X
   x:=0;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'0'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'1'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'2'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'3'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'4'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'5'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'6'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'7'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'8'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'9'); x:=x+dx;
   TextOut(Round(x*mx)+x0-3,Round((n)*my)+u+3,'10'); x:=x+dx;

   // построение графика
   x:=x1;
   x:=x+dx;
   MoveTo(Round(x*mx)+x0,Round(my*(n-dem))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-zas))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-ped))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-voz))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-gip))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-dis))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-tre))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-ekz))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-emot))+u);
   x:=x+dx;
   LineTo(Round(x*mx)+x0,Round(my*(n-cik))+u);
 end;
end;

procedure TForm18.FormPaint(Sender: TObject);
begin
  Form18.Grafic;
end;

procedure TForm18.Button1Click(Sender: TObject);
begin
Form2.show;
Form18.close;
end;

procedure TForm18.Button4Click(Sender: TObject);
begin
  saveDialog1.Filter := 'Word документ|*.doc|Все файлы|*.*';
  SaveDialog1.InitialDir:=ExtractFilePath(Application.ExeName) + 'results';
  if saveDialog1.Execute then
     Memo1.Lines.SaveToFile(Savedialog1.FileName);
end;



procedure TForm18.FormCreate(Sender: TObject);
begin
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString :=Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
end;

procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
squery:string;
begin
if (s='') then
begin
  for i:=1 to 88 do
    begin
    s:=s + intTostr(massiv[i])+ ',';
    end;
  Delete(s,length(s),length(s));
end;

ADOQuery1.Close;
       ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Result where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=5';
       ADOQuery1.SQL.Text:= squery;
       ADOQuery1.open;
       if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='5';
         ADOQuery1.FieldByName('Resultat').AsString:=Memo2.Lines.Text;
         ADOQuery1.FieldByName('Result_Data').AsString:=Label8.Caption;
         ADOQuery1.FieldByName('Name_Test').AsString:='Что вы знаете о себе или различные стороны вашей личности';
         ADOQuery1.FieldByName('Choice').AsString:=s;
         ADOQuery1.Active:=True;
         ADOQuery1.Post;

         ADOQuery1.Insert;
         ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         ADOQuery1.FieldByName('N_testa').AsString:='51';
         ADOQuery1.FieldByName('Resultat').AsString:=Memo3.Lines.Text;

         ADOQuery1.Active:=True;
         ADOQuery1.Post;
       end
       else begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Memo2.Lines.Text) + ',Result_Data=' + QuotedStr(Label8.Caption) + ',Choice=' + QuotedStr(s) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=5';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;

         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Result SET Resultat=' + QuotedStr(Memo3.Text) +' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=51';
         ADOQuery1.SQL.Text:= squery;
         ADOQuery1.ExecSQL;
         end;
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('SELECT Name_test FROM Test_app where Name_test="Что вы знаете о себе или различные стороны вашей личности"');
         ADOQuery1.open;
         ADOQuery1.First;
         if (ADOQuery1.RecordCount = 0) then begin
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('Name_Test').AsString:='Что вы знаете о себе или различные стороны вашей личности';
         ADOQuery1.Active:=True;
         ADOQuery1.Post;
         end;
         if Form7.button_select = 0 then
Form2.show
else
begin
Form62.show;

end;

end;

end.
