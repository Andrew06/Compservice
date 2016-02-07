object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 541
  ClientWidth = 720
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 0
    Top = 266
    Width = 720
    Height = 25
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = #1058#1077#1093#1085#1080#1082#1072' '#1082#1083#1080#1077#1085#1090#1072
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label3: TLabel
    Left = 0
    Top = 492
    Width = 361
    Height = 34
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1050#1051#1048#1045#1053#1058#1040' '#1055#1054' '#1048#1052#1045#1053#1048
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label4: TLabel
    Left = 359
    Top = 492
    Width = 361
    Height = 34
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1058#1045#1061#1053#1048#1050#1048' '#1055#1054' '#1053#1054#1052#1045#1056#1059
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label1: TLabel
    Left = 0
    Top = -1
    Width = 720
    Height = 18
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = #1050#1083#1080#1077#1085#1090#1099
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 16
    Width = 720
    Height = 210
    Color = clGradientActiveCaption
    DataSource = DataModule6.DSClient
    DrawingStyle = gdsClassic
    FixedColor = clSilver
    GradientEndColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
        Title.Alignment = taCenter
        Title.Caption = #1050#1054#1044
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.Alignment = taCenter
        Title.Caption = #1048#1052#1071' '#1050#1051#1048#1045#1053#1058#1040
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1040#1076#1088#1077#1089
        Title.Alignment = taCenter
        Title.Caption = #1040#1044#1056#1045#1057
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1083#1077#1092#1086#1085
        Title.Alignment = taCenter
        Title.Caption = #1058#1045#1051#1045#1060#1054#1053
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1072#1082#1089
        Title.Alignment = taCenter
        Title.Caption = #1060#1040#1050#1057
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Title.Alignment = taCenter
        Title.Caption = 'EMAIL'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 228
    Width = 720
    Height = 40
    DataSource = DataModule6.DSClient
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = -5
    Top = 289
    Width = 725
    Height = 161
    Color = clMoneyGreen
    DataSource = DataModule6.DSTexnika
    DrawingStyle = gdsClassic
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1042#1080#1076
        Title.Caption = #1042#1048#1044' '#1058#1045#1061#1053#1048#1050#1048' '
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1052#1072#1088#1082#1072
        Title.Caption = #1052#1040#1056#1050#1040
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
        Title.Caption = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045' '#1058#1045#1061#1053#1048#1050#1048
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088#1058#1077#1093#1085#1080#1082#1080
        Title.Caption = #8470
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076#1050#1083#1080#1077#1085#1090#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076#1042#1080#1076#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076#1052#1072#1088#1082#1080
        Visible = False
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 0
    Top = 449
    Width = 720
    Height = 41
    DataSource = DataModule6.DSTexnika
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 516
    Width = 361
    Height = 21
    KeyField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    ListSource = DataModule6.DSClient
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 359
    Top = 516
    Width = 361
    Height = 21
    KeyField = #1053#1086#1084#1077#1088#1090#1077#1093#1085#1080#1082#1080
    ListField = #1053#1086#1084#1077#1088#1090#1077#1093#1085#1080#1082#1080
    ListSource = DataModule6.DSTexnika
    TabOrder = 5
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 512
    object N1: TMenuItem
      AutoCheck = True
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Checked = True
      Visible = False
      OnClick = N1Click
    end
  end
end
