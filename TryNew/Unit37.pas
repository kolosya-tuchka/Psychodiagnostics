unit Unit37;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm37 = class(TForm)
    Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button7: TButton;
    Label4: TLabel;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
   private
    { Private declarations }
  public N, tag:Integer;  // N - ���-�� �������� � �����

    { Public declarations }
    metka,id,type_obr:Integer;
    opis:string;
  end;

var
  Form37: TForm37;
  i,n:integer;
  Opis:String;
  Results :Array of Integer;

  Bal1,Bal2 :Integer;
  D1,D2:Integer;
  res:String;

  Type_Obr,nom:Integer;
  Itog:Integer;
  ID:Integer;

implementation

uses Unit35, Unit34, Unit39, StartTest, Unit38, Unit28, Result, Unit11, Unit78;

{$R *.dfm}

procedure TForm37.FormCreate(Sender: TObject);
begin
i:=1; Itog:=0;
ID:=0;


//���-�� ���������� �������
end;

procedure TForm37.Button1Click(Sender: TObject);
var
myDate,squery:string;
begin
 i:=i+1;
if  i <= Form37.N then
 begin
    case radiogroup1.ItemIndex of
    0:
      results[i-2]:=1;
    1:
      results[i-2]:=2;
    end;
    ID:=ID+1;

    with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:= 'Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       first;
       Form37.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;

     end;

       Caption:='������ '+IntToStr(i)+' �� '+IntToStr(Form37.N);

 end
ELSE
 begin
 case radiogroup1.ItemIndex of
    0:
      results[i-2]:=1;
    1:
      results[i-2]:=2;
       end;
   ShowMessage('�� ������� ������ ����!');

   If Form37.type_obr=1 then
    begin
       with MyModule.ADOQuery2 do
        begin
          Close;
          SQL.clear;
          squery:= 'Select bal1,bal2 from Test_Information where N_1='+IntToStr(metka);
          SQL.Text:= squery;
          open;
          bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
        end;

       for i:=0 to N do
        begin
          if results[i]=1 then
            Itog:=Itog+Bal1;
          if results[i]=0 then
            Itog:=Itog+Bal2;
        end;

    end
   Else
    begin
      for i:=0 to N do
       begin
        with MyModule.ADOQuery2 do
          begin
             Close;
             SQL.clear;
             squery:= 'Select bal1,bal2 from Test_Information where N_1='+IntToStr(metka+i);
             SQL.Text:= squery;
             open;
             bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
             bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
             if results[i]=1 then Itog:=Itog+Bal1;
             if results[i]=0 then Itog:=Itog+Bal2;
          end;
       end;
 end;//of Else

  ID:=0;
  repeat
     with MyModule.ADOQuery2 do
       begin
          Close;
          SQL.clear;
          squery:= 'Select diapazon1,diapazon2,result from Test_Information where N_1='+IntToStr(metka+ID);
          SQL.Text:= squery;
          open;
          D1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          D2:=MyModule.ADOQuery2.Fields[1].AsInteger;
          res:=MyModule.ADOQuery2.Fields[2].AsString;
          if (res = '') then break;
          ID:=ID+1;
       end;
  until ((D1>=Itog) or (Itog<=D2));
   Form39.Memo1.Clear;
   Form39.Memo1.Lines.Text:=res;
   Form39.Label1.Caption:=(Form37.opis);
  Form39.Label2.Caption:=Form37.Label4.caption;
  Form39.score := Itog;
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form39.Label5.Caption:=myDate;
  Form39.kolvo_vopros:=Form37.N;
  for i:=0 to Form37.N do
        begin
  Form39.massiv[i]:=results[i];
        end;
  Form37.hide;
   i:=1; Itog:=0;
    ID:=0;

  Form39.Show;

 end;
end;

procedure TForm37.Button2Click(Sender: TObject);
var
squery:string;
begin
   i:=i-1;
   If i<1 then i:=1;
   If results[i]=0 then radiogroup1.ItemIndex:=1;
   If results[i]=1 then radiogroup1.ItemIndex:=0;

   ID:=ID-1;
   If ID<0 then ID:=0;

   with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:= 'Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       Form37.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
    end;

   Caption:='������ '+IntToStr(i)+' �� '+IntToStr(N);
end;

procedure TForm37.Button7Click(Sender: TObject);
begin
Form37.hide;
Form78.Show;

end;

procedure TForm37.N2Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TForm37.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form78.Show;
end;

procedure TForm37.FormShow(Sender: TObject);
begin
SetLength(Results, Form37.N);
SetLength(Form39.massiv, Form37.N);
end;

end.
