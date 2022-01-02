unit Result;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, Grids, DBGrids, Data.Win.ADODB, StdCtrls, System.Win.ComObj;

type
  TResults = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    TestsGrid: TDBGrid;
    Button2: TButton;
    Label2: TLabel;
    ComboBox2: TComboBox;
   
    procedure FormShow(Sender: TObject);

    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);


  private
  stroka:string;
    { Private declarations }
  public
     c,r,n_testa,Cells, mode:Integer;

    { Public declarations }
  end;

var
  Results: TResults;

  mas: array of array of  integer;
implementation
 uses Unit20, Unit10, Unit13, Unit17, Unit19, Unit23, StartTest, Result_Graph,
  Unit27,Unit35, Unit62;
{$R *.dfm}



procedure TResults.FormShow(Sender: TObject);
begin
ComboBox1.Clear;
ComboBox2.Clear;
with ComboBox2.Items do begin
  Add('Лучшие результаты');
  Add('Все результаты');
end;
MyModule.ADOQuery1.SQL.Clear;
if not MyModule.ADOConnection1.Connected then
 begin
MyModule.ADOConnection1.ConnectionString := Form27.ConnectionString;
MyModule.ADOConnection1.Connected:=true;
end;
 try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT Name_test FROM Test_app');
    ADOQuery1.Active:=True;

while not ADOQuery1.Eof do
    begin
    ComboBox1.Items.Add(ADOQuery1.FieldByName('Name_test').AsString);
     ADOQuery1.Next;
 end;

except
on e:Exception do
Application.MessageBox('Ошибка базы данных','Ошибка');
end;
exit;
end;

procedure TResults.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TResults.ComboBox2Change(Sender: TObject);
begin

if Combobox2.Text ='Лучшие результаты' then mode := 0
else if Combobox2.Text = 'Все результаты' then mode := 1;

if (Combobox1.Text <> '') then Combobox1Change(self);
end;

procedure TResults.ComboBox1Change(Sender: TObject);
var s,fname,nabor,squery:string;
    i,x,w,por,n,kolvo,kolvo_in,lich,kolvo_otvetov:integer;
    F: TextFile;
    MaxWidth,coll,roww:Integer;
    sum,sum1,sum2,sum3:integer;

begin
if (Combobox1.Text = '') then exit;

  with MyModule do begin
  if mode = 0 then begin
  ADOQuery1.SQL.Clear;
  squery:= 'SELECT * FROM BestResults, People WHERE Name_test=:name AND People.N_vlast = BestResults.N_vlast';
  ADOQuery1.SQL.Add(squery);
  ADOQuery1.SQL.Add('ORDER BY Score DESC');
  ADOQuery1.Parameters.ParamByName('name').Value := Combobox1.Text;
  ADOQuery1.ExecSQL;
  ADOQuery1.Open;
  end
  else if mode = 1 then begin
  ADOQuery1.SQL.Clear;
  squery:= 'SELECT * FROM Result, People WHERE Name_test=:name AND People.N_vlast = Result.N_vlast';
  ADOQuery1.SQL.Add(squery);
  ADOQuery1.SQL.Add('ORDER BY Result_Data DESC');
  ADOQuery1.Parameters.ParamByName('name').Value := Combobox1.Text;
  ADOQuery1.ExecSQL;
  ADOQuery1.Active:=True;
  end;
  {ADOQuery2.SQL.Clear;
  squery:= 'SELECT * FROM BestResults WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery2.SQL.Add(squery);
  ADOQuery2.SQL.Add('ORDER BY Score DESC');
  ADOQuery2.Open;
  //ADOQuery2.First;
  while (not ADOQuery2.Eof) do begin
  n := ADOQuery2.Fields[0].AsInteger;
  //ADOQuery1.SQL.Clear;
  squery:= 'SELECT Familia AND Imi FROM People WHERE N_vlast='+IntToStr(n);
  ADOQuery1.SQL.Add(squery);
  ADOQuery1.ExecSQL;
  //ADOQuery1.Active:=True;
  ADOQuery2.Next;
  end;   }

  end;
  //n_testa:=ADOQuery1.Fields[1].AsInteger;

  {if (n_testa = 0) then
    begin
      ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM Test WHERE Nazv='+QuotedStr(ComboBox1.Text);
      ADOQuery1.SQL.Text:= squery;
      ADOQuery1.Open;
      ADOQuery1.First;
      ADOQuery1.Active:=True;
      n_testa:= ADOQuery1.Fields[0].AsInteger;

      ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM Test_Information WHERE N_testa='+intTostr(n_testa);
      ADOQuery1.SQL.Text:= squery;
      ADOQuery1.Open;
      ADOQuery1.First;
      ADOQuery1.Active:=True;

      c:=ADOQuery1.Fields[4].AsInteger + 1;
      r:=ADOQuery1.Fields[2].AsInteger + 1;
      StringGrid1.ColCount := c;
      StringGrid1.RowCount := r;
      For i:= 1 To StringGrid1.RowCount - 1 Do
        begin
          StringGrid1.Cells[0,i]:=ADOQuery1.Fields[3].AsString;
          ADOQuery1.Next;
        end;
      ADOQuery1.SQL.Clear;
      squery:= 'SELECT * FROM Test_Information WHERE N_testa='+intTostr(n_testa);
      ADOQuery1.SQL.Text:= squery;
      ADOQuery1.Open;
      ADOQuery1.First;
      ADOQuery1.Active:=True;

      For i:=1 to c-1 do
        begin
          kolvo_otvetov:= i+4;
          StringGrid1.Cells[i, 0] :=ADOQuery1.Fields[kolvo_otvetov].AsString;
        end;
      SetLength(mas,r-1,c-1);

      For i:=0 to r-2 do
        begin
          For n:=0 to c-2 do
            begin
            mas[i,n]:=0;
            end;
        end;

      ADOQuery1.SQL.Clear;
      squery:= 'SELECT Choice FROM Result WHERE N_testa='+intTostr(n_testa);
      ADOQuery1.SQL.Text:= squery;
      ADOQuery1.Open;
      ADOQuery1.First;
      ADOQuery1.Active:=True;
      kolvo:=ADOQuery1.RecordCount;
      Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';

      case c-1 of
      2: begin
        while not ADOQuery1.Eof do
          begin
         nabor:=ADOQuery1.Fields[0].AsString;
         n:=1;
        For i:=0 to r-2 do
          begin
            por:= strToInt(nabor[n]);
            case por of
            1:begin
              sum:= mas [i,0];
              sum:= sum + 1;
              mas [i,0]:=sum;
            end;
            2:begin
              sum:= mas [i,1];
              sum:= sum + 1;
              mas [i,1]:=sum;
            end;
            end;
        n:=n+2;
        end;
       ADOQuery1.Next;
      end;
    end;
      3: begin
        while not ADOQuery1.Eof do
          begin
         nabor:=ADOQuery1.Fields[0].AsString;
         n:=1;
        For i:=0 to r-2 do
          begin
            por:= strToInt(nabor[n]);
            case por of
            1:begin
              sum:= mas [i,0];
              sum:= sum + 1;
              mas [i,0]:=sum;
            end;
            2:begin
              sum:= mas [i,1];
              sum:= sum + 1;
              mas [i,1]:=sum;
            end;
            3:begin
              sum:= mas [i,2];
              sum:= sum + 1;
              mas [i,2]:=sum;
            end;
            end;
        n:=n+2;
        end;
       ADOQuery1.Next;
      end;
    end;
     4: begin
        while not ADOQuery1.Eof do
          begin
         nabor:=ADOQuery1.Fields[0].AsString;
         n:=1;
        For i:=0 to r-2 do
          begin
            por:= strToInt(nabor[n]);
            case por of
            1:begin
              sum:= mas [i,0];
              sum:= sum + 1;
              mas [i,0]:=sum;
            end;
            2:begin
              sum:= mas [i,1];
              sum:= sum + 1;
              mas [i,1]:=sum;
            end;
            3:begin
              sum:= mas [i,2];
              sum:= sum + 1;
              mas [i,2]:=sum;
            end;
            4:begin
              sum:= mas [i,3];
              sum:= sum + 1;
              mas [i,3]:=sum;
            end;
            end;
        n:=n+2;
        end;
       ADOQuery1.Next;
      end;
    end;
    5: begin
        while not ADOQuery1.Eof do
          begin
         nabor:=ADOQuery1.Fields[0].AsString;
         n:=1;
        For i:=0 to r-2 do
          begin
            por:= strToInt(nabor[n]);
            case por of
            1:begin
              sum:= mas [i,0];
              sum:= sum + 1;
              mas [i,0]:=sum;
            end;
            2:begin
              sum:= mas [i,1];
              sum:= sum + 1;
              mas [i,1]:=sum;
            end;
            3:begin
              sum:= mas [i,2];
              sum:= sum + 1;
              mas [i,2]:=sum;
            end;
            4:begin
              sum:= mas [i,3];
              sum:= sum + 1;
              mas [i,3]:=sum;
            end;
            5:begin
              sum:= mas [i,4];
              sum:= sum + 1;
              mas [i,4]:=sum;
            end;
            end;
        n:=n+2;
        end;
       ADOQuery1.Next;
      end;
    end;
   end;

  For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;
 end;
  case n_testa of
  1:begin
  c:=5;
  r:=21;

  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;



  for i:=1 to c-1 do
  begin
    StringGrid1.Cells[i, 0] :=Form20.RadioGroup1.Items[i-1];
  end;
begin
  fname:=ExtractFilePath(Application.ExeName) +'Test7\VOPROS.txt';
  AssignFile(F, fname);
  Reset(F);
  For i:= 1 To StringGrid1.RowCount - 1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;

MaxWidth := 0;
  for x := 0 to StringGrid1.RowCount - 1 do
  begin
    w := Canvas.TextWidth(StringGrid1.Cells[0,x]);
      if w > MaxWidth then
        MaxWidth := w;
  end;
MaxWidth := trunc(MaxWidth *1.5+10);
StringGrid1.ColWidths[0] := MaxWidth;
SetLength(mas,r-1,c-1);

 For i:=0 to r-2 do
    begin
      For n:=0 to c-2 do
        begin
        mas[i,n]:=0;
        end;
    end;

  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
       n:=1;
      For i:=0 to r-2 do
        begin

        por:= strToInt(nabor[n]);
        case por of
         0:begin
          sum:= mas [i,0];
          sum:= sum + 1;
          mas [i,0]:=sum ;
          end;
         1:begin
          sum1:= mas [i,1];
          sum1:= sum1 + 1;
          mas [i,1]:=sum1;
          end;
         2:begin
          sum2:= mas [i,2];
          sum2:= sum2 + 1;
          mas [i,2]:=sum2;
          end;
         3:begin
          sum3:= mas [i,3];
          sum3:= sum3 + 1;
          mas [i,3]:=sum3;
          end;

        end;
        n:=n+2;
   end;
   ADOQuery1.Next;
   end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;

end;
2:begin
  c:=3;
  r:=102;


  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;


  for i:=1 to c-1 do
  begin
    StringGrid1.Cells[i, 0] :=Form10.RadioGroup1.Items[i-1];
  end;
begin
  fname:=ExtractFilePath(Application.ExeName) +'Test2\VOPROS.txt';
  AssignFile(F, fname);
  Reset(F);
  For i:= 1 To StringGrid1.RowCount - 1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;
StringGrid1.ColWidths[0] := 950;
SetLength(mas,r-1,c-1);

  For i:=0 to r-2 do
    begin
      For n:=0 to c-2 do
        begin
        mas[i,n]:=0;
        end;
    end;

  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
       n:=1;
      For i:=0 to r-2 do
        begin

        por:= strToInt(nabor[n]);
        case por of
         0:begin
          sum:= mas [i,1];
          sum:= sum + 1;
          mas [i,1]:=sum ;
          end;
         1:begin
          sum1:= mas [i,0];
          sum1:= sum1 + 1;
          mas [i,0]:=sum1;
          end;

        end;
        n:=n+2;
   end;
   ADOQuery1.Next;
   end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;

end;
3:begin
  c:=3;
  r:=109;

  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;

  StringGrid1.Cells[1, 0] :=Form13.Label2.Caption;
  StringGrid1.Cells[2, 0] :=Form13.Label3.Caption;

begin
  fname:=ExtractFilePath(Application.ExeName) +'Test4\vopr.txt';
  AssignFile(F, fname);
  Reset(F);
  For i:= 1 To StringGrid1.RowCount-1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;

MaxWidth := 0;
  for x := 0 to StringGrid1.RowCount - 1 do
  begin
    w := Canvas.TextWidth(StringGrid1.Cells[0,x]);
      if w > MaxWidth then
        MaxWidth := w;
  end;
MaxWidth := trunc(MaxWidth *1.5-100);
StringGrid1.ColWidths[0] := MaxWidth;
SetLength(mas,r-1,c-1);

  For i:=0 to r-2 do
    begin
      For n:=0 to c-2 do
        begin
        mas[i,n]:=0;
        end;
    end;

  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
       n:=1;
       i:=0;
      while i <> r-1 do
        begin

        por:= strToInt(nabor[n]);
        case por of
         0:begin
          sum:= mas [i+1,0];
          sum:= sum + 1;
          mas [i+1,0]:=sum ;

          end;
         1:begin
          sum1:= mas [i+2,0];
          sum1:= sum1 + 1;
          mas [i+2,0]:=sum1;
          end;
         2:begin
          sum2:= mas [i+3,0];
          sum2:= sum2 + 1;
          mas [i+3,0]:=sum2;
          end;

        end;
        n:=n+2;
        i:=i+4;
   end;

   ADOQuery1.Next;
   end;
  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE N_testa=-3.1';
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;

  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
       n:=1;
       i:=0;
      while i <> r-1 do
        begin

        por:= strToInt(nabor[n]);
        case por of
         0:begin
          sum:= mas [i+1,1];
          sum:= sum + 1;
          mas [i+1,1]:=sum ;
          end;
         1:begin
          sum1:= mas [i+2,1];
          sum1:= sum1 + 1;
          mas [i+2,1]:=sum1;
          end;
         2:begin
          sum2:= mas [i+3,1];
          sum2:= sum2 + 1;
          mas [i+3,1]:=sum2;
          end;

        end;
        n:=n+2;
        i:=i+4;
   end;
   i:=i+3;
   ADOQuery1.Next;
   end;

For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;

i:=1;
while i<>r do
  begin
    n:=1;
    while n<>c do
      begin
      StringGrid1.Cells[n,i]:='';
      n:=n+1;
      end;
  i:=i+4;
end;
end;

  4:begin
  c:=3;
  r:=33;

  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;



begin
  fname:=ExtractFilePath(Application.ExeName) +'Test5\vopr.txt';
  AssignFile(F, fname);
  Reset(F);

  For i:= 1 To StringGrid1.RowCount - 1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;

MaxWidth := 0;
  for x := 0 to StringGrid1.RowCount - 1 do
  begin
    w := Canvas.TextWidth(StringGrid1.Cells[0,x]);
      if w > MaxWidth then
        MaxWidth := w;
  end;
MaxWidth := trunc(MaxWidth -100);
StringGrid1.ColWidths[0] := MaxWidth;
SetLength(mas,r-1,c-1);

 For i:=0 to r-2 do
    begin
      For n:=0 to c-2 do
        begin
        mas[i,n]:=0;
        end;
    end;

  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
    n:=1;
       i:=0;
      while i <> r-1 do
        begin

        por:= strToInt(nabor[n]);
        case por of
          1:begin
          sum1:= mas [i,0];
          sum1:= sum1 + 1;
          mas [i,0]:=sum1;
          end;
         2:begin
          sum2:= mas [i+1,1];
          sum2:= sum2 + 1;
          mas [i+1,1]:=sum2;
          end;

        end;
        n:=n+2;
        i:=i+2;
   end;
   ADOQuery1.Next;
   end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;

i:=1;
while i<> r do
  begin
  StringGrid1.Cells[2,i]:='';
  i:=i+2;
  end;
i:=2;
while i<> r+1 do
  begin
  StringGrid1.Cells[1,i]:='';
  i:=i+2;
  end;
end;

  5:begin
  c:=3;
  r:=89;

  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;



  for i:=1 to c-1 do
  begin
    StringGrid1.Cells[i, 0] :=Form17.RadioGroup1.Items[i-1];
  end;
begin
  fname:=ExtractFilePath(Application.ExeName) +'Test6\vopros.txt';
  AssignFile(F, fname);
  Reset(F);

  For i:= 1 To StringGrid1.RowCount - 1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;

MaxWidth := 0;
  for x := 0 to StringGrid1.RowCount - 1 do
  begin
    w := Canvas.TextWidth(StringGrid1.Cells[0,x]);
      if w > MaxWidth then
        MaxWidth := w;
  end;
MaxWidth := trunc(MaxWidth -100);
StringGrid1.ColWidths[0] := MaxWidth;
SetLength(mas,r-1,c-1);

For i:=0 to r-2 do
    begin
      For n:=0 to c-2 do
        begin
        mas[i,n]:=0;
        end;
    end;

  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
    n:=1;
       i:=0;
      while i <> r-1 do
        begin

        por:= strToInt(nabor[n]);
        case por of
          0:begin
          sum1:= mas [i,1];
          sum1:= sum1 + 1;
          mas [i,1]:=sum1;
          end;
          1:begin
          sum2:= mas [i,0];
          sum2:= sum2 + 1;
          mas [i,0]:=sum2;
          end;

        end;
        n:=n+2;
        i:=i+1;
   end;
   ADOQuery1.Next;
   end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;

end;
  6:begin
  c:=3;
  r:=61;

  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;
  for i:=1 to c-1 do
  begin
    StringGrid1.Cells[i, 0] :=Form19.RadioGroup1.Items[i-1];
  end;
begin
  fname:=ExtractFilePath(Application.ExeName) +'Test3\VOPROS.txt';
  AssignFile(F, fname);
  Reset(F);

  For i:= 1 To StringGrid1.RowCount - 1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;

MaxWidth := 0;
  for x := 0 to StringGrid1.RowCount - 1 do
  begin
    w := Canvas.TextWidth(StringGrid1.Cells[0,x]);
      if w > MaxWidth then
        MaxWidth := w;
  end;
MaxWidth := trunc(MaxWidth*1.5);
StringGrid1.ColWidths[0] := MaxWidth;
SetLength(mas,r-1,c-1);

For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    mas[i,n]:=0;
    end;
  end;

  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
    n:=1;
       i:=0;
      while i <> r-1 do
        begin

        por:= strToInt(nabor[n]);
        case por of
          0:begin
          sum1:= mas [i,1];
          sum1:= sum1 + 1;
          mas [i,1]:=sum1;
          end;
          1:begin
          sum2:= mas [i,0];
          sum2:= sum2 + 1;
          mas [i,0]:=sum2;
          end;

        end;
        n:=n+2;
        i:=i+1;
   end;
   ADOQuery1.Next;
   end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';

    end;
  end;

end;
{-8:begin
  c:=8;
  r:=31;

  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;
  for i:=1 to c-1 do
  begin
    StringGrid1.Cells[i, 0] :=Form19.RadioGroup1.Items[i-1];
  end;
begin
  fname:=ExtractFilePath(Application.ExeName) +'Test8\vopr.txt';
  AssignFile(F, fname);
  Reset(F);

  For i:= 1 To StringGrid1.RowCount - 1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;

MaxWidth := 0;
  for x := 0 to StringGrid1.RowCount - 1 do
  begin
    w := Canvas.TextWidth(StringGrid1.Cells[0,x]);
      if w > MaxWidth then
        MaxWidth := w;
  end;
MaxWidth := trunc(MaxWidth*1.5);
StringGrid1.ColWidths[0] := MaxWidth;
{SetLength(mas,r-1,c-1);

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text));
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label3.Caption:=intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
    n:=1;
       i:=0;
      while i <> r-1 do
        begin

        por:= strToInt(nabor[n]);
        case por of
          0:begin
          sum1:= mas [i,1];
          sum1:= sum1 + 1;
          mas [i,1]:=sum1;
          end;
          1:begin
          sum2:= mas [i,0];
          sum2:= sum2 + 1;
          mas [i,0]:=sum2;
          end;

        end;
        n:=n+2;
        i:=i+1;
   end;
   ADOQuery1.Next;
   end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    mas[i,n]:=0;
    end;
  end;
end;
9:begin
  c:=5;
  r:=42;

  StringGrid1.ColCount := c;
  StringGrid1.RowCount := r;
  for i:=1 to c-1 do
  begin
    StringGrid1.Cells[i, 0] :=Form23.RadioGroup1.Items[i-1];
  end;
begin
  fname:=ExtractFilePath(Application.ExeName) +'Test9\VOPROS.txt';
  AssignFile(F, fname);
  Reset(F);

  For i:= 1 To StringGrid1.RowCount - 22 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;
begin
  fname:=ExtractFilePath(Application.ExeName) +'Test9\VOPROS1.txt';
  AssignFile(F, fname);
  Reset(F);

  For i:= 22 To StringGrid1.RowCount - 1 Do
  begin
    Readln(F, S);
    StringGrid1.Cells[0,i]:= S;
  end;
  CloseFile(F);
end;

MaxWidth := 0;
  for x := 0 to StringGrid1.RowCount - 1 do
  begin
    w := Canvas.TextWidth(StringGrid1.Cells[0,x]);
      if w > MaxWidth then
        MaxWidth := w;
  end;
MaxWidth := trunc(MaxWidth*1.5);
StringGrid1.ColWidths[0] := MaxWidth;
StringGrid1.ColWidths[1] := 120;
StringGrid1.ColWidths[2] := 100;
StringGrid1.ColWidths[3] := 100;
StringGrid1.ColWidths[4] := 100;
StringGrid1.Cells[0,21]:='';
SetLength(mas,r-1,c-1);

For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    mas[i,n]:=0;
    end;
  end;

  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
  kolvo:=ADOQuery1.RecordCount;
  Label2.Caption:=Label2.Caption + ' ' + intTostr(kolvo) + ' ' + 'человек(а)';
  while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
    n:=1;
       i:=0;
      while i <> r-22 do
        begin

        por:= strToInt(nabor[n]);
        case por of
          1:begin
          sum:= mas [i,0];
          sum:= sum + 1;
          mas [i,0]:=sum;
          end;
          2:begin
          sum:= mas [i,1];
          sum:= sum + 1;
          mas [i,1]:=sum;
          end;
          3:begin
          sum:= mas [i,2];
          sum:= sum + 1;
          mas [i,2]:=sum;
          end;
          4:begin
          sum:= mas [i,3];
          sum:= sum + 1;
          mas [i,3]:=sum;
          end;

        end;
        n:=n+2;
        i:=i+1;
   end;
   ADOQuery1.Next;
   end;

  For i:=0 to 3 do
    begin
    mas[20,i]:=0;
    end;
  ADOQuery1.SQL.Clear;
  squery:= 'SELECT Choice FROM Result WHERE Name_test='+QuotedStr(ComboBox1.Text);
  ADOQuery1.SQL.Text:= squery;
  ADOQuery1.Open;
  ADOQuery1.First;
  ADOQuery1.Active:=True;
while not ADOQuery1.Eof do
    begin
    nabor:=ADOQuery1.Fields[0].AsString;
    n:=41;
       i:=21;
      while i <> r-1 do
        begin

        por:= strToInt(nabor[n]);
        case por of
          1:begin
          sum:= mas [i,0];
          sum:= sum + 1;
          mas [i,0]:=sum;
          end;
          2:begin
          sum:= mas [i,1];
          sum:= sum + 1;
          mas [i,1]:=sum;
          end;
          3:begin
          sum:= mas [i,2];
          sum:= sum + 1;
          mas [i,2]:=sum;
          end;
          4:begin
          sum:= mas [i,3];
          sum:= sum + 1;
          mas [i,3]:=sum;
          end;

        end;
        n:=n+2;
        i:=i+1;
   end;
   ADOQuery1.Next;
   end;
For i:=0 to r-2 do
  begin
  For n:=0 to c-2 do
    begin
    kolvo_in:=trunc(mas[i,n]*100/kolvo);
    StringGrid1.Cells[n+1,i+1]:=intTostr(kolvo_in) + '%' + '(' + intTostr(mas[i,n]) + ')';
    end;
  end;
for i:=1 to c-1 do
  begin
    StringGrid1.Cells[i, 21] :=Form23.RadioGroup2.Items[i-1];
  end;

end;
end; }

end;
procedure TResults.Button1Click(Sender: TObject);
var i,j:integer;
begin

 Results.hide;
    try
      Res_Gr :=TRes_Gr.Create(nil);
      SetLength(Res_Gr.mas_diag,r-1,c-1);
      for i:=0 to r-2 do
      begin
        for j:=0 to c-2 do
        begin
          Res_Gr.mas_diag[i,j]:=mas[i,j];
        end;
      end;
      Button1.Visible:=False;
      Button1.Enabled:=False;
  //    Res_Gr.Label1.Caption:='Тест:' + ' ' + stroka;
   //   Res_Gr.Label2.Caption:='Вопрос:' + ' ' + StringGrid1.Cells[0,Cells];
  //    Res_Gr.ShowModal;
    finally
      freeandnil(Res_Gr);
    end;
   Results.Show;
end;

procedure TResults.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
Cells :=ARow;
Button1.Visible:=True;
Button1.Enabled:=True;
end;


end.

