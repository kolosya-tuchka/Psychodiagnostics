object Form75: TForm75
  Left = 0
  Top = 0
  Caption = 'Form75'
  ClientHeight = 603
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 47
    Width = 1009
    Height = 177
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 1017
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 879
    Top = 536
    Width = 139
    Height = 57
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    WordWrap = True
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 33
    Top = 334
    Width = 960
    Height = 184
    DefaultColWidth = 190
    DefaultRowHeight = 40
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = StringGrid1Click
  end
  object Button2: TButton
    Left = 8
    Top = 536
    Width = 137
    Height = 57
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 33
    Top = 237
    Width = 960
    Height = 91
    Enabled = False
    TabOrder = 3
    Visible = False
    object RadioGroup1: TRadioGroup
      Left = 0
      Top = 3
      Width = 961
      Height = 88
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091
      Columns = 10
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 998
    object N1: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
    end
  end
end
