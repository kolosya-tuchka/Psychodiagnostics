unit Unit58;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, DBCtrls,JPEG,DB, Data.Win.ADODB;

type
  TForm58 = class(TForm)
       Question: TLabel;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    Button7: TButton;
    Label4: TLabel;
    N2: TMenuItem;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public N:Integer;  // N - ???-?? ???????? ? ?????
  otv1,otv2,otv3,otv4,otv5:string;
    { Public declarations }

    metka,type_obr:integer;
    opis:string;
      Numeretic:integer;
  end;

var
  Form58: TForm58;
   i:integer;
  Opis:String;
  Results :Array[1..200] of Integer;

  Bal1,Bal2,Bal3,bal4,bal5 :Integer;
  D1,D2:Integer;
  res:String;

  TypeObr:Integer;
  Itog:Integer;
  ID:Integer;


implementation

uses Unit35, Unit34, Unit37, Unit39, Unit28, Unit38, Unit88, StartTest;

{$R *.dfm}

procedure TForm58.FormCreate(Sender: TObject);
begin
i:=0; Itog:=0;
ID:=0;

end;

procedure TForm58.Button1Click(Sender: TObject);
var
blobstream : TADOBlobStream;
    jpeg       : TJPEGImage;
myDate,squery:string;
begin
i:=i+1;
if radiobutton1.Checked then
     results[i]:=1;
if radiobutton2.Checked then
     results[i]:=2;
if radiobutton3.Checked then
     results[i]:=3;
if radiobutton5.Checked then
     results[i]:=4;
if radiobutton5.Checked then
     results[i]:=5;
If i<Form58.N then
 begin
    ID:=ID+1;

    with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:='Select question,otv1,otv2,otv3,otv4,otv5,kol_otvet,Question_p from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       Form58.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
       otv1:=MyModule.ADOQuery2.Fields[1].AsString;
       otv2:=MyModule.ADOQuery2.Fields[2].AsString;
       otv3:=MyModule.ADOQuery2.Fields[3].AsString;
       otv4:=MyModule.ADOQuery2.Fields[4].AsString;
       otv5:=MyModule.ADOQuery2.Fields[5].AsString;
     end;

     Form58.radiobutton1.caption:=otv1;
     Form58.RadioButton1.Checked:=true;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>1 then
     begin
     Form58.radiobutton2.caption:=otv2;
     Form58.radiobutton2.Visible:=true;

     end;
      if  MyModule.ADOQuery2.Fields[6].AsInteger>2 then
     begin
     Form58.radiobutton3.caption:=otv3;
     Form58.radiobutton3.Visible:=true;

     end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>3 then
     begin
     Form58.radiobutton4.caption:=otv4;
     Form58.radiobutton4.Visible:=true;

     end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>4 then
     begin
     Form58.radiobutton5.caption:=otv5;
     Form58.radiobutton5.Visible:=true;

     end;

     if MyModule.ADOQuery2.Fields[7].AsInteger <> 0   then
     begin
     MyModule.ADOQuery1.SQL.Text   := 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(numeretic) +  ' AND N_vopros=' +  IntToStr(i) ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_quest').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_quest')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form58.Image1.Picture.Bitmap.Assign(jpeg);
        finally
        jpeg.Free;
        blobstream.Free;
      end;
      end;
   Form58.Image1.Visible:=true;
    end
     else
     Form58.Image1.Visible:=False;
     Caption:='?????? '+IntToStr(i+1)+' ?? '+IntToStr(Form58.N);
     end
ELSE
 begin
   ShowMessage('?? ??????? ?????? ????!');

   {If Form58.type_obr=1 then
    begin
       with MyModule.ADOQuery2 do
        begin
          Close;
          SQL.clear;
          squery:='Select bal1,bal2,bal3,bal4,bal5 from Test_Information where N_1='+IntToStr(metka);
          SQL.Text:= squery;
          open;
          bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
          bal3:=MyModule.ADOQuery2.Fields[2].AsInteger;
          bal4:=MyModule.ADOQuery2.Fields[3].AsInteger;
          bal5:=MyModule.ADOQuery2.Fields[4].AsInteger;
        end;

       for i:=1 to N do
        begin
          if results[i]=1 then
           Itog:=Itog+Bal1;
          if results[i]=2 then
           Itog:=Itog+Bal2;
          if results[i]=3 then
           Itog:=Itog+Bal3;
          if results[i]=4 then
           Itog:=Itog+Bal4;
          if results[i]=5 then
           Itog:=Itog+Bal5;
        end;
    end
   Else
    begin }
      for i:=1 to N do
       begin
        with MyModule.ADOQuery2 do
          begin
             Close;
             SQL.clear;
             squery:='Select bal1,bal2,bal3,bal4,bal5 from Test_Information where N_1='+IntToStr(metka+i-1);
             SQL.Text:= squery;
             open;
             bal1:=MyModule.ADOQuery2.Fields[0].AsInteger;
             bal2:=MyModule.ADOQuery2.Fields[1].AsInteger;
             bal3:=MyModule.ADOQuery2.Fields[2].AsInteger;
             bal4:=MyModule.ADOQuery2.Fields[3].AsInteger;
             bal5:=MyModule.ADOQuery2.Fields[4].AsInteger;
             if results[i]=1 then Itog:=Itog+Bal1;
             if results[i]=2 then Itog:=Itog+Bal2;
             if results[i]=3 then Itog:=Itog+Bal3;
             if results[i]=4 then Itog:=Itog+Bal4;
             if results[i]=5 then Itog:=Itog+Bal5;

          end;
       end;
 //end;//of Else

  ID:=0;
  repeat
     with MyModule.ADOQuery2 do
       begin
          Close;
          SQL.clear;
          squery:='Select diapazon1,diapazon2,result from Test_Information where N_1='+IntToStr(metka+ID);
          SQL.Text:= squery;
          open;
          D1:=MyModule.ADOQuery2.Fields[0].AsInteger;
          D2:=MyModule.ADOQuery2.Fields[1].AsInteger;
          res:=MyModule.ADOQuery2.Fields[2].AsString;
          ID:=ID+1;
       end;
  until ((D1>=Itog) or (Itog<=D2));

  Form39.Label2.Caption:=Form58.Label4.Caption;
  Form39.Label1.Caption:=(Form58.opis);
  Form39.Memo1.Lines.Text:=res;
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Form39.Label5.Caption:=myDate;
  Form39.score := Itog;
   i:=1; Itog:=0;
ID:=0;
 Form58.Hide;
 Form39.Show;
 end;
end;

procedure TForm58.Button2Click(Sender: TObject);
var
blobstream : TADOBlobStream;
    jpeg       : TJPEGImage;
squery:string;
begin
  i:=i-1;
   If i<1 then i:=1;
 if radiobutton1.Checked then
     results[i-1]:=1;
    if radiobutton2.Checked then
     results[i-1]:=2;
     if radiobutton3.Checked then
     results[i-1]:=3;
     if radiobutton5.Checked then
     results[i-1]:=4;
     if radiobutton5.Checked then
     results[i-1]:=5;

   ID:=ID-1;
   If ID<0 then ID:=0;

   with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:='Select question,otv1,otv2,otv3,otv4,otv5,kol_otvet,Question_p from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       Form58.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
       otv1:=MyModule.ADOQuery2.Fields[1].AsString;
       otv2:=MyModule.ADOQuery2.Fields[2].AsString;
       otv3:=MyModule.ADOQuery2.Fields[3].AsString;
       otv4:=MyModule.ADOQuery2.Fields[4].AsString;
       otv5:=MyModule.ADOQuery2.Fields[5].AsString;
     end;

     Form58.radiobutton1.caption:=otv1;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>1 then
     begin
     Form58.radiobutton2.caption:=otv2;
     Form58.radiobutton2.Visible:=true;

     end;
      if  MyModule.ADOQuery2.Fields[6].AsInteger>2 then
     begin
     Form58.radiobutton3.caption:=otv3;
     Form58.radiobutton3.Visible:=true;

     end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>3 then
     begin
     Form58.radiobutton4.caption:=otv4;
     Form58.radiobutton4.Visible:=true;

     end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>4 then
     begin
     Form58.radiobutton5.caption:=otv5;
     Form58.radiobutton5.Visible:=true;

     end;

     if MyModule.ADOQuery2.Fields[7].AsInteger <> 0
     then
     begin
     MyModule.ADOQuery1.SQL.Text   := 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(numeretic) +  ' AND N_vopros=' +  IntToStr(i) ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_quest').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_quest')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form58.Image1.Picture.Bitmap.Assign(jpeg);
        finally
        jpeg.Free;
        blobstream.Free;
      end;
     Form58.Image1.Visible:=true;
      end
     else
     Form58.Image1.Visible:=False;
   Caption:='?????? '+IntToStr(i+1)+' ?? '+IntToStr(N);
end;
end;
procedure TForm58.Button7Click(Sender: TObject);
begin
form58.close;
end;

procedure TForm58.N2Click(Sender: TObject);
begin
Form28.Show;
end;

procedure TForm58.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form38.show;
end;

procedure TForm58.N1Click(Sender: TObject);
begin
//init;
end;

procedure TForm58.N4Click(Sender: TObject);
begin
 form58.close;
end;

procedure TForm58.FormShow(Sender: TObject);
begin
i:=0; Itog:=0;
ID:=0;
end;

end.
