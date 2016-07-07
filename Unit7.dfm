object Form7: TForm7
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099
  ClientHeight = 367
  ClientWidth = 570
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
  object Label1: TLabel
    Left = 0
    Top = 40
    Width = 57
    Height = 21
    Alignment = taCenter
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
    Left = 56
    Top = 40
    Width = 433
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045
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
    Left = 488
    Top = 40
    Width = 82
    Height = 21
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
    Top = 83
    Width = 570
    Height = 21
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
  object Label6: TLabel
    Left = 0
    Top = 322
    Width = 570
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1055#1054' '#1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1070' '#1052#1040#1058#1045#1056#1048#1040#1051#1040
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
  object DBMemo1: TDBMemo
    Left = 0
    Top = 104
    Width = 570
    Height = 161
    DataField = #1054#1087#1080#1089#1072#1085#1080#1077
    DataSource = DataModule6.DSMat
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 264
    Width = 570
    Height = 57
    DataSource = DataModule6.DSMat
    TabOrder = 0
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 0
    Top = 19
    Width = 570
    Height = 21
    KeyField = #1050#1086#1076#1050#1072#1090#1077#1075#1086#1088#1080#1080
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    ListSource = DataModule6.DSCat
    TabOrder = 1
    OnCloseUp = DBLookupComboBox2CloseUp
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 61
    Width = 57
    Height = 21
    DataField = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
    DataSource = DataModule6.DSMat
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 61
    Width = 433
    Height = 21
    DataField = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
    DataSource = DataModule6.DSMat
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 488
    Top = 61
    Width = 82
    Height = 21
    DataField = #1062#1077#1085#1072
    DataSource = DataModule6.DSMat
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 344
    Width = 570
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = #1050#1086#1076#1052#1072#1090#1077#1088#1080#1072#1083#1072
    ListField = #1048#1084#1103#1052#1072#1090#1077#1088#1080#1072#1083#1072
    ListSource = DataModule6.DSMat
    ParentFont = False
    TabOrder = 6
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
