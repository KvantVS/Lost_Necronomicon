object frmMonster: TfrmMonster
  Left = 0
  Top = 0
  Caption = #1052#1086#1085#1089#1090#1088'!'
  ClientHeight = 202
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblPlayer: TLabel
    Left = 0
    Top = 12
    Width = 333
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
  object Image1: TImage
    Left = 8
    Top = 50
    Width = 64
    Height = 64
  end
  object Label1: TLabel
    Left = 78
    Top = 85
    Width = 245
    Height = 40
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1099' '#1093#1086#1090#1080#1090#1077' '#1089#1088#1072#1078#1072#1090#1100#1089#1103' '#1080#1083#1080' '#1087#1086#1087#1099#1090#1072#1077#1090#1077#1089#1100' '#1087#1088#1080#1088#1091#1095#1080#1090#1100' '#1089#1091#1097#1077#1089#1090#1074#1086'?'
    WordWrap = True
  end
  object lblMonster: TLabel
    Left = 72
    Top = 54
    Width = 261
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = #1052#1086#1085#1089#1090#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Fight1: TLabel
    Left = 78
    Top = 85
    Width = 245
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = #1050#1080#1085#1100#1090#1077' '#1082#1091#1073#1080#1082
    Visible = False
    WordWrap = True
  end
  object lbl_kubik_string: TLabel
    Left = 164
    Top = 106
    Width = 49
    Height = 14
    Alignment = taCenter
    AutoSize = False
    Caption = #1050#1091#1073#1080#1082':'
    Visible = False
    WordWrap = True
  end
  object lbl_kubik_integer: TLabel
    Left = 207
    Top = 106
    Width = 26
    Height = 14
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Visible = False
    WordWrap = True
  end
  object lbl_NoMana: TLabel
    Left = 78
    Top = 85
    Width = 245
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = 
      #1050' '#1089#1086#1078#1072#1083#1077#1085#1080#1102' '#1091' '#1074#1072#1089' '#1085#1077#1090' '#1084#1072#1085#1099', '#1095#1090#1086#1073#1099' '#1076#1088#1072#1090#1100#1089#1103' '#1089' '#1084#1086#1085#1089#1090#1088#1086#1084', '#1074#1099' '#1072#1074#1090#1086#1084#1072#1090 +
      #1080#1095#1077#1089#1082#1080' '#1087#1086#1083#1091#1095#1072#1077#1090#1077' '#1091#1088#1086#1085'...'
    Visible = False
    WordWrap = True
  end
  object lbl_Luck: TLabel
    Left = 78
    Top = 85
    Width = 245
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = #1053#1077#1091#1076#1072#1095#1072'...'
    Visible = False
  end
  object lbl_mana: TLabel
    Left = 170
    Top = 125
    Width = 42
    Height = 13
    Caption = 'lbl_mana'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_Health: TLabel
    Left = 170
    Top = 143
    Width = 47
    Height = 13
    Caption = 'lbl_Health'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn_Priruchenie: TButton
    Left = 16
    Top = 161
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1088#1091#1095#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 0
    OnClick = btn_PriruchenieClick
  end
  object btn_fight: TButton
    Left = 244
    Top = 161
    Width = 75
    Height = 25
    Caption = #1042' '#1073#1086#1081'!'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    OnClick = btn_fightClick
  end
  object btn_Kubik: TButton
    Left = 120
    Top = 161
    Width = 101
    Height = 25
    Caption = #1050#1080#1085#1091#1090#1100' '#1082#1091#1073#1080#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = btn_KubikClick
  end
  object btn_close: TButton
    Left = 244
    Top = 161
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = btn_closeClick
  end
end
