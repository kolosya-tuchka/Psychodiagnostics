object Form1: TForm1
  Left = 282
  Top = 121
  Caption = #1042#1086#1087#1088#1086#1089' 1 '#1080#1079' 189'
  ClientHeight = 535
  ClientWidth = 774
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
    Left = 122
    Top = 73
    Width = 500
    Height = 144
    Alignment = taCenter
    AutoSize = False
    Caption = 'Question'
    Font.Charset = RUSSIAN_CHARSET
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
    Width = 516
    Height = 22
    Caption = #1058#1077#1089#1090': '#1052#1077#1090#1086#1076#1080#1082#1072' '#1084#1085#1086#1075#1086#1092#1072#1082#1090#1086#1088#1085#1086#1075#1086' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103' '#1083#1080#1095#1085#1086#1089#1090#1080'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 488
    Width = 121
    Height = 22
    Caption = #1058#1077#1089#1090#1080#1088#1091#1077#1084#1099#1081': '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label6: TLabel
    Left = 135
    Top = 488
    Width = 46
    Height = 22
    Caption = #1060#1048#1054
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 448
    Top = 406
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
    Left = 119
    Top = 176
    Width = 554
    Height = 183
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
      ''
      '')
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 224
    Top = 406
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
  object RadioGroup2: TRadioGroup
    Left = 120
    Top = 176
    Width = 553
    Height = 185
    ItemIndex = 0
    Items.Strings = (
      #1046#1077#1085#1097#1080#1085#1072
      #1052#1091#1078#1095#1080#1085#1072)
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
