object frmArtifact: TfrmArtifact
  Left = 286
  Top = 384
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1042#1099' '#1085#1072#1096#1083#1080' '#1072#1088#1090#1077#1092#1072#1082#1090
  ClientHeight = 180
  ClientWidth = 327
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
    Width = 325
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Igrok takoi-to'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblDesc: TLabel
    Left = 0
    Top = 80
    Width = 325
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object lbl_art: TLabel
    Left = 0
    Top = 56
    Width = 325
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1085#1072#1096#1083#1080' '#1072#1088#1090#1077#1092#1072#1082#1090' " "'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnClose: TButton
    Left = 248
    Top = 152
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1042#1079#1103#1090#1100
    Default = True
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
end
