unit Unit65;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, XMLDoc, ExtCtrls, Menus;

type
  TForm65 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
 
  private
    { Private declarations }
  public
    { Public declarations }
  Id_vopros:integer;
  end;

var
  Form65: TForm65;
  countquest:integer;

  Select: Array of Array of integer;
  Balls: Array[1..4] of Integer;
implementation

uses Unit35, Unit49, Unit50, Unit51, Unit66, Unit67;

{$R *.dfm}

procedure TForm65.FormShow(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,nomer,message: integer;
begin
RadioGroup1.Items.Clear;
RadioGroup2.Items.Clear;
RadioGroup3.Items.Clear;
  Case Form49.N_glava of
  0:begin
    Case Form49.N_metod of
    3:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      countquest := XmLquestions.ChildNodes.Count;
      SetLength(Select,countquest,3);
      Form65.Caption:= 'Вопрос 1 из ' + IntToStr(countquest);
      XmLquestion :=XmLquestions.ChildNodes[0];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      for j:=0 to 2 do
        begin
        RadioGroup1.Caption:= 'Насколько хорошо вы умеете делать то, о чем говорится в высказывании?';
        XmLvariant :=Xmlvariants.ChildNodes[j];
        RadioGroup1.Items.Add(VarToStr(Xmlvariant.Attributes['text']));
        RadioGroup1.Buttons[0].Checked :=True;
        RadioGroup1.Buttons[j].WordWrap := True;
        end;
      for j:=0 to  2 do
        begin
        RadioGroup2.Caption:= 'Какие ощущения у вас возникали, когда вы делали то, о чем говорится в высказывании?';
        XmLvariant :=Xmlvariants.ChildNodes[j+3];
        RadioGroup2.Items.Add(VarToStr(Xmlvariant.Attributes['text']));
        RadioGroup2.Buttons[0].Checked :=True;
        RadioGroup2.Buttons[j].WordWrap := True
        end;
       for j:=0 to  2 do
        begin
        RadioGroup3.Caption:= 'Хотели бы вы, чтобы то, о чем говорится в высказывании, было включено в вашу будущую работу?';
        XmLvariant :=Xmlvariants.ChildNodes[j+6];
        RadioGroup3.Items.Add(VarToStr(Xmlvariant.Attributes['text']));
        RadioGroup3.Buttons[0].Checked :=True;
        RadioGroup3.Buttons[j].WordWrap := True
        end;
    end;

 end;
 end;
end;
Id_vopros:=0;
end;


procedure Key_4;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
i,j,g,bal,max:integer;
bals: Array [1..18] of Integer;
relation: Array [1..6] of Real;
ch:Integer;
begin
for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\14.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   ch:=StrToInt(VarToStr(XmLquestion.Attributes['character']));
  case ch of
   1:begin
   for j:=0 to 2 do
   begin

      case Select[i-1,j] of
        1: bals[j+1]:=bals[j+1] + 2;
        2: bals[j+1]:=bals[j+1] + 1;
        3: bals[j+1]:=bals[j+1] + 0;
      end;
    end;
  
   end;
   2:begin
    for j:=0 to 2 do
    begin
       case Select[i-1,j] of
        1: bals[j+4]:=bals[j+4] + 2;
        2: bals[j+4]:=bals[j+4] + 1;
        3: bals[j+4]:=bals[j+4] + 0;
      end;
    end;

   end;
   3:begin
    for j:=0 to 2 do
    begin

      case Select[i-1,j] of
        1: bals[j+7]:=bals[j+7] + 2;
        2: bals[j+7]:=bals[j+7] + 1;
        3: bals[j+7]:=bals[j+7] + 0;
      end;
    end;

   end;
   4:begin
    for j:=0 to 2 do
    begin

      case Select[i-1,j] of
        1: bals[j+10]:=bals[j+10] + 2;
        2: bals[j+10]:=bals[j+10] + 1;
        3: bals[j+10]:=bals[j+10] + 0;
      end;
    end;

   end;
   5:begin
    for j:=0 to 2 do
    begin

      case Select[i-1,j] of
        1: bals[j+13]:=bals[j+13] + 2;
        2: bals[j+13]:=bals[j+13] + 1;
        3: bals[j+13]:=bals[j+13] + 0;
      end;
    end;

   end;
   6:begin
    for j:=0 to 2 do
    begin

      case Select[i-1,j] of
        1: bals[j+16]:=bals[j+16] + 2;
        2: bals[j+16]:=bals[j+16] + 1;
        3: bals[j+16]:=bals[j+16] + 0;
      end;
    end;

   end;
   end;
end;
  relation[1]:=bals[1]/(bals[2]+bals[3]);
  relation[2]:=bals[4]/(bals[5]+bals[6]);
  relation[3]:=bals[7]/(bals[8]+bals[9]);
  relation[4]:=bals[10]/(bals[11]+bals[12]);
  relation[5]:=bals[13]/(bals[14]+bals[15]);
  relation[6]:=bals[16]/(bals[17]+bals[18]);
 max:=1;
  for g:=1 to 6 do
    begin
      if relation[max]<relation[g] then
        begin
          max:= g;
        end;
     end;
 Form66.Memo1.Clear;
   case max of
    1:Form66.Memo1.Lines.Add('Предпочтение к профессиям типа: Человек - знаковая система. ');
    2:Form66.Memo1.Lines.Add('Предпочтение к профессиям типа: Человек - техника. ');
    3:Form66.Memo1.Lines.Add('Предпочтение к профессиям типа: Человек - природа. ');
    4:Form66.Memo1.Lines.Add('Предпочтение к профессиям типа: Человек - художественный образ. ');
    5:Form66.Memo1.Lines.Add('Предпочтение к профессиям типа: Человек - человек. ');
    6:Form66.Memo1.Lines.Add('Предпочтение к профессиям типа: Человек - бизнес. ');
  end;
     myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
Form66.ShowModal;

end;


procedure TForm65.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form49.Show;
end;

procedure TForm65.Button1Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
i,j,N: integer;
begin
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
    3:begin
id_vopros:=id_vopros+1;

Select[id_vopros-1,0]:=radiogroup1.ItemIndex+1;
Select[id_vopros-1,1]:=radiogroup2.ItemIndex+1;
Select[id_vopros-1,2]:=radiogroup3.ItemIndex+1;
If id_vopros<countquest then
  begin
      Form65.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
     end
else
  begin
    Application.MessageBox('Вы прошли тест','Тестирование окончено');
    Case Form49.N_glava of
      0:begin
        Case Form49.N_metod of
          3:Key_4;
        end;
      end;
     end;
    end;
    
  end;
  end;
end;
end;
end;

procedure TForm65.Button2Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
i,j: integer;
begin
  Case Form49.N_glava of
  0:begin
    Case Form49.N_metod of
    3:begin
Id_vopros:=Id_vopros-1;

If id_vopros<1 then id_vopros:=0;
      Form65.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
     end;
 end;
end;
end;
end;

procedure TForm65.N1Click(Sender: TObject);
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
    3:begin
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
end;
Form67.ShowModal;
end;

end.
