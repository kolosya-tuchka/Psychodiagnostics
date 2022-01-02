object Form88: TForm88
  Left = 193
  Top = 12
  Caption = #1042#1086#1087#1088#1086#1089' 1 '#1080#1079' '
  ClientHeight = 664
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Question: TLabel
    Left = 202
    Top = 240
    Width = 500
    Height = 84
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1086#1087#1088#1086#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 54
    Height = 22
    Caption = #1058#1077#1089#1090':  '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 184
    Top = 40
    Width = 540
    Height = 190
    Stretch = True
  end
  object Button1: TButton
    Left = 616
    Top = 560
    Width = 145
    Height = 57
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 568
    Width = 145
    Height = 57
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = Button2Click
  end
  object Button7: TButton
    Left = 848
    Top = 8
    Width = 89
    Height = 33
    Caption = #1042#1067#1061#1054#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button7Click
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 320
    Width = 905
    Height = 233
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1072
    TabOrder = 3
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 16
      Width = 897
      Height = 201
      TabOrder = 0
      object Image2: TImage
        Left = 16
        Top = 24
        Width = 250
        Height = 150
        Stretch = True
        Visible = False
      end
      object Image4: TImage
        Left = 280
        Top = 24
        Width = 250
        Height = 150
        Stretch = True
        Visible = False
      end
      object Image6: TImage
        Left = 810
        Top = 24
        Width = 250
        Height = 150
        Stretch = True
        Visible = False
      end
      object Image5: TImage
        Left = 544
        Top = 24
        Width = 250
        Height = 150
        Stretch = True
        Visible = False
      end
      object Image7: TImage
        Left = 1074
        Top = 24
        Width = 250
        Height = 150
        Visible = False
      end
      object RadioButton1: TRadioButton
        Left = 16
        Top = 6
        Width = 249
        Height = 17
        Caption = 'RadioButton1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object RadioButton2: TRadioButton
        Left = 280
        Top = 6
        Width = 249
        Height = 17
        Caption = 'RadioButton2'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object RadioButton3: TRadioButton
        Left = 544
        Top = 6
        Width = 249
        Height = 16
        Caption = 'RadioButton3'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object RadioButton4: TRadioButton
        Left = 808
        Top = 6
        Width = 113
        Height = 17
        Caption = 'RadioButton4'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
      object RadioButton5: TRadioButton
        Left = 1075
        Top = 6
        Width = 113
        Height = 17
        Caption = 'RadioButton5'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 872
    Top = 56
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1089#1085#1086#1074#1072
      OnClick = N1Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
end
