object Form51: TForm51
  Left = 191
  Top = 36
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  ClientHeight = 611
  ClientWidth = 1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1065
    Height = 609
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label1'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
      OnClick = Label1Click
    end
    object Label2: TLabel
      Left = 560
      Top = 24
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label2'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 8
      Top = 108
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label3'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
      OnClick = Label3Click
    end
    object Label4: TLabel
      Left = 560
      Top = 108
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label4'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
      OnClick = Label4Click
    end
    object Label5: TLabel
      Left = 8
      Top = 192
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label5'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
      OnClick = Label5Click
    end
    object Label6: TLabel
      Left = 560
      Top = 192
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label6'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
      OnClick = Label6Click
    end
    object Label7: TLabel
      Left = 8
      Top = 352
      Width = 169
      Height = 33
      AutoSize = False
      Caption = #1044#1072#1090#1072' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label8: TLabel
      Left = 8
      Top = 384
      Width = 56
      Height = 22
      Caption = 'Label8'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label9: TLabel
      Left = 8
      Top = 264
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label9'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
      OnClick = Label9Click
    end
    object Label10: TLabel
      Left = 560
      Top = 264
      Width = 500
      Height = 73
      AutoSize = False
      Caption = 'Label10'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = True
      OnClick = Label10Click
    end
    object Memo1: TMemo
      Left = 184
      Top = 352
      Width = 873
      Height = 249
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      Visible = False
    end
    object Button1: TButton
      Left = 8
      Top = 552
      Width = 99
      Height = 49
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Chart1: TChart
      Left = 183
      Top = 359
      Width = 873
      Height = 250
      BackWall.Brush.Style = bsClear
      Legend.LegendStyle = lsValues
      Legend.Visible = False
      Title.Text.Strings = (
        'TChart')
      View3D = False
      TabOrder = 2
      Visible = False
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TBarSeries
        BarPen.Visible = False
        ColorEachPoint = True
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        SeriesColor = clRed
        BarStyle = bsCilinder
        MultiBar = mbNone
        SideMargins = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
    end
    object Button2: TButton
      Left = 8
      Top = 432
      Width = 169
      Height = 49
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1082' '#1076#1080#1072#1075#1088#1072#1084#1084#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      WordWrap = True
      OnClick = Button2Click
    end
  end
end
