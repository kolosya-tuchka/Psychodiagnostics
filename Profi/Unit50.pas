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
      Form50.Caption:= '������ 1 �� ' + IntToStr(countquest);
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
      Form50.Caption:= '������ 1 �� ' + IntToStr(countquest);
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
      Form50.Caption:= '������ 1 �� ' + IntToStr(countquest);
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
      Form66.Memo1.Lines.Add('��� �������� �������������� ��� ������������');
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
      Form66.Memo1.Lines.Add('��� �������� ����������������');
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
      Form66.Memo1.Lines.Add('��� �������� ����������');
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
      Form66.Memo1.Lines.Add('��� �������� �������������� ��� �����������');
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
      Form66.Memo1.Lines.Add('��� �������� ��������������');
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
      Form66.Memo1.Lines.Add('��� �������� �������������');
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
        1:Form66.Memo1.Lines.Add('��������:');
        2:Form66.Memo1.Lines.Add('������:');
        3:Form66.Memo1.Lines.Add('�����:');
        4:Form66.Memo1.Lines.Add('���������:');
        5:Form66.Memo1.Lines.Add('��������:');
        6:Form66.Memo1.Lines.Add('������� � �����������:');
        7:Form66.Memo1.Lines.Add('�������������:');
        8:Form66.Memo1.Lines.Add('����������:');
        9:Form66.Memo1.Lines.Add('���������:');
        10:Form66.Memo1.Lines.Add('���������:');
        11:Form66.Memo1.Lines.Add('���������:');
        12:Form66.Memo1.Lines.Add('������� � ������� ����:');
        13:Form66.Memo1.Lines.Add('������� �������������:');
        14:Form66.Memo1.Lines.Add('�������:');
        15:Form66.Memo1.Lines.Add('������� �������������:');
        16:Form66.Memo1.Lines.Add('������������:');
        17:Form66.Memo1.Lines.Add('�������������:');
        18:Form66.Memo1.Lines.Add('����������:');
        19:Form66.Memo1.Lines.Add('����� ������������, ��������:');
        20:Form66.Memo1.Lines.Add('����������� � �����:');
        21:Form66.Memo1.Lines.Add('������:');
        22:Form66.Memo1.Lines.Add('����������� ���������:');
        23:Form66.Memo1.Lines.Add('��������������� ���������:');
        24:Form66.Memo1.Lines.Add('��������:');
     end;
       case bals[i+1] of
        -12..-6:begin
            Form66.Memo1.Lines.Add('������ ������� ���������;');
            Form66.Memo1.Lines.Add(' ');
         end;
        -5..-1:begin
            Form66.Memo1.Lines.Add('������� ����������;');
            Form66.Memo1.Lines.Add(' ');
        end;
        0:begin
            Form66.Memo1.Lines.Add('-----;');
            Form66.Memo1.Lines.Add(' ');
        end;
        1..4:begin
           Form66.Memo1.Lines.Add('������� ������� �����;');
           Form66.Memo1.Lines.Add(' ');
        end;
        5..7:begin
           Form66.Memo1.Lines.Add('���������� �������;');
           Form66.Memo1.Lines.Add(' ');
        end;
        8..12: begin
          Form66.Memo1.Lines.Add('���� ���������� �������;');
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
    0..1: Form51.Label1.Caption:= '"������� - �������": ' + '������ � ����� ��������� ����� ������� �����������: "��� ������, ������ �� ���". ';
    2..3: Form51.Label1.Caption:= '"������� - �������": ' + '���������� �� ��������. ';
    4..6: Form51.Label1.Caption:= '"������� - �������": ' + '���������� �� ������� ������. ';
    7..8: Form51.Label1.Caption:= '"������� - �������": ' + '���������� ����������. ';
    9..10:Form51.Label1.Caption:= '"������� - �������": ' + '���� ���������� ����������. ';
    end;
  case bals[2] of
    0..1: Form51.Label2.Caption:= '"������� - �������": ' + '������ � ����� ��������� ����� ������� �����������: "��� ������, ������ �� ���". ';
    2..3: Form51.Label2.Caption:= '"������� - �������": ' + '���������� �� ��������. ';
    4..6: Form51.Label2.Caption:= '"������� - �������": ' + '���������� �� ������� ������. ';
    7..8: Form51.Label2.Caption:= '"������� - �������": ' + '���������� ����������. ';
    9..10:Form51.Label2.Caption:= '"������� - �������": ' + '���� ���������� ����������. ';
    end;
  case bals[3] of
    0..1: Form51.Label3.Caption:= '"������� - ������ �������": ' + '������ � ����� ��������� ����� ������� �����������: "��� ������, ������ �� ���". ';
    2..3: Form51.Label3.Caption:= '"������� - ������ �������": ' + '���������� �� ��������. ';
    4..6: Form51.Label3.Caption:= '"������� - ������ �������": ' + '���������� �� ������� ������. ';
    7..8: Form51.Label3.Caption:= '"������� - ������ �������": ' + '���������� ����������. ';
    9..10:Form51.Label3.Caption:= '"������� - ������ �������": ' + '���� ���������� ����������. ';
    end;
  case bals[4] of
    0..1: Form51.Label4.Caption:= '"������� - �������� �������": ' + '������ � ����� ��������� ����� ������� �����������: "��� ������, ������ �� ���". ';
    2..3: Form51.Label4.Caption:= '"������� - �������� �������": ' + '���������� �� ��������. ';
    4..6: Form51.Label4.Caption:= '"������� - �������� �������": ' + '���������� �� ������� ������. ';
    7..8: Form51.Label4.Caption:= '"������� - �������� �������": ' + '���������� ����������. ';
    9..10:Form51.Label4.Caption:= '"������� - �������� �������": ' + '���� ���������� ����������. ';
    end;
  case bals[5] of
    0..1: Form51.Label5.Caption:= '"������� -  �������������� �����": ' + '������ � ����� ��������� ����� ������� �����������: "��� ������, ������ �� ���". ';
    2..3: Form51.Label5.Caption:= '"������� -  �������������� �����": ' + '���������� �� ��������. ';
    4..6: Form51.Label5.Caption:= '"������� -  �������������� �����": ' + '���������� �� ������� ������. ';
    7..8: Form51.Label5.Caption:= '"������� -  �������������� �����": ' + '���������� ����������. ';
    9..10:Form51.Label5.Caption:= '"������� -  �������������� �����": ' + '���� ���������� ����������. ';
    end;
  case bals[6] of
    0..1: Form51.Label6.Caption:= '"��� �������": ' + '������ � ����� ��������� ����� ������� �����������: "��� ������, ������ �� ���". ';
    2..3: Form51.Label6.Caption:= '"��� �������": ' + '���������� �� ��������. ';
    4..6: Form51.Label6.Caption:= '"��� �������": ' + '���������� �� ������� ������. ';
    7..8: Form51.Label6.Caption:= '"��� �������": ' + '���������� ����������. ';
    9..10:Form51.Label6.Caption:= '"��� �������": ' + '���� ���������� ����������. ';
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
   Form51.Label1.Caption:= '���������, ���������� �������� ������� ����� ��������� � ����������� ';
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

    0..4: Form51.Label1.Caption:= '�������������� ��������� ���������������� ������������: ' + '����� ���������� ������. ';
    5..9:  Form51.Label1.Caption:= '�������������� ��������� ���������������� ������������: ' + '������������ ���� �������� ������. ';
    10..14: Form51.Label1.Caption:= '�������������� ��������� ���������������� ������������: ' + '������� ������� ������������. ';
    15..19: Form51.Label1.Caption:= '�������������� ��������� ���������������� ������������: ' + '������������ ���� �������� ������. ';
    20..30: Form51.Label1.Caption:= '�������������� ��������� ���������������� ������������: ' + '������ ���������� ������. ';
    end;
  case balls[2] of
    0..3: Form51.Label2.Caption:= '�������������� ���������������� ������������: ' + '����� ���������� ������. ';
    4..7:  Form51.Label2.Caption:= '�������������� ���������������� ������������: ' + '������������ ���� �������� ������. ';
    8..11: Form51.Label2.Caption:= '�������������� ���������������� ������������: ' + '������� ������� ������������. ';
    12..15: Form51.Label2.Caption:= '�������������� ���������������� ������������: ' + '������������ ���� �������� ������. ';
    16..30: Form51.Label2.Caption:= '�������������� ���������������� ������������: ' + '������ ���������� ������. ';
    end;
  case balls[3] of
    0..2: Form51.Label3.Caption:= '��������� (������ ������): ' + '����� ���������� ������. ';
    3..5:  Form51.Label3.Caption:= '��������� (������ ������): ' + '������������ ���� �������� ������. ';
    6..8: Form51.Label3.Caption:= '��������� (������ ������): ' + '������� ������� ������������. ';
    9..11: Form51.Label3.Caption:= '��������� (������ ������): ' + '������������ ���� �������� ������. ';
    12..30: Form51.Label3.Caption:= '��������� (������ ������): ' + '������ ���������� ������. ';
    end;
  case balls[4] of
    0..4: Form51.Label4.Caption:= '���������� ���������������� ������������: ' + '����� ���������� ������. ';
    5..9:  Form51.Label4.Caption:= '���������� ���������������� ������������: ' + '������������ ���� �������� ������. ';
    10..14: Form51.Label4.Caption:= '���������� ���������������� ������������: ' + '������� ������� ������������. ';
    15..19: Form51.Label4.Caption:= '���������� ���������������� ������������: ' + '������������ ���� �������� ������. ';
    20..30: Form51.Label4.Caption:= '���������� ���������������� ������������: ' + '������ ���������� ������. ';
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
    Form51.Label1.Caption:='������������ ��������������: �������������';
    Form51.Label1.Visible:=True;
    end
    else
    begin
    Form51.Label1.Caption:='������������ ��������������: �������������';
    Form51.Label1.Visible:=True;
    end;

  if (bls[3]-bls[4])<0 then
    begin
    Form51.Label2.Caption:='������������ ��������������: �����������. ';
    Form51.Label2.Visible:=True;
    end
    else
    begin
    Form51.Label2.Caption:='������������ ��������������: �����������. ';
    Form51.Label2.Visible:=True;
    end;

  if (bls[5]-bls[6])<0 then
    begin
    Form51.Label3.Caption:='������������ ��������������: ���������� �� �����. ';
    Form51.Label3.Visible:=True;
    end
    else
    begin
    Form51.Label3.Caption:='������������ ��������������: ���������� �� �����������. ';
    Form51.Label3.Visible:=True;
    end;

  if (bls[7]-bls[8])<0 then
    begin
    Form51.Label4.Caption:='������������ ��������������: ����������������. ';
    Form51.Label4.Visible:=True;
    end
    else
    begin
    Form51.Label4.Caption:='������������ ��������������: ������������. ';
    Form51.Label4.Visible:=True;
    end;

    if  (bls[1]-bls[2])=0 then Form51.Label1.Caption:='�� ��������� � �������������� "�������������" ���� ��������� ��������� � ����� ����������� � �����-�� ����������. ';

    if  (bls[3]-bls[4])=0 then Form51.Label2.Caption:='�� ��������� � �������������� "�����������" ���� ��������� ��������� � ����� ����������� � �����-�� ����������. ';

    if  (bls[5]-bls[6])=0 then Form51.Label3.Caption:='�� ��������� � �������������� "���������� �� �����������" ���� ��������� ��������� � ����� ����������� � �����-�� ����������. ';

    if  (bls[7]-bls[8])=0 then Form51.Label4.Caption:='�� ��������� � �������������� "������������" ���� ��������� ��������� � ����� ����������� � �����-�� ����������. ';



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

    0..4: Form51.Label1.Caption:= '����������� - �������������: ' + '������ ����������. ';
    5..8:  Form51.Label1.Caption:= '����������� - �������������: ' + '������� ����������. ';
    9..12: Form51.Label1.Caption:= '����������� - �������������: ' + '������� ����������. ';
    end;
  case bls[2] of
    0..4: Form51.Label2.Caption:= '������������� �������������� - ������������: ' + '������ ����������. ';
    5..8:  Form51.Label2.Caption:= '������������� �������������� - ������������: ' + '������� ����������. ';
    9..12: Form51.Label2.Caption:= '������������� �������������� - ������������: ' + '������� ����������. ';
    end;
  case bls[3] of
    0..4: Form51.Label3.Caption:= '���������� � ���������� - � �������������: ' + '������ ����������. ';
    5..8:  Form51.Label3.Caption:= '���������� � ���������� - � �������������: ' + '������� ����������. ';
    9..12: Form51.Label3.Caption:= '���������� � ���������� - � �������������: ' + '������� ����������. ';
    end;
  case bls[4] of
    0..4: Form51.Label4.Caption:= '������������ - ���������������: ' + '������ ����������. ';
    5..8:  Form51.Label4.Caption:= '������������ - ���������������: ' + '������� ����������. ';
    9..12: Form51.Label4.Caption:= '������������ - ���������������: ' + '������� ����������. ';
    end;
  case bls[5] of
    0..4: Form51.Label5.Caption:= '������� - ��������: ' + '������ ����������. ';
    5..8:  Form51.Label5.Caption:= '������� - ��������: ' + '������� ����������. ';
    9..12: Form51.Label5.Caption:= '������� - ��������: ' + '������� ����������. ';
    end;
    case bls[6] of
    0..4: Form51.Label6.Caption:= '������������ - ����������������: ' + '������ ����������. ';
    5..8:  Form51.Label6.Caption:= '������������ - ����������������: ' + '������� ����������. ';
    9..12: Form51.Label6.Caption:= '������������ - ����������������: ' + '������� ����������. ';
    end;
    case bls[7] of
    0..4: Form51.Label9.Caption:= '����������� � ���� - �����������: ' + '������ ����������. ';
    5..8:  Form51.Label9.Caption:= '����������� � ���� - �����������: ' + '������� ����������. ';
    9..12: Form51.Label9.Caption:= '����������� � ���� - �����������: ' + '������� ����������. ';
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

    0..3: Form51.Label1.Caption:= '������������ - �����������: ' + '������ ������� ������������. ';
    4..6:  Form51.Label1.Caption:= '������������ - �����������: ' + '���� ��������. ';
    7..9: Form51.Label1.Caption:= '������������ - �����������: ' + '������� ������� ������������. ';
    10..12: Form51.Label1.Caption:= '������������ - �����������: ' + '���� ��������. ';
    13..16: Form51.Label1.Caption:= '������������ - �����������: ' + '������� ������� ������������. ';
    end;
  case bls[2] of
    0..3: Form51.Label2.Caption:= '��������� - ������������� ������������ (���������� ��������������� �������): ' + '������ ������� ������������. ';
    4..6:  Form51.Label2.Caption:= '��������� - ������������� ������������ (���������� ��������������� �������): ' + '���� ��������. ';
    7..9: Form51.Label2.Caption:= '��������� - ������������� ������������ (���������� ��������������� �������): ' + '������� ������� ������������. ';
    10..12: Form51.Label2.Caption:= '��������� - ������������� ������������ (���������� ��������������� �������): ' + '���� ��������. ';
    13..16: Form51.Label2.Caption:= '��������� - ������������� ������������ (���������� ��������������� �������): ' + '������� ������� ������������. ';
    end;
  case bls[3] of
    0..3: Form51.Label3.Caption:= '���������� - ���������� � ������ �����. : ' + '������ ������� ������������. ';
    4..6:  Form51.Label3.Caption:= '���������� - ���������� � ������ �����. : ' + '���� ��������. ';
    7..9: Form51.Label3.Caption:= '���������� - ���������� � ������ �����. : ' + '������� ������� ������������. ';
    10..12: Form51.Label3.Caption:= '���������� - ���������� � ������ �����. : ' + '���� ��������. ';
    13..16: Form51.Label3.Caption:= '���������� - ���������� � ������ �����. : ' + '������� ������� ������������. ';
    end;
  case bls[4] of
    0..3: Form51.Label4.Caption:= '�������������� - �������������.: ' + '������ ������� ������������. ';
    4..6:  Form51.Label4.Caption:= '�������������� - �������������.: ' + '���� ��������. ';
    7..9: Form51.Label4.Caption:= '�������������� - �������������.: ' + '������� ������� ������������. ';
    10..12: Form51.Label4.Caption:= '�������������� - �������������.: ' + '���� ��������. ';
    13..16: Form51.Label4.Caption:= '�������������� - �������������.: ' + '������� ������� ������������. ';
    end;
  case bls[5] of
    0..3: Form51.Label5.Caption:= '������������������ - ������������: ' + '������ ������� ������������. ';
    4..6:  Form51.Label5.Caption:= '������������������ - ������������: ' + '���� ��������. ';
    7..9: Form51.Label5.Caption:= '������������������ - ������������: ' + '������� ������� ������������. ';
    10..12: Form51.Label5.Caption:= '������������������ - ������������: ' + '���� ��������. ';
    13..16: Form51.Label5.Caption:= '������������������ - ������������: ' + '������� ������� ������������. ';
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
  Form66.Memo1.Lines.Add('���������:');
  Form66.Memo1.Lines.Add('������������ ����������� ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add('���������� - ����, ��� ������� ���������� ������� ������������ ������� ������������ ����������� ����, ��� ��� ���� ������ �	������ ���������� ������, ��� ���� ����������. ');
  Form66.Memo2.Text:=Form66.Memo2.Text + '��� ������� � ������������, �����������, ������������, ��������, ���������� ����������� � ���������� ���������, ����� ��������� ��������.';
  Form66.Memo2.Text:=Form66.Memo2.Text + '������ ������ ����� ������������� � ������� �������������, ������ ���������� �����, �����, ����� ���������, ��������� � ����������, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + '���������� ��������� ���������� �� ������ ����������, ����� ������ ������ � ����� � ����, ����� ����������� � ���������� �������. ';
  Form66.Memo2.Text:=Form66.Memo2.Text + '����������, ���������� ������� �����, �� ��������� ����������� ������� � ������, ���� ����� ����������.';
  end;

  8..11: begin
  Form66.Memo1.Lines.Add('���������:');
  Form66.Memo1.Lines.Add('��������� ����������� ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add('���������� - ����, ��� ������� ���������� ������� ������������ ������� ������������ ����������� ����, ��� ��� ���� ������ �	������ ���������� ������, ��� ���� ����������. ');
  Form66.Memo2.Text:=Form66.Memo2.Text + '��� ������� � ������������, �����������, ������������, ��������, ���������� ����������� � ���������� ���������, ����� ��������� ��������. ';
  Form66.Memo2.Text:=Form66.Memo2.Text + '������ ������ ����� ������������� � ������� �������������, ������ ���������� �����, �����, ����� ���������, ��������� � ����������, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + '���������� ��������� ���������� �� ������ ����������, ����� ������ ������ � ����� � ����, ����� ����������� � ���������� �������. ';
  Form66.Memo2.Text:=Form66.Memo2.Text + '����������, ���������� ������� �����, �� ��������� ����������� ������� � ������, ���� ����� ����������. ';
  end;


  12..18: begin
  Form66.Memo1.Lines.Add('����������:');
  Form66.Memo1.Lines.Add('��������� ������������ ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add(' ����������� - ����, ��������������� �� ���������� ���, ����������������, ��������, �������� � ������������� �����������, ������� �������� � ���� . ');
  Form66.Memo2.Text:=Form66.Memo2.Text + '��� ��� ���������� ��������������, �������� ��������� , ������������� � ���������� ����������������. ������ ��� ��������, ������ ����, "���� ��������", ��������, �������� ���������� �	������������, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + '�������� ������� ��������, ������������ � ���������.  ��� �������, ������������� �� ������� ������, ������� ����� ������ ������� ��������, ������� � ����� ������������ � ���������, ������������, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + ' ������ ����������� � �������, ��������� �������� �������� �������. ������ � ��� ����������� ����� ������������������� � ���������� �������. ';
  end;

  19..24: begin
  Form66.Memo1.Lines.Add('����������:');
  Form66.Memo1.Lines.Add('������������ ������������ ');
  Form66.Memo1.Lines.Add('');
  Form66.Memo2.Lines.Add(' ����������� - ����, ��������������� �� ���������� ���, ����������������, ��������, �������� � ������������� �����������, ������� �������� � ���� .');
  Form66.Memo2.Text:=Form66.Memo2.Text + '��� ��� ���������� ��������������, �������� ��������� , ������������� � ���������� ����������������. ������ ��� ��������, ������ ����, "���� ��������", ��������, �������� ���������� �	������������, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + '�������� ������� ��������, ������������ � ���������.  ��� �������, ������������� �� ������� ������, ������� ����� ������ ������� ��������, ������� � ����� ������������ � ���������, ������������, ';
  Form66.Memo2.Text:=Form66.Memo2.Text + ' ������ ����������� � �������, ��������� �������� �������� �������. ������ � ��� ����������� ����� ������������������� � ���������� �������. ';
  end;

  end;

case shkala[2] of

  0..10: begin
  Form66.Memo1.Lines.Add('�� ������������ ���������:');
  Form66.Memo1.Lines.Add('������� ������������. ');
  Form66.Memo1.Lines.Add('');
  end;

  11..12: begin
  Form66.Memo1.Lines.Add('�� ������������ ���������:');
  Form66.Memo1.Lines.Add('������� ������������. ');
  Form66.Memo1.Lines.Add('');
  end;

  13..18: begin
  Form66.Memo1.Lines.Add('�� ������������ �����������:');
  Form66.Memo1.Lines.Add('������� ������� ��������������. ');
  Form66.Memo1.Lines.Add('');
  end;

  19..24: begin
  Form66.Memo1.Lines.Add('�� ������������ �����������:');
  Form66.Memo1.Lines.Add('����� ������� ��������������. ');
  Form66.Memo1.Lines.Add('');
  end;


  end;

case shkala[3] of

  0..4: begin
  Form66.Memo1.Lines.Add('�� ����������:');
  Form66.Memo1.Lines.Add('���� ������ ���� ��������. ');
  end;

  5..9: begin
  Form66.Memo1.Lines.Add('�� �������:');
  Form66.Memo1.Lines.Add('���� ������ �� ������ ���� ���������� � ��������������� � ��������� ��������������� �� �������� �������� ����������� � ����. ');
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
        8..16: Form66.Memo1.Lines.Add('������ ������������ ���������: ' + '������. ');
        17..24:  Form66.Memo1.Lines.Add('������ ������������ ���������: ' + '�������. ');
        25..33: Form66.Memo1.Lines.Add('������ ������������ ���������: ' + '�������. ');
      end;
    end;
    1:begin
      case bls of
        12..21: Form66.Memo1.Lines.Add('������ ������������ ���������: ' + '������. ');
        22..28:  Form66.Memo1.Lines.Add('������ ������������ ���������: ' + '�������. ');
        29..33: Form66.Memo1.Lines.Add('������ ������������ ���������: ' + '�������. ');
      end;

    end;
    end;
    Form66.Memo2.Clear;
    Form66.Memo2.Visible:=False;

    Form66.Memo2.Lines.Add('������������� ������������ �� ����������� ������, ���������� � ���������� ��������, ��������� � ������ ������������ ��������. ������� � ����� ���������� ��� �������������, ');
    Form66.Memo2.Text:=Form66.Memo2.Text + '���� �� ����������� ��� �������������, ������� � ������� �������� "���������" � ����������� ��� ������. � ������������� ��������� ��������� ������������� ������ ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '������� �� ������������ ���������� ����������� ����� � ������ ��������, � ����� �� ������������� � ��������� �� ��������. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '����� ������������ ���������� ������������� �����, ������������ �� �������� ������.';
    
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

    1..4: Form66.Memo1.Lines.Add('��������������� ����������: ' + '����� ������ �������. ');
    5..8:  Form66.Memo1.Lines.Add('��������������� ����������: ' + '������ �������. ');
    9..12: Form66.Memo1.Lines.Add('��������������� ����������: ' + '������� �������. ');
    13..16:Form66.Memo1.Lines.Add('��������������� ����������: ' + '������� �������. ');
    17..20:Form66.Memo1.Lines.Add('��������������� ����������: ' + '������ �������. ');
    end;

     case bls2 of

    1..4: Form66.Memo1.Lines.Add('��������������� ����������: ' + '����� ������ �������. ');
    5..8:  Form66.Memo1.Lines.Add('��������������� ����������: ' + '������ �������. ');
    9..12: Form66.Memo1.Lines.Add('��������������� ����������: ' + '������� �������. ');
    13..16:Form66.Memo1.Lines.Add('��������������� ����������: ' + '������� �������. ');
    17..20:Form66.Memo1.Lines.Add('��������������� ����������: ' + '������ �������. ');
    end;
    Form66.Memo2.Clear;
    Form66.Memo2.Visible:=False;
    case bls of
    1..4: Form66.Memo2.Lines.Add('��������������� ����������: ' + '������� �������. ');
    5..8:begin
    Form66.Memo2.Lines.Add('����������, � ������ ������� ��������������� � ��������������� ����������� �� ��������� � �������, ������������ ��������� ����� ������� � �����. � ����� �������� ��� ���������� ��������� ���� ��������.');
    Form66.Memo2.Text:=Form66.Memo2.Text + '���������� ��������� � ������������ ��������� � ������. �� ���������� ������ ������, ������ ���������� �����. ����� ��������� ����������, �������� �������� ��������������� �������.';
    end;
    9..12:begin
    Form66.Memo2.Lines.Add('����������, �� ������� ������� ������� ������� ���������� ��������������� � ��������������� �����������, ����� ��������������� � ��������������� ���������� ���� �������� ������. ');
    Form66.Memo2.Text:=Form66.Memo2.Text + '��� �� ��������� � �������, ��������� ���� �������� � ����� ��������, ����������, ������������ �������� ����� ������� � �����, ������������ ���� ����������, ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '���������� ��������� � ������������ ��������� � ������ � � ����������� ����� ����������, ����� ������������� � ���������� ��������, �� ���������� ���� ������, ������ ���������� �����. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '�� ������ ����� ��� ������������ �������� ���������� ��������������� ������� � ����������.';
    end;

    13..16:begin
    Form66.Memo2.Lines.Add('����������, ������� ������� ���������� ��������������� � ��������������� �����������, ��������� � ������ � ������� ������� ���������� ��������������� � ��������������� �����������. ');
    Form66.Memo2.Text:=Form66.Memo2.Text + '��� �� �������� � ����� ����������, ������ ������� ������, ��������� ��������� ��������� ���� ����� ��������, ���������� ������������ �������������, �������� �������, ������� , ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '��������� ���������� � �������, � ������������� ��������� ������� � ����������� ������������ �����������, �������� ��������� ��������������� ������� � ������� ��������. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '��� ��� ��� ������ �� �� �����������, � �������� ���������� ������������.';
    end;

    17..20:begin
    Form66.Memo2.Lines.Add('����������, c ������ ������� ��������������� � ��������������� �����������, �������� ����� ������� ������� ���������� ��������������� � ��������������� �����������. ');
    Form66.Memo2.Text:=Form66.Memo2.Text + '��� ����������, ����������� � ��������������� � ��������������� ������������ � ������� ��������� � ���, ������ ������������� � ������� ���������, ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '���������� ��������� � ������������ ��������� � ������ � � ����������� ����� ����������, ����� ������������� � ���������� ��������,  ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '�� ���������� ���� ������, ������ ���������� �����.������������� ����� ���� � ����� ����������, ��� ������������ ����, ������� ������������ ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '� ������ ���� ��� � ����������� ������� �������� ��������� ��������������� �������, ���������� ���� ������ � ����������, ����� ��� ���� ������� �������. ';
    Form66.Memo2.Text:=Form66.Memo2.Text + '��� ����� ������ ��������� � ���������� ��������, ����� �������������� ������ ����, �����������, ���������� � ������������, ������� �� ����������, � ���� ���� ����� ����,';
    Form66.Memo2.Text:=Form66.Memo2.Text + '������� �� ������������� �� ����������� � ������������ � ��������������� ������������.';
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

    1..7: Form66.Memo1.Lines.Add('����������� ������ ���������� ���������� �� ������ �������� ���������� � ����������: ' + '����������� �����������. ');
    8..11:  Form66.Memo1.Lines.Add('����������� ������ ���������� ���������� �� ������ �������� ���������� � ����������: ' + '������ ������� ������������. ');
    12..15: Form66.Memo1.Lines.Add('����������� ������ ���������� ���������� �� ������ �������� ���������� � ����������: ' + '������� ������� ������������. ');
    16..34:Form66.Memo1.Lines.Add('����������� ������ ���������� ���������� �� ������ �������� ���������� � ����������: ' + '������� ������� ������������. ');
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

    1..4: Form66.Memo1.Lines.Add('����������� � ��������� ���������� ��������������� � �������� �������������������: ' + '����������� �����������. ');
    5..7:  Form66.Memo1.Lines.Add('����������� � ��������� ���������� ��������������� � �������� �������������������: ' + '������ ������� ������������. ');
    8..11: Form66.Memo1.Lines.Add('����������� � ��������� ���������� ��������������� � �������� �������������������: ' + '������� ������� ������������. ');
    12..22:Form66.Memo1.Lines.Add('����������� � ��������� ���������� ��������������� � �������� �������������������: ' + '������� ������� ������������. ');
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

    1..11: Form66.Memo1.Lines.Add('����������� � ������������ ���������� ������ ����� �������, �� ������ ��������� ������ � �������� ������� �����: ' + '����������� �����������. ');
    12..20:  Form66.Memo1.Lines.Add('����������� � ������������ ���������� ������ ����� �������, �� ������ ��������� ������ � �������� ������� �����: ' + '������ ������� ������������. ');
    21..28: Form66.Memo1.Lines.Add('����������� � ������������ ���������� ������ ����� �������, �� ������ ��������� ������ � �������� ������� �����: ' + '������� ������� ������������. ');
    29..43:Form66.Memo1.Lines.Add('����������� � ������������ ���������� ������ ����� �������, �� ������ ��������� ������ � �������� ������� �����: ' + '������� ������� ������������. ');
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
  Form51.Label1.Caption:='������������ �������������� ������������ � ������.';
  Form51.Label2.Caption:='�������������: ' + IntToStr(bls[1]);
  Form51.Label3.Caption:='����������: ' + IntToStr(bls[2]);
  Form51.Label4.Caption:='������������: ' + IntToStr(bls[3]);
  Form51.Label5.Caption:='������������: ' + IntToStr(bls[4]);
  Form51.Label6.Caption:='���������������: ' + IntToStr(bls[5]);
  Form51.Label9.Caption:='��������������: ' + IntToStr(bls[6]);
  Form51.Label10.Caption:='������ ������: ' + IntToStr(bls[7]);
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

    0..5: Form51.Label1.Caption:= '���������� ��������: ' + '������ ������� ������������ ������������. ';
    6..9:  Form51.Label1.Caption:= '���������� ��������: ' + '������� ������� ������������ ������������. ';
    10..15: Form51.Label1.Caption:= '���������� ��������: ' + '������� ������� ������������ ������������. ';
    end;
  case bls[2] of
    0..5: Form51.Label2.Caption:= '������������� ��������: ' + '������ ������� ������������ ������������. ';
    6..9:  Form51.Label2.Caption:= '������������� ��������: ' + '������� ������� ������������ ������������. ';
    10..15: Form51.Label2.Caption:= '������������� ��������: ' + '������� ������� ������������ ������������. ';
    end;
  case bls[3] of
    0..5: Form51.Label3.Caption:= '�������� ��������: ' + '������ ������� ������������ ������������. ';
    6..9:  Form51.Label3.Caption:= '�������� ��������: ' + '������� ������� ������������ ������������. ';
    10..15: Form51.Label3.Caption:= '�������� ��������: ' + '������� ������� ������������ ������������. ';
    end;
  case bls[4] of
    0..5: Form51.Label4.Caption:= '�������� ��������: ' + '������ ������� ������������ ������������. ';
    6..9:  Form51.Label4.Caption:= '�������� ��������: ' + '������� ������� ������������ ������������. ';
    10..15: Form51.Label4.Caption:= '�������� ��������: ' + '������� ������� ������������ ������������. ';
    end;
  case bls[5] of
    0..5: Form51.Label5.Caption:= '������������: ' + '������ ������� ������������ ������������. ';
    6..9:  Form51.Label5.Caption:= '������������: ' + '������� ������� ������������ ������������. ';
    10..15: Form51.Label5.Caption:= '������������: ' + '������� ������� ������������ ������������. ';
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
      Form50.Caption:= '������ ' + IntTostr(id_vopros+1) + ' �� ' + IntToStr(countquest);
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
    Application.MessageBox('�� ������ ����','������������ ��������');
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
      Form50.Caption:= '������ ' + IntTostr(id_vopros+1) + ' �� ' + IntToStr(countquest);
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
    Application.MessageBox('�� ������ ����','������������ ��������');
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
      Form50.Caption:= '������ ' + IntTostr(id_vopros+1) + ' �� ' + IntToStr(countquest);
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
    Application.MessageBox('�� ������ ����','������������ ��������');
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
      Form50.Caption:= '������ ' + IntTostr(id_vopros+1) + ' �� ' + IntToStr(countquest);
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
      Form50.Caption:= '������ ' + IntTostr(id_vopros+1) + ' �� ' + IntToStr(countquest);
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
      Form50.Caption:= '������ ' + IntTostr(id_vopros+1) + ' �� ' + IntToStr(countquest);
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
