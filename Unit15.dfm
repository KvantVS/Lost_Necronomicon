object frmTeleport: TfrmTeleport
  Left = 524
  Top = 89
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'frmTeleport'
  ClientHeight = 175
  ClientWidth = 342
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
    Width = 345
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
  object lblText: TLabel
    Left = 0
    Top = 52
    Width = 342
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = 
      #1053#1072' '#1042#1072#1096#1077#1084' '#1087#1091#1090#1080' '#1042#1099' '#1074#1080#1076#1080#1090#1077' '#1089#1090#1088#1072#1085#1085#1099#1077' '#1074#1088#1072#1090#1072'... '#1042#1099' '#1088#1077#1096#1072#1077#1090#1077#1089#1100' '#1080#1089#1087#1099#1090#1072#1090#1100' ' +
      #1091#1076#1072#1095#1091' '#1080' '#1087#1088#1086#1081#1090#1080' '#1095#1077#1088#1077#1079' '#1085#1080#1093'...'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object lblTeleport: TLabel
    Left = 0
    Top = 96
    Width = 342
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblTeleport'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object lblOutside: TLabel
    Left = 0
    Top = 96
    Width = 342
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = 
      '('#1063#1090#1086#1073#1099' '#1090#1077#1083#1077#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100#1089#1103' '#1085#1072' '#1074#1085#1077#1096#1085#1080#1081' '#1074#1080#1090#1086#1082', '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074#1099#1082#1080#1085#1091#1090#1100' '#1085 +
      #1072' '#1082#1091#1073#1080#1082#1077' 5 '#1080#1083#1080' 6...)'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object lblKubik: TLabel
    Left = 292
    Top = 112
    Width = 37
    Height = 25
    AutoSize = False
    Caption = '1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object btnClose: TButton
    Left = 260
    Top = 144
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'OK'
    Default = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object Edit1: TEdit
    Left = 124
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 179
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
end
