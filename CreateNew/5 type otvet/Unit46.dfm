object Form46: TForm46
  Left = 301
  Top = 8
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1090#1077#1089#1090#1072'. '#1069#1090#1072#1087' 3: '#1042#1074#1086#1076' '#1074#1086#1087#1088#1086#1089#1086#1074' '#1080' '#1086#1090#1074#1077#1090#1086#1074'.'
  ClientHeight = 678
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 477
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077', '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1090#1077#1082#1089#1090' '#1082#1072#1078#1076#1086#1075#1086' '#1074#1086#1087#1088#1086#1089#1072' '#1080' '#1086#1090#1074#1077#1090#1072'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 512
    Top = 16
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
  object Label3: TLabel
    Left = 224
    Top = 56
    Width = 11
    Height = 20
    Caption = '1'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 179
    Height = 22
    Caption = #1042#1086#1087#1088#1086#1089' '#1087#1086#1076' '#1085#1086#1084#1077#1088#1086#1084
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 152
    Width = 841
    Height = 521
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 8
      Width = 841
      Height = 425
      TabOrder = 0
    end
    object Button2: TButton
      Left = 291
      Top = 458
      Width = 113
      Height = 57
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 568
      Top = 458
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
      Left = 744
      Top = 458
      Width = 97
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
  end
  object list_vopros: TListBox
    Left = 440
    Top = 80
    Width = 401
    Height = 65
    ItemHeight = 19
    TabOrder = 1
    OnDblClick = list_voprosDblClick
  end
  object memo_vopros: TMemo
    Left = 16
    Top = 80
    Width = 401
    Height = 57
    TabOrder = 2
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 704
    Top = 40
  end
end
