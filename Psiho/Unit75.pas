unit Unit75;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, Grids;


type
  TForm75 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;

    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    // procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
    // var CanSelect: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StringGrid1Click(Sender: TObject);

  private
    { Private declarations }
  public
    check: Integer;
    flag: Integer;
    flagclear: Integer;
    { Public declarations }

   end;
var
  Form75: TForm75;
  Select: array [0 .. 2] of array [0 .. 19] of Integer;

implementation

{$R *.dfm}

uses Unit71, Res_41;

procedure key;
var
  i: Integer;
  sum: real;
  myDate: string;
begin
sum:=0;
  for i := 0 to 19 do
  begin
    Select[2, i] := Select[0, i] - Select[1, i];
    Select[2, i] := Select[2, i] * Select[2, i];
    sum := sum + Select[2, i];
  end;
  sum := sum * 0.00075;
  sum := 1 - sum;
  myDate := FormatDateTime('dd.mm.yyyy"-"hh:nn:ss', Now);
  Res_4_1.Memo1.Lines.Add('Коэффициент ранговой корреляции - выражает характер и тесноту связи между отношением человека к качествам, названным в бланке и самооценкой тех же качеств у самого себя.');
  Res_4_1.Memo1.Lines.Add('Чем ближе к +1, тем выше самооценка личности. Оценка выше 0,85 - завышенная самооценка, некритическое отношение к себе');
  Res_4_1.Label1.Caption:='Коэффициент ранговой корреляции - ' + floatToStr(sum);
  Res_4_1.Label8.Caption := myDate;
  Res_4_1.Showmodal;

end;

procedure TForm75.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  if flag = 1 then
  begin

    key;
    Close;

  end;
  Label1.Caption :=
    'Оцените оценкой "20" качество, которое, по вашему мнению, присущее вам в наибольшей степени, оценкой "19"-присущее вам несколько меньше и т.д.  ';
  for i := 0 to 19 do
  begin
    RadioGroup1.Buttons[i].Enabled := True;
  end;
  FormShow(Self);
  flag := 1;
  Form75.Show;
end;

procedure TForm75.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form71.Show;
end;

procedure TForm75.FormShow(Sender: TObject);
begin

  StringGrid1.Cells[0, 0] := 'Уступчивость';

  StringGrid1.Cells[1, 0] := 'Смелость';

  StringGrid1.Cells[2, 0] := 'Вспыльчивость';

  StringGrid1.Cells[3, 0] := 'Настойчивость';

  StringGrid1.Cells[4, 0] := 'Нервозность';

  StringGrid1.Cells[0, 1] := 'Терпиливость';

  StringGrid1.Cells[1, 1] := 'Увлекаемость';

  StringGrid1.Cells[2, 1] := 'Пассивность';

  StringGrid1.Cells[3, 1] := 'Холодность';

  StringGrid1.Cells[4, 1] := 'Энтузиазм';

  StringGrid1.Cells[0, 2] := 'Осторожность';

  StringGrid1.Cells[1, 2] := 'Капризность';

  StringGrid1.Cells[2, 2] := 'Медлительность';

  StringGrid1.Cells[3, 2] := 'Нерешительность';

  StringGrid1.Cells[4, 2] := 'Энергичность';

  StringGrid1.Cells[0, 3] := 'Жизнерадостность';

  StringGrid1.Cells[1, 3] := 'Мнительность';

  StringGrid1.Cells[2, 3] := 'Упрямство';

  StringGrid1.Cells[3, 3] := 'Беспечность';

  StringGrid1.Cells[4, 3] := 'Застенчивость';
end;

procedure TForm75.RadioGroup1Click(Sender: TObject);

begin

  check := check + 1;
  Select[flag, (5 * StringGrid1.Selection.Top) + StringGrid1.Selection.Left] :=
    RadioGroup1.ItemIndex + 1;
  StringGrid1.Cells[StringGrid1.Selection.Left,
    StringGrid1.Selection.Top] := '';

  RadioGroup1.Buttons[RadioGroup1.ItemIndex].Enabled := False;
  Panel1.Visible := False;
  Panel1.Enabled := False;
  if ((check = 40) and (flag = 1)) then
  begin
    Application.MessageBox('Тест пройден. Нажмите кнопку "К результатам"',
      'Отлично');
    Button1.Caption := 'К результатам';
    Button1.Visible := True;
    Button1.Enabled := True;
  end;
  if check = 20 then
  begin
    Button1.Visible := True;
    Button1.Enabled := True;

  end;

end;

procedure TForm75.StringGrid1Click(Sender: TObject);
begin
  if StringGrid1.Cells[StringGrid1.Selection.Left, StringGrid1.Selection.Top] = ''
  then
  begin

    Application.MessageBox('Данная ячейка пустая', 'Внимание');
    exit;
  end;

  Panel1.Visible := True;
  Panel1.Enabled := True;
end;

end.
