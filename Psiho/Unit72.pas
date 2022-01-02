unit Unit72;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xmldom, XMLIntf, XMLDoc, ExtCtrls, Menus;

type
  TForm72 = class(TForm)
    MainMenu1: TMainMenu;
    Label1: TLabel;
    Label2: TLabel;
    N1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Id_vopros: integer;
    { Public declarations }
  end;

const
  n = 3;

var
  Form72: TForm72;
  countquest: integer;

  Select: Array of integer;
  Balls: Array [1 .. 5] of integer;

implementation

{$R *.dfm}

uses Unit71, Unit35, Unit50, Unit49, Unit74, Unit77;

procedure Key_1;
var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  myDate: string;
  ch, i: integer;
begin
  for i := 1 to countquest do
  begin
    MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'Psiho\test\11.xml');
    MyModule.XMLDocument1.Active := true;
    XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
    XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
    XmLquestion := XmLquestions.ChildNodes[i - 1];
    // Label1.Caption:= VarToStr(XmLquestion.Attributes['name']);
    XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
    XmLvariant := XmLvariants.ChildNodes[Select[i - 1] - 1];
    ch := StrToInt(VarToStr(XmLvariant.Attributes['character']));
    case ch of
      1:
        begin
          Balls[1] := Balls[1] + 1;
          Form77.Label1.Visible := true;
        end;
      2:
        begin
          Balls[2] := Balls[2] + 1;
          Form77.Label2.Visible := true;
        end;
      3:
        begin
          Balls[3] := Balls[3] + 1;
          Form77.Label3.Visible := true;
        end;
      4:
        begin
          Balls[4] := Balls[4] + 1;
          Form77.Label4.Visible := true;

        end;
      5:
        begin
          Balls[5] := Balls[5] + 1;
          Form77.Label5.Visible := true;

        end;
    end;
  end;
Form77.Label1.Caption:=IntTostr(Balls[1]);
Form77.Label2.Caption:=IntTostr(Balls[2]);
Form77.Label3.Caption:=IntTostr(Balls[3]);
Form77.Label4.Caption:=IntTostr(Balls[4]);
Form77.Label5.Caption:=IntTostr(Balls[5]);
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form77.Label8.Caption := myDate;
  Form77.ShowModal;
end;

procedure TForm72.Button1Click(Sender: TObject);
var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  i, j, n: integer;
begin
  Case Form71.N_glava of
    0:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3, 6, 7:
            begin
              Id_vopros := Id_vopros + 1;
              Select[Id_vopros - 1] := RadioGroup1.ItemIndex + 1;
              If Id_vopros < countquest then
              begin
                Form72.Caption := 'Вопрос ' + IntTostr(Id_vopros + 1) + ' из ' +
                  IntTostr(countquest);
                MyModule.XMLDocument1.LoadFromFile
                  (ExtractFilePath(Application.ExeName) + 'Psiho\test\1' +
                  IntTostr(Form71.N_metod + 1) + '.xml');
                MyModule.XMLDocument1.Active := true;
                XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
                XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
                XmLquestion := XmLquestions.ChildNodes[Id_vopros];
                // if (Form71.N_metod <> 6) then
                // begin
                Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
                // end;
                XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
                if (Form71.N_metod <> 5) then
                begin
                  for j := 0 to XmLvariants.ChildNodes.Count - 1 do
                  begin
                    XmLvariant := XmLvariants.ChildNodes[j];
                    RadioGroup1.Items[j] :=
                      VarToStr(XmLvariant.Attributes['text']);
                  end;
                end;
              end
              else
              begin
                Application.MessageBox('Вы прошли тест',
                  'Тестирование окончено');
                Case Form71.N_metod of
                  0:
                    Key_1;
                end;
              end;
            end;
        end;
      End;

    1:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              Id_vopros := Id_vopros + 1;
              Select[Id_vopros - 1] := RadioGroup1.ItemIndex + 1;
              If Id_vopros < countquest then
              begin
                Form72.Caption := 'Вопрос ' + IntTostr(Id_vopros + 1) + ' из ' +
                  IntTostr(countquest);
                MyModule.XMLDocument1.LoadFromFile
                  (ExtractFilePath(Application.ExeName) + 'Psiho\test\2' +
                  IntTostr(Form71.N_metod + 1) + '.xml');
                MyModule.XMLDocument1.Active := true;
                XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
                XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
                XmLquestion := XmLquestions.ChildNodes[Id_vopros];
                Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
                if (Form71.N_metod = 2) then
                begin
                  XmLvariants := XmLquestion.ChildNodes.FindNode('variants');

                  for j := 0 to XmLvariants.ChildNodes.Count - 1 do
                  begin
                    XmLvariant := XmLvariants.ChildNodes[j];
                    RadioGroup1.Items[j] :=
                      VarToStr(XmLvariant.Attributes['text']);
                  end;
                end;

              end
              else
              begin
                Application.MessageBox('Вы прошли тест',
                  'Тестирование окончено');
                // Case Form71.N_metod of
                // 0:Key_1;
                // 1:Key_22;
                // 2:Key_23;
                // 3:Key_24;
                // end;
              end;
            end;
        end;
      end;
    2:
      begin
        Case Form71.N_metod of
          0, 1, 3, 4, 5, 6, 7:
            begin
              Id_vopros := Id_vopros + 1;
              Select[Id_vopros - 1] := RadioGroup1.ItemIndex + 1;
              If Id_vopros < countquest then
              begin
                Form72.Caption := 'Вопрос ' + IntTostr(Id_vopros + 1) + ' из ' +
                  IntTostr(countquest);
                MyModule.XMLDocument1.LoadFromFile
                  (ExtractFilePath(Application.ExeName) + 'Psiho\test\3' +
                  IntTostr(Form71.N_metod + 1) + '.xml');
                MyModule.XMLDocument1.Active := true;
                XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
                XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
                XmLquestion := XmLquestions.ChildNodes[Id_vopros];
                Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
                // if ((Form71.N_metod = 3) or (Form71.N_metod = 4) or (Form71.N_metod = 5)) then
                // begin
                XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
                RadioGroup1.Items.Clear;
                for j := 0 to XmLvariants.ChildNodes.Count - 1 do
                begin
                  XmLvariant := XmLvariants.ChildNodes[j];
                  RadioGroup1.Items.Add
                    (VarToStr(XmLvariant.Attributes['text']));
                  RadioGroup1.Buttons[j].WordWrap := true;
                  RadioGroup1.Buttons[j].Checked := true;
                end;
                // end;

              end
              else
              begin
                Application.MessageBox('Вы прошли тест',
                  'Тестирование окончено');
                // Case Form71.N_metod of
                // 0:Key_31;
                // 1:Key_32;
                // 3:Key_34;
                // 4:Key_35;
                // 5:Key_36;
                // 6:Key_37;
                // 7:Key_38;
              end;
            end;
        end;
      end;

    3:
      begin
        Case Form71.N_metod of
          1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              Id_vopros := Id_vopros + 1;
              Select[Id_vopros - 1] := RadioGroup1.ItemIndex + 1;
              If Id_vopros < countquest then

                MyModule.XMLDocument1.LoadFromFile
                  (ExtractFilePath(Application.ExeName) + 'Psiho\test\4' +
                  IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              XmLquestion := XmLquestions.ChildNodes[Id_vopros];
              countquest := XmLquestions.ChildNodes.Count;
              SetLength(Select, countquest);
              Form72.Caption := 'Вопрос 1 из ' + IntTostr(countquest);
              XmLquestion := XmLquestions.ChildNodes[0];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              XmLvariants := XmLquestion.ChildNodes.FindNode('variants');

              RadioGroup1.Items.Clear;
              for j := 0 to XmLvariants.ChildNodes.Count - 1 do
              begin
                XmLvariant := XmLvariants.ChildNodes[j];
                RadioGroup1.Items.Add(VarToStr(XmLvariant.Attributes['text']));
                RadioGroup1.Buttons[j].WordWrap := true;
                RadioGroup1.Buttons[j].Checked := true;
              end;
            end;
        end;
      end;
  end;
end;

procedure TForm72.Button2Click(Sender: TObject);
var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  i, j: integer;
begin
  Case Form71.N_glava of
    0:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3, 4, 5, 6, 7:
            begin
              Id_vopros := Id_vopros - 1;
              If Id_vopros < 1 then
                Id_vopros := 0;
              Form72.Caption := 'Вопрос ' + IntTostr(Id_vopros + 1) + ' из ' +
                IntTostr(countquest);
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\1' +
                IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              XmLquestion := XmLquestions.ChildNodes[Id_vopros];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
              { if (Form71.N_metod <> 5) then
                begin }
              for j := 0 to XmLvariants.ChildNodes.Count - 1 do
              begin
                XmLvariant := XmLvariants.ChildNodes[j];
                RadioGroup1.Items[j] := VarToStr(XmLvariant.Attributes['text']);
              end;
            end;

        end;
      end;
    1:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              Id_vopros := Id_vopros - 1;
              If Id_vopros < 1 then
                Id_vopros := 0;
              Form72.Caption := 'Вопрос ' + IntTostr(Id_vopros + 1) + ' из ' +
                IntTostr(countquest);
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\2' +
                IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              XmLquestion := XmLquestions.ChildNodes[Id_vopros];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              if (Form71.N_metod = 2) then
              begin
                XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
                for j := 0 to XmLvariants.ChildNodes.Count - 1 do
                begin
                  XmLvariant := XmLvariants.ChildNodes[j];
                  RadioGroup1.Items[j] :=
                    VarToStr(XmLvariant.Attributes['text']);
                end;
              end;

            end;
        end;
      end;
    2:
      begin
        Case Form71.N_metod of
          0, 1, 3, 4, 5, 6, 7:
            begin
              Id_vopros := Id_vopros - 1;
              If Id_vopros < 1 then
                Id_vopros := 0;
              Form71.Caption := 'Вопрос ' + IntTostr(Id_vopros + 1) + ' из ' +
                IntTostr(countquest);
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\3' +
                IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              XmLquestion := XmLquestions.ChildNodes[Id_vopros];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              if ((Form71.N_metod = 3) or (Form71.N_metod = 4) or
                (Form71.N_metod = 5)) then
              begin
                XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
                RadioGroup1.Items.Clear;
                for j := 0 to XmLvariants.ChildNodes.Count - 1 do
                begin
                  XmLvariant := XmLvariants.ChildNodes[j];
                  RadioGroup1.Items.Add
                    (VarToStr(XmLvariant.Attributes['text']));
                  RadioGroup1.Buttons[j].WordWrap := true;
                  RadioGroup1.Buttons[j].Checked := true;
                end;
              end;

            end;
        end;
      end;

    3:
      begin
        Case Form71.N_metod of
          1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              Id_vopros := Id_vopros + 1;
              Select[Id_vopros - 1] := RadioGroup1.ItemIndex + 1;
              If Id_vopros < countquest then
                MyModule.XMLDocument1.LoadFromFile
                  (ExtractFilePath(Application.ExeName) + 'Psiho\test\4' +
                  IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              XmLquestion := XmLquestions.ChildNodes[Id_vopros];
              countquest := XmLquestions.ChildNodes.Count;
              SetLength(Select, countquest);
              Form72.Caption := 'Вопрос 1 из ' + IntTostr(countquest);
              XmLquestion := XmLquestions.ChildNodes[0];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
              RadioGroup1.Items.Clear;
              for j := 0 to XmLvariants.ChildNodes.Count - 1 do
              begin
                XmLvariant := XmLvariants.ChildNodes[j];
                RadioGroup1.Items.Add(VarToStr(XmLvariant.Attributes['text']));
                RadioGroup1.Buttons[j].WordWrap := true;
                RadioGroup1.Buttons[j].Checked := true;
              end;
            end;
        end;
      end;
  end;
end;

procedure TForm72.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form71.Show;
end;

procedure TForm72.FormShow(Sender: TObject);
var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  i, j, nomer, message: integer;
begin
  RadioGroup1.Items.Clear;
  Case Form71.N_glava of
    0:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3, 6, 7:
            begin
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\1' +
                IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              countquest := XmLquestions.ChildNodes.Count;
              SetLength(Select, countquest);
              Form72.Caption := 'Вопрос 1 из ' + IntTostr(countquest);
              XmLquestion := XmLquestions.ChildNodes[0];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
              RadioGroup1.Items.Clear;
              for j := 0 to XmLvariants.ChildNodes.Count - 1 do
              begin
                XmLvariant := XmLvariants.ChildNodes[j];
                RadioGroup1.Items.Add(VarToStr(XmLvariant.Attributes['text']));
                RadioGroup1.Buttons[j].WordWrap := true;
                RadioGroup1.Buttons[j].Checked := true;
              end;
            end;

        end;
      end;
    1:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\2' +
                IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              countquest := XmLquestions.ChildNodes.Count;
              SetLength(Select, countquest);
              Form72.Caption := 'Вопрос 1 из ' + IntTostr(countquest);
              XmLquestion := XmLquestions.ChildNodes[0];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
              RadioGroup1.Items.Clear;
              for j := 0 to XmLvariants.ChildNodes.Count - 1 do
              begin

                XmLvariant := XmLvariants.ChildNodes[j];
                RadioGroup1.Items.Add(VarToStr(XmLvariant.Attributes['text']));
                RadioGroup1.Buttons[j].WordWrap := true;
                RadioGroup1.Buttons[j].Checked := true;
              end;
            end;
        end;
      end;
    2:
      begin
        Case Form71.N_metod of
          0, 1, 3, 4, 5, 6, 7:
            begin
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\3' +
                IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              countquest := XmLquestions.ChildNodes.Count;
              SetLength(Select, countquest);
              Form72.Caption := 'Вопрос 1 из ' + IntTostr(countquest);
              XmLquestion := XmLquestions.ChildNodes[0];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
              RadioGroup1.Items.Clear;
              for j := 0 to XmLvariants.ChildNodes.Count - 1 do
              begin
                XmLvariant := XmLvariants.ChildNodes[j];
                RadioGroup1.Items.Add(VarToStr(XmLvariant.Attributes['text']));
                RadioGroup1.Buttons[j].WordWrap := true;
                RadioGroup1.Buttons[j].Checked := true;
              end;
            end;
        end;
      end;

    3:
      begin
        Case Form71.N_metod of
          1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin

              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\4' +
                IntTostr(Form71.N_metod + 1) + '.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
              XmLquestion := XmLquestions.ChildNodes[Id_vopros];
              countquest := XmLquestions.ChildNodes.Count;
              SetLength(Select, countquest);
              Form72.Caption := 'Вопрос 1 из ' + IntTostr(countquest);
              XmLquestion := XmLquestions.ChildNodes[0];
              Label1.Caption := VarToStr(XmLquestion.Attributes['name']);
              XmLvariants := XmLquestion.ChildNodes.FindNode('variants');
              RadioGroup1.Items.Clear;
              for j := 0 to XmLvariants.ChildNodes.Count - 1 do
              begin
                XmLvariant := XmLvariants.ChildNodes[j];
                RadioGroup1.Items.Add(VarToStr(XmLvariant.Attributes['text']));
                RadioGroup1.Buttons[j].WordWrap := true;
                RadioGroup1.Buttons[j].Checked := true;
              end;
            end;
        end;
      end;
  End;
  Id_vopros := 0;
end;

procedure TForm72.N1Click(Sender: TObject);
var

  XmlRoot: IXMLNode;
  XmLtests: IXMLNode;
  XmLtest: IXMLNode;
  XmLhelp: IXMLNode;
  i, j: integer;
begin
  Case Form71.N_glava of
    0:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3, 6, 7:
            begin
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\help.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLtests := XmlRoot.ChildNodes.FindNode('tests');
              XmLtest := XmLtests.ChildNodes[Form71.N_metod];
              Form74.Memo1.Clear;
              Form74.Memo1.Lines.Add(VarToStr(XmLtest.Attributes['name']));
              XmLhelp := XmLtest.ChildNodes.FindNode('help');
              Form74.Memo1.Lines.Add(VarToStr(XmLhelp.Attributes['text']))
            end;
        end;
      end;
    1:
      begin
        Case Form71.N_metod of
          0, 1, 2, 3:
            begin
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\help.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLtests := XmlRoot.ChildNodes.FindNode('tests');
              XmLtest := XmLtests.ChildNodes[Form71.N_metod + 8];
              Form74.Memo1.Clear;
              Form74.Memo1.Lines.Add(VarToStr(XmLtest.Attributes['name']));
              XmLhelp := XmLtest.ChildNodes.FindNode('help');
              Form74.Memo1.Lines.Add(VarToStr(XmLhelp.Attributes['text']))
            end;
        end;
      end;
    2:
      begin
        Case Form71.N_metod of
          0, 1, 3, 4, 5, 6, 7:
            begin
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\help.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLtests := XmlRoot.ChildNodes.FindNode('tests');
              XmLtest := XmLtests.ChildNodes[Form71.N_metod + 12];
              Form74.Memo1.Clear;
              Form74.Memo1.Lines.Add(VarToStr(XmLtest.Attributes['name']));
              XmLhelp := XmLtest.ChildNodes.FindNode('help');
              Form74.Memo1.Lines.Add(VarToStr(XmLhelp.Attributes['text']))
            end;
        end;
      end;

    3:
      begin
        Case Form71.N_metod of
          0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              MyModule.XMLDocument1.LoadFromFile
                (ExtractFilePath(Application.ExeName) + 'Psiho\test\help.xml');
              MyModule.XMLDocument1.Active := true;
              XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
              XmLtests := XmlRoot.ChildNodes.FindNode('tests');
              XmLtest := XmLtests.ChildNodes[Form71.N_metod + 12];
              Form74.Memo1.Clear;
              Form74.Memo1.Lines.Add(VarToStr(XmLtest.Attributes['name']));
              XmLhelp := XmLtest.ChildNodes.FindNode('help');
              Form74.Memo1.Lines.Add(VarToStr(XmLhelp.Attributes['text']))
            end;
        end;
      end;
  end;
  Form74.Show;
end;

{ procedure Key_2;
  var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  myDate:string;
  i:integer;
  bals: Array [1..4] of Integer;
  ch: Integer;
  begin
  for i:=1 to countquest do
  begin
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\12.xml');
  MyModule.XMLDocument1.Active := true;
  XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
  XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
  XmLquestion :=XmLquestions.ChildNodes[i-1];
  XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
  XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
  ch:=StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
  case ch of
  1:begin
  case select[i-1] of
  1:bls[1]:=bls[1] + 0;
  2:bls[1]:=bls[1] + 1;
  3:bls[1]:=bls[1] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label1.Visible:=True;
  end;
  2:begin
  case select[i-1] of
  1:bls[2]:=bls[2] + 0;
  2:bls[2]:=bls[2] + 1;
  3:bls[2]:=bls[2] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label2.Visible:=True;
  end;
  3:begin
  case select[i-1] of
  1:bls[3]:=bls[3] + 0;
  2:bls[3]:=bls[3] + 1;
  3:bls[3]:=bls[3] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label3.Visible:=True;
  end;
  4:begin
  case select[i-1] of
  1:bls[4]:=bls[4] + 0;
  2:bls[4]:=bls[4] + 1;
  3:bls[4]:=bls[4] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label4.Visible:=True;
  end;
  end;
  end;
  end;
  end;
  case bals[1] of
  9..16 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[2] of
  20..25 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[3] of
  26..34 :      Form77.Label3.Caption:= ''+''  ;
  end;
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
  balls: Array [1..4] of Integer;
  ch: Integer;
  begin
  for i:=1 to countquest do
  begin
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\13.xml');
  MyModule.XMLDocument1.Active := true;
  XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
  XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
  XmLquestion :=XmLquestions.ChildNodes[i-1];
  XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
  XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
  ch:=StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
  case ch of
  1:begin
  case select[i-1] of
  1:bls[1]:=bls[1] + 0;
  2:bls[1]:=bls[1] + 1;
  3:bls[1]:=bls[1] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label1.Visible:=True;
  end;
  2:begin
  case select[i-1] of
  1:bls[2]:=bls[2] + 0;
  2:bls[2]:=bls[2] + 1;
  3:bls[2]:=bls[2] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label2.Visible:=True;
  end;
  3:begin
  case select[i-1] of
  1:bls[3]:=bls[3] + 0;
  2:bls[3]:=bls[3] + 1;
  3:bls[3]:=bls[3] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label3.Visible:=True;
  end;
  end;
  end;
  end;
  end;
  case bls[1] of
  8..18 :     Form77.Label3.Caption:= ''+'Ваше отношение к критике скорее негативное'  ;
  end;
  case bls[2] of
  19..32 :     Form77.Label3.Caption:= ''+'Вы терпимо относитесь к критике'  ;
  end;
  case bls[3] of
  33..46 :      Form77.Label3.Caption:= ''+'Вы по деловому относитесь к критике'  ;
  end;
  end;


  procedure Key_4;
  var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  myDate:string;
  i:integer;
  bls: Array [1..5] of Integer;
  ch: Integer;
  begin
  for i:=1 to countquest do
  begin
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\14.xml');
  MyModule.XMLDocument1.Active := true;
  XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
  XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
  XmLquestion :=XmLquestions.ChildNodes[i-1];
  XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
  XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
  ch:=StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
  case ch of
  1:begin
  case select[i-1] of
  1:bls[1]:=bls[1] + 0;
  2:bls[1]:=bls[1] + 1;
  3:bls[1]:=bls[1] + 2;
  4:bls[1]:=bls[1] + 3;
  5:bls[1]:=bls[1] + 4;
  end;
  Form77.Label1.Visible:=True;
  end;
  2:begin
  case select[i-1] of
  1:bls[2]:=bls[2] + 0;
  2:bls[2]:=bls[2] + 1;
  3:bls[2]:=bls[2] + 2;
  4:bls[2]:=bls[2] + 3;
  4:bls[2]:=bls[2] + 4;
  end;
  Form77.Label2.Visible:=True;
  end;
  3:begin
  case select[i-1] of
  1:bls[3]:=bls[3] + 0;
  2:bls[3]:=bls[3] + 1;
  3:bls[3]:=bls[3] + 2;
  4:bls[3]:=bls[3] + 3;
  5:bls[3]:=bls[3] + 4;
  end;
  Form77.Label3.Visible:=True;
  end;
  4:begin
  case select[i-1] of
  1:bls[4]:=bls[4] + 0;
  2:bls[4]:=bls[4] + 1;
  3:bls[4]:=bls[4] + 2;
  4:bls[4]:=bls[4] + 3;
  5:bls[4]:=bls[4] + 4;
  end;
  Form77.Label4.Visible:=True;
  end;
  5:begin
  case select[i-1] of
  1:bls[5]:=bls[5] + 0;
  2:bls[5]:=bls[5] + 1;
  3:bls[5]:=bls[5] + 2;
  4:bls[5]:=bls[5] + 3;
  5:bls[5]:=bls[5] + 4
  end;
  Form77.Label5.Visible:=True;
  end;
  end;

  end;

  end;
  end;
  case bals[1] of
  0..85 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[2] of
  85..133 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[3] of
  133..200 :      Form77.Label3.Caption:= ''+''  ;
  end;
  end;

  procedure Key_5;
  var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  myDate:string;
  i:integer;
  balls: Array [1..7] of Integer;
  ch: Integer;
  begin
  for i:=1 to countquest do
  begin
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\15.xml');
  MyModule.XMLDocument1.Active := true;
  XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
  XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
  XmLquestion :=XmLquestions.ChildNodes[i-1];
  XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
  XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
  ch:=StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
  case ch of
  1:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label1.Visible:=True;
  end;
  2:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label2.Visible:=True;
  end;
  3:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label3.Visible:=True;
  end;
  4:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label4.Visible:=True;
  end;
  5:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label5.Visible:=True;
  end;
  6:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label6.Visible:=True;
  end;
  7:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label7.Visible:=True;
  end;
  end;

  end;

  end;
  end;
  case bals[1] of
  0..25 :     Form77.Label3.Caption:= 'Сумма меньше 25 баллов:'+'свидетельствует о случайности конфликта'  ;
  end;
  case bals[2] of
  25..34 :     Form77.Label3.Caption:= 'Сумма в пределах 25-34 балла'+'указывает на колебания в отношениях конфликтующих сторон'  ;
  end;
  case bals[3] of
  35..40:      Form77.Label3.Caption:= 'Сумма в 35-40 балла'+'свидетельствует о том, что конфликтующие находятся в жесткой конфронтации друг к другу'  ;
  end;

  end;

  procedure Key_6;
  var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  myDate:string;
  i:integer;
  balls: Array [1..7] of Integer;
  ch: Integer;
  begin
  for i:=1 to countquest do
  begin
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\16.xml');
  MyModule.XMLDocument1.Active := true;
  XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
  XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
  XmLquestion :=XmLquestions.ChildNodes[i-1];
  XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
  XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
  ch:=StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  case ch of
  1:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label1.Visible:=True;
  end;
  2:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label2.Visible:=True;
  end;
  3:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label3.Visible:=True;
  end;
  4:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label4.Visible:=True;
  end;
  5:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label5.Visible:=True;
  end;
  6:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label6.Visible:=True;
  end;
  7:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label7.Visible:=True;
  end;
  end;

  end;

  end;
  end;
  case bals[1] of
  0..30 :     Form77.Label3.Caption:= 'Меньше 30 баллов в сумме:'+'Выход из конфликта не возможен'  ;
  end;
  case bals[2] of
  31..44 :     Form77.Label3.Caption:= '31-44 баллов:'+'Выйти из конфликта малореально'  ;
  end;
  case bals[3] of
  45..73 :      Form77.Label3.Caption:= '45-73 балла:'+'Конфликт усложняется и становится затяжным. Требуется очень большая работа со стороны руководителя и группы для исключения противоборства'  ;
  end;
  case bals[4] of
  74..89 :      Form77.Label3.Caption:= '74-89 баллов:'+'Разрешение конфликта сильно усложняется ввиду чрезмерного переплетения трудностей, связанных с деятельностью руководителя и членов группы'  ;
  end;
  case bals[5] of
  90..105 :      Form77.Label3.Caption:= '90-105 баллов:'+'Конфликт может успешно быть разрешен на рациональной основе'  ;
  end;
  end;

  procedure Key_7;
  var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  myDate:string;
  i:integer;
  bls: Array [1..4] of Integer;
  ch: Integer;
  begin
  for i:=1 to countquest do
  begin
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\17.xml');
  MyModule.XMLDocument1.Active := true;
  XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
  XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
  XmLquestion :=XmLquestions.ChildNodes[i-1];
  XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
  XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
  ch:=StrToInt(VarToStr(Xmlvariant.Attributes['bal']));
  case ch of
  1:begin
  case select[i-1] of
  1:bls[1]:=bls[1] + 0;
  2:bls[1]:=bls[1] + 1;
  3:bls[1]:=bls[1] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label1.Visible:=True;
  end;
  2:begin
  case select[i-1] of
  1:bls[2]:=bls[2] + 0;
  2:bls[2]:=bls[2] + 1;
  3:bls[2]:=bls[2] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label2.Visible:=True;
  end;
  3:begin
  case select[i-1] of
  1:bls[3]:=bls[3] + 0;
  2:bls[3]:=bls[3] + 1;
  3:bls[3]:=bls[3] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label3.Visible:=True;
  end;
  4:begin
  case select[i-1] of
  1:bls[4]:=bls[4] + 0;
  2:bls[4]:=bls[4] + 1;
  3:bls[4]:=bls[4] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label4.Visible:=True;
  end;
  5:begin
  case select[i-1] of
  1:bls[5]:=bls[5] + 0;
  2:bls[5]:=bls[5] + 1;
  3:bls[5]:=bls[5] + 2;
  4:bls[1]:=bls[1] + 3;
  end;
  Form77.Label5.Visible:=True;
  end;
  end;

  end;

  end;
  end;
  case bals[1] of
  9..16 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[2] of
  20..25 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[3] of
  26..34 :      Form77.Label3.Caption:= ''+''  ;
  end;
  end;

  procedure Key_8;
  var
  XmlRoot: IXMLNode;
  XmLquestions: IXMLNode;
  XmLquestion: IXMLNode;
  XmLvariants: IXMLNode;
  XmLvariant: IXMLNode;
  myDate:string;
  i:integer;
  balls: Array [1..7] of Integer;
  ch: Integer;
  begin
  for i:=1 to countquest do
  begin
  MyModule.XMLDocument1.LoadFromFile(ExtractFilePath(Application.ExeName) +'Psiho\test\18.xml');
  MyModule.XMLDocument1.Active := true;
  XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
  XmLquestions := XmlRoot.ChildNodes.FindNode('questions');
  XmLquestion :=XmLquestions.ChildNodes[i-1];
  XMlvariants:=Xmlquestion.ChildNodes.FindNode('variants');
  XmLvariant :=Xmlvariants.ChildNodes[Select[i-1]-1];
  ch:=StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  case ch of
  1:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label1.Visible:=True;
  end;
  2:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label2.Visible:=True;
  end;
  3:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label3.Visible:=True;
  end;
  4:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label4.Visible:=True;
  end;
  5:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label5.Visible:=True;
  end;
  6:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label6.Visible:=True;
  end;
  7:begin
  case select[i-1] of
  balls[1]:=balls[1] + StrToInt(VarToStr(Xmlvariant.Attributes['variant']));
  Form77.Label7.Visible:=True;
  end;
  end;

  end;

  end;
  end;
  case bals[1] of
  0..30 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[2] of
  31..44 :     Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[3] of
  45..73 :      Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[4] of
  74..89 :      Form77.Label3.Caption:= ''+''  ;
  end;
  case bals[5] of
  90..105 :      Form77.Label3.Caption:= ''+''  ;
  end;
  end;
}

end.
