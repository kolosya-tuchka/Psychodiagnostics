object Form72: TForm72
  Left = 0
  Top = 0
  Caption = 'Form72'
  ClientHeight = 539
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 112
    Width = 957
    Height = 89
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
    Top = 24
    Width = 71
    Height = 26
    Caption = 'Label2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 808
    Top = 465
    Width = 139
    Height = 66
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 465
    Width = 153
    Height = 66
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 242
    Width = 913
    Height = 217
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 928
    Top = 8
    object N1: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
      OnClick = N1Click
    end
  end
end
