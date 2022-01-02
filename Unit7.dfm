object Form7: TForm7
  Left = 230
  Top = 38
  BorderStyle = bsDialog
  Caption = #1055#1088#1086#1092#1080#1083#1100
  ClientHeight = 591
  ClientWidth = 491
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TestsGrid: TDBGrid
    Left = 16
    Top = 16
    Width = 467
    Height = 521
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = TestsGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Name_Test'
        ImeName = 'Name_Test'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Result_Data'
        Title.Caption = #1042#1088#1077#1084#1103' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Score'
        Title.Caption = #1050#1086#1083'-'#1074#1086' '#1073#1072#1083#1083#1086#1074
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Resultat'
        Width = 0
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 328
    Top = 544
    Width = 113
    Height = 39
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = MyModule.ADOQuery1
    Left = 24
    Top = 552
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    Left = 72
    Top = 552
    object ADOQuery1Name_Test: TStringField
      FieldName = 'Name_Test'
    end
    object ADOQuery1Score: TIntegerField
      FieldName = 'Score'
    end
    object ADOQuery1Result_Data: TWideStringField
      FieldName = 'Result_Data'
    end
    object ADOQuery1Resultat: TWideMemoField
      FieldName = 'Resultat'
      BlobType = ftWideMemo
    end
  end
end
