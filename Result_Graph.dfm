object Res_Gr: TRes_Gr
  Left = 301
  Top = 136
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072
  ClientHeight = 491
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 825
    Height = 49
    AutoSize = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 825
    Height = 49
    AutoSize = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Chart1: TChart
    Left = 16
    Top = 144
    Width = 545
    Height = 337
    AllowPanning = pmNone
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Gradient.EndColor = 4227072
    Gradient.StartColor = clPurple
    Gradient.Visible = True
    LeftWall.Color = 16744576
    Legend.DividingLines.Color = -1
    Legend.DividingLines.Visible = True
    Legend.TextStyle = ltsRightValue
    Legend.TopPos = 12
    MarginLeft = 15
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 999.000000000000000000
    View3D = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Zoom.Allow = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TPieSeries
      Cursor = crArrow
      Marks.Style = smsLabelPercent
      SeriesColor = clRed
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Width = 4
      CircleBackColor = clLime
      Dark3D = False
      ExplodeBiggest = 10
      OtherSlice.Legend.Visible = False
      OtherSlice.Text = 'Other'
      RotationAngle = 150
    end
  end
  object Chart2: TChart
    Left = 16
    Top = 144
    Width = 545
    Height = 337
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = 12615808
    Gradient.StartColor = clTeal
    Gradient.Visible = True
    Legend.ColorWidth = 55
    Legend.DividingLines.Visible = True
    Legend.Symbol.Width = 55
    Legend.TextStyle = ltsRightValue
    Title.Text.Strings = (
      'TChart')
    View3D = False
    TabOrder = 1
    Visible = False
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series3: TBarSeries
      Marks.Style = smsPercent
      SeriesColor = 4227327
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 616
    Top = 408
    Width = 225
    Height = 73
    Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089#1090#1086#1083#1073#1094#1086#1074#1091#1102' '#1076#1080#1072#1075#1088#1072#1084#1084#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = Button1Click
  end
end
