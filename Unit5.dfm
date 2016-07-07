object Form5: TForm5
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #1052#1072#1088#1082#1080' '#1090#1077#1093#1085#1080#1082#1080
  ClientHeight = 356
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 308
    Width = 610
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1052#1040#1056#1050#1048' '#1055#1054' '#1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1070
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
    Left = 0
    Top = 46
    Width = 610
    Height = 18
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
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 57
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
  object Label3: TLabel
    Left = 56
    Top = 0
    Width = 554
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045' '#1052#1040#1056#1050#1048
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
    Width = 610
    Height = 51
    DataSource = DataModule6.DSMarka
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 333
    Width = 610
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = #1052#1072#1088#1082#1072#1090#1077#1093#1085#1080#1082#1080
    ListField = #1052#1072#1088#1082#1072#1090#1077#1093#1085#1080#1082#1080
    ListSource = DataModule6.DSMarka
    ParentFont = False
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 64
    Width = 610
    Height = 193
    DataField = #1054#1087#1080#1089#1072#1085#1080#1077
    DataSource = DataModule6.DSMarka
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 18
    Width = 58
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    DataField = #1050#1086#1076#1084#1072#1088#1082#1080
    DataSource = DataModule6.DSMarka
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 18
    Width = 554
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    DataField = #1052#1072#1088#1082#1072#1090#1077#1093#1085#1080#1082#1080
    DataSource = DataModule6.DSMarka
    TabOrder = 4
  end
end
