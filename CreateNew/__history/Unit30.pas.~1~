unit Unit30;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm30 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Label1: TLabel;
    Label3: TLabel;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    
     private

    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form30: TForm30;

implementation

uses Unit29,Unit31,Unit34,Unit35,Unit40,Unit42,Unit44,Unit46,Unit2,
  Unit62, Unit4,hand_test;

{$R *.dfm}

procedure TForm30.Button3Click(Sender: TObject);
begin
Form30.hide;
Form29.Show;
end;

procedure TForm30.Button2Click(Sender: TObject);
begin
Form62.show;
Form30.Close;
end;

procedure TForm30.ListBox1Click(Sender: TObject);
begin
Case ListBox1.ItemIndex of
0: begin
      label1.Caption:='Испытуемый при ответе на вопрос может выбрать только "Да" или "Нет".';
      Button1.Enabled:=true;
      label3.Caption:='';
   end;
1: begin
      label1.Caption:='Испытуемый при ответе на вопрос может выбрать "Да", "Иногда" или "Нет".';
      Button1.Enabled:=true;
      label3.Caption:='';
   end;
2: begin
      label1.Caption:='Испытуемый может выбрать один ответ из четырех :"Всегда", "Иногда", "Редко", "Никогда".';
      Button1.Enabled:=true;
      label3.Caption:='';
   end;
3: begin
      label1.Caption:='Испытуемый может выбрать один ответ из пяти :"Всегда", "Часто", "Иногда", "Редко", "Никогда".';
      Button1.Enabled:=true;
      label3.Caption:='';
   end;
4: begin
      label1.Caption:='Все ответы являются смысловым продолжением вопроса, т.е. зависят от номера вопроса и всегда разные.';
      Button1.Enabled:=true;
      label3.Caption:='';
   end;
5: begin
      label1.Caption:='Варианты ответа к теста отображаются ввиде картинок';
      Button1.Enabled:=true;
      label3.Caption:='';
   end;
6: begin
      label1.Caption:='Испытуемому предлагается ответить на вопрос по средствам ручного ввода ответа';
      Button1.Enabled:=true;
      label3.Caption:='';
   end;
end;

end;

procedure TForm30.Button1Click(Sender: TObject);
var
res : Integer;
begin
Case ListBox1.ItemIndex of
0: begin
      Form34.GlobKol_otvet:=2;
      Form34.GlobOtv1:='Да';
      Form34.GlobOtv2:='Нет';
      Form34.GlobOtv3:='';
      Form34.GlobOtv4:='';
      Form34.GlobOtv5:='';
      Form34.Type_otvet:=1;
      Form30.hide;
      Form31.Edit1.Clear;
      Form31.Edit2.Clear;
      Form31.Show;

   end;
1: begin
      Form34.GlobKol_otvet:=3;
      Form34.GlobOtv1:='Да';
      Form34.GlobOtv2:='Иногда';
      Form34.GlobOtv3:='Нет';
      Form34.GlobOtv4:='';
      Form34.GlobOtv5:='';
      Form34.Type_otvet:=2;
     Form30.hide;
      Form40.Edit1.Clear;
      Form40.Edit2.Clear;
      Form40.Edit3.Clear;
      Form40.Show;

   end;
2: begin
      Form34.GlobKol_otvet:=4;
      Form34.GlobOtv1:='Всегда';
      Form34.GlobOtv2:='Иногда';
      Form34.GlobOtv3:='Редко';
      Form34.GlobOtv4:='Никогда';
      Form34.GlobOtv5:='';
      Form34.Type_otvet:=3;
     Form30.hide;
      Form42.Edit1.Clear;
      Form42.Edit2.Clear;
      Form42.Edit3.Clear;
      Form42.Edit4.Clear;
      Form42.Show;

   end;
3: begin
      Form34.GlobKol_otvet:=5;
      Form34.GlobOtv1:='Всегда';
      Form34.GlobOtv2:='Часто';
      Form34.GlobOtv3:='Иногда';
      Form34.GlobOtv4:='Редко';
      Form34.GlobOtv5:='Никогда';
      Form34.Type_otvet:=4;
      Form30.hide;
      Form44.Edit1.Clear;
      Form44.Edit2.Clear;
      Form44.Edit3.Clear;
      Form44.Edit4.Clear;
      Form44.Edit5.Clear;
      Form44.Show;

   end;
4: begin

      Form34.GlobOtv1:='';
      Form34.GlobOtv2:='';
      Form34.GlobOtv3:='';
      Form34.GlobOtv4:='';
      Form34.GlobOtv5:='';
      Form34.Type_otvet:=5;
     // Form46.Label4.Caption:='(В вашем тесте ' + IntToStr(Form34.GlobKolvo) + ' вопросов)';
     Form30.hide;
      //Form46.memo_vopros.Clear;
      Form4:=nil;
    try
      Form4:=TForm4.Create(nil);
       res:=Form4.ShowModal;

      finally
      Form4.Free;
        Form4 := nil;
      end;
      if res = mrCancel then
        Form30.show;
   end;

 5:begin
      Form34.GlobOtv1:='';
      Form34.GlobOtv2:='';
      Form34.GlobOtv3:='';
      Form34.GlobOtv4:='';
      Form34.GlobOtv5:='';
      Form34.Type_otvet:=7;
      if Form46= nil then
        Form46:=TForm46.Create(nil);
      Form46.Label4.Caption:='(В вашем тесте ' + IntToStr(Form34.GlobKolvo) + ' вопросов)';
     Form30.hide;
     Form46.memo_vopros.Clear;
      Form4:=nil;
    try
      Form4:=TForm4.Create(nil);
      res:= Form4.Showmodal;

      finally
        Form4.Free;
        Form4 := nil;
      end;
            if res = mrCancel then
        Form30.show;

     
   end;
  6:begin

     HandTest.Type_otvet:=6;
     form30.hide;
     HandTest.Show;

   end;
end;
end;

procedure TForm30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form62.show;

end;

end.
 