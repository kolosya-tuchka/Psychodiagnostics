unit Unit59;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm59 = class(TForm)
     Question: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    Button7: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public   N:Integer;  // N - кол-во вопросов в тесте
    { Public declarations }
    metka,type_obr:integer;
    opis:string;
  end;

var
  Form59: TForm59;
   i:integer;
  Opis:String;
  Results :Array[1..200] of Integer;

  Bal1,Bal2,Bal3 :Integer;
  D1,D2:Integer;
  res,otv1,otv2:String;

  TypeObr:Integer;
  Itog:Integer;
  ID:Integer;


implementation

uses Unit35, Unit34, Unit39, Unit37, Unit58, Unit28, Unit2;

{$R *.dfm}

procedure TForm59.Button1Click(Sender: TObject);
var
myDate:string;
begin
i:=i+1;
If i<=Form59.N then
 begin
    results[i]:=radiogroup1.ItemIndex+1;
    ID:=ID+1;

    with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       Sql.Add('Select otv1,otv2 from Test_Information where N_1='+IntToStr(metka+ID));
       open;
       otv1:=MyModule.ADOQuery2.Fields[0].AsString;
       otv2:=MyModule.ADOQuery2.Fields[1].AsString;
     end;
     Form59.RadioGroup1.Items.Strings[0]:=otv1;
     Form59.RadioGroup1.Items.Strings[1]:=otv2;
     Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(Form59.N);


 end
ELSE
 begin
   ShowMessage('Вы успешно прошли тест!');

   If Form59.type_obr=1 then
    begin
       with MyModule.ADOQuery2 do
        begin
          Close;
          SQL.clear;
          Sql.Add('Select bal1,bal2 from Test_Information where N_1='+IntToStr(metka));
          open;
          bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
        end;

       for i:=1 to N do
        begin
          if results[i]=1 then Itog:=Itog+Bal1;
          if results[i]=2 then Itog:=Itog+Bal2;
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
             Sql.Add('Select bal1,bal2 from Test_Information where N_1='+IntToStr(metka+i-1));
             open;
             bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
             bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
             if results[i]=1 then Itog:=Itog+Bal1;
             if results[i]=2 then Itog:=Itog+Bal2;
          end;
       end;
 end;//of Else

  ID:=0;
  repeat
     with MyModule.ADOQuery2 do
       begin
          Close;
          SQL.clear;
          Sql.Add('Select diapazon1,diapazon2,result from Test_Information where N_1='+IntToStr(metka+ID));
          open;
          D1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          D2:=MyModule.ADOQuery2.Fields[1].AsInteger;
          res:=MyModule.ADOQuery2.Fields[2].AsString;
          ID:=ID+1;
       end;
  until ((D1>=Itog) or (Itog<=D2));
  Form39.Label2.Caption:=Form59.Label4.Caption;
  Form39.Label1.Caption:=(Form59.opis);
  Form39.Memo1.Lines.Text:=res;
   myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form39.Label5.Caption:=myDate;
  Form39.ShowModal;
 end;

end;

procedure TForm59.FormCreate(Sender: TObject);
begin
   i:=1; Itog:=0;
ID:=0;

end;

procedure TForm59.Button2Click(Sender: TObject);
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
       Sql.Add('Select otv1,otv2 from Test_Information where N_1='+IntToStr(metka+ID));
       open;
       otv1:=MyModule.ADOQuery2.Fields[0].AsString;
       otv2:=MyModule.ADOQuery2.Fields[1].AsString;
     end;

      Form59.RadioGroup1.Items.Strings[0]:=otv1;
     Form59.RadioGroup1.Items.Strings[1]:=otv2;

   Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(N);
end;



procedure TForm59.Button7Click(Sender: TObject);
begin
form59.close;
form2.show;
end;

procedure TForm59.N2Click(Sender: TObject);
begin
Form28.showmodal;
end;

procedure TForm59.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   
form2.show;
end;

procedure TForm59.N4Click(Sender: TObject);
begin
    form59.close;
form2.show;
end;

end.
