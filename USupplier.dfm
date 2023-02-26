inherited frmSupplier: TfrmSupplier
  Caption = 'Master Supplier'
  ClientHeight = 525
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitHeight = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitTop = 0
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
      ExplicitLeft = 2
      ExplicitTop = 0
      ExplicitHeight = 37
    end
  end
  inherited Panel2: TPanel
    Height = 484
  end
  inherited Panel3: TPanel
    Height = 484
    inherited RzPanel1: TRzPanel
      Height = 175
      ExplicitLeft = -2
      ExplicitTop = 4
      ExplicitHeight = 175
      object RzLabel1: TRzLabel
        Left = 20
        Top = 24
        Width = 76
        Height = 13
        Caption = 'Vendor Account'
      end
      object RzLabel2: TRzLabel
        Left = 32
        Top = 51
        Width = 64
        Height = 13
        Caption = 'Vendor Name'
      end
      object RzLabel3: TRzLabel
        Left = 46
        Top = 78
        Width = 50
        Height = 13
        Caption = 'Telephone'
      end
      object RzLabel4: TRzLabel
        Left = 78
        Top = 105
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object RzLabel5: TRzLabel
        Left = 67
        Top = 132
        Width = 29
        Height = 13
        Caption = 'NPWP'
      end
      object RzLabel6: TRzLabel
        Left = 344
        Top = 24
        Width = 74
        Height = 13
        Caption = 'Contact Person'
      end
      object RzLabel7: TRzLabel
        Left = 394
        Top = 48
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object RzLabel8: TRzLabel
        Left = 379
        Top = 75
        Width = 39
        Height = 13
        Caption = 'Address'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 102
        Top = 21
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'VENDACCOUNT'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 102
        Top = 48
        Width = 187
        Height = 21
        DataSource = DataSource1
        DataField = 'VENDORNAME'
        TabOrder = 1
      end
      object RzDBEdit3: TRzDBEdit
        Left = 102
        Top = 75
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'TELEPHONE'
        TabOrder = 2
      end
      object RzDBEdit4: TRzDBEdit
        Left = 102
        Top = 102
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'FAX'
        TabOrder = 3
      end
      object RzDBEdit5: TRzDBEdit
        Left = 102
        Top = 129
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'NPWP'
        TabOrder = 4
      end
      object RzDBEdit6: TRzDBEdit
        Left = 424
        Top = 21
        Width = 185
        Height = 21
        DataSource = DataSource1
        DataField = 'CONTACTPERSON'
        TabOrder = 5
      end
      object RzDBEdit7: TRzDBEdit
        Left = 424
        Top = 48
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'EMAIL'
        TabOrder = 6
      end
      object RzDBMemo1: TRzDBMemo
        Left = 424
        Top = 75
        Width = 217
        Height = 89
        DataField = 'ADDRESS'
        DataSource = DataSource1
        TabOrder = 7
      end
    end
    inherited RzPanel2: TRzPanel
      Top = 177
      Height = 305
      ExplicitLeft = 2
      ExplicitTop = 137
      ExplicitWidth = 661
      ExplicitHeight = 275
      inherited SMDBGrid1: TSMDBGrid
        Height = 301
        DataSource = DataSource1
        Columns = <
          item
            Expanded = False
            FieldName = 'VENDACCOUNT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDORNAME'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEPHONE'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NPWP'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACTPERSON'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS'
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from vendor')
    Left = 560
    Top = 9
    object FDQuery1VENDACCOUNT: TWideStringField
      FieldName = 'VENDACCOUNT'
      Origin = 'VENDACCOUNT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1VENDORNAME: TWideStringField
      FieldName = 'VENDORNAME'
      Origin = 'VENDORNAME'
      Size = 80
    end
    object FDQuery1TELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Origin = 'TELEPHONE'
      Size = 80
    end
    object FDQuery1FAX: TWideStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 50
    end
    object FDQuery1NPWP: TWideStringField
      FieldName = 'NPWP'
      Origin = 'NPWP'
      Size = 50
    end
    object FDQuery1CONTACTPERSON: TWideStringField
      FieldName = 'CONTACTPERSON'
      Origin = 'CONTACTPERSON'
      Size = 80
    end
    object FDQuery1EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object FDQuery1ADDRESS: TWideStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 250
    end
  end
  inherited DataSource1: TDataSource
    Left = 632
    Top = 9
  end
end
