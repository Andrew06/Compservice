object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1056#1077#1084#1086#1085#1090#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
  ClientHeight = 349
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 304
    Width = 600
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1056#1040#1041#1054#1058#1067' '#1055#1054' '#1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1070
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 257
    Width = 600
    Height = 49
    DataSource = DataModule6.DSRabota
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 328
    Width = 600
    Height = 21
    KeyField = #1048#1084#1103#1088#1072#1073#1086#1090#1099
    ListField = #1048#1084#1103#1088#1072#1073#1086#1090#1099
    ListSource = DataModule6.DSRabota
    TabOrder = 1
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 600
    Height = 257
    DataSource = DataModule6.DSRabota
    PanelHeight = 257
    PanelWidth = 583
    TabOrder = 2
    RowCount = 1
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 49
      Height = 17
      AutoSize = False
      Caption = #1050#1054#1044
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label3: TLabel
      Left = 48
      Top = 0
      Width = 465
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045' '#1056#1040#1041#1054#1058#1067
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label4: TLabel
      Left = 512
      Top = 0
      Width = 73
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = #1062#1045#1053#1040
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label5: TLabel
      Left = 0
      Top = 40
      Width = 584
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #1054#1055#1048#1057#1040#1053#1048#1045
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object DBEdit1: TDBEdit
      Left = 0
      Top = 16
      Width = 42
      Height = 21
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataField = #1050#1086#1076#1088#1072#1073#1086#1090#1099
      DataSource = DataModule6.DSRabota
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 48
      Top = 16
      Width = 458
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataField = #1048#1084#1103#1088#1072#1073#1086#1090#1099
      DataSource = DataModule6.DSRabota
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 512
      Top = 16
      Width = 72
      Height = 21
      BevelKind = bkFlat
      DataField = #1062#1077#1085#1072#1088#1072#1073#1086#1090#1099
      DataSource = DataModule6.DSRabota
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 0
      Top = 56
      Width = 584
      Height = 195
      DataField = #1054#1087#1080#1089#1072#1085#1080#1077
      DataSource = DataModule6.DSRabota
      TabOrder = 3
    end
  end
end
