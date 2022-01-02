object Form70: TForm70
  Left = 129
  Top = 45
  Caption = 'Form70'
  ClientHeight = 552
  ClientWidth = 1097
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 7
    Top = 0
    Width = 1074
    Height = 33
    AutoSize = False
    Caption = 'Label2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label1: TLabel
    Left = 7
    Top = 48
    Width = 1082
    Height = 145
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object RadioGroup1: TRadioGroup
    Left = 17
    Top = 208
    Width = 1072
    Height = 265
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object Button2: TButton
    Left = 8
    Top = 488
    Width = 137
    Height = 57
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
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
  object Button1: TButton
    Left = 941
    Top = 488
    Width = 139
    Height = 57
    Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 216
    Width = 1073
    Height = 257
    TabOrder = 3
    Visible = False
    object Label3: TLabel
      Left = 144
      Top = 88
      Width = 140
      Height = 24
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1086#1090#1074#1077#1090':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 512
      Top = 16
      Width = 529
      Height = 233
      Center = True
      Proportional = True
      Stretch = True
      Visible = False
    end
    object Label4: TLabel
      Left = 128
      Top = 160
      Width = 156
      Height = 24
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1086#1090#1074#1077#1090' 2:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Edit1: TEdit
      Left = 304
      Top = 88
      Width = 121
      Height = 32
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 304
      Top = 152
      Width = 121
      Height = 32
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 216
    Width = 1073
    Height = 257
    TabOrder = 4
    Visible = False
    object CheckBox1: TCheckBox
      Left = 152
      Top = 48
      Width = 425
      Height = 33
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object CheckBox2: TCheckBox
      Left = 152
      Top = 104
      Width = 425
      Height = 33
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object CheckBox3: TCheckBox
      Left = 152
      Top = 160
      Width = 425
      Height = 33
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object CheckBox4: TCheckBox
      Left = 600
      Top = 48
      Width = 425
      Height = 33
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object CheckBox5: TCheckBox
      Left = 600
      Top = 104
      Width = 425
      Height = 33
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object CheckBox6: TCheckBox
      Left = 600
      Top = 160
      Width = 425
      Height = 33
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 1064
    Top = 80
    object N1: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
      OnClick = N1Click
    end
  end
end
