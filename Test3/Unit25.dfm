object Form25: TForm25
  Left = 448
  Top = 117
  Caption = #1042#1072#1096#1080' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099
  ClientHeight = 527
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 380
    Height = 105
    Caption = 
      #1054#1090#1074#1077#1090#1099' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1103#1102#1090#1089#1103' '#1087#1086' '#1096#1077#1089#1090#1080' '#1090#1077#1085#1076#1077#1085#1094#1080#1103#1084' '#1087#1086#1074#1077#1076#1077#1085#1080#1103' '#1095#1077#1083#1086#1074#1077#1082#1072' '#1074' '#1075 +
      #1088#1091#1087#1087#1077': '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1100', '#1085#1077#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1100', '#1086#1073#1097#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100', '#1085#1077#1086#1073#1097#1080#1090#1077#1083#1100#1085#1086#1089#1090 +
      #1100', '#1087#1088#1080#1085#1103#1090#1080#1077' '#1073#1086#1088#1100#1073#1099' '#1080' '#1091#1082#1083#1086#1085#1077#1085#1080#1077' '#1086#1090' '#1073#1086#1088#1100#1073#1099'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 16
    Top = 8
    Width = 275
    Height = 22
    Caption = #1058#1077#1089#1090': '#1042#1072#1096#1077' '#1087#1086#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1075#1088#1091#1087#1087#1077'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 160
    Width = 300
    Height = 44
    Caption = #1055#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1084' '#1086#1090#1074#1077#1090#1086#1074' '#1087#1086#1083#1091#1095#1077#1085#1099' '#1042#1072#1096#1080' '#1087#1088#1077#1086#1073#1083#1072#1076#1072#1102#1097#1080#1077' '#1090#1077#1085#1076#1077#1085#1094#1080#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label7: TLabel
    Left = 16
    Top = 412
    Width = 238
    Height = 22
    Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 440
    Width = 56
    Height = 22
    Caption = 'Label3'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 16
    Top = 211
    Width = 385
    Height = 190
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 304
    Top = 464
    Width = 97
    Height = 57
    Caption = 'OK'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 16
    Top = 472
    Width = 185
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1077#1079'-'#1090#1072#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 336
    Top = 432
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    Parameters = <>
    Left = 368
    Top = 432
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'doc'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 272
    Top = 432
  end
end
