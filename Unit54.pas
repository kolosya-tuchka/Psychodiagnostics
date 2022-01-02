unit Unit54;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, Data.Win.ADODB, xmldom, XMLIntf, XMLDoc;

type
  TForm54 = class(TForm)
    ListView1: TListView;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form54: TForm54;

implementation
uses Unit35;
{$R *.dfm}


procedure TForm54.Button1Click(Sender: TObject);
var sum:integer;
    i:integer;
    count:integer;
    nodeRoot, nodeTests, nodeTest, nodeQuestions, nodeQuestion : IXMLNode;
    squery:string;
begin
    sum :=0;
   for i :=0 to ListView1.Items.Count-1 do
    begin
    if ListView1.Items[i].Checked then
      sum :=sum+1;
    end;
    if sum =0 then
      begin
      showmessage('Не выбран ни один тест для экспорта');
      exit;
      end;
   SaveDialog1.InitialDir := Extractfilepath(application.ExeName);
   if  SaveDialog1.Execute then
    begin
      MyModule.XMLDocument1.Active :=True;
      MyModule.XMLDocument1.Encoding :='UTF-8';
      nodeRoot := MyModule.XMLDocument1.AddChild('root');
      nodeRoot.Attributes['version'] := '1.0';
      nodeTests := nodeRoot.AddChild('tests');
      sum := 1;
      for i :=0 to ListView1.Items.Count-1 do
      begin
            if ListView1.Items[i].Checked then
            begin
              nodeTest := nodeTests.AddChild('test');
              nodeTest.Attributes['id'] := sum;
              nodeTest.Attributes['name'] := ListView1.Items[i].Caption;
              MyModule.ADOQuery3.SQL.Clear;
              squery:= 'SELECT N_testa, Nazv, Opis FROM Test WHERE N_testa=' + IntToStr(Integer(ListView1.Items[i].Data)) + ' ORDER BY Nazv';
              MyModule.ADOQuery3.SQL.Text:= squery;
              MyModule.ADOQuery3.Open;
              MyModule.ADOQuery3.First;
              if MyModule.ADOQuery3.RecordCount = 0 then begin
                       showmessage('Запись не найдена');
                exit;
              end;
              if MyModule.ADOQuery3.FieldByName('opis').IsNull then
                nodeTest.Attributes['opis'] :=  ''
              else
               nodeTest.Attributes['opis'] :=  MyModule.ADOQuery3.FieldByName('opis').value;
               nodeQuestions :=nodeTest.AddChild('questions');
               MyModule.ADOQuery4.SQL.Clear;
               squery:= 'SELECT * FROM Test_Information WHERE N_testa=' + IntToStr(Integer(ListView1.Items[i].Data)) ;
               MyModule.ADOQuery4.SQL.Text:= squery;
               MyModule.ADOQuery4.Open;
               MyModule.ADOQuery4.First;
               count := 1;
               while not MyModule.ADOQuery4.Eof do
               begin
                nodeQuestion := nodeQuestions.AddChild('question');
                nodeQuestion.Attributes['id'] := count;
                nodeQuestion.Attributes['question'] := MyModule.ADOQuery4.FieldByName('question').Value;
                nodeQuestion.Attributes['kolvo'] := MyModule.ADOQuery4.FieldByName('Kolvo').Value;
                nodeQuestion.Attributes['kol_otvet'] := MyModule.ADOQuery4.FieldByName('Kol_otvet').Value;
                if MyModule.ADOQuery4.FieldByName('otv1').IsNull then
                  nodeQuestion.Attributes['otv1'] :=  ''
                else
                  nodeQuestion.Attributes['otv1'] :=  MyModule.ADOQuery4.FieldByName('otv1').value;
                if MyModule.ADOQuery4.FieldByName('otv2').IsNull then
                  nodeQuestion.Attributes['otv2'] :=  ''
                else
                  nodeQuestion.Attributes['otv2'] :=  MyModule.ADOQuery4.FieldByName('otv2').value;
                if MyModule.ADOQuery4.FieldByName('otv3').IsNull then
                  nodeQuestion.Attributes['otv3'] :=  ''
                else
                  nodeQuestion.Attributes['otv3'] :=  MyModule.ADOQuery4.FieldByName('otv3').value;
                if MyModule.ADOQuery4.FieldByName('otv4').IsNull then
                  nodeQuestion.Attributes['otv4'] :=  ''
                else
                  nodeQuestion.Attributes['otv4'] :=  MyModule.ADOQuery4.FieldByName('otv4').value;
                if MyModule.ADOQuery4.FieldByName('otv5').IsNull then
                  nodeQuestion.Attributes['otv5'] :=  ''
                else
                  nodeQuestion.Attributes['otv5'] :=  MyModule.ADOQuery4.FieldByName('otv5').value;

                if MyModule.ADOQuery4.FieldByName('Bal1').IsNull then
                  nodeQuestion.Attributes['Bal1'] :=  '0'
                else
                  nodeQuestion.Attributes['Bal1'] :=  MyModule.ADOQuery4.FieldByName('Bal1').value;
                if MyModule.ADOQuery4.FieldByName('Bal2').IsNull then
                  nodeQuestion.Attributes['Bal2'] :=  '0'
                else
                  nodeQuestion.Attributes['Bal2'] :=  MyModule.ADOQuery4.FieldByName('Bal2').value;
                if MyModule.ADOQuery4.FieldByName('Bal3').IsNull then
                  nodeQuestion.Attributes['Bal3'] :=  '0'
                else
                  nodeQuestion.Attributes['Bal3'] :=  MyModule.ADOQuery4.FieldByName('Bal3').value;
                if MyModule.ADOQuery4.FieldByName('Bal4').IsNull then
                  nodeQuestion.Attributes['Bal4'] :=  '0'
                else
                  nodeQuestion.Attributes['Bal4'] :=  MyModule.ADOQuery4.FieldByName('Bal4').value;
                if MyModule.ADOQuery4.FieldByName('Bal5').IsNull then
                  nodeQuestion.Attributes['Bal5'] :=  '0'
                else
                  nodeQuestion.Attributes['Bal5'] :=  MyModule.ADOQuery4.FieldByName('Bal5').value;

                if MyModule.ADOQuery4.FieldByName('Diapazon1').IsNull then
                  nodeQuestion.Attributes['Diapazon1'] :=  '0'
                else
                  nodeQuestion.Attributes['Diapazon1'] :=  MyModule.ADOQuery4.FieldByName('Diapazon1').value;
                if MyModule.ADOQuery4.FieldByName('Diapazon2').IsNull then
                  nodeQuestion.Attributes['Diapazon2'] :=  '0'
                else
                  nodeQuestion.Attributes['Diapazon2'] :=  MyModule.ADOQuery4.FieldByName('Diapazon2').value;
               if MyModule.ADOQuery4.FieldByName('Result').IsNull then
                  nodeQuestion.Attributes['Result'] :=  ''
                else
                  nodeQuestion.Attributes['Result'] :=  MyModule.ADOQuery4.FieldByName('Result').value;

               if MyModule.ADOQuery4.FieldByName('Kolvo_factors').IsNull then
                  nodeQuestion.Attributes['Kolvo_factors'] :=  '0'
                else
                  nodeQuestion.Attributes['Kolvo_factors'] :=  MyModule.ADOQuery4.FieldByName('Kolvo_factors').value;

               if MyModule.ADOQuery4.FieldByName('N_ques_of_fact').IsNull then
                  nodeQuestion.Attributes['N_ques_of_fact'] :=  ''
                else
                  nodeQuestion.Attributes['N_ques_of_fact'] :=  MyModule.ADOQuery4.FieldByName('N_ques_of_fact').value;

               if MyModule.ADOQuery4.FieldByName('Group_of_factors').IsNull then
                  nodeQuestion.Attributes['Group_of_factors'] :=  '0'
                else
                  nodeQuestion.Attributes['Group_of_factors'] :=  MyModule.ADOQuery4.FieldByName('Group_of_factors').value;

               if MyModule.ADOQuery4.FieldByName('Type_otvet').IsNull then
                  nodeQuestion.Attributes['Type_otvet'] :=  '0'
                else
                  nodeQuestion.Attributes['Type_otvet'] :=  MyModule.ADOQuery4.FieldByName('Type_otvet').value;

                if MyModule.ADOQuery4.FieldByName('Type_obr').IsNull then
                  nodeQuestion.Attributes['Type_obr'] :=  '0'
                else
                  nodeQuestion.Attributes['Type_obr'] :=  MyModule.ADOQuery4.FieldByName('Type_obr').value;

               if MyModule.ADOQuery4.FieldByName('Kolvo_diap').IsNull then
                  nodeQuestion.Attributes['Kolvo_diap'] :=  '0'
                else
                  nodeQuestion.Attributes['Kolvo_diap'] :=  MyModule.ADOQuery4.FieldByName('Kolvo_diap').value;

               if MyModule.ADOQuery4.FieldByName('Question_p').IsNull then
                  nodeQuestion.Attributes['Question_p'] :=  ''
                else
                  nodeQuestion.Attributes['Question_p'] :=  MyModule.ADOQuery4.FieldByName('Question_p').value;
                count :=count+1;
                MyModule.ADOQuery4.Next;
               end;
              sum :=sum+1;
           end;
       end;
      MyModule.XMLDocument1.SaveToFile(SaveDialog1.FileName);
      MyModule.XMLDocument1.Active :=false;
    end;
end;

procedure TForm54.Button2Click(Sender: TObject);
var
XmlRoot: IXMLNode;
XmLTests: IXMLNode;
XmLTest: IXMLNode;
XmLQuestions: IXMLNode;
XmLQuestion: IXMLNode;
i,j,tablescount,nomer,message: integer;
begin
      if  OpenDialog1.Execute then begin
        if Application.MessageBox('Вы уверены, что хотите загрузить данный тест(ы)? ','Подтверждение',MB_YESNO)=IDYES then begin
          MyModule.XMLDocument1.LoadFromFile(OpenDialog1.FileName);
          MyModule.XMLDocument1.Active := true;
          MyModule.XMLDocument1.LoadFromFile(OpenDialog1.FileName);
          XmlRoot := MyModule.XMLDocument1.ChildNodes.FindNode('root');
          XmLTests := XmlRoot.ChildNodes.FindNode('tests');
          message := 0;
          try
             for i := 0 to XmLTests.ChildNodes.Count-1 do  begin
             XmLTest :=XmLTests.ChildNodes[i];
             MyModule.ADOQuery5.SQL.Clear;
             MyModule.ADOQuery5.Sql.Add('Insert into Test(Nazv,Opis) ');
             MyModule.ADOQuery5.Sql.Add('Values( ' + #39 + VarToStr(XmLTest.Attributes['name']) + #39 + ',' + #39 + VarToStr(XmLTest.Attributes['opis']) + #39 + ')');
             message :=message +1;
             MyModule.ADOQuery5.ExecSQL;


             MyModule.ADOQuery5.SQL.Clear;
             MyModule.ADOQuery5.Sql.Add('Select MAX(N_testa) as nomer FROM Test');
             MyModule.ADOQuery5.Open;
             nomer := MyModule.ADOQuery5.FieldByName('nomer').AsInteger;

             XmLQuestions :=XmlTest.ChildNodes.First;

                  for j:=0 to  XmLQuestions.ChildNodes.Count-1 do begin
                  XmlQuestion :=XmlQuestions.ChildNodes[j];
                  MyModule.ADOQuery5.SQL.Clear;
                  MyModule.ADOQuery5.SQL.Add('Insert into Test_Information(N_testa,Kolvo,Question,Kol_otvet,Otv1,Otv2,Otv3,Otv4,Otv5,Bal1,Bal2,Bal3,Bal4,Bal5,Diapazon1,Diapazon2,Result,Kolvo_factors,N_ques_of_fact,Group_of_factors,Type_otvet,Type_obr,Kolvo_diap,Question_p)');
                  MyModule.ADOQuery5.SQL.Add('Values(' + IntToStr(nomer) + ',' + VarToStr(XmlQuestion.Attributes['kolvo']) + ',' + VarToStr(XmlQuestion.Attributes['question']) + ',');
                  MyModule.ADOQuery5.SQL.Add('' + #39 + VarToStr(XmlQuestion.Attributes['otv1']) + #39 + ',' + VarToStr(XmlQuestion.Attributes['otv2']) + ',' + VarToStr(XmlQuestion.Attributes['otv3']) + ',');
                  MyModule.ADOQuery5.SQL.Add('' + #39 + VarToStr(XmlQuestion.Attributes['otv4']) + #39 + ',' + VarToStr(XmlQuestion.Attributes['otv5']) + ',' + VarToStr(XmlQuestion.Attributes['Bal1']) + ',');
                  MyModule.ADOQuery5.SQL.Add('' + #39 + VarToStr(XmlQuestion.Attributes['Bal2']) + #39 + ',' + VarToStr(XmlQuestion.Attributes['Bal3']) + ',' + VarToStr(XmlQuestion.Attributes['Bal4']) + ',');
                  MyModule.ADOQuery5.SQL.Add('' + #39 + VarToStr(XmlQuestion.Attributes['Bal5']) + #39 + ',' + VarToStr(XmlQuestion.Attributes['Diapazon1']) + ',' + VarToStr(XmlQuestion.Attributes['Diapazon2']) + ',');
                  MyModule.ADOQuery5.SQL.Add('' + #39 + VarToStr(XmlQuestion.Attributes['Result']) + #39 + ',' + VarToStr(XmlQuestion.Attributes['Kolvo_factors']) + ',' + VarToStr(XmlQuestion.Attributes['N_ques_of_fact']) + ',');
                  MyModule.ADOQuery5.SQL.Add('' + #39 + VarToStr(XmlQuestion.Attributes['Group_of_factors']) + #39 + ',' + VarToStr(XmlQuestion.Attributes['Type_otvet']) + ',' + VarToStr(XmlQuestion.Attributes['Type_obr']) + ',');
                  MyModule.ADOQuery5.SQL.Add('' + #39 + VarToStr(XmlQuestion.Attributes['Kolvo_diap']) + #39 + ',' + VarToStr(XmlQuestion.Attributes['Question_p']) + ')');


                  {MyModule.ADOQuery5.Sql.Add('Values(:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)');
                  MyModule.ADOQuery5.Parameters.ParamByName('1').Value := nomer;
                  MyModule.ADOQuery5.Parameters.ParamByName('2').Value := VarToStr(XmlQuestion.Attributes['kolvo']);
                  MyModule.ADOQuery5.Parameters.ParamByName('3').Value := VarToStr(XmlQuestion.Attributes['question']);
                  MyModule.ADOQuery5.Parameters.ParamByName('4').Value := VarToStr(XmlQuestion.Attributes['kol_otvet']);
                  MyModule.ADOQuery5.Parameters.ParamByName('5').Value := VarToStr(XmlQuestion.Attributes['otv1']);
                  MyModule.ADOQuery5.Parameters.ParamByName('6').Value := VarToStr(XmlQuestion.Attributes['otv2']);
                  MyModule.ADOQuery5.Parameters.ParamByName('7').Value := VarToStr(XmlQuestion.Attributes['otv3']);
                  MyModule.ADOQuery5.Parameters.ParamByName('8').Value := VarToStr(XmlQuestion.Attributes['otv4']);
                  MyModule.ADOQuery5.Parameters.ParamByName('9').Value := VarToStr(XmlQuestion.Attributes['otv5']);
                  MyModule.ADOQuery5.Parameters.ParamByName('10').Value := VarToStr(XmlQuestion.Attributes['Bal1']);
                  MyModule.ADOQuery5.Parameters.ParamByName('11').Value := VarToStr(XmlQuestion.Attributes['Bal2']);
                  MyModule.ADOQuery5.Parameters.ParamByName('12').Value := VarToStr(XmlQuestion.Attributes['Bal3']);
                  MyModule.ADOQuery5.Parameters.ParamByName('13').Value := VarToStr(XmlQuestion.Attributes['Bal4']);
                  MyModule.ADOQuery5.Parameters.ParamByName('14').Value := VarToStr(XmlQuestion.Attributes['Bal5']);
                  MyModule.ADOQuery5.Parameters.ParamByName('15').Value := VarToStr(XmlQuestion.Attributes['Diapazon1']);
                  MyModule.ADOQuery5.Parameters.ParamByName('16').Value := VarToStr(XmlQuestion.Attributes['Diapazon2']);
                  MyModule.ADOQuery5.Parameters.ParamByName('17').Value := VarToStr(XmlQuestion.Attributes['Result']);
                  MyModule.ADOQuery5.Parameters.ParamByName('18').Value := VarToStr(XmlQuestion.Attributes['Kolvo_factors']);
                  MyModule.ADOQuery5.Parameters.ParamByName('19').Value := VarToStr(XmlQuestion.Attributes['N_ques_of_fact']);
                  MyModule.ADOQuery5.Parameters.ParamByName('20').Value := VarToStr(XmlQuestion.Attributes['Group_of_factors']);
                  MyModule.ADOQuery5.Parameters.ParamByName('21').Value := VarToStr(XmlQuestion.Attributes['Type_otvet']);
                  MyModule.ADOQuery5.Parameters.ParamByName('22').Value := VarToStr(XmlQuestion.Attributes['Type_obr']);
                  MyModule.ADOQuery5.Parameters.ParamByName('23').Value := VarToStr(XmlQuestion.Attributes['Kolvo_diap']);
                  MyModule.ADOQuery5.Parameters.ParamByName('24').Value := VarToStr(XmlQuestion.Attributes['Question_p']); }
                  MyModule.ADOQuery5.ExecSQL;
                  end;
             end;

        except
        on e:Exception do
        Application.MessageBox('Программа запущена не под администратором','Ошибка');
        end;
        exit;
      MyModule.XMLDocument1.Active := false;
      showmessage('Ипортированно' + '  ' + inttostr(message)+ '  ' + 'тест(a)');
         end;
      end;
    end;
procedure TForm54.FormShow(Sender: TObject);
var Item:TListItem;
begin
  if not MyModule.ADOQuery3.Active then
    MyModule.ADOQuery3.Open;
  MyModule.ADOQuery3.First;
  while not MyModule.ADOQuery3.Eof do
    begin
    Item:=ListView1.Items.Add;
    Item.Caption:=MyModule.ADOQuery3.FieldByName('Nazv').AsString;
    Item.Data := Pointer(MyModule.ADOQuery3.FieldByName('N_testa').AsInteger);
    MyModule.ADOQuery3.Next;
    end;
end;

end.
