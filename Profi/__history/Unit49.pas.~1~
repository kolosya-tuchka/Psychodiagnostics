unit Unit49;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, DB, Data.Win.ADODB, System.Win.ComObj,
  System.ImageList;

type
  TForm49 = class(TForm)
    TreeView1: TTreeView;
    Button1: TButton;
    Button2: TButton;
    ImageList1: TImageList;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeView1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    multiselect:Array of Integer;
    N_glava,N_metod,ms:integer;
    profi:integer;

    { Public declarations }
  end;

var
  Form49: TForm49;

implementation

uses Unit2, Unit50, Unit65, Unit68, Unit69, Unit35, Unit8, Unit62, Unit70;

{$R *.dfm}

procedure TForm49.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if profi=1 then
  begin
  Button1.Visible:=False;
  TreeView1.MultiSelect:=False;
  Label1.Visible:=False;
  Button3.Enabled:=False;
  Button3.Visible:=False;
  CheckBox1.Visible:=True;
  profi:=0;
  Close;
  end
 else
 begin
    CheckBox1.Checked:=False;
    Button1.Enabled:=True;
    TreeView1.MultiSelect:=False;
    Form2.Show;
  end;

end;

procedure TForm49.Button1Click(Sender: TObject);
begin
If (TreeView1.Selected.Parent <> Nil) then
  begin
  N_glava:=TreeView1.Selected.Parent.Index;
  end
else
  begin
  Application.MessageBox('Выберите тест','Внимание');
  exit;
  end;

   if  NOT FileExists(ExtractFilePath(Application.ExeName) +'Profi\test\' + inttostr(N_glava+1) + inttostr(TreeView1.Selected.Index+1) + '.xml')
  then
  begin
  Application.MessageBox('В данный момент методика не доступна. Обратитесь к администратору','Внимание');
   exit;

    end;
case N_glava of
0:begin
case TreeView1.Selected.Index of
  0,1,2,5,6: Begin
   N_metod:= TreeView1.Selected.Index;
   Form50.Label2.Caption:=TreeView1.Selected.Text;
   Form49.Hide;
   Form50.Show;
   end;
   3:Begin
   N_glava:=TreeView1.Selected.Parent.Index;
   N_metod:=TreeView1.Selected.Index;
   Form65.Label2.Caption:=TreeView1.Selected.Text;
   Form49.Hide;
   Form65.Show;
   end;
   4:Begin
   N_glava:=TreeView1.Selected.Parent.Index;
   N_metod:= TreeView1.Selected.Index;
   Form68.Label2.Caption:=TreeView1.Selected.Text;
   Form49.Hide;
   Form68.Show;
   end;
   7:Begin
   N_glava:=TreeView1.Selected.Parent.Index;
   N_metod:= TreeView1.Selected.Index;
   Form69.Label2.Caption:=TreeView1.Selected.Text;
   Form49.Hide;
   Form69.Show;
   end;
end;
end;
1:begin
  case TreeView1.Selected.Index of
   0,1,2,3:Begin
   N_metod:= TreeView1.Selected.Index;
   Form50.Label2.Caption:=TreeView1.Selected.Text;
   Form49.Hide;
   Form50.Show;
   end;
   end;
end;
2:begin
  case TreeView1.Selected.Index of
   0,1,3,4,5,6,7:Begin
   N_metod:= TreeView1.Selected.Index;
   Form50.Label2.Caption:=TreeView1.Selected.Text;
   Form49.Hide;
   Form50.Show;
   end;
   2:begin
   N_metod:= TreeView1.Selected.Index;
   Form70.Label2.Caption:=TreeView1.Selected.Text;
   Form49.Hide;
   Form70.Show;
   end;
   end;
   end;
end;
end;

procedure TForm49.FormShow(Sender: TObject);
var squery:string;
i,j,count,all:integer;
begin
if profi=1 then
  begin
  Button1.Visible:=False;
  TreeView1.MultiSelect:=True;
  Label1.Visible:=True;
  Button3.Enabled:=True;
  Button3.Visible:=True;
  CheckBox1.Visible:=False;
  TreeView1.Refresh;
    for i:=0 to 22 do
    begin
       Treeview1.Items.Item[i].ImageIndex:=-1;
    end;
   for i:=0 to 8 do
    begin
      for j:=0 to 2 do
      begin

      MyModule.ADOQuery1.Close;
      MyModule.ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM admin_profi where N_vlast=' + intToStr(Form62.N_vlast) + ' AND N_metod=' + inttostr(i) + ' AND N_parent=' + inttostr(j);
      MyModule.ADOQuery1.SQL.Text:= squery;
      MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 1) then begin
        if (TreeView1.Items[i+1].Parent<>nil) then
        begin
           case j of
            0:ms:=i+1;
            1:ms:=i+10;
            2:ms:=i+15;
          end;
         Treeview1.Items[ms].ImageIndex:=2;
          end;
       end;
       MyModule.ADOQuery1.Close;
      MyModule.ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM res_prof where N_vlast=' + intToStr(Form62.N_vlast) +  ' AND N_testa=' + inttostr(j+1) + IntToStr(i);
      MyModule.ADOQuery1.SQL.Text:= squery;
      MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 1) then begin
        if (TreeView1.Items[i].Parent<>nil) then
        begin
           case j of
            0:ms:=i;
            1:ms:=i+9;
            2:ms:=i+14;
          end;
         Treeview1.Items[ms].ImageIndex:=1;
          end;
       end;
       end;
       end;
   end
else
begin
TreeView1.Refresh;
Button1.Visible:=True;
Button2.Visible:=True;

  TreeView1.Refresh;
ms:=0;

  for i:=0 to 8 do
    begin
      for j:=0 to 2 do
      begin

      MyModule.ADOQuery1.Close;
      MyModule.ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM admin_profi where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_metod=' + inttostr(i) + ' AND N_parent=' + inttostr(j);
      MyModule.ADOQuery1.SQL.Text:= squery;
      MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 1) then begin
        if (TreeView1.Items[i+1].Parent<>nil) then
        begin
           case j of
            0:ms:=i+1;
            1:ms:=i+10;
            2:ms:=i+15;
          end;
         Treeview1.Items[ms].ImageIndex:=2;
          end;
       end;

      count:=TreeView1.Items.Count;
      MyModule.ADOQuery1.Close;
      MyModule.ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=' + inttostr(j+1) + IntToStr(i);
      MyModule.ADOQuery1.SQL.Text:= squery;
      MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 1) then begin
        if TreeView1.Items[i].Parent<>nil then begin
          case j of
            0:ms:=i;
            1:ms:=i+9;
            2:ms:=i+14;
          end;
          Treeview1.Items[ms].ImageIndex:=1;
          MyModule.ADOQuery1.Close;
          MyModule.ADOQuery1.SQL.Clear;
          squery:= 'DELETE FROM admin_profi where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_metod=' + inttostr(i-1) + ' AND N_parent=' + inttostr(j);
          MyModule.ADOQuery1.SQL.Text:= squery;
          MyModule.ADOQuery1.ExecSQL;

          end
        end;
      end;
       end;
    end;
    TreeView1.Refresh;
end;

procedure TForm49.TreeView1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
begin
  TreeView1.Selected.SelectedIndex:=TreeView1.Selected.ImageIndex
end;
procedure TForm49.CheckBox1Click(Sender: TObject);
begin
If CheckBox1.Checked=False then
  begin
    Button1.Enabled:=True;
    TreeView1.MultiSelect:=False;
    Label1.Visible:=False;
  end
else
begin
  Button1.Enabled:=False;
  TreeView1.MultiSelect:=True;
  Label1.Visible:=True;
  end;
end;

procedure TForm49.Button2Click(Sender: TObject);
var
    i,j,countlabel,parent:integer;
    Word: variant;
    Doc: variant;
    S: variant;
    squery:string;
begin
  for i:=0 to TreeView1.SelectionCount-2  do
    begin
     if TreeView1.Selections[i].Parent<>TreeView1.Selections[i+1].Parent then
      begin
      Application.MessageBox('Выберите методики из одной части','Внимание');
      exit;
      end;
    end;
 
If (TreeView1.Selections[i].Parent <> Nil) then
  begin
  N_glava:=TreeView1.Selected.Parent.Index;
  end
else
  begin
  Application.MessageBox('Выберите тест','Внимание');
  exit;
  end;

i:=0;
  SetLength(multiselect,TreeView1.SelectionCount);
  for i:=0 to TreeView1.SelectionCount-1 do
    begin
      multiselect[i]:=TreeView1.Selections[i].Index;
       with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results,Res_Data FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=' + inttostr(N_glava+1) + inttostr(multiselect[i]+1);
        SQL.Text:= squery;
        open;
        first;
     end;
     { except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;  }

     if MyModule.ADOQuery1.RecordCount=0 then
     begin
      Application.MessageBox('Данная методика не пройдена','Ошибка');
      exit;
     end;
    end;

     
     try
    Word := CreateOleObject('Word.Application');
    Doc:=Word.Documents.Add;

  except
    ShowMessage('Невозможно создать документ Microsoft Word');
  end;
 Word.Visible := True;
S:=Word.Selection;
for i:=0 to TreeView1.SelectionCount-1 do
  begin
Case Form49.N_glava of
  0:begin
    Case multiselect[i] of
    1,3,4,5,6,7:begin
       try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results,Res_Data FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=1' + inttostr(multiselect[i]+1);
        SQL.Text:= squery;
        open;
        first;
     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;

S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(TreeView1.Items[multiselect[i]+1].Text);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(MyModule.ADOQuery1.Fields[1].AsString);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=0;
S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);
if i <> TreeView1.SelectionCount-1 then
begin
s.InsertBreak;
end;
end;
   0,2:begin
   if multiselect[i]=0 then
      countlabel:=3
    else
      begin
       countlabel:=5;
      end;
       try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results,Res_Data FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=1' + inttostr(multiselect[i]+1);
        SQL.Text:= squery;
        open;
        first;
     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
         if MyModule.ADOQuery1.RecordCount=0 then
     begin
      Application.MessageBox('Данная методика не пройдена','Ошибка');
      exit;
     end;
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(TreeView1.Items[multiselect[i]+1].Text);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(MyModule.ADOQuery1.Fields[1].AsString);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=0;
S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);
j:=1;
  for j:=1 to countlabel do
    try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=1' + inttostr(multiselect[i]+1) + inttostr(j);
        SQL.Text:= squery;
        open;
        first;
        S.ParagraphFormat.Alignment:=0;
        S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);

     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
if i <> TreeView1.SelectionCount-1 then
begin
  s.InsertBreak;
 end;
end;
     end;

 end;
 1:begin
  Case multiselect[i] of
    0:begin
       try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results,Res_Data FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=2' + inttostr(multiselect[i]+1);
        SQL.Text:= squery;
        open;
        first;
     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
         if MyModule.ADOQuery1.RecordCount=0 then
     begin
      Application.MessageBox('Данная методика не пройдена','Ошибка');
      exit;
     end;
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(TreeView1.Items[multiselect[i]+10].Text);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(MyModule.ADOQuery1.Fields[1].AsString);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=0;
S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);
if i <> TreeView1.SelectionCount-1 then
begin
s.InsertBreak;
end;
end;
   1,2,3:begin
   
    case multiselect[i] of
      1:countlabel:=4;
      2:countlabel:=6;
      3:countlabel:=3;
    end;
       try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results,Res_Data FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=2' + inttostr(multiselect[i]+1);
        SQL.Text:= squery;
        open;
        first;
     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
         if MyModule.ADOQuery1.RecordCount=0 then
     begin
      Application.MessageBox('Данная методика не пройдена','Ошибка');
      exit;
     end;
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(TreeView1.Items[multiselect[i]+10].Text);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(MyModule.ADOQuery1.Fields[1].AsString);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=0;
S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);
j:=1;
  for j:=1 to countlabel do
    try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=2' + inttostr(multiselect[i]+1) + inttostr(j);
        SQL.Text:= squery;
        open;
        first;
        S.ParagraphFormat.Alignment:=0;
        S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);

     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
if i <> TreeView1.SelectionCount-1 then
begin
  s.InsertBreak;
 end;
end;
     end;


 end;
 2:begin
  Case multiselect[i] of
    2,3,4,5,6,7:begin
       try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results,Res_Data FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=3' + inttostr(multiselect[i]+1);
        SQL.Text:= squery;
        open;
        first;
     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
         if MyModule.ADOQuery1.RecordCount=0 then
     begin
      Application.MessageBox('Данная методика не пройдена','Ошибка');
      exit;
     end;
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(TreeView1.Items[multiselect[i]+15].Text);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(MyModule.ADOQuery1.Fields[1].AsString);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=0;
S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);
if i <> TreeView1.SelectionCount-1 then
begin
s.InsertBreak;
end;
end;
   0,1:begin
   
    case multiselect[i] of
      0:countlabel:=4;
      1:countlabel:=6;

    end;
       try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results,Res_Data FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=3' + inttostr(multiselect[i]+1);
        SQL.Text:= squery;
        open;
        first;
     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
         if MyModule.ADOQuery1.RecordCount=0 then
     begin
      Application.MessageBox('Данная методика не пройдена','Ошибка');
      exit;
     end;
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=18;
S.ParagraphFormat.Alignment:=1;
S.TypeText(TreeView1.Items[multiselect[i]+15].Text);
S.TypeParagraph;
S.Font.Bold := 0;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=3;
S.Font.Bold := 1;
S.TypeText('Пользователь: ' );
S.Font.Bold := 0;
S.TypeText(Form2.label3.caption);
S.TypeParagraph;
S.Font.Bold := 1;
S.TypeText('Время прохождения: ');
S.Font.Bold := 0;
S.TypeText(MyModule.ADOQuery1.Fields[1].AsString);
S.TypeParagraph;
S.Font.Bold := 1;
S.ParagraphFormat.Alignment:=3;
S.TypeText('Результаты: ');
S.TypeParagraph;
S.Font.Bold := 1;
S.Font.Size:=14;
S.ParagraphFormat.Alignment:=0;
S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);
j:=1;
  for j:=1 to countlabel do
    try
    with MyModule.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        squery:= 'SELECT Results FROM Res_prof WHERE N_vlast=' +IntToStr(Form8.id_vlast) + ' AND N_testa=3' + inttostr(multiselect[i]+1) + inttostr(j);
        SQL.Text:= squery;
        open;
        first;
        S.ParagraphFormat.Alignment:=0;
        S.TypeText(MyModule.ADOQuery1.Fields[0].AsString);

     end;
      except
        Application.MessageBox('Ошибка при работе с базой данный, перезапустите приложение','Ошибка')
      end;
if i <> TreeView1.SelectionCount-1 then
begin
  s.InsertBreak;
 end;
end;
     end;


 end;
 end;

end;
TreeView1.Refresh;
end;
procedure TForm49.Button3Click(Sender: TObject);
var i:integer;
squery:string;
multisel:Array of Array of Integer;
begin
SetLength(multisel,TreeView1.SelectionCount,2);
for i:=0 to TreeView1.SelectionCount-1 do
begin
If (TreeView1.Selections[i].Parent <> Nil) then
  begin
    multisel[i,0]:=TreeView1.Selections[i].Index;
    multisel[i,1]:=TreeView1.Selected.Parent.Index;
    MyModule.ADOQuery1.SQL.Clear;
    squery:= 'SELECT * FROM res_prof where N_vlast=' + intToStr(Form62.N_vlast) +  ' AND N_testa=' + inttostr(multisel[i,1]+1) + IntToStr(multisel[i,0]+1);
    MyModule.ADOQuery1.SQL.Text:= squery;
     MyModule.ADOQuery1.open;
       if (MyModule.ADOQuery1.RecordCount = 1) then begin
          Application.MessageBox('Данная методика уже пройдена данным пользователем', 'Предупреждение');
      exit;

    end;

    MyModule.ADOQuery1.SQL.Clear;
    squery:= 'SELECT * FROM admin_profi where N_vlast=' + intToStr(Form62.N_vlast) + ' AND N_metod=' + inttostr(multisel[i,0]) + ' AND N_parent=' + inttostr(multisel[i,1]);
    MyModule.ADOQuery1.SQL.Text:= squery;
     MyModule.ADOQuery1.open;
       if (MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form62.N_vlast;
          MyModule.ADOQuery1.FieldByName('N_metod').AsInteger:=multisel[i,0];
          MyModule.ADOQuery1.FieldByName('N_parent').AsInteger:=multisel[i,1];
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;
          TreeView1.Refresh;
    end
    else
    begin
    Application.MessageBox('Данная методика уже добавлена', 'Предупреждение');
    exit;
    end;

  end
else
  begin
  Application.MessageBox('Выберите методику!','Внимание');
  exit;
  end;

 end;
 Form49.FormShow(Form49);
 Application.MessageBox('Выбранные методики добавлены', 'Готово');
end;

end.
