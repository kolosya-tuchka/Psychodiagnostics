unit Unit57;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm57 = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public N:Integer;  // N - кол-во вопросов в тесте
    { Public declarations }
    metka,type_obr:integer;
    opis:string;
  end;

var
  Form57: TForm57;
  i:integer;
  Opis:String;
  Results :Array of Integer;

  Bal1,Bal2,Bal3,Bal4,Bal5 :Integer;
  D1,D2:Integer;
  res:String;

  TypeObr:Integer;
  Itog:Integer;
  ID:Integer;


implementation

uses Unit37, Unit35, Unit34, Unit39, Unit28, Unit2;

{$R *.dfm}

procedure TForm57.FormCreate(Sender: TObject);
begin
   i:=1; Itog:=0;
ID:=0;


end;

procedure TForm57.Button1Click(Sender: TObject);
var
myDate,squery:string;
begin
 i:=i+1;
If i<=Form57.N then
 begin
 case radiogroup1.ItemIndex of
    0:
      results[i-2]:=1;
    1:
      results[i-2]:=2;
    2:
      results[i-2]:=3;
    3:
      results[i-2]:=4;
    4:
      results[i-2]:=5;
     end;
    ID:=ID+1;

    with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:='Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       Form57.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
     end;
         Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(Form57.N);


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
    3:
      results[i-2]:=4;
    4:
      results[i-2]:=5;
     end;
   ShowMessage('Вы успешно прошли тест!');

   If Form57.type_obr=1 then
    begin
       with MyModule.ADOQuery2 do
        begin
          Close;
          SQL.clear;
          squery:='Select bal1,bal2,bal3,bal4,bal5 from Test_Information where N_1='+IntToStr(metka);
          SQL.Text:= squery;
          open;
          bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
          bal3:=MyModule.ADOQuery2.Fields[2].AsInteger;
          bal4:=MyModule.ADOQuery2.Fields[3].AsInteger;
          bal5:=MyModule.ADOQuery2.Fields[4].AsInteger;
        end;

       for i:=1 to N do
        begin
          if results[i]=1 then Itog:=Itog+Bal1;
          if results[i]=2 then Itog:=Itog+Bal2;
          if results[i]=3 then Itog:=Itog+Bal3;
          if results[i]=4 then Itog:=Itog+Bal4;
          if results[i]=5 then Itog:=Itog+Bal5;
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
             squery:='Select bal1,bal2,bal3,bal4,bal5 from Test_Information where N_1='+IntToStr(metka);
             SQL.Text:= squery;
             open;
             bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
             bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
             bal3:=MyModule.ADOQuery2.Fields[2].AsInteger;
             bal4:=MyModule.ADOQuery2.Fields[3].AsInteger;
             bal5:=MyModule.ADOQuery2.Fields[4].AsInteger;
             if results[i]=1 then Itog:=Itog+Bal1;
             if results[i]=2 then Itog:=Itog+Bal2;
             if results[i]=3 then Itog:=Itog+Bal3;
             if results[i]=4 then Itog:=Itog+Bal4;
             if results[i]=5 then Itog:=Itog+Bal5;
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
  Form39.Label2.Caption:=Form57.Label4.Caption;
  Form39.Label1.Caption:=(Form57.opis);
  Form39.Memo1.Lines.Text:=res;
  myDate :=FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form39.Label5.Caption:=myDate;
  Form39.kolvo_vopros:=Form57.N;
  for i:=0 to Form57.N do
        begin
  Form39.massiv[i]:=results[i];
        end;
      i:=1; Itog:=0;
    ID:=0;
  Form57.hide;
  Form39.Show;
 end;

end;

procedure TForm57.Button2Click(Sender: TObject);
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
       Form57.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
     end;
   Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(N);
end;

procedure TForm57.N2Click(Sender: TObject);
begin
 Form28.Showmodal;
end;

procedure TForm57.Button7Click(Sender: TObject);
begin
form57.close;
form2.show;
end;

procedure TForm57.N4Click(Sender: TObject);
begin
form57.close;
form2.show;
end;

procedure TForm57.FormClose(Sender: TObject; var Action: TCloseAction);
begin

form2.show;
end;

procedure TForm57.FormShow(Sender: TObject);
begin
SetLength(Results, Form57.N);
SetLength(Form39.massiv, Form57.N);
end;

end.
 