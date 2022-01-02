unit Unit76;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm76 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
//    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form76: TForm76;

implementation

{$R *.dfm}



procedure TForm76.Button1Click(Sender: TObject);
begin
Form76.Close;
end;

{procedure TForm76.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
e:Tlabel;
squery:string;
begin
    Case Form71.N_glava of
  0:begin
  Case Form71.N_metod of
  {0:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=11';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='14';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
         //ADOQuery1.FieldByName('Choice').AsString:= s;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=14';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;     }


end.
