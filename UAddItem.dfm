object frmAddItem: TfrmAddItem
  Left = 0
  Top = 0
  Caption = 'Add Item'
  ClientHeight = 372
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 41
    Align = alTop
    BorderOuter = fsBump
    TabOrder = 0
  end
  object RzPanel2: TRzPanel
    Left = 687
    Top = 41
    Width = 96
    Height = 331
    Align = alRight
    BorderOuter = fsBump
    TabOrder = 1
    ExplicitLeft = 559
    ExplicitTop = 33
    object RzBtnOK: TRzBitBtn
      Left = 2
      Top = 2
      Width = 92
      Align = alTop
      Caption = 'Purchase Detail'
      TabOrder = 0
      OnClick = RzBtnOKClick
      ExplicitLeft = 4
      ExplicitTop = -4
    end
    object RzBtnSalesDetail: TRzBitBtn
      Left = 2
      Top = 27
      Width = 92
      Align = alTop
      Caption = 'Sales Detail'
      TabOrder = 1
      OnClick = RzBtnSalesDetailClick
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 41
    Width = 687
    Height = 331
    Align = alClient
    BorderOuter = fsBump
    TabOrder = 2
    object SMDBGrid1: TSMDBGrid
      Left = 2
      Top = 2
      Width = 683
      Height = 327
      Align = alClient
      DataSource = DsItem
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
      ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'MARK'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEMID'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEMNAME'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIT'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HARGABELI'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HARGAJUAL'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  object FDQueryItem: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from selectitem')
    Left = 488
    Top = 225
    object FDQueryItemITEMID: TWideStringField
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      Required = True
    end
    object FDQueryItemITEMNAME: TWideStringField
      FieldName = 'ITEMNAME'
      Origin = 'ITEMNAME'
      Size = 30
    end
    object FDQueryItemHARGABELI: TFMTBCDField
      FieldName = 'HARGABELI'
      Origin = 'HARGABELI'
      Precision = 18
      Size = 2
    end
    object FDQueryItemHARGAJUAL: TFMTBCDField
      FieldName = 'HARGAJUAL'
      Origin = 'HARGAJUAL'
      Precision = 18
      Size = 2
    end
    object FDQueryItemUNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object FDQueryItemMARK: TBooleanField
      FieldName = 'MARK'
      Origin = 'MARK'
    end
  end
  object DsItem: TDataSource
    DataSet = FDQueryItem
    Left = 488
    Top = 273
  end
  object DsAddItem: TDataSource
    DataSet = FDQueryAddItem
    Left = 512
    Top = 161
  end
  object FDQueryAddItem: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from Selectitem')
    Left = 512
    Top = 105
    object FDQueryAddItemITEMID: TWideStringField
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      Required = True
    end
    object FDQueryAddItemITEMNAME: TWideStringField
      FieldName = 'ITEMNAME'
      Origin = 'ITEMNAME'
      Size = 30
    end
    object FDQueryAddItemHARGABELI: TFMTBCDField
      FieldName = 'HARGABELI'
      Origin = 'HARGABELI'
      Precision = 18
      Size = 2
    end
    object FDQueryAddItemHARGAJUAL: TFMTBCDField
      FieldName = 'HARGAJUAL'
      Origin = 'HARGAJUAL'
      Precision = 18
      Size = 2
    end
    object FDQueryAddItemUNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object FDQueryAddItemMARK: TBooleanField
      FieldName = 'MARK'
      Origin = 'MARK'
    end
  end
  object FDStoredAddItem: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertSelectItem'
    Left = 144
    Top = 137
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@UserId'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@Transtype'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end>
  end
  object FDStoredAddPurchase: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertPurchaseDetail'
    Left = 152
    Top = 81
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = -6
      end
      item
        Position = 2
        Name = '@Userid'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@PurchaseId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 4
        Name = '@ItemId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@Qty'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Unit'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 7
        Name = '@Price'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@LineAmount'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object FDStoredAddSales: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertSalesDetail'
    Left = 128
    Top = 209
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = -6
      end
      item
        Position = 2
        Name = '@userid'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@SalesId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = '@ItemId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@Qty'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Unit'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 7
        Name = '@Price'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@LineAmount'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end>
  end
end
