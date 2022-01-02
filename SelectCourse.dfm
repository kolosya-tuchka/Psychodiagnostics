object Form83: TForm83
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1091#1088#1089
  ClientHeight = 630
  ClientWidth = 977
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 977
    Height = 630
    Align = alClient
    AutoSize = True
    BevelInner = bvSpace
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 2
      Width = 86
      Height = 32
      Caption = #1050#1091#1088#1089#1099
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
      Top = 559
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
  end
end
