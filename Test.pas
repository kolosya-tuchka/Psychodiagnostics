unit Test;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls;

type
  TTestRuk = class(TForm)
    Label1: TLabel;
    Question: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  N,metka,metka_ot,type_obr,numeretic:integer;
  opis:string;
    { Public declarations }
  end;

var
  TestRuk: TTestRuk;
  Results :Array of Integer;
  i,ID:integer;
  myDate:string;

implementation

uses StartTest, Unit35, Unit28, Unit8, Unit7, TestRukResults, Unit39, Unit62;

{$R *.dfm}

procedure TTestRuk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Form7.button_select = 1 then
begin
Form62.show;
Form7.button_select:=0;
end
else
Form2.show;
end;

procedure TTestRuk.Button3Click(Sender: TObject);
begin
TestRuk.Close;
end;

procedure TTestRuk.FormShow(Sender: TObject);
begin
ID:=0;
i:=1;
Button2.Enabled:= False;
Memo1.Clear;
end;

procedure TTestRuk.Button1Click(Sender: TObject);
var nomer:integer;
squery:string;
begin
Button2.Enabled:= True;
if Form7.button_select = 1 then
begin
 SetLength(Results, TestRuk.N);
 SetLength(TestResults.massiv, TestRuk.N);
 Results[i-1]:=radiogroup1.ItemIndex;
 i:=i+1;
    if  i <= TestRuk.N then
      begin
      ID:=ID+1;
      Memo1.Clear;
      with MyModule.ADOQuery2 do
      begin
       Close;
       SQL.Clear;
       squery:= 'Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       first;
       TestRuk.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
      end;

       Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(TestRuk.N);

       with MyModule.ADOQuery2 do
      begin
       Close;
       SQL.clear;
       squery:= 'Select Result_inter from Intermediate_result where ID='+IntToStr(metka_ot+ID);
       SQL.Text:= squery;
       open;
       first;
       Memo1.Text:= MyModule.ADOQuery2.Fields[0].AsString;
      end;
    end
    else
    begin
    ShowMessage('Вы успешно прошли тест!');
    for i:=0 to TestRuk.N do
        begin
    TestResults.massiv[i]:=results[i];
        end;

     TestRuk.Hide;
     TestResults.Show;
    end;

end




else
begin
i:=i+1;
if  i <= TestRuk.N then
 begin
    ListBox1.Items.Add(Memo1.Lines.Text);
    ID:=ID+1;
    Memo1.Clear;
    with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:= 'Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       first;
       TestRuk.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;

     end;

       Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(TestRuk.N);

 end
ELSE
 begin
 ListBox1.Items.Add(Memo1.Lines.Text);
 Memo1.Clear;
 ShowMessage('Вы успешно прошли тест!');
 myDate:=FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);

       MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Intermediate_result where N_vlast=' + inttostr(Form8.id_vlast)+ ' AND N_testa=' + inttostr(numeretic);
       MyModule.ADOQuery1.SQL.Text:= squery;
       MyModule.ADOQuery1.open;

       if (MyModule.ADOQuery1.RecordCount = 0) then begin
         MyModule.ADOQuery1.Insert;
         MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
         MyModule.ADOQuery1.FieldByName('N_testa').AsString:=inttostr(numeretic);
         MyModule.ADOQuery1.FieldByName('Result_inter').AsString:=ListBox1.Items.Strings[0];
         MyModule.ADOQuery1.FieldByName('Result_Data').AsString:=myDate;
         MyModule.ADOQuery1.Active:=True;
         MyModule.ADOQuery1.Post;

         for i:=1 to TestRuk.N-1 do
         begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:=inttostr(numeretic);
          MyModule.ADOQuery1.FieldByName('Result_inter').AsString:=ListBox1.Items.Strings[i];
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;
         end;
       end

       else begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'SELECT * FROM Intermediate_result WHERE N_testa=' + IntToStr(numeretic);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.open;
         MyModule.ADOQuery1.first;
         nomer:=MyModule.ADOQuery1.Fields[0].AsInteger;

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Intermediate_result SET Result_inter=' + QuotedStr(ListBox1.Items.Strings[0]) + ' ,Result_Data=' + QuotedStr(myDate) + ' where N_vlast='+ inttostr(Form8.id_vlast)+' AND N_testa=' + inttostr(numeretic) + ' AND ID=' + intTostr(nomer);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;


         end;

         for i:=1 to TestRuk.N-1 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Intermediate_result SET Result_inter=' + QuotedStr(ListBox1.Items.Strings[i]) + ' where N_vlast='+ inttostr(Form8.id_vlast)+' AND N_testa=' + inttostr(numeretic) + ' AND ID=' + intTostr(nomer+i);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'SELECT * FROM Test_app where Name_test=' + QuotedStr(label1.caption);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.open;

       if (MyModule.ADOQuery1.RecordCount = 0) then
        begin
         MyModule.ADOQuery1.Insert;
         MyModule.ADOQuery1.FieldByName('Name_test').AsString:=label1.caption;
         MyModule.ADOQuery1.Active:=True;
         MyModule.ADOQuery1.Post;
         end;
 TestRuk.Close;
end;
end;
end;
procedure TTestRuk.N2Click(Sender: TObject);
begin
Form28.Showmodal;
end;

procedure TTestRuk.N1Click(Sender: TObject);
var squery:string;
begin
Button2.Enabled:=False;

ID:=0;
i:=1;
with MyModule.ADOQuery2 do
begin
  Close;
  SQL.clear;
  squery:= 'Select question from Test_Information where N_1='+IntToStr(metka+ID);
  SQL.Text:= squery;
  open;
  first;
end;
TestRuk.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
TestRuk.Caption:='Вопрос '+ '1' + ' из ' +IntToStr(N);

end;

procedure TTestRuk.Button2Click(Sender: TObject);
var squery:string;
begin
   i:=i-1;

   ID:=ID-1;
   with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:= 'Select question from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       TestRuk.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
    end;

   Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(TestRuk.N);
   if ID=0 then
   Button2.Enabled:=False;
end;

end.




