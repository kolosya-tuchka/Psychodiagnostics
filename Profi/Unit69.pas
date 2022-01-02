unit Unit69;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, XMLDoc, ExtCtrls, Menus;

type
  TForm69 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label5: TLabel;
    RadioGroup3: TRadioGroup;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Id_vopros:integer;
  end;

var
  Form69: TForm69;
  countquest:integer;

  Select: Array of Array of integer;

implementation

uses Unit49, Unit35, Unit66;

{$R *.dfm}


procedure TForm69.FormShow(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,nomer,message: integer;
begin
  Case Form49.N_glava of
  0:begin
    Case Form49.N_metod of
    7:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      countquest := XmLquestions.ChildNodes.Count;
      SetLength(Select,countquest,3);
      Form69.Caption:= 'Вопрос 1 из ' + IntToStr(countquest);
      XmLquestion :=XmLquestions.ChildNodes[0];
      Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Label3.Caption:=VarToStr(Xmlvariant.Attributes['text']);
      XmLvariant :=Xmlvariants.ChildNodes[1];
      Label4.Caption:=VarToStr(Xmlvariant.Attributes['text']);
      XmLvariant :=Xmlvariants.ChildNodes[2];
      Label5.Caption:=VarToStr(Xmlvariant.Attributes['text']);
    end;

 end;
 end;
end;
Id_vopros:=0;
end;

procedure Key_8;
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
myDate:string;
i,j,g,bal,min, min_2:integer;
bals: Array [1..7] of Integer;
ch:Integer;
begin
for i:=1 to countquest do
  begin
   MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\18.xml');
   MyModule.XMLDocument1.Active := true;
   XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
   XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
   XmLquestion :=XmLquestions.ChildNodes[i-1];
   XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
   for j:=0 to 2 do
    begin
    XmLvariant :=Xmlvariants.ChildNodes[j];
    ch:=StrToInt(VarToStr(XmLvariant.Attributes['character']));

  case ch of
   1:begin
      case Select[i-1,j] of
        1: bals[1]:=bals[1] + 1;
        2: bals[1]:=bals[1] + 2;
        3: bals[1]:=bals[1] + 3;
      end;
   end;
   2:begin
      case Select[i-1,j] of
        1: bals[2]:=bals[2] + 1;
        2: bals[2]:=bals[2] + 2;
        3: bals[2]:=bals[2] + 3;
      end;
    end;
    3:begin
       case Select[i-1,j] of
        1: bals[3]:=bals[3] + 1;
        2: bals[3]:=bals[3] + 2;
        3: bals[3]:=bals[3] + 3;
      end;
    end;
   4:begin
      case Select[i-1,j] of
        1: bals[4]:=bals[4] + 1;
        2: bals[4]:=bals[4] + 2;
        3: bals[4]:=bals[4] + 3;
      end;
    end;
   5:begin
      case Select[i-1,j] of
        1: bals[5]:=bals[5] + 1;
        2: bals[5]:=bals[5] + 2;
        3: bals[5]:=bals[5] + 3;
      end;
    end;
   6:begin
      case Select[i-1,j] of
        1: bals[6]:=bals[6] + 1;
        2: bals[6]:=bals[6] + 2;
        3: bals[6]:=bals[6] + 3;
      end;
    end;
    7:begin
      case Select[i-1,j] of
        1: bals[7]:=bals[7] + 1;
        2: bals[7]:=bals[7] + 2;
        3: bals[7]:=bals[7] + 3;
      end;
    end;
   end;
end;
end;
 min:=1;
  for g:=1 to 7 do
    begin
      if bals[min]>bals[g] then
        begin
          min:= g;
        end;
    end;
 min_2:=0;
  for g:=1 to 7 do
    begin
      if bals[min]>bals[g] then
        begin
          min_2:= g;
        end;
    end;
 Form66.Memo1.Clear;
   case min of
    1:begin
      Form66.Memo1.Lines.Add('Тип личности: Артистичный и интеллектуальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: актер/актриса, библиотекарь,журналист, историк, корректор, литературный критик, переводчик-синхронист, писатель, преподаватель иностранного языка, редактор. ');
    end;
    2:begin
      Form66.Memo1.Lines.Add('Тип личности: Артистичный и предприимчивый');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: дизайнер, декоратор, музыкант, сценарист, режиссер, композитор, архитектор, инженер-проектировщик, искусствовед, культуролог, преподаватель драматического искусства, фотограф, фоторепортер, художник, художник-оформитель. ');
    end;
    3:begin
      Form66.Memo1.Lines.Add('Тип личности: Реалистичный и конвенциальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности:  наладчик, водитель, сталевар, токарь, слесарь-механик, шахтер, механик, кузнец, гончар, электрик, рихтовщик, бурильщик, телемастер, штамповщик, спортсмен, мастер по ремонту и отделке помещений, слесарь-ремонтник. ');
    end;
    4:begin
      Form66.Memo1.Lines.Add('Тип личности: Интеллектуальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: астроном, бактериолог, математик, судебный эксперт, техник-лаборант, физик, химик, археолог, программист, статистик, генетик, историк, метеоролог, инженер-испытатель, микробиолог, эргономист. ');
    end;
    5:begin
      Form66.Memo1.Lines.Add('Тип личности: Предприимчивый и конвенциальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: администратор, аудитор, банковский клерк, бухгалтер, казначей, кассир, клерк, налоговый инспектор, специалист по ценным бумагам, судебный исполнитель, оценщик, товаровед, руководитель, логистик, сметчик. ');
    end;
    6:begin
      Form66.Memo1.Lines.Add('Предприимчивый и социальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: продавец, специалист по рекламе, директор, бизнес-консультант, брокер, консультант по вопросам управления, менеджер розничной торговли, начальник отдела кадров, политик. ');
    end;
    7:begin
      Form66.Memo1.Lines.Add('Социальный и предприимчивый');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: врач, дефектолог, директор туристической базы,  работник службы социального обеспечения, сотрудник осуществляющий надзор за условно осужденными, педагог, психолог, социальный педагог. ');
    end;
  end;
 if min_2 <> 0 then
  begin
    case min_2 of
    1:begin
      Form66.Memo1.Lines.Add('Тип личности: Артистичный и интеллектуальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: актер/актриса, библиотекарь,журналист, историк, корректор, литературный критик, переводчик-синхронист, писатель, преподаватель иностранного языка, редактор. ');
    end;
    2:begin
      Form66.Memo1.Lines.Add('Тип личности: Артистичный и предприимчивый');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: дизайнер, декоратор, музыкант, сценарист, режиссер, композитор, архитектор, инженер-проектировщик, искусствовед, культуролог, преподаватель драматического искусства, фотограф, фоторепортер, художник, художник-оформитель. ');
    end;
    3:begin
      Form66.Memo1.Lines.Add('Тип личности: Реалистичный и конвенциальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности:  наладчик, водитель, сталевар, токарь, слесарь-механик, шахтер, механик, кузнец, гончар, электрик, рихтовщик, бурильщик, телемастер, штамповщик, спортсмен, мастер по ремонту и отделке помещений, слесарь-ремонтник. ');
    end;
    4:begin
      Form66.Memo1.Lines.Add('Тип личности: Интеллектуальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: астроном, бактериолог, математик, судебный эксперт, техник-лаборант, физик, химик, археолог, программист, статистик, генетик, историк, метеоролог, инженер-испытатель, микробиолог, эргономист. ');
    end;
    5:begin
      Form66.Memo1.Lines.Add('Тип личности: Предприимчивый и конвенциальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: администратор, аудитор, банковский клерк, бухгалтер, казначей, кассир, клерк, налоговый инспектор, специалист по ценным бумагам, судебный исполнитель, оценщик, товаровед, руководитель, логистик, сметчик. ');
    end;
    6:begin
      Form66.Memo1.Lines.Add('Предприимчивый и социальный');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: продавец, специалист по рекламе, директор, бизнес-консультант, брокер, консультант по вопросам управления, менеджер розничной торговли, начальник отдела кадров, политик. ');
    end;
    7:begin
      Form66.Memo1.Lines.Add('Социальный и предприимчивый');
      Form66.Memo1.Lines.Add('Рекомендуемые сферы деятельности: врач, дефектолог, директор туристической базы,  работник службы социального обеспечения, сотрудник осуществляющий надзор за условно осужденными, педагог, психолог, социальный педагог. ');
    end;
  end;
 end;
    myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
    Form66.Label2.Caption:=myDate;
    Form66.Memo1.Visible:=True;
Form66.ShowModal;
end;
procedure TForm69.RadioGroup2Click(Sender: TObject);
begin
case RadioGroup2.ItemIndex of
  0:begin
    RadioGroup1.Buttons[0].Enabled:=False;
    RadioGroup3.Buttons[0].Enabled:=False;
    RadioGroup2.Buttons[0].Enabled:=False;
    RadioGroup2.Buttons[2].Enabled:=False;
    RadioGroup2.Buttons[1].Enabled:=False;
    {RadioGroup1.Buttons[1].Enabled:=True;
    RadioGroup3.Buttons[1].Enabled:=True;
    RadioGroup1.Buttons[2].Enabled:=True;
    RadioGroup3.Buttons[2].Enabled:=True; }
  end;
  1:begin
    RadioGroup1.Buttons[1].Enabled:=False;
    RadioGroup3.Buttons[1].Enabled:=False;
    RadioGroup2.Buttons[1].Enabled:=False;
    RadioGroup2.Buttons[2].Enabled:=False;
    RadioGroup2.Buttons[0].Enabled:=False;
    {RadioGroup1.Buttons[0].Enabled:=True;
    RadioGroup3.Buttons[0].Enabled:=True;
    RadioGroup1.Buttons[2].Enabled:=True;
    RadioGroup3.Buttons[2].Enabled:=True; }
  end;
  2:begin
    RadioGroup1.Buttons[2].Enabled:=False;
    RadioGroup3.Buttons[2].Enabled:=False;
    RadioGroup2.Buttons[2].Enabled:=False;
    RadioGroup2.Buttons[0].Enabled:=False;
    RadioGroup2.Buttons[1].Enabled:=False;
    {RadioGroup1.Buttons[1].Enabled:=True;
    RadioGroup3.Buttons[1].Enabled:=True;
    RadioGroup1.Buttons[0].Enabled:=True;
    RadioGroup3.Buttons[0].Enabled:=True; }
  end;
 end;
end;


procedure TForm69.Button1Click(Sender: TObject);
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
    7:begin
  id_vopros:=id_vopros+1;
  Select[id_vopros-1,0]:=radiogroup1.ItemIndex+1;
  Select[id_vopros-1,1]:=radiogroup2.ItemIndex+1;
  Select[id_vopros-1,2]:=radiogroup3.ItemIndex+1;
If id_vopros<countquest then
  begin
      Form69.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) + '.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
      XmLquestion :=XmLquestions.ChildNodes[id_vopros];
      XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
      XmLvariant :=Xmlvariants.ChildNodes[0];
      Label3.Caption:=VarToStr(Xmlvariant.Attributes['text']);
      XmLvariant :=Xmlvariants.ChildNodes[1];
      Label4.Caption:=VarToStr(Xmlvariant.Attributes['text']);
      XmLvariant :=Xmlvariants.ChildNodes[2];
      Label5.Caption:=VarToStr(Xmlvariant.Attributes['text']);
      RadioGroup1.Buttons[0].Enabled:=True;
RadioGroup1.Buttons[1].Enabled:=True;
RadioGroup1.Buttons[2].Enabled:=True;

RadioGroup2.Buttons[0].Enabled:=True;
RadioGroup2.Buttons[1].Enabled:=True;
RadioGroup2.Buttons[2].Enabled:=True;

RadioGroup3.Buttons[0].Enabled:=True;
RadioGroup3.Buttons[1].Enabled:=True;
RadioGroup3.Buttons[2].Enabled:=True;

  end
else
  begin
    Application.MessageBox('Вы прошли тест','Тестирование окончено');
    Case Form49.N_glava of
      0:begin
        Case Form49.N_metod of
          7:Key_8;
        end;
      end;
     end;
    end;
    
  end;
  end;
end;
end;
end;

procedure TForm69.Button2Click(Sender: TObject);
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
    7:begin
Id_vopros:=Id_vopros-1;
If id_vopros<1 then id_vopros:=0;
      Form69.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
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
      XmLvariant :=Xmlvariants.ChildNodes[2];
      Label5.Caption:=VarToStr(Xmlvariant.Attributes['text']);
 end;
 end;
end;
end;
end;

procedure TForm69.RadioGroup1Click(Sender: TObject);
begin
case RadioGroup1.ItemIndex of
  0:begin
    RadioGroup2.Buttons[0].Enabled:=False;
    RadioGroup3.Buttons[0].Enabled:=False;
    RadioGroup1.Buttons[0].Enabled:=False;
    RadioGroup1.Buttons[2].Enabled:=False;
    RadioGroup1.Buttons[1].Enabled:=False;
   { RadioGroup2.Buttons[1].Enabled:=True;
    RadioGroup3.Buttons[1].Enabled:=True;
    RadioGroup2.Buttons[2].Enabled:=True;
    RadioGroup3.Buttons[2].Enabled:=True;}
  end;
  1:begin
    RadioGroup2.Buttons[1].Enabled:=False;
    RadioGroup3.Buttons[1].Enabled:=False;
    RadioGroup1.Buttons[1].Enabled:=False;
    RadioGroup1.Buttons[0].Enabled:=False;
    RadioGroup1.Buttons[2].Enabled:=False;
   { RadioGroup2.Buttons[0].Enabled:=True;
    RadioGroup3.Buttons[0].Enabled:=True;
    RadioGroup2.Buttons[2].Enabled:=True;
    RadioGroup3.Buttons[2].Enabled:=True; }
  end;
  2:begin
    RadioGroup2.Buttons[2].Enabled:=False;
    RadioGroup3.Buttons[2].Enabled:=False;
    RadioGroup1.Buttons[2].Enabled:=False;
    RadioGroup1.Buttons[0].Enabled:=False;
    RadioGroup1.Buttons[1].Enabled:=False;
    {RadioGroup2.Buttons[1].Enabled:=True;
    RadioGroup3.Buttons[1].Enabled:=True;
    RadioGroup2.Buttons[0].Enabled:=True;
    RadioGroup3.Buttons[0].Enabled:=True; }
  end;
 end;
end;

procedure TForm69.RadioGroup3Click(Sender: TObject);
begin
case RadioGroup3.ItemIndex of
  0:begin
    RadioGroup2.Buttons[0].Enabled:=False;
    RadioGroup1.Buttons[0].Enabled:=False;
    RadioGroup3.Buttons[0].Enabled:=False;
    RadioGroup3.Buttons[2].Enabled:=False;
    RadioGroup3.Buttons[1].Enabled:=False;
    {RadioGroup2.Buttons[1].Enabled:=True;
    RadioGroup1.Buttons[1].Enabled:=True;
    RadioGroup2.Buttons[2].Enabled:=True;
    RadioGroup1.Buttons[2].Enabled:=True;}
  end;
  1:begin
    RadioGroup2.Buttons[1].Enabled:=False;
    RadioGroup1.Buttons[1].Enabled:=False;
    RadioGroup3.Buttons[1].Enabled:=False;
    RadioGroup3.Buttons[0].Enabled:=False;
    RadioGroup3.Buttons[2].Enabled:=False;
    {RadioGroup2.Buttons[0].Enabled:=True;
    RadioGroup1.Buttons[0].Enabled:=True;
    RadioGroup2.Buttons[2].Enabled:=True;
    RadioGroup1.Buttons[2].Enabled:=True; }
  end;
  2:begin
    RadioGroup2.Buttons[2].Enabled:=False;
    RadioGroup1.Buttons[2].Enabled:=False;
    RadioGroup3.Buttons[0].Enabled:=False;
    RadioGroup3.Buttons[1].Enabled:=False;
    {RadioGroup2.Buttons[1].Enabled:=True;
    RadioGroup1.Buttons[1].Enabled:=True;
    RadioGroup2.Buttons[0].Enabled:=True;
    RadioGroup1.Buttons[0].Enabled:=True; }
  end;
 end;
end;
procedure TForm69.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form49.Show;
end;

procedure TForm69.Button3Click(Sender: TObject);
begin
RadioGroup1.Buttons[0].Enabled:=True;
RadioGroup1.Buttons[1].Enabled:=True;
RadioGroup1.Buttons[2].Enabled:=True;

RadioGroup2.Buttons[0].Enabled:=True;
RadioGroup2.Buttons[1].Enabled:=True;
RadioGroup2.Buttons[2].Enabled:=True;

RadioGroup3.Buttons[0].Enabled:=True;
RadioGroup3.Buttons[1].Enabled:=True;
RadioGroup3.Buttons[2].Enabled:=True;
end;

end.
