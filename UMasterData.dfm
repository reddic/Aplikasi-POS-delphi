object frmMasterData: TfrmMasterData
  Left = 0
  Top = 0
  Caption = 'frmMasterData'
  ClientHeight = 455
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    ExplicitTop = -4
    object RzDBNavigator1: TRzDBNavigator
      Left = 2
      Top = 2
      Width = 240
      Height = 37
      DataSource = DataSource1
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
      ExplicitLeft = 112
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 665
    Top = 41
    Width = 86
    Height = 414
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 665
    Height = 414
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object RzPanel1: TRzPanel
      Left = 2
      Top = 2
      Width = 661
      Height = 135
      Align = alTop
      BorderOuter = fsBump
      TabOrder = 0
    end
    object RzPanel2: TRzPanel
      Left = 2
      Top = 137
      Width = 661
      Height = 275
      Align = alClient
      BorderOuter = fsBump
      TabOrder = 1
      ExplicitLeft = 240
      ExplicitTop = 200
      ExplicitWidth = 185
      ExplicitHeight = 41
      object SMDBGrid1: TSMDBGrid
        Left = 2
        Top = 2
        Width = 657
        Height = 271
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clLime
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Left = 376
    Top = 81
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 488
    Top = 97
  end
end
