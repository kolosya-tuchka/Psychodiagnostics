unit Result_Graph;

interface

uses
  WinApi.Windows, WinApi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, VCLTee.TeeProcs, VCLTee.TeEngine, VCLTee.Chart, VCLTee.Series, StdCtrls,
  VclTee.TeeGDIPlus ;

type
  TRes_Gr = class(TForm)
    Chart1: TChart;
    Series1: TPieSeries;
    Label1: TLabel;
    Label2: TLabel;
    Chart2: TChart;
    Series3: TBarSeries;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  mas_diag: array of array of  integer;
     { Public declarations }
  end;

var
  Res_Gr: TRes_Gr;

implementation
 uses  Result;
{$R *.dfm}

procedure TRes_Gr.FormShow(Sender: TObject);
var i:integer;
begin

{for i:=0 to Results.c-2 do
begin
  Chart1.Series[0].Add(mas_diag[Results.Cells-1,i], Results.StringGrid1.Cells[i+1,0]);
  Chart2.Series[0].Add(mas_diag[Results.Cells-1,i], Results.StringGrid1.Cells[i+1,0]);
end;}
end;
procedure TRes_Gr.Button1Click(Sender: TObject);
begin
if chart1.Visible=true then
  begin
    button1.Caption:='Отобразить круговую диаграмму';
    chart2.Visible:=True;
    chart1.Visible:=False;
  end

else
  begin
    button1.Caption:='Отобразить столбцовую диаграмму';
    chart2.Visible:=False;
    chart1.Visible:=True;
  end;
end;

end.
