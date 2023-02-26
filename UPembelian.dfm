inherited frmPembelian: TfrmPembelian
  Caption = 'Transaksi Pembelian'
  ClientWidth = 1304
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitLeft = -28
  ExplicitTop = -67
  ExplicitWidth = 1320
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1304
    ExplicitLeft = 0
    ExplicitWidth = 1304
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
      ExplicitTop = 2
    end
    object BitBtn1: TBitBtn
      Left = 242
      Top = 2
      Width = 75
      Height = 37
      Align = alLeft
      Caption = '&Print'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 1304
    ExplicitTop = 241
    ExplicitWidth = 1304
    ExplicitHeight = 249
    inherited RzPageControl2: TRzPageControl
      Width = 1192
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 1192
      ExplicitHeight = 245
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        ExplicitWidth = 1188
        inherited SMDBGridDetail: TSMDBGrid
          Width = 1188
          GridStyle.Style = gsCustom
          GridStyle.EvenColor = clMenuHighlight
          Columns = <
            item
              Expanded = False
              FieldName = 'PURCHASEID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTY'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRICE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LINEAMOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECORDID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRANSDATE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USERID'
              Visible = True
            end>
        end
      end
    end
    object RzPanel3: TRzPanel
      Left = 1194
      Top = 2
      Width = 108
      Height = 245
      Align = alRight
      BorderOuter = fsBump
      TabOrder = 1
      object RzBtnAddItem: TRzBitBtn
        Left = 2
        Top = 2
        Width = 104
        Align = alTop
        Caption = '& Add Item'
        TabOrder = 0
        OnClick = RzBtnAddItemClick
      end
    end
  end
  inherited RzPanel2: TRzPanel
    Width = 1304
    ExplicitTop = 41
    ExplicitWidth = 1304
    inherited RzPageControl1: TRzPageControl
      Width = 1300
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 1300
      ExplicitHeight = 196
      FixedDimension = 19
      inherited TabSheet2: TRzTabSheet
        ExplicitWidth = 1296
        inherited SMDBGridHeader: TSMDBGrid
          Width = 1296
          GridStyle.Style = gsCustom
          GridStyle.EvenColor = clMenuHighlight
          ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply]
          Columns = <
            item
              Expanded = False
              FieldName = 'PURCHASEID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDACCOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PURCHASEDATE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ISPPN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALAMOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRANDTOTAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USERID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRANSDATE'
              Visible = True
            end>
        end
      end
    end
  end
  inherited FDQueryHeader: TFDQuery
    Active = True
    AfterInsert = FDQueryHeaderAfterInsert
    AfterScroll = FDQueryHeaderAfterScroll
    OnNewRecord = FDQueryHeaderNewRecord
    SQL.Strings = (
      'select * from PURCHASEHEADER')
    Left = 603
    Top = 95
    object FDQueryHeaderPURCHASEID: TWideStringField
      FieldName = 'PURCHASEID'
      Origin = 'PURCHASEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQueryHeaderVENDACCOUNT: TWideStringField
      FieldName = 'VENDACCOUNT'
      Origin = 'VENDACCOUNT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQueryHeaderPURCHASEDATE: TDateField
      FieldName = 'PURCHASEDATE'
      Origin = 'PURCHASEDATE'
    end
    object FDQueryHeaderISPPN: TBooleanField
      FieldName = 'ISPPN'
      Origin = 'ISPPN'
    end
    object FDQueryHeaderTOTALAMOUNT: TFMTBCDField
      FieldName = 'TOTALAMOUNT'
      Origin = 'TOTALAMOUNT'
      Precision = 18
      Size = 2
    end
    object FDQueryHeaderGRANDTOTAL: TFMTBCDField
      FieldName = 'GRANDTOTAL'
      Origin = 'GRANDTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryHeaderUSERID: TWideStringField
      FieldName = 'USERID'
      Origin = 'USERID'
      Size = 10
    end
    object FDQueryHeaderTRANSDATE: TSQLTimeStampField
      FieldName = 'TRANSDATE'
      Origin = 'TRANSDATE'
    end
  end
  inherited FDQueryDetail: TFDQuery
    Active = True
    AfterPost = FDQueryDetailAfterPost
    MasterFields = 'PURCHASEID'
    SQL.Strings = (
      'select * from PURCHASEDETAIL')
    Left = 635
    Top = 183
    object FDQueryDetailPURCHASEID: TWideStringField
      FieldName = 'PURCHASEID'
      Origin = 'PURCHASEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQueryDetailITEMID: TWideStringField
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryDetailQTY: TFMTBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 2
    end
    object FDQueryDetailUNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object FDQueryDetailPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Precision = 18
      Size = 2
    end
    object FDQueryDetailLINEAMOUNT: TFMTBCDField
      FieldName = 'LINEAMOUNT'
      Origin = 'LINEAMOUNT'
      Precision = 18
      Size = 2
    end
    object FDQueryDetailRECORDID: TLargeintField
      FieldName = 'RECORDID'
      Origin = 'RECORDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryDetailTRANSDATE: TSQLTimeStampField
      FieldName = 'TRANSDATE'
      Origin = 'TRANSDATE'
    end
    object FDQueryDetailUSERID: TWideStringField
      FieldName = 'USERID'
      Origin = 'USERID'
      Size = 10
    end
  end
  inherited DsHeader: TDataSource
    Left = 755
  end
  inherited DsDetail: TDataSource
    Top = 143
  end
  object FDQueryVendor: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from vendor')
    Left = 179
    Top = 111
    object FDQueryVendorVENDACCOUNT: TWideStringField
      FieldName = 'VENDACCOUNT'
      Origin = 'VENDACCOUNT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQueryVendorVENDORNAME: TWideStringField
      FieldName = 'VENDORNAME'
      Origin = 'VENDORNAME'
      Size = 80
    end
    object FDQueryVendorTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Origin = 'TELEPHONE'
      Size = 80
    end
    object FDQueryVendorFAX: TWideStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 50
    end
    object FDQueryVendorNPWP: TWideStringField
      FieldName = 'NPWP'
      Origin = 'NPWP'
      Size = 50
    end
    object FDQueryVendorCONTACTPERSON: TWideStringField
      FieldName = 'CONTACTPERSON'
      Origin = 'CONTACTPERSON'
      Size = 80
    end
    object FDQueryVendorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object FDQueryVendorADDRESS: TWideStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 250
    end
  end
  object DsVendor: TDataSource
    DataSet = FDQueryVendor
    Left = 243
    Top = 111
  end
  object FDQuItem: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from INVENTTABLE')
    Left = 171
    Top = 183
  end
  object DsItem: TDataSource
    DataSet = FDQuItem
    Left = 235
    Top = 183
  end
  object frxReport1: TfrxReport
    Version = '6.6.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44938.935354756900000000
    ReportOptions.LastChange = 44940.593269328700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 483
    Top = 263
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      Frame.Typ = []
      MirrorMode = []
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 374.173470000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Top = 257.008040000000000000
          Width = 128.504020000000000000
          Height = 83.149660000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 257.008040000000000000
          Width = 128.504020000000000000
          Height = 83.149660000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 257.008040000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 257.008040000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Prepare By')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 257.008040000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Approve By')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 351.496290000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 351.496290000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 351.496290000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub Total :')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PPN 11% :')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."LINEAMOUNT">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[(SUM(<frxDBDataset1."LINEAMOUNT">,MasterData1,2)) * 0.11]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[((SUM(<frxDBDataset1."LINEAMOUNT">,MasterData1,2)) * 0.11) + SU' +
              'M(<frxDBDataset1."LINEAMOUNT">)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'ITEMID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ITEMID"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'ITEMNAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ITEMNAME"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'QTY'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTY"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'UNIT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."UNIT"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PRICE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRICE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'LINEAMOUNT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."LINEAMOUNT"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Align = baLeft
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000012C00
            0000F1080300000046747A02000002FD504C544547704CFE0000FE0000FE0000
            FE0000FE0000FE0000FF0000FE0000FF0000FE0000FF0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FF0000FE0000FE0000FE0000FF0000FE0000FE0000FE0000FE0000FE0000
            FE0000FE0000FF0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FF0000FE0000FE0000FF0000FE
            0000FE0000FE0000FE0000FF0000FE0000FE0000FE0000FE0000FF0000FE0000
            FE0000FE0000FE0000FE0000FF0000FE0000FE0000FE0000FF0000FE0000FE00
            00FE0000FF0000FE0000FF0000FE0000FE0000FE0000FE0000FE0000FF0000FE
            0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FE0000
            FE0000FE0000FE0000FE0000FE0000FF0000FE0000FE0000FE0000FF0000FE00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FE0000FE
            0000FE0000FF0000FE0000FE0000FE0000FE0000FE0000FF0000FE0000FF0000
            FE0000FF0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE00
            00FE0000FE0000FF0000FF0000FE0000FE0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000FF0000FE0000FE0000FE0000FE0000
            FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF00
            00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FE
            0000FE0000FE0000FF0000FE0000FE0000FE0000FE0000FE0000FF0000FF0000
            FE0000FF0000FE0000FE0000FE0000FE0000FE0000FE0000FF0000FE0000FE00
            00FE0000FE0000FE0000FE0000FE0000FF0000FE0000FE0000FE0000FE0000FE
            0000FE0000FE0000FE0000FE0000FE0000538E025A000000FF74524E530025B3
            D842ADFDFFD30153BF8F0A64CDFC2B1676DCBC2289E8572F99F4E5093AA8FB8E
            49B72C0459C4C00D6AD25E78DFE920869195F139A6F9C248B55A58C5E60B0C67
            881879DE24268CEBB135A0F64546D006C3621371D587E77C379DEF1550B98A10
            69CEF019E37F3DA44B21809740071165EA232E8DE43BB6F87D44A5F3D9306BCB
            AF705CBEAC29054DB04A1DD684A39BC8F5935BD7322AE19C4FB2FA127AC64333
            0F6E3F9AED287B636DF73183B8980327DDAB555D4E681C3CCFF2904C5F14B434
            661B1EE2968BE0A7526CBD0E086181DBAE6FD474A2771AC7EE1F7ECCBA3685A9
            543E9FD1DA9482AACA02A1EC72BBC975601751C12D9E3873564741920B4E69CB
            000023484944415478DAED5D79404DD91FBFD7587AC343A94C196D943DCA2E4B
            D1C8D2288FEC2A215B782A42FC646B132515429A9A54264628B256CA9AB29648
            9214C93625BB7EF5D6BB9C7BDF5DDEABD0E78FDE3DEBBBEFD33DE79EF3DD0E0C
            35801C300C7F155FD6F5BDD47334AEE60AFE204A349045020E0C7FA9FE685221
            4A37904508AEE891E2C0AF45390D6411400586CB85572D5F88F31AC802421D96
            3C4E904A89F8AA812C00346158F23455F35628BE6C200B076D182E4624DBE54B
            2E1BC8C2A003FC0495E6A83D905C37908584010C3FC264E9E548AF1BC892A22B
            0C3FC0651ADC965E37902586CAEFF03D7C6E974FD9D24403594218C1C5AF41F9
            DDAF23120D64D540BF157C0B5CD206F9626C200B82FAC170164191F12564AA81
            AC4170067161DF3464EA2727CBA02D7C85A478009C8C4CFED46499C1A50F482B
            0C3E8B4AFEC46499C3700A790DA35649A8F44F4BD628183E2BAB8E79023AFD93
            926509C349B26B8D8A47A77F4AB2AC3F9FA1526DCCBF988C9F8F2CDEDDEEC7A9
            D5FC330E93F1B3916503C3472856557F538EC9F9B9C8521F0E1FA65C79C2016C
            CECF44D67438F905F5DA93E0086CD64F431667121C4DABC1B4FDB8AC9F842C07
            188EA4D7C2160EC5E5FD1464C1935B85D36D336B17A09FBAFE218AC702B888C2
            0214836197CAF1993F3A595C9D16994CDACD090664FED86439C1D1E58C1ACE0B
            04E5FEC8642DFD7C94C6520189992D0240D93F2C59CBE08C2B4CDB3AC17EC0FC
            1F94ACE5301CC0B8B1DA0C6F70C18F48163F74E95616BFCB25F62141C98F4796
            532BEFC66CDA4F8AFE4254F4A391B506867D5875B012F6202CFBA1C852590A6F
            66D9C59A0711C4853F105996CFD4654AD565C0D06A0D59F18F42969939BC9E75
            271E292749CB7F0CB2BC0F7EBDC7BA13BD4F0F65D4F801C8F281E143596C3BD1
            7CECEB2AB3D2774FD6D6BFBA5015AA13C30B0E7940A1DA774ED652DDA85B6CFB
            18C07B71F03EA59ADF3359B64D7A2E67DB87DFC9B77DFDA956FE7EC9B21CB537
            876D1FFD473E0BA251FD3B25CB6CA2C77F6CFBF0DF3B7701BD16DF2559BB92CD
            96B0EC82679638D08D6EA3EF8F2C1F15185EC8AE0B3F4EB883038376DF1B5946
            4B5EAF62D9C5EE44753A131502DF17597FE5B19429544F547C5BE2D2C89387DF
            9334FE8EC832B75FF4815D0F3CB3422EF144C5D9EBFF7CDABF642BAEEF862C6D
            2FD89E55076EDCBD2661C4C531704C62F522D797AC8BEF832C8751FE8CB47F52
            584EF124D93FDADC7BAF5A531CB5997493F93D907568F9E752561D584F762A26
            2EE57CDEEA257245991D42DA4FBD278BDB22640AAB0EEC474F3C64454240D856
            E91EFAC004D2AEEA3959471F769CC8A6BDE13AF8D54CE2E2B0DF2EC05BA5C93E
            E9E4BDD567B20CB6DF79BD95457BCDB9C6B0057171FC9BD35FD17680C7469277
            587FC93252556125A83A9EDC7E3E49B166500176753B355C4697F5952CAB76BC
            B12C9A0F73FB4AF694B8B6CE02582CCB7AB0EA27598E43592D3F478C34B42231
            9E49B2515F0A1221B7CF93D5713D244BDB59DD9E796BBF984DB0297171D2DBB6
            AE04B2D5D34365F55DDFC80AD377676CFC520D5DC3649225595A31215310A451
            20B3F7FA4556EAAD74EA76EA38584F7E4E22CD4B2F7FEF4922AF77B92EDB96B2
            1E91D5D5CF8E85F4F33C1C738278139CBE76F16272C3B69401B2BFA3DE90A5AF
            E52973CE2044780778793261A97A226C25CB047080BFB1ECAFA91F6465999CB0
            2F66DA386A659C2BB19797C5A0A09DD36577828C754188FA40167C03EECBB8F1
            EEC4B7C493CDA8C151AD2829ABF528298AEA9CACF853F37329FCE709EEFEC02D
            0FC242E50B36AE1485F546B9AFA954AB63B28CBE4653982BC0E83C57790EA110
            58397DED31EABF0DE44E01409D92B5061EC6744F3362EBB1C464A2C2E5B3DDCF
            BEA7D1D9F145F55D7D9FFBD984E99EC64DEBB9892951A1A66A5C0F7ADD85B49E
            40AD625D91B5C0C8AC3BB3969AA52BA677242A8C3049A06FFE70B333C58A7542
            567224638B8E9C1467C2B938E2A2261393D27BBA546BD60159D39D1630B4E858
            B9CB3C8AA8ACE0DFEE968C3AE5BDA0E48A5F83DA26CB61C9D47C662DF97FCFCA
            26D83872D453EF3363AA1AA3A98B186B972C0FBFE9E18C1A869BC016D9E0228E
            FA07352A667B04E844C318AE16C9322B1E7880D1D759749B4CB49F3138D75987
            05531094DF8E46E55A234B597727B38DB2EE8C37601F2D883761ADEB32767715
            BC98CE7AAC76C8E287066E66B4517EE4A5B4055CE2E31E304187ED7D05BFA465
            A3551B645918AC66F4B3AE0D7222F065CB5ABFAB8A519768DCB86F45ABBEC2C9
            8AE75A8CA6EFCF5D3DC67EB91467042CD132D6BA9742B33720F021416440C164
            192D5950C5A099ADD5DC29601B62B3B14DC2D83B53D4806B70916E134592C5B1
            28D9CC60A31CD57B474528B024F34CB3BE6672BAB9C789F40D251547565AE05C
            260BC5DDFDBA819FC548D590FF2ECBEBE64E85463168A528B28A608F08FAADF4
            CFA6810500614E9EFFCA8D2917FEE6ED8C1A2A842CDBEBC9BFD36FD5B971BF8D
            AAC0EEE2EC2FB2F60F906066E538A6364C0A20ABDFD39EF49D2495EFEE0F2C04
            15D89EBED242435EB7C68B7D798EA2EC0A0479936593F407C520714842962C9C
            059C6E1D7B6A0F9217536E77072FDF3F935517F225CBB2C480B6463964C265B0
            15555246A3EC83F2B9AFAAAC91DF5C5D58772347B222DB30D02897C2C9E340F9
            693DA794B2768E132215FEE85044670B4808B991B57CC237DA4BA0CC996057A3
            BC9080DEF261EA4EE3648FAA42F6FD08211FB2B43EDBD38ED1D179EE83B5A097
            9F53F6C7112CDD28847059D63F78480BB9FC3E11E44156CCC05B74AD649DEE0F
            016AB2D413837ACBF655A6802F5307AE67670F0E006BB27891D1F934AD6413B2
            F6EE3605E48F1AEC64CB64CF8DBBA51103725751D304D2034BB25C1718D00CFC
            62141C3209F4F2F3FED2A8828D69B2088629E52753C264D53ABA8E91BB3E1BB2
            E24F8D7E4473CC9496DC002D9FBD17368E66E943580D4EF6E1FE2D3BC9AA959B
            EA75E577405C4D0A604E56FA380D9AD26FEB070120C9F2FB712DC7B0672A70F4
            E3F495B22A55F4EC7B835BFD9EAD8A1B47A54F2C989245DBF32F55FBEC7AC03C
            E2A16DD28FF51AC8A96968871C59C1FD6C3E859A1E1569C15BBC64F43D8CC872
            D4EA4F4FFAD2C5FED346C08F39749A910A1985A83F0C3ACC91259AEA7AEA74EB
            3DD20D6BE377CCBE8B01594570252D3385844B8D40661CA965BDBAB0240A5AB9
            6AEB76590B043E2FA847052AA69D61FF5A72FB5539A047CB4625646524D70497
            CB7993C065AC421693B0EDD2B8163216080656E39AADC1C9EB7171DEA9821E59
            1F4DBED0122C15BDBC8F9F49CBB876479808E611705BF920EC7436791DCEBA8C
            8F89A075CDB7CF4CBF960659CB9EDCA565A660FD00E0BB6D1074E631BB403B21
            5AB9FD5F59C8A864B1B46889065853C94B7AC5F4AB2993E531C49ECEF62155DB
            6B384E29C76B7F8CA50A795847C7952765D4D9BA367FCD1DE245E794BF187F3B
            35B24C6DA6B7A5D1A9D31C800DA3D6F8716ACC8D92AB5192B2AE87AB11799D8A
            5D7787E593AE69763832BF032A64291BD3B1E777BB3EA69B298E29DB932A6C14
            A37EDCC8827DA6E475C27EE9F5A5A5ACF734B77B32F3BB90495696C9873DD4D7
            D746E3A21C701249B38F7D58A990FD1B47EEEF485E25D22CBD691A9505C14306
            9A1409649075F4341D3385D28923703B8EC89D8FFFC722CA8EFA92D17146E416
            09A6490FBB4FA628CDF6663565929165B0CB229ABA3DBFD7DF9A38554564C912
            7DE652A549FCD6CD46922F107C3A6A3F53A12EA1DD324D95725D0088C9CA5B10
            40DD9E3F708F09CE276BD9343D5FC6D1A0396685F36365187BC634EAD15A874E
            A76ADD65BD49C94144969521F58DB2D37BA3A8644C9E6D9CE715C6AE837157B7
            87CA50845A8C537650A2BB038F9CC49CA81A00C9727CD392F259226ED717C560
            15F5C953B50633DC7E414EE306F23A923F9079DA2FC9165284E8C5C647B60600
            B2B4878CB5A7D85AB354271EFB9EAAD83ED7872153517FF092A6FE435AC5B1AF
            57560433293D573D9B513B297064ED594D59F997633D0DFBF24BFB7C59C79ED1
            8D548DB75AFF0739C9369F029D0B19ABC8340731319C410143965D6FAAAE0F5E
            3E7DB12FBFB416A7EF33309DA986BD4EDEE107A42FAA4CF5F47E8B58C599DE37
            831551354091A55D49F1A90A34BCBF19F3F24BFF366C3623A66C0F380CD84C3A
            40B8650F2FB2D66B15B761D9018422CBE1E66D4A3BC5923546FE981FE764B971
            3D136738A30386FFFC1B4A56836FDCA8E745B6A123AB71EF20EDD8917848E9F9
            2BDF9B427DB74DDD8C300F90D3F94D454CA6DCB887A646A472ADF89119AEADE4
            626A0BDD1B260F1DBE84AC7B3D6557D62C0DC7C637836F9BFD8F01535D9A9F58
            A046BA4018F5B4A731DBB89112F814303F2B05F963851F069D4EC9AC9A93E289
            D17DC558EC34A0EFDFACD67F7AF90DD278C6E95AE37B0D64AF1D13C3C5A3A97C
            3A1292C5BF9621A31EDE7B2D8637F529FD95A1755AE83D5243A9B4F2F3EE0C17
            520468B9816654604208C9DAB889B492FDF159989095CAEDE32ED0FED7A76AAC
            0F7A47B64050597DA2F5023691A00028322C915B5F02B22E0F23A911DEC1340D
            BDA35EDE95BE62B4C4395389540FBACC8F6F2F537447172E29A79ACBB1BB1AB2
            7CD712165BBC3C391EBDF75FDEB4195DC5A88BD225BD72B2359869E507EE434A
            9115E820E1EA82A9ECA40C58549395B93B1C5C56F5E7FAE1E8B560444F8F449A
            5FE095D9E5B51F4939BF936ADE3079B94D4830A0F4CF7569B25440B4514DD663
            0360C998B6FE1C649AC39B405731AAFEEC52AC1BC92465703365DD1A56D122F1
            D0D4CFD7FE689E725EDE4409C9AA3003EC4D13061F42AD09E27BF23ED1B39931
            4C79106647223DE4EC8FDBADCEEA502F1CD44C0EAFD0691BCE2202974CB2F6E3
            632E26388E41EEFF0D78CF2B692946439C3B765F4D6628E574DA670A6DD11D19
            26ADFF58B56A85B93CBB0491C55981DBE5ACB88A3056E44D38438F2968D3950A
            B279356DCFA147298C43F5E0A16C3253297E8B5C0D6D8900EB63374D93CE4817
            26FCAA7D2E54768C08F86590687C6DD35B35DB28BF85D4F9AE9E2782C3651A45
            CA0DF0A47874C600330FD1958F7BC050FA2AE48BBD090AC2F2DF6AE8DACBE9B6
            43DC5E3D6A64D833B956389200AE5446A5D5DC457B83F4E0AF8C0C38BCDC0113
            47D753A753DA3095CA63E09736F3C09CC47CC54DE3C4805BA37FDB8C7D828F65
            938399BACDF44D43A7B3D646EE0D948F49BAEDA4DF7FB31FBA86DA341E0F07CB
            C34E1C09B8192AA97F47F051D04C87597751D9E15F1F236E78E4D87C03B948A4
            9CE6256F1F1A4BD158C8F469C0C7574F222EB051D55320EBBA6077061FB067D0
            15E7834F0842E5C0D93F765AA23C1652FCA38B923FA8539CC6553A0ED673E824
            78909B54C8992B0C5955AB3D6A3EECA369F773ED9C663E42D56331CEF3A506E3
            F8906270B43D8EF6D9DC89DA6A3CDEE3DAB787CDD649668F27EAF2E60A43D69D
            A7A6D57F9707D2EB83DF4297932715E1A46B3561A40345C165F19CB0C2B31646
            942A9B1505DC3F73722C6A8A7A3D43FEAF003459CA5B6A5C3D5B7EA4DEFECE20
            C70508E30DF34E95AB86333C435D0C37DFFB97523947A939DF24AF702D7573C2
            0B8DAD2D981CD9248BAC75C845A7DFA71A29E6DFB3A9B555D3CB9D182D9D7397
            ED58A091C3CEF5D4F6607E23FBA1D45C4EE3BBB97AB67DFB152C02E3B5F3A3D4
            094DB27ADF412643EDAAFF2CDA2BBB9D51CEE13F374A7F55E69E7E9B5BB0F290
            1F1160D63AC99E5A90B4EA61F7F1E1CA58E23D935A9A8E02B88260343382437A
            1CFC6438717F29BCB95D3A419826B1D4810E285D94DC6C04B56163BB47ED0D77
            463879A5AA4D2B14C115043B9C424E3103E0E4EABF0FBB1237086CF71BC2569F
            37FD1B2BD15DEACEF9D75F8CA3640756F6C6F56079B0BE3D85AA678628842B08
            C6282B0451DD7C12C0C639BCD837E652413A679D5EF1641DA65F1CD2F7AACA8C
            6D9E94749FA653DAF789583996EA823CBB8362B8AA26EB0B4AA49F70B2666654
            E1E1ECB34A3A39763D2B5D19AA2B57BC642A91F2FB6C70E94DDE704AFA74DB3D
            3986DE6F69A94893072A88AB1AB1F21C1431B72D6BC658D814E4FE5A4DAFC9FB
            8E528D435EB3F81BEACCBC4EDD86DC5D185D46697717EFA115FE8DDAB043E181
            96A2B8AA21EB9D0A2AC7E6EF9ABF59D71709939AE98FFB5C95BA2AE57AB665AE
            03755E984D4989A0D5EC5CD3500FCAC30E85E7FD14E11D2D210B1A883EE1AD9B
            20199FED51BD8969B276A2D4B83379703F56A23B2A1B109BF7B63EA11F4D193B
            D8960E646BDE2783AC43B3D1C34234410E5A535622995732731AF76BC5322C4C
            39A9C941596EDE93594DCFD8B3FA0A7D6366D674D4C9820E4F45678E8F4125B5
            86EC1F5F2187E8558456E85CF70DB31D37BD672F7EE21E19AC189A8410906570
            0D33407A48EC44F89D54396ACC4FE240E3155E971E76F6E382DEB16EF251CB5C
            B363BB7F27877072707D8ED9D3DD50133C0461968FE4431427A93876E693E6C8
            884C657FA926F837FD456EB1B1AAA78A198AE54A6C9F756E34263F635D8D8423
            BE9CE29E9A044679DEE5EE31ED91C216AEFB62977DDBBFCAD5B0A8FA5D9BF70F
            FB4E48217EEDBCFE0D5370CF4120733B67CB42E0E2E65B98A09DA8865C7DDABC
            DF34B828560E46A258543DA1E311C90C9277F40A6CCCC0DBC5A6351FA7021819
            548F88AE383FF5126ABADDAAFA64568BA9ACCCB38961A94F53BFC904D205CD53
            3D4CD1A3688108E6FD009A4154F9413EAB5FCC400E092DDF0E2A9D7DB6B1140A
            9260266F8CA289AA0162F5A7833591E3F611A8E1F3BA53F595D72C3FB4ACF9A9
            DEC86561D8E1E89E99D9CC1799146054B6BD3F2BCF38CA40FC0A4EAE3EA690AF
            23D0B8DA16C8F610524B524B78E1361E21F7AE7EDBF5EE187A5241C34E0CC35D
            3D0EB33B0D98195900B6C2DB084EDE34D32653F7DC899EBD7FD5196BC452292B
            2987A37D235D71C34E8090EEC5415386CA8C6AA420B2006CA96909A235F38E35
            02B6E6ED0BCB4FF33545E42C7B503DEC722D146AFB63D4ECA8AA8AE5CBF8F672
            0BE6C7842C08FAD00A531EF29B70E7BC167328BCA6BE26FCC0FC20627AE21C31
            CFF1EEA7D061E71279B67554FAF8884F0AB1EBA34D169E2DB1FBA7F4F566316A
            48F0D663971102392DDF13FF3B38EE9C9C179908686A1DFD9876607C564672DD
            B04440163403B70CB6126E851E4FBC0519FEAE11FBBCA035E2DD1376D8E5C46A
            050EBB2EBA83CE7D4C35FF50B72C1191057DE3607344229BA4B1AEB390D3696E
            C7C3F1E6B7E564488483E198A8C8B34DF758FAB3EF4A6E002C80F06C0D3F814E
            67AD5A9A365037562ED1447170B1F20D3D1AD66A6B9BDA593BD10168B588676B
            FF34F15558C70A95124D050DBBD4C113BE04FC1946CDC0A10E005C5AA3B5D435
            B8304320D92EDB23AFD0D00068DE6C272B6E5F1D03BC0FC13F5B7D6E097EC897
            81728A0E0D00B7ACAEC99005824D1B9EADD7EE82A9F67D96DC5D47C41831955D
            B476C58368878B672BC75160B5E1AAC7F2C42962F4BB50D76CC800A138200867
            F8E3EF21B0FE301FCA3A5C261621D9F9B6E78DBCEFB38C04A87010CB4EF0CFD6
            7923419643C7F572FA724E7E49BB83C9DDECE64CAFEF0350081241139E2DA70B
            576B3EB28E933BBECA46899A4A6A4849EC9EDC5D0AF6B6912FC8A472F89168A8
            29F4C778A9C9ECDBEE0C7CBFD9EC3FBF98E83644F1C30C0614533EF5B3D6412A
            C2C4B3E5125029F83C4B4F8C6BF83FCFEDF33D379C6DA74A6488B02CCA61914B
            62F6C8C9F9BAF6D1EE75CD0A13B2006C55BDE40A3EE7538A11AED666D918BB42
            BBCAA94708EC8B785E5AC197A71D0E7A3A7D31C23FFDD41C56A761D61159509F
            DBB82C51009C7FC8E2E058B8EB5D99B25F27E7453A817D75E4CD7FF2A63F3C11
            B32106686862A139AF3EEE79646912FEC407C7101D0B18EC87770A7079199366
            3FDE6E414039F8B7F2475F7A3125E35C60E5A6CB323C0AF4ED15271D53185920
            B64461FA076D903C1521EE993BFA77366B7A762E508619DFEA727BE599D3DB4F
            7891405D52511CCEFE54A1DA260BC456ACB5E0A3E053E1BEE66AEFCA4CEE3779
            0574AD31BBFB44F92FA76376E79A31B168E8D27B5F5DB3830105851E80AD5E09
            426193B91D6835C9AFD4BCE112B57658EAD4C5ECDC7B1B9BD13F774C91A0A2FD
            04ACAA3EFF8ED7ACC4BFFC75F094C4165B9BF5779297684233BA29F5F09F8A07
            255531E0D9D21B2591F7F22222DFBDCB71B6BBFFF76AD67E6038147C695F97F4
            A0414DAF0E78B6DC8B8411D5BA155D98AD381957359ECC94B7432A6350344200
            3C5BFEF9025FA2ADF16CA37FCA82ADEFD77A228EA76AB10178B6026D053B6D83
            BF15E4FC21C56DFF9DB5CB0A01289BB700D8120921A0768A9707BF9FAC68AB3E
            2AA06E0B94D30B97251642B47DA3F0FBECCC4D63DF095BD0309C1A8B979D8885
            1086B98ABF53F3798C8EAC9227689095750C204F2E130A214E5A51EF8729DC8E
            4C9743AC5136A06392677416B06B110921063F95FF1A0B871C832FB5C30A0168
            D92F3E019D242112429CBB5B1B62825807C687E6C801F48C3D0BF50199222144
            D105FB5AB85F7EE26DF69D30053DB2D233418F8FEA53C14784BBDC0F4105C139
            AECEC4A834CD88F1561035B8502298DF639ACB397E1F187E6376C825F82F7DD0
            24CBA925D083F5D44C811022CF9DDD31605431E65B3CFB4E1880AE81FAAA6DC0
            6C637D819F5F059FF2D917EC60F3AC2E146674C95AB3059CEFE4230868E4B0FC
            A2FC02489321A47F42ED2FBA68BB3E143C117EA60621D711A5B13122DF99A3BE
            5EB571DFCF74436A2FD69F188AF413F9E1D040160D349045030D64D18042C8E2
            5B9BA51C1A651E7A68DBE8A3C6E94B5B25D7F5AF941360A8AB770841D9C26DC2
            5FC9993D92A0CAC266D80820EA157F3735789DBF1DE1DAEDE7BBFCC5F4EE674C
            31358B0EF481A08CFF1067850F78DE07CA685B8654447366E701BED5FF3C1493
            02EDD8D6479A77C8B2E670DDA6372654FFCD707182DCAEAF3C716934B1ECFED4
            0D61E312A44CB1BAC78C7492586730A4A1B486A06C5388D0CD5CAB9248E9BE69
            EE6A64D2327823618C9A922DC693506690B708A2EBBA65294945C866AF00EED4
            9B0EF68536C8B6D5F43BC1F59EE8F6CB05E0DEE82EA13ED26D9E1F9157070C0D
            BE46F875A28371B5A612EEC574A52EC1BC39CE8FC8EFDEC5220C1177B95897A8
            DECC6F922594D96F20339CBCF6D00BCA314887BDF58EC69F8344D65E2988C06A
            13863A1510B60A9A2B24CB9DD05BDEF892F84AA30D1561C0EE1992C8A5C46441
            6B24E74498F503FD9F7EA984DED209AC79C7BF25D6DD9C946C1F3E115989E309
            1BA509478AD659C2833872445EE84957A99A99FA1E1119DADC2209722D895A63
            D611145BA6A209A444D3B2F9C662F466F22EA959C089E10464392EDCB7304207
            FBECF00F5D79932B3AE591B39E3FE8E6AF1F3035427E51F5D0B3125A7EACACC2
            3F0021C98550E54DFCDBF6F848E1EF6C1C3E3FFBDC7AB0305A534DA86483381B
            2D753E78213A1FB04DC73DDD28025A3AB76B5945171A6C9D8F45C562F89A159C
            9DD48628406F605F2097A21F635AF81495ED3B0457BBC32094DB0E77F704C975
            542EE60D905AD234AAECAB2FD43C5789135D80716EB537937A80EF34013F5F9D
            872326D9AEC177C432C7087DE47DF5E02377ED6A1DE62F0F2036DB7151C1092E
            CB120B08DE13F380716D25FF7955A49311AF2D60AA1881D2DC1948C5BBFAADD1
            C60ECAE13E489B36956BFBD0AFC8CEFDA5132ED12490D1039912AB7161CCE3FD
            061925C47C63C0F40ED97626ED4BDC5FBC4B9D96DC0AE30A62311A7FB2D3C463
            A28B108CB06439685A9190F52FD2E1FFF5AF80AA9F51471F1C903C58FC5DE8F9
            43490F1B3FA75F21FA509DC6EF249796A7C16441CF9071F4C43179B1E1CAB623
            436C7A60CE618B2F0D4287EFF0F7C6D94949227FA83442ABD5E3A6013CD42464
            A1824F038F0B40931520F937618EA2396F883F4F425B03CD9FF414CBD43F849F
            2E2118F701CE54847D43A702E127F635858A72827E186B901E118E4ACFDA85A9
            7074AFC84267DDEAE463689FDCEED749C87AD41991BB6E35BE26A481D242EDB1
            155DE439A34D82F2400655E8210C95CC13AF3BC54F96D77EAC857C6013699857
            F15A70C546741D94710F9E2CCCFF17BAB31A6331211E4E46F6F3A1CD1BD06561
            F8E98F3D5953FE45D5CAEC06680AA974404F6B59E2B0B162B272F4B0E1E1A0CF
            DF6492F54C9B9C2C834874F8AF8E7751C921A277AE30CCE1DE45A8C282FEB841
            0B260B380CD12A563159BC87E889A15B2604C2ED3EA8E4F171EFD16495B6823C
            B1FE534325F31911592D3E9393853D5EAF252A888983F838CAB84535BC6CBD81
            F6D2C50F440959A8174BE376F8EFDDB205B52F1293A5FD0C5D4DB4EAC7A21B7A
            435CB561259AAC2235C8B11CBBB51184C526230BE51503220BF5E8558FC30BC8
            08CE47268B2915BE272E98A31BE306A284AC9491885C3F3E7E73DD3616152351
            4CD6272E9A056DF0AE6729666E15AF3C106441D618277F88BFB6054BB2B05E33
            3DAF4AAF178877A0DFC4CF276A74550F4403CC1B5142D6F109102D88C9C204CD
            087F0F8EBE6D7105FDB6BBAF8D270B1F00FB9E2E4BB2B0A70A219C650D0A452B
            9E048E3866ADEBAFE8C575BB7C02B2BC3C9891855124FABB803D0855C6A22704
            DFA500B2D08BBD1A44F3D891851D59E9D2A9537246DADF36923C8CE55495337A
            FFCD9AACE6682BA0DDF6E0EA5DCBD186106F954064556CC4EE1CE604B322EB46
            7F745A1A57D6A29968C5A3EF8C58D6F4421FD09E791CA59C643D0C31E39CE8F4
            ABC8BDE8A8B0228F160C59D0D29D989DF788112EF224EBBA447E22191177FCA4
            43D5CE0D6381267AB2B164A126781A64616245E912040874FC0D3D1D8817D318
            B2F00708EAA6A9B2206BBD273A2DD9D1024DCDF0D09C88D4C083970E34C8C2BC
            6FBE3405CF59FA8FD18F8C78A6C592855D1A0A4F8A604C16D6D8F5AB68D230F5
            A118AC1635AD8017A53C4B139CEBEDDB96874064F9A12BFA1981A31BDBA1C335
            73069C24202BAC1BF667FC52C99CACD1E750C928AE48C182DB2E100231FD1390
            651D0B6876C21A44D6B232F46B2E0FEC6B83397DF991D8AA1E4716A4FD16F36C
            DAB6F20B7606932573058F89902916EC1A3950B6E9B4B593FEF7C16479D90294
            48E85DA9646F1880B6667106DA8594ED40BF8425FB7F3C59F860BC456AE2F8FE
            58B250EE0A20B2B6A1C5368E3B849FE889B6EAD7CA9D9550891FF42B680AD128
            6042167AC049C8C24AA42A7F017D23DA6E364AC304D3BA14113E0FF762F6EE35
            0A4C962CA943147A851C92E387BE65AE69F1D57713D2BD56BDF1837C3E7B41BF
            268D3918E78D91FB8D92BC2D0986E15100C7E08D34CE2A378E6B8A6B1AE9877E
            493E963C3C6279560E4232D535062B6B0E5C02264B863C2BAB0C7D9673BE68CB
            1B3E4FF4791D78EE13E65C396B63F1D8014B4AB92A80F80B09A835C72A0FF155
            5A5BB4F2E7F600ACF975D7C841A8B4D30B89CE464C969733A23CE21E81AA164B
            56E862440277EA837AD57FA8F49D6FC2287CB1E2FF3346622386AB367A4693FC
            6B25649D46FE13120A013B3CF496F99D54338279D34105A7EC5069EB9318BD15
            42D3243E50AAA417527A84DDA51091851A0E8DCD0E7929B5165CBE7959AC7AD2
            E51A468D267AF7742A10A5039308022960A661E1614408B236AF47AD833436E2
            94B2E956A83DF84553691217E3A1FDB5A68DDB8F4A56823E9CD69919AE8C2945
            9C65C15512FFF3A38722A7495C546C20598BAE63A5FDE2FF0AC8DE45F4933749
            FAD0079A5E83BE3DFF8E85B0575EE5F1156E1158914C9C61A9A19597283A43EE
            4CBB1199CE68A503E4BFE2C9B84863E18873FE17AFFF0BF9D53B52AD10109B40
            C495CA6697AB5D7749353070D8B762AF5E22B550D6864452B27CCE255C3A68B1
            98860B4C55940DE470C4B3DBC379D23CDDF69E3983C620671C83FD5F752F9EC0
            0747BE73CD2528B4070CAD09228A34547552385CF8AD0863AD3F173EF650D15B
            AA8EDFE73F88C6E0F541805289B8F9E846902FB184AC2FFA345D85669A4D8722
            CBFFC0ABD6A3A6202501277612FB18577D85C90EE8131DD0416218D23F557461
            DA6309A18E1F019753F9E2D93F7039A0DC55A2F444BF4EB064ED71A245957557
            A5EA69C8661E2896CB66E46CDEA980A4976B30D4A188B0546C18F20FE1460AA1
            604CF2ED23CBF141F946B8F4DCD6CE209B9B5DB32497C6805795842CDFB51065
            9C37BE784D306387C581023FF7BE88487C263B16FE0B8CD9C5A0207A7D703309
            1F1AA5B78884C3FDC379C4E1133B2B35D1404A55BB83E4CF4891C808BCEFAA79
            82E8E21AB5F375A2E61F7A6632235994B2C9008DDD8D48452D89954CF58A0786
            1CB389E2B6AB790B6F29BE299FA8C65CF42201E286DF0BECC3F7CF41DE55D5DD
            4F56BBFB9D5A86D12CD965E0175357D4911AF69D1B4C72DA062E7B2E4AB6F5F7
            D7102FAEF3FA1B3F870E360106DADAFE7A12D4D6AB0CFA06A7FCB915B938E06F
            E4DB602BFF73D90169E9B7FC090959110AB129D55AAAA67675F07F6FC3BEDE4C
            DEB17E7CEB3A8A482E77FC1F0C70CD41565CBC120000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. Astra Honda Motor')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kawasan MM2100 Blok KK No.22'
            'Cikarang Barat,Kabupaten Bekasi'
            'Indonesia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kepada')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 79.370130000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 102.047310000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 79.370130000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'VENDORNAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VENDORNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 102.047310000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 79.370130000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PO Number')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 98.267780000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PO Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 79.370130000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 98.267780000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 79.370130000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'PURCHASEID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PURCHASEID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 102.047310000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'PURCHASEDATE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PURCHASEDATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Itemid')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 287.244280000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item Name')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Price')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Line Amount')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PURCHASEID=PURCHASEID'
      'VENDACCOUNT=VENDACCOUNT'
      'VENDORNAME=VENDORNAME'
      'PURCHASEDATE=PURCHASEDATE'
      'ISPPN=ISPPN'
      'TOTALAMOUNT=TOTALAMOUNT'
      'GRANDTOTAL=GRANDTOTAL'
      'ITEMID=ITEMID'
      'ITEMNAME=ITEMNAME'
      'QTY=QTY'
      'UNIT=UNIT'
      'PRICE=PRICE'
      'LINEAMOUNT=LINEAMOUNT')
    DataSet = FDQuReport
    BCDToCurrency = False
    Left = 643
    Top = 351
  end
  object FDQuReport: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM vPurchase')
    Left = 355
    Top = 351
  end
  object DataSource1: TDataSource
    DataSet = FDQuReport
    Left = 739
    Top = 351
  end
end
