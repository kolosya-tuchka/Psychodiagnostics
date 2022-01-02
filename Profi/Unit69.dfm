object Form69: TForm69
  Left = 191
  Top = 12
  Caption = 'Form69'
  ClientHeight = 631
  ClientWidth = 1032
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
    Top = 56
    Width = 1009
    Height = 49
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
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 1009
    Height = 49
    AutoSize = False
    Caption = 'Label3'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 8
    Top = 248
    Width = 1017
    Height = 65
    AutoSize = False
    Caption = 'Label4'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label5: TLabel
    Left = 8
    Top = 392
    Width = 56
    Height = 22
    Caption = 'Label5'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 880
    Top = 560
    Width = 139
    Height = 57
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 560
    Width = 137
    Height = 57
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 176
    Width = 321
    Height = 57
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091' '#1076#1083#1103' 1-'#1075#1086' '#1086#1090#1074#1077#1090#1072
    Columns = 4
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      '1'
      '2'
      '3')
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 0
    Top = 328
    Width = 329
    Height = 57
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091' '#1076#1083#1103' 2-'#1075#1086' '#1086#1090#1074#1077#1090#1072
    Columns = 4
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemIndex = 1
    Items.Strings = (
      '1'
      '2'
      '3')
    ParentFont = False
    TabOrder = 3
    OnClick = RadioGroup2Click
  end
  object RadioGroup3: TRadioGroup
    Left = 0
    Top = 464
    Width = 329
    Height = 57
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091' '#1076#1083#1103' 3-'#1075#1086' '#1086#1090#1074#1077#1090#1072
    Columns = 4
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemIndex = 2
    Items.Strings = (
      '1'
      '2'
      '3')
    ParentFont = False
    TabOrder = 4
    OnClick = RadioGroup3Click
  end
  object Button3: TButton
    Left = 408
    Top = 560
    Width = 193
    Height = 57
    Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1086#1094#1077#1085#1082#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 488
    object N1: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
    end
  end
end
