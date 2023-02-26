object frmCreatePurchaseOrder: TfrmCreatePurchaseOrder
  Left = 0
  Top = 0
  Caption = 'Create Purchase Order'
  ClientHeight = 214
  ClientWidth = 493
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
    Width = 493
    Height = 214
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    ExplicitWidth = 487
    ExplicitHeight = 167
    object RzLabel1: TRzLabel
      Left = 58
      Top = 53
      Width = 64
      Height = 13
      Caption = 'Vendor Name'
    end
    object RzLabel2: TRzLabel
      Left = 52
      Top = 80
      Width = 70
      Height = 13
      Caption = 'Purchase Date'
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 128
      Top = 45
      Width = 217
      Height = 21
      DataField = 'VENDACCOUNT'
      DataSource = frmPembelian.DsHeader
      DragCursor = crHandPoint
      KeyField = 'VENDACCOUNT'
      ListField = 'VENDORNAME'
      ListSource = frmPembelian.DsVendor
      TabOrder = 0
    end
    object RzDBDateTimeEdit1: TRzDBDateTimeEdit
      Left = 128
      Top = 72
      Width = 121
      Height = 21
      DataSource = frmPembelian.DsHeader
      DataField = 'PURCHASEDATE'
      DragCursor = crHandPoint
      TabOrder = 1
      EditType = etDate
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 128
      Top = 99
      Width = 55
      Height = 15
      DataField = 'ISPPN'
      DataSource = frmPembelian.DsHeader
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Caption = 'Is PPN?'
      DragCursor = crHandPoint
      TabOrder = 2
    end
    object RzPanel1: TRzPanel
      Left = 2
      Top = 171
      Width = 489
      Height = 41
      Align = alBottom
      BorderOuter = fsBump
      TabOrder = 3
      ExplicitLeft = 152
      ExplicitTop = 160
      ExplicitWidth = 185
      object btnOK: TRzBitBtn
        Left = 400
        Top = 8
        TabOrder = 0
        OnClick = btnOKClick
        Kind = bkOK
      end
      object btnCancel: TRzBitBtn
        Left = 296
        Top = 8
        TabOrder = 1
        OnClick = btnCancelClick
        Kind = bkCancel
      end
    end
  end
end
