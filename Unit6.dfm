object DataModule6: TDataModule6
  OldCreateOrder = False
  Height = 542
  Width = 722
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    BeforeConnect = ADOConnection1BeforeConnect
    Left = 40
    Top = 8
  end
  object ADOTableCat: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    Left = 40
    Top = 72
    object ADOTableCatКодКатегории: TAutoIncField
      FieldName = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
      ReadOnly = True
    end
    object ADOTableCatНаименование: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 255
    end
  end
  object ADOTableMat: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOTableMatAfterInsert
    TableName = #1052#1072#1090#1077#1088#1080#1072#1083
    Left = 40
    Top = 128
    object ADOTableMatКодМатериала: TAutoIncField
      FieldName = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      ReadOnly = True
    end
    object ADOTableMatКодКатегории: TIntegerField
      FieldName = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
    end
    object ADOTableMatИмяМатериала: TWideStringField
      FieldName = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
      Size = 255
    end
    object ADOTableMatОписание: TWideMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      BlobType = ftWideMemo
    end
    object ADOTableMatЦена: TBCDField
      FieldName = #1062#1077#1085#1072
      Precision = 19
    end
  end
  object ADOTableVid: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1042#1080#1076
    Left = 40
    Top = 184
    object ADOTableVidКодВида: TAutoIncField
      FieldName = #1050#1086#1076#1042#1080#1076#1072
      ReadOnly = True
    end
    object ADOTableVidВидТехники: TWideStringField
      FieldName = #1042#1080#1076#1058#1077#1093#1085#1080#1082#1080
      Size = 255
    end
    object ADOTableVidОписание: TWideStringField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Size = 255
    end
  end
  object DSCat: TDataSource
    DataSet = CatQuery
    Left = 112
    Top = 72
  end
  object DSMat: TDataSource
    DataSet = MatQuery
    Left = 112
    Top = 128
  end
  object DSVid: TDataSource
    DataSet = VidQuery
    Left = 112
    Top = 184
  end
  object DSMarka: TDataSource
    DataSet = MarkaQuery
    Left = 112
    Top = 240
  end
  object DSClient: TDataSource
    DataSet = ClientQuery
    Left = 112
    Top = 296
  end
  object DSRabota: TDataSource
    DataSet = ADOTableRabota
    Left = 112
    Top = 352
  end
  object ADOTableMarka: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
    Left = 40
    Top = 240
    object ADOTableMarkaКодМарки: TAutoIncField
      FieldName = #1050#1086#1076#1052#1072#1088#1082#1080
      ReadOnly = True
    end
    object ADOTableMarkaМаркаТехники: TWideStringField
      FieldName = #1052#1072#1088#1082#1072#1058#1077#1093#1085#1080#1082#1080
      Size = 255
    end
    object ADOTableMarkaОписание: TWideMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      BlobType = ftWideMemo
    end
  end
  object ADOTableClient: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1083#1080#1077#1085#1090
    Left = 40
    Top = 296
    object ADOTableClientКодКлиента: TAutoIncField
      FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      ReadOnly = True
    end
    object ADOTableClientНаименование: TStringField
      DisplayWidth = 20
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object ADOTableClientАдрес: TStringField
      FieldName = #1040#1076#1088#1077#1089
    end
    object ADOTableClientТелефон: TStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
    end
    object ADOTableClientФакс: TStringField
      FieldName = #1060#1072#1082#1089
    end
    object ADOTableClientEmail: TStringField
      FieldName = 'Email'
    end
  end
  object ADOTableRabota: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1056#1072#1073#1086#1090#1072
    Left = 40
    Top = 352
    object ADOTableRabotaКодРаботы: TAutoIncField
      FieldName = #1050#1086#1076#1056#1072#1073#1086#1090#1099
      ReadOnly = True
    end
    object ADOTableRabotaИмяРаботы: TWideStringField
      FieldName = #1048#1084#1103#1056#1072#1073#1086#1090#1099
      Size = 255
    end
    object ADOTableRabotaОписание: TWideMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      BlobType = ftWideMemo
    end
    object ADOTableRabotaЦенаРаботы: TBCDField
      FieldName = #1062#1077#1085#1072#1056#1072#1073#1086#1090#1099
      Precision = 19
    end
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 368
    Top = 136
  end
  object WordDocument1: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 456
    Top = 136
  end
  object DSMaster: TDataSource
    DataSet = MasterQuery
    Left = 280
    Top = 72
  end
  object DSTexnika: TDataSource
    DataSet = TexnikaQuery
    Left = 280
    Top = 128
  end
  object DSZakaz: TDataSource
    DataSet = ADOTableZakaz
    OnDataChange = DSZakazDataChange
    Left = 280
    Top = 184
  end
  object DSRemont: TDataSource
    DataSet = ADOTableRemont
    Left = 280
    Top = 240
  end
  object DSSumRemont: TDataSource
    DataSet = ADOQSumRemont
    Left = 280
    Top = 296
  end
  object DSRashod: TDataSource
    DataSet = ADOTableRashod
    Left = 280
    Top = 352
  end
  object DSSumRashod: TDataSource
    DataSet = ADOQSumRashod
    Left = 456
    Top = 72
  end
  object ADOTableMaster: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1048#1084#1103#1052#1072#1089#1090#1077#1088#1072
    TableName = #1052#1072#1089#1090#1077#1088
    Left = 192
    Top = 72
    object ADOTableMasterКодМастера: TAutoIncField
      FieldName = #1050#1086#1076#1052#1072#1089#1090#1077#1088#1072
      ReadOnly = True
    end
    object ADOTableMasterИмяМастера: TWideStringField
      FieldName = #1048#1084#1103#1052#1072#1089#1090#1077#1088#1072
      Size = 255
    end
    object ADOTableMasterТелефонМастера: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085#1052#1072#1089#1090#1077#1088#1072
      Size = 255
    end
    object ADOTableMasterСертификат: TWideStringField
      FieldName = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
      Size = 255
    end
  end
  object ADOTableTexnika: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOTableTexnikaAfterInsert
    IndexFieldNames = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
    TableName = #1058#1077#1093#1085#1080#1082#1072
    Left = 192
    Top = 128
    object ADOTableTexnikaНомерТехники: TWideStringField
      FieldName = #1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080
      Size = 255
    end
    object ADOTableTexnikaНазвание: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Size = 255
    end
    object ADOTableTexnikaКодКлиента: TIntegerField
      FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
    end
    object ADOTableTexnikaКодВида: TIntegerField
      FieldName = #1050#1086#1076#1042#1080#1076#1072
    end
    object ADOTableTexnikaКодМарки: TIntegerField
      FieldName = #1050#1086#1076#1052#1072#1088#1082#1080
    end
    object ADOTableTexnikaВид: TStringField
      FieldKind = fkLookup
      FieldName = #1042#1080#1076
      LookupDataSet = ADOTableVid
      LookupKeyFields = #1050#1086#1076#1042#1080#1076#1072
      LookupResultField = #1042#1080#1076#1058#1077#1093#1085#1080#1082#1080
      KeyFields = #1050#1086#1076#1042#1080#1076#1072
      Size = 100
      Lookup = True
    end
    object ADOTableTexnikaМарка: TStringField
      FieldKind = fkLookup
      FieldName = #1052#1072#1088#1082#1072
      LookupDataSet = ADOTableMarka
      LookupKeyFields = #1050#1086#1076#1052#1072#1088#1082#1080
      LookupResultField = #1052#1072#1088#1082#1072#1058#1077#1093#1085#1080#1082#1080
      KeyFields = #1050#1086#1076#1052#1072#1088#1082#1080
      Size = 100
      Lookup = True
    end
  end
  object ADOTableZakaz: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOTableZakazCalcFields
    TableDirect = True
    TableName = #1047#1072#1082#1072#1079
    Left = 192
    Top = 184
    object ADOTableZakazНомерЗаказа: TAutoIncField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
      ReadOnly = True
    end
    object ADOTableZakazНомерТехники: TWideStringField
      FieldName = #1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080
      Size = 255
    end
    object ADOTableZakazКодМастера: TIntegerField
      FieldName = #1050#1086#1076#1052#1072#1089#1090#1077#1088#1072
    end
    object ADOTableZakazДатаЗаказа: TDateTimeField
      FieldName = #1044#1072#1090#1072#1047#1072#1082#1072#1079#1072
    end
    object ADOTableZakazДатаВыполнения: TDateTimeField
      FieldName = #1044#1072#1090#1072#1042#1099#1087#1086#1083#1085#1077#1085#1080#1103
    end
    object ADOTableZakazВыполнен: TBooleanField
      FieldName = #1042#1099#1087#1086#1083#1085#1077#1085
    end
    object ADOTableZakazВызов: TBooleanField
      FieldName = #1042#1099#1079#1086#1074
    end
    object ADOTableZakazДоставка: TBooleanField
      FieldName = #1044#1086#1089#1090#1072#1074#1082#1072
    end
    object ADOTableZakazОплата: TWideStringField
      FieldName = #1054#1087#1083#1072#1090#1072
      Size = 255
    end
    object ADOTableZakazСумма: TFloatField
      FieldKind = fkCalculated
      FieldName = #1057#1091#1084#1084#1072
      Calculated = True
    end
    object ADOTableZakazТехника: TStringField
      FieldKind = fkLookup
      FieldName = #1058#1077#1093#1085#1080#1082#1072
      LookupDataSet = ADOTableTexnika
      LookupKeyFields = #1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077
      KeyFields = #1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080
      Size = 100
      Lookup = True
    end
    object ADOTableZakazМастер: TStringField
      FieldKind = fkLookup
      FieldName = #1052#1072#1089#1090#1077#1088
      LookupDataSet = ADOTableMaster
      LookupKeyFields = #1050#1086#1076#1052#1072#1089#1090#1077#1088#1072
      LookupResultField = #1048#1084#1103#1052#1072#1089#1090#1077#1088#1072
      KeyFields = #1050#1086#1076#1052#1072#1089#1090#1077#1088#1072
      Size = 100
      Lookup = True
    end
    object ADOTableZakazКодКлиента: TIntegerField
      FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
    end
    object ADOTableZakazКлиент: TStringField
      FieldKind = fkLookup
      FieldName = #1050#1083#1080#1077#1085#1090
      LookupDataSet = ADOTableClient
      LookupKeyFields = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      LookupResultField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      KeyFields = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      Lookup = True
    end
  end
  object ADOTableRemont: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOTableRemontAfterInsert
    IndexFieldNames = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    MasterFields = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    MasterSource = DSZakaz
    TableName = #1056#1077#1084#1086#1085#1090
    Left = 192
    Top = 240
    object ADOTableRemontНомерЗаказа: TIntegerField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    end
    object ADOTableRemontКодРаботы: TIntegerField
      FieldName = #1050#1086#1076#1056#1072#1073#1086#1090#1099
      Visible = False
    end
    object ADOTableRemontВыполнена: TBooleanField
      FieldName = #1042#1099#1087#1086#1083#1085#1077#1085#1072
    end
    object ADOTableRemontРабота: TStringField
      FieldKind = fkLookup
      FieldName = #1056#1072#1073#1086#1090#1072
      LookupDataSet = ADOTableRabota
      LookupKeyFields = #1050#1086#1076#1056#1072#1073#1086#1090#1099
      LookupResultField = #1048#1084#1103#1056#1072#1073#1086#1090#1099
      KeyFields = #1050#1086#1076#1056#1072#1073#1086#1090#1099
      Size = 100
      Lookup = True
    end
    object ADOTableRemontЦена: TIntegerField
      FieldKind = fkLookup
      FieldName = #1062#1077#1085#1072
      LookupDataSet = ADOTableRabota
      LookupKeyFields = #1050#1086#1076#1056#1072#1073#1086#1090#1099
      LookupResultField = #1062#1077#1085#1072#1056#1072#1073#1086#1090#1099
      KeyFields = #1050#1086#1076#1056#1072#1073#1086#1090#1099
      Lookup = True
    end
  end
  object ADOTableRashod: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOTableRashodAfterInsert
    OnCalcFields = ADOTableRashodCalcFields
    OnRecordChangeComplete = ADOTableRashodRecordChangeComplete
    IndexFieldNames = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    MasterFields = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    MasterSource = DSZakaz
    TableName = #1056#1072#1089#1093#1086#1076
    Left = 192
    Top = 352
    object ADOTableRashodНомерЗаказа: TIntegerField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    end
    object ADOTableRashodКодМатериала: TIntegerField
      FieldName = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
    end
    object ADOTableRashodКоличество: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object ADOTableRashodИмяМатериала: TStringField
      FieldKind = fkLookup
      FieldName = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
      LookupDataSet = ADOTableMat
      LookupKeyFields = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      LookupResultField = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
      KeyFields = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      Size = 100
      Lookup = True
    end
    object ADOTableRashodЦена: TIntegerField
      FieldKind = fkLookup
      FieldName = #1062#1077#1085#1072
      LookupDataSet = ADOTableMat
      LookupKeyFields = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      LookupResultField = #1062#1077#1085#1072
      KeyFields = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      Lookup = True
    end
    object ADOTableRashodСумма: TIntegerField
      DefaultExpression = '0'
      FieldKind = fkCalculated
      FieldName = #1057#1091#1084#1084#1072
      Calculated = True
    end
    object ADOTableRashodКодКатегории: TIntegerField
      FieldName = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
    end
    object ADOTableRashodКатегория: TStringField
      FieldKind = fkLookup
      FieldName = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      LookupDataSet = ADOTableCat
      LookupKeyFields = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
      LookupResultField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      KeyFields = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
      Lookup = True
    end
  end
  object ADOQSumRemont: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOQSumRemontCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select  '#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072' from '#1056#1077#1084#1086#1085#1090)
    Left = 192
    Top = 296
    object ADOQSumRemontНомерЗаказа: TIntegerField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    end
  end
  object ADOQSumRashod: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOQSumRashodCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select '#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072' from '#1056#1072#1089#1093#1086#1076)
    Left = 368
    Top = 72
    object ADOQSumRashodSumцена: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Sum'#1094#1077#1085#1072
      Calculated = True
    end
    object ADOQSumRashodСумма: TFloatField
      FieldKind = fkCalculated
      FieldName = #1057#1091#1084#1084#1072
      Calculated = True
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=E:\'#1044#1086#1082#1091#1084#1077#1085#1090#1099'\'#1040#1085#1076#1088#1077#1081'\'#1091#1095#1077#1073#1072'\'#1044#1080#1087#1083#1086#1084'\Compservice\Database.a' +
        'ccdb'
      'User_Name=admin'
      
        'ODBCAdvanced=DriverId=25;MaxBufferSize=2048;MaxScanRows=8;PageTi' +
        'meout=5;SafeTransactions=0;Threads=3;UserCommitSync=Yes'
      'StringFormat=Unicode'
      'DriverID=MSAcc')
    Connected = True
    LoginDialog = FDGUIxLoginDialog1
    LoginPrompt = False
    Left = 152
    Top = 8
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 48
    Top = 488
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 152
    Top = 488
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 280
    Top = 488
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Left = 408
    Top = 488
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 512
    Top = 488
  end
  object CatQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from '#1050#1072#1090#1077#1075#1086#1088#1080#1103)
    Left = 392
    Top = 208
    object CatQueryКодКатегории: TFDAutoIncField
      FieldName = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
      Origin = '['#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CatQueryНаименование: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Origin = '['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077']'
      Size = 15
    end
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    DriverID = 'MsAcc'
    ODBCDriver = 'Microsoft Access Driver (*.mdb, *.accdb)'
    Left = 608
    Top = 432
  end
  object MatQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select m.'#1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072',m.'#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080',m.'#1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072',m.'#1054#1087#1080#1089#1072#1085#1080#1077',m' +
        '.'#1062#1077#1085#1072' '
      'from '#1052#1072#1090#1077#1088#1080#1072#1083' m,'#1050#1072#1090#1077#1075#1086#1088#1080#1103' k '
      'where m.'#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080'=k.'#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080)
    Left = 448
    Top = 208
    object MatQueryКодМатериала: TFDAutoIncField
      FieldName = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      Origin = '['#1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object MatQueryКодКатегории: TIntegerField
      FieldName = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
      Origin = '['#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080']'
    end
    object MatQueryИмяМатериала: TWideStringField
      FieldName = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
      Origin = '['#1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072']'
      Size = 50
    end
    object MatQueryОписание: TWideMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Origin = '['#1054#1087#1080#1089#1072#1085#1080#1077']'
      BlobType = ftWideMemo
    end
    object MatQueryЦена: TCurrencyField
      FieldName = #1062#1077#1085#1072
      Origin = '['#1062#1077#1085#1072']'
    end
  end
  object MarkaQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100)
    Left = 560
    Top = 208
    object MarkaQueryКодМарки: TFDAutoIncField
      FieldName = #1050#1086#1076#1052#1072#1088#1082#1080
      Origin = '['#1050#1086#1076#1052#1072#1088#1082#1080']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object MarkaQueryМаркаТехники: TWideStringField
      FieldName = #1052#1072#1088#1082#1072#1058#1077#1093#1085#1080#1082#1080
      Origin = '['#1052#1072#1088#1082#1072#1058#1077#1093#1085#1080#1082#1080']'
    end
    object MarkaQueryОписание: TWideMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Origin = '['#1054#1087#1080#1089#1072#1085#1080#1077']'
      BlobType = ftWideMemo
    end
  end
  object VidQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From '#1042#1080#1076)
    Left = 504
    Top = 208
    object VidQueryКодВида: TFDAutoIncField
      FieldName = #1050#1086#1076#1042#1080#1076#1072
      Origin = '['#1050#1086#1076#1042#1080#1076#1072']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object VidQueryВидТехники: TWideStringField
      FieldName = #1042#1080#1076#1058#1077#1093#1085#1080#1082#1080
      Origin = '['#1042#1080#1076#1058#1077#1093#1085#1080#1082#1080']'
      Size = 15
    end
    object VidQueryОписание: TWideStringField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Origin = '['#1054#1087#1080#1089#1072#1085#1080#1077']'
      Size = 255
    end
  end
  object ClientQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From '#1050#1083#1080#1077#1085#1090)
    Left = 624
    Top = 208
  end
  object RabotaQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From '#1056#1072#1073#1086#1090#1072)
    Left = 392
    Top = 264
    object RabotaQueryКодРаботы: TFDAutoIncField
      FieldName = #1050#1086#1076#1056#1072#1073#1086#1090#1099
      Origin = '['#1050#1086#1076#1056#1072#1073#1086#1090#1099']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object RabotaQueryИмяРаботы: TWideStringField
      FieldName = #1048#1084#1103#1056#1072#1073#1086#1090#1099
      Origin = '['#1048#1084#1103#1056#1072#1073#1086#1090#1099']'
      Size = 70
    end
    object RabotaQueryОписание: TWideMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Origin = '['#1054#1087#1080#1089#1072#1085#1080#1077']'
      BlobType = ftWideMemo
    end
    object RabotaQueryЦенаРаботы: TCurrencyField
      FieldName = #1062#1077#1085#1072#1056#1072#1073#1086#1090#1099
      Origin = '['#1062#1077#1085#1072#1056#1072#1073#1086#1090#1099']'
    end
  end
  object MasterQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from '#1052#1072#1089#1090#1077#1088)
    Left = 448
    Top = 264
    object MasterQueryКодМастера: TFDAutoIncField
      FieldName = #1050#1086#1076#1052#1072#1089#1090#1077#1088#1072
      Origin = '['#1050#1086#1076#1052#1072#1089#1090#1077#1088#1072']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object MasterQueryИмяМастера: TWideStringField
      FieldName = #1048#1084#1103#1052#1072#1089#1090#1077#1088#1072
      Origin = '['#1048#1084#1103#1052#1072#1089#1090#1077#1088#1072']'
      Size = 30
    end
    object MasterQueryТелефонМастера: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085#1052#1072#1089#1090#1077#1088#1072
      Origin = '['#1058#1077#1083#1077#1092#1086#1085#1052#1072#1089#1090#1077#1088#1072']'
      Size = 15
    end
    object MasterQueryСертификат: TWideStringField
      FieldName = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
      Origin = '['#1057#1077#1088#1090#1080#1092#1080#1082#1072#1090']'
      Size = 70
    end
  end
  object TexnikaQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from '#1058#1077#1093#1085#1080#1082#1072)
    Left = 504
    Top = 264
    object TexnikaQueryНомерТехники: TWideStringField
      FieldName = #1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080
      Origin = '['#1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080']'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object TexnikaQueryНазвание: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Origin = '['#1053#1072#1079#1074#1072#1085#1080#1077']'
      Size = 15
    end
    object TexnikaQueryКодКлиента: TIntegerField
      FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      Origin = '['#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072']'
    end
    object TexnikaQueryКодВида: TIntegerField
      FieldName = #1050#1086#1076#1042#1080#1076#1072
      Origin = '['#1050#1086#1076#1042#1080#1076#1072']'
    end
    object TexnikaQueryКодМарки: TIntegerField
      FieldName = #1050#1086#1076#1052#1072#1088#1082#1080
      Origin = '['#1050#1086#1076#1052#1072#1088#1082#1080']'
    end
  end
  object ZakazQuery: TFDQuery
    Connection = FDConnection1
    Left = 560
    Top = 264
  end
  object RemontQuery: TFDQuery
    Connection = FDConnection1
    Left = 624
    Top = 264
  end
  object RashodQuery: TFDQuery
    Connection = FDConnection1
    Left = 384
    Top = 328
  end
  object FDMSAccessService1: TFDMSAccessService
    DriverLink = FDPhysMSAccessDriverLink1
    Left = 480
    Top = 432
  end
end
