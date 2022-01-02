object Form9: TForm9
  Left = 415
  Top = 73
  Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1090#1077#1089#1090#1086#1074
  ClientHeight = 589
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 632
    Top = 528
    Width = 123
    Height = 49
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 737
    Height = 305
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'N_testa'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Nazv'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1089#1090#1072
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Opis'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 478
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 616
    Top = 328
    Width = 129
    Height = 49
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 40
    Top = 363
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT N_testa, Nazv, Opis FROM Test')
    Left = 40
    Top = 400
    object ADOQuery1N_testa: TAutoIncField
      FieldName = 'N_testa'
      ReadOnly = True
    end
    object ADOQuery1Nazv: TStringField
      FieldName = 'Nazv'
      Size = 255
    end
    object ADOQuery1Opis: TStringField
      FieldName = 'Opis'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    Left = 80
    Top = 360
  end
  object ADOQuery2: TADOQuery
    Connection = MyModule.ADOConnection1
    Parameters = <>
    Left = 80
    Top = 400
  end
end
