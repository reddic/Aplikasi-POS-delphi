object FrmCreateSalesOrder: TFrmCreateSalesOrder
  Left = 0
  Top = 0
  Caption = 'Create Sales Order'
  ClientHeight = 201
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 332
    Height = 201
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 14
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Customer Name'
    end
    object RzLabel2: TRzLabel
      Left = 39
      Top = 64
      Width = 51
      Height = 13
      Caption = 'Sales Date'
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 104
      Top = 24
      Width = 209
      Height = 21
      DataField = 'CUSTACCOUNT'
      DataSource = FrmPenjualan.DsHeader
      KeyField = 'CUSTACCOUNT'
      ListField = 'CUSTOMERNAME'
      ListSource = FrmPenjualan.DsCustomer
      TabOrder = 0
    end
    object RzDBDateTimeEdit1: TRzDBDateTimeEdit
      Left = 104
      Top = 56
      Width = 160
      Height = 21
      DataSource = FrmPenjualan.DsHeader
      DataField = 'SALESDATE'
      TabOrder = 1
      Date = 44939.000000000000000000
      EditType = etDate
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 104
      Top = 89
      Width = 50
      Height = 15
      DataField = 'ISPPN'
      DataSource = FrmPenjualan.DsHeader
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Caption = 'Is PPN'
      TabOrder = 2
    end
    object RzPanel1: TRzPanel
      Left = 2
      Top = 158
      Width = 328
      Height = 41
      Align = alBottom
      BorderOuter = fsBump
      TabOrder = 3
      object btnCancel: TRzBitBtn
        Left = 106
        Top = 8
        TabOrder = 0
        OnClick = btnCancelClick
        Kind = bkCancel
      end
      object RzBitOK: TRzBitBtn
        Left = 187
        Top = 8
        TabOrder = 1
        OnClick = RzBitOKClick
        Kind = bkOK
      end
    end
  end
end
