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
  Res_4_1.Memo1.Lines.Add('����������� �������� ���������� - �������� �������� � ������� ����� ����� ���������� �������� � ���������, ��������� � ������ � ����������� ��� �� ������� � ������ ����.');
  Res_4_1.Memo1.Lines.Add('��� ����� � +1, ��� ���� ���������� ��������. ������ ���� 0,85 - ���������� ����������, ������������� ��������� � ����');
  Res_4_1.Label1.Caption:='����������� �������� ���������� - ' + floatToStr(sum);
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
    '������� ������� "20" ��������, �������, �� ������ ������, �������� ��� � ���������� �������, ������� "19"-�������� ��� ��������� ������ � �.�.  ';
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

  StringGrid1.Cells[0, 0] := '������������';

  StringGrid1.Cells[1, 0] := '��������';

  StringGrid1.Cells[2, 0] := '�������������';

  StringGrid1.Cells[3, 0] := '�������������';

  StringGrid1.Cells[4, 0] := '�����������';

  StringGrid1.Cells[0, 1] := '������������';

  StringGrid1.Cells[1, 1] := '������������';

  StringGrid1.Cells[2, 1] := '�����������';

  StringGrid1.Cells[3, 1] := '����������';

  StringGrid1.Cells[4, 1] := '���������';

  StringGrid1.Cells[0, 2] := '������������';

  StringGrid1.Cells[1, 2] := '�����������';

  StringGrid1.Cells[2, 2] := '��������������';

  StringGrid1.Cells[3, 2] := '���������������';

  StringGrid1.Cells[4, 2] := '������������';

  StringGrid1.Cells[0, 3] := '����������������';

  StringGrid1.Cells[1, 3] := '������������';

  StringGrid1.Cells[2, 3] := '���������';

  StringGrid1.Cells[3, 3] := '�����������';

  StringGrid1.Cells[4, 3] := '�������������';
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
    Application.MessageBox('���� �������. ������� ������ "� �����������"',
      '�������');
    Button1.Caption := '� �����������';
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

    Application.MessageBox('������ ������ ������', '��������');
    exit;
  end;

  Panel1.Visible := True;
  Panel1.Enabled := True;
end;

end.
