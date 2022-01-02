unit Unit66;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm66 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Memo2: TMemo;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form66: TForm66;

implementation

uses Unit65, Unit35, Unit8, Unit49, Unit68, Unit50, Unit69, Unit70;

{$R *.dfm}

procedure TForm66.Button1Click(Sender: TObject);
begin
Form66.Close;
end;

procedure TForm66.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
e:Tlabel;
squery:string;
begin
Case Form49.N_glava of
  0:begin
  Case Form49.N_metod of
  3:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=14';
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
     end;
    4:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=15';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='15';
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
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=15';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
   5:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=16';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='16';
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
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=16';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
   6:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=17';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='17';
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
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=17';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
    7:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=18';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='18';
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
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=18';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
 end;
 end;
 1:begin
    Case Form49.N_metod of
  0:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=21';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='21';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=21';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
     end;
 end;
 2:begin
  Case Form49.N_metod of
  2:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=33';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='33';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=33';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
     3:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=34';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='34';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=34';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;

      4:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=35';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='35';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=35';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
     5:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=36';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='36';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=36';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
     6:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=37';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='37';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=37';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
     7:begin
      MyModule.ADOQuery1.Close;
       MyModule.ADOQuery1.SQL.Clear;
       squery:= 'SELECT * FROM Res_prof where N_vlast=' + intToStr(Form8.id_vlast) +  ' AND N_testa=38';
       MyModule.ADOQuery1.SQL.Text:= squery;
        MyModule.ADOQuery1.open;
       if ( MyModule.ADOQuery1.RecordCount = 0) then begin
          MyModule.ADOQuery1.Insert;
          MyModule.ADOQuery1.FieldByName('N_testa').AsString:='38';
          MyModule.ADOQuery1.FieldByName('N_vlast').AsInteger:=Form8.id_vlast;
          MyModule.ADOQuery1.FieldByName('Results').AsString:=Memo1.Lines.Text;
          MyModule.ADOQuery1.FieldByName('Res_Data').AsString:=Label2.Caption;
          MyModule.ADOQuery1.Active:=True;
          MyModule.ADOQuery1.Post;

       end
       else begin

         MyModule.ADOQuery1.Close;
         MyModule.ADOQuery1.SQL.Clear;
         squery:= 'UPDATE Res_Prof SET Results=' + QuotedStr(Memo1.Lines.Text) + ',Res_Data=' + QuotedStr(Label2.Caption) + ' where N_vlast=' + intToStr(Form8.id_vlast) + ' AND N_testa=38';
         MyModule.ADOQuery1.SQL.Text:= squery;
         MyModule.ADOQuery1.ExecSQL;
       end;
     end;
     end;


 end;
end;
 Case Form49.N_glava of
 0:begin
 case Form49.N_metod of
  3:Form65.Close;
  4:Form68.Close;
  5:Form50.Close;
  6:Form50.Close;
  7:Form69.Close;
 end;
 end;
 1:begin
 case Form49.N_metod of
  0:Form50.Close;

 end;
 end;
 2:begin
 case Form49.N_metod of
  2:Form70.Close;
  3,4,5,6,7:Form50.Close;

 end;
 end;

 end;
 end;




procedure TForm66.N1Click(Sender: TObject);
begin
 if Memo1.Visible=true then
  begin
  Memo1.Visible:=False;
  Memo2.Visible:=True;
  end
 else
  begin
  Memo1.Visible:=True;
  Memo2.Visible:=False;
  end;

end;

procedure TForm66.N2Click(Sender: TObject);
begin
 if Memo1.Visible=true then
  begin
  Memo1.Visible:=False;
  Memo2.Visible:=True;
  end
 else
  begin
  Memo1.Visible:=True;
  Memo2.Visible:=False;
  end;
end;

procedure TForm66.N3Click(Sender: TObject);
begin
 if Memo1.Visible=true then
  begin
  Memo1.Visible:=False;
  Memo2.Visible:=True;
  end
 else
  begin
  Memo1.Visible:=True;
  Memo2.Visible:=False;
  end;
end;


end.
