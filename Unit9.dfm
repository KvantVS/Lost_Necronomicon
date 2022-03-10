object frmLabirinth: TfrmLabirinth
  Left = 387
  Top = 270
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1051#1072#1073#1080#1088#1080#1085#1090'...'
  ClientHeight = 122
  ClientWidth = 245
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
    Width = 245
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1075#1088#1086#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 44
    Width = 245
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = 
      #1044#1086#1083#1075#1086' '#1073#1083#1091#1078#1076#1072#1103' '#1084#1077#1078' '#1082#1072#1084#1077#1085#1085#1099#1093' '#1089#1090#1077#1085', '#1042#1099' '#1087#1086#1085#1103#1083#1080', '#1095#1090#1086' '#1042#1099' '#1079#1072#1073#1083#1091#1076#1080#1083#1080#1089#1100' '#1074 +
      ' '#1083#1072#1073#1080#1088#1080#1085#1090#1077'...'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 88
    Top = 92
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
end
