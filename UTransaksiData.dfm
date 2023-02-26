object frmTransaksiData: TfrmTransaksiData
  Left = 0
  Top = 0
  Caption = 'frmTransaksiData'
  ClientHeight = 490
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    ExplicitLeft = -304
    ExplicitWidth = 751
    object RzDBNavigator1: TRzDBNavigator
      Left = 2
      Top = 2
      Width = 240
      Height = 37
      DataSource = DsHeader
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
      ExplicitTop = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 241
    Width = 734
    Height = 249
    Align = alClient
    BorderOuter = fsBump
    TabOrder = 1
    ExplicitTop = 216
    ExplicitHeight = 274
    object RzPageControl2: TRzPageControl
      Left = 2
      Top = 2
      Width = 730
      Height = 245
      Hint = ''
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      ExplicitLeft = 208
      ExplicitTop = 128
      ExplicitWidth = 300
      ExplicitHeight = 150
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Caption = 'Detail'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object SMDBGridDetail: TSMDBGrid
          Left = 0
          Top = 0
          Width = 726
          Height = 222
          Align = alClient
          DataSource = DsDetail
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEnter = SMDBGridDetailEnter
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'Tahoma'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsNormal
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
        end
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 41
    Width = 734
    Height = 200
    Align = alTop
    BorderOuter = fsBump
    TabOrder = 2
    ExplicitTop = 35
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 730
      Height = 196
      Hint = ''
      ActivePage = TabSheet2
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      ExplicitLeft = 248
      ExplicitTop = 64
      ExplicitWidth = 300
      ExplicitHeight = 150
      FixedDimension = 19
      object TabSheet2: TRzTabSheet
        Caption = 'Header'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object SMDBGridHeader: TSMDBGrid
          Left = 0
          Top = 0
          Width = 726
          Height = 173
          Align = alClient
          DataSource = DsHeader
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEnter = SMDBGridHeaderEnter
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'Tahoma'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsNormal
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
        end
      end
    end
  end
  object FDQueryHeader: TFDQuery
    BeforeDelete = FDQueryHeaderBeforeDelete
    Connection = DM.FDConnection1
    Left = 251
    Top = 103
  end
  object FDQueryDetail: TFDQuery
    MasterSource = DsHeader
    Connection = DM.FDConnection1
    Left = 435
    Top = 159
  end
  object DsHeader: TDataSource
    DataSet = FDQueryHeader
    Left = 635
    Top = 103
  end
  object DsDetail: TDataSource
    DataSet = FDQueryDetail
    Left = 531
    Top = 151
  end
end
