unit Unit70;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, XMLDoc, ExtCtrls, Menus;

type
  TForm70 = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Image1: TImage;
    Edit2: TEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    

    
  private
    { Private declarations }
  public
  Id_vopros:integer;
    { Public declarations }
  end;

var
  Form70: TForm70;
  countquest:integer;
  Select: Array of integer;
  string_ruk:Array[0..52] of string;
  string_mul:Array[0..52] of string;
implementation

uses Unit49, Unit35, Unit8, Unit66, Unit67;

{$R *.dfm}




procedure TForm70.FormShow(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,nomer,message: integer;
begin
RadioGroup1.Items.Clear;
RadioGroup1.Visible:=False;
GroupBox1.Visible:=False;
GroupBox2.Visible:=False;
Edit1.Clear;
CheckBox1.Caption:='';
CheckBox1.Visible:=False;
CheckBox2.Caption:='';
CheckBox2.Visible:=False;
CheckBox3.Caption:='';
CheckBox3.Visible:=False;
CheckBox4.Caption:='';
CheckBox4.Visible:=False;
CheckBox5.Caption:='';
CheckBox5.Visible:=False;
CheckBox6.Caption:='';
CheckBox6.Visible:=False;
  Case Form49.N_glava of
    2:begin
 Case Form49.N_metod of
    2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      countquest := XmLquestions.ChildNodes.Count;
      SetLength(Select,countquest);
      Form70.Caption:= 'Вопрос 1 из ' + IntToStr(countquest);
      XmLquestion :=XmLquestions.ChildNodes[0];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      RadioGroup1.Visible:=True;
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items.Add(VarToStr(Xmlvariant.Attributes['text']));
        RadioGroup1.Buttons[j].WordWrap := True;
        RadioGroup1.Buttons[j].Checked :=True;
        end;
    end;
   end;
 end;
 end;

Id_vopros:=0;
end;

procedure TForm70.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form49.Show;
end;

procedure Key_33;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
bls:Array[1..5] of Integer;
answer,answer2,a1:string;
myDate:string;
ch,i,j,g,ok,pos:integer;
begin
  for i:=1 to countquest-3 do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\33.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   answer:=VarToStr(XmLquestion.Attributes['bal']);

   case i of
   21,47:begin
   ok:=0;
   a1:=string_mul[i-1];
   for j:=1 to length(a1) do
   begin
    for g:=1 to length(answer) do
      begin
      if a1[j]=answer[g] then
      begin
      ok:=ok+1;
      break;
      end;
      end;
   end;
   if ok=2 then ch:=ch+1;
   end;

   13:begin
   ok:=0;
   a1:=string_mul[i-1];
   for j:=1 to length(a1) do
   begin
    for g:=1 to length(answer) do
      begin
      if a1[j]=answer[g] then
      begin
      ok:=ok+1;
      break;
      end;
      end;
   end;
   if ok=4 then ch:=ch+1;
   end;

   8:begin
   ok:=0;
   a1:=string_mul[i-1];
   for j:=1 to length(a1) do
   begin
    for g:=1 to length(answer) do
      begin
      if a1[j]=answer[g] then
      begin
      ok:=ok+1;
      break;
      end;
      end;
   end;
   if ok=1 then ch:=ch+1;
   end;

   1,2,3,4,5,6,7,9,11,14,15,19,23,24,26,28,30,34,35,36,38,41,43,48,51,52:begin
   if inttostr(select[i-1])=answer then ch:=ch+1;
   end;
   10,12,16,17,18,20,22,25,27,31,33,37,39,40,42,44,45,46,49,50,53:begin
   if string_ruk[i-1]=answer then ch:=ch+1;
   end;
   29:begin
   answer2:=VarToStr(XmLquestion.Attributes['bal2']);
   if answer=string_ruk[i-1] then
     if answer2=string_ruk[i-2] then
        ch:=ch+1
     else ch:=ch;

   if answer2=string_ruk[i-1] then
    if answer=string_ruk[i-2] then
      ch:=ch+1
   else ch:=ch;
   end;

   32:begin
   ok:=0;
   a1:=string_ruk[i-1];
   for j:=1 to length(a1) do
   begin
    for g:=1 to length(answer) do
      begin
      if a1[j]=answer[g] then
      begin
      ok:=ok+1;
      break;
      end;
      end;
   end;
   if ok=3 then ch:=ch+1;
   end;
   end;
  end;
Form66.Memo1.Clear;
  case Form8.pol of
  0:begin
    case select[50] of
      1:begin
        case select[51] of
          1:begin
            case ch of
              0..10:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              11..15:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              16..26:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              27..31:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              32..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;

          2:begin
            case ch of
              0..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              9..12:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              13..21:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              22..25:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              26..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;

          3:begin
            case select[52] of
              16..29:begin
                case ch of
                  0..4:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  5..9:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  10..20:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  21..25:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  26..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              30..41:begin
                case ch of
                  0..1:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  2..6:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  7..17:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  18..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  23..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              42..120:begin
                case ch of
                  0..2:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  3..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  8..18:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  19..23:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  24..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
           end;
          end;
          4:begin
            case select[52] of
              16..29:begin
                case ch of
                  0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  4..9:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  10..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  23..28:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  29..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              30..40:begin
                case ch of
                  0..4:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  5..9:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  10..20:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  21..25:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  26..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              41..120:begin
                case ch of
                  0..2:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  3..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  8..18:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  19..23:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  24..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
          end;
          end;

          5:begin
            case ch of
              0..1:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              2..6:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              7..17:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              18..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              23..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;
         end;
      end;

      2:begin
        case select[51] of
          1:begin
            case ch of
              0..10:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              11..14:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              15..23:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              24..27:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              28..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;

          2:begin
            case ch of
              0..6:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              7..10:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              11..19:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              20..23:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              24..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;

          3:begin
            case select[52] of
              16..29:begin
                case ch of
                  0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  4..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  9..19:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  20..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  25..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              30..41:begin
                case ch of
                  0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  4..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  8..16:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  17..20:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  21..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              42..120:begin
                case ch of
                  0..2:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  3..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  8..18:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  19..23:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  24..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
           end;
          end;
          4:begin
            case select[52] of
              16..29:begin
                case ch of
                  0..2:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  3..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  9..21:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  22..27:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  28..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              30..40:begin
                case ch of
                  0..1:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  2..6:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  7..17:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  18..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  23..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              41..120:begin
                case ch of
                  0..1:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  2..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  8..20:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  21..26:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  27..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
          end;
          end;

          5:begin
            case ch of
              0..1:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              2..5:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              6..14:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              15..18:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              19..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;
         end;
      end;
    end;
   end;


   1:begin
    case select[50] of
      1:begin
        case select[51] of
          1:begin
           case select[52] of
            22..40:begin
               case ch of
                  0..10:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  11..15:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  16..26:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  27..31:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  32..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
              end;
            end;
            41..120:begin
               case ch of
                  0..9:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  10..14:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  15..25:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  26..30:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  31..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
              end;
            end;
           end;
          end;

          2:begin
            case ch of
              0..6:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              7..11:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              12..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              23..27:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              28..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;

          3:begin
            case select[52] of
              16..30:begin
                case ch of
                  0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  4..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  9..19:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  20..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  25..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              31..40:begin
                case ch of
                  0..2:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  3..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  8..18:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  19..23:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  24..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              42..120:begin
                case ch of
                  0..2:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  3..6:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  7..15:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  16..19:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  20..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
           end;
          end;
          4:begin
            case select[52] of
              16..21:begin
                case ch of
                  0..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  9..12:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  13..21:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  22..25:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  26..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              22..29:begin
                case ch of
                  0..5:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  6..10:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  11..21:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  22..26:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  27..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
             30..40:begin
                case ch of
                  0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  4..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  9..19:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  20..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  25..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
            41..120:begin
                case ch of
                  0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  4..9:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  10..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  23..28:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  29..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
          end;
          end;

          5:begin
            case ch of
              0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              4..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              8..16:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              17..20:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              21..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;
         end;
      end;

      2:begin
        case select[51] of
          1:begin
            case ch of
              0..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              9..13:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              14..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              25..29:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              30..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;

          2:begin
            case ch of
              0..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              8..11:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              12..20:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              21..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              25..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;

          3:begin
            case ch of
              0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              4..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              9..19:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              20..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              25..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;
          4:begin
            case select[52] of
              16..21:begin
                case ch of
                  0..7:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  8..11:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  12..20:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  21..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  25..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              22..40:begin
                case ch of
                  0..3:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  4..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  9..19:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  20..24:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  25..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
              41..120:begin
                case ch of
                  0..5:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
                  6..9:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
                  10..18:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
                  19..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
                  23..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
                end;
              end;
          end;
          end;

          5:begin
            case ch of
              0..1:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: низкий');
              2..8:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: ниже среднего');
              9..17:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: средний');
              18..22:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: выше среднего');
              23..51:Form66.Memo1.Lines.Add('Уровень выраженности общих умственных способностей: высокий');
            end;
          end;
         end;
      end;
    end;
   end;
  end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;

end;




procedure TForm70.Button1Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,N: integer;
check:TCheckBox;
begin
Case Form49.N_glava of
2:begin
 Case Form49.N_metod of
    2:begin
 id_vopros:=id_vopros+1;
case id_vopros of
  1,2,3,4,5,6,7,9,11,14,15,19,23,24,26,28,30,34,35,36,38,41,43,48,51,52:begin
  Select[id_vopros-1]:=radiogroup1.ItemIndex+1;
  end;
  29:begin
  if ((Edit1.Text='') or (Edit2.Text='')) then
  begin
  id_vopros:=id_vopros-1;
  Application.MessageBox('Пустые поля не допускаются', 'Внимание');
  exit;
  end
  else
  begin
  string_ruk[id_vopros-1]:=Edit2.Text;
  string_ruk[id_vopros-2]:=Edit1.Text;
  Select[id_vopros-1]:=0;
  string_mul[id_vopros-1]:='0';
  end;
  end;
  10,12,16,17,18,20,22,25,27,31,32,33,37,39,40,42,44,45,46,49,50,53:begin
  if ((Edit1.Text='')) then
  begin
  id_vopros:=id_vopros-1;
  Application.MessageBox('Пустые поля не допускаются', 'Внимание');
  exit;
  end
  else
  begin
  string_ruk[id_vopros-1]:=Edit1.Text;
  Select[id_vopros-1]:=0;
  string_mul[id_vopros-1]:='0';
  end;
  end;
  8,13,21,47:begin
  if ((checkbox1.Checked=false) and (checkbox2.Checked=false) and (checkbox3.Checked=false) and (checkbox4.Checked=false) and (checkbox5.Checked=false))
  then
  begin
  id_vopros:=id_vopros-1;
  Application.MessageBox('Выберите ответ', 'Внимание');
  exit;
  end
  else
  begin
  string_ruk[id_vopros-1]:='0';
  Select[id_vopros-1]:=0;
  string_mul[id_vopros-1]:='';
  if checkBox1.Checked=True then
  string_mul[id_vopros-1]:='1';
  if checkBox2.Checked=True then
  string_mul[id_vopros-1]:=string_mul[id_vopros-1]+ inttostr(2);
  if checkBox3.Checked=True then
  string_mul[id_vopros-1]:=string_mul[id_vopros-1]+ inttostr(3);
  if checkBox4.Checked=True then
  string_mul[id_vopros-1]:=string_mul[id_vopros-1]+ inttostr(4);
  if checkBox5.Checked=True then
  string_mul[id_vopros-1]:=string_mul[id_vopros-1]+ inttostr(5);
  if checkBox6.Checked=True then
  string_mul[id_vopros-1]:=string_mul[id_vopros-1]+ inttostr(6);
  end;
  end;
end;
RadioGroup1.Items.Clear;
RadioGroup1.Visible:=False;
GroupBox1.Visible:=False;
image1.Picture:=nil;
image1.Visible:=False;
GroupBox2.Visible:=False;
Edit1.Clear;
edit2.Clear;
edit2.Visible:=False;
Label4.Visible:=False;
CheckBox1.Caption:='';
CheckBox1.Visible:=False;
CheckBox2.Caption:='';
CheckBox2.Visible:=False;
CheckBox3.Caption:='';
CheckBox3.Visible:=False;
CheckBox4.Caption:='';
CheckBox4.Visible:=False;
CheckBox5.Caption:='';
CheckBox5.Visible:=False;
CheckBox6.Caption:='';
CheckBox6.Visible:=False;
If id_vopros<countquest then
  begin
      Form70.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      case id_vopros+1 of
      1,2,3,4,5,6,7,9,11,14,15,19,23,24,26,28,30,34,35,36,38,41,43,48,51,52:begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      RadioGroup1.Visible:=True;
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items.Add(VarToStr(Xmlvariant.Attributes['text']));
        RadioGroup1.Buttons[j].WordWrap := True;
        RadioGroup1.Buttons[j].Checked :=True;
        end;
      end;
      29:begin
      GroupBox1.Visible:=True;
      Edit2.Visible:=True;
      Label4.Visible:=True;
      image1.Visible:=True;
      image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\'+inttostr(id_vopros+1) + '.jpg');
      end;
      10,12,16,17,18,20,22,25,27,31,32,33,37,39,40,42,44,45,46,49,50,53:begin
      case id_vopros+1 of
      17,32,49:begin
      GroupBox1.Visible:=True;
      image1.Visible:=True;
      image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\'+inttostr(id_vopros+1) + '.jpg');
      end;
      10,12,16,18,20,22,25,27,31,33,37,39,40,42,44,45,46,50,53:begin
      GroupBox1.Visible:=True;
      end;
      end;
      end;
      8,13,21,47:begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      GroupBox2.Visible:=True;
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        check:=(FindComponent('CheckBox'+IntToStr(j+1)) as TCheckBox);
        check.Caption:=VarToStr(Xmlvariant.Attributes['text']);
        check.Checked:=False;
        check.Visible:=True;
        end;
      end;
end;
  end
else
  begin
    Application.MessageBox('Вы прошли тест','Тестирование окончено');
       Case Form49.N_metod of
          2:Key_33;
        end;
      end;
    end;
   end;
end;
end;
end;

procedure TForm70.Button2Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j: integer;
check:TCheckBox;
begin
RadioGroup1.Items.Clear;
RadioGroup1.Visible:=False;
GroupBox1.Visible:=False;
image1.Picture:=nil;
image1.Visible:=False;
GroupBox2.Visible:=False;
Edit1.Clear;
edit2.Clear;
edit2.Visible:=False;
Label4.Visible:=False;
CheckBox1.Caption:='';
CheckBox1.Visible:=False;
CheckBox2.Caption:='';
CheckBox2.Visible:=False;
CheckBox3.Caption:='';
CheckBox3.Visible:=False;
CheckBox4.Caption:='';
CheckBox4.Visible:=False;
CheckBox5.Caption:='';
CheckBox5.Visible:=False;
CheckBox6.Caption:='';
CheckBox6.Visible:=False;
  Case Form49.N_glava of
  2:begin
   Case Form49.N_metod of
    2:begin
Id_vopros:=Id_vopros-1;
If id_vopros<1 then id_vopros:=0;
      Form70.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      case id_vopros+1 of
      1,2,3,4,5,6,7,9,11,14,15,19,23,24,26,28,30,34,35,36,38,41,43,48,51,52:begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      RadioGroup1.Visible:=True;
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items.Add(VarToStr(Xmlvariant.Attributes['text']));
        RadioGroup1.Buttons[j].WordWrap := True;
        RadioGroup1.Buttons[j].Checked :=True;
        end;
      end;
      29:begin
      GroupBox1.Visible:=True;
      Edit2.Visible:=True;
      Label4.Visible:=True;
      image1.Visible:=True;
      image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\'+inttostr(id_vopros+1) + '.jpg');
      end;
      10,12,16,17,18,20,22,25,27,31,32,33,37,39,40,42,44,45,46,49,50,53:begin
      case id_vopros+1 of
      17,32,49:begin
      GroupBox1.Visible:=True;
      image1.Visible:=True;
      image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\'+inttostr(id_vopros+1) + '.jpg');
      end;
      10,12,16,18,20,22,25,27,31,33,37,39,40,42,44,45,46,50,53:begin
      GroupBox1.Visible:=True;
      end;
      end;
      end;
      8,13,21,47:begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      GroupBox2.Visible:=True;
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        check:=(FindComponent('CheckBox'+IntToStr(j+1)) as TCheckBox);
        check.Caption:=VarToStr(Xmlvariant.Attributes['text']);
        check.Checked:=False;
        check.Visible:=True;
        end;
      end;

 end;
 end;
 end;
end;
end;
end;


procedure TForm70.N1Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLtests: IXMLNode;
XmLtest: IXMLNode;
XmLhelp: IXMLNode;
i,j: integer;
begin
  Case Form49.N_glava of
2:begin
  Case Form49.N_metod of
    2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\help.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLtests:= XmlRoot.ChildNodes.FindNode('tests');
      XmLtest :=XmLtests.ChildNodes[Form49.N_metod+12];
      Form67.Memo1.Clear;
      Form67.Memo1.Lines.Add(VarToStr(XmLtest.Attributes['name']));
      XMlhelp:=Xmltest.ChildNodes.FindNode('help');
      Form67.Memo1.Lines.Add(VarToStr(XmLhelp.Attributes['text']))
    end;
 end;
end;
end;
Form67.ShowModal;
end;

end.
