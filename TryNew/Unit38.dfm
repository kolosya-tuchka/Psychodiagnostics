object Form38: TForm38
  Left = 163
  Top = 7
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093' '#1090#1077#1089#1090#1086#1074
  ClientHeight = 646
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1023
    Height = 646
    Align = alClient
    AutoSize = True
    BevelInner = bvSpace
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 2
      Width = 80
      Height = 32
      Caption = #1058#1077#1089#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 564
      Width = 92
      Height = 16
      Caption = #1058#1077#1089#1090#1080#1088#1091#1077#1084#1099#1081':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 116
      Top = 564
      Width = 31
      Height = 16
      Caption = #1060#1048#1054
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 690
      Top = 564
      Width = 273
      Height = 57
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1075#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object ScrollBox1: TScrollBox
      Left = 18
      Top = 50
      Width = 945
      Height = 503
      TabOrder = 1
    end
    object Button2: TButton
      Left = 192
      Top = 564
      Width = 209
      Height = 57
      Caption = #1053#1072#1095#1072#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 416
      Top = 565
      Width = 257
      Height = 56
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1088#1072#1079#1076#1077#1083#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
  end
end
