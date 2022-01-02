object Form54: TForm54
  Left = 293
  Top = 86
  Caption = #1069#1082#1089#1087#1086#1088#1090'/'#1080#1084#1087#1086#1088#1090' '#1090#1077#1089#1090#1086#1074
  ClientHeight = 597
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object ListView1: TListView
    Left = 48
    Top = 48
    Width = 625
    Height = 297
    Checkboxes = True
    Columns = <
      item
        AutoSize = True
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      end>
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    SortType = stText
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Button1: TButton
    Left = 64
    Top = 360
    Width = 97
    Height = 41
    Caption = #1069#1082#1089#1087#1086#1088#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 360
    Width = 97
    Height = 41
    Caption = #1048#1084#1087#1086#1088#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML '#1060#1072#1081#1083#1099'|*.xml|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 40
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 8
  end
end
