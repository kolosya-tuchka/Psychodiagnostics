unit Unit34;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm34 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public startID:Integer;
         ID:Integer;
         Type_otvet:Integer;
         Type_obr:Integer;
         GlobNazv:String;
         GlobOpis:String;
         GlobKolvo:Integer;
         GlobKol_otvet:Integer;
         GlobOtv1:String;
         GlobOtv2:String;
         GlobOtv3:String;
         GlobOtv4:String;
         GlobOtv5:String;
         GlobBal1:Integer;
         GlobBal2:Integer;
         GlobBal3:Integer;
         GlobBal4:Integer;
         GlobBal5:Integer;
         GlobQuestion:String;
         Result, section, course:String;
         Diapazon1:Integer;
         Diapazon2:Integer;
         number:integer;
         vopros:TstringList;
         otvety:TstringList;
         pathtoquestion:TStringList;
    { Public declarations }
  end;

var
  Form34: TForm34;
  KolvoGroup:integer;
  dip1,dip2 :Array[0..20] of Integer;
  res:Array[0..20]of String;
  rememberID:integer;


implementation

uses Unit29, Unit30, Unit31, Unit32, Unit33, Unit35, Data.Win.ADODB, Unit36, Unit37,
  Unit46, Unit1, Unit40, Unit41, Unit10, Unit42, Unit43, Unit44, Unit45,
  Unit47, Unit48, Unit11,  StartTest, Unit62;

{$R *.dfm}

procedure TForm34.FormCreate(Sender: TObject);
begin
  KolvoGroup:=1;
end;

procedure TForm34.Button4Click(Sender: TObject);
begin

 If Edit1.Text='' then MessageBox(0, '??????? ????????? ?????????? ??????.','?? ???????? ???? ??????????', MB_OK)
 Else
  begin

   If Edit2.Text='' then MessageBox(0, '??????? ???????? ?????????? ??????.','?? ???????? ???? ??????????', MB_OK)
   Else
    begin

     If Memo1.Lines.Text='' then MessageBox(0, '??????? ????? ??????????.','?? ???????? ???? ??????????', MB_OK)
     Else
      begin
             try
     dip1[number]:=StrToInt(Edit1.Text);
        dip2[number]:=StrToInt(Edit2.Text);
   except
     on Exception : EConvertError do begin

       ShowMessage('?????? ?????');
        exit;
        end;
     end;

        res[number]:=Memo1.Lines.Text;
        Memo1.Lines.Clear;
        Edit1.Text:=IntToStr( StrToInt(Edit2.Text)+1 );
        Edit2.Text:='';

        If number<KolvoGroup then
         begin
           number:=number+1;
           label7.Caption:='??????? '+IntToStr(number)+' ??????:';
         end
        else
         begin
          edit1.Text:='';
          button4.Enabled:=false;
          button1.Enabled:=true;
         end;

      end;
     end;
   end;

end;

procedure TForm34.ComboBox1Change(Sender: TObject);
begin
KolvoGroup:=ComboBox1.ItemIndex+1;
end;

procedure TForm34.Button2Click(Sender: TObject);
begin
Form34.Close;
Form62.show;
end;

procedure TForm34.Button3Click(Sender: TObject);
begin
Form34.Close;

Form33.Show;
end;

procedure TForm34.Button1Click(Sender: TObject);
var i,N, k, id, cid:integer;
temp: TStringList;
squery:string;
list:Tlistbox;
memo:Tmemo;
begin
with MyModule.ADOQuery1 do begin
  SQL.Clear;
  SQL.Add('Select * From Sections Where SectionTitle=:section');
  Parameters.ParamByName('section').Value := section;
  Open;
  ExecSQL;
  id := FieldByName('Section_ID').AsInteger;

  SQL.Clear;
  SQL.Add('Select * From Courses Where CourseTitle=:course');
  Parameters.ParamByName('course').Value := course;
  Open;
  ExecSQL;
  cid := FieldByName('Course_ID').AsInteger;
end;

with MyModule.ADOQuery1 do begin
Close;
SQL.clear;
Sql.Add('SELECT MAX(Id) AS MAXN FROM Test_App');
Open;
N := FieldByName('MAXN').Value;
end;

MyModule.ADOQuery1.SQL.Clear;
squery:= 'SELECT * FROM Test_app where Name_test=:name';
MyModule.ADOQuery1.SQL.Text:= squery;
MyModule.ADOQuery1.Parameters.ParamByName('name').Value := GlobNazv;
MyModule.ADOQuery1.Open;
if (MyModule.ADOQuery1.RecordCount = 0) then
begin
  MyModule.ADOQuery1.Insert;
  MyModule.ADOQuery1.FieldByName('Name_test').AsString:=GlobNazv;
  MyModule.ADOQuery1.FieldByName('Id').AsInteger:=N+1;
  MyModule.ADOQuery1.Active:=True;
  MyModule.ADOQuery1.Post;
end;

try
//?????? ??? ????????? ??? ??????? ??????
if form34.Type_obr=1 then
begin
 if ((Form34.Type_otvet=5) or (Form34.Type_otvet=6) or (Form34.Type_otvet=7)) then  //????? ?????? ???????
  begin
   with MyModule.ADOQuery2 do
   begin

   Close;
   SQL.clear;
   Sql.Add('SELECT MAX(N_testa) AS MAXN FROM Test');
   Open;
   First;
   if FieldByName ('MAXN').AsInteger-100<=0 then
     begin
     N:= FieldByName ('MAXN').AsInteger+101;
     end
     else
      begin
     N:= FieldByName ('MAXN').AsInteger+1;
     end;

   Close;
   SQL.clear;
   Sql.Add('Insert into Test(N_testa,Nazv,Opis,Section_ID,Course_ID) ');
   Sql.Add('Values( '+ IntToStr(N) + ',' +  QuotedStr(Form34.GlobNazv) + ',' + QuotedStr(Form34.GlobOpis) + ',' + IntToStr(id) + ',' + IntToStr(cid) + ')');
   ExecSQL;




   Close;
   SQL.clear;
   for k:=0 to GlobKolvo-1 do
   begin
     SQL.clear;
     squery:= '';
     temp := delimited(otvety.Strings[k]);
     //Sql.Add('Insert into Test_Information(N_testa,Kolvo,question,Kol_otvet,otv1,otv2,otv3,otv4,otv5,bal1,bal2,bal3,bal4,bal5,diapazon1,diapazon2,result,type_otvet,type_obr,question_p) ');
     //Sql.Add('Values(:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, :15, :16, :17, :18, :19)');
     squery:= 'INSERT INTO Test_Information (N_testa,Kolvo,question,Kol_otvet,otv1,otv2,otv3,otv4,otv5,bal1,bal2,bal3,bal4,bal5,diapazon1,diapazon2,result,type_otvet,type_obr,question_p) Values';
     squery:= squery + '(' + IntToStr(N) + ',' + IntToStr(Form34.GlobKolvo) + ',' + QuotedStr(vopros.Strings[k]) + ',' + IntToStr(Form34.GlobKol_otvet) + ',';
     //Parameters.ParamByName('1').Value := IntToStr(N);
     //Parameters.ParamByName('2').Value := IntToStr(Form34.GlobKolvo);
     //Parameters.ParamByName('3').Value := vopros.Strings[k];
     //Parameters.ParamByName('4').Value := IntToStr(Form34.GlobKol_otvet);
     if temp.count > 0 then
       //Parameters.ParamByName('5').Value := temp.Strings[0]
       squery:= squery + QuotedStr(temp.Strings[0]) + ','
     else
       //Parameters.ParamByName('5').Value := '';
       squery:= squery + '0,';

     if temp.count > 1 then
       //Parameters.ParamByName('6').Value := temp.Strings[1]
       squery:= squery + QuotedStr(temp.Strings[1]) + ','
     else
       //Parameters.ParamByName('6').Value := '';
       squery:= squery + '0,';
     if temp.count > 2 then
       //Parameters.ParamByName('7').Value := temp.Strings[2]
       squery:= squery + QuotedStr(temp.Strings[2]) + ','
     else
       //Parameters.ParamByName('7').Value := '';
       squery:= squery + '0,';
     if temp.count > 3 then
       //Parameters.ParamByName('8').Value := temp.Strings[3]
       squery:= squery + QuotedStr(temp.Strings[3]) + ','
     else
       //Parameters.ParamByName('8').Value := '';
       squery:= squery + '0,';
     if temp.count > 4 then
       //Parameters.ParamByName('9').Value := temp.Strings[4]
       squery:= squery + QuotedStr(temp.Strings[4]) + ','
     else
       //Parameters.ParamByName('9').Value := '';
       squery:= squery + '0,';
     if temp.count > 0 then
        //Parameters.ParamByName('10').Value := Form48.balls[k,0]
        squery:= squery + IntToStr(Form48.balls[k,0]) + ','
        else
        //Parameters.ParamByName('10').Value := 0;
        squery:= squery + '0' + ',';
     if temp.count > 1 then
        //Parameters.ParamByName('11').Value := Form48.balls[k,1]
        squery:= squery + IntToStr(Form48.balls[k,1]) + ','
        else
        //Parameters.ParamByName('11').Value := 0;
        squery:= squery + '0' + ',';
        if temp.count > 2 then
        //Parameters.ParamByName('12').Value := Form48.balls[k,2]
        squery:= squery + IntToStr(Form48.balls[k,2]) + ','
        else
        //Parameters.ParamByName('12').Value := 0;
        squery:= squery + '0' + ',';
        if temp.count > 3 then
        //Parameters.ParamByName('13').Value := Form48.balls[k,3]
        squery:= squery + IntToStr(Form48.balls[k,3]) + ','
        else
        //Parameters.ParamByName('13').Value := 0;
        squery:= squery + '0' + ',';
        if temp.count > 4 then
        //Parameters.ParamByName('14').Value := Form48.balls[k,4]
        squery:= squery + IntToStr(Form48.balls[k,4]) + ','
        else
        //Parameters.ParamByName('14').Value := 0;
        squery:= squery + '0' + ',';
     //Parameters.ParamByName('15').Value := IntToStr(dip1[1]);
     if (k+1 < 20) then squery:= squery +  IntToStr(dip1[k+1]) + ',';
     //Parameters.ParamByName('16').Value := IntToStr(dip1[2]);
     if (k+1 < 20) then squery:= squery +  IntToStr(dip2[k+1]) + ',';
     //Parameters.ParamByName('17').Value := res[1];
     if (k+1 < 20) then squery:= squery +  QuotedStr(res[k+1]) + ',';
     //Parameters.ParamByName('18').Value := IntToStr(Form34.Type_otvet);
     squery:= squery +  IntToStr(Form34.Type_otvet) + ',';
     //Parameters.ParamByName('19').Value := IntToStr(Type_obr);
     squery:= squery +  IntToStr(Type_obr) + ',';
     MyModule.ADOQuery1.Close;
     MyModule.ADOQuery1.SQL.Clear;
     MyModule.ADOQuery1.Sql.Add('SELECT * From Pictures WHERE N_testa=' + IntToStr(N) + ' AND N_vopros=' + IntToStr(k+1) + ' AND N_otveta=0');
     MyModule.ADOQuery1.Open;
     MyModule.ADOQuery1.First;
     squery:=squery + IntToStr(MyModule.ADOQuery1.FieldByName ('ID').AsInteger) + ')' ;
     SQL.Text:= squery;
   ExecSQL;
   temp.Free;
   end;
   end;
end

  Else   //??????? ?????? ?? ??????
    begin
    with MyModule.ADOQuery2 do
     begin
 Close;
    SQL.clear;
    Sql.Add('SELECT MAX(N_testa) AS MAXN FROM Test');
    Open;
    First;

    if FieldByName ('MAXN').AsInteger-100<=0 then
     begin
     N:= FieldByName ('MAXN').AsInteger+101;
     end
     else
      begin
     N:= FieldByName ('MAXN').AsInteger+1;
     end;

     Close;
     SQL.clear;
     Sql.Add('Insert into Test(N_testa,Nazv,Opis,Section_ID,Course_ID) ');
     Sql.Add('Values( ' + IntToStr(N) + ',' + QuotedStr(Form34.GlobNazv)  + ','  + QuotedStr(Form34.GlobOpis) + ',' + IntToStr(id) + ',' + IntToStr(cid) + ')');
     ExecSQL;


     Close;
     SQL.clear;
     Sql.Add('Insert into Test_Information(N_testa,Kolvo,question,Kol_otvet,otv1,otv2,otv3,otv4,otv5,bal1,bal2,bal3,bal4,bal5,diapazon1,diapazon2,result,type_otvet,type_obr) ');
     Sql.Add('Values(' + IntToStr(N) + ',' + IntToStr(Form34.GlobKolvo) + ',');
     Sql.Add('' + QuotedStr(Form33.ques[1]) + ',' + IntToStr(Form34.GlobKol_otvet) + ',');
     Sql.Add('' + QuotedStr(Form34.GlobOtv1)  + ','  + QuotedStr(Form34.GlobOtv2) + ','  + QuotedStr(Form34.GlobOtv3) + ','  + QuotedStr(Form34.GlobOtv4)  + ','  + QuotedStr(Form34.GlobOtv5) + ',');
     Sql.Add('' + IntToStr(Form34.GlobBal1) + ',' + IntToStr(Form34.GlobBal2) + ',' + IntToStr(Form34.GlobBal3) + ',' + IntToStr(Form34.GlobBal4) + ',' + IntToStr(Form34.GlobBal5) + ',');
     Sql.Add('' + IntToStr(dip1[1]) + ',' + IntToStr(dip2[1]) + ','+ QuotedStr(res[1])+ ',');
     Sql.Add('' + IntToStr(Form34.Type_otvet) + ',' + IntToStr(Type_obr) + ')');
     ExecSQL;
     end;
    end;

    with MyModule.ADOQuery2 do //???????? ID ??? ?????????? ???????????
    begin
    Close;
    SQL.clear;
    Sql.Add('Select N_1 from Test_Information where N_testa='+ inttostr(N));
    Open;
    first;
    Form34.ID:=MyModule.ADOQuery2.Fields[0].AsInteger+1;
    Form34.startID:=Form34.ID-1;
    end;

    {for i:=2 to Form34.GlobKolvo do
    begin
    with MyModule.ADOQuery2 do
      begin
      Close;
      SQL.clear;
      Sql.Add('Insert into Test_Information(N_testa, question) ');
      Sql.Add('Values(' + IntToStr(N) + ',' + QuotedStr(Form33.ques[i]) + ')');
      ExecSQL;
      end;
    end;}
   end

//?????? ??? ????????? ? ???????? ??????
Else
begin

 if ((Form34.Type_otvet=6) or (Form34.Type_otvet=5) or(Form34.Type_otvet=7)) then  //????? ?????? ???????
    begin
    with MyModule.ADOQuery2 do
    begin
     Close;
    SQL.clear;
    Sql.Add('SELECT MAX(N_testa) AS MAXN FROM Test');
    Open;
    First;

    if FieldByName ('MAXN').AsInteger-100<=0 then
     begin
     N:= FieldByName ('MAXN').AsInteger+101;
     end
     else
      begin
     N:= FieldByName ('MAXN').AsInteger+1;
     end;


     Close;
     SQL.clear;
     Sql.Add('Insert into Test(N_testa,Nazv,Opis,Section_ID,Course_ID) ');
     Sql.Add('Values( ' + IntToStr(N) + ',' +  QuotedStr(Form34.GlobNazv) + ',' + QuotedStr(Form34.GlobOpis) + ',' + IntToStr(id) + ',' + IntToStr(cid) + ')');
     ExecSQL;

   with MyModule.ADOQuery2 do
   begin
      for k:=0 to vopros.Count do
      begin
      SQL.clear;
      temp := delimited(otvety.Strings[k]);
      //Sql.Add('Insert into Test_Information(N_testa,Kolvo,question,Kol_otvet,otv1,otv2,otv3,otv4,otv5,bal1,bal2,bal3,bal4,bal5,type_otvet,type_obr,question_p) ');
      //Sql.Add('Values(:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12, :13, :14, :15, :16, :17)');
      squery:= 'INSERT INTO Test_Information (N_testa,Kolvo,question,Kol_otvet, otv1 ,otv2,otv3,otv4,otv5,bal1,bal2,bal3,bal4,bal5,type_otvet,type_obr,question_p) Values ';
      squery:= squery + '(' + IntToStr(N) + ',' + IntToStr(Form34.GlobKolvo) + ',' + QuotedStr(vopros.Strings[k]) + ',' + IntToStr(Form34.GlobKol_otvet) + ',';
      Sql.Add('Values(' + IntToStr(N) + ',' + IntToStr(Form34.GlobKolvo) + ',');
      Sql.Add('' + QuotedStr(Form33.ques[1]) + ',' + IntToStr(Form34.GlobKol_otvet) + ',');
      //Parameters.ParamByName('1').Value := IntToStr(N);
      //Parameters.ParamByName('2').Value := IntToStr(Form34.GlobKolvo);
      //Parameters.ParamByName('3').Value := vopros.Strings[k];
      //Parameters.ParamByName('4').Value := IntToStr(Form34.GlobKol_otvet);
     if temp.count > 0 then
     begin
        MyModule.ADOQuery1.Close;
        MyModule.ADOQuery1.SQL.Clear;
        MyModule.ADOQuery1.Sql.Add('SELECT * From Pictures WHERE N_testa=' + IntToStr(N) + ' AND N_vopros=' + IntToStr(k+1) + ' AND N_otveta=1');
        MyModule.ADOQuery1.Open;
        MyModule.ADOQuery1.First;
        //Parameters.ParamByName('5').Value := StringReplace(temp.Strings[0], ExtractFilePath(Application.ExeName),'', [rfReplaceAll, rfIgnoreCase])
        squery:= squery + IntToStr(MyModule.ADOQuery1.FieldByName ('ID').AsInteger) + ',';
        end
        else
        //Parameters.ParamByName('5').Value := '';
        squery:= squery  + '0,';
       if temp.count > 1 then
       begin
        MyModule.ADOQuery1.Close;
        MyModule.ADOQuery1.SQL.Clear;
        MyModule.ADOQuery1.Sql.Add('SELECT * From Pictures WHERE N_testa=' + IntToStr(N) + ' AND N_vopros=' + IntToStr(k+1) + ' AND N_otveta=2');
        MyModule.ADOQuery1.Open;
        MyModule.ADOQuery1.First;
        //Parameters.ParamByName('6').Value :=StringReplace(temp.Strings[1], ExtractFilePath(Application.ExeName),'', [rfReplaceAll, rfIgnoreCase])
        squery:=squery + IntToStr(MyModule.ADOQuery1.FieldByName ('ID').AsInteger) + ',';
        end
       else
       //Parameters.ParamByName('6').Value := '';
        squery:= squery  + '0,';
        if temp.count > 2 then
        begin
        MyModule.ADOQuery1.Close;
        MyModule.ADOQuery1.SQL.Clear;
        MyModule.ADOQuery1.Sql.Add('SELECT * From Pictures WHERE N_testa=' + IntToStr(N) + ' AND N_vopros=' + IntToStr(k+1) + ' AND N_otveta=3');
        MyModule.ADOQuery1.Open;
        MyModule.ADOQuery1.First;
        //Parameters.ParamByName('7').Value :=StringReplace(temp.Strings[2], ExtractFilePath(Application.ExeName),'', [rfReplaceAll, rfIgnoreCase])
        squery:= squery + IntToStr(MyModule.ADOQuery1.FieldByName ('ID').AsInteger) + ',';
        end
        else
        //Parameters.ParamByName('7').Value := '';
        squery:= squery  + '0,';
        if temp.count > 3 then
        begin
        MyModule.ADOQuery1.Close;
        MyModule.ADOQuery1.SQL.Clear;
        MyModule.ADOQuery1.Sql.Add('SELECT * From Pictures WHERE N_testa=' + IntToStr(N) + ' AND N_vopros=' + IntToStr(k+1) + ' AND N_otveta=4');
        MyModule.ADOQuery1.Open;
        MyModule.ADOQuery1.First;
        //Parameters.ParamByName('8').Value := StringReplace(temp.Strings[3], ExtractFilePath(Application.ExeName),'', [rfReplaceAll, rfIgnoreCase])
        squery:= squery + IntToStr(MyModule.ADOQuery1.FieldByName ('ID').AsInteger) + ',';
        end
        else
        //Parameters.ParamByName('8').Value := '';
        squery:= squery + '0,';
        if temp.count > 4 then
        begin
        MyModule.ADOQuery1.Close;
        MyModule.ADOQuery1.SQL.Clear;
        MyModule.ADOQuery1.Sql.Add('SELECT * From Pictures WHERE N_testa=' + IntToStr(N) + ' AND N_vopros=' + IntToStr(k+1) + ' AND N_otveta=5');
        MyModule.ADOQuery1.Open;
        MyModule.ADOQuery1.First;
        //Parameters.ParamByName('9').Value :=StringReplace(temp.Strings[4], ExtractFilePath(Application.ExeName),'', [rfReplaceAll, rfIgnoreCase])
        squery:= squery + IntToStr(MyModule.ADOQuery1.FieldByName ('ID').AsInteger) + ',';
        end
        else
        //Parameters.ParamByName('9').Value := '';
        squery:= squery  + '0,';
        if temp.count > 0 then
        //Parameters.ParamByName('10').Value := Form48.balls[k,0]
        squery:= squery + IntToStr(Form48.balls[k,0]) + ','
        else
        //Parameters.ParamByName('10').Value := 0;
        squery:= squery + '0' + ',';
        if temp.count > 1 then
        //Parameters.ParamByName('11').Value := Form48.balls[k,1]
        squery:= squery + IntToStr(Form48.balls[k,1]) + ','
        else
        //Parameters.ParamByName('11').Value := 0;
        squery:= squery + '0' + ',';
        if temp.count > 2 then
        //Parameters.ParamByName('12').Value := Form48.balls[k,2]
        squery:= squery + IntToStr(Form48.balls[k,2]) + ','
        else
        //Parameters.ParamByName('12').Value := 0;
        squery:= squery + '0' + ',';
        if temp.count > 3 then
        //Parameters.ParamByName('13').Value := Form48.balls[k,3]
        squery:= squery + IntToStr(Form48.balls[k,3]) + ','
        else
        //Parameters.ParamByName('13').Value := 0;
        squery:= squery + '0' + ',';
        if temp.count > 4 then
        //Parameters.ParamByName('14').Value := Form48.balls[k,4]
        squery:= squery + IntToStr(Form48.balls[k,4]) + ','
        else
        //Parameters.ParamByName('14').Value := 0;
        squery:= squery + '0' + ',';

        //Parameters.ParamByName('15').Value := IntToStr(Form34.Type_otvet);
        squery:= squery + IntToStr(Form34.Type_otvet) + ',';
        //Parameters.ParamByName('16').Value := IntToStr(Type_obr);
        squery:= squery + IntToStr(Type_obr) + ',';
        //Parameters.ParamByName('17').Value :=StringReplace(pathtoquestion[k], ExtractFilePath(Application.ExeName),'', [rfReplaceAll, rfIgnoreCase]);
        MyModule.ADOQuery1.Close;
        MyModule.ADOQuery1.SQL.Clear;
        MyModule.ADOQuery1.Sql.Add('SELECT * From Pictures WHERE N_testa=' + IntToStr(N) + ' AND N_vopros=' + IntToStr(k+1) + ' AND N_otveta=0' );
        MyModule.ADOQuery1.Open;
        MyModule.ADOQuery1.First;
        squery:=squery + IntToStr(MyModule.ADOQuery1.FieldByName ('ID').AsInteger) + ')' ;


        //squery:= squery + QuotedStr(StringReplace(pathtoquestion[k], ExtractFilePath(Application.ExeName),'', [rfReplaceAll, rfIgnoreCase])) + ')';
        SQL.Text:= squery;
        ExecSQL;
        temp.Free;
        end;
    if otvety <> nil then
    otvety.Free;
    otvety := nil;
    if  vopros <> nil then
    vopros.Free;
    vopros := nil;
    pathtoquestion.Free;
    pathtoquestion := nil;
    if form46 <>nil then
      begin
      Form46.FreeDynamics;
      form46.list_vopros.Clear;
      form46.memo_vopros.Lines.Clear;
      form46.Button2.Enabled:=True;
      end;
    end;
  end;
end
 Else
  begin
   with MyModule.ADOQuery2 do
    begin

     Close;
    SQL.clear;
    Sql.Add('SELECT MAX(N_testa) AS MAXN FROM Test');
    Open;
    First;

    if FieldByName ('MAXN').AsInteger-100<=0 then
     begin
     N:= FieldByName ('MAXN').AsInteger+101;
     end
     else
      begin
     N:= FieldByName ('MAXN').AsInteger+1;
     end;

    Close;
    SQL.clear;
    Sql.Add('Insert into Test(N_testa,Nazv,Opis,Section_ID,Course_ID) ');
    Sql.Add('Values( ' + IntToStr(N) + ',' + QuotedStr(Form34.GlobNazv) + ',' + QuotedStr(Form34.GlobOpis) + ',' + IntToStr(id) + ',' + IntToStr(cid) + ')');
    ExecSQL;


    Close;
    SQL.clear;
    Sql.Add('Insert into Test_Information(N_testa,Kolvo,question,Kol_otvet,otv1,otv2,otv3,otv4,otv5,bal1,bal2,bal3,bal4,bal5,diapazon1,diapazon2,result,type_otvet,type_obr) ');
    Sql.Add('Values(' + IntToStr(N) + ',' + IntToStr(Form34.GlobKolvo) + ',');
    Sql.Add('' + QuotedStr(Form33.ques[1]) + ',' + IntToStr(Form34.GlobKol_otvet) + ',');
    Sql.Add('' + QuotedStr(Form34.GlobOtv1) +  ','  + QuotedStr(Form34.GlobOtv2)  + ','  + QuotedStr(Form34.GlobOtv3)  + ',' + QuotedStr(Form34.GlobOtv4) + ','  + QuotedStr(Form34.GlobOtv5)  + ',');
    Sql.Add('' + IntToStr(Form32.bals1[1]) + ',' + IntToStr(Form32.bals2[1]) + ',' + IntToStr(Form32.bals3[1]) + ',' + IntToStr(Form32.bals4[1]) + ',' + IntToStr(Form32.bals5[1]) + ',');
    Sql.Add('' + IntToStr(dip1[1]) + ',' + IntToStr(dip2[1]) + ','+ QuotedStr(res[1]) + ',');
    Sql.Add('' + IntToStr(Form34.Type_otvet) + ',' + IntToStr(Type_obr) + ')');
    ExecSQL;
    end;
  end;

  with MyModule.ADOQuery2 do //???????? ID ??? ?????????? ???????????
   begin  //??? ID ?????? ??????!
   Close;
   SQL.clear;
   Sql.Add('Select N_1 from Test_Information where N_testa='+ inttostr(N));
   Open;
   first;
   Form34.ID:=MyModule.ADOQuery2.Fields[0].AsInteger+1;
   Form34.startID:=Form34.ID-1;
  // Form36.Edit1.Text:='ID ??? ?????????? ???????: '+IntToStr(Form34.ID);
  // Form36.Edit2.Text:='ID ?????? ? ??????: '+IntToStr(Form34.startID);
   end;
 {    if  ((Form34.Type_otvet<>5) and (Form34.Type_otvet<>7)) then
       begin
       for i:=2 to Form34.GlobKolvo do
          begin
          with MyModule.ADOQuery2 do
          begin
          Close;
          SQL.clear;
          Sql.Add('Insert into Test_Information(N_testa,question,bal1,bal2,bal3,bal4,bal5,Diapazon1,Diapazon2,Result) ');
          Sql.Add('Values(' + IntTostr(N) + ','  + QuotedStr(Form33.ques[i]) + ',' + IntToStr(Form32.bals1[i]) + ',' + IntToStr(Form32.bals2[i]) + ',' + IntToStr(Form32.bals3[i]) + ',' + IntToStr(Form32.bals4[i]) + ',' + IntToStr(Form32.bals5[i]) +')');
          ExecSQL;
          end;
        end;
    end;            }
 end; //of If-Else


// ??? ???? ????????? ? ??????????

i:=2;
 rememberID:=ID;
 repeat

  with MyModule.ADOQuery2 do
   begin
    Close;
    SQL.clear;
    Sql.Add('Insert into Test_Information(N_testa,Kolvo,question,Kol_otvet,otv1,otv2,otv3,otv4,otv5,bal1,bal2,bal3,bal4,bal5,diapazon1,diapazon2,result,type_otvet,type_obr) ');
    Sql.Add('Values(' + IntToStr(N) + ',' + IntToStr(Form34.GlobKolvo) + ',');
    Sql.Add('' + QuotedStr(Form33.ques[i]) + ',' + IntToStr(Form34.GlobKol_otvet) + ',');
    Sql.Add('' + QuotedStr(Form34.GlobOtv1) +  ','  + QuotedStr(Form34.GlobOtv2)  + ','  + QuotedStr(Form34.GlobOtv3)  + ',' + QuotedStr(Form34.GlobOtv4) + ','  + QuotedStr(Form34.GlobOtv5)  + ',');
    Sql.Add('' + IntToStr(Form32.bals1[i]) + ',' + IntToStr(Form32.bals2[i]) + ',' + IntToStr(Form32.bals3[i]) + ',' + IntToStr(Form32.bals4[i]) + ',' + IntToStr(Form32.bals5[i]) + ',');
    Sql.Add('' + IntToStr(dip1[i]) + ',' + IntToStr(dip2[i]) + ','+ QuotedStr(res[i]) + ',');
    Sql.Add('' + IntToStr(Form34.Type_otvet) + ',' + IntToStr(Type_obr) + ')');
    ExecSQL;
   end;
   i:=i+1;
   ID:=ID+1;

 until i=KolvoGroup+1;
 except
  on e:Exception do
  Application.MessageBox('????????? ???????? ?? ??? ???????????????','??????');
  end;

MyModule.INFORM.Close;
MyModule.INFORM.Open;
Form34.hide;
Form36.Show;

end;

procedure TForm34.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form62.show;
end;

end.
