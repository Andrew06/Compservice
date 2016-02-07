object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  ClientHeight = 310
  ClientWidth = 709
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
  object Label1: TLabel
    Left = 0
    Top = 264
    Width = 710
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1057#1054#1058#1056#1059#1044#1053#1048#1050#1040' '#1055#1054' '#1048#1052#1045#1053#1048
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 710
    Height = 224
    Color = clSkyBlue
    Ctl3D = True
    DataSource = DataModule6.DSMaster
    DrawingStyle = gdsClassic
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076#1052#1072#1089#1090#1077#1088#1072
        Title.Caption = #1050#1054#1044
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1084#1103#1052#1072#1089#1090#1077#1088#1072
        Title.Caption = #1048#1052#1071
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1083#1077#1092#1086#1085#1052#1072#1089#1090#1077#1088#1072
        Title.Caption = #1058#1045#1051#1045#1060#1054#1053
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
        Title.Caption = #1057#1045#1056#1058#1048#1060#1048#1050#1040#1058
        Width = 500
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 222
    Width = 710
    Height = 42
    DataSource = DataModule6.DSMaster
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 288
    Width = 710
    Height = 21
    KeyField = #1048#1084#1103#1084#1072#1089#1090#1077#1088#1072
    ListField = #1048#1084#1103#1084#1072#1089#1090#1077#1088#1072
    ListSource = DataModule6.DSMaster
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 664
    Top = 176
    object N1: TMenuItem
      AutoCheck = True
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Checked = True
      Visible = False
      OnClick = N1Click
    end
  end
end
