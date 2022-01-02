object Form59: TForm59
  Left = 255
  Top = 253
  Caption = #1042#1086#1087#1088#1086#1089' 1 '#1080#1079' '
  ClientHeight = 519
  ClientWidth = 751
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
  PixelsPerInch = 96
  TextHeight = 24
  object Question: TLabel
    Left = 130
    Top = 80
    Width = 500
    Height = 100
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1076#1085#1086' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1080#1079' '#1076#1074#1091#1093':'
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
    Width = 54
    Height = 22
    Caption = #1058#1077#1089#1090':  '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 472
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
    Left = 136
    Top = 472
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
    Left = 456
    Top = 360
    Width = 137
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
  end
  object RadioGroup1: TRadioGroup
    Left = 184
    Top = 160
    Width = 393
    Height = 153
    Color = clBtnFace
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      #1044#1072
      #1044#1072)
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 184
    Top = 360
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
  end
  object Button7: TButton
    Left = 664
    Top = 8
    Width = 81
    Height = 33
    Caption = #1042#1067#1061#1054#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button7Click
  end
  object MainMenu1: TMainMenu
    Left = 712
    Top = 48
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1089#1085#1086#1074#1072
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
end
