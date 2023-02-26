program POS_Arif_Faisal;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {frmMain},
  UMasterData in 'UMasterData.pas' {frmMasterData},
  UDM in 'UDM.pas' {DM: TDataModule},
  UBarang in 'UBarang.pas' {frmBarang},
  USupplier in 'USupplier.pas' {frmSupplier},
  UCustomer in 'UCustomer.pas' {frmCustomer},
  UUnit in 'UUnit.pas' {frmUnit},
  UTransaksiData in 'UTransaksiData.pas' {frmTransaksiData},
  UPenjualan in 'UPenjualan.pas' {frmPenjualan},
  UPembelian in 'UPembelian.pas' {frmPembelian},
  UCreatePO in 'UCreatePO.pas' {frmCreatePurchaseOrder},
  UCreateSO in 'UCreateSO.pas' {frmCreateSalesOrder},
  UAddItem in 'UAddItem.pas' {frmAddItem},
  UPurchaseReport in 'UPurchaseReport.pas' {frmReportPurchase},
  USalesReport in 'USalesReport.pas' {frmReportSales},
  UUsers in 'UUsers.pas' {frmUsers},
  ULogin in 'ULogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
