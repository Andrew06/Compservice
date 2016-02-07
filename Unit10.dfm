object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1085#1086#1089#1090#1080
  ClientHeight = 108
  ClientWidth = 278
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
    Left = 4
    Top = 5
    Width = 10
    Height = 18
    AutoSize = False
    Caption = 'C'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 28
    Width = 20
    Height = 18
    Caption = #1055#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 4
    Top = 52
    Width = 57
    Height = 18
    Caption = #1052#1072#1089#1090#1077#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 36
    Top = 5
    Width = 237
    Height = 21
    Date = 41387.726000150460000000
    Time = 41387.726000150460000000
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 36
    Top = 28
    Width = 237
    Height = 21
    Date = 41387.726206863420000000
    Time = 41387.726206863420000000
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 67
    Top = 52
    Width = 206
    Height = 21
    KeyField = #1048#1084#1103#1084#1072#1089#1090#1077#1088#1072
    ListField = #1048#1084#1103#1084#1072#1089#1090#1077#1088#1072
    ListSource = DataModule6.DSMaster
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 4
    Top = 76
    Width = 269
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
