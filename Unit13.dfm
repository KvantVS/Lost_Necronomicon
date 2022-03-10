object frmObelisk: TfrmObelisk
  Left = 291
  Top = 1
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1054#1073#1077#1083#1080#1089#1082
  ClientHeight = 178
  ClientWidth = 341
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
    Width = 341
    Height = 29
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
    Top = 48
    Width = 341
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1077#1088#1077#1076' '#1042#1072#1084#1080' '#1086#1073#1077#1083#1080#1089#1082'...'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 80
    Width = 341
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1077#1075#1086' '#1089#1080#1083#1091' '#1080#1083#1080' '#1087#1088#1086#1081#1090#1080' '#1084#1080#1084#1086'?'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lblKubik1: TLabel
    Left = 204
    Top = 88
    Width = 21
    Height = 21
    AutoSize = False
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblKubik2: TLabel
    Left = 204
    Top = 112
    Width = 81
    Height = 21
    AutoSize = False
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblKubik3: TLabel
    Left = 90
    Top = 92
    Width = 100
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1083#1077#1090#1086#1082':'
    Visible = False
  end
  object lblKubik4: TLabel
    Left = 118
    Top = 116
    Width = 71
    Height = 13
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077':'
    Visible = False
  end
  object btnUse: TBitBtn
    Left = 8
    Top = 148
    Width = 85
    Height = 25
    Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnUseClick
  end
  object btnIgnore: TBitBtn
    Left = 252
    Top = 148
    Width = 83
    Height = 25
    Caption = #1055#1088#1086#1081#1090#1080' '#1084#1080#1084#1086
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnIgnoreClick
  end
  object btnKubik: TBitBtn
    Left = 132
    Top = 148
    Width = 75
    Height = 25
    Caption = #1050#1080#1085#1091#1090#1100' '#1082#1091#1073#1080#1082
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    Visible = False
    OnClick = btnKubikClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
    Left = 100
    Top = 148
  end
end
