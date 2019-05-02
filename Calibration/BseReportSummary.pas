(*******************************************************************************
@FormUnit BseReportSummary;

@Description
  Prints or preview the EDM Calibration Certificate.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseReportSummary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, QRPDFFilt;

type
  TfrmReportSummary = class(TForm)
    qrEDM: TQuickRep;
    PageFooterBand1: TQRBand;
    QRShape1: TQRShape;
    qrdataPageNum: TQRSysData;
    qrdataDate: TQRSysData;
    qrlblCopyright: TQRLabel;
    lblGeographicServices: TQRLabel;
    qrmemoStatement: TQRMemo;
    qrshapeHorizontalLine: TQRShape;
    imageAccreditation: TQRImage;
    QRBand1: TQRBand;
    lblVersionNumber: TQRLabel;
    QRShape2: TQRShape;
    imageAuthority: TQRImage;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    lblJobIdentification: TQRLabel;
    QRBand3: TQRBand;
    QRShape8: TQRShape;
    lblAtmosHeader: TQRLabel;
    lblLineTraceability: TQRShape;
    memTraceability: TQRMemo;
    memProcedure: TQRMemo;
    lblEntry: TQRLabel;
    lblPosition: TQRLabel;
    lblSign: TQRLabel;
    lblJobDescription: TQRLabel;
    qrbandSummary: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lblObserver: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape4: TQRShape;
    lblHeader2: TQRRichText;
    QRShape6: TQRShape;
    lblComputationTime: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lblPrismConstant2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    lblNotation: TQRLabel;
    lblSignificant: TQRLabel;
    lblTermLine: TQRShape;
    lblTermHeader: TQRLabel;
    lblRange: TQRLabel;
    lblLineTerm2: TQRShape;
    lblCalibrationDate: TQRLabel;
    lblComputationDate: TQRLabel;
    lblObserverName: TQRLabel;
    lblEDMOwner: TQRLabel;
    lblEDMSerialNumber: TQRLabel;
    lblEDMModel: TQRLabel;
    lblEDMMake: TQRLabel;
    lblPrismMake: TQRLabel;
    lblPrismModel: TQRLabel;
    lblPrismSerialNumber: TQRLabel;
    lblPrismConstant: TQRLabel;
    lblBaselineName: TQRLabel;
    lblBaselineAuthority: TQRLabel;
    lblBaselineLocation: TQRLabel;
    lblBaselineDate: TQRLabel;
    memCorrectionTerms: TQRMemo;
    memIC: TQRMemo;
    memAtmos: TQRMemo;
    QRLabel22: TQRLabel;
    memUncertainty: TQRRichText;
    lblUncertainty: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    lblStandards: TQRLabel;
    QRShape5: TQRShape;
    lblTerm3: TQRLabel;
    lblV10: TQRLabel;
    lblV6: TQRLabel;
    lblV9: TQRLabel;
    lblV2: TQRLabel;
    lblV5: TQRLabel;
    lblTerm2: TQRLabel;
    lblV8: TQRLabel;
    lblV1: TQRLabel;
    lblTerm1: TQRLabel;
    lblV3: TQRLabel;
    lblEntryLine1: TQRShape;
    lblPositionLine1: TQRShape;
    lblSignLine1: TQRShape;
    lblEntry2: TQRLabel;
    lblPosition2: TQRLabel;
    lblSign2: TQRLabel;
    lblEntryLine2: TQRShape;
    lblPositionLine2: TQRShape;
    lblSignLine2: TQRShape;
    lblDist1: TQRLabel;
    lblDist2: TQRLabel;
    lblDist3: TQRLabel;
    lblDist4: TQRLabel;
    lblDist5: TQRLabel;
    lblDist6: TQRLabel;
    lblUncertainty1: TQRLabel;
    lblUncertainty2: TQRLabel;
    lblUncertainty3: TQRLabel;
    lblUncertainty4: TQRLabel;
    lblUncertainty5: TQRLabel;
    lblUncertainty6: TQRLabel;
    lblStandard1: TQRLabel;
    lblStandard2: TQRLabel;
    lblStandard3: TQRLabel;
    lblStandard4: TQRLabel;
    lblStandard5: TQRLabel;
    lblStandard6: TQRLabel;
    lblTest1: TQRLabel;
    lblTest2: TQRLabel;
    lblTest3: TQRLabel;
    lblTest4: TQRLabel;
    lblTest5: TQRLabel;
    lblTest6: TQRLabel;
    lblHeader1A: TQRLabel;
    lblHeader1B: TQRLabel;
    QRSysData1: TQRSysData;
    lblTotalPages: TQRLabel;
    lblPrismConstantBeenSetInEDM: TQRLabel;
    QRLabel26: TQRLabel;
    lblOwnerAddress: TQRLabel;
    memAccreditationLogoTitle: TQRMemo;
    lblDate1: TQRLabel;
    lblDateLine1: TQRShape;
    lblDate2: TQRLabel;
    lblDateLine2: TQRShape;
    QRLabel27: TQRLabel;
    lblAuthorityAddress: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure qrbandSummaryAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrEDMStartPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSummary: TfrmReportSummary;

implementation

{$R *.DFM}
uses BSEdmMain, BSEDM;

(*******************************************************************************
@procedure qrbandSummaryAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);

@description
  Prints the correct page number for each page in the report.
*******************************************************************************)
procedure TfrmReportSummary.qrbandSummaryAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  qrEDM.NewColumn;
  lblTotalPages.caption := ' of '+IntToStr(qrEDM.PageNumber);
end;

(*******************************************************************************
@procedure qrEDMStartPage(Sender: TCustomQuickRep);

@description
  Default cursor is used.
*******************************************************************************)
procedure TfrmReportSummary.qrEDMStartPage(Sender: TCustomQuickRep);
begin
  Screen.Cursor := crDefault;
end;

end.
