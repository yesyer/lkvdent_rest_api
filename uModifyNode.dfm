object fmModifyData: TfmModifyData
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1091#1079#1083#1072
  ClientHeight = 146
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object labelText: TLabel
    Left = 8
    Top = 13
    Width = 76
    Height = 13
    Caption = #1058#1077#1082#1089#1090' '#1096#1072#1073#1083#1086#1085#1072
  end
  object editField: TEdit
    Left = 8
    Top = 32
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object checkInitExam: TCheckBox
    Left = 8
    Top = 82
    Width = 217
    Height = 17
    Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1074' '#1055#1077#1088#1074#1080#1095#1085#1086#1084' '#1086#1089#1084#1086#1090#1088#1077
    TabOrder = 1
  end
  object checkEnable: TCheckBox
    Left = 8
    Top = 59
    Width = 217
    Height = 17
    Caption = #1040#1082#1090#1080#1074#1077#1085'/'#1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1100#1089#1103
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 411
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 3
    ExplicitTop = 119
    object buttonOk: TButton
      Left = 245
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object buttonCancel: TButton
      Left = 326
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
end
