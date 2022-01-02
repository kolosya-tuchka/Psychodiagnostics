object Form6: TForm6
  Left = 373
  Top = 145
  Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
  ClientHeight = 491
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Memo1: TMemo
    Left = 24
    Top = 24
    Width = 601
    Height = 345
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 520
    Top = 392
    Width = 105
    Height = 57
    Caption = #1053#1072#1095#1072#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 392
    Width = 129
    Height = 57
    Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1084#1077#1085#1102
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = Button2Click
  end
end
