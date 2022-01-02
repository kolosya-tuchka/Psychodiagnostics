unit Balls;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TBal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button2Click(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Bal: TBal;

implementation

uses Unit29, hand_test, Unit35, Unit33;

{$R *.dfm}

procedure TBal.Button2Click(Sender: TObject);
begin
Bal.hide;
HandTest.Show;
end;

procedure TBal.FormShow(Sender: TObject);
begin
Edit1.Text:= HandTest.Nazv;
Memo1.Text:= HandTest.Opis;
Label5.Caption:= IntTostr(HandTest.N) + ' ' + 'вопроса(ов)';
end;

procedure TBal.Button1Click(Sender: TObject);
var e2,e3,N,i:integer;
begin

If (Edit1.Text = '') or (Memo1.Text='') or (Edit2.Text = '') or (Edit3.Text = '') then
    MessageBox(HandTest.Handle, 'Не заполнены все поля','Не закончен ввод информации', MB_OK)
    else
      begin
      try
        e2:=strtoint(Edit2.text);
        e3:=strtoint(Edit3.text);
      except
        on Exception : EConvertError do begin
        ShowMessage('ошибка ввода');
      exit;
      end;
      end;
 with MyModule.ADOQuery2 do
     begin
     Close;
     SQL.clear;
     Sql.Add('Insert into Test(Nazv,Opis) ');
     Sql.Add('Values( ' + #39 + Edit1.Text + #39 + ',' + #39 + Memo1.Lines.Text + #39 + ')');
     ExecSQL;

     Close;
     SQL.clear;
     Sql.Add('SELECT MAX(N_testa) AS MAXN FROM Test');
     Open;
     First;
     N:= FieldByName ('MAXN').AsInteger;


     Close;
     SQL.clear;
     Sql.Add('Insert into Test_Information(N_testa,Kolvo,question,bal1,bal2,type_otvet) ');
     Sql.Add('Values(' + IntToStr(N) + ',' + IntToStr(HandTest.N) + ',');
     Sql.Add('' + #39 + HandTest.ListBox1.Items.Strings[0] + #39 + ',');
     Sql.Add('' + Edit2.Text + ',' + Edit3.Text + ',');
     Sql.Add('' + IntToStr(HandTest.Type_otvet) +')');
     ExecSQL;
     end;
    end;

   for i:=2 to HandTest.N do
    begin
    with MyModule.ADOQuery2 do
      begin
      Close;
      SQL.clear;
      Sql.Add('Insert into Test_Information(N_testa, question) ');
      Sql.Add('Values(' + IntToStr(N) + ',' + #39 + HandTest.ListBox1.Items.Strings[i-1] + #39 + ')');
      ExecSQL;
      end;
    end;
    close;
   end;


end.

