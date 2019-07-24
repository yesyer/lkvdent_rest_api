object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = '0'
  ClientHeight = 503
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object plMainLeft: TPanel
    Left = 0
    Top = 0
    Width = 70
    Height = 484
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'plMainLeft'
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      70
      484)
    object buttonSettings: TAdvGlassButton
      Left = 4
      Top = 336
      Width = 60
      Height = 60
      Anchors = [akLeft, akBottom]
      BackColor = clWhite
      Caption = 'Settings'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clBtnFace
      GlowColor = 16760205
      InnerBorderColor = clGrayText
      OuterBorderColor = clBtnShadow
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 0
      Version = '1.3.0.2'
      OnClick = buttonSettingsClick
    end
    object buttonPatient: TAdvGlassButton
      Left = 4
      Top = 35
      Width = 60
      Height = 60
      BackColor = clWhite
      Caption = 'Patient'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clBtnFace
      GlowColor = 16760205
      InnerBorderColor = clGrayText
      OuterBorderColor = clBtnShadow
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 1
      Version = '1.3.0.2'
      OnClick = buttonPatientClick
    end
    object buttonClose: TAdvGlassButton
      Left = 4
      Top = 402
      Width = 60
      Height = 60
      Anchors = [akLeft, akBottom]
      BackColor = clWhite
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clBtnFace
      GlowColor = 16760205
      InnerBorderColor = clGrayText
      OuterBorderColor = clBtnShadow
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 2
      Version = '1.3.0.2'
      OnClick = buttonCloseClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 484
    Width = 803
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object plMainClient: TPanel
    Left = 70
    Top = 0
    Width = 733
    Height = 484
    Align = alClient
    BevelOuter = bvNone
    Caption = 'plMainClient'
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    object plMainTop: TPanel
      Left = 0
      Top = 0
      Width = 733
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Caption = 'plMainTop'
      Color = clBtnShadow
      ParentBackground = False
      TabOrder = 0
      OnClick = plMainTopClick
    end
    object pageMain: TAdvPageControl
      Left = 0
      Top = 40
      Width = 733
      Height = 444
      ActivePage = tabApplication
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      Align = alClient
      DoubleBuffered = True
      TabBackGroundColor = clBtnFace
      TabMargin.RightMargin = 0
      TabOverlap = 0
      TabSplitLine = True
      Version = '2.0.0.10'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 1
      TabPosition = tpBottom
      object tabApplication: TAdvTabSheet
        Caption = ' '#1055#1088#1086#1075#1088#1072#1084#1084#1072' '
        Color = clBtnFace
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object plSettings: TPanel
          Left = 0
          Top = 0
          Width = 725
          Height = 418
          Align = alClient
          BevelOuter = bvNone
          Caption = 'plSettings'
          Color = clTeal
          ParentBackground = False
          TabOrder = 1
          object pageSettings: TAdvPageControl
            Left = 0
            Top = 0
            Width = 725
            Height = 418
            ActivePage = tabTree
            ActiveFont.Charset = DEFAULT_CHARSET
            ActiveFont.Color = clWindowText
            ActiveFont.Height = -11
            ActiveFont.Name = 'Tahoma'
            ActiveFont.Style = []
            Align = alClient
            DoubleBuffered = True
            TabBackGroundColor = clBtnFace
            TabMargin.RightMargin = 0
            TabOverlap = 0
            TabStyle = tsDotNet
            Version = '2.0.0.10'
            PersistPagesState.Location = plRegistry
            PersistPagesState.Enabled = False
            TabOrder = 0
            object tabTree: TAdvTabSheet
              Caption = '  '#1064#1072#1073#1083#1086#1085#1099' '
              Color = clBtnFace
              ColorTo = clNone
              TabColor = clBtnFace
              TabColorTo = clNone
              OnShow = tabTreeShow
              object treeNodeRootSetting: TAdvTreeView
                Left = 0
                Top = 31
                Width = 265
                Height = 359
                Align = alLeft
                Color = clWhite
                TabOrder = 0
                TabStop = True
                Groups = <>
                GroupsAppearance.TopSize = 50.000000000000000000
                GroupsAppearance.BottomSize = 50.000000000000000000
                GroupsAppearance.TopFill.Kind = tvbkNone
                GroupsAppearance.BottomFill.Kind = tvbkNone
                GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
                GroupsAppearance.TopFont.Color = clWindowText
                GroupsAppearance.TopFont.Height = -11
                GroupsAppearance.TopFont.Name = 'Tahoma'
                GroupsAppearance.TopFont.Style = []
                GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
                GroupsAppearance.BottomFont.Color = clWindowText
                GroupsAppearance.BottomFont.Height = -11
                GroupsAppearance.BottomFont.Name = 'Tahoma'
                GroupsAppearance.BottomFont.Style = []
                GroupsAppearance.TopStroke.Color = 11119017
                GroupsAppearance.BottomStroke.Color = 11119017
                ColumnStroke.Color = clNone
                Columns = <
                  item
                    Name = 'Column0'
                    Text = #1043#1088#1091#1087#1087#1099' '#1096#1072#1073#1083#1086#1085#1086#1074
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end
                  item
                    Name = 'Column1'
                    Text = 'Column 1'
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end>
                Nodes = <
                  item
                    Values = <
                      item
                        Text = #1042#1077#1090#1082#1072
                      end>
                    Tag = 0
                    Nodes = <>
                  end
                  item
                    Values = <
                      item
                        Text = #1042#1077#1090#1082#1072' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103
                      end>
                    Tag = 0
                    Nodes = <>
                  end>
                ColumnsAppearance.TopSize = 25.000000000000000000
                ColumnsAppearance.BottomSize = 25.000000000000000000
                ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
                ColumnsAppearance.TopFont.Color = clWindowText
                ColumnsAppearance.TopFont.Height = -11
                ColumnsAppearance.TopFont.Name = 'Tahoma'
                ColumnsAppearance.TopFont.Style = []
                ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
                ColumnsAppearance.BottomFont.Color = clWindowText
                ColumnsAppearance.BottomFont.Height = -11
                ColumnsAppearance.BottomFont.Name = 'Tahoma'
                ColumnsAppearance.BottomFont.Style = []
                ColumnsAppearance.TopFill.Kind = tvbkNone
                ColumnsAppearance.BottomFill.Kind = tvbkNone
                ColumnsAppearance.TopStroke.Color = 11119017
                ColumnsAppearance.BottomStroke.Color = 11119017
                NodesAppearance.ExpandWidth = 15.000000000000000000
                NodesAppearance.ExpandHeight = 15.000000000000000000
                NodesAppearance.LevelIndent = 20.000000000000000000
                NodesAppearance.FixedHeight = 25.000000000000000000
                NodesAppearance.VariableMinimumHeight = 25.000000000000000000
                NodesAppearance.Fill.Color = clNone
                NodesAppearance.Stroke.Color = 11119017
                NodesAppearance.Stroke.Style = psClear
                NodesAppearance.ColumnStroke.Color = clNone
                NodesAppearance.LineStroke.Color = 11119017
                NodesAppearance.LineStroke.Style = psDot
                NodesAppearance.Font.Charset = DEFAULT_CHARSET
                NodesAppearance.Font.Color = clWindowText
                NodesAppearance.Font.Height = -11
                NodesAppearance.Font.Name = 'Tahoma'
                NodesAppearance.Font.Style = []
                NodesAppearance.FontColor = clWindowText
                NodesAppearance.SelectedFill.Color = 16297243
                NodesAppearance.SelectedStroke.Color = 11119017
                NodesAppearance.SelectedStroke.Style = psClear
                NodesAppearance.DisabledFill.Color = 11119017
                NodesAppearance.DisabledStroke.Color = 11119017
                NodesAppearance.DisabledStroke.Style = psClear
                NodesAppearance.ExtendedFill.Color = 16053492
                NodesAppearance.ExtendedStroke.Color = 11119017
                NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
                NodesAppearance.ExtendedFont.Color = clWindowText
                NodesAppearance.ExtendedFont.Height = -11
                NodesAppearance.ExtendedFont.Name = 'Tahoma'
                NodesAppearance.ExtendedFont.Style = []
                NodesAppearance.ExtendedSelectedFill.Color = 16297243
                NodesAppearance.ExtendedSelectedStroke.Color = 11119017
                NodesAppearance.ExtendedSelectedStroke.Style = psClear
                NodesAppearance.ExtendedDisabledFill.Color = 11119017
                NodesAppearance.ExtendedDisabledStroke.Color = 11119017
                NodesAppearance.ExtendedDisabledStroke.Style = psClear
                NodesAppearance.ExpandNodeIcon.Data = {
                  07544269746D6170C2010000424DC20100000000000036000000280000000B00
                  00000B00000001001800000000008C0100000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFF
                  FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A
                  FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                  FF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF4A4D4A4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFF7B7D7B0000007B7D7BFFFFFF
                  FFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                  7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                  00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B000000}
                NodesAppearance.CollapseNodeIcon.Data = {
                  07544269746D6170C2010000424DC20100000000000036000000280000000B00
                  00000B00000001001800000000008C0100000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFF4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                  7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                  00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B000000}
                NodesAppearance.ExpandNodeIconLarge.Data = {
                  07544269746D61700E060000424D0E0600000000000036000000280000001600
                  0000160000000100180000000000D80500000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                  4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A4A4D4A4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A
                  4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D
                  4A4A4D4AFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                  4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
                NodesAppearance.CollapseNodeIconLarge.Data = {
                  07544269746D61700E060000424D0E0600000000000036000000280000001600
                  0000160000000100180000000000D80500000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
                Version = '1.1.0.6'
                OnAfterSelectNode = treeNodeRootSettingAfterSelectNode
              end
              object treeNodeSetting: TAdvTreeView
                Left = 265
                Top = 31
                Width = 452
                Height = 359
                Align = alClient
                Color = clWhite
                TabOrder = 1
                TabStop = True
                OnMouseUp = treeNodeSettingMouseUp
                Groups = <>
                GroupsAppearance.TopSize = 50.000000000000000000
                GroupsAppearance.BottomSize = 50.000000000000000000
                GroupsAppearance.TopFill.Kind = tvbkNone
                GroupsAppearance.BottomFill.Kind = tvbkNone
                GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
                GroupsAppearance.TopFont.Color = clWindowText
                GroupsAppearance.TopFont.Height = -11
                GroupsAppearance.TopFont.Name = 'Tahoma'
                GroupsAppearance.TopFont.Style = []
                GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
                GroupsAppearance.BottomFont.Color = clWindowText
                GroupsAppearance.BottomFont.Height = -11
                GroupsAppearance.BottomFont.Name = 'Tahoma'
                GroupsAppearance.BottomFont.Style = []
                GroupsAppearance.TopStroke.Color = 11119017
                GroupsAppearance.BottomStroke.Color = 11119017
                ColumnStroke.Color = clNone
                Columns = <
                  item
                    Name = 'Column0'
                    Text = #1058#1077#1082#1089#1090' '#1096#1072#1073#1083#1086#1085#1072
                    WordWrapping = True
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end
                  item
                    Name = 'Column1'
                    Text = #1055#1077#1088#1074#1080#1095#1085#1099#1081' '#1086#1089#1084#1086#1090#1088
                    HorizontalTextAlign = tvtaCenter
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end
                  item
                    Name = 'Column2'
                    Text = #1040#1082#1090#1080#1074#1085#1099#1081
                    HorizontalTextAlign = tvtaCenter
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end
                  item
                    Name = 'Column3'
                    Text = 'Column 3'
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end
                  item
                    Name = 'Column4'
                    Text = 'Column 4'
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end
                  item
                    Name = 'Column5'
                    Text = 'Column 5'
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end
                  item
                    Name = 'Column6'
                    Text = 'Column 6'
                    Width = 100.000000000000000000
                    Fill.Color = clNone
                    Stroke.Color = 11119017
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    TopFill.Kind = tvbkNone
                    TopStroke.Color = 11119017
                    TopFont.Charset = DEFAULT_CHARSET
                    TopFont.Color = clWindowText
                    TopFont.Height = -11
                    TopFont.Name = 'Tahoma'
                    TopFont.Style = []
                    BottomFill.Kind = tvbkNone
                    BottomStroke.Color = 11119017
                    BottomFont.Charset = DEFAULT_CHARSET
                    BottomFont.Color = clWindowText
                    BottomFont.Height = -11
                    BottomFont.Name = 'Tahoma'
                    BottomFont.Style = []
                  end>
                Nodes = <
                  item
                    Values = <
                      item
                        Checked = True
                      end>
                    Tag = 0
                    Nodes = <>
                  end>
                ColumnsAppearance.StretchAll = False
                ColumnsAppearance.TopSize = 25.000000000000000000
                ColumnsAppearance.BottomSize = 25.000000000000000000
                ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
                ColumnsAppearance.TopFont.Color = clWindowText
                ColumnsAppearance.TopFont.Height = -11
                ColumnsAppearance.TopFont.Name = 'Tahoma'
                ColumnsAppearance.TopFont.Style = []
                ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
                ColumnsAppearance.BottomFont.Color = clWindowText
                ColumnsAppearance.BottomFont.Height = -11
                ColumnsAppearance.BottomFont.Name = 'Tahoma'
                ColumnsAppearance.BottomFont.Style = []
                ColumnsAppearance.TopFill.Kind = tvbkNone
                ColumnsAppearance.BottomFill.Kind = tvbkNone
                ColumnsAppearance.TopStroke.Color = 11119017
                ColumnsAppearance.BottomStroke.Color = 11119017
                NodesAppearance.ExpandWidth = 15.000000000000000000
                NodesAppearance.ExpandHeight = 15.000000000000000000
                NodesAppearance.LevelIndent = 20.000000000000000000
                NodesAppearance.FixedHeight = 25.000000000000000000
                NodesAppearance.VariableMinimumHeight = 25.000000000000000000
                NodesAppearance.Fill.Color = clNone
                NodesAppearance.Stroke.Color = 11119017
                NodesAppearance.Stroke.Style = psClear
                NodesAppearance.ColumnStroke.Color = clNone
                NodesAppearance.LineStroke.Color = 11119017
                NodesAppearance.LineStroke.Style = psDot
                NodesAppearance.Font.Charset = DEFAULT_CHARSET
                NodesAppearance.Font.Color = clWindowText
                NodesAppearance.Font.Height = -11
                NodesAppearance.Font.Name = 'Tahoma'
                NodesAppearance.Font.Style = []
                NodesAppearance.FontColor = clWindowText
                NodesAppearance.SelectedFill.Color = 16297243
                NodesAppearance.SelectedStroke.Color = 11119017
                NodesAppearance.SelectedStroke.Style = psClear
                NodesAppearance.DisabledFill.Color = 11119017
                NodesAppearance.DisabledStroke.Color = 11119017
                NodesAppearance.DisabledStroke.Style = psClear
                NodesAppearance.ExtendedFill.Color = 16053492
                NodesAppearance.ExtendedStroke.Color = 11119017
                NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
                NodesAppearance.ExtendedFont.Color = clWindowText
                NodesAppearance.ExtendedFont.Height = -11
                NodesAppearance.ExtendedFont.Name = 'Tahoma'
                NodesAppearance.ExtendedFont.Style = []
                NodesAppearance.ExtendedSelectedFill.Color = 16297243
                NodesAppearance.ExtendedSelectedStroke.Color = 11119017
                NodesAppearance.ExtendedSelectedStroke.Style = psClear
                NodesAppearance.ExtendedDisabledFill.Color = 11119017
                NodesAppearance.ExtendedDisabledStroke.Color = 11119017
                NodesAppearance.ExtendedDisabledStroke.Style = psClear
                NodesAppearance.ExpandNodeIcon.Data = {
                  07544269746D6170C2010000424DC20100000000000036000000280000000B00
                  00000B00000001001800000000008C0100000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFF
                  FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A
                  FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                  FF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF4A4D4A4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFF7B7D7B0000007B7D7BFFFFFF
                  FFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                  7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                  00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B000000}
                NodesAppearance.CollapseNodeIcon.Data = {
                  07544269746D6170C2010000424DC20100000000000036000000280000000B00
                  00000B00000001001800000000008C0100000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFF4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                  7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                  00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B000000}
                NodesAppearance.ExpandNodeIconLarge.Data = {
                  07544269746D61700E060000424D0E0600000000000036000000280000001600
                  0000160000000100180000000000D80500000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                  4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A4A4D4A4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A
                  4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D
                  4A4A4D4AFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                  4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
                NodesAppearance.CollapseNodeIconLarge.Data = {
                  07544269746D61700E060000424D0E0600000000000036000000280000001600
                  0000160000000100180000000000D80500000000000000000000000000000000
                  00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                  4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                  7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                  00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                  7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                  7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                  7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                  7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
                Version = '1.1.0.6'
                OnNodeClick = treeNodeSettingNodeClick
                OnNodeDblClick = treeNodeSettingNodeDblClick
              end
              object plTemplateTop: TPanel
                Left = 0
                Top = 0
                Width = 717
                Height = 31
                Align = alTop
                BevelOuter = bvNone
                Caption = 'plTemplateTop'
                ShowCaption = False
                TabOrder = 2
                object buttonNodeSave: TAdvGlassButton
                  Left = 174
                  Top = 2
                  Width = 80
                  Height = 25
                  BackColor = clWhite
                  Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
                  CornerRadius = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ForeColor = clBtnFace
                  GlowColor = 16760205
                  InnerBorderColor = clGrayText
                  OuterBorderColor = clBtnFace
                  ParentFont = False
                  ShineColor = clWhite
                  TabOrder = 0
                  Version = '1.3.0.2'
                  OnClick = buttonNodeSaveClick
                end
                object AdvGlassButton4: TAdvGlassButton
                  Left = 2
                  Top = 2
                  Width = 80
                  Height = 25
                  BackColor = clWhite
                  Caption = #1054#1073#1085#1086#1074#1080#1090#1100'...'
                  CornerRadius = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ForeColor = clBtnFace
                  GlowColor = 16760205
                  InnerBorderColor = clGrayText
                  OuterBorderColor = clBtnFace
                  ParentFont = False
                  ShineColor = clWhite
                  TabOrder = 1
                  Version = '1.3.0.2'
                end
                object buttonNodeCancel: TAdvGlassButton
                  Left = 260
                  Top = 2
                  Width = 80
                  Height = 25
                  BackColor = clWhite
                  Caption = #1054#1090#1084#1077#1085#1080#1090#1100
                  CornerRadius = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ForeColor = clBtnFace
                  GlowColor = 16760205
                  InnerBorderColor = clGrayText
                  OuterBorderColor = clBtnFace
                  ParentFont = False
                  ShineColor = clWhite
                  TabOrder = 2
                  Version = '1.3.0.2'
                  OnClick = buttonNodeCancelClick
                end
                object buttonNodeInsert: TAdvGlassButton
                  Left = 88
                  Top = 2
                  Width = 80
                  Height = 25
                  BackColor = clWhite
                  Caption = #1044#1086#1073#1072#1074#1080#1090#1100'...'
                  CornerRadius = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ForeColor = clBtnFace
                  GlowColor = 16760205
                  InnerBorderColor = clGrayText
                  OuterBorderColor = clBtnFace
                  ParentFont = False
                  ShineColor = clWhite
                  TabOrder = 3
                  Version = '1.3.0.2'
                  OnClick = buttonNodeInsertClick
                end
              end
            end
            object tabEmployee: TAdvTabSheet
              Caption = '  '#1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1086#1074' '
              Color = clBtnFace
              ColorTo = clNone
              ParentShowHint = False
              ShowHint = False
              TabColor = clBtnFace
              TabColorTo = clNone
              OnShow = tabEmployeeShow
              object gridEmployee: TAdvStringGrid
                Left = 0
                Top = 31
                Width = 717
                Height = 359
                Cursor = crDefault
                Align = alClient
                Ctl3D = True
                DrawingStyle = gdsClassic
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
                ParentCtl3D = False
                ScrollBars = ssBoth
                TabOrder = 0
                ActiveRowShow = True
                HoverRowCells = [hcNormal, hcSelected]
                OnDblClickCell = gridEmployeeDblClickCell
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = clWindowText
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ColumnHeaders.Strings = (
                  ''
                  #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
                  #1040#1082#1090#1080#1074#1085#1099#1081
                  #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103)
                ColumnSize.Location = clIniFile
                ControlLook.FixedGradientFrom = clBtnFace
                ControlLook.FixedGradientHoverFrom = 15000287
                ControlLook.FixedGradientHoverTo = 14406605
                ControlLook.FixedGradientHoverMirrorFrom = 14406605
                ControlLook.FixedGradientHoverMirrorTo = 13813180
                ControlLook.FixedGradientHoverBorder = 12033927
                ControlLook.FixedGradientDownFrom = 14991773
                ControlLook.FixedGradientDownTo = 14991773
                ControlLook.FixedGradientDownMirrorFrom = 14991773
                ControlLook.FixedGradientDownMirrorTo = 14991773
                ControlLook.FixedGradientDownBorder = 14991773
                ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownHeader.Font.Color = clWindowText
                ControlLook.DropDownHeader.Font.Height = -11
                ControlLook.DropDownHeader.Font.Name = 'Tahoma'
                ControlLook.DropDownHeader.Font.Style = []
                ControlLook.DropDownHeader.Visible = True
                ControlLook.DropDownHeader.Buttons = <>
                ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
                ControlLook.DropDownFooter.Font.Color = clWindowText
                ControlLook.DropDownFooter.Font.Height = -11
                ControlLook.DropDownFooter.Font.Name = 'Tahoma'
                ControlLook.DropDownFooter.Font.Style = []
                ControlLook.DropDownFooter.Visible = True
                ControlLook.DropDownFooter.Buttons = <>
                EnhRowColMove = False
                Filter = <>
                FilterDropDown.Font.Charset = DEFAULT_CHARSET
                FilterDropDown.Font.Color = clWindowText
                FilterDropDown.Font.Height = -11
                FilterDropDown.Font.Name = 'Tahoma'
                FilterDropDown.Font.Style = []
                FilterDropDown.TextChecked = 'Checked'
                FilterDropDown.TextUnChecked = 'Unchecked'
                FilterDropDownClear = '(All)'
                FilterEdit.TypeNames.Strings = (
                  'Starts with'
                  'Ends with'
                  'Contains'
                  'Not contains'
                  'Equal'
                  'Not equal'
                  'Larger than'
                  'Smaller than'
                  'Clear')
                FixedColWidth = 22
                FixedRowHeight = 22
                FixedFont.Charset = DEFAULT_CHARSET
                FixedFont.Color = clBlack
                FixedFont.Height = -11
                FixedFont.Name = 'Tahoma'
                FixedFont.Style = []
                FloatFormat = '%.2f'
                HoverButtons.Buttons = <>
                HoverButtons.Position = hbLeftFromColumnLeft
                HTMLSettings.ImageFolder = 'images'
                HTMLSettings.ImageBaseName = 'img'
                Look = glCustom
                PrintSettings.DateFormat = 'dd/mm/yyyy'
                PrintSettings.Font.Charset = DEFAULT_CHARSET
                PrintSettings.Font.Color = clWindowText
                PrintSettings.Font.Height = -11
                PrintSettings.Font.Name = 'Tahoma'
                PrintSettings.Font.Style = []
                PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
                PrintSettings.FixedFont.Color = clWindowText
                PrintSettings.FixedFont.Height = -11
                PrintSettings.FixedFont.Name = 'Tahoma'
                PrintSettings.FixedFont.Style = []
                PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
                PrintSettings.HeaderFont.Color = clWindowText
                PrintSettings.HeaderFont.Height = -11
                PrintSettings.HeaderFont.Name = 'Tahoma'
                PrintSettings.HeaderFont.Style = []
                PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
                PrintSettings.FooterFont.Color = clWindowText
                PrintSettings.FooterFont.Height = -11
                PrintSettings.FooterFont.Name = 'Tahoma'
                PrintSettings.FooterFont.Style = []
                PrintSettings.PageNumSep = '/'
                ScrollProportional = True
                ScrollSynch = True
                SearchFooter.Color = clBtnFace
                SearchFooter.FindNextCaption = 'Find &next'
                SearchFooter.FindPrevCaption = 'Find &previous'
                SearchFooter.Font.Charset = DEFAULT_CHARSET
                SearchFooter.Font.Color = clWindowText
                SearchFooter.Font.Height = -11
                SearchFooter.Font.Name = 'Tahoma'
                SearchFooter.Font.Style = []
                SearchFooter.HighLightCaption = 'Highlight'
                SearchFooter.HintClose = 'Close'
                SearchFooter.HintFindNext = 'Find next occurrence'
                SearchFooter.HintFindPrev = 'Find previous occurrence'
                SearchFooter.HintHighlight = 'Highlight occurrences'
                SearchFooter.MatchCaseCaption = 'Match case'
                SelectionColor = clInfoBk
                SelectionTextColor = clBtnText
                ShowSelection = False
                SortSettings.DefaultFormat = ssAutomatic
                Version = '8.1.3.0'
                ColWidths = (
                  22
                  197
                  90
                  121
                  64)
              end
              object plEmployeeTop: TPanel
                Left = 0
                Top = 0
                Width = 717
                Height = 31
                Align = alTop
                BevelOuter = bvNone
                Caption = 'plEmployeeTop'
                TabOrder = 1
                object buttonEmployeeModify: TAdvGlassButton
                  Left = 88
                  Top = 2
                  Width = 80
                  Height = 25
                  BackColor = clWhite
                  Caption = 'TODO '#1048#1079#1084#1077#1085#1080#1090#1100'...'
                  CornerRadius = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ForeColor = clBtnFace
                  GlowColor = 16760205
                  InnerBorderColor = clGrayText
                  OuterBorderColor = clBtnFace
                  ParentFont = False
                  ShineColor = clWhite
                  TabOrder = 0
                  Version = '1.3.0.2'
                  OnClick = buttonEmployeeModifyClick
                end
                object buttonEmployeeInsert: TAdvGlassButton
                  Left = 2
                  Top = 2
                  Width = 80
                  Height = 25
                  BackColor = clWhite
                  Caption = 'TODO '#1044#1086#1073#1072#1074#1080#1090#1100'...'
                  CornerRadius = 2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ForeColor = clBtnFace
                  GlowColor = 16760205
                  InnerBorderColor = clGrayText
                  OuterBorderColor = clBtnFace
                  ParentFont = False
                  ShineColor = clWhite
                  TabOrder = 1
                  Version = '1.3.0.2'
                  OnClick = buttonEmployeeInsertClick
                end
              end
            end
          end
        end
        object plPatientCardModify: TPanel
          Left = 0
          Top = 0
          Width = 725
          Height = 418
          Align = alClient
          BevelOuter = bvNone
          Caption = 'plPatientCardModify'
          Color = clOlive
          ParentBackground = False
          TabOrder = 3
          object Splitter1: TSplitter
            Left = 0
            Top = 238
            Width = 725
            Height = 3
            Cursor = crVSplit
            Align = alBottom
            Color = clBtnFace
            ParentColor = False
            ResizeStyle = rsUpdate
            ExplicitLeft = 2
            ExplicitTop = 257
          end
          object gridCard: TAdvStringGrid
            Left = 0
            Top = 241
            Width = 725
            Height = 177
            Cursor = crDefault
            Align = alBottom
            ColCount = 7
            Ctl3D = True
            DrawingStyle = gdsClassic
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
            ActiveRowShow = True
            HoverRowCells = [hcNormal, hcSelected]
            OnDblClickCell = gridCardDblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnSize.Location = clIniFile
            ControlLook.FixedGradientFrom = clBtnFace
            ControlLook.FixedGradientHoverFrom = 15000287
            ControlLook.FixedGradientHoverTo = 14406605
            ControlLook.FixedGradientHoverMirrorFrom = 14406605
            ControlLook.FixedGradientHoverMirrorTo = 13813180
            ControlLook.FixedGradientHoverBorder = 12033927
            ControlLook.FixedGradientDownFrom = 14991773
            ControlLook.FixedGradientDownTo = 14991773
            ControlLook.FixedGradientDownMirrorFrom = 14991773
            ControlLook.FixedGradientDownMirrorTo = 14991773
            ControlLook.FixedGradientDownBorder = 14991773
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 22
            FixedRowHeight = 22
            FixedColAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            RowIndicator.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA
              945DF2D2AFBA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DBA945DBA945DBA945DBA945DE8A962F4D4B1BA945DFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF6D8B4F6D8B4F6D8B4F6
              D8B4EDB069EDB069F6D8B4BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DF2B870F2B870F2B870F2B870F2B870F2B870F2B870F9DCB8BA94
              5DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF7C077F7C077F7C077F7
              C077F7C077F7C077F7C077BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DBA945DBA945DBA945DBA945DFCC67DFCC67DBA945DFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA
              945DFFCB81BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
            ScrollProportional = True
            ScrollSynch = True
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clInfoBk
            SelectionTextColor = clBtnText
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '8.1.3.0'
            ExplicitTop = 200
            ColWidths = (
              22
              171
              190
              135
              96
              64
              64)
          end
          object plCardModifyMainClient: TPanel
            Left = 0
            Top = 31
            Width = 725
            Height = 207
            Align = alClient
            BevelOuter = bvNone
            Caption = 'plCardModifyMainClient'
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            DesignSize = (
              725
              207)
            object treeNodeCard: TAdvTreeView
              Left = 265
              Top = 116
              Width = 460
              Height = 91
              Align = alClient
              Color = clWhite
              TabOrder = 0
              TabStop = True
              Groups = <>
              GroupsAppearance.TopSize = 50.000000000000000000
              GroupsAppearance.BottomSize = 50.000000000000000000
              GroupsAppearance.TopFill.Kind = tvbkNone
              GroupsAppearance.BottomFill.Kind = tvbkNone
              GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
              GroupsAppearance.TopFont.Color = clWindowText
              GroupsAppearance.TopFont.Height = -11
              GroupsAppearance.TopFont.Name = 'Tahoma'
              GroupsAppearance.TopFont.Style = []
              GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
              GroupsAppearance.BottomFont.Color = clWindowText
              GroupsAppearance.BottomFont.Height = -11
              GroupsAppearance.BottomFont.Name = 'Tahoma'
              GroupsAppearance.BottomFont.Style = []
              GroupsAppearance.TopStroke.Color = 11119017
              GroupsAppearance.BottomStroke.Color = 11119017
              ColumnStroke.Color = clNone
              Columns = <
                item
                  Name = 'Column0'
                  Text = #1058#1077#1082#1089#1090' '#1096#1072#1073#1083#1086#1085#1072
                  WordWrapping = True
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end
                item
                  Name = 'Column1'
                  Text = #1055#1077#1088#1074#1080#1095#1085#1099#1081' '#1086#1089#1084#1086#1090#1088
                  HorizontalTextAlign = tvtaCenter
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end
                item
                  Name = 'Column2'
                  Text = #1040#1082#1090#1080#1074#1085#1099#1081
                  HorizontalTextAlign = tvtaCenter
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end
                item
                  Name = 'Column3'
                  Text = 'Column 3'
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end
                item
                  Name = 'Column4'
                  Text = 'Column 4'
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end
                item
                  Name = 'Column5'
                  Text = 'Column 5'
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end
                item
                  Name = 'Column6'
                  Text = 'Column 6'
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end>
              Nodes = <
                item
                  Values = <
                    item
                      Checked = True
                    end>
                  Tag = 0
                  Nodes = <>
                end>
              ColumnsAppearance.StretchAll = False
              ColumnsAppearance.TopSize = 25.000000000000000000
              ColumnsAppearance.BottomSize = 25.000000000000000000
              ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
              ColumnsAppearance.TopFont.Color = clWindowText
              ColumnsAppearance.TopFont.Height = -11
              ColumnsAppearance.TopFont.Name = 'Tahoma'
              ColumnsAppearance.TopFont.Style = []
              ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
              ColumnsAppearance.BottomFont.Color = clWindowText
              ColumnsAppearance.BottomFont.Height = -11
              ColumnsAppearance.BottomFont.Name = 'Tahoma'
              ColumnsAppearance.BottomFont.Style = []
              ColumnsAppearance.TopFill.Kind = tvbkNone
              ColumnsAppearance.BottomFill.Kind = tvbkNone
              ColumnsAppearance.TopStroke.Color = 11119017
              ColumnsAppearance.BottomStroke.Color = 11119017
              NodesAppearance.ExpandWidth = 15.000000000000000000
              NodesAppearance.ExpandHeight = 15.000000000000000000
              NodesAppearance.LevelIndent = 20.000000000000000000
              NodesAppearance.FixedHeight = 25.000000000000000000
              NodesAppearance.VariableMinimumHeight = 25.000000000000000000
              NodesAppearance.Fill.Color = clNone
              NodesAppearance.Stroke.Color = 11119017
              NodesAppearance.Stroke.Style = psClear
              NodesAppearance.ColumnStroke.Color = clNone
              NodesAppearance.LineStroke.Color = 11119017
              NodesAppearance.LineStroke.Style = psDot
              NodesAppearance.Font.Charset = DEFAULT_CHARSET
              NodesAppearance.Font.Color = clWindowText
              NodesAppearance.Font.Height = -11
              NodesAppearance.Font.Name = 'Tahoma'
              NodesAppearance.Font.Style = []
              NodesAppearance.FontColor = clWindowText
              NodesAppearance.SelectedFill.Color = 16297243
              NodesAppearance.SelectedStroke.Color = 11119017
              NodesAppearance.SelectedStroke.Style = psClear
              NodesAppearance.DisabledFill.Color = 11119017
              NodesAppearance.DisabledStroke.Color = 11119017
              NodesAppearance.DisabledStroke.Style = psClear
              NodesAppearance.ExtendedFill.Color = 16053492
              NodesAppearance.ExtendedStroke.Color = 11119017
              NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
              NodesAppearance.ExtendedFont.Color = clWindowText
              NodesAppearance.ExtendedFont.Height = -11
              NodesAppearance.ExtendedFont.Name = 'Tahoma'
              NodesAppearance.ExtendedFont.Style = []
              NodesAppearance.ExtendedSelectedFill.Color = 16297243
              NodesAppearance.ExtendedSelectedStroke.Color = 11119017
              NodesAppearance.ExtendedSelectedStroke.Style = psClear
              NodesAppearance.ExtendedDisabledFill.Color = 11119017
              NodesAppearance.ExtendedDisabledStroke.Color = 11119017
              NodesAppearance.ExtendedDisabledStroke.Style = psClear
              NodesAppearance.ExpandNodeIcon.Data = {
                07544269746D6170C2010000424DC20100000000000036000000280000000B00
                00000B00000001001800000000008C0100000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFF
                FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A
                FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                FF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF4A4D4A4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFF7B7D7B0000007B7D7BFFFFFF
                FFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B000000}
              NodesAppearance.CollapseNodeIcon.Data = {
                07544269746D6170C2010000424DC20100000000000036000000280000000B00
                00000B00000001001800000000008C0100000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFF4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B000000}
              NodesAppearance.ExpandNodeIconLarge.Data = {
                07544269746D61700E060000424D0E0600000000000036000000280000001600
                0000160000000100180000000000D80500000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A4A4D4A4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A
                4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D
                4A4A4D4AFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
              NodesAppearance.CollapseNodeIconLarge.Data = {
                07544269746D61700E060000424D0E0600000000000036000000280000001600
                0000160000000100180000000000D80500000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
              Version = '1.1.0.6'
              OnNodeDblClick = treeNodeCardNodeDblClick
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 725
              Height = 116
              Align = alTop
              Caption = 'Panel5'
              ParentBackground = False
              ShowCaption = False
              TabOrder = 1
              object labelName: TLabel
                Left = 287
                Top = 30
                Width = 125
                Height = 25
                Caption = 'labelName'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                Font.Quality = fqClearType
                ParentFont = False
              end
              object Label13: TLabel
                Left = 17
                Top = 9
                Width = 60
                Height = 13
                Alignment = taRightJustify
                Caption = #1060#1048#1054' '#1074#1088#1072#1095#1072':'
              end
              object Label14: TLabel
                Left = 8
                Top = 36
                Width = 69
                Height = 13
                Alignment = taRightJustify
                Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072':'
              end
              object Label15: TLabel
                Left = 281
                Top = 9
                Width = 43
                Height = 13
                Caption = #1055#1072#1094#1080#1077#1085#1090
              end
              object plTooths: TPanel
                Left = 1
                Top = 58
                Width = 723
                Height = 57
                Align = alBottom
                BevelOuter = bvLowered
                Caption = 'plTooths'
                ShowCaption = False
                TabOrder = 0
              end
              object comboEmployee: TComboBox
                Left = 83
                Top = 6
                Width = 185
                Height = 21
                Style = csDropDownList
                TabOrder = 1
                OnChange = comboEmployeeChange
              end
              object dateCard: TDateTimePicker
                Left = 83
                Top = 33
                Width = 185
                Height = 21
                Date = 43661.523072916670000000
                Time = 43661.523072916670000000
                Enabled = False
                TabOrder = 2
              end
              object comboEmployeeID: TComboBox
                Left = 576
                Top = 6
                Width = 145
                Height = 21
                TabOrder = 3
                Text = 'comboEmployeeID'
              end
              object comboEmployeeOrign: TComboBox
                Left = 576
                Top = 31
                Width = 145
                Height = 21
                TabOrder = 4
              end
            end
            object treeNodeRootCard: TAdvTreeView
              Left = 0
              Top = 116
              Width = 265
              Height = 91
              Align = alLeft
              Color = clWhite
              TabOrder = 2
              TabStop = True
              Groups = <>
              GroupsAppearance.TopSize = 50.000000000000000000
              GroupsAppearance.BottomSize = 50.000000000000000000
              GroupsAppearance.TopFill.Kind = tvbkNone
              GroupsAppearance.BottomFill.Kind = tvbkNone
              GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
              GroupsAppearance.TopFont.Color = clWindowText
              GroupsAppearance.TopFont.Height = -11
              GroupsAppearance.TopFont.Name = 'Tahoma'
              GroupsAppearance.TopFont.Style = []
              GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
              GroupsAppearance.BottomFont.Color = clWindowText
              GroupsAppearance.BottomFont.Height = -11
              GroupsAppearance.BottomFont.Name = 'Tahoma'
              GroupsAppearance.BottomFont.Style = []
              GroupsAppearance.TopStroke.Color = 11119017
              GroupsAppearance.BottomStroke.Color = 11119017
              ColumnStroke.Color = clNone
              Columns = <
                item
                  Name = 'Column0'
                  Text = #1043#1088#1091#1087#1087#1099' '#1096#1072#1073#1083#1086#1085#1086#1074
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end
                item
                  Name = 'Column1'
                  Text = 'Column 1'
                  Width = 100.000000000000000000
                  Fill.Color = clNone
                  Stroke.Color = 11119017
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TopFill.Kind = tvbkNone
                  TopStroke.Color = 11119017
                  TopFont.Charset = DEFAULT_CHARSET
                  TopFont.Color = clWindowText
                  TopFont.Height = -11
                  TopFont.Name = 'Tahoma'
                  TopFont.Style = []
                  BottomFill.Kind = tvbkNone
                  BottomStroke.Color = 11119017
                  BottomFont.Charset = DEFAULT_CHARSET
                  BottomFont.Color = clWindowText
                  BottomFont.Height = -11
                  BottomFont.Name = 'Tahoma'
                  BottomFont.Style = []
                end>
              Nodes = <
                item
                  Values = <
                    item
                      Text = #1042#1077#1090#1082#1072
                    end>
                  Tag = 0
                  Nodes = <>
                end
                item
                  Values = <
                    item
                      Text = #1042#1077#1090#1082#1072' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103
                    end>
                  Tag = 0
                  Nodes = <>
                end>
              ColumnsAppearance.TopSize = 25.000000000000000000
              ColumnsAppearance.BottomSize = 25.000000000000000000
              ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
              ColumnsAppearance.TopFont.Color = clWindowText
              ColumnsAppearance.TopFont.Height = -11
              ColumnsAppearance.TopFont.Name = 'Tahoma'
              ColumnsAppearance.TopFont.Style = []
              ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
              ColumnsAppearance.BottomFont.Color = clWindowText
              ColumnsAppearance.BottomFont.Height = -11
              ColumnsAppearance.BottomFont.Name = 'Tahoma'
              ColumnsAppearance.BottomFont.Style = []
              ColumnsAppearance.TopFill.Kind = tvbkNone
              ColumnsAppearance.BottomFill.Kind = tvbkNone
              ColumnsAppearance.TopStroke.Color = 11119017
              ColumnsAppearance.BottomStroke.Color = 11119017
              NodesAppearance.ExpandWidth = 15.000000000000000000
              NodesAppearance.ExpandHeight = 15.000000000000000000
              NodesAppearance.LevelIndent = 20.000000000000000000
              NodesAppearance.FixedHeight = 25.000000000000000000
              NodesAppearance.VariableMinimumHeight = 25.000000000000000000
              NodesAppearance.Fill.Color = clNone
              NodesAppearance.Stroke.Color = 11119017
              NodesAppearance.Stroke.Style = psClear
              NodesAppearance.ColumnStroke.Color = clNone
              NodesAppearance.LineStroke.Color = 11119017
              NodesAppearance.LineStroke.Style = psDot
              NodesAppearance.Font.Charset = DEFAULT_CHARSET
              NodesAppearance.Font.Color = clWindowText
              NodesAppearance.Font.Height = -11
              NodesAppearance.Font.Name = 'Tahoma'
              NodesAppearance.Font.Style = []
              NodesAppearance.FontColor = clWindowText
              NodesAppearance.SelectedFill.Color = 16297243
              NodesAppearance.SelectedStroke.Color = 11119017
              NodesAppearance.SelectedStroke.Style = psClear
              NodesAppearance.DisabledFill.Color = 11119017
              NodesAppearance.DisabledStroke.Color = 11119017
              NodesAppearance.DisabledStroke.Style = psClear
              NodesAppearance.ExtendedFill.Color = 16053492
              NodesAppearance.ExtendedStroke.Color = 11119017
              NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
              NodesAppearance.ExtendedFont.Color = clWindowText
              NodesAppearance.ExtendedFont.Height = -11
              NodesAppearance.ExtendedFont.Name = 'Tahoma'
              NodesAppearance.ExtendedFont.Style = []
              NodesAppearance.ExtendedSelectedFill.Color = 16297243
              NodesAppearance.ExtendedSelectedStroke.Color = 11119017
              NodesAppearance.ExtendedSelectedStroke.Style = psClear
              NodesAppearance.ExtendedDisabledFill.Color = 11119017
              NodesAppearance.ExtendedDisabledStroke.Color = 11119017
              NodesAppearance.ExtendedDisabledStroke.Style = psClear
              NodesAppearance.ExpandNodeIcon.Data = {
                07544269746D6170C2010000424DC20100000000000036000000280000000B00
                00000B00000001001800000000008C0100000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFF
                FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A
                FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                FF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF4A4D4A4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFF7B7D7B0000007B7D7BFFFFFF
                FFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4AFFFFFFFFFFFFFFFFFFFFFFFF
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B000000}
              NodesAppearance.CollapseNodeIcon.Data = {
                07544269746D6170C2010000424DC20100000000000036000000280000000B00
                00000B00000001001800000000008C0100000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFFFFFFFF4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF7B7D7B0000007B7D7BFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B0000007B7D
                7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B00
                00007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                7B7D7B0000007B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7B7D7B0000007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B000000}
              NodesAppearance.ExpandNodeIconLarge.Data = {
                07544269746D61700E060000424D0E0600000000000036000000280000001600
                0000160000000100180000000000D80500000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A4A4D4A4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFF4A4D4A4A4D4A
                4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D
                4A4A4D4AFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A4D4AFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF4A4D4A4A4D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
              NodesAppearance.CollapseNodeIconLarge.Data = {
                07544269746D61700E060000424D0E0600000000000036000000280000001600
                0000160000000100180000000000D80500000000000000000000000000000000
                00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF4A4D4A4A
                4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4A4A4D4AFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D
                7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B
                00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7D
                7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7BFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B7D7B7B7D
                7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B00007B7D7B7B7D7B7B7D7B7B
                7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B
                7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B7B7D7B0000}
              Version = '1.1.0.6'
              OnAfterSelectNode = treeNodeRootCardAfterSelectNode
            end
            object btnToothTmp: TAdvGlassButton
              Left = 680
              Top = 70
              Width = 38
              Height = 20
              Hint = '18'
              ParentCustomHint = False
              AllowAllUp = True
              Anchors = [akTop, akRight]
              BackColor = clSilver
              Caption = '18'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clWhite
              GlowColor = clWhite
              GroupIndex = 18
              InnerBorderColor = clNone
              Layout = blGlyphLeftAdjusted
              OuterBorderColor = clGray
              Picture.Data = {
                89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
                530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
                840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
                B1504C544500000080BFFF85BEFF84BFFF84BFFF83C0FF86BCFF80BFFF83C0FF
                84BFFF84BFFF8080FF84C0FF84BFFF84BFFF84BFFF83BFFF83BFFF80B8FF83BF
                FF84BFFF84BFFF84BFFF84BFFF85BEFF84C0FF84BFFF87BFFF84BFFF83C0FF85
                BFFF84BEFF84BFFF84BFFF99CCFF84BFFF84BFFF80BFFF84BFFF83BFFF84C0FF
                84BFFF84BFFF83BFFF84BFFF83BFFF83BFFF84BFFF80BFFF84BFFF85BFFFFFFF
                FF82BEFF85C0FF85BFFF84BFFF86BCFF84BFFF0000001FB0C00A000000397452
                4E53000896EBE8A12A1869A03802B5FAF7FB5054126FB0AA9CB35A85E6246C71
                30A6E25B05BEBC14F380CDB7D644DF4CA3F80CEECA01337DAFD726F82E187000
                000001624B47440088051D48000000097048597300000EC400000EC401952B0E
                1B0000000774494D4507E30408171323B6D1C8B60000008C4944415418D34DCE
                E71282301004E005446CA8D83BD87BAFFBFE2FE62588C9FEB8C97E733339008E
                EBE5FC7C5028BA25A8942B94845519B5BA8288265E43C0B7804D81960D6D818E
                0D5D819E0D7D0167607A3854DF8C0C8CF521937F8F7547A076A344E63485993C
                E758882E53C08A5C63436E7F1D3B728F0379CCE0C4F30557DEEE193C9227F07A
                7F74F9023242207BB380C7900000002574455874646174653A63726561746500
                323031392D30342D30385432313A31393A33352B30323A303039B4864F000000
                2574455874646174653A6D6F6469667900323031392D30342D30385432313A31
                393A33352B30323A303048E93EF30000001974455874536F6674776172650077
                77772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
              PictureDown.Data = {
                89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
                530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
                840000FA00000080E8000075300000EA6000003A98000017709CBA513C000001
                2C504C54450000002B88092C89082C89082C89082C89082D89072C8A072C8A08
                2C8A082B8A082D8A0800FF00308F002C89082C89082C89082C89082C89082C89
                082C89082C89082C89082C89072D8A082C89082C89082C89082C89082B870A2C
                8A082C89082D89082C89082C89082C89082C89082C89082C89082D8A082C8908
                2C89082C89082D8A082A89072C89082C89082C8A090080002C89082C88082C88
                082D870F2B89082C88082B88052C89082C89082C89082C89082C89082C89082C
                88072D8B092C89082C89082C88072C89082C89082B88082D8A062C89082C8908
                2D89072C89082C890831860C2492002C89082C89082C89082B89082C89082C89
                082C89082D89072C89072C89082C89082B88052D8A082C88082C89082D8B092C
                87082C89082C89082B89092C890800000028AF67990000006274524E53001A9B
                E0DFA0412F6F9C934D010EB7F2FDF9F0EFF5F8DD7068E8FEFCD42BA6EE7DB6F7
                F6AF9FF4B467ECF18B23CAD93E018CE37E0855B0183DDAD7A9C8E3772DD69A4D
                9CCF401DD37639A2B10D0BCBEA5A34AB71F3C139B0FA2052C272172291BC4BB7
                03055200000001624B47440088051D48000000097048597300000DD700000DD7
                0142289B780000000774494D4507E3040B07352592FFE239000000BD49444154
                18D363606060646266616563E7E0E4E2E66100025E3E7E010141216111515131
                71908084A454121448CBC80205E44492E0405E0128A0A884105056010AA8AA21
                0494D481021A9A08012D6DA0808EAE20DC503D7DA08081214C898091B109C85E
                53E6A4244179FEA424353373109FC1C23229C9CADA2629C9D60ECC67B077484A
                7274724E4A72718508B8B927497B787A25897AFB40047CFDA4FC03028392C482
                19A0202824942D2C3CC23B122610151D131B179F9008E600003E023299EFD42C
                690000002574455874646174653A63726561746500323031392D30342D313154
                30353A35333A33372B30323A303072DA1F8B0000002574455874646174653A6D
                6F6469667900323031392D30342D31315430353A35333A33372B30323A303003
                87A7370000001974455874536F667477617265007777772E696E6B7363617065
                2E6F72679BEE3C1A0000000049454E44AE426082}
              PictureDisabled.Data = {
                89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
                530000000467414D410000B18F0BFC6105000000206348524D00007A26000080
                840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
                B1504C5445000000DF9F00F0AF00EFAF00EFAF00EFAE00EDB000EAAA00EEAF00
                EFAF00EDAD00FF8000F0AF00EFAF00EEB000EFAF00EFAF00F0B000F1AA00EFAF
                00EFAF00EFB000EFAF00EFAF00EEB000F0AE00EFAF00F1B100EEAF00EFB000EF
                AF00F0AF00EFAF00EEAE00FF9900EFAE00EFAF00F2B300EFAF00EFAF00EFAF00
                F0B000F0AF00F0B000EFAF00EEAE00EFAF00EFAF00EAAA00EFAF00EFAF00FFFF
                00F0AF00EFAF00EFAF00F0B000F2AE00EFAF000000009B7C4B47000000397452
                4E53000896EBE8A12A1869A03802B5FAF7FB5054126FB0AA9CB35A85E6246C71
                30A6E25B05BEBC14F380CDB7D644DF4CA3F80CEECA01337DAFD726F82E187000
                000001624B47440088051D48000000097048597300000EC400000EC401952B0E
                1B0000000774494D4507E3040A101B29319B75AE0000008C4944415418D34DCE
                E71282301004E005446CA8D83BD87BAFFBFE2FE62588C9FEB8C97E733339008E
                EBE5FC7C5028BA25A8942B94845519B5BA8288265E43C0B7804D81960D6D818E
                0D5D819E0D7D0167607A3854DF8C0C8CF521937F8F7547A076A344E63485993C
                E758882E53C08A5C63436E7F1D3B728F0379CCE0C4F30557DEEE193C9227F07A
                7F74F9023242207BB380C7900000002574455874646174653A63726561746500
                323031392D30342D31305431343A32373A34312B30323A3030D5EE3F33000000
                2574455874646174653A6D6F6469667900323031392D30342D31305431343A32
                373A34312B30323A3030A4B3878F0000001974455874536F6674776172650077
                77772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              ShineColor = clWhite
              ShowHint = True
              TabOrder = 3
              TabStop = False
              Version = '1.3.0.2'
              Visible = False
            end
          end
          object plCardModifyMainTop: TPanel
            Left = 0
            Top = 0
            Width = 725
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            Caption = 'plCardModifyMainTop'
            ParentBackground = False
            TabOrder = 2
            object buttonPatientCardModifyBack: TAdvGlassButton
              Left = 6
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = #1053#1072#1079#1072#1076
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 0
              Version = '1.3.0.2'
              OnClick = buttonPatientCardModifyBackClick
            end
            object buttonPatientCardSave: TAdvGlassButton
              Left = 92
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = 'TODO '#1057#1086#1093#1088#1072#1085#1080#1090#1100
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 1
              Version = '1.3.0.2'
              OnClick = buttonPatientCardSaveClick
            end
            object AdvGlassButton6: TAdvGlassButton
              Left = 178
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = 'TODO'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 2
              Version = '1.3.0.2'
            end
          end
        end
        object plPatientCardList: TPanel
          Left = 0
          Top = 0
          Width = 725
          Height = 418
          Align = alClient
          BevelOuter = bvNone
          Caption = 'plPatientCardList'
          Color = clHotLight
          ParentBackground = False
          TabOrder = 2
          object gridCardList: TAdvStringGrid
            Left = 0
            Top = 31
            Width = 725
            Height = 387
            Cursor = crDefault
            Align = alClient
            ColCount = 14
            Ctl3D = True
            DrawingStyle = gdsClassic
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 0
            ActiveRowShow = True
            HoverRowCells = [hcNormal, hcSelected]
            OnDblClickCell = gridEmployeeDblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              ''
              #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              #1044#1072#1090#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
              #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
              #1042#1088#1072#1095
              #1055#1088#1080#1084#1080#1095#1072#1085#1080#1077
              'id'
              'parent_id')
            ColumnSize.Location = clIniFile
            ControlLook.FixedGradientFrom = clBtnFace
            ControlLook.FixedGradientHoverFrom = 15000287
            ControlLook.FixedGradientHoverTo = 14406605
            ControlLook.FixedGradientHoverMirrorFrom = 14406605
            ControlLook.FixedGradientHoverMirrorTo = 13813180
            ControlLook.FixedGradientHoverBorder = 12033927
            ControlLook.FixedGradientDownFrom = 14991773
            ControlLook.FixedGradientDownTo = 14991773
            ControlLook.FixedGradientDownMirrorFrom = 14991773
            ControlLook.FixedGradientDownMirrorTo = 14991773
            ControlLook.FixedGradientDownBorder = 14991773
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 22
            FixedRowHeight = 22
            FixedColAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            RowIndicator.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA
              945DF2D2AFBA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DBA945DBA945DBA945DBA945DE8A962F4D4B1BA945DFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF6D8B4F6D8B4F6D8B4F6
              D8B4EDB069EDB069F6D8B4BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DF2B870F2B870F2B870F2B870F2B870F2B870F2B870F9DCB8BA94
              5DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF7C077F7C077F7C077F7
              C077F7C077F7C077F7C077BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DBA945DBA945DBA945DBA945DFCC67DFCC67DBA945DFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA
              945DFFCB81BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
            ScrollProportional = True
            ScrollSynch = True
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clInfoBk
            SelectionTextColor = clBtnText
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '8.1.3.0'
            ColWidths = (
              22
              127
              127
              127
              127
              85
              190
              64
              64
              64
              64
              64
              64
              64)
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 725
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel2'
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            object buttonPatientCardListBack: TAdvGlassButton
              Left = 6
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = #1053#1072#1079#1072#1076
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 0
              Version = '1.3.0.2'
              OnClick = buttonPatientCardListBackClick
            end
            object buttonPatientCardModify: TAdvGlassButton
              Left = 178
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = 'TODO '#1048#1079#1084#1077#1085#1080#1090#1100'...'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 1
              Version = '1.3.0.2'
              OnClick = buttonPatientCardModifyClick
            end
            object buttonPatientCardInsert: TAdvGlassButton
              Left = 92
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = 'TODO '#1044#1086#1073#1072#1074#1080#1090#1100'...'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 2
              Version = '1.3.0.2'
              OnClick = buttonPatientCardInsertClick
            end
          end
        end
        object plPatient: TPanel
          Left = 0
          Top = 0
          Width = 725
          Height = 418
          Align = alClient
          BevelOuter = bvNone
          Caption = 'plPatient'
          Color = clYellow
          ParentBackground = False
          TabOrder = 0
          object plPatientInsert: TPanel
            Left = 0
            Top = 31
            Width = 296
            Height = 387
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'plPatientInsert'
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object ScrollBox1: TScrollBox
              Left = 0
              Top = 33
              Width = 296
              Height = 354
              HorzScrollBar.Visible = False
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              object GroupBox2: TGroupBox
                Left = 6
                Top = 193
                Width = 269
                Height = 318
                Caption = ' '#1050#1086#1085#1090#1072#1082#1090#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 0
                object Label7: TLabel
                  Left = 6
                  Top = 25
                  Width = 180
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1040#1076#1088#1077#1089' ('#1075#1086#1088#1086#1076'/'#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090')*:'
                end
                object Label8: TLabel
                  Left = 6
                  Top = 71
                  Width = 140
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1040#1076#1088#1077#1089' ('#1091#1083#1080#1094#1072'/'#1084#1080#1082#1088#1086#1088#1072#1081#1086#1085'):'
                end
                object Label9: TLabel
                  Left = 6
                  Top = 117
                  Width = 117
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1040#1076#1088#1077#1089' ('#1076#1086#1084'/'#1082#1074#1072#1088#1090#1080#1088#1072'):'
                end
                object Label10: TLabel
                  Left = 6
                  Top = 166
                  Width = 100
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1085#1086#1084#1077#1088':'
                end
                object Label11: TLabel
                  Left = 6
                  Top = 193
                  Width = 61
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1044#1086#1087'. '#1085#1086#1084#1077#1088':'
                end
                object Label12: TLabel
                  Left = 6
                  Top = 217
                  Width = 155
                  Height = 13
                  Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103':'
                end
                object editAddress1: TButtonedEdit
                  Left = 6
                  Top = 44
                  Width = 248
                  Height = 21
                  DoubleBuffered = True
                  Images = dmDataModule.imagesButton
                  ParentDoubleBuffered = False
                  RightButton.ImageIndex = 0
                  RightButton.Visible = True
                  TabOrder = 0
                  Text = 'ButtonedEdit1'
                end
                object editAddress2: TButtonedEdit
                  Left = 6
                  Top = 90
                  Width = 248
                  Height = 21
                  DoubleBuffered = True
                  Images = dmDataModule.imagesButton
                  ParentDoubleBuffered = False
                  RightButton.ImageIndex = 0
                  RightButton.Visible = True
                  TabOrder = 1
                  Text = 'ButtonedEdit1'
                end
                object editAddress3: TButtonedEdit
                  Left = 6
                  Top = 136
                  Width = 248
                  Height = 21
                  DoubleBuffered = True
                  Images = dmDataModule.imagesButton
                  ParentDoubleBuffered = False
                  RightButton.ImageIndex = 0
                  RightButton.Visible = True
                  TabOrder = 2
                  Text = 'ButtonedEdit1'
                end
                object editPhone1: TMaskEdit
                  Left = 112
                  Top = 163
                  Width = 142
                  Height = 21
                  EditMask = '!\(999\)999-9999;0;0'
                  MaxLength = 13
                  TabOrder = 3
                  Text = ''
                end
                object editPhone2: TMaskEdit
                  Left = 112
                  Top = 190
                  Width = 142
                  Height = 21
                  EditMask = '!\(999\)999-9999;0;0'
                  MaxLength = 13
                  TabOrder = 4
                  Text = ''
                end
                object memoNotes: TMemo
                  Left = 6
                  Top = 236
                  Width = 248
                  Height = 48
                  Lines.Strings = (
                    '')
                  TabOrder = 5
                end
              end
              object GroupBox1: TGroupBox
                Left = 6
                Top = 0
                Width = 269
                Height = 187
                Caption = ' '#1044#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1072' '
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object Label1: TLabel
                  Left = 42
                  Top = 25
                  Width = 54
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1060#1072#1084#1080#1083#1080#1103'*:'
                  Color = clBtnFace
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 67
                  Top = 52
                  Width = 29
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1048#1084#1103'*:'
                end
                object Label3: TLabel
                  Left = 43
                  Top = 79
                  Width = 53
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
                end
                object Label4: TLabel
                  Left = 37
                  Top = 106
                  Width = 59
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103':'
                end
                object Label5: TLabel
                  Left = 67
                  Top = 133
                  Width = 29
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1055#1086#1083'*:'
                end
                object Label6: TLabel
                  Left = 5
                  Top = 160
                  Width = 90
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103'*:'
                end
                object editFName: TButtonedEdit
                  Left = 102
                  Top = 22
                  Width = 153
                  Height = 21
                  DoubleBuffered = True
                  Images = dmDataModule.imagesButton
                  ParentDoubleBuffered = False
                  RightButton.ImageIndex = 0
                  RightButton.Visible = True
                  TabOrder = 0
                  Text = 'editFName'
                  OnChange = editFNameChange
                  OnRightButtonClick = editFNameRightButtonClick
                end
                object editName: TButtonedEdit
                  Left = 102
                  Top = 49
                  Width = 153
                  Height = 21
                  DoubleBuffered = True
                  Images = dmDataModule.imagesButton
                  ParentDoubleBuffered = False
                  RightButton.ImageIndex = 0
                  RightButton.Visible = True
                  TabOrder = 1
                  Text = 'ButtonedEdit1'
                end
                object editLName: TButtonedEdit
                  Left = 102
                  Top = 76
                  Width = 153
                  Height = 21
                  DoubleBuffered = True
                  Images = dmDataModule.imagesButton
                  ParentDoubleBuffered = False
                  RightButton.ImageIndex = 0
                  RightButton.Visible = True
                  TabOrder = 2
                  Text = 'ButtonedEdit1'
                end
                object editProff: TButtonedEdit
                  Left = 102
                  Top = 103
                  Width = 153
                  Height = 21
                  DoubleBuffered = True
                  Images = dmDataModule.imagesButton
                  ParentDoubleBuffered = False
                  RightButton.ImageIndex = 0
                  RightButton.Visible = True
                  TabOrder = 3
                  Text = 'ButtonedEdit1'
                end
                object comboSex: TComboBox
                  Left = 102
                  Top = 130
                  Width = 153
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 1
                  TabOrder = 4
                  Text = #1052#1091#1078'.'
                  Items.Strings = (
                    #1046#1077#1085'.'
                    #1052#1091#1078'.')
                end
                object dateBirthday: TDateTimePicker
                  Left = 101
                  Top = 157
                  Width = 153
                  Height = 21
                  Date = 43646.801533043980000000
                  Time = 43646.801533043980000000
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
              end
            end
            object plPatientInsertTop: TPanel
              Left = 0
              Top = 0
              Width = 296
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              Caption = 'plPatientInsertTop'
              ParentBackground = False
              ShowCaption = False
              TabOrder = 1
              object buttonPatientSave: TAdvGlassButton
                Left = 6
                Top = 4
                Width = 80
                Height = 25
                BackColor = clWhite
                Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
                CornerRadius = 2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ForeColor = clBtnFace
                GlowColor = clGray
                InnerBorderColor = clGrayText
                OuterBorderColor = clBtnFace
                ParentFont = False
                ShineColor = clWhite
                TabOrder = 0
                Version = '1.3.0.2'
                OnClick = buttonPatientSaveClick
              end
              object buttonPatientCancel: TAdvGlassButton
                Left = 201
                Top = 4
                Width = 80
                Height = 25
                BackColor = clWhite
                Caption = #1054#1090#1084#1077#1085#1072
                CornerRadius = 2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ForeColor = clBtnFace
                GlowColor = clGray
                InnerBorderColor = clGrayText
                OuterBorderColor = clBtnFace
                ParentFont = False
                ShineColor = clWhite
                TabOrder = 1
                Version = '1.3.0.2'
                OnClick = buttonPatientCancelClick
              end
            end
          end
          object gridPatient: TAdvStringGrid
            Left = 296
            Top = 31
            Width = 429
            Height = 387
            Cursor = crDefault
            Align = alClient
            ColCount = 15
            Ctl3D = True
            DrawingStyle = gdsClassic
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
            ParentCtl3D = False
            ScrollBars = ssBoth
            TabOrder = 1
            ActiveRowShow = True
            HoverRowCells = [hcNormal, hcSelected]
            OnDblClickCell = gridEmployeeDblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              ''
              #1060#1072#1084#1080#1083#1080#1103
              #1048#1084#1103
              #1054#1090#1095#1077#1089#1090#1074#1086
              #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              #1055#1086#1083' ('#1084'/'#1078')'
              #1055#1088#1086#1092#1077#1089#1089#1080#1103
              #1040#1076#1088#1077#1089' ('#1075#1086#1088#1086#1076'/'#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090')'
              #1040#1076#1088#1077#1089' ('#1091#1083#1080#1094#1072'/'#1084#1080#1082#1088#1086#1088#1072#1081#1086#1085')'
              #1040#1076#1088#1077#1089' ('#1044#1086#1084'/'#1082#1074#1072#1088#1090#1080#1088#1072')'
              #1058#1077#1083#1077#1092#1086#1085
              #1058#1077#1083#1077#1092#1086#1085' ('#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081')'
              #1055#1088#1080#1084#1080#1095#1072#1085#1080#1077
              #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              'id')
            ColumnSize.Location = clIniFile
            ControlLook.FixedGradientFrom = clBtnFace
            ControlLook.FixedGradientHoverFrom = 15000287
            ControlLook.FixedGradientHoverTo = 14406605
            ControlLook.FixedGradientHoverMirrorFrom = 14406605
            ControlLook.FixedGradientHoverMirrorTo = 13813180
            ControlLook.FixedGradientHoverBorder = 12033927
            ControlLook.FixedGradientDownFrom = 14991773
            ControlLook.FixedGradientDownTo = 14991773
            ControlLook.FixedGradientDownMirrorFrom = 14991773
            ControlLook.FixedGradientDownMirrorTo = 14991773
            ControlLook.FixedGradientDownBorder = 14991773
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 22
            FixedRowHeight = 22
            FixedColAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            RowIndicator.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA
              945DF2D2AFBA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DBA945DBA945DBA945DBA945DE8A962F4D4B1BA945DFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF6D8B4F6D8B4F6D8B4F6
              D8B4EDB069EDB069F6D8B4BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DF2B870F2B870F2B870F2B870F2B870F2B870F2B870F9DCB8BA94
              5DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF7C077F7C077F7C077F7
              C077F7C077F7C077F7C077BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFBA945DBA945DBA945DBA945DBA945DFCC67DFCC67DBA945DFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA
              945DFFCB81BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
              FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
              FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
              00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
            ScrollProportional = True
            ScrollSynch = True
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clInfoBk
            SelectionTextColor = clBtnText
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '8.1.3.0'
            ColWidths = (
              22
              197
              87
              110
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64)
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 725
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Panel2'
            ParentBackground = False
            ShowCaption = False
            TabOrder = 2
            object buttonPatientInsert: TAdvGlassButton
              Left = 6
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100'...'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              Style = tasCheck
              TabOrder = 0
              Version = '1.3.0.2'
              OnClick = buttonPatientInsertClick
            end
            object buttonPatientModify: TAdvGlassButton
              Left = 92
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100'...'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              Style = tasCheck
              TabOrder = 1
              Version = '1.3.0.2'
              OnClick = buttonPatientModifyClick
            end
            object buttonPatientCardList: TAdvGlassButton
              Left = 178
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = #1052#1077#1076'. '#1082#1072#1088#1090#1072'...'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 2
              Version = '1.3.0.2'
              OnClick = buttonPatientCardListClick
            end
            object buttonPrint: TAdvGlassButton
              Left = 264
              Top = 2
              Width = 80
              Height = 25
              BackColor = clWhite
              Caption = 'TODO '#1055#1077#1095#1072#1090#1100'...'
              CornerRadius = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ForeColor = clBtnFace
              GlowColor = clGray
              InnerBorderColor = clGrayText
              OuterBorderColor = clBtnFace
              ParentFont = False
              ParentBiDiMode = False
              ShineColor = clWhite
              TabOrder = 3
              Version = '1.3.0.2'
              OnClick = buttonPrintClick
            end
          end
        end
      end
      object tabLog: TAdvTabSheet
        Caption = ' '#1046#1091#1088#1085#1072#1083' '
        Color = clBtnFace
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object loggerLostBox: TColumnListBox
          Left = 0
          Top = 0
          Width = 725
          Height = 418
          Align = alClient
          Columns = <
            item
              Color = clWindow
              ColumnType = ctText
              Ellipsis = etAtEnd
              Width = 120
              Alignment = taLeftJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            item
              Color = clWindow
              ColumnType = ctText
              Ellipsis = etAtEnd
              Width = 100
              Alignment = taLeftJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end
            item
              Color = clWindow
              ColumnType = ctText
              Ellipsis = etAtEnd
              Width = 500
              Alignment = taLeftJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
            end>
          ListBoxItems = <>
          GridLines = False
          ItemIndex = -1
          LookupIncr = False
          LookupColumn = 0
          ShowItemHint = False
          SortColumn = 0
          Sorted = False
          TabOrder = 0
          OnClick = loggerLostBoxClick
          Version = '1.2.3.3'
        end
      end
    end
  end
  object treeMenu: TAdvPopupMenu
    Version = '2.6.2.1'
    Left = 14
    Top = 256
    object menuInsertSubnode: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1096#1072#1073#1083#1086#1085'...'
      OnClick = menuInsertSubnodeClick
    end
    object menuModity: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100'...'
      OnClick = menuModityClick
    end
    object menuDelete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100'...'
      OnClick = menuDeleteClick
    end
    object menuSeparator: TMenuItem
      Caption = '-'
    end
    object menuInsertNode: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1088#1085#1077#1074#1086#1081' '#1096#1072#1073#1083#1086#1085'...'
      OnClick = menuInsertNodeClick
    end
  end
end
