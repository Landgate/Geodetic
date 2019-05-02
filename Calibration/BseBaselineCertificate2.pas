(*******************************************************************************
@FormUnit BseBaselineCertificate2;

@Description
  Prints or preview the Baseline Calibration Certificate.
  Includes empty space for letter head

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseBaselineCertificate2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, QRPDFFilt;

type
  TfrmBaselineCertificate2 = class(TForm)
    qrEDM: TQuickRep;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    qrdataPageNum: TQRSysData;
    lblGeographicServices: TQRLabel;
    qrshapeHorizontalLine: TQRShape;
    QRBand1: TQRBand;
    lblVersionNumber: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    lblJobIdentification: TQRLabel;
    lblJobDescription: TQRLabel;
    lblObserver: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel25: TQRLabel;
    lblCertificationDate: TQRLabel;
    lblCalibrationDate: TQRLabel;
    lblComputationDate: TQRLabel;
    lblObserverName: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    lblBaselineName: TQRLabel;
    lblBaselineAuthority: TQRLabel;
    lblBaselineLocation: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    lblPrismConstant2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    lblEDMOwner: TQRLabel;
    lblEDMSerialNumber: TQRLabel;
    lblEDMModel: TQRLabel;
    lblEDMMake: TQRLabel;
    lblPrismMake: TQRLabel;
    lblPrismModel: TQRLabel;
    lblPrismSerialNumber: TQRLabel;
    lblPrismConstant: TQRLabel;
    QRShape5: TQRShape;
    QRSysData1: TQRSysData;
    lblTotalPages: TQRLabel;
    QRLabel8: TQRLabel;
    lblExpiryDate: TQRLabel;
    QRBand3: TQRBand;
    lblLineTraceability: TQRShape;
    memProcedure: TQRMemo;
    lblEntry: TQRLabel;
    lblPosition: TQRLabel;
    lblSign: TQRLabel;
    lblStandards: TQRLabel;
    lblEntryLine1: TQRShape;
    lblPositionLine1: TQRShape;
    lblSignLine1: TQRShape;
    lblEntry2: TQRLabel;
    lblPosition2: TQRLabel;
    lblSign2: TQRLabel;
    lblEntryLine2: TQRShape;
    lblPositionLine2: TQRShape;
    lblSignLine2: TQRShape;
    lblTraceability: TQRRichText;
    lblLineTraceability2: TQRShape;
    lblDate1: TQRLabel;
    lblDateLine1: TQRShape;
    lblDate2: TQRLabel;
    lblDateLine2: TQRShape;
    qrbandSummary: TQRBand;
    QRLabel23: TQRLabel;
    lblCoverageFactor: TQRLabel;
    lblHeader1B: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel39: TQRLabel;
    Correction: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    imageAccreditation: TQRImage;
    memAccreditationLogoTitle: TQRMemo;
    qrmemoStatement: TQRMemo;
    qrlblCopyright: TQRLabel;
    qrdataDate: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
    QRPDFFilter2: TQRPDFFilter;
    procedure qrEDMStartPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaselineCertificate2: TfrmBaselineCertificate2;

implementation

{$R *.DFM}

(*******************************************************************************
@procedure qrEDMStartPage(Sender: TCustomQuickRep);

@description
  Default cursor is used.
*******************************************************************************)
procedure TfrmBaselineCertificate2.qrEDMStartPage(Sender: TCustomQuickRep);
begin
  Screen.Cursor := crDefault;
end;

end.
