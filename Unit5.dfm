object Form5: TForm5
  Left = 248
  Top = 63
  Caption = #1042#1072#1096#1080' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099
  ClientHeight = 550
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 56
    Height = 22
    Caption = 'Label1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 392
    Top = 392
    Width = 165
    Height = 22
    Caption = #1044#1072#1090#1072' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 392
    Top = 424
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
  object Memo2: TMemo
    Left = 16
    Top = 40
    Width = 361
    Height = 465
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
  end
  object Memo1: TMemo
    Left = 16
    Top = 40
    Width = 361
    Height = 465
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button5: TButton
    Left = 704
    Top = 496
    Width = 89
    Height = 41
    Caption = #1042#1067#1061#1054#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button1: TButton
    Left = 392
    Top = 480
    Width = 153
    Height = 49
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 616
    Top = 504
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    Parameters = <>
    Left = 648
    Top = 504
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'doc'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 584
    Top = 472
  end
end
