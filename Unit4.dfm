object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1042#1080#1076' '#1090#1077#1093#1085#1080#1082#1080
  ClientHeight = 280
  ClientWidth = 656
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
  object Label3: TLabel
    Left = 0
    Top = 232
    Width = 655
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
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 655
    Height = 185
    Color = clBtnFace
    DataSource = DataModule6.DSVid
    PanelHeight = 185
    PanelWidth = 638
    ParentColor = False
    TabOrder = 1
    RowCount = 1
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
      Top = 48
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
    object DBEdit2: TDBEdit
      Left = 63
      Top = 24
      Width = 570
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkFlat
      DataField = #1042#1080#1076#1090#1077#1093#1085#1080#1082#1080
      DataSource = DataModule6.DSVid
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 0
      Top = 72
      Width = 633
      Height = 107
      DataField = #1054#1087#1080#1089#1072#1085#1080#1077
      DataSource = DataModule6.DSVid
      TabOrder = 1
    end
  end
  object DBNavigator1: TDBNavigator
    Left = -2
    Top = 185
    Width = 660
    Height = 48
    DataSource = DataModule6.DSVid
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 24
    Width = 57
    Height = 21
    BevelOuter = bvRaised
    BevelKind = bkFlat
    DataField = #1050#1086#1076#1042#1080#1076#1072
    DataSource = DataModule6.DSVid
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 0
    Top = 256
    Width = 655
    Height = 21
    KeyField = #1042#1080#1076#1090#1077#1093#1085#1080#1082#1080
    ListField = #1042#1080#1076#1090#1077#1093#1085#1080#1082#1080
    ListSource = DataModule6.DSVid
    TabOrder = 3
  end
end