unit Unit88;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls,JPEG,DB, Data.Win.ADODB;

type
  TForm88 = class(TForm)
       Question: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button7: TButton;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Image1: TImage;
    ScrollBox1: TScrollBox;
    Image2: TImage;
    RadioButton1: TRadioButton;
    Image4: TImage;
    RadioButton2: TRadioButton;
    Image6: TImage;
    Image5: TImage;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Image7: TImage;
    RadioButton5: TRadioButton;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
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
  public N:Integer;  // N - кол-во вопросов в тесте
  otv1,otv2,otv3,otv4,otv5:string;
    { Public declarations }
    metka,type_obr:integer;
    opis:string;
    Numeretic:integer;
  end;

var
  Form88: TForm88;
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

uses Unit35, Unit34, Unit37, Unit39, Unit28, Unit38, Unit2, Unit25;

{$R *.dfm}

procedure TForm88.FormCreate(Sender: TObject);
begin
i:=1; Itog:=0;
ID:=0;

end;

procedure TForm88.Button1Click(Sender: TObject);
var
blobstream : TADOBlobStream;
    jpeg       : TJPEGImage;
myDate,squery:string;
begin
i:=i+1;
 Form88.image2.Visible:=false;
 Form88.image4.Visible:=false;
 Form88.image5.Visible:=false;
 Form88.image6.Visible:=false;
 Form88.image7.Visible:=false;
 Form88.radiobutton1.Visible:=false;
 Form88.radiobutton2.Visible:=false;
 Form88.radiobutton3.Visible:=false;
 Form88.radiobutton4.Visible:=false;
 Form88.radiobutton5.Visible:=false;

If i<=Form88.N then
 begin
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
    ID:=ID+1;

    with MyModule.ADOQuery2 do
     begin
       Close;
       SQL.clear;
       squery:='Select question,otv1,otv2,otv3,otv4,otv5,kol_otvet,Question_p from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       Form88.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
       otv1:=MyModule.ADOQuery2.Fields[1].AsString;
       otv2:=MyModule.ADOQuery2.Fields[2].AsString;
       otv3:=MyModule.ADOQuery2.Fields[3].AsString;
       otv4:=MyModule.ADOQuery2.Fields[4].AsString;
       otv5:=MyModule.ADOQuery2.Fields[5].AsString;
     end;

     if  otv1 <> '0' then begin
     Form88.radiobutton1.caption:='';
     Form88.radiobutton1.Visible:=true;
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=1' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton1.Visible:=true;
        Form88.Image2.Picture.Bitmap.Assign(jpeg);
        Form88.image2.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
       {form88.Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv1);
       Form88.image2.Visible:=true;
     Form88.radiobutton1.Enabled:=true;}
    end;
   if MyModule.ADOQuery2.Fields[6].AsInteger>1 then
     begin
      if   otv2 <> '0' then begin
      Form88.radiobutton2.caption:='';
      Form88.radiobutton2.Visible:=true;
      MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=2' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image4.Picture.Bitmap.Assign(jpeg);
        Form88.image4.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
      {form88.Image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv2);
      Form88.image4.Visible:=true;}
      end;
      end;
      if  MyModule.ADOQuery2.Fields[6].AsInteger>2 then
     begin
      if  otv3 <> '0' then begin
      Form88.radiobutton3.caption:='';
      Form88.radiobutton3.Visible:=true;
       MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=3' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image5.Picture.Bitmap.Assign(jpeg);
        Form88.image5.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
      {form88.Image5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv3);
      Form88.image5.Visible:=true;}
      end;
      end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>3 then
     begin
     if   otv4 <> '0' then begin
     Form88.radiobutton4.caption:='';
     Form88.radiobutton4.Visible:=true;
      MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=4' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image6.Picture.Bitmap.Assign(jpeg);
        Form88.image6.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
     {form88.Image6.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv4);
     Form88.image6.Visible:=true; }
     end;
      end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>4 then
     begin
     if  otv5 <> '0' then begin
     Form88.radiobutton5.caption:='';
     Form88.radiobutton5.Visible:=true;
      MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=5' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image7.Picture.Bitmap.Assign(jpeg);
        Form88.image7.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
     {form88.Image7.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv5);
     Form88.image7.Visible:=true; }
     end;
     end;
    if MyModule.ADOQuery2.Fields[7].AsString <> '0'   then
    begin
    MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=0' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_quest').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_quest')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image1.Picture.Bitmap.Assign(jpeg);
        finally
        jpeg.Free;
        blobstream.Free;
      end;
      //end;
 end
    end
     //form88.Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[7].AsString)
     else
      Form88.Image1.Picture:= nil;
Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(Form88.N);


 end
ELSE
 begin
   ShowMessage('Вы успешно прошли тест!');

   If Form88.type_obr=1 then
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
         if results[i]=1 then Itog:=Itog+Bal1;
             if results[i]=2 then Itog:=Itog+Bal2;
             if results[i]=3 then Itog:=Itog+Bal3;
             if results[i]=4 then Itog:=Itog+Bal4;
             if results[i]=5 then Itog:=Itog+Bal5;
        end;
    end
   Else
    begin
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
 end;//of Else

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
  Form39.Label2.Caption:=Form88.Label4.Caption;
  Form39.Label1.Caption:=(Form88.opis);
  Form39.Memo1.Lines.Text:=res;
 myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
 Form39.Label5.Caption:=myDate;
  i:=1; Itog:=0;
ID:=0;
  Form88.Hide;
  Form39.Show;
 end;
end;

procedure TForm88.Button2Click(Sender: TObject);
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
       squery:='Select question,otv1,otv2,otv3,otv4,otv5,kol_otvet,question_p from Test_Information where N_1='+IntToStr(metka+ID);
       SQL.Text:= squery;
       open;
       Form88.Question.Caption:=MyModule.ADOQuery2.Fields[0].AsString;
       otv1:=MyModule.ADOQuery2.Fields[1].AsString;
       otv2:=MyModule.ADOQuery2.Fields[2].AsString;
       otv3:=MyModule.ADOQuery2.Fields[3].AsString;
       otv4:=MyModule.ADOQuery2.Fields[4].AsString;
       otv5:=MyModule.ADOQuery2.Fields[5].AsString;
     end;

     if  otv1 <> '0' then begin
     Form88.radiobutton1.caption:='';
     Form88.radiobutton1.Visible:=true;
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=1' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton1.Visible:=true;
        Form88.Image2.Picture.Bitmap.Assign(jpeg);
        Form88.image2.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
       {form88.Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv1);
       Form88.image2.Visible:=true;
     Form88.radiobutton1.Enabled:=true;}
    end;
   if MyModule.ADOQuery2.Fields[6].AsInteger>1 then
     begin
      if   otv2 <> '0' then begin
      Form88.radiobutton2.caption:='';
      Form88.radiobutton2.Visible:=true;
      MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=2' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image4.Picture.Bitmap.Assign(jpeg);
        Form88.image4.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
      {form88.Image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv2);
      Form88.image4.Visible:=true;}
      end;
      end;
      if  MyModule.ADOQuery2.Fields[6].AsInteger>2 then
     begin
      if  otv3 <> '0' then begin
      Form88.radiobutton3.caption:='';
      Form88.radiobutton3.Visible:=true;
       MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=3' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image5.Picture.Bitmap.Assign(jpeg);
        Form88.image5.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
      {form88.Image5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv3);
      Form88.image5.Visible:=true;}
      end;
      end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>3 then
     begin
     if   otv4 <> '0' then begin
     Form88.radiobutton4.caption:='';
     Form88.radiobutton4.Visible:=true;
      MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=4' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image6.Picture.Bitmap.Assign(jpeg);
        Form88.image6.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
     {form88.Image6.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv4);
     Form88.image6.Visible:=true; }
     end;
      end;
     if  MyModule.ADOQuery2.Fields[6].AsInteger>4 then
     begin
     if  otv5 <> '0' then begin
     Form88.radiobutton5.caption:='';
     Form88.radiobutton5.Visible:=true;
      MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(Numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=5' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image7.Picture.Bitmap.Assign(jpeg);
        Form88.image7.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
     {form88.Image7.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+otv5);
     Form88.image7.Visible:=true; }
     end;
     end;
    if MyModule.ADOQuery2.Fields[7].AsString <> '0'   then
    begin
    MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(numeretic) +  ' AND N_vopros=' + inttostr(i) +  ' AND N_otveta=0' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_quest').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_quest')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.Image1.Picture.Bitmap.Assign(jpeg);
        finally
        jpeg.Free;
        blobstream.Free;
      end;
      //end;
 end
    end
     //form88.Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[7].AsString)
     else
      Form88.Image1.Picture:= nil;
Caption:='Вопрос '+IntToStr(i)+' из '+IntToStr(Form88.N);

 end;

procedure TForm88.Button7Click(Sender: TObject);
begin
close;
end;

procedure TForm88.N2Click(Sender: TObject);
begin
Form28.Show;
end;

procedure TForm88.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form38.show;
end;

procedure TForm88.N1Click(Sender: TObject);
begin
//init;
end;

procedure TForm88.N4Click(Sender: TObject);
begin
close;
end;

procedure TForm88.FormShow(Sender: TObject);
begin
i:=1; Itog:=0;
ID:=0;

end;

end.
