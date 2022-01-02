unit Unit46;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls,DB, Data.Win.ADODB, ExtDlgs;

type
  TForm46 = class(TForm)
    Label4: TLabel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    Label3: TLabel;
    list_vopros: TListBox;
    Label2: TLabel;
    memo_vopros: TMemo;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PictureClick(Sender: TObject);
    procedure list_voprosDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CreateDynamics;
    procedure FreeDynamics;

  private
    { Private declarations }
  public
          otv1: Array[1..200] of string;
          otv2: Array[1..200] of string;
          otv3: Array[1..200] of string;
          otv4: Array[1..200] of string;
          otv5: Array[1..200] of string;
          PicOtv: Array of Array of integer;
          _number:integer;
          _kol:integer;
          _pathes: TStringList;

    { Public declarations }
  end;

var
  Form46: TForm46;


implementation

uses Unit33, Unit34, Unit47, Unit1, Unit29, Unit30, Unit2, Unit62, Unit4,
  Unit35, Unit12;

{$R *.dfm}
procedure TForm46.CreateDynamics;
var k:integer;
m:TMemo;
b:TListBox;
l:TLabel;
z:Timage;
y:Tbutton;
top:integer;
begin
  _number:=1;
  if _pathes<> nil then
  begin
     _pathes.Free;
     _pathes:= nil;
     end;
  if _pathes= nil then
    _pathes:=Tstringlist.Create;
  for k:=0 to _kol-1 do
  _pathes.add('');

Case Form34.Type_otvet of
  5: begin
   top:=0;
   for k:=0 to _kol - 1   do
    begin
    l:=TLabel.Create(Self);
    l.Parent:=ScrollBox1;
    l.WordWrap:=true;
    l.AutoSize:=true;
    l.Name:='label1'+inttostr(k);
    l.caption:= (inttostr(k+1)+ ' вариант ответа на вопрос ');
    l.Left:= ScrollBox1.Width div 20;
    l.Width :=(18*ScrollBox1.Width div 20) div 2 ;
    l.Height:=20;
    l.Top:=top;
    l.Visible := true;
      m:=TMemo.Create(Self);
      m.Name:='memo'+inttostr(k);
      m.Tag :=k;
      m.Parent:=ScrollBox1;
      m.Left:=ScrollBox1.Width div 20;
      m.Width :=(18*ScrollBox1.Width div 20)div 2 ;
      m.Height:=70;
      m.Top:=top + l.height;
      m.Visible := true;

   top:=l.top + l.height + m.Height +20;
   end;
    top:=0;
   for k:=0 to _kol - 1   do
    begin
    l:=TLabel.Create(Self);
    l.Parent:=ScrollBox1;
    l.WordWrap:=true;
    l.AutoSize:=true;
    l.Name:='label2'+inttostr(k);
    l.caption:= ' ';
    l.Left:= (ScrollBox1.Width div 20) + ((18*ScrollBox1.Width div 20)div 2) ;
    l.Width :=(18*ScrollBox1.Width div 20)div 2 ;
    l.Height:=20;
    l.Top:=top;
    l.Visible := true;
      b:=TListBox.Create(Self);
      b.Name:='listbox'+inttostr(k);
      b.OnDblClick := ListBox1DblClick;
      b.Tag := k;
      b.Parent:=ScrollBox1;
      b.Left:= (ScrollBox1.Width div 20) + ((18*ScrollBox1.Width div 20)div 2);
      b.Width :=(18*ScrollBox1.Width div 20)div 2 ;
      b.Height:=70;
      b.Top:=top + l.height;
      b.Visible := true;

   top:=l.top + l.height + b.Height +20;
end;
end;
 7:begin
    top:=0;
   for k:=0 to _kol - 1   do
    begin
    {l:=TLabel.Create(Self);
    l.Parent:=ScrollBox1;
    l.WordWrap:=true;
    l.AutoSize:=true;
    l.Name:='label1'+inttostr(k);
    l.caption:= ' ';
    l.Left:= (ScrollBox1.Width div 20) + ((18*ScrollBox1.Width div 20)div 2) ;
    l.Width :=(18*ScrollBox1.Width div 20)div 2 ;
    l.Height:=20;
    l.Top:=top;
    l.Visible := true; }


   top:=l.top + l.height + b.Height +40;
   end;
    top:=0;
   for k:=0 to _kol - 1   do
    begin
    l:=TLabel.Create(Self);
    l.Parent:=ScrollBox1;
    l.WordWrap:=true;
    l.AutoSize:=true;
    l.Name:='label2'+inttostr(k);
    l.caption:= (inttostr(k+1)+ ' вариант ответа на вопрос ');
    l.Left:= ScrollBox1.Width div 20;
    l.Width :=(18*ScrollBox1.Width div 20) div 2 ;
    l.Height:=25;
    l.Top:=top;
    l.Visible := true;
      z:=TImage.Create(Self);
      z.Name:='image'+inttostr(k);
      z.Tag :=k;
      z.Parent:=ScrollBox1;
      z.Left:=ScrollBox1.Width div 20;
      z.Width :=(9*ScrollBox1.Width div 20)div 2 ;
      z.Height:=150;
      z.Top:=top + l.height;
      z.Visible := true;
      z.Stretch:=true;
        y:=TButton.Create(Self);
        y.Name:='ybutton'+inttostr(k);
        y.Tag :=k;
        y.Parent:=ScrollBox1;
        y.Left:=z.Left + z.Width;
        y.Width :=(9*ScrollBox1.Width div 20)div 2 ;
        y.Height:=25;
        y.Top:=top + l.height+15;
        y.caption:='Обзор. . .';
        y.Visible := true;
        y.onclick:= Pictureclick;
          b:=TListBox.Create(Self);
          b.Name:='listbox'+inttostr(k);
          b.OnDblClick := ListBox1DblClick;
          b.Tag := k;
          b.Parent:=ScrollBox1;
          b.Left:= (ScrollBox1.Width div 20) + ((18*ScrollBox1.Width div 20)div 2);
          b.Width :=(18*ScrollBox1.Width div 20)div 2 ;
          b.Height:=70;
          b.Top:=top ;
          b.Visible := true;
    top:=l.top + l.height + z.Height +20;
 end;
end;
end;
end;


procedure  TForm46.FreeDynamics;
var k:integer;
m:TMemo;
b:TListBox;
l:TLabel;
z:Timage;
y:Tbutton;
top:integer;
begin
  _number:=1;
  if _pathes<> nil then  begin
     _pathes.Free;
     _pathes := nil;
  end;
  if _pathes= nil then
    _pathes:=Tstringlist.Create;
  for k:=0 to _kol-1 do
  _pathes.add('');

Case Form34.Type_otvet of
  5: begin
   for k:=0 to _kol - 1   do
   begin
    l:=FindComponent('label1'+inttostr(k)) as TLabel;
    if l <> nil  then
      l.Free;
    l:=FindComponent('label2'+inttostr(k)) as TLabel;
    if l <> nil   then
      l.Free;
    m:=FindComponent('memo'+inttostr(k)) as TMemo;
    if m <> nil    then
      m.Free;
    b:=FindComponent('listbox'+inttostr(k)) as TListBox;
    if b <> nil    then
      b.Free;
    end;
end;
 7:begin
  for k:=0 to _kol - 1   do
  begin
     l:=FindComponent('label1'+inttostr(k)) as TLabel;
      if l <> nil    then
      l.Free;
    l:=FindComponent('label2'+inttostr(k)) as TLabel;
     if l <> nil    then
      l.Free;
     b:=FindComponent('listbox'+inttostr(k)) as TListbox;
    if b <> nil     then
      b.Free;
    z:=FindComponent('image'+inttostr(k)) as TImage;
    if z <> nil      then
      z.Free;
    y:=FindComponent('ybutton'+inttostr(k)) as Tbutton;
    if y <> nil     then
      y.Free;
    end;
end;
end;
end;
procedure TForm46.Button4Click(Sender: TObject);
var
i, k:integer;
memo:Tmemo;
list:Tlistbox;
image: TImage;
otvety: string;
begin
 Case Form34.Type_otvet of
5:begin
for k:=0 to _kol - 1 do
begin

  list:=FindComponent('listbox'+inttostr(k)) as TListBox ;
  memo:=FindComponent('memo'+inttostr(k)) as TMemo ;
  list.Items.Strings[_number-1]:=memo.Lines.Text;
  memo.Lines.Clear;
end;

   list_vopros.Items.Strings[_number-1]:=memo_vopros.Lines.Text;
  Form33.ques[_number]:=memo_vopros.Lines.Text;
  label3.caption:=inttostr(_number);
   memo_vopros.Lines.Clear;
   end;
7:begin
   if _pathes<>nil then
   begin
    for k:=0 to _kol - 1 do
    begin
    list:=FindComponent('listbox'+inttostr(k)) as TListBox ;
     image:=FindComponent('image'+inttostr(k)) as TImage ;
     list.Items.Strings[_number-1]:= _pathes[k];
    end;
    list_vopros.Items.Strings[_number-1]:=memo_vopros.Lines.Text;
    Form33.ques[_number]:=memo_vopros.Lines.Text;
   memo_vopros.Lines.Clear;
   end;
   end
   else begin
    showmessage('Выбери картинку');
    end;
end;
If _number<=Form34.GlobKolvo then
begin


  if Application.MessageBox('Вы хотите добавить картинку?','Добавление',MB_YESNO)=IDYES then
  begin
   form12.label1.caption:=list_vopros.Items.strings[_number-1];
  form12.show;
    end
    else
    begin
    if  form34.pathtoquestion = nil then
     form34.pathtoquestion:= Tstringlist.Create;
    form34.pathtoquestion.Add('');
     end;
     _number:=_number+1;


 end;
If list_vopros.Count=Form34.GlobKolvo then
begin
   button1.Enabled:=true;
   button2.Enabled:=false;
end
else
begin
Label3.Caption:=IntToStr(_number);
end;
end;


procedure TForm46.Button2Click(Sender: TObject);
begin
Form62.show;
Form46.Close;
end;

procedure TForm46.ListBox1DblClick(Sender: TObject);
var
listbox:TListBox;
begin
   listbox := (Sender as TListBox);
   if listbox <> nil then
   begin
     with TMemo(FindComponent('memo'+inttostr(listbox.Tag))) do
     begin
      Text:=listbox.Items.Strings[listbox.ItemIndex];
     end;


      button2.Enabled:=true;

    end;
end;

procedure TForm46.Button1Click(Sender: TObject);
var
i, k:integer;
memo:Tmemo;
list:Tlistbox;
otvety: string;

begin

    if Form34.vopros = nil then
     Form34.vopros := Tstringlist.Create;
    if Form34.pathtoquestion = nil then
      Form34.pathtoquestion := TStringList.Create;

    if Form34.otvety = nil then
      Form34.otvety := Tstringlist.Create;

    for i:=0 to list_vopros.Items.Count - 1 do
    begin
     Form34.vopros.Add(list_vopros.Items.Strings[i]);
      otvety := '';

    for k:=0 to _kol - 1 do
    begin
     list:=FindComponent('listbox'+inttostr(k)) as TListBox ;
     otvety :=otvety+'|'+list.Items[i];
    end;
    otvety := Copy(otvety, 2, Length(otvety) - 1);
    Form34.otvety.Add(otvety);
    end;
   Form46.hide;
   Form47.show;
end;


procedure TForm46.Button3Click(Sender: TObject);

begin
freedynamics;
Form46.hide;
Form30.Show;
end;

procedure TForm46.PictureClick(Sender: TObject);
var
    N_testa:Integer;
    button : TButton;
    path:string;
    image: TImage;
begin
SetLength(PicOtv,Form34.GlobKolvo,3);
MyModule.ADOQuery2.Close;
MyModule.ADOQuery2.SQL.clear;
MyModule.ADOQuery2.Sql.Add('SELECT MAX(N_testa) AS MAXN FROM Test');
MyModule.ADOQuery2.Open;
MyModule.ADOQuery2.First;
If MyModule.ADOQuery2.FieldByName ('MAXN').AsInteger<=0 then
  begin
    N_testa:= MyModule.ADOQuery2.FieldByName ('MAXN').AsInteger+101;
  end
else
  begin
  N_testa:=MyModule.ADOQuery2.FieldByName ('MAXN').AsInteger+1;
  end;
begin
try
    MyModule.ADOQuery2.SQL.Clear;
    MyModule.ADOQuery2.SQL.Add('SELECT * FROM Pictures');
    MyModule.ADOQuery2.Active:=True;
except
    on e:Exception do
    Application.MessageBox('Ошибка базы данных','Ошибка');
end;
button := (Sender as TButton);
   if button <> nil then
   begin
OpenPictureDialog1.InitialDir:=ExtractFilePath(Application.ExeName) + 'Pictures\';
   if OpenPictureDialog1.Execute then
   begin
PicOtv[Form46._number-1,2]:=button.Tag+1;
PicOtv[Form46._number-1,1]:=N_testa;
PicOtv[Form46._number-1,0]:=Form46._number;
MyModule.ADOQuery2.Insert;
TBlobField(MyModule.ADOQuery2.FieldByName('path_otv')).LoadFromFile(OpenPictureDialog1.FileName);
MyModule.ADOQuery2.FieldByName('N_otveta').AsInteger:=button.Tag+1;
MyModule.ADOQuery2.FieldByName('N_testa').AsInteger:=N_testa;
MyModule.ADOQuery2.FieldByName('N_vopros').AsInteger:=Form46._number;
MyModule.ADOQuery2.Post;
_pathes.Strings[button.Tag] := OpenPictureDialog1.FileName;
image:=FindComponent('image'+inttostr(button.Tag)) as TImage;
Image.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;
end;
end;
end;

  { button := (Sender as TButton);
   if button <> nil then
   begin
   openDialog1.InitialDir:=ExtractFilePath(Application.ExeName) + 'Pictures\';
   if OpenDialog1.Execute then
    begin
     image:=FindComponent('image'+inttostr(button.Tag)) as TImage ;
     _pathes.Strings[button.Tag] := opendialog1.FileName;
     Image.Picture.LoadFromFile(opendialog1.FileName);

    end; }

procedure TForm46.list_voprosDblClick(Sender: TObject);
begin
      memo_vopros.Lines.Text:=list_vopros.Items.Strings[list_vopros.ItemIndex];
       _number:=list_vopros.ItemIndex+1;
        button2.Enabled:=true;
end;

procedure TForm46.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if _pathes<> nil then
     _pathes.Free;
 Form30.Show;
end;

procedure TForm46.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   CanClose:=false;
end;

end.
