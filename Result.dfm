object Results: TResults
  Left = 159
  Top = 8
  BorderStyle = bsSingle
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
  ClientHeight = 798
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 166
    Height = 24
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1077#1089#1090' =>'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 58
    Width = 164
    Height = 24
    Caption = #1056#1077#1078#1080#1084' '#1074#1099#1074#1086#1076#1072'=>'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 192
    Top = 10
    Width = 473
    Height = 27
    DropDownCount = 10
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object Button1: TButton
    Left = 944
    Top = 616
    Width = 209
    Height = 33
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1076#1080#1072#1075#1088#1072#1084#1084#1091
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object TestsGrid: TDBGrid
    Left = 8
    Top = 96
    Width = 744
    Height = 593
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Familia'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 255
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imi'
        Title.Caption = #1048#1084#1103
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Result_Data'
        Title.Caption = #1042#1088#1077#1084#1103' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Score'
        Title.Caption = #1050#1086#1083'-'#1074#1086' '#1073#1072#1083#1083#1086#1074
        Width = 110
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 600
    Top = 695
    Width = 152
    Height = 47
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object ComboBox2: TComboBox
    Left = 192
    Top = 59
    Width = 473
    Height = 27
    DropDownCount = 10
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnChange = ComboBox2Change
  end
  object DataSource1: TDataSource
    DataSet = MyModule.ADOQuery1
    Left = 8
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    Parameters = <>
    Left = 40
  end
end
