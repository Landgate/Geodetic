(*******************************************************************************
@FormUnit BseBaselineCertificate;

@Description
  Prints or preview the Baseline Calibration Certificate.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseBaselineCertificate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, QRPDFFilt, jpeg, grimgctrl;

type
  TfrmBaselineCertificate = class(TForm)
    qrEDM: TQuickRep;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    qrdataPageNum: TQRSysData;
    qrdataDate: TQRSysData;
    qrlblCopyright: TQRLabel;
    lblGeographicServices: TQRLabel;
    qrshapeHorizontalLine: TQRShape;
    imageAccreditation: TQRImage;
    HeaderBand: TQRBand;
    lblVersionNumber: TQRLabel;
    QRShape2: TQRShape;
    imageAuthority: TQRImage;
    QRLabel14: TQRLabel;
    lblJobIdentification: TQRLabel;
    lblJobDescription: TQRLabel;
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
    qrbandSummary: TQRBand;
    QRLabel23: TQRLabel;
    lblTraceability: TQRRichText;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    dbTxtUncertainty: TQRDBText;
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
    lblCoverageFactor: TQRLabel;
    lblHeader1B: TQRLabel;
    QRSysData1: TQRSysData;
    lblTotalPages: TQRLabel;
    lblLineTraceability2: TQRShape;
    lblDate1: TQRLabel;
    lblDateLine1: TQRShape;
    lblDate2: TQRLabel;
    lblDateLine2: TQRShape;
    QRLabel8: TQRLabel;
    lblExpiryDate: TQRLabel;
    memAccreditationLogoTitle: TQRMemo;
    qrmemoStatement: TQRMemo;
    QRLabel5: TQRLabel;
    lblAuthorityAddress: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure qrEDMStartPage(Sender: TCustomQuickRep);
    procedure dbTxtUncertaintyPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaselineCertificate: TfrmBaselineCertificate;

implementation

{$R *.DFM}
uses BSEdmMain, BSEDM;

(*******************************************************************************
@procedure qrEDMStartPage(Sender: TCustomQuickRep);

@description
  Default cursor is used.
*******************************************************************************)
procedure TfrmBaselineCertificate.dbTxtUncertaintyPrint(sender: TObject;
  var Value: string);
begin
  if Pos('±', Value) = 0 then
    Value := '±'+Value;
end;

procedure TfrmBaselineCertificate.qrEDMStartPage(Sender: TCustomQuickRep);
begin
  Screen.Cursor := crDefault;
end;

end.
