object Form10: TForm10
  Left = 283
  Top = 74
  Caption = #1042#1086#1087#1088#1086#1089' 1 '#1080#1079' 101'
  ClientHeight = 517
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 16
  object Question: TLabel
    Left = 130
    Top = 80
    Width = 500
    Height = 100
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1086#1087#1088#1086#1089
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
    Width = 532
    Height = 22
    Caption = #1058#1077#1089#1090': '#1060#1083#1077#1075#1084#1072#1090#1080#1082', '#1084#1077#1083#1072#1085#1093#1086#1083#1080#1082', '#1093#1086#1083#1077#1088#1080#1082', '#1089#1072#1085#1075#1074#1080#1085#1080#1082' - '#1082#1090#1086' '#1074#1099'?'
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
    Left = 303
    Top = 176
    Width = 155
    Height = 140
    Color = clBtnFace
    Columns = 2
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      #1044#1072
      #1053#1077#1090)
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
    OnMouseMove = Button1MouseMove
  end
  object Panel1: TPanel
    Left = 176
    Top = 48
    Width = 409
    Height = 377
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Button5: TButton
      Left = 32
      Top = 264
      Width = 137
      Height = 97
      Caption = #1044#1072', '#1087#1088#1086#1081#1090#1080' '#1090#1077#1089#1090' '#1077#1097#1077' '#1088#1072#1079
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      WordWrap = True
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 240
      Top = 264
      Width = 137
      Height = 97
      Caption = #1053#1077#1090', '#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1101#1090#1080' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      WordWrap = True
      OnClick = Button6Click
    end
    object Memo1: TMemo
      Left = 40
      Top = 40
      Width = 345
      Height = 209
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Visible = False
    end
  end
  object Button7: TButton
    Left = 656
    Top = 8
    Width = 89
    Height = 33
    Caption = #1042#1067#1061#1054#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
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
      OnClick = N1Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
end
