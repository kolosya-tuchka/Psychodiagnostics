object Form61: TForm61
  Left = 416
  Top = 168
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1040#1082#1090#1080#1074#1072#1094#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 408
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 144
    Top = 176
    Width = 176
    Height = 24
    Caption = #1055#1088#1086#1074#1077#1088#1086#1095#1085#1099#1081' '#1082#1086#1076':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 168
    Top = 48
    Width = 121
    Height = 24
    Caption = #1050#1086#1076' '#1076#1086#1089#1090#1091#1087#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 168
    Top = 80
    Width = 121
    Height = 21
    MaxLength = 255
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 216
    Width = 121
    Height = 21
    MaxLength = 255
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 256
    Top = 216
    Width = 121
    Height = 21
    MaxLength = 255
    TabOrder = 2
  end
  object Button1: TButton
    Left = 344
    Top = 352
    Width = 121
    Height = 41
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 352
    Width = 123
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
end
