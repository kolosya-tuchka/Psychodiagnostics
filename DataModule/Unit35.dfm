object MyModule: TMyModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 401
  Width = 527
  object INFORM: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = INFORMAfterInsert
    TableName = 'Test_Information'
    Left = 192
    Top = 40
  end
  object SourceINFORM: TDataSource
    DataSet = INFORM
    Left = 264
    Top = 40
  end
  object Generation1: TADOQuery
    Connection = ADOConnection1
    DataSource = SourceINFORM
    Parameters = <>
    SQL.Strings = (
      'select max(n) from test_information;')
    Left = 168
    Top = 112
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 40
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'Girl16'
    Left = 48
    Top = 96
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Stan1 from Boys16 where Factor = "A"')
    Left = 48
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 224
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 240
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 312
    Top = 112
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 48
    Top = 280
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 152
    Top = 280
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 336
    Top = 280
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 272
    Top = 280
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 368
    Top = 224
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 368
    Top = 176
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\'#1040#1083#1077#1082#1089#1072#1085#1076#1088'\' +
      'Desktop\'#1040#1056#1052' '#1055#1089#1080#1093#1086#1083#1086#1075#1072'_Final(version 11)\DataBase\DataBase.mdb;Pe' +
      'rsist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 152
    Top = 232
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 232
    Top = 232
  end
  object XMLDocument1: TXMLDocument
    NodeIndentStr = '    '
    Options = [doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    Left = 168
    Top = 176
    DOMVendorDesc = 'MSXML'
  end
end
