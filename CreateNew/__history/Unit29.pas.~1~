unit Unit29;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Data.Win.ADODB, Grids, DBGrids, Mask;

type
  TForm29 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  
      
  private
    { Private declarations }
  public GlobNumberEtap:Integer;
         GlobN:Integer;
    { Public declarations }
  end;

var
  Form29: TForm29;
  i:integer;
implementation

uses Unit30, Unit34, Unit35, Unit33, Unit2, Unit62, Balls;

{$R *.dfm}
procedure TForm29.Button2Click(Sender: TObject);
begin
Form29.Close;
Form62.show;
end;

procedure TForm29.Button1Click(Sender: TObject);
var
i,k:integer;
begin

 If Edit1.Text='' then MessageBox(Form29.Handle, 'Введите название теста.','Не закончен ввод информации', MB_OK)
 Else
  begin
    If Edit2.Text='' then MessageBox(Form29.Handle, 'Введите количество вопросов.','Не закончен ввод информации', MB_OK)
    Else
     begin
      Form34.GlobNazv:=Edit1.Text;
      Form34.GlobOpis:=Memo1.Lines.Text;
     try
    i:=strtoint(Edit2.text);
   except
     on Exception : EConvertError do begin

       ShowMessage('ошибка ввода');
        exit;
   
   end;

       end;
       Form34.GlobKolvo := i;
        Form34.ComboBox1.Clear;

   for k := 1 to Form34.GlobKolvo do
   Form34.ComboBox1.Items.Add(inttostr(k));
       form34.ComboBox1.ItemIndex:=0;
      Form33.Label4.Caption:='(В Вашем тесте ' + IntToStr(Form34.GlobKolvo) + ' вопросов)';

       
       Form29.hide;
      Form30.Show;


     end;
  end;
end;
procedure TForm29.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form62.show;
end;

end.
