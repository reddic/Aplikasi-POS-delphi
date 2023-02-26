inherited frmUsers: TfrmUsers
  Caption = 'User Setup'
  FormStyle = fsStayOnTop
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
    object RzBtnAccess: TRzBitBtn
      Left = 242
      Top = 2
      Height = 37
      Align = alLeft
      Caption = 'Add Access'
      TabOrder = 1
      OnClick = RzBtnAccessClick
      ExplicitLeft = 296
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  inherited Panel3: TPanel
    inherited RzPanel1: TRzPanel
      Height = 159
      ExplicitHeight = 159
      object SMDBGridHeader: TSMDBGrid
        Left = 2
        Top = 2
        Width = 657
        Height = 155
        Align = alClient
        DataSource = DataSource1
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
        Columns = <
          item
            Expanded = False
            FieldName = 'IDUSER'
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USERNAME'
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PASSWORD'
            Width = 377
            Visible = True
          end>
      end
    end
    inherited RzPanel2: TRzPanel
      Top = 161
      Height = 251
      inherited SMDBGrid1: TSMDBGrid
        Height = 247
        DataSource = DsDetail
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply]
        Columns = <
          item
            Expanded = False
            FieldName = 'IDUSER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMNAME'
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMDESCRIPTION'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARK'
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    AfterScroll = FDQuery1AfterScroll
    SQL.Strings = (
      'select * from users')
    Left = 576
    Top = 65
    object FDQuery1IDUSER: TWideStringField
      FieldName = 'IDUSER'
      Origin = 'IDUSER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1USERNAME: TWideStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Size = 60
    end
    object FDQuery1PASSWORD: TWideStringField
      FieldName = 'PASSWORD'
      Origin = 'PASSWORD'
      Size = 50
    end
  end
  inherited DataSource1: TDataSource
    Left = 584
    Top = 129
  end
  object FDQueryDetail: TFDQuery
    Active = True
    MasterSource = DataSource1
    MasterFields = 'IDUSER'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from USERSFORM')
    Left = 488
    Top = 73
    object FDQueryDetailIDUSER: TWideStringField
      FieldName = 'IDUSER'
      Origin = 'IDUSER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQueryDetailFORMNAME: TWideStringField
      FieldName = 'FORMNAME'
      Origin = 'FORMNAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 80
    end
    object FDQueryDetailFORMDESCRIPTION: TWideStringField
      FieldName = 'FORMDESCRIPTION'
      Origin = 'FORMDESCRIPTION'
      Size = 100
    end
    object FDQueryDetailMARK: TBooleanField
      FieldName = 'MARK'
      Origin = 'MARK'
    end
  end
  object DsDetail: TDataSource
    DataSet = FDQueryDetail
    Left = 496
    Top = 137
  end
  object FDStoredProc1: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertFormToUsers'
    Left = 202
    Top = 131
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@userid'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
end
