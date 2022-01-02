unit Unit51;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, XMLDoc, ExtCtrls, StdCtrls, System.Win.ComObj,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  VclTee.TeeGDIPlus;

type
  TForm51 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
     Memo1: TMemo;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Chart1: TChart;
    Series1: TBarSeries;
    Button2: TButton;
    Label10: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);

    procedure Label10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
  Word: variant;
    { Public declarations }
  end;

var
  Form51: TForm51;

implementation

uses Unit35, Unit8, Unit50, Unit49;

{$R *.dfm}

procedure TForm51.Label1Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
  end;
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
    0:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[0];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  2:begin
  try
  Word := CreateOleObject('Word.Application');
  Word.Documents.Open(ExtractFilePath(Application.ExeName) + 'Profi\test\13_1.doc');
  except
  ShowMessage('Не удалось запустить Microsoft Word');
  end;
  Word.Visible := True;
  end;
  end;
  end;
  1:begin
  Case Form49.N_metod of
    1,2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[0];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  3:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      if label1.Caption='Доминирующая характеристика: Общительность' then
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[1];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end
      else
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[0];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end;
    end;
  end;
  end;
  2:begin
  Case Form49.N_metod of
    0:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[0];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
    end;
  end;
end;
end;

procedure TForm51.Label2Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
   end;
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
    0:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[1];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  2:begin
  try
  Word := CreateOleObject('Word.Application');
  Word.Documents.Open(ExtractFilePath(Application.ExeName) + 'Profi\test\13_2.doc');
  except
  ShowMessage('Не удалось запустить Microsoft Word');
  end;
  Word.Visible := True;
  end;
  end;
  end;
  1:begin
  Case Form49.N_metod of
    1,2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[1];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  3:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      if label3.Caption='Доминирующая характеристика: Пассивность' then
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[3];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end
      else
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[0];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end;
    end;
  end;
  end;
   2:begin
  Case Form49.N_metod of
    0,1:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[1];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      if Form49.N_metod=1 then
      begin
       Memo1.Visible:=True;
       Chart1.Visible:=False;
       Button2.Visible:=true;
      end;
    end;
    end;
  end;
end;
end;
procedure TForm51.Label3Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
   end;
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
    0:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[2];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  2:begin
  try
  Word := CreateOleObject('Word.Application');
  Word.Documents.Open(ExtractFilePath(Application.ExeName) + 'Profi\test\13_3.doc');
  except
  ShowMessage('Не удалось запустить Microsoft Word');
  end;
  Word.Visible := True;
  end;
  end;
  end;
  1:begin
  Case Form49.N_metod of
    1,2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[2];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
    3:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');

      if label3.Caption='Доминирующая характеристика: Ориентация на факты' then
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[5];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end
      else
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[4];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end;
    end;
  end;
  end;
   2:begin
  Case Form49.N_metod of
    0,1:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[1];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      if Form49.N_metod=1 then
      begin
       Memo1.Visible:=True;
       Chart1.Visible:=False;
       Button2.Visible:=true;
      end;
    end;
    end;
  end;
end;
end;

procedure TForm51.Label4Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
   end;
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
    0:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\1' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[3];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  2:begin
  try
  Word := CreateOleObject('Word.Application');
  Word.Documents.Open(ExtractFilePath(Application.ExeName) + 'Profi\test\13_4.doc');
  except
  ShowMessage('Не удалось запустить Microsoft Word');
  end;
  Word.Visible := True;
  end;
  end;
  end;
  1:begin
  Case Form49.N_metod of
    1,2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[3];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
    3:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');

      if label4.Caption='Доминирующая характеристика: Осмотрительность' then
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[7];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end
      else
      begin
      XMlcharacter:=XmLcharacters.ChildNodes[6];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      end;
    end;
  end;
  end;
   2:begin
  Case Form49.N_metod of
    0,1:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[2];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
     if Form49.N_metod=1 then
      begin
       Memo1.Visible:=True;
       Chart1.Visible:=False;
       Button2.Visible:=true;
      end;
    end;
    end;
  end;
end;
end;

procedure TForm51.Label5Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
   end;
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
   2:begin
  try
  Word := CreateOleObject('Word.Application');
  Word.Documents.Open(ExtractFilePath(Application.ExeName) + 'Profi\test\13_5.doc');
  except
  ShowMessage('Не удалось запустить Microsoft Word');
  end;
  Word.Visible := True;
  end;
  end;
  end;
  1:begin
  Case Form49.N_metod of
    1,2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[4];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  end;
  end;
   2:begin
  Case Form49.N_metod of
    0,1:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[3];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      if Form49.N_metod=1 then
      begin
       Memo1.Visible:=True;
       Chart1.Visible:=False;
       Button2.Visible:=true;
      end;
    end;
    end;
  end;
end;
end;

procedure TForm51.Label6Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
   end;
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
   2:begin
  try
  Word := CreateOleObject('Word.Application');
  Word.Documents.Open(ExtractFilePath(Application.ExeName) + 'Profi\test\13_6.doc');
  except
  ShowMessage('Не удалось запустить Microsoft Word');
  end;
  Word.Visible := True;
  end;
  end;
  end;
  1:begin
  Case Form49.N_metod of
    2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[5];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  end;
  end;
  2:begin
  Case Form49.N_metod of
    1:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[4];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      if Form49.N_metod=1 then
      begin
       Memo1.Visible:=True;
       Chart1.Visible:=False;
       Button2.Visible:=true;
      end;
    end;
    end;
  end;
end;
end;

procedure TForm51.Label9Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
   end;
Case Form49.N_glava of
  1:begin
  Case Form49.N_metod of
    2:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\2' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[6];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
    end;
  end;
 end;
 2:begin
  Case Form49.N_metod of
    1:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[5];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      if Form49.N_metod=1 then
      begin
       Memo1.Visible:=True;
       Chart1.Visible:=False;
       Button2.Visible:=true;
      end;
    end;
    end;
  end;
end;
end;


procedure TForm51.Label10Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLcharacters: IXMLNode;
XmLcharacter: IXMLNode;
XmLvariant: IXMLNode;
begin
if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(Form49.N_glava+1) + inttostr(Form49.N_metod+1) + '_character.xml')
  then
  begin
  Application.MessageBox('В данный момент пояснение не доступно. Обратитесь к администратору','Внимание');
   exit;
   end;
Case Form49.N_glava of
  2:begin
  Case Form49.N_metod of
    1:begin
      MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Profi\test\3' + inttostr(Form49.N_metod+1) +  '_character.xml');
      MyModule.XMLDocument1.Active := true;
      XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
      XmLcharacters := XmlRoot.ChildNodes.FindNode('characters');
      XMlcharacter:=XmLcharacters.ChildNodes[6];
      Memo1.Clear;
      Memo1.Lines.Add(VarToStr(XmLcharacter.Attributes['name']));
      XmLvariant:=XmLcharacter.ChildNodes[0];
      Memo1.Lines.Add(VarToStr(XmLvariant.Attributes['text']));
      if Form49.N_metod=1 then
      begin
       Memo1.Visible:=True;
       Chart1.Visible:=False;
       Button2.Visible:=true;
      end;
    end;
    end;
  end;
end;
end;

procedure TForm51.Button1Click(Sender: TObject);
begin
Form51.Close;
end;

procedure TForm51.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
e:Tlabel;
squery:string;
begin
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
    0:begin
       MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=11';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='11';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label1.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

         for i:=2 to 4 do
         begin
            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='11' + inttostr(i-1);
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
            MyModule.ADOQuery1.FieldByName('Results').AsString:=' ' + e.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
         end;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label1.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=11';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
        for i:=2 to 4 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(' ' + e.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=11' + inttostr(i-1);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;
    end;
  end;
 1:begin
  MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=12';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='12';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label2.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label2.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=12';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;

  2:begin
       MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=13';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='13';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label1.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

         for i:=2 to 6 do
         begin
            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='13' + inttostr(i-1);
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
            MyModule.ADOQuery1.FieldByName('Results').AsString:=e.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
         end;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label1.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=13';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
        for i:=2 to 6 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(e.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=13' + inttostr(i-1);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;
    end;
  end;

 end;
 end;
 1:begin
     Case Form49.N_metod of
     1:begin
       MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=22';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='22';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label1.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

         for i:=2 to 5 do
         begin
            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='22' + inttostr(i-1);
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
            MyModule.ADOQuery1.FieldByName('Results').AsString:=e.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
         end;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label1.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=22';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
        for i:=2 to 5 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(e.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=22' + inttostr(i-1);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;
    end;
    end;
    2:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=23';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='23';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label1.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

         for i:=2 to 6 do
         begin
            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='23' + inttostr(i-1);
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
            MyModule.ADOQuery1.FieldByName('Results').AsString:=e.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
         end;

            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='236';
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            MyModule.ADOQuery1.FieldByName('Results').AsString:=Label9.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label1.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=23';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
        for i:=2 to 6 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(e.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=23' + inttostr(i-1);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Label9.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=236';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
    end;
    end;
    3:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=24';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='24';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label1.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

         for i:=2 to 4 do
         begin
            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='24' + inttostr(i-1);
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
            MyModule.ADOQuery1.FieldByName('Results').AsString:=e.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
         end;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label1.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=24';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
        for i:=2 to 4 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(e.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=24' + inttostr(i-1);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;
    end;
    end;

   end;

  end;
    2:begin
     Case Form49.N_metod of
     0:begin
       MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=31';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='31';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label1.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

         for i:=2 to 5 do
         begin
            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='31' + inttostr(i-1);
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
            MyModule.ADOQuery1.FieldByName('Results').AsString:=e.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
         end;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label1.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=31';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
        for i:=2 to 5 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(e.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=31' + inttostr(i-1);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;
    end;
    end;
    1:begin
    MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=32';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='32';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Label2.Caption;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label8.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

         for i:=3 to 6 do
         begin
            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='32' + inttostr(i-2);
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
            MyModule.ADOQuery1.FieldByName('Results').AsString:=e.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
         end;

            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='325';
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            MyModule.ADOQuery1.FieldByName('Results').AsString:=Label9.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;

            MyModule.ADOQuery1.Insert;
            MyModule.ADOQuery1.FieldByName('N_testa').AsString:='326';
            MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
            MyModule.ADOQuery1.FieldByName('Results').AsString:=Label10.Caption;
            MyModule.ADOQuery1.Active:=True;
            MyModule.ADOQuery1.Post;
       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(label2.Caption) + ',Res_Data=' + QuotedStr(Label8.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=32';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
        for i:=3 to 6 do
         begin
         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         e:=(FindComponent('Label'+IntToStr(i)) as TLabel);
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(e.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=32' + inttostr(i-2);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
         end;

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Label9.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=32' + inttostr(5);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Label10.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=32' + inttostr(6);
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
    end;
    end;
  end;
  end;
  end;
Form50.Close;
 end;
procedure TForm51.Button2Click(Sender: TObject);
begin
Chart1.Visible:=True;
Memo1.Visible:=False;
Button2.Visible:=False;
end;

end.
