inherited frmUnit: TfrmUnit
  Caption = 'Master Unit'
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitTop = -4
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    inherited RzPanel1: TRzPanel
      object RzLabel1: TRzLabel
        Left = 63
        Top = 27
        Width = 19
        Height = 13
        Caption = 'Unit'
      end
      object RzLabel2: TRzLabel
        Left = 32
        Top = 54
        Width = 49
        Height = 13
        Caption = 'Unit Name'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 88
        Top = 24
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'UNIT'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 88
        Top = 51
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'UNITNAME'
        TabOrder = 1
      end
    end
    inherited RzPanel2: TRzPanel
      inherited SMDBGrid1: TSMDBGrid
        DataSource = DataSource1
        Columns = <
          item
            Expanded = False
            FieldName = 'UNIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITNAME'
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'SELECT * FROM UUNIT')
    object FDQuery1UNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1UNITNAME: TWideStringField
      FieldName = 'UNITNAME'
      Origin = 'UNITNAME'
      Size = 50
    end
  end
end
