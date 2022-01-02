object Form15: TForm15
  Left = 277
  Top = 54
  Caption = #1042#1086#1087#1088#1086#1089' 1 '#1080#1079' 16'
  ClientHeight = 513
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -21
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 24
  object Question: TLabel
    Left = 146
    Top = 80
    Width = 500
    Height = 49
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077', '#1082#1086#1090#1086#1088#1086#1077' '#1076#1083#1103' '#1042#1072#1089' '#1073#1086#1083#1077#1077' '#1093#1072#1088#1072#1082#1090#1077#1088#1085#1086':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label1: TLabel
    Left = 184
    Top = 152
    Width = 473
    Height = 81
    AutoSize = False
    Caption = 'Answer1'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 184
    Top = 248
    Width = 481
    Height = 73
    AutoSize = False
    Caption = 'Answer2'
    WordWrap = True
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 347
    Height = 22
    Caption = #1058#1077#1089#1090': '#1064#1082#1072#1083#1072' '#1087#1086#1080#1089#1082#1072' '#1086#1089#1090#1088#1099#1093' '#1086#1097#1091#1097#1077#1085#1080#1081'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 456
    Top = 382
    Width = 129
    Height = 57
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
    OnMouseMove = Button1MouseMove
  end
  object RadioGroup1: TRadioGroup
    Left = 144
    Top = 136
    Width = 33
    Height = 193
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      ''
      '')
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 240
    Top = 382
    Width = 137
    Height = 57
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = Button2Click
    OnMouseMove = Button1MouseMove
  end
  object Button5: TButton
    Left = 672
    Top = 8
    Width = 89
    Height = 41
    Caption = #1042#1067#1061#1054#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button5Click
  end
  object MainMenu1: TMainMenu
    Left = 728
    Top = 56
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1089#1085#1086#1074#1072
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1084#1077#1085#1102
      OnClick = N3Click
    end
  end
end
