object Form8: TForm8
  Left = 456
  Top = 182
  Caption = #1042#1093#1086#1076
  ClientHeight = 409
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 72
    Width = 83
    Height = 22
    Caption = #1060#1072#1084#1080#1083#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 120
    Width = 37
    Height = 22
    Caption = #1048#1084#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 168
    Width = 65
    Height = 22
    Caption = #1055#1072#1088#1086#1083#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button2: TButton
    Left = 248
    Top = 368
    Width = 97
    Height = 33
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 128
    Top = 72
    Width = 209
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    KeyField = 'Familia'
    ListField = 'Familia'
    ListSource = DataSource1
    ParentFont = False
    TabOrder = 0
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 128
    Top = 120
    Width = 209
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    KeyField = 'Imi'
    ListField = 'Imi'
    ListSource = DataSource2
    ParentFont = False
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 128
    Top = 168
    Width = 209
    Height = 27
    HelpType = htKeyword
    Color = clInactiveBorder
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 265
    Width = 175
    Height = 41
    Caption = #1042#1093#1086#1076
    Default = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5000555555555555577755555555555550B0555555555555F7F7555555555550
      00B05555555555577757555555555550B3B05555555555F7F557555555555000
      3B0555555555577755755555555500B3B0555555555577555755555555550B3B
      055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
      555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
      55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
      555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
      55555575FFFF7755555555570000755555555557777775555555}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 32
    Top = 216
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT N_vlast, Familia, Imi, Passw  FROM People ')
    Left = 32
    Top = 272
  end
  object ADOQuery2: TADOQuery
    Connection = MyModule.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select N_vlast, Familia,Imi  from people')
    Left = 88
    Top = 368
    object ADOQuery2N_vlast: TAutoIncField
      FieldName = 'N_vlast'
      ReadOnly = True
    end
    object ADOQuery2Familia: TWideStringField
      FieldName = 'Familia'
      Size = 255
    end
    object ADOQuery2Imi: TWideStringField
      FieldName = 'Imi'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 24
    Top = 368
  end
  object ADOQuery3: TADOQuery
    Connection = MyModule.ADOConnection1
    Parameters = <>
    Left = 24
    Top = 320
  end
end
