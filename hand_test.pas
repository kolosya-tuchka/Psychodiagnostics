unit hand_test;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  THandTest = class(TForm)
    Button4: TButton;
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  N:integer;
  number,Type_otvet, index:integer;
  Nazv,Opis:string;
    { Public declarations }
  end;

var
  HandTest: THandTest;

implementation

uses Unit29, Unit62, Unit30, Balls;

{$R *.dfm}

procedure THandTest.FormShow(Sender: TObject);
begin
if number>1 then
begin
    number:=number+1;
    label4.Caption:=intToStr(number);
end;
Nazv:=Form29.Edit1.Text;
Opis:=Form29.Memo1.Text;
N:=strToint(Form29.Edit2.Text);
Memo1.Text:= '';
Label1.Caption:= inTtostr(N) + ' ' + 'вопроса(ов)';
if number<N then
  begin
  button4.Enabled:= True;
  Button1.Enabled:= False;
  end;
index := -1;
end;

procedure THandTest.Button2Click(Sender: TObject);
begin
HandTest.hide;
Form62.show;
end;

procedure THandTest.Button3Click(Sender: TObject);
begin
HandTest.Close;
end;

procedure THandTest.Button4Click(Sender: TObject);
begin
if index <> -1 then begin
ListBox1.Items[index] := Memo1.Lines.Text;
end
else begin
ListBox1.Items.Add(Memo1.Lines.Text);
Memo1.Lines.Clear;
If number<N then
begin
   number:=number+1;
   label4.Caption:=intToStr(number);
end
else
  begin
  button1.Enabled:=True;
  button4.Enabled:=False;
  end;
end;
index := -1;
end;

procedure THandTest.ListBox1DblClick(Sender: TObject);
begin
   Memo1.Lines.Text:=ListBox1.Items.Strings[ListBox1.ItemIndex];
   index:=ListBox1.ItemIndex;
   label1.Caption:=IntToStr(number+1);
   button4.Enabled:=true;
end;

procedure THandTest.Button1Click(Sender: TObject);
begin
 HandTest.hide;
    try
      Bal :=TBal.Create(nil);
      Bal.ShowModal;
    finally
      freeandnil(Bal);
    end;
   Form62.Show;
end;

procedure THandTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form30.Show
end;

end.
