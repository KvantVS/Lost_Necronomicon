object frmLabirinth2: TfrmLabirinth2
  Left = 329
  Top = 384
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = #1042' '#1083#1072#1073#1080#1088#1080#1085#1090#1077'...'
  ClientHeight = 134
  ClientWidth = 306
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
  object lblPlayer: TLabel
    Left = 0
    Top = 12
    Width = 305
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblPlayer'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblInfo1: TLabel
    Left = 0
    Top = 48
    Width = 305
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = 
      #1063#1090#1086#1073#1099' '#1074#1099#1073#1088#1072#1090#1100#1089#1103' '#1080#1079' '#1083#1072#1073#1080#1088#1080#1085#1090#1072' '#1042#1072#1084' '#1085#1091#1078#1085#1086' '#1074#1099#1082#1080#1085#1091#1090#1100' '#1085#1072' '#1082#1091#1073#1080#1082#1077' 5 '#1080#1083#1080' ' +
      '6'
    WordWrap = True
  end
  object lblKubik: TLabel
    Left = 185
    Top = 110
    Width = 9
    Height = 17
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblInfo2: TLabel
    Left = 0
    Top = 65
    Width = 305
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = 
      #1058#1077#1087#1077#1088#1100' '#1042#1072#1084' '#1085#1091#1078#1085#1086' '#1082#1080#1085#1091#1090#1100' '#1082#1091#1073#1080#1082', '#1095#1090#1086#1073#1099' '#1091#1079#1085#1072#1090#1100', '#1085#1072' '#1082#1072#1082#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086 +
      ' '#1082#1083#1077#1090#1086#1082' '#1087#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100#1089#1103'.'
    Visible = False
    WordWrap = True
  end
  object lblFail: TLabel
    Left = 0
    Top = 48
    Width = 305
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = #1050' '#1089#1086#1078#1072#1083#1077#1085#1080#1102', '#1042#1099' '#1086#1089#1090#1072#1077#1090#1077#1089#1100' '#1074' '#1083#1072#1073#1080#1088#1080#1085#1090#1077' '#1076#1086' '#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1093#1086#1076#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object lbl_Luck: TLabel
    Left = 0
    Top = 40
    Width = 305
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1059#1076#1072#1095#1072'!'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 105
    Top = 106
    Width = 75
    Height = 25
    Caption = #1050#1080#1085#1091#1090#1100' '#1082#1091#1073#1080#1082
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 229
    Top = 106
    Width = 71
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
    Left = 44
    Top = 100
  end
end
