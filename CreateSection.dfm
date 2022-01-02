object Form79: TForm79
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Create section'
  ClientHeight = 424
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 480
    Height = 23
    Caption = #1042#1087#1080#1096#1080#1090#1077' '#1080#1084#1103' '#1088#1072#1079#1076#1077#1083#1072' ('#1086#1085#1086' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100' '#1091#1085#1080#1082#1072#1083#1100#1085#1099#1084')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 136
    Width = 470
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1091#1088#1089', '#1082' '#1082#1086#1090#1086#1088#1086#1084#1091' '#1073#1091#1076#1077#1090' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1072#1090#1100' '#1101#1090#1086#1090' '#1088#1072#1079#1076#1077#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 88
    Width = 497
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MaxLength = 250
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 417
    Top = 349
    Width = 139
    Height = 57
    Caption = #1043#1086#1090#1086#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 349
    Width = 139
    Height = 57
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object ComboBox2: TComboBox
    Left = 24
    Top = 177
    Width = 473
    Height = 27
    DropDownCount = 10
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnChange = ComboBox2Change
  end
end
