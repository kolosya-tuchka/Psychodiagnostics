unit Unit71;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, DB, Data.Win.ADODB, System.Win.ComObj,
  System.ImageList;

type
  TForm71 = class(TForm)
    ImageList1: TImageList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    TreeView1: TTreeView;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    multiselect: Array of Integer;
    N_glava, N_metod, ms: Integer;
    profi: Integer;
    { Public declarations }
  end;

var
  Form71: TForm71;

implementation

{$R *.dfm}

uses Unit2, Unit72, Unit65, Unit49, Unit68, Unit69, Unit73, Unit74, Unit75;

procedure TForm71.Button1Click(Sender: TObject);
begin
  If (TreeView1.Selected.Parent <> Nil) then
  begin
    N_glava := TreeView1.Selected.Parent.Index;
  end
  else
  begin
    Application.MessageBox('Выберите тест', 'Внимание');
    exit;
  end;

  if NOT FileExists(ExtractFilePath(Application.ExeName) + 'Psiho\test\' +
    inttostr(N_glava + 1) + inttostr(TreeView1.Selected.Index + 1) + '.xml')
  then
  begin
    Application.MessageBox
      ('В данный момент методика не доступна. Обратитесь к администратору',
      'Внимание');
    exit;

  end;
  case N_glava of
    0:
      begin
        case TreeView1.Selected.Index of
          0, 1, 2, 3, 6, 7:
            begin
              N_metod := TreeView1.Selected.Index;
              Form72.Label2.Caption := TreeView1.Selected.Text;
              Form71.Hide;
              Form72.Show;
            end;
          4:
            Begin
              N_glava := TreeView1.Selected.Parent.Index;
              N_metod := TreeView1.Selected.Index;
              Form73.Label2.Caption := TreeView1.Selected.Text;
              Form71.Hide;
              Form73.Show;
            end;
          5:
            Begin
              N_glava := TreeView1.Selected.Parent.Index;
              N_metod := TreeView1.Selected.Index;
              Form73.Label2.Caption := TreeView1.Selected.Text;
              Form71.Hide;
              Form73.Show;
            end;
        end;
      end;

    1:
      begin
        case TreeView1.Selected.Index of
          0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              N_metod := TreeView1.Selected.Index;
              Form72.Label2.Caption := TreeView1.Selected.Text;
              Form71.Hide;
              Form72.Show;
            end;
        end;
      end;
    2:
      begin
        case TreeView1.Selected.Index of
          0, 1, 3, 4, 5, 6, 7:
            Begin
              N_metod := TreeView1.Selected.Index;
              Form72.Label2.Caption := TreeView1.Selected.Text;
              Form71.Hide;
              Form72.Show;
            end;
          2:
            begin
              N_metod := TreeView1.Selected.Index;
              Form72.Label2.Caption := TreeView1.Selected.Text;
              Form71.Hide;
              Form72.Show;
            end;
        end;
      end;

    3:
      begin
        case TreeView1.Selected.Index of
          0:
            Begin
              N_metod := TreeView1.Selected.Index;
              Form75.Label2.Caption := TreeView1.Selected.Text;
              Form75.Label1.Caption :=
                'Оцените каждое качество с точки зрения полезности, социальной значимости, желательности. Нажмите на слово и поставьте оценку';
              Form71.Hide;
              Form75.Show;
            end;
          2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
            begin
              N_metod := TreeView1.Selected.Index;
              Form72.Label2.Caption := TreeView1.Selected.Text;
              Form71.Hide;
              Form72.Show;
            end;
        end;
      end;
  end;
end;

procedure TForm71.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Show;
end;

end.
