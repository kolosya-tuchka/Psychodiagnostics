unit Unit50;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, XMLDoc, ExtCtrls, Menus;

type
  TForm50 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);

   
    
  private
    { Private declarations }
   public


  Id_vopros:integer;
  //countquest:integer;

    { Public declarations }
  end;
const n=3;
var
  Form50: TForm50;
  countquest:integer;

  Select: Array of integer;
  Balls: Array[1..4] of Integer;

implementation

uses Unit35, Unit51, Unit64, Unit49, Unit67, Unit66, Unit8;

{$R *.dfm}

procedure TForm50.FormShow(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,nomer,message: integer;
begin
RadioGroup1.Items.Clear;
  Case Form49.N_glava of
  0:begin
    Case Form49.N_metod of
    0,1,2,5,6:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      countquest := XmLquestions.ChildNodes.Count;
      SetLength(Select,countquest);
      Form50.Caption:= 'Вопрос 1 из ' + IntToStr(countquest);
      XmLquestion :=XmLquestions.ChildNodes[0];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
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
 1:begin
  Case Form49.N_metod of
    0,1,2,3:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      countquest := XmLquestions.ChildNodes.Count;
      SetLength(Select,countquest);
      Form50.Caption:= 'Вопрос 1 из ' + IntToStr(countquest);
      XmLquestion :=XmLquestions.ChildNodes[0];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
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
 2:begin
 Case Form49.N_metod of
    0,1,3,4,5,6,7:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      countquest := XmLquestions.ChildNodes.Count;
      SetLength(Select,countquest);
      Form50.Caption:= 'Вопрос 1 из ' + IntToStr(countquest);
      XmLquestion :=XmLquestions.ChildNodes[0];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
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


procedure Key_7;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
i,g,max:integer;
bals: Array [1..6] of Integer;
ch: Integer;
begin
for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\17.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
   XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
   ch:=StrToInt(VarToStr(Xmlvariant.Attributes['character']));
   case ch of
   1:begin
    bals[1]:=bals[1] + 1;
   end;
   2:begin
    bals[2]:=bals[2] + 1;
   end;
   3:begin
    bals[3]:=bals[3] + 1;
   end;
   4:begin
    bals[4]:=bals[4] + 1;
   end;
   5:begin
    bals[5]:=bals[5] + 1;
   end;
   6:begin
    bals[6]:=bals[6] + 1;
   end;

   end;
  end;
max:=1;
  for g:=1 to 6 do
    begin
      if bals[max]<bals[g] then
        begin
          max:= g;
        end;
     end;
  Form66.Memo1.Clear;
   case max of
    1:begin
      Form66.Memo1.Lines.Add('Тип личности РЕАЛИСТИЧЕСКИЙ ИЛИ ПРАКТИЧЕСКИЙ');
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\17_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[0];
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Form66.Memo1.Lines.Add(VarToStr(Xmlvariant.Attributes['text']));
    end;
    2:begin
      Form66.Memo1.Lines.Add('Тип личности ИНТЕЛЛЕКТУАЛЬНЫЙ');
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\17_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[1];
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Form66.Memo1.Lines.Add(VarToStr(Xmlvariant.Attributes['text']));
    end;
    3:begin
      Form66.Memo1.Lines.Add('Тип личности СОЦИАЛЬНЫЙ');
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\17_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[2];
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Form66.Memo1.Lines.Add(VarToStr(Xmlvariant.Attributes['text']));
    end;
    4:begin
      Form66.Memo1.Lines.Add('Тип личности КОНВЕНЦИАЛЬНЫИ ИЛИ СТАНДАРТНЫЙ');
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\17_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[3];
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Form66.Memo1.Lines.Add(VarToStr(Xmlvariant.Attributes['text']));
    end;
    5:begin
      Form66.Memo1.Lines.Add('Тип личности ПРЕДПРИИМЧИВЫЙ');
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\17_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[4];
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Form66.Memo1.Lines.Add(VarToStr(Xmlvariant.Attributes['text']));
    end;
    6:begin
      Form66.Memo1.Lines.Add('Тип личности АРТИСТИЧЕСКИЙ');
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\17_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[5];
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Form66.Memo1.Lines.Add(VarToStr(Xmlvariant.Attributes['text']));
    end;
  end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;
end;


procedure Key_6;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
i,j,g,bal,max:integer;
bals: Array [1..25] of Integer;
ch:Integer;
begin
for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\16.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];

   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
  case ch of
   1:begin
      case Select[i-1] of
        1: bals[1]:=bals[1] + 2;
        2: bals[1]:=bals[1] + 1;
        3: bals[1]:=bals[1] + 0;
        4: bals[1]:=bals[1] - 1;
        5: bals[1]:=bals[1] - 2;
      end;
   end;
   2:begin
       case Select[i-1] of
        1: bals[2]:=bals[2] + 2;
        2: bals[2]:=bals[2] + 1;
        3: bals[2]:=bals[2] + 0;
        4: bals[2]:=bals[2] - 1;
        5: bals[2]:=bals[2] - 2;
      end;
   end;
   3:begin
      case Select[i-1] of
        1: bals[3]:=bals[3] + 2;
        2: bals[3]:=bals[3] + 1;
        3: bals[3]:=bals[3] + 0;
        4: bals[3]:=bals[3] - 1;
        5: bals[3]:=bals[3] - 2;
      end;
   end;
   4:begin
      case Select[i-1] of
        1: bals[4]:=bals[4] + 2;
        2: bals[4]:=bals[4] + 1;
        3: bals[4]:=bals[4] + 0;
        4: bals[4]:=bals[4] - 1;
        5: bals[4]:=bals[4] - 2;
      end;
   end;
   5:begin
      case Select[i-1] of
        1: bals[5]:=bals[5] + 2;
        2: bals[5]:=bals[5] + 1;
        3: bals[5]:=bals[5] + 0;
        4: bals[5]:=bals[5] - 1;
        5: bals[5]:=bals[5] - 2;
      end;
   end;
   6:begin
      case Select[i-1] of
        1: bals[6]:=bals[6] + 2;
        2: bals[6]:=bals[6] + 1;
        3: bals[6]:=bals[6] + 0;
        4: bals[6]:=bals[6] - 1;
        5: bals[6]:=bals[6] - 2;
      end;
   end;
   7:begin
      case Select[i-1] of
        1: bals[7]:=bals[7] + 2;
        2: bals[7]:=bals[7] + 1;
        3: bals[7]:=bals[7] + 0;
        4: bals[7]:=bals[7] - 1;
        5: bals[7]:=bals[7] - 2;
      end;
   end;
   8:begin
       case Select[i-1] of
        1: bals[8]:=bals[8] + 2;
        2: bals[8]:=bals[8] + 1;
        3: bals[8]:=bals[8] + 0;
        4: bals[8]:=bals[8] - 1;
        5: bals[8]:=bals[8] - 2;
      end;
   end;
   9:begin
      case Select[i-1] of
        1: bals[9]:=bals[9] + 2;
        2: bals[9]:=bals[9] + 1;
        3: bals[9]:=bals[9] + 0;
        4: bals[9]:=bals[9] - 1;
        5: bals[9]:=bals[9] - 2;
      end;
   end;
   10:begin
      case Select[i-1] of
        1: bals[10]:=bals[10] + 2;
        2: bals[10]:=bals[10] + 1;
        3: bals[10]:=bals[10] + 0;
        4: bals[10]:=bals[10] - 1;
        5: bals[10]:=bals[10] - 2;
      end;
   end;
   11:begin
      case Select[i-1] of
        1: bals[11]:=bals[11] + 2;
        2: bals[11]:=bals[11] + 1;
        3: bals[11]:=bals[11] + 0;
        4: bals[11]:=bals[11] - 1;
        5: bals[11]:=bals[11] - 2;
      end;
   end;
   12:begin
       case Select[i-1] of
        1: bals[12]:=bals[12] + 2;
        2: bals[12]:=bals[12] + 1;
        3: bals[12]:=bals[12] + 0;
        4: bals[12]:=bals[12] - 1;
        5: bals[12]:=bals[12] - 2;
      end;
    end;
   13:begin
       case Select[i-1] of
        1: bals[13]:=bals[13] + 2;
        2: bals[13]:=bals[13] + 1;
        3: bals[13]:=bals[13] + 0;
        4: bals[13]:=bals[13] - 1;
        5: bals[13]:=bals[13] - 2;
      end;
   end;
   14:begin
       case Select[i-1] of
        1: bals[14]:=bals[14] + 2;
        2: bals[14]:=bals[14] + 1;
        3: bals[14]:=bals[14] + 0;
        4: bals[14]:=bals[14] - 1;
        5: bals[14]:=bals[14] - 2;
      end;
   end;
   15:begin
      case Select[i-1] of
        1: bals[15]:=bals[15] + 2;
        2: bals[15]:=bals[15] + 1;
        3: bals[15]:=bals[15] + 0;
        4: bals[15]:=bals[15] - 1;
        5: bals[15]:=bals[15] - 2;
      end;
   end;
   16:begin
      case Select[i-1] of
        1: bals[16]:=bals[16] + 2;
        2: bals[16]:=bals[16] + 1;
        3: bals[16]:=bals[16] + 0;
        4: bals[16]:=bals[16] - 1;
        5: bals[16]:=bals[16] - 2;
      end;
   end;
   17:begin
      case Select[i-1] of
        1: bals[17]:=bals[17] + 2;
        2: bals[17]:=bals[17] + 1;
        3: bals[17]:=bals[17] + 0;
        4: bals[17]:=bals[17] - 1;
        5: bals[17]:=bals[17] - 2;
      end;
   end;
   18:begin
      case Select[i-1] of
        1: bals[i+18]:=bals[i+18] + 2;
        2: bals[i+18]:=bals[i+18] + 1;
        3: bals[i+18]:=bals[i+18] + 0;
        4: bals[i+18]:=bals[i+18] - 1;
        5: bals[i+18]:=bals[i+18] - 2;
      end;
   end;
   19:begin
      case Select[i-1] of
        1: bals[19]:=bals[19] + 2;
        2: bals[19]:=bals[19] + 1;
        3: bals[19]:=bals[19] + 0;
        4: bals[19]:=bals[19] - 1;
        5: bals[19]:=bals[19] - 2;
      end;
   end;
   20:begin
      case Select[i-1] of
        1: bals[20]:=bals[20] + 2;
        2: bals[20]:=bals[20] + 1;
        3: bals[20]:=bals[20] + 0;
        4: bals[20]:=bals[20] - 1;
        5: bals[20]:=bals[20] - 2;
      end;
   end;
   21:begin
      case Select[i-1] of
        1: bals[21]:=bals[21] + 2;
        2: bals[21]:=bals[21] + 1;
        3: bals[21]:=bals[21] + 0;
        4: bals[21]:=bals[21] - 1;
        5: bals[21]:=bals[21] - 2;
      end;
   end;
   22:begin
      case Select[i-1] of
        1: bals[22]:=bals[22] + 2;
        2: bals[22]:=bals[22] + 1;
        3: bals[22]:=bals[22] + 0;
        4: bals[22]:=bals[22] - 1;
        5: bals[22]:=bals[22] - 2;
      end;
   end;
   23:begin
     case Select[i-1] of
        1: bals[23]:=bals[23] + 2;
        2: bals[23]:=bals[23] + 1;
        3: bals[23]:=bals[23] + 0;
        4: bals[23]:=bals[23] - 1;
        5: bals[23]:=bals[23] - 2;
      end;
   end;
   24:begin
      case Select[i-1] of
        1: bals[24]:=bals[24] + 2;
        2: bals[24]:=bals[24] + 1;
        3: bals[24]:=bals[24] + 0;
        4: bals[24]:=bals[24] - 1;
        5: bals[24]:=bals[24] - 2;
      end;
    end;
   end;
end;
Form66.Memo1.Clear;
  For i:=1 to 24 do begin
      case i of
        1:Form66.Memo1.Lines.Add('Биология:');
        2:Form66.Memo1.Lines.Add('Физика:');
        3:Form66.Memo1.Lines.Add('Химия:');
        4:Form66.Memo1.Lines.Add('География:');
        5:Form66.Memo1.Lines.Add('Медицина:');
        6:Form66.Memo1.Lines.Add('Техника и электроника:');
        7:Form66.Memo1.Lines.Add('Строительство:');
        8:Form66.Memo1.Lines.Add('Математика:');
        9:Form66.Memo1.Lines.Add('Экономика:');
        10:Form66.Memo1.Lines.Add('Филология:');
        11:Form66.Memo1.Lines.Add('Транспорт:');
        12:Form66.Memo1.Lines.Add('Авиация и морское дело:');
        13:Form66.Memo1.Lines.Add('Военные специальности:');
        14:Form66.Memo1.Lines.Add('История:');
        15:Form66.Memo1.Lines.Add('Рабочие специальности:');
        16:Form66.Memo1.Lines.Add('Журналистика:');
        17:Form66.Memo1.Lines.Add('Юриспруденция:');
        18:Form66.Memo1.Lines.Add('Педагогика:');
        19:Form66.Memo1.Lines.Add('Сфера обслуживания, торговля:');
        20:Form66.Memo1.Lines.Add('Физкультура и спорт:');
        21:Form66.Memo1.Lines.Add('Музыка:');
        22:Form66.Memo1.Lines.Add('Сценическое искусство:');
        23:Form66.Memo1.Lines.Add('Изобразительное искусство:');
        24:Form66.Memo1.Lines.Add('Экология:');
     end;
       case bals[i+1] of
        -12..-6:begin
            Form66.Memo1.Lines.Add('Высшая степень отрицания;');
            Form66.Memo1.Lines.Add(' ');
         end;
        -5..-1:begin
            Form66.Memo1.Lines.Add('Интерес отрицается;');
            Form66.Memo1.Lines.Add(' ');
        end;
        0:begin
            Form66.Memo1.Lines.Add('-----;');
            Form66.Memo1.Lines.Add(' ');
        end;
        1..4:begin
           Form66.Memo1.Lines.Add('Интерес выражен слабо;');
           Form66.Memo1.Lines.Add(' ');
        end;
        5..7:begin
           Form66.Memo1.Lines.Add('Выраженный интерес;');
           Form66.Memo1.Lines.Add(' ');
        end;
        8..12: begin
          Form66.Memo1.Lines.Add('Ярко выраженный интерес;');
          Form66.Memo1.Lines.Add(' ');
        end;
      end;
   end;
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form66.Label2.Caption:=myDate;
  Form66.Memo1.Visible:=True;
  Form66.ShowModal;

end;


procedure Key_3;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
i:integer;
bals: Array [1..6] of Integer;
ch: Integer;
begin
for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\13.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
   XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
   ch:=StrToInt(VarToStr(Xmlvariant.Attributes['character']));
   case ch of
   1:begin
    bals[1]:=bals[1] + 1;
    Form51.Label1.Visible:=True;
   end;
   2:begin
    bals[2]:=bals[2] + 1;
    Form51.Label2.Visible:=True;
   end;
   3:begin
    bals[3]:=bals[3] + 1;
    Form51.Label3.Visible:=True;
   end;
   4:begin
    bals[4]:=bals[4] + 1;
    Form51.Label4.Visible:=True;
   end;
   5:begin
    bals[5]:=bals[5] + 1;
    Form51.Label7.Visible:=True;
   end;
   6:begin
    bals[6]:=bals[6] + 1;
    Form51.Label8.Visible:=True;
   end;

   end;
  end;
  case bals[1] of
    0..1: Form51.Label1.Caption:= '"Человек - природа": ' + 'работа с таким предметом труда активно отвергается: "что угодно, только не это". ';
    2..3: Form51.Label1.Caption:= '"Человек - природа": ' + 'склонность не выражена. ';
    4..6: Form51.Label1.Caption:= '"Человек - природа": ' + 'склонность на среднем уровне. ';
    7..8: Form51.Label1.Caption:= '"Человек - природа": ' + 'выраженная склонность. ';
    9..10:Form51.Label1.Caption:= '"Человек - природа": ' + 'ярко выраженная склонность. ';
    end;
  case bals[2] of
    0..1: Form51.Label2.Caption:= '"Человек - техника": ' + 'работа с таким предметом труда активно отвергается: "что угодно, только не это". ';
    2..3: Form51.Label2.Caption:= '"Человек - техника": ' + 'склонность не выражена. ';
    4..6: Form51.Label2.Caption:= '"Человек - техника": ' + 'склонность на среднем уровне. ';
    7..8: Form51.Label2.Caption:= '"Человек - техника": ' + 'выраженная склонность. ';
    9..10:Form51.Label2.Caption:= '"Человек - техника": ' + 'ярко выраженная склонность. ';
    end;
  case bals[3] of
    0..1: Form51.Label3.Caption:= '"Человек - другой человек": ' + 'работа с таким предметом труда активно отвергается: "что угодно, только не это". ';
    2..3: Form51.Label3.Caption:= '"Человек - другой человек": ' + 'склонность не выражена. ';
    4..6: Form51.Label3.Caption:= '"Человек - другой человек": ' + 'склонность на среднем уровне. ';
    7..8: Form51.Label3.Caption:= '"Человек - другой человек": ' + 'выраженная склонность. ';
    9..10:Form51.Label3.Caption:= '"Человек - другой человек": ' + 'ярко выраженная склонность. ';
    end;
  case bals[4] of
    0..1: Form51.Label4.Caption:= '"Человек - знаковая система": ' + 'работа с таким предметом труда активно отвергается: "что угодно, только не это". ';
    2..3: Form51.Label4.Caption:= '"Человек - знаковая система": ' + 'склонность не выражена. ';
    4..6: Form51.Label4.Caption:= '"Человек - знаковая система": ' + 'склонность на среднем уровне. ';
    7..8: Form51.Label4.Caption:= '"Человек - знаковая система": ' + 'выраженная склонность. ';
    9..10:Form51.Label4.Caption:= '"Человек - знаковая система": ' + 'ярко выраженная склонность. ';
    end;
  case bals[5] of
    0..1: Form51.Label5.Caption:= '"Человек -  художественный образ": ' + 'работа с таким предметом труда активно отвергается: "что угодно, только не это". ';
    2..3: Form51.Label5.Caption:= '"Человек -  художественный образ": ' + 'склонность не выражена. ';
    4..6: Form51.Label5.Caption:= '"Человек -  художественный образ": ' + 'склонность на среднем уровне. ';
    7..8: Form51.Label5.Caption:= '"Человек -  художественный образ": ' + 'выраженная склонность. ';
    9..10:Form51.Label5.Caption:= '"Человек -  художественный образ": ' + 'ярко выраженная склонность. ';
    end;
  case bals[6] of
    0..1: Form51.Label6.Caption:= '"Сам человек": ' + 'работа с таким предметом труда активно отвергается: "что угодно, только не это". ';
    2..3: Form51.Label6.Caption:= '"Сам человек": ' + 'склонность не выражена. ';
    4..6: Form51.Label6.Caption:= '"Сам человек": ' + 'склонность на среднем уровне. ';
    7..8: Form51.Label6.Caption:= '"Сам человек": ' + 'выраженная склонность. ';
    9..10:Form51.Label6.Caption:= '"Сам человек": ' + 'ярко выраженная склонность. ';
    end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form51.Label8.Caption:=myDate;
    Form51.Memo1.Clear;
Form51.ShowModal;
end;


procedure Key_2;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
i:integer;
ch: Array[1..2] of Integer;
begin
For I:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\12.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   //Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
   XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
   XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
   ch[i]:=StrToInt(VarToStr(Xmlvariant.Attributes['character']));
  end;
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\12_character.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[ch[2]-1];
   XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
   XmLvariant :=Xmlvariants.ChildNodes[ch[1]-1];
   Form51.Label1.Visible:=True;
   Form51.Label1.Caption:= 'Профессии, являющиеся наиболле близкие вашим интересам и склонностям ';
   Form51.Label2.Visible:=True;
   Form51.Label2.Caption:=VarToStr(Xmlvariant.Attributes['text']);
   myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
   Form51.Label8.Caption:=myDate;
   //Form51.Memo1.Visible:=True;
   Form51.Memo1.Clear;
Form51.ShowModal;
end;


procedure Key_1;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
ch,i:integer;
begin
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\11.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   //Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
   XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
   XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
   ch:=StrToInt(VarToStr(Xmlvariant.Attributes['character']));
   case ch of
   1:begin
    balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
    Form51.Label1.Visible:=True;
   end;
   2:begin
    balls[2]:=balls[2] + StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
    Form51.Label2.Visible:=True;
   end;
   3:begin
    balls[3]:=balls[3] + StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
    Form51.Label3.Visible:=True;
   end;
   4:begin
    balls[4]:=balls[4] + StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
    Form51.Label4.Visible:=True;
   end;
   end;
  end;
  case balls[1] of

    0..4: Form51.Label1.Caption:= 'Неопределенное состояние профессиональной идентичности: ' + 'Слабо выраженный статус. ';
    5..9:  Form51.Label1.Caption:= 'Неопределенное состояние профессиональной идентичности: ' + 'Выраженность ниже среднего уровня. ';
    10..14: Form51.Label1.Caption:= 'Неопределенное состояние профессиональной идентичности: ' + 'Средняя степень выраженности. ';
    15..19: Form51.Label1.Caption:= 'Неопределенное состояние профессиональной идентичности: ' + 'Выраженность выше среднего уровня. ';
    20..30: Form51.Label1.Caption:= 'Неопределенное состояние профессиональной идентичности: ' + 'Сильно выраженный статус. ';
    end;
  case balls[2] of
    0..3: Form51.Label2.Caption:= 'Сформированная профессиональная идентичность: ' + 'Слабо выраженный статус. ';
    4..7:  Form51.Label2.Caption:= 'Сформированная профессиональная идентичность: ' + 'Выраженность ниже среднего уровня. ';
    8..11: Form51.Label2.Caption:= 'Сформированная профессиональная идентичность: ' + 'Средняя степень выраженности. ';
    12..15: Form51.Label2.Caption:= 'Сформированная профессиональная идентичность: ' + 'Выраженность выше среднего уровня. ';
    16..30: Form51.Label2.Caption:= 'Сформированная профессиональная идентичность: ' + 'Сильно выраженный статус. ';
    end;
  case balls[3] of
    0..2: Form51.Label3.Caption:= 'Мораторий (кризис выбора): ' + 'Слабо выраженный статус. ';
    3..5:  Form51.Label3.Caption:= 'Мораторий (кризис выбора): ' + 'Выраженность ниже среднего уровня. ';
    6..8: Form51.Label3.Caption:= 'Мораторий (кризис выбора): ' + 'Средняя степень выраженности. ';
    9..11: Form51.Label3.Caption:= 'Мораторий (кризис выбора): ' + 'Выраженность выше среднего уровня. ';
    12..30: Form51.Label3.Caption:= 'Мораторий (кризис выбора): ' + 'Сильно выраженный статус. ';
    end;
  case balls[4] of
    0..4: Form51.Label4.Caption:= 'Навязанная профессиональная идентичность: ' + 'Слабо выраженный статус. ';
    5..9:  Form51.Label4.Caption:= 'Навязанная профессиональная идентичность: ' + 'Выраженность ниже среднего уровня. ';
    10..14: Form51.Label4.Caption:= 'Навязанная профессиональная идентичность: ' + 'Средняя степень выраженности. ';
    15..19: Form51.Label4.Caption:= 'Навязанная профессиональная идентичность: ' + 'Выраженность выше среднего уровня. ';
    20..30: Form51.Label4.Caption:= 'Навязанная профессиональная идентичность: ' + 'Сильно выраженный статус. ';
    end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form51.Label8.Caption:=myDate;
    Form51.Memo1.Visible:=True;
    Form51.Memo1.Clear;
Form51.ShowModal;
end;

procedure Key_24;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
bls:Array[1..8] of Integer;
myDate:string;
ch,i:integer;
begin
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\24.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   case ch of
   1:begin
     bls[1]:=bls[1] + (select[i-1]-1);
    end;
   2:begin
     bls[2]:=bls[2] + (select[i-1]-1);
     end;
   3:begin
    bls[3]:=bls[3] + (select[i-1]-1);
   end;
   4:begin
    bls[4]:=bls[4] + (select[i-1]-1);
   end;
   5:begin
    bls[5]:=bls[5] + (select[i-1]-1);
   end;
   6:begin
    bls[6]:=bls[6] + (select[i-1]-1);
   end;
   7:begin
    bls[7]:=bls[7] + (select[i-1]-1);
   end;
   8:begin
    bls[8]:=bls[8] + (select[i-1]-1);
   end;
   end;
  end;
  if (bls[1]-bls[2])<0 then
    begin
    Form51.Label1.Caption:='Доминирующая характеристика: Общительность';
    Form51.Label1.Visible:=True;
    end
    else
    begin
    Form51.Label1.Caption:='Доминирующая характеристика: Индивидуализм';
    Form51.Label1.Visible:=True;
    end;

  if (bls[3]-bls[4])<0 then
    begin
    Form51.Label2.Caption:='Доминирующая характеристика: Пассивность. ';
    Form51.Label2.Visible:=True;
    end
    else
    begin
    Form51.Label2.Caption:='Доминирующая характеристика: Уверенность. ';
    Form51.Label2.Visible:=True;
    end;

  if (bls[5]-bls[6])<0 then
    begin
    Form51.Label3.Caption:='Доминирующая характеристика: Ориентация на факты. ';
    Form51.Label3.Visible:=True;
    end
    else
    begin
    Form51.Label3.Caption:='Доминирующая характеристика: Ориентация на воображение. ';
    Form51.Label3.Visible:=True;
    end;

  if (bls[7]-bls[8])<0 then
    begin
    Form51.Label4.Caption:='Доминирующая характеристика: Осмотрительность. ';
    Form51.Label4.Visible:=True;
    end
    else
    begin
    Form51.Label4.Caption:='Доминирующая характеристика: Спонтанность. ';
    Form51.Label4.Visible:=True;
    end;

    if  (bls[1]-bls[2])=0 then Form51.Label1.Caption:='По отношению к характеристике "Индивидуализм" ваше поведение изменчиво и редко проявляется в каких-то крайностях. ';

    if  (bls[3]-bls[4])=0 then Form51.Label2.Caption:='По отношению к характеристике "Уверенность" ваше поведение изменчиво и редко проявляется в каких-то крайностях. ';

    if  (bls[5]-bls[6])=0 then Form51.Label3.Caption:='По отношению к характеристике "Ориентация на воображение" ваше поведение изменчиво и редко проявляется в каких-то крайностях. ';

    if  (bls[7]-bls[8])=0 then Form51.Label4.Caption:='По отношению к характеристике "Спонтанность" ваше поведение изменчиво и редко проявляется в каких-то крайностях. ';



    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form51.Label8.Caption:=myDate;
    Form51.Memo1.Visible:=True;
    Form51.Memo1.Clear;
Form51.ShowModal;
end;

procedure Key_23;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
bls:Array[1..7] of Integer;
ch:Array[1..42] of Array[1..2] of Integer;
myDate:string;
i:integer;
begin
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\23.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch[i,1]:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   ch[i,2]:=StrToInt(VarToStr(XmLquestion.Attributes['bal']));
   case ch[i,1] of
   1:begin
   if select[i-1]=2 then
    begin
      bls[1]:=bls[1]+1;
    end
    else
      begin
        if select[i-1]=ch[i,2] then
        begin
        bls[1]:=bls[1] + 2;
        end;
        end;
    Form51.Label1.Visible:=True;
      end;
   2:begin
    if select[i-1]=2 then
    begin
      bls[2]:=bls[2]+1;
    end
    else
      begin
        if select[i-1]=ch[i,2] then
        begin
        bls[2]:=bls[2] + 2;
        end;
        end;
    Form51.Label2.Visible:=True;
   end;
   3:begin
    if select[i-1]=2 then
    begin
      bls[3]:=bls[3]+1;
    end
    else
      begin
        if select[i-1]=ch[i,2] then
        begin
        bls[3]:=bls[3] + 2;
        end;
        end;
    Form51.Label3.Visible:=True;
   end;
   4:begin
    if select[i-1]=2 then
    begin
      bls[4]:=bls[4]+1;
    end
    else
      begin
        if select[i-1]=ch[i,2] then
        begin
        bls[4]:=bls[4] + 2;
        end;
        end;
    Form51.Label4.Visible:=True;
   end;
   5:begin
    if select[i-1]=2 then
    begin
      bls[5]:=bls[5]+1;
    end
    else
      begin
        if select[i-1]=ch[i,2] then
        begin
        bls[5]:=bls[5] + 2;
        end;
        end;
    Form51.Label5.Visible:=True;
   end;
   6:begin
    if select[i-1]=2 then
    begin
      bls[6]:=bls[6]+1;
    end
    else
      begin
        if select[i-1]=ch[i,2] then
        begin
        bls[6]:=bls[6] + 2;
        end;
        end;
    Form51.Label6.Visible:=True;
   end;
   7:begin
    if select[i-1]=2 then
    begin
      bls[7]:=bls[7]+1;
    end
    else
      begin
        if select[i-1]=ch[i,2] then
        begin
        bls[7]:=bls[7] + 2;
        end;
        end;
    Form51.Label9.Visible:=True;
   end;
   end;
  end;
  case bls[1] of

    0..4: Form51.Label1.Caption:= 'Замкнутость - общительность: ' + 'низкий показатель. ';
    5..8:  Form51.Label1.Caption:= 'Замкнутость - общительность: ' + 'средний показатель. ';
    9..12: Form51.Label1.Caption:= 'Замкнутость - общительность: ' + 'высокий показатель. ';
    end;
  case bls[2] of
    0..4: Form51.Label2.Caption:= 'Эмоциональная неустойчивость - устойчивость: ' + 'низкий показатель. ';
    5..8:  Form51.Label2.Caption:= 'Эмоциональная неустойчивость - устойчивость: ' + 'средний показатель. ';
    9..12: Form51.Label2.Caption:= 'Эмоциональная неустойчивость - устойчивость: ' + 'высокий показатель. ';
    end;
  case bls[3] of
    0..4: Form51.Label3.Caption:= 'Склонность к подчинению - к доминированию: ' + 'низкий показатель. ';
    5..8:  Form51.Label3.Caption:= 'Склонность к подчинению - к доминированию: ' + 'средний показатель. ';
    9..12: Form51.Label3.Caption:= 'Склонность к подчинению - к доминированию: ' + 'высокий показатель. ';
    end;
  case bls[4] of
    0..4: Form51.Label4.Caption:= 'Сдержанность - экспрессивность: ' + 'низкий показатель. ';
    5..8:  Form51.Label4.Caption:= 'Сдержанность - экспрессивность: ' + 'средний показатель. ';
    9..12: Form51.Label4.Caption:= 'Сдержанность - экспрессивность: ' + 'высокий показатель. ';
    end;
  case bls[5] of
    0..4: Form51.Label5.Caption:= 'Робость - смелость: ' + 'низкий показатель. ';
    5..8:  Form51.Label5.Caption:= 'Робость - смелость: ' + 'средний показатель. ';
    9..12: Form51.Label5.Caption:= 'Робость - смелость: ' + 'высокий показатель. ';
    end;
    case bls[6] of
    0..4: Form51.Label6.Caption:= 'Доверчивость - подозрительность: ' + 'низкий показатель. ';
    5..8:  Form51.Label6.Caption:= 'Доверчивость - подозрительность: ' + 'средний показатель. ';
    9..12: Form51.Label6.Caption:= 'Доверчивость - подозрительность: ' + 'высокий показатель. ';
    end;
    case bls[7] of
    0..4: Form51.Label9.Caption:= 'Уверенность в себе - тревожность: ' + 'низкий показатель. ';
    5..8:  Form51.Label9.Caption:= 'Уверенность в себе - тревожность: ' + 'средний показатель. ';
    9..12: Form51.Label9.Caption:= 'Уверенность в себе - тревожность: ' + 'высокий показатель. ';
     end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form51.Label8.Caption:=myDate;
    Form51.Memo1.Visible:=True;
    Form51.Memo1.Clear;
Form51.ShowModal;
end;

procedure Key_22;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
bls:Array[1..5] of Integer;
myDate:string;
ch,i:integer;
begin
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\22.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   case ch of
   1:begin
    case select[i-1] of
      1:bls[1]:=bls[1] + 0;
      2:bls[1]:=bls[1] + 1;
      3:bls[1]:=bls[1] + 2;
      end;
    Form51.Label1.Visible:=True;
   end;
   2:begin
   case select[i-1] of
      1:bls[2]:=bls[2] + 0;
      2:bls[2]:=bls[2] + 1;
      3:bls[2]:=bls[2] + 2;
      end;
    Form51.Label2.Visible:=True;
   end;
   3:begin
   case select[i-1] of
      1:bls[3]:=bls[3] + 0;
      2:bls[3]:=bls[3] + 1;
      3:bls[3]:=bls[3] + 2;
      end;
    Form51.Label3.Visible:=True;
   end;
   4:begin
   case select[i-1] of
      1:bls[4]:=bls[4] + 0;
      2:bls[4]:=bls[4] + 1;
      3:bls[4]:=bls[4] + 2;
      end;
    Form51.Label4.Visible:=True;
   end;
   5:begin
   case select[i-1] of
      1:bls[5]:=bls[5] + 0;
      2:bls[5]:=bls[5] + 1;
      3:bls[5]:=bls[5] + 2;
      end;
    Form51.Label5.Visible:=True;
   end;
   end;
  end;
  case bls[1] of

    0..3: Form51.Label1.Caption:= 'Экстраверсия - интроверсия: ' + 'низкий уровень выраженности. ';
    4..6:  Form51.Label1.Caption:= 'Экстраверсия - интроверсия: ' + 'ниже среднего. ';
    7..9: Form51.Label1.Caption:= 'Экстраверсия - интроверсия: ' + 'средний уровень выраженности. ';
    10..12: Form51.Label1.Caption:= 'Экстраверсия - интроверсия: ' + 'выше среднего. ';
    13..16: Form51.Label1.Caption:= 'Экстраверсия - интроверсия: ' + 'высокий уровень выраженности. ';
    end;
  case bls[2] of
    0..3: Form51.Label2.Caption:= 'Нейротизм - эмоциональная устойчивость (повышенная эмоциональность реакций): ' + 'низкий уровень выраженности. ';
    4..6:  Form51.Label2.Caption:= 'Нейротизм - эмоциональная устойчивость (повышенная эмоциональность реакций): ' + 'ниже среднего. ';
    7..9: Form51.Label2.Caption:= 'Нейротизм - эмоциональная устойчивость (повышенная эмоциональность реакций): ' + 'средний уровень выраженности. ';
    10..12: Form51.Label2.Caption:= 'Нейротизм - эмоциональная устойчивость (повышенная эмоциональность реакций): ' + 'выше среднего. ';
    13..16: Form51.Label2.Caption:= 'Нейротизм - эмоциональная устойчивость (повышенная эмоциональность реакций): ' + 'высокий уровень выраженности. ';
    end;
  case bls[3] of
    0..3: Form51.Label3.Caption:= 'Открытость - закрытость к новому опыту. : ' + 'низкий уровень выраженности. ';
    4..6:  Form51.Label3.Caption:= 'Открытость - закрытость к новому опыту. : ' + 'ниже среднего. ';
    7..9: Form51.Label3.Caption:= 'Открытость - закрытость к новому опыту. : ' + 'средний уровень выраженности. ';
    10..12: Form51.Label3.Caption:= 'Открытость - закрытость к новому опыту. : ' + 'выше среднего. ';
    13..16: Form51.Label3.Caption:= 'Открытость - закрытость к новому опыту. : ' + 'высокий уровень выраженности. ';
    end;
  case bls[4] of
    0..3: Form51.Label4.Caption:= 'Сознательность - несобранность.: ' + 'низкий уровень выраженности. ';
    4..6:  Form51.Label4.Caption:= 'Сознательность - несобранность.: ' + 'ниже среднего. ';
    7..9: Form51.Label4.Caption:= 'Сознательность - несобранность.: ' + 'средний уровень выраженности. ';
    10..12: Form51.Label4.Caption:= 'Сознательность - несобранность.: ' + 'выше среднего. ';
    13..16: Form51.Label4.Caption:= 'Сознательность - несобранность.: ' + 'высокий уровень выраженности. ';
    end;
  case bls[5] of
    0..3: Form51.Label5.Caption:= 'Доброжелательность - враждебность: ' + 'низкий уровень выраженности. ';
    4..6:  Form51.Label5.Caption:= 'Доброжелательность - враждебность: ' + 'ниже среднего. ';
    7..9: Form51.Label5.Caption:= 'Доброжелательность - враждебность: ' + 'средний уровень выраженности. ';
    10..12: Form51.Label5.Caption:= 'Доброжелательность - враждебность: ' + 'выше среднего. ';
    13..16: Form51.Label5.Caption:= 'Доброжелательность - враждебность: ' + 'высокий уровень выраженности. ';
    end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form51.Label8.Caption:=myDate;
    Form51.Memo1.Visible:=True;
    Form51.Memo1.Clear;
Form51.ShowModal;
end;

procedure Key_21;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
i:integer;
ch: Array[1..57] of Array[1..2] of Integer;
shkala: Array[1..3] of Integer;
begin
For I:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\21.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch[i,1]:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   ch[i,2]:=StrToInt(VarToStr(XmLquestion.Attributes['bal']));
  end;
For i:=1 to countquest do
  begin
    if Select[i-1]=ch[i,2] then
      begin
        case ch[i,1] of
          1:shkala[1]:=shkala[1]+1;
          2:shkala[2]:=shkala[2]+1;
          3:shkala[3]:=shkala[3]+1;
         end;
      end;
  end;
myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
Form66.Label2.Caption:=myDate;
Form66.Memo1.Clear;
Form66.Memo2.Clear;
case shkala[1] of
  1..7: begin
  Form66.Memo1.Lines.Add('Интроверт:');
  Form66.Memo1.Lines.Add('Значительная интроверсия ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add('ИНТРОВЕРТЫ - люди, для которых наибольший интерес представляют явления собственного внутреннего мира, для них свои теории и	оценки реальности важнее, чем сама реальность. ');
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Они склонны к размышлениям, самоанализу, необщительны, замкнуты, испытывают затруднения в социальной адаптации, часто социально пассивны.';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Обычно бывают более чувствительны к внешним раздражителям, вернее распознают цвета, звуки, более осторожны, аккуратны и педантичны, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'показывают наилучшие результаты по тестам интеллекта, лучше других учатся в школе и вузе, лучше справляются с монотонной работой. ';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Начальники, занимающие высокие посты, не требующие постоянного общения с людьми, чаще всего интроверты.';
  end;

  8..11: begin
  Form66.Memo1.Lines.Add('Интроверт:');
  Form66.Memo1.Lines.Add('Умеренная интроверсия ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add('ИНТРОВЕРТЫ - люди, для которых наибольший интерес представляют явления собственного внутреннего мира, для них свои теории и	оценки реальности важнее, чем сама реальность. ');
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Они склонны к размышлениям, самоанализу, необщительны, замкнуты, испытывают затруднения в социальной адаптации, часто социально пассивны. ';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Обычно бывают более чувствительны к внешним раздражителям, вернее распознают цвета, звуки, более осторожны, аккуратны и педантичны, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'показывают наилучшие результаты по тестам интеллекта, лучше других учатся в школе и вузе, лучше справляются с монотонной работой. ';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Начальники, занимающие высокие посты, не требующие постоянного общения с людьми, чаще всего интроверты. ';
  end;


  12..18: begin
  Form66.Memo1.Lines.Add('Экстраверт:');
  Form66.Memo1.Lines.Add('Умеренная экстраверсия ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add(' ЭКСТРАВЕРТЫ - люди, ориентированные на окружающий мир, непосредственные, активные, открытые в эмоциональных проявлениях, любящие движение и риск . ');
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Для них характерна импульсивность, гибкость поведения , общительность и социальная адаптированность. Обычно это активные, шумные люди, "душа компании", заводилы, отличные бизнесмены и	организаторы, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'обладают внешним обаянием, прямолинейны в суждениях.  Как правило, ориентируются на внешнюю оценку, поэтому могут хорошо сдавать экзамены, тянутся к новым впечатлениям и ощущениям, оптимистичны, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + ' хорошо справляются с работой, требующей быстрого принятия решения. Вместе с тем экстраверты имеют предрасположенность к несчастным случаям. ';
  end;

  19..24: begin
  Form66.Memo1.Lines.Add('Экстраверт:');
  Form66.Memo1.Lines.Add('Значительная экстраверсия ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add(' ЭКСТРАВЕРТЫ - люди, ориентированные на окружающий мир, непосредственные, активные, открытые в эмоциональных проявлениях, любящие движение и риск .');
  Form66.Memo2.Text:=Form66.Memo2.Text + 'Для них характерна импульсивность, гибкость поведения , общительность и социальная адаптированность. Обычно это активные, шумные люди, "душа компании", заводилы, отличные бизнесмены и	организаторы, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + 'обладают внешним обаянием, прямолинейны в суждениях.  Как правило, ориентируются на внешнюю оценку, поэтому могут хорошо сдавать экзамены, тянутся к новым впечатлениям и ощущениям, оптимистичны, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + ' хорошо справляются с работой, требующей быстрого принятия решения. Вместе с тем экстраверты имеют предрасположенность к несчастным случаям. ';
  end;

  end;

case shkala[2] of

  0..10: begin
  Form66.Memo1.Lines.Add('Вы эмоционально устойчивы:');
  Form66.Memo1.Lines.Add('Высокая устойчивость. ');
  Form66.Memo1.Lines.Add('');
  end;

  11..12: begin
  Form66.Memo1.Lines.Add('Вы эмоционально устойчивы:');
  Form66.Memo1.Lines.Add('Средняя устойчивость. ');
  Form66.Memo1.Lines.Add('');
  end;

  13..18: begin
  Form66.Memo1.Lines.Add('Вы эмоционально неустойчивы:');
  Form66.Memo1.Lines.Add('Высокая степень неустойчивости. ');
  Form66.Memo1.Lines.Add('');
  end;

  19..24: begin
  Form66.Memo1.Lines.Add('Вы эмоционально неустойчивы:');
  Form66.Memo1.Lines.Add('Очень высокая неустойчивость. ');
  Form66.Memo1.Lines.Add('');
  end;


  end;

case shkala[3] of

  0..4: begin
  Form66.Memo1.Lines.Add('Вы откровенны:');
  Form66.Memo1.Lines.Add('Ваши ответы были искренне. ');
  end;

  5..9: begin
  Form66.Memo1.Lines.Add('Вы скрытны:');
  Form66.Memo1.Lines.Add('Ваши ответы не всегда были искренними и свидетельствуют о тенденции ориентироваться на создание хорошего впечатления о себе. ');
  end;



  end;

Form66.Memo1.Visible:=True;
Form66.N1.Visible:=True;
Form66.ShowModal;
end;

procedure Key_38;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
ch,i,bls:integer;
begin
ch:=0;
bls:=0;
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\38.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   if ch=select[i-1] then
    bls:=bls+1
   else
   bls:=bls;
  end;
  Form66.Memo1.Clear;
  case Form8.pol of
    0:begin
      case bls of
        8..16: Form66.Memo1.Lines.Add('Уровни эмпатических тенденций: ' + 'низкий. ');
        17..24:  Form66.Memo1.Lines.Add('Уровни эмпатических тенденций: ' + 'средний. ');
        25..33: Form66.Memo1.Lines.Add('Уровни эмпатических тенденций: ' + 'высокий. ');
      end;
    end;
    1:begin
      case bls of
        12..21: Form66.Memo1.Lines.Add('Уровни эмпатических тенденций: ' + 'низкий. ');
        22..28:  Form66.Memo1.Lines.Add('Уровни эмпатических тенденций: ' + 'средний. ');
        29..33: Form66.Memo1.Lines.Add('Уровни эмпатических тенденций: ' + 'высокий. ');
      end;

    end;
    end;
    Form66.Memo2.Clear;
    Form66.Memo2.Visible:=False;

    Form66.Memo2.Lines.Add('Эмоциональная отзывчивость на переживания других, называемая в психологии эмпатией, относится к высшим нравственным чувствам. Эмпатия в форме сочувствия или сопереживания, ');
    Form66.Memo2.Text:=Form66.Memo2.Text + 'будь то сорадование или сопечаливание, связана с умением человека "проникать" в чувственный мир других. В разнообразных жизненных ситуациях эмоциональный отклик ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'зависит от адекватности восприятия переживаний людей и эмоций животных, а также от представления о вызвавших их причинах. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Такая отзывчивость становится побудительной силой, направленной на оказание помощи.';
    
    Form66.N3.Visible:=True;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;
end;


procedure Key_37;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
ch,i,bls,bls2:integer;
begin
ch:=0;
bls:=0;
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\37.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   if ch=select[i-1] then
        case i of
        1,5,9,13,17,21,25,29,33,37,3,7,11,15,19,23,27,31,35,39:begin
        bls:=bls+1;
        end;
        2,6,10,14,18,22,26,30,34,38,4,8,12,16,20,24,28,32,36,40:begin
        bls2:=bls2+1;
        end;
        end;
  end;
  Form66.Memo1.Clear;

  case bls of

    1..4: Form66.Memo1.Lines.Add('Коммуникативные склонности: ' + 'очень низкий уровень. ');
    5..8:  Form66.Memo1.Lines.Add('Коммуникативные склонности: ' + 'низкий уровень. ');
    9..12: Form66.Memo1.Lines.Add('Коммуникативные склонности: ' + 'средний уровень. ');
    13..16:Form66.Memo1.Lines.Add('Коммуникативные склонности: ' + 'высокий уровень. ');
    17..20:Form66.Memo1.Lines.Add('Коммуникативные склонности: ' + 'высший уровень. ');
    end;

     case bls2 of

    1..4: Form66.Memo1.Lines.Add('Организаторские склонности: ' + 'очень низкий уровень. ');
    5..8:  Form66.Memo1.Lines.Add('Организаторские склонности: ' + 'низкий уровень. ');
    9..12: Form66.Memo1.Lines.Add('Организаторские склонности: ' + 'средний уровень. ');
    13..16:Form66.Memo1.Lines.Add('Организаторские склонности: ' + 'высокий уровень. ');
    17..20:Form66.Memo1.Lines.Add('Организаторские склонности: ' + 'высший уровень. ');
    end;
    Form66.Memo2.Clear;
    Form66.Memo2.Visible:=False;
    case bls of
    1..4: Form66.Memo2.Lines.Add('Организаторские склонности: ' + 'средний уровень. ');
    5..8:begin
    Form66.Memo2.Lines.Add('Испытуемые, с низким уровнем коммуникативных и организаторских склонностей не стремятся к общению, предпочитают проводить время наедине с собой. В новой компании или коллективе чувствуют себя скованно.');
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Испытывают трудности в установлении контактов с людьми. Не отстаивают своего мнения, тяжело переживают обиды. Редко проявляют инициативу, избегают принятия самостоятельных решений.';
    end;
    9..12:begin
    Form66.Memo2.Lines.Add('Испытуемые, со среднем уровнем средним уровнем проявления коммуникативных и организаторских склонностей, имеют коммуникативные и организаторские склонности ниже среднего уровня. ');
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Они не стремятся к общению, чувствуют себя скованно в новой компании, коллективе, предпочитают проводит время наедине с собой, ограничивают свои знакомства, ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'испытывают трудности в установлении контактов с людьми и в выступлении перед аудиторией, плохо ориентируются в незнакомой ситуации, не отстаивают свое мнение, тяжело переживают обиды. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Во многих делах они предпочитают избегать проявления самостоятельных решений и инициативы.';
    end;

    13..16:begin
    Form66.Memo2.Lines.Add('Испытуемые, высоким уровнем проявления коммуникативных и организаторских склонностей, относятся к группе с высоким уровнем проявления коммуникативных и организаторских склонностей. ');
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Они не теряются в новой обстановке, быстро находят друзей, постоянно стремятся расширить круг своих знакомых, занимаются общественной деятельностью, помогают близким, друзьям , ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'проявляют инициативу в общении, с удовольствием принимают участие в организации общественных мероприятий, способны принимать самостоятельное решение в трудной ситуации. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Все это они делают не по принуждению, а согласно внутренним устремлениям.';
    end;

    17..20:begin
    Form66.Memo2.Lines.Add('Испытуемые, c высшем уровнем коммуникативных и организаторских склонностей, обладают очень высоким уровнем проявления коммуникативных и организаторских склонностей. ');
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Они испытывают, потребность в коммуникативной и организаторской деятельности и активно стремятся к ней, быстро ориентируются в трудных ситуациях, ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'испытывают трудности в установлении контактов с людьми и в выступлении перед аудиторией, плохо ориентируются в незнакомой ситуации,  ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'не отстаивают свое мнение, тяжело переживают обиды.непринужденно ведут себя в новом коллективе, это инициативные люди, которые предпочитают ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'в важном деле или в создавшейся сложной ситуации принимать самостоятельные решения, отстаивают свое мнение и добиваются, чтобы оно было принято другими. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'Они могут внести оживление в незнакомую компанию, любят организовывать разные игры, мероприятия, настойчивы в деятельности, которая их привлекает, и сами ищут такие дела,';
    Form66.Memo2.Text:=Form66.Memo2.Text + 'которые бы удовлетворяли их потребность в коммуникации и организаторской деятельности.';
    end;
    end;
    Form66.N2.Visible:=True;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;
end;


procedure Key_36;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
ch,i,bls:integer;
begin
ch:=0;
bls:=0;
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\36.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   if ch=select[i-1] then
    bls:=bls+1
   else
   bls:=bls;
  end;
  Form66.Memo1.Clear;
  case bls of

    1..7: Form66.Memo1.Lines.Add('Способность делать логические заключения на основе заданной инструкции и информации: ' + 'Способности отсутствуют. ');
    8..11:  Form66.Memo1.Lines.Add('Способность делать логические заключения на основе заданной инструкции и информации: ' + 'Низкий уровень способностей. ');
    12..15: Form66.Memo1.Lines.Add('Способность делать логические заключения на основе заданной инструкции и информации: ' + 'Средний уровень способностей. ');
    16..34:Form66.Memo1.Lines.Add('Способность делать логические заключения на основе заданной инструкции и информации: ' + 'Высокий уровень способностей. ');
    end;

    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;
end;

procedure Key_35;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
ch,i,bls:integer;
begin
ch:=0;
bls:=0;
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\35.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   if ch=select[i-1] then
    bls:=bls+1
   else
   bls:=bls;
  end;
  Form66.Memo1.Clear;
  case bls of

    1..4: Form66.Memo1.Lines.Add('Способность к выявлению логических закономерностей в числовых последовательностях: ' + 'Способности отсутствуют. ');
    5..7:  Form66.Memo1.Lines.Add('Способность к выявлению логических закономерностей в числовых последовательностях: ' + 'Низкий уровень способностей. ');
    8..11: Form66.Memo1.Lines.Add('Способность к выявлению логических закономерностей в числовых последовательностях: ' + 'Средний уровень способностей. ');
    12..22:Form66.Memo1.Lines.Add('Способность к выявлению логических закономерностей в числовых последовательностях: ' + 'Высокий уровень способностей. ');
    end;

    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;
end;

procedure Key_34;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
ch,i,bls:integer;
begin
ch:=0;
bls:=0;
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\34.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   if ch=select[i-1] then
    bls:=bls+1
   else
   bls:=bls;
  end;
  Form66.Memo1.Clear;
  case bls of

    1..11: Form66.Memo1.Lines.Add('Способность в установлении логических связей между словами, на основе имеющихся знаний о значении каждого слова: ' + 'Способности отсутствуют. ');
    12..20:  Form66.Memo1.Lines.Add('Способность в установлении логических связей между словами, на основе имеющихся знаний о значении каждого слова: ' + 'Низкий уровень способностей. ');
    21..28: Form66.Memo1.Lines.Add('Способность в установлении логических связей между словами, на основе имеющихся знаний о значении каждого слова: ' + 'Средний уровень способностей. ');
    29..43:Form66.Memo1.Lines.Add('Способность в установлении логических связей между словами, на основе имеющихся знаний о значении каждого слова: ' + 'Высокий уровень способностей. ');
    end;

    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;
end;

procedure Key_32;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
l:Tlabel;
bls:Array[1..7] of Integer;
myDate,word:string;
ch,i:integer;
begin
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\32.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));

   case ch of
   1:begin
    case select[i-1] of
      1:bls[1]:=bls[1] + 1;
      2:bls[1]:=bls[1] + 0;
     end;
    Form51.Label2.Visible:=True;

   end;
   2:begin
   case select[i-1] of
      1:bls[2]:=bls[2] + 1;
      2:bls[2]:=bls[2] + 0;
      end;
    Form51.Label3.Visible:=True;

   end;
   3:begin
   case select[i-1] of
      1:bls[3]:=bls[3] + 1;
      2:bls[3]:=bls[3] + 0;
      end;
    Form51.Label4.Visible:=True;

   end;
   4:begin
   case select[i-1] of
      1:bls[4]:=bls[4] + 1;
      2:bls[4]:=bls[4] + 0;
      end;
    Form51.Label5.Visible:=True;

   end;
   5:begin
   case select[i-1] of
      1:bls[5]:=bls[5] + 1;
      2:bls[5]:=bls[5] + 0;
      end;
    Form51.Label6.Visible:=True;

   end;
   6:begin
   case select[i-1] of
      1:bls[6]:=bls[6] + 1;
      2:bls[6]:=bls[6] + 0;
      end;
    Form51.Label9.Visible:=True;

   end;
   7:begin
    case select[i-1] of
      1:bls[7]:=bls[7] + 1;
      2:bls[7]:=bls[7] + 0;
      end;
    Form51.Label10.Visible:=True;

   end;
   end;
  end;
  Form51.Label1.Visible:=True;
  Form51.Label1.Caption:='Выраженность функциональных способносней в баллах.';
  Form51.Label2.Caption:='Метафоризация: ' + IntToStr(bls[1]);
  Form51.Label3.Caption:='Образность: ' + IntToStr(bls[2]);
  Form51.Label4.Caption:='Символизация: ' + IntToStr(bls[3]);
  Form51.Label5.Caption:='Вербализация: ' + IntToStr(bls[4]);
  Form51.Label6.Caption:='Абстрагирование: ' + IntToStr(bls[5]);
  Form51.Label9.Caption:='Рефлексивность: ' + IntToStr(bls[6]);
  Form51.Label10.Caption:='Ручные навыки: ' + IntToStr(bls[7]);
  Form51.Chart1.Series[0].Clear;
  for i:=1 to 7 do
begin
  if (i=6) or (i=7) then
  begin
  l:=(Form51.FindComponent('Label'+IntToStr(i+3)) as TLabel);
  end
  else
  begin
  l:=(Form51.FindComponent('Label'+IntToStr(i+1)) as TLabel);
  end;
   word:=Copy(l.Caption,1,Pos(':',l.Caption)-1);
   Form51.Chart1.Series[0].Add(bls[i],word);
end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form51.Label8.Caption:=myDate;
    //Form51.Memo1.Visible:=True;
    Form51.Chart1.Visible:=True;
    //Form51.Memo1.Clear;
Form51.ShowModal;
end;


procedure Key_31;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
bls:Array[1..5] of Integer;
myDate:string;
ch,i:integer;
begin
  for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\31.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
   case ch of
   1:begin
    case select[i-1] of
      1:bls[1]:=bls[1] + 1;
      2:bls[1]:=bls[1] + 0;
     end;
    Form51.Label1.Visible:=True;
   end;
   2:begin
   case select[i-1] of
      1:bls[2]:=bls[2] + 1;
      2:bls[2]:=bls[2] + 0;
      end;
    Form51.Label2.Visible:=True;
   end;
   3:begin
   case select[i-1] of
      1:bls[3]:=bls[3] + 1;
      2:bls[3]:=bls[3] + 0;
      end;
    Form51.Label3.Visible:=True;
   end;
   4:begin
   case select[i-1] of
      1:bls[4]:=bls[4] + 1;
      2:bls[4]:=bls[4] + 0;
      end;
    Form51.Label4.Visible:=True;
   end;
   5:begin
   case select[i-1] of
      1:bls[5]:=bls[5] + 1;
      2:bls[5]:=bls[5] + 0;
      end;
    Form51.Label5.Visible:=True;
   end;
   end;
  end;
  case bls[1] of

    0..5: Form51.Label1.Caption:= 'Предметное мышление: ' + 'низкий уровень выраженности креативности. ';
    6..9:  Form51.Label1.Caption:= 'Предметное мышление: ' + 'средний уровень выраженности креативности. ';
    10..15: Form51.Label1.Caption:= 'Предметное мышление: ' + 'высокий уровень выраженности креативности. ';
    end;
  case bls[2] of
    0..5: Form51.Label2.Caption:= 'Символическое мышление: ' + 'низкий уровень выраженности креативности. ';
    6..9:  Form51.Label2.Caption:= 'Символическое мышление: ' + 'средний уровень выраженности креативности. ';
    10..15: Form51.Label2.Caption:= 'Символическое мышление: ' + 'высокий уровень выраженности креативности. ';
    end;
  case bls[3] of
    0..5: Form51.Label3.Caption:= 'Знаковое мышление: ' + 'низкий уровень выраженности креативности. ';
    6..9:  Form51.Label3.Caption:= 'Знаковое мышление: ' + 'средний уровень выраженности креативности. ';
    10..15: Form51.Label3.Caption:= 'Знаковое мышление: ' + 'высокий уровень выраженности креативности. ';
    end;
  case bls[4] of
    0..5: Form51.Label4.Caption:= 'Образное мышление: ' + 'низкий уровень выраженности креативности. ';
    6..9:  Form51.Label4.Caption:= 'Образное мышление: ' + 'средний уровень выраженности креативности. ';
    10..15: Form51.Label4.Caption:= 'Образное мышление: ' + 'высокий уровень выраженности креативности. ';
    end;
  case bls[5] of
    0..5: Form51.Label5.Caption:= 'Креативность: ' + 'низкий уровень выраженности креативности. ';
    6..9:  Form51.Label5.Caption:= 'Креативность: ' + 'средний уровень выраженности креативности. ';
    10..15: Form51.Label5.Caption:= 'Креативность: ' + 'высокий уровень выраженности креативности. ';
    end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form51.Label8.Caption:=myDate;
    Form51.Memo1.Visible:=True;
    Form51.Memo1.Clear;
Form51.ShowModal;
end;


procedure TForm50.Button1Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,N: integer;
begin
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
    0,1,2,5,6:begin
  id_vopros:=id_vopros+1;
  Select[id_vopros-1]:=radiogroup1.ItemIndex+1;
If id_vopros<countquest then
  begin
      Form50.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      if (Form49.N_metod <> 6) then
      begin
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      end;
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      if (Form49.N_metod <> 5) then
      begin
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items[j]:=VarToStr(Xmlvariant.Attributes['text']);
        end;
      end;  
  end
else
  begin
    Application.MessageBox('Вы прошли тест','Тестирование окончено');
       Case Form49.N_metod of
          0:Key_1;
          1:Key_2;
          2:Key_3;
          5:Key_6;
          6:Key_7;
        end;
      end;
     end;
   end;
  end;
  1:begin
    Case Form49.N_metod of
    0,1,2,3:begin
       id_vopros:=id_vopros+1;
  Select[id_vopros-1]:=radiogroup1.ItemIndex+1;
If id_vopros<countquest then
  begin
      Form50.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      if (Form49.N_metod = 2) then
      begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');

      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items[j]:=VarToStr(Xmlvariant.Attributes['text']);
        end;
      end;
 
  end
else
  begin
    Application.MessageBox('Вы прошли тест','Тестирование окончено');
       Case Form49.N_metod of
          0:Key_21;
          1:Key_22;
          2:Key_23;
          3:Key_24;
        end;
      end;
    end;
   end;
end;

2:begin
 Case Form49.N_metod of
    0,1,3,4,5,6,7:begin
       id_vopros:=id_vopros+1;
  Select[id_vopros-1]:=radiogroup1.ItemIndex+1;
If id_vopros<countquest then
  begin
      Form50.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      if ((Form49.N_metod = 3) or (Form49.N_metod = 4) or (Form49.N_metod = 5)) then
      begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      RadioGroup1.Items.Clear;
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items.Add(VarToStr(Xmlvariant.Attributes['text']));
        RadioGroup1.Buttons[j].WordWrap := True;
        RadioGroup1.Buttons[j].Checked :=True;
         end;
      end;

  end
else
  begin
    Application.MessageBox('Вы прошли тест','Тестирование окончено');
       Case Form49.N_metod of
          0:Key_31;
          1:Key_32;
          3:Key_34;
          4:Key_35;
          5:Key_36;
          6:Key_37;
          7:Key_38;
        end;
      end;
    end;
   end;
end;
end;
end;

procedure TForm50.Button2Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j: integer;
begin
  Case Form49.N_glava of
  0:begin
    Case Form49.N_metod of
    0,1,2,5,6:begin
Id_vopros:=Id_vopros-1;
If id_vopros<1 then id_vopros:=0;
      Form50.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      if (Form49.N_metod <> 5) then
      begin
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items[j]:=VarToStr(Xmlvariant.Attributes['text']);
        end;
      end;
 end;
 end;
end;
  1:begin
    Case Form49.N_metod of
    0,1,2,3:begin
Id_vopros:=Id_vopros-1;
If id_vopros<1 then id_vopros:=0;
      Form50.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      if (Form49.N_metod = 2) then
      begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      for j:=0 to  XmLvariants.ChildNodes.Count-1 do
        begin
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items[j]:=VarToStr(Xmlvariant.Attributes['text']);
        end;
      end;

 end;
 end;
end;
 2:begin
   Case Form49.N_metod of
    0,1,3,4,5,6,7:begin
Id_vopros:=Id_vopros-1;
If id_vopros<1 then id_vopros:=0;
      Form50.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      if ((Form49.N_metod = 3) or (Form49.N_metod = 4) or (Form49.N_metod = 5)) then
      begin
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      RadioGroup1.Items.Clear;
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
end;
end;
procedure TForm50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form49.Show;
end;

procedure TForm50.N1Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLtests: IXMLNode;
XmLtest: IXMLNode;
XmLhelp: IXMLNode;
i,j: integer;
begin
  Case Form49.N_glava of
  0:begin
    Case Form49.N_metod of
    0,1,2,3,4,5,6:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\help.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLtests:= XmlRoot.ChildNodes.FindNode('tests');
      XmLtest :=XmLtests.ChildNodes[Form49.N_metod];
      Form67.Memo1.Clear;
      Form67.Memo1.Lines.Add(VarToStr(XmLtest.Attributes['name']));
      XMlhelp:=Xmltest.ChildNodes.FindNode('help');
      Form67.Memo1.Lines.Add(VarToStr(XmLhelp.Attributes['text']))
    end;
 end;
end;
1:begin
  Case Form49.N_metod of
    0,1,2,3:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\help.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLtests:= XmlRoot.ChildNodes.FindNode('tests');
      XmLtest :=XmLtests.ChildNodes[Form49.N_metod+8];
      Form67.Memo1.Clear;
      Form67.Memo1.Lines.Add(VarToStr(XmLtest.Attributes['name']));
      XMlhelp:=Xmltest.ChildNodes.FindNode('help');
      Form67.Memo1.Lines.Add(VarToStr(XmLhelp.Attributes['text']))
    end;
 end;
end;
2:begin
  Case Form49.N_metod of
    0,1,3,4,5,6,7:begin
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
