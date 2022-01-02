object Form68: TForm68
  Left = 163
  Top = 88
  Caption = 'Form68'
  ClientHeight = 492
  ClientWidth = 1033
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
    Height = 33
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
    Left = 16
    Top = 112
    Width = 321
    Height = 129
    AutoSize = False
    Caption = 'Label3'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 688
    Top = 112
    Width = 329
    Height = 121
    AutoSize = False
    Caption = 'Label4'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 880
    Top = 424
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
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 424
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
    Left = 8
    Top = 272
    Width = 321
    Height = 129
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091' '#1076#1083#1103' 1-'#1075#1086' '#1086#1090#1074#1077#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Items.Strings = (
      '0'
      '1'
      '2'
      '3')
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 688
    Top = 256
    Width = 329
    Height = 145
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1094#1077#1085#1082#1091' '#1076#1083#1103' 2-'#1075#1086' '#1086#1090#1074#1077#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Items.Strings = (
      '0'
      '1'
      '2'
      '3')
    ParentFont = False
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 384
    Top = 456
    object N1: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
      OnClick = N1Click
    end
  end
end
