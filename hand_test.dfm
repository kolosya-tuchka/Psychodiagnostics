object HandTest: THandTest
  Left = 401
  Top = 189
  Caption = #1042#1074#1086#1076' '#1074#1086#1087#1088#1086#1089#1086#1074
  ClientHeight = 521
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 399
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077', '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1090#1077#1082#1089#1090' '#1082#1072#1078#1076#1086#1075#1086' '#1074#1086#1087#1088#1086#1089#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 172
    Height = 21
    Caption = #1042#1086#1087#1088#1086#1089' '#1087#1086#1076' '#1085#1086#1084#1077#1088#1086#1084
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 200
    Top = 56
    Width = 9
    Height = 21
    Caption = '1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 224
    Top = 56
    Width = 128
    Height = 21
    Caption = '('#1042' '#1042#1072#1096#1077#1084' '#1090#1077#1089#1090#1077' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 360
    Top = 56
    Width = 50
    Height = 21
    Caption = 'Label1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Button4: TButton
    Left = 336
    Top = 160
    Width = 177
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button4Click
  end
  object Button2: TButton
    Left = 144
    Top = 456
    Width = 105
    Height = 57
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 456
    Width = 105
    Height = 57
    Caption = '<<  '#1053#1072#1079#1072#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button1: TButton
    Left = 408
    Top = 456
    Width = 105
    Height = 57
    Caption = #1044#1072#1083#1077#1077'  >>'
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 216
    Width = 505
    Height = 185
    Hint = #1053#1072#1078#1084#1080#1090#1077' 2 '#1088#1072#1079#1072', '#1095#1090#1086#1073#1099' '#1080#1079#1084#1077#1085#1080#1090#1100' '#1090#1077#1082#1089#1090'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemHeight = 22
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnDblClick = ListBox1DblClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 80
    Width = 505
    Height = 73
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 5
  end
end
