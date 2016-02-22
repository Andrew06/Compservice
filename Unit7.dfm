object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099
  ClientHeight = 366
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 320
    Width = 570
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1052#1040#1058#1045#1056#1048#1040#1051#1040' '#1055#1054' '#1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1070
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
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 570
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1050#1040#1058#1045#1043#1054#1056#1048#1071' '#1052#1040#1058#1045#1056#1048#1040#1051#1054#1042
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
    Top = 264
    Width = 570
    Height = 57
    DataSource = DataModule6.DSMat
    TabOrder = 0
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 40
    Width = 570
    Height = 225
    DataSource = DataModule6.DSMat
    PanelHeight = 225
    PanelWidth = 553
    TabOrder = 1
    RowCount = 1
    object Label3: TLabel
      Left = 0
      Top = 0
      Width = 41
      Height = 18
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
    object Label4: TLabel
      Left = 40
      Top = 0
      Width = 433
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045' '#1052#1040#1058#1045#1056#1048#1040#1051#1040
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
      Left = 472
      Top = 0
      Width = 81
      Height = 18
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
    object Label6: TLabel
      Left = 0
      Top = 40
      Width = 553
      Height = 22
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
      Width = 41
      Height = 21
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataField = #1050#1086#1076#1084#1072#1090#1077#1088#1080#1072#1083#1072
      DataSource = DataModule6.DSMat
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 16
      Width = 426
      Height = 21
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataField = #1048#1084#1103#1084#1072#1090#1077#1088#1080#1072#1083#1072
      DataSource = DataModule6.DSMat
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 463
      Top = 16
      Width = 90
      Height = 21
      AutoSize = False
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataField = #1062#1077#1085#1072
      DataSource = DataModule6.DSMat
      TabOrder = 2
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 344
    Width = 570
    Height = 21
    KeyField = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
    ListField = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
    ListSource = DataModule6.DSMat
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 0
    Top = 19
    Width = 570
    Height = 21
    KeyField = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    ListSource = DataModule6.DSCat
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 104
    Width = 553
    Height = 161
    DataField = #1054#1087#1080#1089#1072#1085#1080#1077
    DataSource = DataModule6.DSMat
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 504
    Top = 224
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1089#1093#1086#1076
      Visible = False
      OnClick = N1Click
    end
  end
end
