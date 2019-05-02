(*******************************************************************************
@FormUnit BseReport1A;

@Description
  Prints or preview the EDM Calibration Report.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseReport1A;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, QRPDFFilt;

type
  TfrmReport1A = class(TForm)
    qrEDM: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    lblVersionNumber: TQRLabel;
    QRShape2: TQRShape;
    imageAuthority: TQRImage;
    lblHeader: TQRLabel;
    lblJobIdentification: TQRLabel;
    lblTotalPages: TQRLabel;
    lblJobDescription: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    C: TQRLabel;
    QRLabel5: TQRLabel;
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
    lblCalibrationDate: TQRLabel;
    lblObserverName: TQRLabel;
    lblComputationDate: TQRLabel;
    lblComputationTime: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape5: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    qrlblCopyright: TQRLabel;
    QRLabel9: TQRLabel;
    qrmemoStatement: TQRMemo;
    QRShape6: TQRShape;
    imageAccreditation: TQRImage;
    QRSysData1: TQRSysData;
    QRLabel15: TQRLabel;
    memAccreditationLogoTitle: TQRMemo;
    QRLabel4: TQRLabel;
    lblOwnerAddressFullReport: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure qrEDMBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrEDMNeedData(Sender: TObject; var MoreData: Boolean);
    procedure qrEDMAfterPrint(Sender: TObject);
  private
    { Private declarations }
    sPageCount, sLineCount: integer;
    strReportPath : String;
    strReportFilePath : String;
    strReportFileName : String;
    sReportCount: Integer;
    tfFile: TextFile;
  public
    { Public declarations }
    sReportTotal: Integer;
    sTotalPages: Integer;
    isEndPage: Boolean;
  end;

var
  frmReport1A: TfrmReport1A;

implementation

{$R *.DFM}

(*******************************************************************************
@procedure qrEDMBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);

@description
  Locates the calibration report files.
*******************************************************************************)
procedure TfrmReport1A.qrEDMBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  // You must reset your data in the BeforePrint event
  // or when you print from the preview, the report will
  // start with the last value(s)
  sPageCount := 1;
  sLineCount := 0;
  sReportCount := 0;
  isEndPage := False;
  strReportPath := ExtractFilePath(Application.ExeName);
  strReportFilePath := strReportPath + 'CALIB.B0';

  Inc(sReportCount);
  strReportFileName := strReportFilePath + IntToStr(sReportCount);
  if FileExists(strReportFileName) then
  begin
    AssignFile(tfFile, strReportFileName);
    Reset(tfFile);
  end;
end;

(*******************************************************************************
@procedure qrEDMNeedData(Sender: TObject; var MoreData: Boolean);

@description
  Converts the calibration files to Quick Reports.
*******************************************************************************)
procedure TfrmReport1A.qrEDMNeedData(Sender: TObject;
  var MoreData: Boolean);
var
  strDetailLine: String;
  doContinue: Boolean;
  cKey: Char;
  sKey: Integer;
begin
  // If MoreData is true, then QuickReport will print
  // another detail band.  When you set it to false,
  // the report is done.

  MoreData := True;
  if Eof(tfFile) then
  begin
    isEndPage := False;
    if sReportCount = sReportTotal then
    begin
      MoreData := False;
      CloseFile(tfFile);
    end
    else
    begin
      MoreData := True;
      Inc(sPageCount);
      // qrEDM.NewPage;
      // Get next file
      Inc(sReportCount);
      strReportFileName := strReportFilePath + IntToStr(sReportCount);
      CloseFile(tfFile);

      if FileExists(strReportFileName) then
      begin
        AssignFile(tfFile, strReportFileName);
        Reset(tfFile);
      end;
    end;
  end;

  if MoreData then
  begin
    doContinue := True;

    while doContinue do
    begin
      Inc(sLineCount);
      Readln(tfFile, strDetailLine);

      if Eof(tfFile) then
      begin
        doContinue := False;
        QRLabel1.Caption := strDetailLine;
        MoreData := True;
      end;

      if (sLineCount > 14) and doContinue then
      begin
        doContinue := False;
        if length(strDetailLine) > 0 then
        begin
          cKey := strDetailLine[1];
          sKey := Ord(cKey);
          if sKey = 12 then
          begin
            sLineCount := 0;
            strDetailLine := '';
            Inc(sPageCount);
            qrEDM.NewColumn;
          end;
        end;
        QRLabel1.Caption := strDetailLine;
        MoreData := True;
      end
    end;
    // Here's how to set the progress bar
    qrEDM.QRPrinter.Progress := (Longint(sReportCount) * 100) div sTotalPages;
  end
  else
    qrEDM.QRPrinter.Progress := 100;
    Screen.Cursor := crDefault;
end;

procedure TfrmReport1A.qrEDMAfterPrint(Sender: TObject);
begin
  // CloseFile(tfFile);
end;

end.
