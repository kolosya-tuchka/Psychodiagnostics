unit Unit68;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, XMLDoc, ExtCtrls, Menus;

type
  TForm68 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    Id_vopros:integer;
    { Public declarations }
  end;

var
  Form68: TForm68;
   countquest:integer;
   Select: Array of Array of integer;
   Balls_5: Array[1..6] of Integer;
implementation

uses Unit35, Unit51, Unit67, Unit8, Unit66, Unit49;

{$R *.dfm}

procedure TForm68.FormShow(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,nomer,message: integer;
begin
Button1.Enabled:=False;
for i:=0 to 3 do
    begin
      RadioGroup2.Buttons[i].Enabled:=False;
    end;
  Case Form49.N_glava of
  0:begin
    Case Form49.N_metod of
    4:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      countquest := XmLquestions.ChildNodes.Count;
      SetLength(Select,countquest,2);
      Form68.Caption:= 'Вопрос 1 из ' + IntToStr(countquest);
      //ssage := 0;
      XmLquestion :=XmLquestions.ChildNodes[0];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
        XmLvariant :=Xmlvariants.ChildNodes[0];
        Label3.Caption:=VarToStr(Xmlvariant.Attributes['text']);
        XmLvariant :=Xmlvariants.ChildNodes[1];
        Label4.Caption:=VarToStr(Xmlvariant.Attributes['text']);
    end;

 end;
 end;
end;
Id_vopros:=0;
end;

procedure Key_5;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
ch,i,j:integer;
begin
  for i:=1 to countquest do
  begin
  Form66.Memo1.Clear;
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\15.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
   for j:=0 to 1 do
   begin
   XmLvariant :=Xmlvariants.ChildNodes[j];
   ch:=StrToInt(VarToStr(Xmlvariant.Attributes['character'])); 
   case ch of
   1:begin
    balls_5[1]:=balls_5[1] + Select[i-1,j];
    Form51.Label1.Visible:=True;
   end;
   2:begin
    balls_5[2]:=balls_5[2] + Select[i-1,j];
    Form51.Label2.Visible:=True;
   end;
   3:begin
    balls_5[3]:=balls_5[3] + Select[i-1,j];
    Form51.Label3.Visible:=True;
   end;
   4:begin
    balls_5[4]:=balls_5[4] + Select[i-1,j];
    Form51.Label4.Visible:=True;
   end;
   5:begin
    balls_5[5]:=balls_5[5] + Select[i-1,j];
    Form51.Label5.Visible:=True;
   end;
   6:begin
    balls_5[6]:=balls_5[6] + Select[i-1,j];
    Form51.Label6.Visible:=True;
   end;
   end;
   end;
  end;
    if Form8.pol=0 then
    begin
  case balls_5[1] of
    0..12:  Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-низкий. ');
    13:     Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-ниже среднего. ');
    14..16: Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-средний. ');
    17:     Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-выше среднего. ');
    18..30: Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-высокий. ');
    end;
  case balls_5[2] of
    0..12:  Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-низкий. ');
    13..14: Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-ниже среднего. ');
    15:     Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-средний. ');
    16..17: Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-выше среднего. ');
    18..30: Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-высокий. ');
    end;
  case balls_5[3] of
    0..17:  Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-низкий. ');
    18..19: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-ниже среднего. ');
    20..21: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-средний. ');
    22..23: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-выше среднего. ');
    24..30: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-высокий. ');
    end;
  case balls_5[4] of
    0..9:   Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-низкий. ');
    10..11: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-ниже среднего. ');
    12..13: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-средний. ');
    14..16: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-выше среднего. ');
    17..30: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-высокий. ');
    end;
   case balls_5[5] of
    0..13:  Form66.Memo1.Lines.Add('Склонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-низкий. ');
    14..16: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-ниже среднего. ');
    17..18: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-средний. ');
    19..20: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-выше среднего. ');
    21..30: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-высокий. ');
    end;
   case balls_5[6] of
    0..8:   Form66.Memo1.Lines.Add('Склонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-низкий. ');
    9..10: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-ниже среднего. ');
    11..12: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-средний. ');
    13..14: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-выше среднего. ');
    15..30: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-высокий. ');
    end;
   end
  else
    begin
    case balls_5[1] of
    0..14:  Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-низкий. ');
    15:     Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-ниже среднего. ');
    16..17: Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-средний. ');
    18:     Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-выше среднего. ');
    19..30: Form66.Memo1.Lines.Add('Cклонность к работе с людьми: ' + 'Уровень выраженности качества-высокий. ');
    end;
  case balls_5[2] of
    0..11:  Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-низкий. ');
    12:     Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-ниже среднего. ');
    13..14: Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-средний. ');
    15..17: Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-выше среднего. ');
    18..30: Form66.Memo1.Lines.Add('Cклонность к умственным видам работ: ' + 'Уровень выраженности качества-высокий. ');
    end;
  case balls_5[3] of
    0..10:  Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-низкий. ');
    11..12: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-ниже среднего. ');
    13..14: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-средний. ');
    15..17: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-выше среднего. ');
    18..30: Form66.Memo1.Lines.Add('Cклонность к работе на производстве: ' + 'Уровень выраженности качества-высокий. ');
    end;
  case balls_5[4] of
    0..15:  Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-низкий. ');
    17..17: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-ниже среднего. ');
    18..19: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-средний. ');
    20..21: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-выше среднего. ');
    22..30: Form66.Memo1.Lines.Add('Cклонность к эстетике и искусству: ' + 'Уровень выраженности качества-высокий. ');
    end;
   case balls_5[5] of
    0..14:  Form66.Memo1.Lines.Add('Склонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-низкий. ');
    15..16: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-ниже среднего. ');
    17..18: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-средний. ');
    19..20: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-выше среднего. ');
    21..30: Form66.Memo1.Lines.Add('Cклонность к подвижным видам деятельности: ' + 'Уровень выраженности качества-высокий. ');
    end;
   case balls_5[6] of
    0..9:   Form66.Memo1.Lines.Add('Склонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-низкий. ');
    10..11: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-ниже среднего. ');
    12..13: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-средний. ');
    14..15: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-выше среднего. ');
    16..30: Form66.Memo1.Lines.Add('Cклонность к планово-экономическим видам работ: ' + 'Уровень выраженности качества-высокий. ');
    end;


    end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
    Form66.ShowModal;
//end;
end;




procedure TForm68.Button1Click(Sender: TObject);
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
    4:begin
id_vopros:=id_vopros+1;
Select[id_vopros-1,0]:=radiogroup1.ItemIndex;
Select[id_vopros-1,1]:=radiogroup2.ItemIndex;
If id_vopros<countquest then
  begin
    Form68.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Label3.Caption:=VarToStr(Xmlvariant.Attributes['text']);
      XmLvariant :=Xmlvariants.ChildNodes[1];
      Label4.Caption:=VarToStr(Xmlvariant.Attributes['text']);
  end
else
  begin
    Application.MessageBox('Вы прошли тест','Тестирование окончено');
    Case Form49.N_glava of
      0:begin
        Case Form49.N_metod of
          4:Key_5;
        end;
      end;
     end;
    end;
    
  end;
  end;
end;
end;
end;
procedure TForm68.Button2Click(Sender: TObject);
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
    4:begin
Id_vopros:=Id_vopros-1;
If id_vopros<1 then id_vopros:=0;
      Form68.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Label3.Caption:=VarToStr(Xmlvariant.Attributes['text']);
      XmLvariant :=Xmlvariants.ChildNodes[1];
      Label4.Caption:=VarToStr(Xmlvariant.Attributes['text']);
 end;
 end;
end;
end;
end;

procedure TForm68.RadioGroup1Click(Sender: TObject);
var i:integer;
begin
  for i:=0 to 3 do
    begin
      RadioGroup2.Buttons[i].Enabled:=False;
    end;
  case RadioGroup1.ItemIndex of
    0:begin
      RadioGroup2.Buttons[3].Enabled:=True;
      RadioGroup2.Buttons[3].Checked:=True;
    end;
    1:begin
      RadioGroup2.Buttons[2].Enabled:=True;
      RadioGroup2.Buttons[2].Checked:=True;
    end;
    2:begin
      RadioGroup2.Buttons[1].Enabled:=True;
      RadioGroup2.Buttons[1].Checked:=True;
    end;
    3:begin
      RadioGroup2.Buttons[0].Enabled:=True;
      RadioGroup2.Buttons[0].Checked:=True;
    end;
   end;
Button1.Enabled:=True;
end;

procedure TForm68.N1Click(Sender: TObject);
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
    4:begin
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


procedure TForm68.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form49.Show;
end;

end.
