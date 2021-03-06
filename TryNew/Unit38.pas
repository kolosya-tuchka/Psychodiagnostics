unit Unit38;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Data.Win.ADODB, JPEG;

type
  TForm38 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    ScrollBox1: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    kol, size:integer;
    nomer, tag:Integer;
    Image: TImage;
    Stream: TMemoryStream;
    section: integer;
    nazv, nametest: string;
    checks: array of TCheckBox;
    btns: array of TButton;
    cascade: boolean;
  end;

var
  Form38: TForm38;
   k:integer;
   question,otv1,otv2,otv3,otv4,otv5,opisan :string;
  kolvo, Type_otvet, type_obr:integer;
   nomer:Integer;
implementation

uses Unit35, StartTest, Unit39, Unit34, Unit37, Unit55, Unit56, Unit57, Unit58,
  Unit33, Unit32, Unit31, Unit30, Unit29, Unit40, Unit41, Unit27,
  Unit8, Unit28, Unit88, Test, Unit78, SectionsTest, TestQueue;

{$R *.dfm}

procedure TForm38.Button2Click(Sender: TObject);

var
    button : TLabel;
    squery : string;
    blobstream : TADOBlobStream;
    jpeg       : TJPEGImage;
begin
   button := (Sender as TLabel);
   if button <> nil then
   with MyModule.ADOQuery2 do
   begin
   tag := button.Tag;
     Close;
    MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Test WHERE N_testa=' + IntToStr(tag) + 'And Section_ID = ' + inttostr(section);
    MyModule.ADOQuery2.SQL.Text:= squery;
    open;
   nazv:=MyModule.ADOQuery2.Fields[1].AsString;
   opisan:=MyModule.ADOQuery2.Fields[2].AsString;
   ExecSQL;
   Close;
    MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Test_Information WHERE N_testa=' + IntToStr(tag);
    MyModule.ADOQuery2.SQL.Text:= squery;
    MyModule.ADOQuery2.ExecSQL;
    open;
   first;
   nomer:=MyModule.ADOQuery2.Fields[0].AsInteger;
   kolvo:=MyModule.ADOQuery2.Fields[2].AsInteger;
   kol:= MyModule.ADOQuery2.Fields[4].AsInteger;
   question:=MyModule.ADOQuery2.Fields[3].AsString;
   otv1:=MyModule.ADOQuery2.Fields[5].AsString;
   otv2:=MyModule.ADOQuery2.Fields[6].AsString;
    otv3:=MyModule.ADOQuery2.Fields[7].AsString;
    otv4:=MyModule.ADOQuery2.Fields[8].AsString;
    otv5:=MyModule.ADOQuery2.Fields[9].AsString;
   Type_otvet:=MyModule.ADOQuery2.Fields[21].AsInteger;
   type_obr:=MyModule.ADOQuery2.Fields[22].AsInteger;
   Form39.numeretic:=button.Tag;
end;
nametest := button.caption;

   case Type_otvet of
1:begin
     if (Form37 <> nil) then freeandnil(Form37);
     Form37 := TForm37.Create(nil);
     Form37.Label4.Caption:=nazv;
     Form37.opis:=opisan;
     Form37.N:=kolvo;

     Form37.metka:=nomer;
     Form37.type_obr:=type_obr;
     Form37.opis:=button.Hint;
     Form37.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form37.Question.Caption:=question;
     //Form37.Label6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     Form37.Show;
  end;
2:begin
     if (Form55 <> nil) then freeandnil(Form55);
     Form55 := TForm55.Create(nil);
     Form55.N:=kolvo;
     Form55.metka:= nomer;
     Form55.type_obr:=type_obr;
     Form55.opis:=opisan;

     Form55.Label4.Caption:=nazv;
     Form55.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form55.Question.Caption:=question;
     //Form55.Label6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     Form55.show;
  end;
3:begin
     if (Form56 <> nil) then freeandnil(Form56);
     Form56 := TForm56.Create(nil);
     Form56.Label4.Caption:=nazv;
     Form56.N:=kolvo;
     Form56.metka:= nomer;
     Form56.type_obr:=type_obr;
     Form56.opis:=opisan;
     Form56.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form56.Question.Caption:=question;
     //Form56.Label6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     Form56.show;
  end;
4:begin
     Form57 := TForm57.Create(nil);
     Form57.Label4.Caption:=nazv;
     Form57.N:=kolvo;
     Form57.metka:= nomer;
     Form57.type_obr:=type_obr;
     Form57.opis:=opisan;
     Form57.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form57.Question.Caption:=question;
     Form38.Hide;
     Form57.show;
  end;
5:begin
     if (Form58 <> nil) then freeandnil(Form58);
     Form58 := TForm58.Create(nil);
     Form58.Label4.Caption:=nazv;
     Form58.N:=kolvo;
     Form58.metka:= nomer;
     Form58.type_obr:=type_obr;
     Form58.opis:=opisan;
     Form58.Numeretic:=button.tag;
     Form58.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form58.Question.Caption:=question;
     Form58.radiobutton1.caption:=otv1;
     Form58.radiobutton1.Visible:=true;
     Form58.radiobutton1.checked:=true;
     Form58.radiobutton1.Enabled:=true;
     if  kol>1 then
     begin
     Form58.radiobutton2.caption:=otv2;
     Form58.radiobutton2.Visible:=true;

     end;
      if  kol>2 then
     begin
     Form58.radiobutton3.caption:=otv3;
     Form58.radiobutton3.Visible:=true;

     end;
     if  kol>3 then
     begin
     Form58.radiobutton4.caption:=otv4;
     Form58.radiobutton4.Visible:=true;

     end;
     if  kol>4 then
     begin
     Form58.radiobutton5.caption:=otv5;
     Form58.radiobutton5.Visible:=true;

     end;
     if ((MyModule.ADOQuery2.Fields[24].AsInteger <> 0)) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1' ;
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
     Form58.RadioButton1.Checked:= True;
     end
     else
       Form58.Image1.Visible:=false;
     Form38.Hide;
     Form58.show;
  end;
6:begin
     if (TestRuk <> nil) then freeandnil(TestRuk);
     TestRuk := TTestRuk.Create(nil);
     TestRuk.Label1.Caption:=nazv;
     TestRuk.N:=kolvo;
     TestRuk.metka:= nomer;
     TestRuk.numeretic:=button.Tag;
     TestRuk.type_obr:=type_obr;
     TestRuk.opis:=opisan;
     TestRuk.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     TestRuk.Question.Caption:=question;
     //TestRuk.LAbel6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     TestRuk.show;
  end;
 7:begin
     if (Form88 <> nil) then freeandnil(Form88);
     Form88 := TForm88.Create(nil);
     Form88.Label4.Caption:=nazv;
     Form88.N:=kolvo;
     Form88.metka:= nomer;
     Form88.Numeretic:=button.tag;
     Form88.type_obr:=type_obr;
     Form88.opis:=opisan;
     Form88.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form88.Question.Caption:=question;
     if ((MyModule.ADOQuery2.Fields[5].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=1' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton1.caption:='';
        Form88.radiobutton1.Visible:=true;
        Form88.radiobutton1.checked:=true;
        Form88.Image2.Picture.Bitmap.Assign(jpeg);
        Form88.image2.Visible:=true;
        Form88.radiobutton1.Enabled:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      
 end;
    { if   MyModule.ADOQuery2.Fields[5].AsString <> '' then begin
       Form88.radiobutton1.caption:='';
       Form88.radiobutton1.Visible:=true;
       Form88.radiobutton1.checked:=true;
       form88.Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[5].AsString);
       Form88.image2.Visible:=true;
     Form88.radiobutton1.Enabled:=true; }
     end;
    if  kol>1 then
     begin
      if ((MyModule.ADOQuery2.Fields[6].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=2' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton2.caption:='';
        Form88.radiobutton2.Visible:=true;
        Form88.Image4.Picture.Bitmap.Assign(jpeg);
        Form88.image4.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
     { if  (( MyModule.ADOQuery2.Fields[6].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[6].AsString))) then begin
      Form88.radiobutton2.caption:='';
      Form88.radiobutton2.Visible:=true;
      form88.Image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[6].AsString);
      Form88.image4.Visible:=true;
      end; }
      end;
      if  kol>2 then
     begin
     if ((MyModule.ADOQuery2.Fields[7].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=3' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton3.caption:='';
        Form88.radiobutton3.Visible:=true;
        Form88.Image5.Picture.Bitmap.Assign(jpeg);
        Form88.image5.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
     { if   (( MyModule.ADOQuery2.Fields[7].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[7].AsString))) then begin
      Form88.radiobutton3.caption:='';
      Form88.radiobutton3.Visible:=true;
      form88.Image5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[7].AsString);
      Form88.image5.Visible:=true;
      end; }
      end;
     if  kol>3 then
     begin
     if ((MyModule.ADOQuery2.Fields[8].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=3' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton4.caption:='';
        Form88.radiobutton4.Visible:=true;
        Form88.Image6.Picture.Bitmap.Assign(jpeg);
        Form88.image6.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
    { if   (( MyModule.ADOQuery2.Fields[8].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[8].AsString))) then begin
     Form88.radiobutton4.caption:='';
     Form88.radiobutton4.Visible:=true;
     form88.Image6.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[8].AsString);
     Form88.image6.Visible:=true;
     end;  }
     end;
     if  kol>4 then
     begin
     if ((MyModule.ADOQuery2.Fields[9].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=4' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton5.caption:='';
        Form88.radiobutton5.Visible:=true;
        Form88.Image7.Picture.Bitmap.Assign(jpeg);
        Form88.image7.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
     {if   (( MyModule.ADOQuery2.Fields[9].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[9].AsString))) then begin
     Form88.radiobutton5.caption:='';
     Form88.radiobutton5.Visible:=true;
     form88.Image7.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[9].AsString);
     Form88.image7.Visible:=true;
     end;  }
     end;
   if ((MyModule.ADOQuery2.Fields[24].AsInteger <> 0)) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=0' ;
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
      else
      form88.Image1.Visible:=false;

  end;
  Form38.Hide;
  Form88.show;
end;

 end;
 end;

 procedure TForm38.Button3Click(Sender: TObject);

var
    button : TButton;
    squery : string;
    blobstream : TADOBlobStream;
    jpeg       : TJPEGImage;
begin
   TestsQueue.Close;
   button := (Sender as TButton);
   if button <> nil then
   with MyModule.ADOQuery2 do
   begin
   tag := button.Tag;
     Close;
    MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Test WHERE N_testa=' + IntToStr(tag) + 'And Section_ID = ' + inttostr(section);
    MyModule.ADOQuery2.SQL.Text:= squery;
    open;
   nazv:=MyModule.ADOQuery2.Fields[1].AsString;
   opisan:=MyModule.ADOQuery2.Fields[2].AsString;
   ExecSQL;
   Close;
    MyModule.ADOQuery2.SQL.Clear;
    squery:= 'SELECT * FROM Test_Information WHERE N_testa=' + IntToStr(tag);
    MyModule.ADOQuery2.SQL.Text:= squery;
    MyModule.ADOQuery2.ExecSQL;
    open;
   first;
   nomer:=MyModule.ADOQuery2.Fields[0].AsInteger;
   kolvo:=MyModule.ADOQuery2.Fields[2].AsInteger;
   kol:= MyModule.ADOQuery2.Fields[4].AsInteger;
   question:=MyModule.ADOQuery2.Fields[3].AsString;
   otv1:=MyModule.ADOQuery2.Fields[5].AsString;
   otv2:=MyModule.ADOQuery2.Fields[6].AsString;
    otv3:=MyModule.ADOQuery2.Fields[7].AsString;
    otv4:=MyModule.ADOQuery2.Fields[8].AsString;
    otv5:=MyModule.ADOQuery2.Fields[9].AsString;
   Type_otvet:=MyModule.ADOQuery2.Fields[21].AsInteger;
   type_obr:=MyModule.ADOQuery2.Fields[22].AsInteger;
   Form39.numeretic:=button.Tag;
end;
nametest := button.caption;

   case Type_otvet of
1:begin
     if (Form37 <> nil) then freeandnil(Form37);
     Form37 := TForm37.Create(nil);
     Form37.Label4.Caption:=nazv;
     Form37.opis:=opisan;
     Form37.N:=kolvo;

     Form37.metka:=nomer;
     Form37.type_obr:=type_obr;
     Form37.opis:=button.Hint;
     Form37.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form37.Question.Caption:=question;
     //Form37.Label6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     Form37.Show;
  end;
2:begin
     if (Form55 <> nil) then freeandnil(Form55);
     Form55 := TForm55.Create(nil);
     Form55.N:=kolvo;
     Form55.metka:= nomer;
     Form55.type_obr:=type_obr;
     Form55.opis:=opisan;

     Form55.Label4.Caption:=nazv;
     Form55.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form55.Question.Caption:=question;
     //Form55.Label6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     Form55.show;
  end;
3:begin
     if (Form56 <> nil) then freeandnil(Form56);
     Form56 := TForm56.Create(nil);
     Form56.Label4.Caption:=nazv;
     Form56.N:=kolvo;
     Form56.metka:= nomer;
     Form56.type_obr:=type_obr;
     Form56.opis:=opisan;
     Form56.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form56.Question.Caption:=question;
     //Form56.Label6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     Form56.show;
  end;
4:begin
     Form57 := TForm57.Create(nil);
     Form57.Label4.Caption:=nazv;
     Form57.N:=kolvo;
     Form57.metka:= nomer;
     Form57.type_obr:=type_obr;
     Form57.opis:=opisan;
     Form57.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form57.Question.Caption:=question;
     Form38.Hide;
     Form57.show;
  end;
5:begin
     if (Form58 <> nil) then freeandnil(Form58);
     Form58 := TForm58.Create(nil);
     Form58.Label4.Caption:=nazv;
     Form58.N:=kolvo;
     Form58.metka:= nomer;
     Form58.type_obr:=type_obr;
     Form58.opis:=opisan;
     Form58.Numeretic:=button.tag;
     Form58.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form58.Question.Caption:=question;
     Form58.radiobutton1.caption:=otv1;
     Form58.radiobutton1.Visible:=true;
     Form58.radiobutton1.checked:=true;
     Form58.radiobutton1.Enabled:=true;
     if  kol>1 then
     begin
     Form58.radiobutton2.caption:=otv2;
     Form58.radiobutton2.Visible:=true;

     end;
      if  kol>2 then
     begin
     Form58.radiobutton3.caption:=otv3;
     Form58.radiobutton3.Visible:=true;

     end;
     if  kol>3 then
     begin
     Form58.radiobutton4.caption:=otv4;
     Form58.radiobutton4.Visible:=true;

     end;
     if  kol>4 then
     begin
     Form58.radiobutton5.caption:=otv5;
     Form58.radiobutton5.Visible:=true;

     end;
     if ((MyModule.ADOQuery2.Fields[24].AsInteger <> 0)) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1' ;
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
     Form58.RadioButton1.Checked:= True;
     end
     else
       Form58.Image1.Visible:=false;
     Form38.Hide;
     Form58.show;
  end;
6:begin
     if (TestRuk <> nil) then freeandnil(TestRuk);
     TestRuk := TTestRuk.Create(nil);
     TestRuk.Label1.Caption:=nazv;
     TestRuk.N:=kolvo;
     TestRuk.metka:= nomer;
     TestRuk.numeretic:=button.Tag;
     TestRuk.type_obr:=type_obr;
     TestRuk.opis:=opisan;
     TestRuk.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     TestRuk.Question.Caption:=question;
     //TestRuk.LAbel6.Caption:=Form2.Label3.Caption;
     Form38.Hide;
     TestRuk.show;
  end;
 7:begin
     if (Form88 <> nil) then freeandnil(Form88);
     Form88 := TForm88.Create(nil);
     Form88.Label4.Caption:=nazv;
     Form88.N:=kolvo;
     Form88.metka:= nomer;
     Form88.Numeretic:=button.tag;
     Form88.type_obr:=type_obr;
     Form88.opis:=opisan;
     Form88.Caption:='?????? '+ '1' + ' ?? ' +IntToStr(kolvo);
     Form88.Question.Caption:=question;
     if ((MyModule.ADOQuery2.Fields[5].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=1' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton1.caption:='';
        Form88.radiobutton1.Visible:=true;
        Form88.radiobutton1.checked:=true;
        Form88.Image2.Picture.Bitmap.Assign(jpeg);
        Form88.image2.Visible:=true;
        Form88.radiobutton1.Enabled:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;

 end;
    { if   MyModule.ADOQuery2.Fields[5].AsString <> '' then begin
       Form88.radiobutton1.caption:='';
       Form88.radiobutton1.Visible:=true;
       Form88.radiobutton1.checked:=true;
       form88.Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[5].AsString);
       Form88.image2.Visible:=true;
     Form88.radiobutton1.Enabled:=true; }
     end;
    if  kol>1 then
     begin
      if ((MyModule.ADOQuery2.Fields[6].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=2' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton2.caption:='';
        Form88.radiobutton2.Visible:=true;
        Form88.Image4.Picture.Bitmap.Assign(jpeg);
        Form88.image4.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
     { if  (( MyModule.ADOQuery2.Fields[6].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[6].AsString))) then begin
      Form88.radiobutton2.caption:='';
      Form88.radiobutton2.Visible:=true;
      form88.Image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[6].AsString);
      Form88.image4.Visible:=true;
      end; }
      end;
      if  kol>2 then
     begin
     if ((MyModule.ADOQuery2.Fields[7].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=3' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton3.caption:='';
        Form88.radiobutton3.Visible:=true;
        Form88.Image5.Picture.Bitmap.Assign(jpeg);
        Form88.image5.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
     { if   (( MyModule.ADOQuery2.Fields[7].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[7].AsString))) then begin
      Form88.radiobutton3.caption:='';
      Form88.radiobutton3.Visible:=true;
      form88.Image5.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[7].AsString);
      Form88.image5.Visible:=true;
      end; }
      end;
     if  kol>3 then
     begin
     if ((MyModule.ADOQuery2.Fields[8].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=3' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton4.caption:='';
        Form88.radiobutton4.Visible:=true;
        Form88.Image6.Picture.Bitmap.Assign(jpeg);
        Form88.image6.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
    { if   (( MyModule.ADOQuery2.Fields[8].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[8].AsString))) then begin
     Form88.radiobutton4.caption:='';
     Form88.radiobutton4.Visible:=true;
     form88.Image6.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[8].AsString);
     Form88.image6.Visible:=true;
     end;  }
     end;
     if  kol>4 then
     begin
     if ((MyModule.ADOQuery2.Fields[9].AsString <> '0')) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_otv FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=4' ;
     MyModule.ADOQuery1.Open;
     if not MyModule.ADOQuery1.FieldByName('Path_otv').IsNull then
      begin
        try
        blobstream := TADOBlobStream.Create(TBlobField(MyModule.ADOQuery1.FieldByName('Path_otv')), bmRead);
        jpeg  := TJPEGImage.Create;
        jpeg.LoadFromStream(blobstream);
        Form88.radiobutton5.caption:='';
        Form88.radiobutton5.Visible:=true;
        Form88.Image7.Picture.Bitmap.Assign(jpeg);
        Form88.image7.Visible:=true;
        finally
        jpeg.Free;
        blobstream.Free;
        end;
      end;
 end;
     {if   (( MyModule.ADOQuery2.Fields[9].AsString <> '') and(fileexists(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[9].AsString))) then begin
     Form88.radiobutton5.caption:='';
     Form88.radiobutton5.Visible:=true;
     form88.Image7.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+MyModule.ADOQuery2.Fields[9].AsString);
     Form88.image7.Visible:=true;
     end;  }
     end;
   if ((MyModule.ADOQuery2.Fields[24].AsInteger <> 0)) //and(fileexists(ExtractFilePath(Application.ExeName)+ MyModule.ADOQuery2.Fields[24].AsString)))
     then
     begin
     MyModule.ADOQuery1.SQL.Text:= 'SELECT Path_quest FROM Pictures WHERE N_testa=' + IntToStr(button.Tag) +  ' AND N_vopros=1 AND N_otveta=0' ;
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
      else
      form88.Image1.Visible:=false;

  end;
  Form38.Hide;
  Form88.show;
end;

 end;
 end;

procedure TForm38.Button4Click(Sender: TObject);
begin
  hide;
  sectionsTests.Show;
end;

procedure TForm38.CheckBox1Click(Sender: TObject);
var i, j, k: Integer; c: TCheckBox; l: TLabel; b: TButton; ls: array of TLabel;
begin

c := sender as TCheckBox;

for i := 0 to size-1 do begin
  if (btns[i].Tag = c.Tag) then begin
    b := btns[i];
    break;
  end;
end;

if (c.Checked) then begin
  TestsQueue.qsize := TestsQueue.qsize + 1;
  SetLength(TestsQueue.queue, TestsQueue.qsize);
  l := Tlabel.Create(TestsQueue);
  l.Parent := TestsQueue.ScrollBox1;
  l.Font.Size := 12;
  l.Caption := b.Caption;
  l.Tag := b.Tag;
  l.Hint := b.Hint;
  l.Width := TestsQueue.ScrollBox1.Width * 2 div 3;
  l.Height := 28;
  l.Left := TestsQueue.ScrollBox1.Left + 50;
  l.Top := TestsQueue.ScrollBox1.Top + 15 + (TestsQueue.qsize-1) * 35;
  TestsQueue.queue[TestsQueue.qsize - 1] := l;
end
else begin
  SetLength(ls, TestsQueue.qsize - 1);
  k := 0;
  for i := 0 to TestsQueue.qsize-1 do begin
    if (c.Tag = TestsQueue.queue[i].Tag) then begin
      l := TestsQueue.queue[i];
    end
    else begin
      ls[k] := TestsQueue.queue[i];
      TestsQueue.queue[i].Top := TestsQueue.ScrollBox1.Top + 15 + k * 35;
      k := k + 1;
    end;
  end;
  TestsQueue.qsize := TestsQueue.qsize - 1;
  SetLength(TestsQueue.queue, TestsQueue.qsize);
  for i := 0 to TestsQueue.qsize-1 do TestsQueue.queue[i] := ls[i];
  l.Destroy;
end;

TestsQueue.Button1.Enabled := not (TestsQueue.qsize = 0);

end;

procedure TForm38.Button1Click(Sender: TObject);
begin
    Form78.show;
    Form38.Close;

end;

procedure TForm38.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form78.Show;
end;

procedure TForm38.FormCreate(Sender: TObject);
var
  k, i: Integer;
  b: TButton;
  c: TCheckBox;
begin
    cascade := false;
    Panel1.Color:= Form28.Color;
   try
    MyModule.ADOQuery2.SQL.Clear;
    MyModule.ADOQuery2.SQL.Add('SELECT * FROM Test where Course_ID =:course AND Section_ID =:section');
    MyModule.ADOQuery2.Parameters.ParamByName('section').Value := sectionsTests.section;
    MyModule.ADOQuery2.Parameters.ParamByName('course').Value := sectionsTests.course;
    MyModule.ADOQuery2.Active:=True;
    MyModule.ADOQuery2.First;
    size := 0;

    while not MyModule.ADOQuery2.Eof do
    begin
      size := size + 1;
      MyModule.ADOQuery2.Next;
    end;

    MyModule.ADOQuery2.Active:=True;
    k:=0;
    MyModule.ADOQuery2.First;
    SetLength(checks, size);
    SetLength(btns, size);

    while not MyModule.ADOQuery2.Eof do
    begin

      k := k + 1;
      b:=TButton.Create(Self);
      b.Parent:=ScrollBox1;
       b.Font.Size:=12;
       b.Font.Style:=[fsBold];
       b.Font.Name:='Times New Roman';
      b.Left:= ScrollBox1.Width div 9;
      b.Height:=28;
      b.Top:=0+k*b.Height;
      b.Font.Size:=14;

      b.Width := 7 * ScrollBox1.Width div 9;
      b.Caption:=MyModule.ADOQuery2.FieldByName('Nazv').AsString;
      b.OnClick:=Button3Click;
      b.Tag := MyModule.ADOQuery2.FieldByName('N_testa').AsInteger;
      b.Visible := true;
      b.Hint := MyModule.ADOQuery2.FieldByName('Opis').AsString;

      c := TCheckBox.Create(Self);
      c.Parent := ScrollBox1;
      c.Left := b.Left + b.Width + 10;
      c.Top := b.Top;
      c.Height := b.Height;
      c.Width := c.Height;
      c.Checked := false;
      c.Tag := b.Tag;

      for i := 0 to TestsQueue.qsize - 1 do begin
        if (TestsQueue.queue[i].Tag = c.Tag) then begin
          c.Checked := true;
          break;
        end;
      end;
      c.OnClick := CheckBox1Click;

      checks[k-1] := c;
      btns[k-1] := b;

     MyModule.ADOQuery2.Next;

    end;

except
on e:Exception do
Application.MessageBox('?????? ???? ??????','??????');
end;
exit;

end;

end.


