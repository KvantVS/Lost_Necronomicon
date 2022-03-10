object frmSwamp: TfrmSwamp
  Left = 96
  Top = 65
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1041#1086#1083#1086#1090#1086'...'
  ClientHeight = 155
  ClientWidth = 282
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
    Width = 281
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
    Width = 281
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1072#1084' '#1087#1086#1074#1089#1090#1088#1077#1095#1072#1083#1086#1089#1100' '#1073#1086#1083#1086#1090#1086'...'
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
    Width = 281
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1084#1086#1078#1077#1090#1077' '#1086#1089#1091#1096#1080#1090#1100' '#1077#1075#1086' '#1079#1072' 1 '#1084#1072#1085#1091', '#1080#1083#1080' '#1078#1077' '#1087#1088#1086#1087#1091#1089#1090#1080#1090#1100' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 124
    Width = 125
    Height = 25
    Caption = #1054#1089#1091#1096#1080#1090#1100' (-1 '#1084#1072#1085#1099')'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 148
    Top = 124
    Width = 125
    Height = 25
    Caption = #1053#1077' '#1086#1089#1091#1096#1072#1090#1100'...'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
end
