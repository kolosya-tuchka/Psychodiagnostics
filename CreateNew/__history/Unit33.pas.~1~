unit Unit33;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm33 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    Label4: TLabel;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public ques:Array[0..200] of string;   number:integer;
    { Public declarations }
  end;

var
  Form33: TForm33;
 i:integer;

implementation

uses Unit32, Unit31, Unit30, Unit29, Unit34, Unit35, Unit41, Unit1, Unit40,
  Unit42, Unit43, Unit10, Unit44, Unit45, Unit2, Unit62;

{$R *.dfm}

procedure TForm33.FormCreate(Sender: TObject);
begin
  number:=1;
end;

procedure TForm33.Button3Click(Sender: TObject);
begin
Form41.button4.Enabled:=true;
Form41.label3.Caption:='1';
Form32.button4.Enabled:=true;
Form32.label3.Caption:='1';
Form43.button4.Enabled:=true;
Form43.label3.Caption:='1';
Form45.button4.Enabled:=true;
Form45.label3.Caption:='1';
Form33.hide;
Form30.Show;
end;

procedure TForm33.Button2Click(Sender: TObject);
begin
Form33.Close;
Form62.show;
end;

procedure TForm33.Button1Click(Sender: TObject);

begin
   Form33.hide;
     Form34.Show;
   
end;

procedure TForm33.Button4Click(Sender: TObject);
begin
ListBox1.Items.Strings[number-1]:=Memo1.Lines.Text;
Form33.ques[number]:=Memo1.Lines.Text;
Memo1.Lines.Clear;

If number<Form34.GlobKolvo then
begin
   number:=number+1;
   label3.Caption:=IntToStr(number);
end;

If ListBox1.Count=Form34.GlobKolvo then
begin
   button1.Enabled:=true;
   button4.Enabled:=false;
end;

end;

procedure TForm33.ListBox1DblClick(Sender: TObject);
begin
   Memo1.Lines.Text:=ListBox1.Items.Strings[ListBox1.ItemIndex];
   number:=ListBox1.ItemIndex+1;
   label3.Caption:=IntToStr(number);
   button4.Enabled:=true;
end;


procedure TForm33.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form62.show;
end;

end.
