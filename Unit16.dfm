object frmPlayerNextMove: TfrmPlayerNextMove
  Left = 473
  Top = 303
  AlphaBlend = True
  AlphaBlendValue = 1
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmPlayerNextMove'
  ClientHeight = 72
  ClientWidth = 157
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 16
    Width = 157
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1061#1086#1076#1080#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 36
    Width = 157
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Monotype Corsiva'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 7
    OnTimer = Timer1Timer
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 8
    Top = 4
  end
end
