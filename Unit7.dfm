object frmTrap: TfrmTrap
  Left = 349
  Top = 99
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1051#1086#1074#1091#1096#1082#1072'...'
  ClientHeight = 176
  ClientWidth = 283
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
    Width = 285
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
    Top = 76
    Width = 285
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #1069#1090#1072' '#1083#1086#1074#1091#1096#1082#1072' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1080#1090' '#1080#1075#1088#1086#1082#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Label3: TLabel
    Left = 0
    Top = 108
    Width = 285
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1075#1088#1086#1082' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 128
    Width = 285
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1075#1088#1086#1082' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 0
    Top = 40
    Width = 285
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1072#1082#1090#1080#1074#1080#1088#1086#1074#1072#1083#1080' '#1083#1086#1074#1091#1096#1082#1091'...'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object btnOK: TButton
    Left = 204
    Top = 148
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = btnOKClick
  end
  object btnArtifact: TBitBtn
    Left = 4
    Top = 148
    Width = 173
    Height = 25
    Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1042#1086#1079#1076#1091#1096#1085#1099#1081' '#1065#1080#1090
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 51712
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = btnArtifactClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
end
