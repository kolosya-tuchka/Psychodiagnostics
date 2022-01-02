unit Unit28;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm28 = class(TForm)
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    RichEdit1: TRichEdit;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form28: TForm28;

implementation

uses Unit10, Unit13, Unit6, Unit15, Unit17, Unit19, Unit20, Unit21, Unit23,
       Unit55, Unit56, Unit57, Unit58, Unit37, Unit1, Unit2,
  Unit38, Unit7;

{$R *.dfm}

procedure TForm28.Button4Click(Sender: TObject);
begin
if Form28.ColorDialog1.Execute then
begin
Form28.Color:= ColorDialog1.Color;
Form28.RichEdit1.Color:= ColorDialog1.Color;
end;
end;

procedure TForm28.Button2Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Form28.RichEdit1.Font.Color := ColorDialog1.Color;
end;

procedure TForm28.Button5Click(Sender: TObject);
begin
Form28.Color:=clBtnFace;
Form28.RichEdit1.Color:=clWhite ;
Form28.RichEdit1.Font.Color:=clBlack ;
RichEdit1.font.Size:=14;
end;

procedure TForm28.ComboBox1Change(Sender: TObject);
var
size:integer;
begin

Case Form28.ComboBox1.ItemIndex of
  0: size:=10;
  1: size:=12;
  2: size:=16;
end;
        Form28.RichEdit1.Font.Size:=size;
        Form1.Font.Size:=size;
        Form2.Font.Size:=size;
        Form10.Font.Size:=size;
        Form13.Font.Size:=size;
        Form15.Font.Size:=size;
        Form17.Font.Size:=size;
        Form19.Font.Size:=size;
        Form20.Font.Size:=size;
        Form21.Font.Size:=size;
        Form23.Font.Size:=size;
        Form55.Font.Size:=size;
        Form56.Font.Size:=size;
        Form57.Font.Size:=size;
        Form58.Font.Size:=size;

        Form37.Font.Size:=size;
end;

procedure TForm28.Button6Click(Sender: TObject);
begin
   close;
end;

procedure TForm28.Button1Click(Sender: TObject);
begin

Form1.Color:=Form28.Color;
Form2.Color:=Form28.Color;
Form10.Color:=Form28.Color;
Form13.Color:=Form28.Color;
Form15.Color:=Form28.Color;
Form17.Color:=Form28.Color;
Form19.Color:=Form28.Color;
Form20.Color:=Form28.Color;
Form21.Color:=Form28.Color;
Form23.Color:=Form28.Color;
Form55.Color:=Form28.Color;
Form56.Color:=Form28.Color;
Form57.Color:=Form28.Color;
Form58.Color:=Form28.Color;

Form37.Color:=Form28.Color;
Form7.Color:=Form28.Color;


Form1.Question.Color:=Form28.RichEdit1.Color;
Form1.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form1.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form1.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form10.Question.Color:=Form28.RichEdit1.Color;
Form10.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form10.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form10.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form13.Question.Color:=Form28.RichEdit1.Color;
Form13.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form13.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form13.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form15.Question.Color:=Form28.RichEdit1.Color;
Form15.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form15.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form15.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form17.Question.Color:=Form28.RichEdit1.Color;
Form17.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form17.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form17.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form19.Question.Color:=Form28.RichEdit1.Color;
Form19.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form19.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form19.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form20.Question.Color:=Form28.RichEdit1.Color;
Form20.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form20.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form20.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form21.Question.Color:=Form28.RichEdit1.Color;
Form21.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form21.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form21.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form23.Question.Color:=Form28.RichEdit1.Color;
Form23.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form23.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form23.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form55.Question.Color:=Form28.RichEdit1.Color;
Form55.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form55.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form55.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form56.Question.Color:=Form28.RichEdit1.Color;
Form56.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form56.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form56.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form57.Question.Color:=Form28.RichEdit1.Color;
Form57.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form57.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form57.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form58.Question.Color:=Form28.RichEdit1.Color;
Form58.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form58.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form58.Question.Font.Size:=Form28.RichEdit1.font.Size;




Form37.Question.Color:=Form28.RichEdit1.Color;
Form37.Question.Font.Color:=Form28.RichEdit1.Font.Color;
Form37.Question.Font.Style:=Form28.RichEdit1.Font.Style;
Form37.Question.Font.Size:=Form28.RichEdit1.font.Size;

Form10.RadioGroup1.Color:=Form28.Color;
Form1.RadioGroup1.Color:=Form28.Color;
Form10.RadioGroup1.Color:=Form28.Color;
Form13.RadioGroup1.Color:=Form28.Color;
Form15.RadioGroup1.Color:=Form28.Color;
Form17.RadioGroup1.Color:=Form28.Color;
Form19.RadioGroup1.Color:=Form28.Color;
Form20.RadioGroup1.Color:=Form28.Color;
Form21.RadioGroup1.Color:=Form28.Color;
Form23.RadioGroup1.Color:=Form28.Color;
Form55.RadioGroup1.Color:=Form28.Color;
Form56.RadioGroup1.Color:=Form28.Color;
Form57.RadioGroup1.Color:=Form28.Color;

Form37.RadioGroup1.Color:=Form28.Color;

close;
end;

procedure TForm28.CheckBox1Click(Sender: TObject);
begin
If CheckBox1.Checked=true then Form28.RichEdit1.Font.Style:=[fsBold]
Else Form28.RichEdit1.Font.Style:=[];
end;

end.

