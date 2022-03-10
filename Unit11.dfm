object frmStorm: TfrmStorm
  Left = 98
  Top = 543
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1052#1072#1075#1080#1095#1077#1089#1082#1080#1081' '#1096#1090#1086#1088#1084'...'
  ClientHeight = 131
  ClientWidth = 247
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
    Width = 249
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
    Top = 44
    Width = 249
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1087#1086#1087#1072#1083#1080' '#1074' '#1084#1072#1075#1080#1095#1077#1089#1082#1080#1081' '#1096#1090#1086#1088#1084'!'
  end
  object Label3: TLabel
    Left = 0
    Top = 68
    Width = 249
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
    Left = 168
    Top = 96
  end
end
