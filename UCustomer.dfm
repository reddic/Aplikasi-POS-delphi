inherited frmCustomer: TfrmCustomer
  Caption = 'Master Customer'
  ClientHeight = 500
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitHeight = 539
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
    Height = 459
  end
  inherited Panel3: TPanel
    Height = 459
    inherited RzPanel1: TRzPanel
      Height = 183
      ExplicitHeight = 183
      object RzLabel1: TRzLabel
        Left = 24
        Top = 24
        Width = 88
        Height = 13
        Caption = 'Customer Account'
      end
      object RzLabel2: TRzLabel
        Left = 36
        Top = 51
        Width = 76
        Height = 13
        Caption = 'Customer Name'
      end
      object RzLabel3: TRzLabel
        Left = 62
        Top = 78
        Width = 50
        Height = 13
        Caption = 'Telephone'
      end
      object RzLabel4: TRzLabel
        Left = 94
        Top = 107
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object RzLabel5: TRzLabel
        Left = 83
        Top = 133
        Width = 29
        Height = 13
        Caption = 'NPWP'
      end
      object RzLabel6: TRzLabel
        Left = 328
        Top = 24
        Width = 74
        Height = 13
        Caption = 'Contact Person'
      end
      object RzLabel7: TRzLabel
        Left = 378
        Top = 51
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object RzLabel8: TRzLabel
        Left = 363
        Top = 78
        Width = 39
        Height = 13
        Caption = 'Address'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 118
        Top = 21
        Width = 131
        Height = 21
        DataSource = DataSource1
        DataField = 'CUSTACCOUNT'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 118
        Top = 48
        Width = 171
        Height = 21
        DataSource = DataSource1
        DataField = 'CUSTOMERNAME'
        TabOrder = 1
      end
      object RzDBEdit3: TRzDBEdit
        Left = 118
        Top = 75
        Width = 131
        Height = 21
        DataSource = DataSource1
        DataField = 'TELEPHONE'
        TabOrder = 2
      end
      object RzDBEdit4: TRzDBEdit
        Left = 118
        Top = 102
        Width = 131
        Height = 21
        DataSource = DataSource1
        DataField = 'FAX'
        TabOrder = 3
      end
      object RzDBEdit5: TRzDBEdit
        Left = 118
        Top = 129
        Width = 131
        Height = 21
        DataSource = DataSource1
        DataField = 'NPWP'
        TabOrder = 4
      end
      object RzDBEdit6: TRzDBEdit
        Left = 408
        Top = 21
        Width = 137
        Height = 21
        DataSource = DataSource1
        DataField = 'CONTACTPERSON'
        TabOrder = 5
      end
      object RzDBEdit7: TRzDBEdit
        Left = 408
        Top = 48
        Width = 137
        Height = 21
        DataSource = DataSource1
        DataField = 'EMAIL'
        TabOrder = 6
      end
      object RzDBMemo1: TRzDBMemo
        Left = 408
        Top = 75
        Width = 185
        Height = 89
        DataField = 'ADDRESS'
        DataSource = DataSource1
        TabOrder = 7
      end
    end
    inherited RzPanel2: TRzPanel
      Top = 185
      Height = 272
      ExplicitLeft = 2
      ExplicitTop = 137
      ExplicitWidth = 661
      ExplicitHeight = 275
      inherited SMDBGrid1: TSMDBGrid
        Height = 268
        DataSource = DataSource1
        Columns = <
          item
            Expanded = False
            FieldName = 'CUSTACCOUNT'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMERNAME'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEPHONE'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NPWP'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACTPERSON'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS'
            Width = 158
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from customer')
    Left = 608
    Top = 57
    object FDQuery1CUSTACCOUNT: TWideStringField
      FieldName = 'CUSTACCOUNT'
      Origin = 'CUSTACCOUNT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1CUSTOMERNAME: TWideStringField
      FieldName = 'CUSTOMERNAME'
      Origin = 'CUSTOMERNAME'
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
    Left = 576
    Top = 9
  end
end
