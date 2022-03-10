object frmHealthMana: TfrmHealthMana
  Left = 364
  Top = 202
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'frmHealthMana'
  ClientHeight = 139
  ClientWidth = 268
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
    Width = 268
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1075#1088#1086#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 48
    Width = 268
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1085#1072#1096#1083#1080' '#1085#1072#1087#1080#1090#1086#1082'!'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 84
    Width = 268
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '+ n '#1082' '#1084#1072#1085#1077'/'#1079#1076#1086#1088#1086#1074#1100#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 112
    Width = 69
    Height = 21
    Cancel = True
    Caption = #1054#1050
    Default = True
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
end
