object frmTrap1: TfrmTrap1
  Left = 287
  Top = 535
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1051#1086#1074#1091#1096#1082#1072'...'
  ClientHeight = 131
  ClientWidth = 345
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
    Top = 60
    Width = 345
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1051#1086#1074#1091#1096#1082#1072' '#1085#1080#1095#1100#1103'. '#1061#1086#1090#1080#1090#1077' '#1072#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1083#1086#1074#1091#1096#1082#1091'?'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 12
    Width = 345
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
  object BitBtn1: TBitBtn
    Left = 8
    Top = 96
    Width = 189
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1083#1086#1074#1091#1096#1082#1091' (-1 '#1084#1072#1085#1099')'
    DoubleBuffered = True
    ParentBiDiMode = False
    ParentDoubleBuffered = False
    TabOrder = 0
    WordWrap = True
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 212
    Top = 96
    Width = 125
    Height = 25
    Caption = #1054#1089#1090#1072#1074#1080#1090#1100' '#1083#1086#1074#1091#1096#1082#1091
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
