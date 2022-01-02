object Form60: TForm60
  Left = 346
  Top = 134
  BorderIcons = [biMinimize, biMaximize]
  ClientHeight = 514
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 439
    Top = 360
    Width = 137
    Height = 49
    AutoSize = False
    Caption = 'Timer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'PrimaSans BT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 8
    Width = 451
    Height = 72
    Alignment = taCenter
    Caption = 
      #1052#1077#1090#1086#1076#1080#1082#1072' '#1090#1077#1089#1090#1072' '#1051#1102#1096#1077#1088#1072' '#1090#1088#1077#1073#1091#1077#1090' '#1076#1074#1091#1093' '#1074#1099#1073#1086#1088#1086#1082'. '#1055#1088#1086#1089#1080#1084' '#1042#1072#1089' '#1086#1090#1076#1086#1093#1085#1091#1090#1100 +
      ' '#1076#1074#1077' '#1084#1080#1085#1091#1090#1099' '#1080' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077'  '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 336
    Top = 456
    Width = 249
    Height = 49
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Animate1: TAnimate
    Left = 112
    Top = 88
    Width = 321
    Height = 321
    Color = clBlack
    FileName = 'E:\'#1050#1072#1094#1086'\'#1040#1056#1052' '#1055#1089#1080#1093#1086#1083#1086#1075#1072'_Final(version 9)\clock.avi'
    ParentColor = False
    Repetitions = 1
    StopFrame = 12
    Transparent = False
    OnStop = Animate1Stop
  end
  object Button2: TButton
    Left = 64
    Top = 456
    Width = 249
    Height = 49
    Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1072#1081#1084#1077#1088
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 256
    Top = 240
  end
end
