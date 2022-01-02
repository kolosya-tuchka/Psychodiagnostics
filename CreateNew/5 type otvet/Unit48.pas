unit Unit48;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm48 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    balls:array of array of integer;
  end;

var
  Form48: TForm48;
  number:integer;

implementation

uses Unit32, Unit47, Unit46, Unit34, StartTest, Unit62, Unit35;

{$R *.dfm}


procedure TForm48.FormCreate(Sender: TObject);
var
 i, j: Integer;
 temp:TstringList;
 k,top:integer;
l:Tlabel;
m:Tedit;
begin

number:=1;
Case Form34.Type_otvet of
5:begin
   temp := delimited(Form34.otvety.Strings[number-1]);
   SetLength(balls, 100, Form34.otvety.Count);
  For i:=0 to  Form34.vopros.Count-1 do
    for j:=0 to Form34.otvety.Count-1 do
        balls[i,j]:=0;

  if Length(balls) > 0 Then begin
   top:=15;
   for k:=0 to temp.Count - 1   do
    begin
    l:=TLabel.Create(Self);
    l.Parent:=ScrollBox1;
    l.WordWrap:=true;
    l.AutoSize:=true;
    l.Font.Size:=12;
    l.Font.Style:=[fsBold];
    l.Font.Name:='Times New Roman';
    l.Name := 'form48label'+inttostr(k);
    l.caption:= temp.Strings[k];
    l.Left:= ScrollBox1.Width div 20;
    l.Width :=(18*ScrollBox1.Width div 20) div 2 ;
    l.Height:=20;
    l.Top:=top;
    l.Visible := true;
      m:=TEdit.Create(Self);
      m.Name:='form48memo'+inttostr(k);
      m.Tag :=k;
      m.Parent:=ScrollBox1;
      m.Left:=ScrollBox1.Width div 20;
      m.Width :=(18*ScrollBox1.Width div 20)div 2 ;
      m.Height:=70;
      m.Top:=top + l.height;
      m.Visible := true;
      m.Text := '';
      top:=l.top + l.height + m.Height +20;
    end;
    temp.Free;
   end;
   end;
7:begin
  temp := delimited(Form34.otvety.Strings[number-1]);
  SetLength(balls, Form34.vopros.Count, temp.Count);
  For i:=0 to  Form34.vopros.Count-1 do
    for j:=0 to Form34.otvety.Count-1 do
        balls[i,j]:=0;

  if Length(balls) > 0 Then begin
   top:=15;
   for k:=0 to Length(balls[number-1]) - 1   do
    begin
    l:=TLabel.Create(Self);
    l.Parent:=ScrollBox1;
    l.WordWrap:=true;
    l.AutoSize:=true;
    l.Font.Size:=12;
    l.Font.Style:=[fsBold];
    l.Font.Name:='Times New Roman';
    l.Name := 'form48label'+inttostr(k);
    l.caption:= '����� ' + inttostr(k+1) + ':' ;
    l.Left:= ScrollBox1.Width div 20;
    l.Width :=(18*ScrollBox1.Width div 20) div 2 ;
    l.Height:=20;
    l.Top:=top;
    l.Visible := true;
      m:=TEdit.Create(Self);
      m.Name:='form48memo'+inttostr(k);
      m.Tag :=k;
      m.Parent:=ScrollBox1;
      m.Left:=ScrollBox1.Width div 20;
      m.Width :=(18*ScrollBox1.Width div 20)div 2 ;
      m.Height:=70;
      m.Top:=top + l.height;
      m.Visible := true;
      m.Text := '';
      top:=l.top + l.height + m.Height +20;
    end;
    temp.Free;

   end;
 end;
end;
end;
procedure TForm48.Button2Click(Sender: TObject);
begin
Form62.show;
Form48.Close;
end;

procedure TForm48.Button1Click(Sender: TObject);
begin
Form48.hide;
Form34.Show;

end;

procedure TForm48.Button3Click(Sender: TObject);
begin
Form48.hide;
Form47.Show;
end;

procedure TForm48.Button4Click(Sender: TObject);
var
 k:Integer;
 temp:TstringList;
 l:Tlabel;
 m:Tedit;

begin
 Case Form34.Type_otvet of
 5:begin
 If number<=Form34.GlobKolvo then
 begin
       temp := delimited(Form34.otvety.Strings[number-1]);
   for k:=0 to temp.Count - 1   do
    begin
      m:=FindComponent('form48memo'+inttostr(k)) As TEdit;
      balls[number-1,k] := StrToInt(m.Text);
    end;
   temp.Free;
   number:=number+1;
   If number<=Form34.GlobKolvo then
   begin
     temp := TStringList.Create;
     label3.Caption:=IntToStr(number);
 temp := delimited(Form34.otvety.Strings[number-1]);
     for k:=0 to temp.Count - 1   do
     begin
       l:= FindComponent('form48label'+inttostr(k)) As TLabel;
       l.caption:= temp.Strings[k];
       m:=FindComponent('form48memo'+inttostr(k)) As TEdit;
       m.Text := '';
     end;
     temp.Free;
   end;
    end;
 if number>Form34.GlobKolvo  then
  begin
    button4.Enabled:=false;
    button1.Enabled:=true;
    m.Text := '';
  end;
 end;
 7:begin
 If number<=Form34.GlobKolvo then
 begin
  
     temp := delimited(Form34.otvety.Strings[number-1]);
   for k:=0 to Length(balls[number-1]) - 1   do
    begin
      m:=FindComponent('form48memo'+inttostr(k)) As TEdit;
      balls[number-1,k] := StrToInt(m.Text);
    end;
   temp.Free;
   number:=number+1;
   If number<=Form34.GlobKolvo then
   begin
     temp := TStringList.Create;
     label3.Caption:=IntToStr(number);
     temp := delimited(Form34.otvety.Strings[number-1]);
     for k:=0 to Length(balls[number-1]) - 1   do
     begin
       l:= FindComponent('form48label'+inttostr(k)) As TLabel;
       l.caption:= '����� ' + IntTostr(number) + ':';
       m:=FindComponent('form48memo'+inttostr(k)) As TEdit;
       m.Text := '';
     end;
     temp.Free;
   end;
    end;
 if number>Form34.GlobKolvo  then
  begin
    button4.Enabled:=false;
    button1.Enabled:=true;
    m.Text := '';
  end;
 end;
end;
end;
procedure TForm48.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
