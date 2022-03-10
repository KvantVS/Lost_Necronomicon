object frmDungeon: TfrmDungeon
  Left = 338
  Top = 0
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1055#1086#1076#1079#1077#1084#1077#1083#1100#1077'...'
  ClientHeight = 135
  ClientWidth = 294
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
    Top = 16
    Width = 294
    Height = 25
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
    Top = 52
    Width = 294
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1093#1086#1090#1080#1090#1077' '#1080#1089#1089#1083#1077#1076#1086#1074#1072#1090#1100' '#1087#1086#1076#1079#1077#1084#1077#1083#1100#1077'?'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lblMonster: TLabel
    Left = 0
    Top = 80
    Width = 294
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1052#1086#1085#1089#1090#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblHM: TLabel
    Left = 0
    Top = 80
    Width = 294
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = '+ 0 '#1082' '#1079#1076#1086#1088#1086#1074#1100#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblKubik: TLabel
    Left = 88
    Top = 108
    Width = 9
    Height = 17
    Caption = '?'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 212
    Top = 104
    Width = 75
    Height = 25
    Caption = #1054#1089#1090#1072#1074#1080#1090#1100
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Caption = #1048#1089#1089#1083#1077#1076#1086#1074#1072#1090#1100
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
    Left = 180
    Top = 104
  end
end
