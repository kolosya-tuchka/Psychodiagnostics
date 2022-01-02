object Form28: TForm28
  Left = 389
  Top = 164
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 469
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label3: TLabel
    Left = 16
    Top = 208
    Width = 121
    Height = 21
    Caption = #1056#1072#1079#1084#1077#1088' '#1090#1077#1082#1089#1090#1072': '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 152
    Top = 208
    Width = 129
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemIndex = 2
    ParentFont = False
    TabOrder = 0
    Text = #1082#1088#1091#1087#1085#1099#1081
    OnChange = ComboBox1Change
    Items.Strings = (
      #1084#1077#1083#1082#1080#1081
      #1089#1088#1077#1076#1085#1080#1081' '
      #1082#1088#1091#1087#1085#1099#1081)
  end
  object Button2: TButton
    Left = 304
    Top = 99
    Width = 121
    Height = 70
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1074#1077#1090' '#1090#1077#1082#1089#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 304
    Top = 16
    Width = 121
    Height = 73
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1074#1077#1090' '#1092#1086#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = Button4Click
  end
  object Button1: TButton
    Left = 304
    Top = 304
    Width = 121
    Height = 57
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button5: TButton
    Left = 24
    Top = 304
    Width = 121
    Height = 57
    Caption = #1057#1090#1072#1085#1076#1072#1088#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 160
    Top = 304
    Width = 129
    Height = 57
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button6Click
  end
  object RichEdit1: TRichEdit
    Left = 24
    Top = 16
    Width = 257
    Height = 177
    Alignment = taCenter
    Color = clScrollBar
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Lines.Strings = (
      ''
      ''
      ''
      #1055#1088#1080#1084#1077#1088' '#1090#1077#1082#1089#1090#1072)
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    Zoom = 100
  end
  object CheckBox1: TCheckBox
    Left = 304
    Top = 200
    Width = 121
    Height = 33
    Caption = #1046#1080#1088#1085#1086#1089#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = CheckBox1Click
  end
  object ColorDialog1: TColorDialog
    Left = 8
    Top = 264
  end
end
