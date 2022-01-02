object Form80: TForm80
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1072#1079#1076#1077#1083
  ClientHeight = 382
  ClientWidth = 685
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
    Left = 8
    Top = 72
    Width = 153
    Height = 23
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1072#1079#1076#1077#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 129
    Height = 23
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1091#1088#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 194
    Top = 73
    Width = 473
    Height = 27
    DropDownCount = 10
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object Button1: TButton
    Left = 512
    Top = 312
    Width = 155
    Height = 52
    Caption = #1044#1072#1083#1077#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 312
    Width = 155
    Height = 52
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
  object Button3: TButton
    Left = 512
    Top = 240
    Width = 155
    Height = 52
    Caption = #1053#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object ComboBox2: TComboBox
    Left = 194
    Top = 17
    Width = 473
    Height = 27
    DropDownCount = 10
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnChange = ComboBox2Change
  end
  object Button4: TButton
    Left = 8
    Top = 241
    Width = 155
    Height = 52
    Caption = #1053#1086#1074#1099#1081' '#1082#1091#1088#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button4Click
  end
end
