object Form23: TForm23
  Left = 304
  Top = 52
  Caption = #1042#1086#1087#1088#1086#1089' 1 '#1080#1079' 40'
  ClientHeight = 529
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 22
  object Question: TLabel
    Left = 130
    Top = 81
    Width = 500
    Height = 96
    Alignment = taCenter
    AutoSize = False
    Caption = 'Question'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 282
    Height = 22
    Caption = #1058#1077#1089#1090': '#1042#1072#1096' '#1091#1088#1086#1074#1077#1085#1100' '#1090#1088#1077#1074#1086#1078#1085#1086#1089#1090#1080'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 436
    Top = 390
    Width = 133
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
    Left = 331
    Top = 160
    Width = 146
    Height = 193
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      #1053#1077#1090
      #1057#1082#1086#1088#1077#1077' '#1085#1077#1090
      #1057#1082#1086#1088#1077#1077' '#1076#1072
      #1044#1072)
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 212
    Top = 390
    Width = 141
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
  object RadioGroup2: TRadioGroup
    Left = 323
    Top = 160
    Width = 166
    Height = 193
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      #1055#1086#1095#1090#1080' '#1085#1080#1082#1086#1075#1076#1072
      #1048#1085#1086#1075#1076#1072
      #1063#1072#1089#1090#1086
      #1055#1086#1095#1090#1080' '#1074#1089#1077#1075#1076#1072)
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Visible = False
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
