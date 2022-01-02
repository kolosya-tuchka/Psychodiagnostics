object TestRuk: TTestRuk
  Left = 254
  Top = 134
  Caption = #1042#1086#1087#1088#1086#1089' 1 '#1080#1079' '
  ClientHeight = 511
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 62
    Height = 24
    Caption = 'Label1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Question: TLabel
    Left = 122
    Top = 48
    Width = 500
    Height = 100
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Memo1: TMemo
    Left = 128
    Top = 160
    Width = 513
    Height = 185
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 448
    Top = 408
    Width = 137
    Height = 57
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 408
    Width = 145
    Height = 57
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 648
    Top = 16
    Width = 105
    Height = 49
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 640
    Top = 160
    Width = 121
    Height = 97
    Enabled = False
    ItemHeight = 13
    TabOrder = 4
    Visible = False
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 48
    Width = 113
    Height = 417
    Caption = #1054#1094#1077#1085#1082#1072
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 688
    Top = 88
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1089#1085#1086#1074#1072
      OnClick = N1Click
    end
  end
end
