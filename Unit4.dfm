object Form4: TForm4
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #1042#1080#1076' '#1090#1077#1093#1085#1080#1082#1080
  ClientHeight = 278
  ClientWidth = 633
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
  object Label3: TLabel
    Left = 0
    Top = 230
    Width = 633
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1054#1048#1057#1050' '#1055#1054' '#1053#1040#1048#1052#1045#1053#1054#1042#1053#1048#1070' '#1058#1045#1061#1053#1048#1050#1048
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 57
    Height = 25
    AutoSize = False
    Caption = #1050#1054#1044
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label2: TLabel
    Left = 56
    Top = 0
    Width = 577
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045' '#1058#1045#1061#1053#1048#1050#1048
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label4: TLabel
    Left = 0
    Top = 50
    Width = 633
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = #1054#1055#1048#1057#1040#1053#1048#1045
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 25
    Width = 65
    Height = 25
    BevelOuter = bvRaised
    BevelKind = bkFlat
    DataField = #1050#1086#1076#1042#1080#1076#1072
    DataSource = DataModule6.DSVid
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 255
    Width = 633
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    KeyField = #1042#1080#1076#1090#1077#1093#1085#1080#1082#1080
    ListField = #1042#1080#1076#1090#1077#1093#1085#1080#1082#1080
    ListSource = DataModule6.DSVid
    ParentFont = False
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 182
    Width = 630
    Height = 48
    DataSource = DataModule6.DSVid
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 63
    Top = 25
    Width = 570
    Height = 25
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkFlat
    DataField = #1042#1080#1076#1090#1077#1093#1085#1080#1082#1080
    DataSource = DataModule6.DSVid
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 72
    Width = 633
    Height = 110
    DataField = #1054#1087#1080#1089#1072#1085#1080#1077
    DataSource = DataModule6.DSVid
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
