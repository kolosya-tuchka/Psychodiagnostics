unit StartTest;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button14: TButton;
    Button13: TButton;
    Button12: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Button5: TButton;
    Button15: TButton;
    procedure Button5Click(Sender: TObject);

    procedure Button3Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
      
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1,Unit6,Unit8, Unit10, Unit13, Unit15, Unit17, Unit19, Unit20,
  Unit21, Unit23, Unit29, Unit37, Unit38, Unit30, Unit31, Unit40,
  Unit42, Unit44, Unit33, Unit34, Unit32, Unit41, Unit43, Unit45, Unit48,
   Unit46, Unit47, Unit36, Unit27, Unit7, Unit28,
  Unit88, Unit52, Unit49, Unit71, Unit78;

{$R *.dfm}

procedure TForm2.Button5Click(Sender: TObject);
begin
Form78.Visible:=True;
Form2.Close;
end;



procedure TForm2.Button3Click(Sender: TObject);
begin
form2.hide;
   //Form10.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text ;
   Form10.Init;
   Form10.Show;

end;

procedure TForm2.Button9Click(Sender: TObject);
begin
form2.hide;
   Form1.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
   
   Form6.Show;

end;

procedure TForm2.Button4Click(Sender: TObject);
begin
form2.hide;
//Form13.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
Form13.Init;
Form13.Show;

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
form2.hide;
//Form15.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
Form15.Init;
Form15.Show;

end;

procedure TForm2.Button7Click(Sender: TObject);
begin
form2.hide;
//Form17.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
Form17.Init;
Form17.Show;

end;

procedure TForm2.Button8Click(Sender: TObject);
begin
form2.hide;
//Form19.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
Form19.Init;
Form19.Show;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
form2.hide;
//Form20.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
form20.Init;
Form20.Show;

end;

procedure TForm2.Button10Click(Sender: TObject);
begin
form21.Init;
form21.Button1.Enabled:=True;
form21.Button2.Enabled:=True;
form2.hide;
//Form21.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
Form21.Show;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
form2.hide;
//Form23.Label6.Caption:=Form8.DBLookupComboBox1.Text+' '+Form8.DBLookupComboBox2.Text;
Form23.Init;
Form23.Show;
end;


procedure TForm2.Button12Click(Sender: TObject);
begin
 form2.hide;
 if (Form38 <> nil) then freeandnil(Form38);
 Form38 :=TForm38.Create(nil);
 Form38.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin

Form7.show;
Form2.hide;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form78.Visible:=True;
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
Form2.hide;
Form52:=nil;
try
  Form52:=TForm52.Create(nil);
  Form52.Label4.Caption:=label3.caption;
  form2.hide;
  Form52.Panel9.Color:=clBlue;
  Form52.Showmodal;
  finally
  FreeAndNil(Form52);
end;
Form2.Show;
end;
  procedure TForm2.Button15Click(Sender: TObject);
begin
Form2.hide;
Form52:=nil;
try
  Form52:=TForm52.Create(nil);
  Form52.Label4.Caption:=label3.caption;
  form2.hide;
  Form52.Panel9.Color:=clBlue;
  Form52.Showmodal;
  finally
  FreeAndNil(Form52);
end;
Form2.Show;
end;

//label1.Caption:= timetostr(time) ;
procedure TForm2.Button13Click(Sender: TObject);
begin
Form49.Show;
Form49.Label1.Visible:=False;
Form2.Hide;
end;

end.
