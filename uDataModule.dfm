object dmDataModule: TdmDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 448
  Width = 799
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://myprojects.h1n.ru/lkvdent/api/public'
    Params = <>
    HandleRedirects = True
    Left = 32
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 'tree'
    Response = RESTResponse1
    OnAfterExecute = RESTRequest1AfterExecute
    SynchronizedEvents = False
    Left = 32
    Top = 56
  end
  object RESTResponse1: TRESTResponse
    Left = 32
    Top = 104
  end
  object imagesButton: TImageList
    Left = 30
    Top = 152
    Bitmap = {
      494C0101010008006C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006464B8006464B800000000000000000000000000000000006464B8006464
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      B8009898EE009898EE006464B80000000000000000006464B8009898EE009898
      EE006464B8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      B8006060E3006060E3009C9CF1006464B8006464B8009C9CF1006060E3006060
      E3006464B8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006464B8006666E8006666E800A1A1F300A1A1F3006666E8006666E8006464
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006464B8006D6DED006D6DED006D6DED006D6DED006464B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006464B8007373F3007373F3007373F3007373F3006464B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006464B800B0B0FB007979F8007979F8007979F8007979F800B0B0FB006464
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      B800B3B3FD007E7EFC007E7EFC006464B8006464B8007E7EFC007E7EFC00B3B3
      FD006464B8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      B8008181FF008181FF006464B80000000000000000006464B8008181FF008181
      FF006464B8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006464B8006464B800000000000000000000000000000000006464B8006464
      B800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000F3CF000000000000E187000000000000E007000000000000
      F00F000000000000F81F000000000000F81F000000000000F00F000000000000
      E007000000000000E187000000000000F3CF000000000000FFFF000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object frxPatientInfo: TfrxUserDataSet
    UserName = 'frxPatientInfo'
    Fields.Strings = (
      'fullname'
      'birthday'
      'sex'
      'address'
      'proff')
    OnGetValue = frxPatientInfoGetValue
    Left = 368
    Top = 8
  end
  object frxPatientCard: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43664.428399351900000000
    ReportOptions.LastChange = 43681.735708148100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 8
    Datasets = <
      item
        DataSet = frxDBCard
        DataSetName = 'frxDBCard'
      end
      item
        DataSet = frxDBCardDetails
        DataSetName = 'frxDBCardDetails'
      end
      item
        DataSet = frxDBCardTitle
        DataSetName = 'frxDBCardTitle'
      end
      item
        DataSet = frxPatientInfo
        DataSetName = 'frxPatientInfo'
      end>
    Variables = <>
    Style = <
      item
        Name = 'TimesNewRoman-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 95.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 510.236550000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxPatientInfo
        DataSetName = 'frxPatientInfo'
        RowCount = 1
        object Memo1: TfrxMemoView
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1058#1077#1075#1110', '#1072#1090#1099', '#1241#1082#1077#1089#1110#1085#1110#1187' '#1072#1090#1099'  ('#1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086'):')
          ParentFont = False
        end
        object frxPatientInfofullname: TfrxMemoView
          Left = 291.023810000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          DataField = 'fullname'
          DataSet = frxPatientInfo
          DataSetName = 'frxPatientInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPatientInfo."fullname"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897649999999940000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1058#1091#1171#1072#1085' '#1082#1199#1085#1110' ('#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103'):')
          ParentFont = False
        end
        object frxPatientInfobirthday: TfrxMemoView
          Left = 166.299320000000000000
          Top = 18.897649999999940000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'birthday'
          DataSet = frxPatientInfo
          DataSetName = 'frxPatientInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPatientInfo."birthday"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000050000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1046#1099#1085#1099#1089#1099' ('#1077', '#1241') ('#1055#1086#1083' ('#1084', '#1078')):')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 166.299320000000000000
          Top = 37.795300000000050000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'sex'
          DataSet = frxPatientInfo
          DataSetName = 'frxPatientInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPatientInfo."sex"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Top = 75.590600000000280000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1241#1089#1110#1073#1110' ('#1055#1088#1086#1092#1077#1089#1089#1080#1103'):')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object Memo6: TfrxMemoView
          Left = 124.724490000000000000
          Top = 56.692950000000170000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'address'
          DataSet = frxPatientInfo
          DataSetName = 'frxPatientInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPatientInfo."address"]')
          ParentFont = False
          Style = 'TimesNewRoman-10'
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Top = 56.692950000000170000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1052#1077#1082#1077#1085#1078#1072#1081#1099' ('#1072#1076#1088#1077#1089'):')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object Memo8: TfrxMemoView
          Left = 124.724490000000000000
          Top = 75.590600000000280000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'proff'
          DataSet = frxPatientInfo
          DataSetName = 'frxPatientInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPatientInfo."proff"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 283.464750000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 415.748300000000000000
          Top = 60.472480000000000000
          Width = 298.582870000000000000
          Height = 83.149660000000000000
          GroupIndex = 1
        end
        object Memo13: TfrxMemoView
          Left = 419.527830000000000000
          Top = 18.897650000000000000
          Width = 287.244280000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1200#1046#1046' '#1073#1086#1081#1099#1085#1096#1072' '#1201#1081#1099#1084' '#1082#1086#1076#1099' '
            #1050#1086#1076' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1087#1086' '#1054#1050#1055#1054'__________')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object Memo14: TfrxMemoView
          Left = 419.527830000000000000
          Top = 60.472480000000000000
          Width = 287.244280000000000000
          Height = 79.370130000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1178#1072#1079#1072#1179#1089#1090#1072#1085' '#1056#1077#1089#1087#1091#1073#1083#1080#1082#1072#1089#1099' '
            #1044#1077#1085#1089#1072#1091#1083#1099#1179' '#1089#1072#1179#1090#1072#1091' '#1084#1080#1085#1080#1089#1090#1088#1110#1085#1110#1187' '#1084'.'#1072'. 2010 '#1078#1099#1083#1171#1099
            #171'23'#187' '#1179#1072#1088#1072#1096#1072#1076#1072#1171#1099' '#8470' 907 '#1073#1201#1081#1088#1099#1171#1099#1084#1077#1085' '#1073#1077#1082#1110#1090#1110#1083#1075#1077#1085' '
            #8470' 043/'#1077' '#1085#1099#1089#1072#1085#1076#1099
            #1084#1077#1076#1080#1094#1080#1085#1072#1083#1099#1179' '#1179#1201#1078#1072#1090#1090#1072#1084#1072)
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object Memo15: TfrxMemoView
          Left = 419.527830000000000000
          Top = 147.401670000000000000
          Width = 287.244280000000000000
          Height = 79.370130000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1052#1077#1076#1080#1094#1080#1085#1089#1082#1072#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1103
            #1060#1086#1088#1084#1072' '#8470'043/'#1091
            
              #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1087#1088#1080#1082#1072#1079#1086#1084' '#1080'.'#1086'. '#1052#1080#1085#1080#1089#1090#1088#1072' '#1079#1076#1088#1072#1074#1086#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1056#1077#1089#1087#1091#1073#1083#1080#1082#1080' '#1050#1072#1079 +
              #1072#1093#1089#1090#1072#1085'  '
            #171'23'#187' '#1085#1086#1103#1073#1088#1103' 2010 '#1075#1086#1076#1072' '#8470'907')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Top = 60.472480000000000000
          Width = 253.228510000000000000
          Height = 83.149660000000000000
          GroupIndex = 1
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 241.889920000000000000
          Height = 75.590600000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1178#1072#1079#1072#1179#1089#1090#1072#1085' '#1056#1077#1089#1087#1091#1073#1083#1080#1082#1072#1089#1099' '
            #1044#1077#1085#1089#1072#1091#1083#1099#1179' '#1089#1072#1179#1090#1072#1091' '#1084#1080#1085#1080#1089#1090#1088#1083#1110#1075#1110
            #1052#1080#1085#1080#1089#1090#1077#1088#1089#1090#1074#1086' '#1079#1076#1088#1072#1074#1086#1086#1093#1088#1072#1085#1077#1085#1080#1103
            #1056#1077#1089#1087#1091#1073#1083#1080#1082#1080' '#1050#1072#1079#1072#1093#1089#1090#1072#1085' ')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object Shape2: TfrxShapeView
          Top = 143.622140000000000000
          Width = 253.228510000000000000
          Height = 86.929190000000000000
          GroupIndex = 1
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 147.401670000000000000
          Width = 241.889920000000000000
          Height = 37.795300000000000000
          GroupIndex = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1200#1081#1099#1084#1085#1099#1187' '#1072#1090#1072#1091#1099
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080)
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 41.574830000000000000
          GroupIndex = 1
        end
        object Shape5: TfrxShapeView
          Left = 415.748300000000000000
          Top = 143.622140000000000000
          Width = 298.582870000000000000
          Height = 86.929190000000000000
          GroupIndex = 1
        end
        object Shape6: TfrxShapeView
          Left = 253.228510000000000000
          Top = 143.622140000000000000
          Width = 162.519790000000000000
          Height = 86.929190000000000000
          GroupIndex = 1
        end
        object Shape7: TfrxShapeView
          Left = 253.228510000000000000
          Top = 60.472480000000000000
          Width = 162.519790000000000000
          Height = 83.149660000000000000
          GroupIndex = 1
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1058#1054#1052#1040#1058#1054#1051#1054#1043#1048#1071#1051#1067#1178' '#1053#1040#1059#1178#1040#1057#1058#1067#1186' '#1052#1045#1044#1048#1062#1048#1053#1040#1051#1067#1178' '#1050#1040#1056#1058#1040#1057#1067
            #1052#1045#1044#1048#1062#1048#1053#1057#1050#1040#1071' '#1050#1040#1056#1058#1040' '#1057#1058#1054#1052#1040#1058#1054#1051#1054#1043#1048#1063#1045#1057#1050#1054#1043#1054' '#1041#1054#1051#1068#1053#1054#1043#1054
            #8470' _________________ 20______ '#1078#1099#1083#1099' ('#1075#1086#1076')')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 676.535870000000000000
        Width = 718.110700000000000000
        DataSet = frxDBCardTitle
        DataSetName = 'frxDBCardTitle'
        RowCount = 0
        Stretched = True
        object frxDBCardTitlecontent: TfrxMemoView
          Left = 18.897650000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'content'
          DataSet = frxDBCardTitle
          DataSetName = 'frxDBCardTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCardTitle."content"]')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 634.961040000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBCardTitle."subroot_id"'
        object frxDBCardTitlesubroot: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          DataField = 'subroot'
          DataSet = frxDBCardTitle
          DataSetName = 'frxDBCardTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCardTitle."subroot"]')
          ParentFont = False
          Style = 'TimesNewRoman-10'
          WordWrap = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBCard
        DataSetName = 'frxDBCard'
        RowCount = 0
        object Memo19: TfrxMemoView
          Left = 117.165430000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'created'
          DataSet = frxDBCard
          DataSetName = 'frxDBCard'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCard."created"]')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object frxCardListcardlistEmployee: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'name'
          DataSet = frxDBCard
          DataSetName = 'frxDBCard'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCard."name"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1072#1090#1072'/'#1074#1088#1077#1084#1103' '#1087#1088#1080#1077#1084#1072':')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object Memo10: TfrxMemoView
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1088#1072#1095':')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBCardDetails
        DataSetName = 'frxDBCardDetails'
        RowCount = 0
        Stretched = True
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 71.811070000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'content'
          DataSet = frxDBCardDetails
          DataSetName = 'frxDBCardDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCardDetails."content"]')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
        object frxDBDataset2tooth: TfrxMemoView
          Align = baLeft
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'tooth'
          DataSet = frxDBCardDetails
          DataSetName = 'frxDBCardDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBCardDetails."tooth"]')
          ParentFont = False
          Style = 'TimesNewRoman-10'
          WordWrap = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBCardDetails."root"'
        object frxDBDataset2root: TfrxMemoView
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'root'
          DataSet = frxDBCardDetails
          DataSetName = 'frxDBCardDetails'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCardDetails."root"]')
          ParentFont = False
          Style = 'TimesNewRoman-10'
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object LocalDB: TFDConnection
    Params.Strings = (
      'StringFormat=Unicode'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = LocalDBAfterConnect
    BeforeConnect = LocalDBBeforeConnect
    Left = 128
    Top = 8
  end
  object localDropTableCard: TFDQuery
    Connection = LocalDB
    SQL.Strings = (
      'DROP TABLE IF EXISTS [local_CardDetails];'
      'DROP TABLE IF EXISTS [local_Card];'
      'DROP TABLE IF EXISTS [local_CardTitle];')
    Left = 128
    Top = 56
  end
  object localCreateTableCard: TFDQuery
    Connection = LocalDB
    SQL.Strings = (
      'CREATE TABLE [local_Card]('
      '  [id] INTEGER PRIMARY KEY, '
      '  [name] VARCHAR, '
      '  [created] DATETIME);'
      ''
      'CREATE TABLE [local_CardDetails]('
      '  [id] INTEGER PRIMARY KEY, '
      
        '  [card_id] INTEGER REFERENCES [local_Card]([id]) ON DELETE SET ' +
        'NULL ON UPDATE SET NULL,'
      '  [tooth] VARCHAR(255), '
      '  [content] VARCHAR, '
      '  [root] VARCHAR);'
      ''
      'CREATE TABLE [local_CardTitle]('
      '  [id] INTEGER PRIMARY KEY, '
      '  [content] VARCHAR, '
      '  [subroot_id] INTEGER, '
      '  [subroot] VARCHAR(255));'
      ''
      
        'CREATE INDEX [index_carddetails_card_id] ON [local_CardDetails](' +
        '[card_id]);'
      ''
      'CREATE INDEX [index_card_id] ON [local_Card]([id]);')
    Left = 128
    Top = 104
  end
  object localExecSQL: TFDQuery
    Connection = LocalDB
    Left = 128
    Top = 152
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 8
  end
  object localCard: TFDQuery
    IndexFieldNames = 'id'
    Connection = LocalDB
    SQL.Strings = (
      'select id, name, created from local_Card')
    Left = 128
    Top = 200
    object localCardid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object localCardname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 32767
    end
    object localCardcreated: TDateTimeField
      FieldName = 'created'
      Origin = 'created'
    end
  end
  object localCardDetails: TFDQuery
    IndexFieldNames = 'card_id'
    MasterSource = dsCard
    MasterFields = 'id'
    Connection = LocalDB
    SQL.Strings = (
      'select * from local_CardDetails')
    Left = 128
    Top = 248
    object localCardDetailsid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object localCardDetailscard_id: TIntegerField
      FieldName = 'card_id'
      Origin = 'card_id'
    end
    object localCardDetailstooth: TWideStringField
      FieldName = 'tooth'
      Origin = 'tooth'
      Size = 255
    end
    object localCardDetailscontent: TWideStringField
      FieldName = 'content'
      Origin = 'content'
      Size = 32767
    end
    object localCardDetailsroot: TWideStringField
      FieldName = 'root'
      Origin = 'root'
      Size = 32767
    end
  end
  object frxDBCard: TfrxDBDataset
    UserName = 'frxDBCard'
    CloseDataSource = False
    DataSet = localCard
    BCDToCurrency = False
    Left = 368
    Top = 56
  end
  object frxDBCardDetails: TfrxDBDataset
    UserName = 'frxDBCardDetails'
    CloseDataSource = False
    DataSet = localCardDetails
    BCDToCurrency = False
    Left = 368
    Top = 104
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43677.146567141200000000
    ReportOptions.LastChange = 43677.146567141200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 240
    Datasets = <
      item
        DataSet = frxDBCardTitle
        DataSetName = 'frxDBCardTitle'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        DataSet = frxDBCardTitle
        DataSetName = 'frxDBCardTitle'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'content'
          DataSet = frxDBCardTitle
          DataSetName = 'frxDBCardTitle'
          Memo.UTF8W = (
            '[frxDBCardTitle."content"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBCardTitle."subroot_id"'
        object frxDBCardTitlesubroot: TfrxMemoView
          Left = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'subroot'
          DataSet = frxDBCardTitle
          DataSetName = 'frxDBCardTitle'
          Memo.UTF8W = (
            '[frxDBCardTitle."subroot"]')
        end
      end
    end
  end
  object dsCard: TDataSource
    DataSet = localCard
    Left = 32
    Top = 248
  end
  object localCardTitle: TFDQuery
    Connection = LocalDB
    SQL.Strings = (
      'select * from local_CardTitle')
    Left = 128
    Top = 296
    object localCardTitleid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object localCardTitlecontent: TWideStringField
      FieldName = 'content'
      Origin = 'content'
      Size = 32767
    end
    object localCardTitlesubroot_id: TIntegerField
      FieldName = 'subroot_id'
      Origin = 'subroot_id'
    end
    object localCardTitlesubroot: TWideStringField
      FieldName = 'subroot'
      Origin = 'subroot'
      Size = 255
    end
  end
  object frxDBCardTitle: TfrxDBDataset
    UserName = 'frxDBCardTitle'
    CloseDataSource = False
    DataSet = localCardTitle
    BCDToCurrency = False
    Left = 368
    Top = 152
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [eModify, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 536
    Top = 56
  end
  object localCreateTableTree: TFDQuery
    Connection = LocalDB
    SQL.Strings = (
      'CREATE TABLE [local_Tree]('
      '  [id] INTEGER PRIMARY KEY AUTOINCREMENT, '
      '  [update_id] INTEGER, '
      '  [parent_id] INTEGER, '
      '  [content] VARCHAR, '
      '  [is_init_exam] TINYINT(1) NOT NULL DEFAULT 0, '
      '  [is_enable] TINYINT(1) NOT NULL DEFAULT 1, '
      '  [metod] VARCHAR(4) NOT NULL);')
    Left = 256
    Top = 104
  end
  object localDropTableTree: TFDQuery
    Connection = LocalDB
    SQL.Strings = (
      'DROP TABLE IF EXISTS [local_Tree];')
    Left = 256
    Top = 56
  end
  object localTree: TFDQuery
    Connection = LocalDB
    SQL.Strings = (
      'select * from local_Tree')
    Left = 256
    Top = 200
    object localTreeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object localTreeupdate_id: TIntegerField
      FieldName = 'update_id'
      Origin = 'update_id'
    end
    object localTreeparent_id: TIntegerField
      FieldName = 'parent_id'
      Origin = 'parent_id'
    end
    object localTreecontent: TWideStringField
      FieldName = 'content'
      Origin = 'content'
      Size = 32767
    end
    object localTreeis_init_exam: TShortintField
      FieldName = 'is_init_exam'
      Origin = 'is_init_exam'
      Required = True
    end
    object localTreeis_enable: TShortintField
      FieldName = 'is_enable'
      Origin = 'is_enable'
      Required = True
    end
    object localTreemetod: TWideStringField
      FieldName = 'metod'
      Origin = 'metod'
      Required = True
      Size = 4
    end
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 'tree'
    Response = RESTResponse1
    OnAfterExecute = RESTRequest1AfterExecute
    SynchronizedEvents = False
    Left = 32
    Top = 312
  end
end
