unit Unit49;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm49 = class(TForm)
    Label12: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    Label4: TLabel;
    Label7: TLabel;
    Memo2: TMemo;
    ListBox2: TListBox;
    Button3: TButton;
    Label6: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public   number:integer;
    { Public declarations }
  end;

var
  Form49: TForm49;

implementation

uses Unit30, Unit29, Unit1, Unit33, Unit46, Unit34, Unit50, Unit2, Unit62;

{$R *.dfm}

procedure TForm49.Button3Click(Sender: TObject);
begin
Form49.hide;;
Form30.Show;
end;

procedure TForm49.Button2Click(Sender: TObject);
begin
Form62.show;
Form49.Close;
end;

procedure TForm49.Button4Click(Sender: TObject);
begin
Form33.ques[number]:='';
ListBox1.Items.Strings[number-1]:=Memo1.Lines.Text;
      if Form46= nil then
        Form46:=TForm46.Create(nil); 

Form46.otv1[number]:=Memo1.Lines.Text;

ListBox2.Items.Strings[number-1]:=Memo2.Lines.Text;
Form46.otv2[number]:=Memo2.Lines.Text;

Form46.otv3[number]:='';

Memo1.Lines.Clear;
Memo2.Lines.Clear;

If number<Form34.GlobKolvo then
begin
   number:=number+1;
   label3.Caption:=IntToStr(number);
   label6.Caption:=IntToStr(number);
end;

If ListBox1.Count=Form34.GlobKolvo then
begin
   button1.Enabled:=true;
   button4.Enabled:=false;
end;

end;

procedure TForm49.ListBox2DblClick(Sender: TObject);
begin
   Memo1.Lines.Text:=ListBox1.Items.Strings[ListBox2.ItemIndex];
   Memo2.Lines.Text:=ListBox2.Items.Strings[ListBox2.ItemIndex];
   number:=ListBox2.ItemIndex+1;
   label3.Caption:=IntToStr(number);
   label6.Caption:=IntToStr(number);
   button4.Enabled:=true;
end;

procedure TForm49.ListBox1DblClick(Sender: TObject);
begin
   Memo1.Lines.Text:=ListBox1.Items.Strings[ListBox1.ItemIndex];
   Memo2.Lines.Text:=ListBox2.Items.Strings[ListBox1.ItemIndex];
   number:=ListBox1.ItemIndex+1;
   label3.Caption:=IntToStr(number);
   label6.Caption:=IntToStr(number);
end;

procedure TForm49.FormCreate(Sender: TObject);
begin
number:=1;
end;

procedure TForm49.Button1Click(Sender: TObject);
begin
Form49.hide;
Form50.Show;
end;

procedure TForm49.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
