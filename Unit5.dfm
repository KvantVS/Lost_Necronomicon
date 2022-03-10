object frmMoon: TfrmMoon
  Left = 199
  Top = 281
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'frmMoon'
  ClientHeight = 166
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 12
    Width = 364
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 48
    Width = 364
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1079#1072#1093#1086#1076#1080#1090#1077' '#1074' '#1061#1088#1072#1084' '#1051#1091#1085#1099'...'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 84
    Width = 364
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = #1046#1088#1077#1094' '#1093#1088#1072#1084#1072' '#1087#1088#1077#1076#1083#1072#1075#1072#1077#1090' '#1042#1072#1084' '#1091#1074#1077#1083#1080#1095#1080#1090#1100' '#1084#1072#1085#1091' '#1079#1072' '#1089#1095#1077#1090' '#1079#1076#1086#1088#1086#1074#1100#1103'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 4
    Top = 114
    Width = 299
    Height = 16
    Alignment = taCenter
    Caption = #1057#1082#1086#1083#1100#1082#1086' '#1042#1099' '#1093#1086#1090#1080#1090#1077' '#1087#1086#1078#1077#1088#1090#1074#1086#1074#1072#1090#1100' '#1079#1076#1086#1088#1086#1074#1100#1103' '#1088#1072#1076#1080' '#1084#1072#1085#1099':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object UpDown1: TUpDown
    Left = 337
    Top = 112
    Width = 17
    Height = 21
    Associate = Edit1
    Max = 26
    TabOrder = 0
    Thousands = False
    OnClick = UpDown1Click
  end
  object Edit1: TEdit
    Left = 308
    Top = 112
    Width = 29
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = '0'
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 136
    Width = 97
    Height = 25
    Caption = #1055#1086#1078#1077#1088#1090#1074#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 4
    Top = 136
    Width = 97
    Height = 25
    Caption = #1053#1077' '#1078#1077#1088#1090#1074#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
end
