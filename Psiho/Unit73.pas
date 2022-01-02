unit Unit73;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, XMLDoc, ExtCtrls, Menus;
type
  TForm73 = class(TForm)
    MainMenu1: TMainMenu;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);



  private
    { Private declarations }
  public
  Id_vopros:integer;
    { Public declarations }
  end;

var
  Form73: TForm73;
   countquest:integer;
   Select: Array of Array of integer;
 //  Balls_5: Array[1..6] of Integer;

implementation

{$R *.dfm}

uses Unit71, Unit35;





procedure TForm73.Button1Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLquestions: IXMLNode;
XmLquestion: IXMLNode;
XmLvariants: IXMLNode;
XmLvariant: IXMLNode;
i,j,N: integer;
begin
Case Form71.N_glava of
  0:begin
  Case Form71.N_metod of
  4,5:begin
id_vopros:=id_vopros+1;
Select[id_vopros-1,0]:=radiogroup1.ItemIndex;
Select[id_vopros-1,1]:=radiogroup2.ItemIndex;
If id_vopros<countquest then
  begin
    Form73.Caption:= 'Вопрос ' + IntTostr(id_vopros+1) + ' из ' + IntToStr(countquest);
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\1' + inttostr(Form71.N_metod+1) + '.xml');
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
    {Case Form71.N_glava of
      0:begin
        Case Form71.N_metod of
          //4:Key_5;
        end;
      end;    }
     end;
    end;

  end;
  end;
end;








end;



end.
