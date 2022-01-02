object Form62: TForm62
  Left = 292
  Top = 28
  BorderStyle = bsSingle
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
  ClientHeight = 653
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 657
    Height = 201
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
    OnCellClick = DBGrid1CellClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Familia'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imi'
        Title.Caption = #1048#1084#1103
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Old'
        Title.Caption = #1042#1086#1079#1088#1072#1089#1090
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Passw'
        Title.Caption = #1055#1072#1088#1086#1083#1100
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_vlast'
        Visible = False
      end>
  end
  object Button4: TButton
    Left = 672
    Top = 8
    Width = 113
    Height = 25
    Caption = #1042#1074#1077#1088#1093
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 672
    Top = 168
    Width = 113
    Height = 25
    Caption = #1042#1085#1080#1079
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 673
    Top = 88
    Width = 112
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 456
    Top = 576
    Width = 313
    Height = 49
    Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button7Click
  end
  object GroupBox2: TGroupBox
    Left = 424
    Top = 225
    Width = 353
    Height = 278
    BiDiMode = bdLeftToRight
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    object Label1: TLabel
      Left = 10
      Top = 80
      Width = 76
      Height = 21
      Caption = #1060#1072#1084#1080#1083#1080#1103':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 45
      Top = 120
      Width = 38
      Height = 21
      Caption = #1048#1084#1103':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 20
      Top = 155
      Width = 63
      Height = 21
      Caption = #1055#1072#1088#1086#1083#1100':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 11
      Width = 340
      Height = 44
      Alignment = taCenter
      Caption = #1055#1086#1083#1103' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103'\'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label9: TLabel
      Left = 15
      Top = 190
      Width = 69
      Height = 21
      Caption = #1042#1086#1079#1088#1072#1089#1090':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 249
      Top = 184
      Width = 97
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 208
      Top = 232
      Width = 143
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 100
      Top = 80
      Width = 245
      Height = 27
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 100
      Top = 115
      Width = 245
      Height = 27
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 100
      Top = 150
      Width = 245
      Height = 27
      TabOrder = 4
    end
    object Edit7: TEdit
      Left = 100
      Top = 185
      Width = 85
      Height = 27
      TabOrder = 5
    end
    object Button2: TButton
      Left = 16
      Top = 237
      Width = 97
      Height = 28
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 496
    Width = 401
    Height = 145
    TabOrder = 6
    object Button8: TButton
      Left = 1
      Top = 0
      Width = 401
      Height = 41
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1090#1077#1089#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button14: TButton
      Left = 0
      Top = 98
      Width = 401
      Height = 41
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093' '#1090#1077#1089#1090#1086#1074
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 0
      Top = 47
      Width = 401
      Height = 45
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093' '#1090#1077#1089#1090#1086#1074
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Button16: TButton
    Left = 40
    Top = 401
    Width = 209
    Height = 49
    Caption = #1069#1082#1089#1087#1086#1088#1090'/'#1080#1084#1087#1086#1088#1090' '#1090#1077#1089#1090#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
    WordWrap = True
    OnClick = Button16Click
  end
  object Button9: TButton
    Left = 47
    Top = 415
    Width = 209
    Height = 49
    Caption = #1056#1077#1081#1090#1080#1085#1075
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Visible = False
    WordWrap = True
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 8
    Top = 224
    Width = 209
    Height = 49
    Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1087#1088#1086#1092#1080#1083#1103
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 40
    Top = 411
    Width = 209
    Height = 57
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
    WordWrap = True
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 215
    Top = 224
    Width = 209
    Height = 49
    Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1087#1086' '#1090#1077#1089#1090#1072#1084
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    WordWrap = True
    OnClick = Button12Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 40
    Top = 168
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = '1'
        DataType = ftInteger
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * From People')
    Left = 96
    Top = 168
  end
end
