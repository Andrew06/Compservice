object DataModule6: TDataModule6
  OldCreateOrder = False
  Height = 542
  Width = 722
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
    DataSet = RabotaQuery
    Left = 112
    Top = 352
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
    DataSet = ZakazQuery
    OnDataChange = DSZakazDataChange
    Left = 280
    Top = 184
  end
  object DSRemont: TDataSource
    DataSet = RemontQuery
    Left = 280
    Top = 240
  end
  object DSSumRemont: TDataSource
    DataSet = SumRemontQuery
    Left = 280
    Top = 296
  end
  object DSRashod: TDataSource
    DataSet = RashodQuery
    Left = 280
    Top = 352
  end
  object DSSumRashod: TDataSource
    DataSet = SumRashodQuery
    Left = 456
    Top = 72
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=E:\'#1044#1086#1082#1091#1084#1077#1085#1090#1099'\'#1040#1085#1076#1088#1077#1081'\'#1091#1095#1077#1073#1072'\'#1044#1080#1087#1083#1086#1084'\Compservice\Database.a' +
        'ccdb'
      'User_Name=admin'
      
        'ODBCAdvanced=DriverId=25;MaxBufferSize=2048;MaxScanRows=8;PageTi' +
        'meout=5;SafeTransactions=0;Threads=3;UserCommitSync=Yes'
      'DriverID=MSAcc'
      'StringFormat=Unicode')
    Connected = True
    LoginDialog = FDGUIxLoginDialog1
    LoginPrompt = False
    Left = 24
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
    Left = 24
    Top = 72
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
    Left = 24
    Top = 120
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
    Left = 24
    Top = 240
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
    Left = 24
    Top = 184
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
    Left = 24
    Top = 296
    object ClientQueryКодКлиента: TFDAutoIncField
      FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      Origin = '['#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ClientQueryНаименование: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Origin = '['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077']'
    end
    object ClientQueryАдрес: TWideStringField
      FieldName = #1040#1076#1088#1077#1089
      Origin = '['#1040#1076#1088#1077#1089']'
    end
    object ClientQueryТелефон: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Origin = '['#1058#1077#1083#1077#1092#1086#1085']'
      Size = 15
    end
    object ClientQueryФакс: TWideStringField
      FieldName = #1060#1072#1082#1089
      Origin = '['#1060#1072#1082#1089']'
      Size = 15
    end
    object ClientQueryEmail: TWideStringField
      FieldName = 'Email'
      Origin = 'Email'
      Size = 15
    end
  end
  object RabotaQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From '#1056#1072#1073#1086#1090#1072)
    Left = 24
    Top = 352
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
    Left = 192
    Top = 72
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
      
        'Select '#1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080','#1053#1072#1079#1074#1072#1085#1080#1077', '#1042#1080#1076#1058#1077#1093#1085#1080#1082#1080', '#1052#1072#1088#1082#1072#1058#1077#1093#1085#1080#1082#1080', '#1058#1077#1093#1085#1080#1082#1072'.' +
        #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072' '
      'from '#1058#1077#1093#1085#1080#1082#1072', '#1050#1083#1080#1077#1085#1090', '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100', '#1042#1080#1076
      
        'where '#1058#1077#1093#1085#1080#1082#1072'.'#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072'=:param and '#1058#1077#1093#1085#1080#1082#1072'.'#1050#1086#1076#1052#1072#1088#1082#1080'='#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077 +
        #1083#1100'.'#1050#1086#1076#1052#1072#1088#1082#1080' and '#1058#1077#1093#1085#1080#1082#1072'.'#1050#1086#1076#1042#1080#1076#1072'='#1042#1080#1076'.'#1050#1086#1076#1042#1080#1076#1072)
    Left = 192
    Top = 128
    ParamData = <
      item
        Name = 'PARAM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
    object TexnikaQueryВидТехники: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1042#1080#1076#1058#1077#1093#1085#1080#1082#1080
      Origin = '['#1042#1080#1076#1058#1077#1093#1085#1080#1082#1080']'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object TexnikaQueryМаркаТехники: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1052#1072#1088#1082#1072#1058#1077#1093#1085#1080#1082#1080
      Origin = '['#1052#1072#1088#1082#1072#1058#1077#1093#1085#1080#1082#1080']'
      ProviderFlags = []
      ReadOnly = True
    end
    object TexnikaQueryКодКлиента: TIntegerField
      FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      Origin = '['#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072']'
    end
  end
  object RemontQuery: TFDQuery
    IndexFieldNames = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    MasterSource = DSZakaz
    MasterFields = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    Connection = FDConnection1
    SQL.Strings = (
      'Select '#1048#1084#1103#1056#1072#1073#1086#1090#1099', '#1062#1077#1085#1072#1056#1072#1073#1086#1090#1099', '#1042#1099#1087#1086#1083#1085#1077#1085#1072', r.'#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072' '
      'From '#1056#1077#1084#1086#1085#1090' r, '#1056#1072#1073#1086#1090#1072' p, '#1047#1072#1082#1072#1079' z'
      'Where r.'#1050#1086#1076#1056#1072#1073#1086#1090#1099'=p.'#1050#1086#1076#1056#1072#1073#1086#1090#1099' and r.'#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072'=z.'#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072)
    Left = 192
    Top = 240
    object RemontQueryИмяРаботы: TWideStringField
      FieldName = #1048#1084#1103#1056#1072#1073#1086#1090#1099
      Origin = '['#1048#1084#1103#1056#1072#1073#1086#1090#1099']'
      Size = 70
    end
    object RemontQueryЦенаРаботы: TCurrencyField
      FieldName = #1062#1077#1085#1072#1056#1072#1073#1086#1090#1099
      Origin = '['#1062#1077#1085#1072#1056#1072#1073#1086#1090#1099']'
    end
    object RemontQueryВыполнена: TBooleanField
      FieldName = #1042#1099#1087#1086#1083#1085#1077#1085#1072
      Origin = '['#1042#1099#1087#1086#1083#1085#1077#1085#1072']'
      Required = True
    end
    object RemontQueryНомерЗаказа: TIntegerField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
      Origin = '['#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072']'
    end
  end
  object RashodQuery: TFDQuery
    IndexFieldNames = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    MasterSource = DSZakaz
    MasterFields = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072', '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086', '#1062#1077#1085#1072', '#1057#1091#1084#1084#1072#1056#1072#1089#1093#1086#1076 +
        #1072', p.'#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072', p.'#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080', p.'#1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      'From '#1056#1072#1089#1093#1086#1076' p, '#1050#1072#1090#1077#1075#1086#1088#1080#1103' k, '#1052#1072#1090#1077#1088#1080#1072#1083' m, '#1047#1072#1082#1072#1079' z'
      
        'Where p.'#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080'=k.'#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080' and p.'#1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072'=m.'#1050#1086#1076#1052#1072#1090#1077 +
        #1088#1080#1072#1083#1072' and p.'#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072'=z.'#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
      '')
    Left = 192
    Top = 352
    object RashodQueryНаименование: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Origin = '['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077']'
      Size = 15
    end
    object RashodQueryИмяМатериала: TWideStringField
      FieldName = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
      Origin = '['#1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072']'
      Size = 50
    end
    object RashodQueryКоличество: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Origin = '['#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086']'
    end
    object RashodQueryЦена: TCurrencyField
      FieldName = #1062#1077#1085#1072
      Origin = '['#1062#1077#1085#1072']'
    end
    object RashodQueryНомерЗаказа: TIntegerField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
      Origin = '['#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072']'
    end
    object RashodQueryКодКатегории: TIntegerField
      FieldName = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
      Origin = '['#1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080']'
    end
    object RashodQueryКодМатериала: TIntegerField
      FieldName = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
      Origin = '['#1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072']'
    end
    object RashodQueryСуммаРасхода: TCurrencyField
      FieldName = #1057#1091#1084#1084#1072#1056#1072#1089#1093#1086#1076#1072
      Origin = '['#1057#1091#1084#1084#1072#1056#1072#1089#1093#1086#1076#1072']'
    end
  end
  object FDMSAccessService1: TFDMSAccessService
    DriverLink = FDPhysMSAccessDriverLink1
    Left = 480
    Top = 432
  end
  object ZakazQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select '#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072', '#1053#1072#1079#1074#1072#1085#1080#1077', '#1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080', '#1048#1084#1103#1052#1072#1089#1090#1077#1088#1072', '#1053#1072#1080#1084#1077#1085#1086#1074 +
        #1072#1085#1080#1077', '#1044#1072#1090#1072#1047#1072#1082#1072#1079#1072', '#1044#1072#1090#1072#1042#1099#1087#1086#1083#1085#1077#1085#1080#1103', '#1042#1099#1087#1086#1083#1085#1077#1085', '#1042#1099#1079#1086#1074', '#1044#1086#1089#1090#1072#1074#1082#1072', '#1054#1087#1083 +
        #1072#1090#1072', '#1057#1091#1084#1084#1072#1047#1072#1082#1072#1079#1072', z.'#1050#1086#1076#1052#1072#1089#1090#1077#1088#1072', z.'#1050#1086#1076#1058#1077#1093#1085#1080#1082#1080', z.'#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      'From '#1047#1072#1082#1072#1079' z, '#1058#1077#1093#1085#1080#1082#1072' t, '#1052#1072#1089#1090#1077#1088' m, '#1050#1083#1080#1077#1085#1090' k'
      
        'Where z.'#1050#1086#1076#1058#1077#1093#1085#1080#1082#1080'=t.'#1050#1086#1076#1058#1077#1093#1085#1080#1082#1080' and z.'#1050#1086#1076#1052#1072#1089#1090#1077#1088#1072'=m.'#1050#1086#1076#1052#1072#1089#1090#1077#1088#1072' an' +
        'd z.'#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072'=k.'#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      '  ')
    Left = 192
    Top = 184
    object ZakazQueryНомерЗаказа: TFDAutoIncField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
      Origin = '['#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072']'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ZakazQueryНазвание: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Origin = '['#1053#1072#1079#1074#1072#1085#1080#1077']'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object ZakazQueryНомерТехники: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080
      Origin = '['#1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080']'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object ZakazQueryИмяМастера: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1048#1084#1103#1052#1072#1089#1090#1077#1088#1072
      Origin = '['#1048#1084#1103#1052#1072#1089#1090#1077#1088#1072']'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object ZakazQueryНаименование: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Origin = '['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077']'
      ProviderFlags = []
      ReadOnly = True
    end
    object ZakazQueryДатаЗаказа: TSQLTimeStampField
      FieldName = #1044#1072#1090#1072#1047#1072#1082#1072#1079#1072
      Origin = '['#1044#1072#1090#1072#1047#1072#1082#1072#1079#1072']'
    end
    object ZakazQueryДатаВыполнения: TSQLTimeStampField
      FieldName = #1044#1072#1090#1072#1042#1099#1087#1086#1083#1085#1077#1085#1080#1103
      Origin = '['#1044#1072#1090#1072#1042#1099#1087#1086#1083#1085#1077#1085#1080#1103']'
    end
    object ZakazQueryВыполнен: TBooleanField
      FieldName = #1042#1099#1087#1086#1083#1085#1077#1085
      Origin = '['#1042#1099#1087#1086#1083#1085#1077#1085']'
      Required = True
    end
    object ZakazQueryВызов: TBooleanField
      FieldName = #1042#1099#1079#1086#1074
      Origin = '['#1042#1099#1079#1086#1074']'
      Required = True
    end
    object ZakazQueryДоставка: TBooleanField
      FieldName = #1044#1086#1089#1090#1072#1074#1082#1072
      Origin = '['#1044#1086#1089#1090#1072#1074#1082#1072']'
      Required = True
    end
    object ZakazQueryОплата: TWideStringField
      FieldName = #1054#1087#1083#1072#1090#1072
      Origin = '['#1054#1087#1083#1072#1090#1072']'
      Size = 10
    end
    object ZakazQueryКодМастера: TIntegerField
      FieldName = #1050#1086#1076#1052#1072#1089#1090#1077#1088#1072
      Origin = '['#1050#1086#1076#1052#1072#1089#1090#1077#1088#1072']'
    end
    object ZakazQueryКодТехники: TIntegerField
      FieldName = #1050#1086#1076#1058#1077#1093#1085#1080#1082#1080
      Origin = '['#1050#1086#1076#1058#1077#1093#1085#1080#1082#1080']'
    end
    object ZakazQueryКодКлиента: TIntegerField
      FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
      Origin = '['#1050#1086#1076#1050#1083#1080#1077#1085#1090#1072']'
    end
    object ZakazQueryСуммаЗаказа: TCurrencyField
      FieldName = #1057#1091#1084#1084#1072#1047#1072#1082#1072#1079#1072
      Origin = '['#1057#1091#1084#1084#1072#1047#1072#1082#1072#1079#1072']'
    end
  end
  object SumRemontQuery: TFDQuery
    OnCalcFields = SumRemontQueryCalcFields
    Connection = FDConnection1
    SQL.Strings = (
      'Select  '#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072' from '#1056#1077#1084#1086#1085#1090)
    Left = 192
    Top = 296
    object SumRemontQueryНомерЗаказа: TIntegerField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
      Origin = '['#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072']'
    end
  end
  object SumRashodQuery: TFDQuery
    OnCalcFields = SumRashodQueryCalcFields
    Connection = FDConnection1
    SQL.Strings = (
      'Select '#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072' from '#1056#1072#1089#1093#1086#1076)
    Left = 368
    Top = 72
    object SumRashodQueryНомерЗаказа: TIntegerField
      FieldName = #1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072
      Origin = '['#1053#1086#1084#1077#1088#1047#1072#1082#1072#1079#1072']'
    end
  end
end
