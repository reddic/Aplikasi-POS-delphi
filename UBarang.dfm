inherited frmBarang: TfrmBarang
  Caption = 'Master Data Barang'
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitTop = 0
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    inherited RzPanel1: TRzPanel
      Height = 167
      ExplicitLeft = -2
      ExplicitTop = -2
      ExplicitHeight = 167
      object RzLabel1: TRzLabel
        Left = 58
        Top = 19
        Width = 35
        Height = 13
        Caption = 'Item Id'
      end
      object RzLabel2: TRzLabel
        Left = 41
        Top = 51
        Width = 52
        Height = 13
        Caption = 'Item Name'
      end
      object RzLabel3: TRzLabel
        Left = 74
        Top = 71
        Width = 19
        Height = 13
        Caption = 'Unit'
      end
      object RzLabel4: TRzLabel
        Left = 24
        Top = 105
        Width = 69
        Height = 13
        Caption = 'Minimum Stock'
      end
      object RzLabel5: TRzLabel
        Left = 24
        Top = 136
        Width = 73
        Height = 13
        Caption = 'Maximum Stock'
      end
      object RzLabel6: TRzLabel
        Left = 370
        Top = 24
        Width = 48
        Height = 13
        Caption = 'Harga Beli'
      end
      object RzLabel7: TRzLabel
        Left = 367
        Top = 51
        Width = 51
        Height = 13
        Caption = 'Harga Jual'
      end
      object RzDBNumericEdit2: TRzDBNumericEdit
        Left = 99
        Top = 124
        Width = 65
        Height = 21
        DataSource = DataSource1
        DataField = 'MAXSTOCK'
        Alignment = taLeftJustify
        TabOrder = 0
        DisplayFormat = ',0;(,0)'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 99
        Top = 16
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'ITEMID'
        TabOrder = 1
      end
      object RzDBEdit2: TRzDBEdit
        Left = 99
        Top = 43
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'ITEMNAME'
        TabOrder = 2
      end
      object RzDBNumericEdit1: TRzDBNumericEdit
        Left = 99
        Top = 97
        Width = 65
        Height = 21
        DataSource = DataSource1
        DataField = 'MINSTOCK'
        Alignment = taLeftJustify
        TabOrder = 3
        DisplayFormat = ',0;(,0)'
      end
      object RzDBNumericEdit3: TRzDBNumericEdit
        Left = 424
        Top = 43
        Width = 65
        Height = 21
        DataSource = DataSource1
        DataField = 'HARGAJUAL'
        Alignment = taLeftJustify
        TabOrder = 4
        DisplayFormat = ',0;(,0)'
      end
      object RzDBNumericEdit4: TRzDBNumericEdit
        Left = 424
        Top = 16
        Width = 65
        Height = 21
        DataSource = DataSource1
        DataField = 'HARGABELI'
        Alignment = taLeftJustify
        TabOrder = 5
        DisplayFormat = ',0;(,0)'
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 99
        Top = 70
        Width = 145
        Height = 21
        DataField = 'UNIT'
        DataSource = DataSource1
        KeyField = 'UNIT'
        ListField = 'UNIT'
        ListSource = DsUnit
        TabOrder = 6
      end
      object RzDBCheckBox1: TRzDBCheckBox
        Left = 423
        Top = 70
        Width = 66
        Height = 15
        DataField = 'ISACTIVE'
        DataSource = DataSource1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        Caption = 'Is Active?'
        TabOrder = 7
      end
    end
    inherited RzPanel2: TRzPanel
      Top = 169
      Height = 243
      ExplicitLeft = 2
      ExplicitTop = 137
      ExplicitWidth = 661
      ExplicitHeight = 275
      inherited SMDBGrid1: TSMDBGrid
        Height = 239
        DataSource = DataSource1
        ReadOnly = True
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMNAME'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MINSTOCK'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAXSTOCK'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HARGABELI'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HARGAJUAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISACTIVE'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from INVENTTABLE')
    Left = 600
    Top = 57
    object FDQuery1ITEMID: TWideStringField
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ITEMNAME: TWideStringField
      FieldName = 'ITEMNAME'
      Origin = 'ITEMNAME'
      Size = 30
    end
    object FDQuery1UNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object FDQuery1MINSTOCK: TFMTBCDField
      FieldName = 'MINSTOCK'
      Origin = 'MINSTOCK'
      Precision = 18
      Size = 2
    end
    object FDQuery1MAXSTOCK: TFMTBCDField
      FieldName = 'MAXSTOCK'
      Origin = 'MAXSTOCK'
      Precision = 18
      Size = 2
    end
    object FDQuery1HARGABELI: TFMTBCDField
      FieldName = 'HARGABELI'
      Origin = 'HARGABELI'
      Precision = 18
      Size = 2
    end
    object FDQuery1HARGAJUAL: TFMTBCDField
      FieldName = 'HARGAJUAL'
      Origin = 'HARGAJUAL'
      Precision = 18
      Size = 2
    end
    object FDQuery1ISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
      Origin = 'ISACTIVE'
    end
  end
  inherited DataSource1: TDataSource
    Left = 600
    Top = 121
  end
  object FDQuUnit: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * from uunit')
    Left = 522
    Top = 155
    object FDQuUnitUNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuUnitUNITNAME: TWideStringField
      FieldName = 'UNITNAME'
      Origin = 'UNITNAME'
      Size = 50
    end
  end
  object DsUnit: TDataSource
    DataSet = FDQuUnit
    Left = 538
    Top = 107
  end
end
