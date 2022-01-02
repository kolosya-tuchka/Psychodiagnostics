object Form52: TForm52
  Left = 178
  Top = 66
  BorderStyle = bsDialog
  Caption = #1058#1077#1089#1090' '#1051#1102#1096#1077#1088#1072
  ClientHeight = 599
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    Left = 104
    Top = 56
    Width = 686
    Height = 22
    Alignment = taCenter
    Caption = 
      #1042#1099#1073#1077#1088#1080#1090#1077' '#1080#1079' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1085#1099#1093'  '#1094#1074#1077#1090#1086#1074'  '#1090#1086#1090', '#1082#1086#1090#1086#1088#1099#1081' '#1074#1072#1084' '#1073#1086#1083#1100#1096#1077' '#1074#1089#1077#1075#1086' ' +
      #1085#1088#1072#1074#1080#1090#1089#1103'.'
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 122
    Height = 22
    Caption = #1058#1077#1089#1090': '#1051#1102#1096#1077#1088#1072
  end
  object Label3: TLabel
    Left = 8
    Top = 569
    Width = 121
    Height = 22
    Caption = #1058#1077#1089#1090#1080#1088#1091#1077#1084#1099#1081':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 136
    Top = 569
    Width = 46
    Height = 22
    Caption = #1060#1048#1054
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button2: TButton
    Left = 728
    Top = 543
    Width = 219
    Height = 49
    Caption = #1050' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1084
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 848
    Top = 16
    Width = 99
    Height = 49
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object PageControl1: TPageControl
    Left = 104
    Top = 88
    Width = 689
    Height = 449
    ActivePage = TabSheet2
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label5: TLabel
        Left = 24
        Top = 16
        Width = 58
        Height = 22
        Caption = #1057#1080#1085#1080#1081
      end
      object Label6: TLabel
        Left = 184
        Top = 16
        Width = 76
        Height = 22
        Caption = #1047#1077#1083#1105#1085#1099#1081
      end
      object Label7: TLabel
        Left = 344
        Top = 16
        Width = 80
        Height = 22
        Caption = #1050#1088#1072#1089#1085#1099#1081
      end
      object Label8: TLabel
        Left = 504
        Top = 16
        Width = 74
        Height = 22
        Caption = #1046#1105#1083#1090#1099#1081
      end
      object Label9: TLabel
        Left = 24
        Top = 200
        Width = 113
        Height = 22
        Caption = #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
      end
      object Label10: TLabel
        Left = 184
        Top = 200
        Width = 111
        Height = 22
        Caption = #1050#1086#1088#1080#1095#1085#1077#1074#1099#1081
      end
      object Label11: TLabel
        Left = 344
        Top = 200
        Width = 70
        Height = 22
        Caption = #1063#1105#1088#1085#1099#1081
      end
      object Label12: TLabel
        Left = 504
        Top = 200
        Width = 59
        Height = 22
        Caption = #1057#1077#1088#1099#1081
      end
      object Panel9: TPanel
        Left = 24
        Top = 40
        Width = 145
        Height = 125
        Color = clBlue
        ParentBackground = False
        TabOrder = 0
        OnClick = Panel9Click
      end
      object Panel11: TPanel
        Left = 344
        Top = 40
        Width = 145
        Height = 125
        Color = clRed
        ParentBackground = False
        TabOrder = 1
        OnClick = Panel9Click
      end
      object Panel10: TPanel
        Left = 184
        Top = 40
        Width = 145
        Height = 125
        Color = clGreen
        ParentBackground = False
        TabOrder = 2
        OnClick = Panel9Click
      end
      object Panel12: TPanel
        Left = 504
        Top = 40
        Width = 145
        Height = 125
        Color = clYellow
        ParentBackground = False
        TabOrder = 3
        OnClick = Panel9Click
      end
      object Panel13: TPanel
        Left = 24
        Top = 224
        Width = 145
        Height = 125
        Color = clPurple
        ParentBackground = False
        TabOrder = 4
        OnClick = Panel9Click
      end
      object Panel14: TPanel
        Left = 184
        Top = 224
        Width = 145
        Height = 125
        Color = clOlive
        ParentBackground = False
        TabOrder = 5
        OnClick = Panel9Click
      end
      object Panel15: TPanel
        Left = 344
        Top = 224
        Width = 145
        Height = 125
        Color = clBackground
        ParentBackground = False
        TabOrder = 6
        OnClick = Panel9Click
      end
      object Panel16: TPanel
        Left = 504
        Top = 224
        Width = 145
        Height = 125
        Color = clGray
        ParentBackground = False
        TabOrder = 7
        OnClick = Panel9Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label13: TLabel
        Left = 24
        Top = 16
        Width = 113
        Height = 22
        Caption = #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
      end
      object Label14: TLabel
        Left = 184
        Top = 16
        Width = 80
        Height = 22
        Caption = #1050#1088#1072#1089#1085#1099#1081
      end
      object Label15: TLabel
        Left = 344
        Top = 16
        Width = 70
        Height = 22
        Caption = #1063#1105#1088#1085#1099#1081
      end
      object Label16: TLabel
        Left = 504
        Top = 16
        Width = 59
        Height = 22
        Caption = #1057#1077#1088#1099#1081
      end
      object Label17: TLabel
        Left = 24
        Top = 200
        Width = 58
        Height = 22
        Caption = #1057#1080#1085#1080#1081
      end
      object Label18: TLabel
        Left = 184
        Top = 200
        Width = 76
        Height = 22
        Caption = #1047#1077#1083#1105#1085#1099#1081
      end
      object Label19: TLabel
        Left = 344
        Top = 200
        Width = 74
        Height = 22
        Caption = #1046#1105#1083#1090#1099#1081
      end
      object Label20: TLabel
        Left = 504
        Top = 200
        Width = 111
        Height = 22
        Caption = #1050#1086#1088#1080#1095#1085#1077#1074#1099#1081
      end
      object Panel2: TPanel
        Left = 184
        Top = 224
        Width = 145
        Height = 125
        Color = clGreen
        ParentBackground = False
        TabOrder = 0
        OnClick = Panel5Click
      end
      object Panel3: TPanel
        Left = 184
        Top = 40
        Width = 145
        Height = 125
        Color = clRed
        ParentBackground = False
        TabOrder = 1
        OnClick = Panel5Click
      end
      object Panel4: TPanel
        Left = 344
        Top = 224
        Width = 145
        Height = 125
        Color = clYellow
        ParentBackground = False
        TabOrder = 2
        OnClick = Panel5Click
      end
      object Panel5: TPanel
        Left = 24
        Top = 40
        Width = 145
        Height = 125
        Color = clPurple
        ParentBackground = False
        TabOrder = 3
        OnClick = Panel5Click
      end
      object Panel6: TPanel
        Left = 504
        Top = 224
        Width = 145
        Height = 125
        Color = clOlive
        ParentBackground = False
        TabOrder = 4
        OnClick = Panel5Click
      end
      object Panel7: TPanel
        Left = 335
        Top = 44
        Width = 145
        Height = 125
        Color = clBlack
        ParentBackground = False
        TabOrder = 5
        OnClick = Panel5Click
      end
      object Panel8: TPanel
        Left = 504
        Top = 40
        Width = 145
        Height = 125
        Color = clGray
        ParentBackground = False
        TabOrder = 6
        OnClick = Panel5Click
      end
      object Panel1: TPanel
        Left = 24
        Top = 224
        Width = 145
        Height = 129
        Color = clBlue
        ParentBackground = False
        TabOrder = 7
        OnClick = Panel5Click
      end
    end
  end
end
