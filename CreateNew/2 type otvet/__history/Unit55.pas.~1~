unit Unit55;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, DB, Data.Win.ADODB;

type
  TForm55 = class(TForm)
      Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    Button7: TButton;
    Label4: TLabel;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public  N:Integer;  // N - кол-во вопросов в тесте
    { Public declarations }
    metka,type_obr:integer;
    opis:string;
  end;

var
  Form55: TForm55;
  i:integer;
  Opis:String;
  Results :Array of Integer;

  Bal1,Bal2,Bal3 :Integer;
  D1,D2:Integer;
  res:String;

  TypeObr:Integer;
  Itog:Integer;
  ID:Integer;


implementation

uses Unit35, Unit34, Unit39, Unit37, Unit28, Unit2;

{$R *.dfm}

procedure TForm55.Button1Click(Sender: TObject);
var
myDate,squery:string;
begin
i:=i+1;

If i<=Form55.N then
 begin
case radiogroup1.ItemIndex of
    0:
      results[i-2]:=1;
    1:
      results[i-2]:=2;
    2:
      results[i-2]:=3;
     end;
    ID:=ID+1;

    with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:='Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery ;
       open;
       Form55.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
     end;
         Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(Form55.N);

 end
ELSE
 begin
 case radiogroup1.ItemIndex of
    0:
      results[i-2]:=1;
    1:
      results[i-2]:=2;
    2:
      results[i-2]:=3;
     end;
   ShowMessage('Вы успешно прошли тест!');

   If Form55.type_obr=1 then
    begin
       with MyModule.ADOQuery2 do
        begin
          Close;
          SQL.clear;
          squery:='Select bal1,bal2,bal3 from Test_Information where N_1='+IntToStr(metka);
          SQL.Text:= squery ;
          open;
          bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
          bal3:=MyModule.ADOQuery2.Fields[2].AsInteger;
        end;

       for i:=1 to N do
        begin
          if results[i]=1 then
           Itog:=Itog+Bal1
          else
          if results[i]=2 then
          Itog:=Itog+Bal2
          else
          if results[i]=3 then
           Itog:=Itog+Bal3;
        end;
    end
   Else
    begin
      for i:=1 to N do
       begin
        with MyModule.ADOQuery2 do
          begin
             Close;
             SQL.clear;
             squery:='Select bal1,bal2,bal3 from Test_Information where N_1='+IntToStr(metka+i-1);
             SQL.Text:= squery;
             open;
             bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
             bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
             bal3:=MyModule.ADOQuery2.Fields[2].AsInteger;
             if results[i]=1 then Itog:=Itog+Bal1;
             if results[i]=2 then Itog:=Itog+Bal2;
             if results[i]=3 then Itog:=Itog+Bal3;
          end;
       end;
 end;//of Else

  ID:=0;
  repeat
     with MyModule.ADOQuery2 do
       begin
          Close;
          SQL.clear;
          squery:='Select diapazon1,diapazon2,result from Test_Information where N_1='+IntToStr(metka+ID);
          SQL.Text:= squery;
          open;
          D1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          D2:=MyModule.ADOQuery2.Fields[1].AsInteger;
          res:=MyModule.ADOQuery2.Fields[2].AsString;
          ID:=ID+1;
       end;
  until ((D1>=Itog) or (Itog<=D2));
  Form39.Label2.Caption:=Form55.Label4.Caption;
  Form39.Label1.Caption:=(Form55.opis);
  Form39.Memo1.Lines.Text:=res;
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form39.Label5.Caption:=myDate;
  Form39.kolvo_vopros:=Form55.N;
  for i:=0 to Form55.N do
        begin
  Form39.massiv[i]:=results[i];
        end;
   i:=1; Itog:=0;
  ID:=0;
  Form55.Hide;
  Form39.Show;
 end;
end;

procedure TForm55.Button2Click(Sender: TObject);
var squery:string;
begin
   i:=i-1;
   If i<1 then i:=1;

   radiogroup1.ItemIndex:=results[i]-1;

   ID:=ID-1;
   If ID<0 then ID:=0;

   with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:='Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       Form55.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
    end;

   Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(N);
end;

procedure TForm55.Button7Click(Sender: TObject);
begin
form55.close;
form2.show;
end;

procedure TForm55.FormCreate(Sender: TObject);
begin
i:=1; Itog:=0;
ID:=0;

end;

procedure TForm55.N2Click(Sender: TObject);
begin
Form28.Show;
end;

procedure TForm55.N4Click(Sender: TObject);
begin
form55.close;
form2.show;
end;

procedure TForm55.FormClose(Sender: TObject; var Action: TCloseAction);
begin

form2.show;
end;

procedure TForm55.FormShow(Sender: TObject);
begin
SetLength(Results, Form55.N);
SetLength(Form39.massiv, Form55.N);
end;

end.
