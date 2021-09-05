(*******************************************************************************
@FormUnit Bse2Job

@Description
  A wizard guides you in calibrating EDM instruments or Baselines.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit Bse2Job;

interface

uses
  BseMisc,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, BtnEdit, wwdblook, ComCtrls, Db, Wwdatsrc,
  Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Mask, wwdbedit, RxLookup, Wwdbcomb,
  Wwdotdot, Wwkeycb, ValidEdt, QRExport, RxMemDS, DBGrids, DBCtrls,
  Qrctrls, QuickRpt, Variants, WwDBGrd2, fmOldLUMUnits, fmNewLUMUnits,
  fmLUMUnits, fmLUMUnitsNonDB;

type
  TObsDefault = record
    AtHeight : Double;
    ToHeight : Double;
    DryTemp  : Double;
    Pressure : Double;
    Humidity : Double;
    DryTemp2  : Double;
    Pressure2 : Double;
    Humidity2 : Double;
    AtPillarNo : String;
  end;

  TfrmJob = class(TForm)
    pcMain: TPageControl;
    tsJob: TTabSheet;
    tsMets: TTabSheet;
    tsEDM: TTabSheet;
    gbJob: TGroupBox;
    rbtnExisting: TRadioButton;
    rbtnNew: TRadioButton;
    lblHeader1: TLabel;
    pcExistingOrNew: TPageControl;
    tsExistingJob: TTabSheet;
    lblSelectJob: TLabel;
    tsNewJob: TTabSheet;
    lblEnterNewJob: TLabel;
    edtNewJobName: TEdit;
    pnlButtons1: TPanel;
    btnNext1: TBitBtn;
    lbl_WeatherConditions: TLabel;
    edtWeather: TEdit;
    Label3: TLabel;
    pnl_tsMets_Buttons: TPanel;
    lblInstrumentType: TLabel;
    lblAtInstrument: TLabel;
    lblInstrumentOwner: TLabel;
    lblInstrumentMake: TLabel;
    lblAtInstrumentModel: TLabel;
    edtInst1Owner: TEdit;
    lblEDMHEader: TLabel;
    btnBackMets: TBitBtn;
    pnlButtonsEDM: TPanel;
    btnBack3: TBitBtn;
    cmbInstrumentType: TComboBox;
    pnlEDM: TPanel;
    lblPage1: TLabel;
    lblPageMets: TLabel;
    btnNextMets: TBitBtn;
    lblPageEDM: TLabel;
    btnNext3: TBitBtn;
    btnNewMake: TBitBtn;
    btnNewModel: TBitBtn;
    btnNewInstrument: TBitBtn;
    tsPrism: TTabSheet;
    lbl_tsPrism_InstType: TLabel;
    lblToInstrument: TLabel;
    lblPrismOwner: TLabel;
    lblToInstrumentMake: TLabel;
    lblToInstrumentModel: TLabel;
    lblPrismHeader: TLabel;
    edtInst2Owner: TEdit;
    pnlButtonsPrism: TPanel;
    lblPagePrism: TLabel;
    btnBack4: TBitBtn;
    btnNext4: TBitBtn;
    btnNewPrismMake: TBitBtn;
    btnNewPrismModel: TBitBtn;
    btnNewPrism: TBitBtn;
    pnlPrismType: TPanel;
    tsAddInstrument: TTabSheet;
    pcInstrument: TPageControl;
    tsInstrumentMake: TTabSheet;
    lblMake: TLabel;
    lblCountry: TLabel;
    lblMakeHeader: TLabel;
    lblType: TLabel;
    edtInstrumentMake: TEdit;
    edtCountry: TEdit;
    edtType2: TEdit;
    tsInstrumentModel: TTabSheet;
    Label37: TLabel;
    lblModelStdDevConst: TLabel;
    lblModelStdDevPPM: TLabel;
    lblWaveLength: TLabel;
    lblModFreq: TLabel;
    Label40: TLabel;
    lblCarrierWaveLength: TLabel;
    lblModelHeader: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    bedtModelStdDevConst: TBtnEdit;
    edtModelStdDevPPM: TEdit;
    bedtWaveLength: TBtnEdit;
    bedtModFreq: TBtnEdit;
    edtModelComments: TEdit;
    bedtCarrierWaveLength: TBtnEdit;
    edtModelName: TEdit;
    edtMake3: TEdit;
    edtType3: TEdit;
    tsInstrument: TTabSheet;
    lblSerialNumber: TLabel;
    lblInstrumentHeader: TLabel;
    lblInstMake: TLabel;
    lblInstModel: TLabel;
    lblInstType: TLabel;
    edtInstrumentSerialNumber: TEdit;
    edtInstComments: TEdit;
    edtMake4: TEdit;
    edtModel4: TEdit;
    edtType4: TEdit;
    pnlButtonsInstMake: TPanel;
    btnInstrumentNext2: TBitBtn;
    btnInstrumentBack2: TBitBtn;
    lbl_tsMets_Job: TLabel;
    lbl_tsPrism_Job: TLabel;
    Panel11: TPanel;
    btnInstrumentNext3: TBitBtn;
    btnInstrumentBack3: TBitBtn;
    pnlButtonsInstrument: TPanel;
    btnInstrumentBack4: TBitBtn;
    tsObs: TTabSheet;
    pnl_tsObs_Buttons: TPanel;
    lblPageObs: TLabel;
    btnBackObs: TBitBtn;
    btnNextObs: TBitBtn;
    chkMetsDial: TCheckBox;
    pnlMets: TPanel;
    grpCorrections: TGroupBox;
    lblTempCorr: TLabel;
    lblPressureCor: TLabel;
    GroupBox2: TGroupBox;
    rbtnWetTemp: TRadioButton;
    rbtnHumidity: TRadioButton;
    rbtnDefaultHumidity: TRadioButton;
    pnlJobBottom: TPanel;
    lblObserver: TLabel;
    lblJobComments: TLabel;
    grpCalType: TGroupBox;
    rbtnInstrument: TRadioButton;
    rbtnBaseline: TRadioButton;
    edtObserverName: TEdit;
    edtJobComments: TEdit;
    grpStartDate: TGroupBox;
    lblDateStart: TLabel;
    lblTimeStart: TLabel;
    pickStartDate: TDateTimePicker;
    pickStartTime: TDateTimePicker;
    grpEndDate: TGroupBox;
    lblDateEnd: TLabel;
    lblTimeEnd: TLabel;
    pickEndDate: TDateTimePicker;
    pickEndTime: TDateTimePicker;
    pnlJob2: TPanel;
    lbl_tsMets_Baseline: TLabel;
    pnlBaseline2: TPanel;
    lblJobEDM: TLabel;
    pnlJob3: TPanel;
    lblBaselineEDM: TLabel;
    pnlBaseline3: TPanel;
    btnInstrumentNext4: TBitBtn;
    lbl_tsPrism_Baselinr: TLabel;
    pnlBaseline4: TPanel;
    pnlJob4: TPanel;
    lbl_tsInstrumentMake_Job: TLabel;
    pnlJobInst1: TPanel;
    lbl_tsInstrumentMake_Baseline: TLabel;
    pnlBaselineInst1: TPanel;
    Label59: TLabel;
    pnlJobInst2: TPanel;
    Label63: TLabel;
    pnlBaselineInst2: TPanel;
    lbl_tsInstrument_Job: TLabel;
    pnlJobInst3: TPanel;
    lbl_tsInstrument_Baseline: TLabel;
    pnlBaselineInst3: TPanel;
    btnDelete: TBitBtn;
    btnClose1: TBitBtn;
    btnClose2: TBitBtn;
    btnCloseEDM: TBitBtn;
    btnClose4: TBitBtn;
    btnCloseMake: TBitBtn;
    btnCloseModel: TBitBtn;
    btnCloseInstrument: TBitBtn;
    btnClose5: TBitBtn;
    btnHelp2: TBitBtn;
    btnHelpEDM: TBitBtn;
    lblInstComments: TLabel;
    edtInstrumentOwner: TEdit;
    rxdblcJob: TRxDBLookupCombo;
    rxdblcAtInstrumentMake: TRxDBLookupCombo;
    rxdblcAtInstrumentModel: TRxDBLookupCombo;
    rxdblcAtInstrument: TRxDBLookupCombo;
    rxdblcToInstrumentMake: TRxDBLookupCombo;
    rxdblcToInstrumentModel: TRxDBLookupCombo;
    rxdblcToInstrument: TRxDBLookupCombo;
    btnHelp1: TBitBtn;
    btnHelp4: TBitBtn;
    btnHelpModel: TBitBtn;
    btnHelpMake: TBitBtn;
    btnHelpNewInstrument: TBitBtn;
    btnHelp5: TBitBtn;
    gbPrismConstant: TGroupBox;
    rbtnPrismConstantInEDM: TRadioButton;
    rbtnNoPrismConstantInEDM: TRadioButton;
    dbedtPrismConstant: TwwDBEdit;
    Label16: TLabel;
    Label39: TLabel;
    lblInstOwner: TLabel;
    pnlConstants: TPanel;
    lblInstConst: TLabel;
    bedtInstConst2: TBtnEdit;
    lblInstScaleFact: TLabel;
    edtInstScaleFact: TEdit;
    pcStdDev: TPageControl;
    tsPrismConstant: TTabSheet;
    tsEDMStdDev: TTabSheet;
    gbNewPrism: TGroupBox;
    lblPrismConstant: TLabel;
    rbtnPrismConstantInEDM2: TRadioButton;
    rbtnNoPrismConstantInEDM2: TRadioButton;
    bedtInstConst: TBtnEdit;
    gbStdDevEDM: TGroupBox;
    lblInstStdDevConst: TLabel;
    bedtInstStdDevConst: TBtnEdit;
    lblInstStdDevPPM: TLabel;
    edtInstStdDevPPM: TEdit;
    tsUncertainty: TTabSheet;
    lblUncertaintyHeader: TLabel;
    pnlUncertainyButtons: TPanel;
    lblPageUncertainty: TLabel;
    btnbackUncertainty: TBitBtn;
    btnNextUncertainty: TBitBtn;
    btnCloseUncertainty: TBitBtn;
    btnHelpUncertainty: TBitBtn;
    tsBaseline: TTabSheet;
    pnlButtons2: TPanel;
    lblPage2: TLabel;
    btnBack2: TBitBtn;
    btnNextBaseline: TBitBtn;
    btnCloseBaseline: TBitBtn;
    btnHelpBaseline: TBitBtn;
    pcBaseline: TPageControl;
    TabSheet2: TTabSheet;
    tsBaselineInterval: TTabSheet;
    dbgridPillar: TwwDBGrid;
    dbnavPillars: TwwDBNavigator;
    dbnavPillarsFirst: TwwNavButton;
    dbnavPillarsPriorPage: TwwNavButton;
    dbnavPillarsPrior: TwwNavButton;
    dbnavPillarsNext: TwwNavButton;
    dbnavPillarsNextPage: TwwNavButton;
    dbnavPillarsLast: TwwNavButton;
    lblBaseline: TLabel;
    lblBaselineName: TLabel;
    dbedtBaseline: TwwDBEdit;
    rxdblcBaseline: TRxDBLookupCombo;
    dbedtRefHeight: TwwDBEdit;
    lblRefHeight: TLabel;
    lblRefHeightUnit: TLabel;
    lblBaseCalibrationDate: TLabel;
    dbedtCalibrationDate: TwwDBEdit;
    dbnavCertDist: TwwDBNavigator;
    dbnavCertDistFirst: TwwNavButton;
    dbnavCertDistPriorPage: TwwNavButton;
    dbnavCertDistPrior: TwwNavButton;
    dbnavCertDistNext: TwwNavButton;
    dbnavCertDistNextPage: TwwNavButton;
    dbnavCertDistLast: TwwNavButton;
    dbgridCertifiedDistance: TwwDBGrid;
    grpStdDev: TGroupBox;
    lblUncertaintyCentringEDM: TLabel;
    lblUncertaintyCentringPrism: TLabel;
    gbUncertaintyHeightDiff: TGroupBox;
    lblUncertaintyEDMHeight: TLabel;
    lblUncertaintyPrismHeight: TLabel;
    gbUncertaintyMetsUncertainty: TGroupBox;
    lblUncertaintyTemp: TLabel;
    lblUncertaintyPressure: TLabel;
    lblUncertaintyHumidity: TLabel;
    gbUncertaintyPillarOffset: TGroupBox;
    pnlUncertainty: TPanel;
    lblUncertainty: TLabel;
    gbStandardUncertainty: TGroupBox;
    pnlBaselineAccuracy: TPanel;
    gbRejection: TGroupBox;
    lblUncertaintyPillarHeightDiff: TLabel;
    lbltsUncertaintyTempUnit: TLabel;
    lblUncertaintyPressureUnit: TLabel;
    dbedtUncertaintyTemp: TwwDBEdit;
    dbedtUncertaintyPressure: TwwDBEdit;
    dbedtUncertaintyHumidity: TwwDBEdit;
    lblUncertaintyHumidityUnit: TLabel;
    dbedtUncertaintyEDMHeight: TwwDBEdit;
    lblUncertaintyEDMHeightUnit: TLabel;
    dbedtUncertaintyPrismHeight: TwwDBEdit;
    dbedtUncertaintyPillarHeightDiff: TwwDBEdit;
    lblUncertaintyPrismHeightUnit: TLabel;
    lblUncertaintyPillarHeightDiffUnit: TLabel;
    dbedtUncertaintyOffset: TwwDBEdit;
    lblUncertaintyOffsetUnit: TLabel;
    dbedtUncertaintyCentringEDM: TwwDBEdit;
    lblUncertaintyCentringEDMUnit: TLabel;
    dbedtUncertaintyCentringPrism: TwwDBEdit;
    lblUncertaintyCentringPrismUnit: TLabel;
    dbedtRejectionCriterion: TwwDBEdit;
    Label93: TLabel;
    dbedtThermometer1: TDBEdit;
    dbedtBarometer1: TDBEdit;
    tsProcedure: TTabSheet;
    pnlButtons3: TPanel;
    lblPageProcedure: TLabel;
    btnNextProcedure: TBitBtn;
    btnCloseProcedure: TBitBtn;
    btnHelpProcedure: TBitBtn;
    lblProcedureHeader: TLabel;
    lblJob3: TLabel;
    pnlJobProcedure: TPanel;
    lblBaseline3: TLabel;
    pnlBaselineProcedure: TPanel;
    btnBackProcedure: TBitBtn;
    OpenDialog1: TOpenDialog;
    btnExportFile: TBitBtn;
    OpenDialogTextFile: TOpenDialog;
    SaveDialog: TSaveDialog;
    btnDeleteObs: TBitBtn;
    tsReports: TTabSheet;
    pnl_tsReports_Buttons: TPanel;
    btnHelp: TBitBtn;
    lstSelReport: TListBox;
    btnBackReports: TBitBtn;
    btnUpdateBaseline: TBitBtn;
    btnPreviewReports: TBitBtn;
    btnPreviewCertificate: TBitBtn;
    btnPrintCertificate: TBitBtn;
    btnPrintReport: TBitBtn;
    gbNumberPrints: TGroupBox;
    Label99: TLabel;
    edtCopies: TEdit;
    lblReportsHeader: TLabel;
    lbl_tsReports_Job: TLabel;
    lbl_tsReports_Baseline: TLabel;
    pnlJob6: TPanel;
    pnlBaseline6: TPanel;
    gbLogos: TGroupBox;
    pcLogo: TPageControl;
    tsAuthority: TTabSheet;
    ImageAuthority: TImage;
    btnLogo2: TButton;
    tsAccreditation2: TTabSheet;
    ImageAccreditation2: TImage;
    btnLogo1: TButton;
    btnDeleteLogo1: TButton;
    chkIncludeLogos: TCheckBox;
    btnDeleteLogo2: TButton;
    btnSaveToFile: TBitBtn;
    QRRTFFilter1: TQRRTFFilter;
    tsDistObs: TTabSheet;
    pnl_tsDistObs_Buttons: TPanel;
    btn_tsDistObs_Close: TBitBtn;
    btnHelp7: TBitBtn;
    lblHeaderObs: TLabel;
    lbl_tsDistObs_Job: TLabel;
    pnlJob7: TPanel;
    lbl_tsDistObs_Baseline: TLabel;
    pnlBaseline7: TPanel;
    btnEdit: TBitBtn;
    btnInsert: TBitBtn;
    pcObservations: TPageControl;
    tsNewObservations: TTabSheet;
    tsEditObservations: TTabSheet;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    lblAtPillar: TLabel;
    lblToPillar: TLabel;
    lblAtHeight: TLabel;
    lblToHeight: TLabel;
    lblDryTemp: TLabel;
    lblHumidity: TLabel;
    cbAtPillar: TComboBox;
    cbToPillar: TComboBox;
    edtAtHeight: TValidEdit;
    edtToHeight: TValidEdit;
    edtDryTemp: TValidEdit;
    edtHumidity: TValidEdit;
    dbgridDistObs: TDBGrid;
    lblPressure: TLabel;
    edtPressure: TValidEdit;
    rxDistObs: TRxMemoryData;
    rxDistObsDistance: TFloatField;
    lblCertifiedDist: TLabel;
    pnlCertifiedDist: TPanel;
    dsDistObs: TwwDataSource;
    lblAtPillar2: TLabel;
    lblToPillar2: TLabel;
    lblAtHeight2: TLabel;
    lblToHeight2: TLabel;
    lblDryTemp2: TLabel;
    lblHumidity2: TLabel;
    edtAtHeight2: TValidEdit;
    edtToHeight2: TValidEdit;
    edtDryTemp2: TValidEdit;
    edtHumidity2: TValidEdit;
    dbgridObs2: TDBGrid;
    lblDistObs2: TLabel;
    lblPressure2: TLabel;
    edtPressure2: TValidEdit;
    lblCertifiedDist2: TLabel;
    pnlCertifiedDist2: TPanel;
    pnlAtPillar: TPanel;
    pnlToPillar: TPanel;
    edtTolerance: TValidEdit;
    lblTolerance: TLabel;
    lblTolerance2: TLabel;
    edtTolerance2: TValidEdit;
    tsSelectEntryType: TTabSheet;
    lblHeaderMethod: TLabel;
    lbl_tsSelectEntryType_Job: TLabel;
    lbl_tsSelectEntryType_Baseline: TLabel;
    pnlJob8: TPanel;
    pnlBaseline8: TPanel;
    pnl_tsSelectEntryType_Buttons: TPanel;
    btnBackEntryType: TBitBtn;
    btnNextEntryType: TBitBtn;
    btn_tsSelectEntryType_Close: TBitBtn;
    btnHelp8: TBitBtn;
    gbCaptureMethod: TGroupBox;
    rbtnEnter: TRadioButton;
    rbtnDownload: TRadioButton;
    lblPageReports: TLabel;
    btnDeleteRecord: TBitBtn;
    dbnavDistObs: TDBNavigator;
    DBNavigator3: TDBNavigator;
    btnClose: TBitBtn;
    gbCertification: TGroupBox;
    dtStartCertification: TDateTimePicker;
    dtEndCertification: TDateTimePicker;
    lblCertDateStart: TLabel;
    lblCertDateExpiry: TLabel;
    cbLetterHead: TCheckBox;
    tsStandards: TTabSheet;
    lnlButtons_: TPanel;
    lblPageStandards: TLabel;
    btnBackStandard: TBitBtn;
    btnNextStandard: TBitBtn;
    btbCloseStandard: TBitBtn;
    btnHelpStandard: TBitBtn;
    lblMinimumStandardHeader: TLabel;
    lblStandardsAuthority: TLabel;
    lblTraceabilityStatement: TLabel;
    pnlMinimumStandard: TPanel;
    dbedtStandardsAuthority: TwwDBEdit;
    dbmemStandard: TDBMemo;
    chkNewPulse: TCheckBox;
    dbchkIsPulse: TDBCheckBox;
    dbchkPulse: TDBCheckBox;
    gbPulse: TGroupBox;
    Memo1: TMemo;
    btnFirstPage: TBitBtn;
    gbSpecifications: TGroupBox;
    cbManufacturerSpecs: TCheckBox;
    pnlSpecifications: TPanel;
    memSpecCaution: TMemo;
    memInstructions: TMemo;
    pcAccreditation: TPageControl;
    tsAccreditation: TTabSheet;
    tsBaselineAccreditation: TTabSheet;
    Label121: TLabel;
    Label96: TLabel;
    lblTraceability: TLabel;
    lblTestingAuthority: TLabel;
    edtAuthority: TEdit;
    pnl_tsObs_Client: TPanel;
    gbObs: TGroupBox;
    lblCertHorzDistance: TLabel;
    dbgridDistances: TwwDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox3: TGroupBox;
    lblAtPillarNo: TLabel;
    dbedtAtPillar: TwwDBEdit;
    gbEDM: TGroupBox;
    lblEDMSerial: TLabel;
    lblEDMMake: TLabel;
    lblEDMModel: TLabel;
    dbedtEDMSerial: TwwDBEdit;
    dbedtEDMModel: TwwDBEdit;
    dbedtEDMMale: TwwDBEdit;
    GroupBox5: TGroupBox;
    lblToPillarNo: TLabel;
    gbPrism: TGroupBox;
    lblPrismSerial: TLabel;
    lblPrismModel: TLabel;
    lblPrismMake: TLabel;
    dbedtPrismSerial: TwwDBEdit;
    dbedtPrismModel: TwwDBEdit;
    dbedtPrismMake: TwwDBEdit;
    dbedtToPillar: TwwDBEdit;
    pnlCertifiedDistance: TPanel;
    pnl_tsObs_Top: TPanel;
    Label52: TLabel;
    lbl_tsObs_Job: TLabel;
    lbl_tsObs_Baseline: TLabel;
    Label29: TLabel;
    pnlJob5: TPanel;
    pnlBaseline5: TPanel;
    Panel23: TPanel;
    dbnavObs: TDBNavigator;
    dbgridObs: TwwDBGrid;
    lblSlopeDistances: TLabel;
    lblLegalSlopeDistance: TLabel;
    lblLegalSlopeDistance2: TLabel;
    lblOwnerAddress2: TLabel;
    edtInst1OwnerAddress: TEdit;
    lblOwnerAddress: TLabel;
    edtInstrumentOwnerAddress: TEdit;
    memTraceability: TMemo;
    memBaselineTraceability: TMemo;
    memProcedure: TMemo;
    memAccreditationLogoTitle2: TMemo;
    lblLogo: TLabel;
    tsAccreditationPage: TTabSheet;
    pnlButtons4: TPanel;
    lblPageAccreditation: TLabel;
    btnNextAccreditation: TBitBtn;
    btnAccreditationClose: TBitBtn;
    btnAccreditationHelp: TBitBtn;
    btnBackAccreditation: TBitBtn;
    lblAccreditationHeader: TLabel;
    lblJob4: TLabel;
    lblBaseline4: TLabel;
    pnlJobProcedure2: TPanel;
    pnlBaselineProcedure2: TPanel;
    gbAccreditation: TGroupBox;
    lblLogoTitle: TLabel;
    btnLogoAccreditation: TButton;
    btnDeleteLogoAccreditation: TButton;
    Panel24: TPanel;
    ImageAccreditation1: TImage;
    memAccreditationLogoTitle: TMemo;
    lblAccreditationAuthority: TLabel;
    lblAccreditationDate: TLabel;
    edtAccreditationAuthority: TEdit;
    pickAccreditationDate: TDateTimePicker;
    edtHideDate: TEdit;
    lblAccreditationStatement: TLabel;
    memAccreditationStatement: TMemo;
    chkAccreditation: TCheckBox;
    memLegalTraceability: TMemo;
    Label23: TLabel;
    lblAuthority: TLabel;
    dbedtAuthority: TwwDBEdit;
    dbedtAuthorityAddress: TwwDBEdit;
    lblAuthorityAddress: TLabel;
    memPrint: TMemo;
    lblEntryMethodTolerance: TLabel;
    Label53: TLabel;
    edtTolerance3: TValidEdit;
    gbSerialNumbers: TGroupBox;
    lblThermometer1Number: TLabel;
    lblThermometer2Number: TLabel;
    lblBarometer1Number: TLabel;
    lblBarometer2Number: TLabel;
    dbedtThermometer2: TDBEdit;
    dbedtBarometer2: TDBEdit;
    lblThermometer1: TLabel;
    lblThermometer2: TLabel;
    lblBarometer1: TLabel;
    lblBarometer2: TLabel;
    dbedtThermometerSerialNumber1: TDBEdit;
    dbedtThermometerSerialNumber2: TDBEdit;
    dbedtBarometerSerialNumber1: TDBEdit;
    dbedtBarometerSerialNumber2: TDBEdit;
    lblNumberMetSets: TLabel;
    vedtNumberMetSets: TValidEdit;
    tsObservations2: TTabSheet;
    gbAtPillar: TGroupBox;
    cbAtPillar2: TComboBox;
    lblAtPillar3: TLabel;
    edtAtDryTemp: TValidEdit;
    edtAtHumidity: TValidEdit;
    edtAtPressure: TValidEdit;
    lblAtDryTemp: TLabel;
    lblAtHumidity: TLabel;
    lblAtPressure: TLabel;
    lblSlopeDistances3: TLabel;
    dbgridDistObs3: TDBGrid;
    dbnavDistObs3: TDBNavigator;
    lblCertifiedDist3: TLabel;
    lblTolerance3: TLabel;
    lblLegalSlopeDistance3: TLabel;
    pnlCertifiedDist3: TPanel;
    edtTolerance4: TValidEdit;
    edtAtHeight3: TValidEdit;
    lblAtHeight3: TLabel;
    gbToPillar: TGroupBox;
    lblToPillar3: TLabel;
    lblToDryTemp: TLabel;
    lblToHumidity: TLabel;
    lblToPressure: TLabel;
    lblToHeight3: TLabel;
    cbToPillar2: TComboBox;
    edtToDryTemp: TValidEdit;
    edtToHumidity: TValidEdit;
    edtToPressure: TValidEdit;
    edtToHeight3: TValidEdit;
    pnlAtPillar2: TPanel;
    pnlToPillar2: TPanel;
    memMetInstructions: TMemo;
    lblMetsDialSetMessage: TLabel;
    lblDownloadWarning: TLabel;
    lblSuggestion: TLabel;
    rxMetSets: TRxMemoryData;
    gbRefractiveIndex: TGroupBox;
    rbtnComputeRefractiveIndex: TRadioButton;
    rbtnManuRefractiveIndex: TRadioButton;
    rbtnDefaultRefractiveIndex: TRadioButton;
    dbedtManuRefractiveIndex: TDBEdit;
    dbedtDefaultRefractiveIndex: TDBEdit;
    lblRefractiveIndex: TLabel;
    pnlComputedRefractiveIndex: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbedtUnitWaveLength: TwwDBEdit;
    dbedtCarrierWaveLength: TwwDBEdit;
    dbedtFrequency: TwwDBEdit;
    dbedtRefractiveIndex: TwwDBEdit;
    rxSection: TRxMemoryData;
    rxSectionSection_Name: TStringField;
    rxSectionSection_Description: TStringField;
    rxSectionAccuracyStatus: TStringField;
    rxSectionHoriz_Datum_Name: TStringField;
    rxSectionAdjustmentType: TStringField;
    rxSectionStageOrder: TIntegerField;
    rxSectionSection_Number: TIntegerField;
    rxSectionHoriz_Datum_Number: TIntegerField;
    rxSectionVert_Datum_Number: TIntegerField;
    rxSectionVert_Datum_Name: TStringField;
    rxSectionConfidenceLevel: TFloatField;
    rxSectionCoverageFactor: TFloatField;
    rxSectionGesmarIOBFileName: TStringField;
    dsSection: TwwDataSource;
    edtRefractiveIndex: TEdit;
    tsLeastUncertainty: TTabSheet;
    pnlButtonsLeastUncertainty: TPanel;
    lblLeastUncertaintyPage: TLabel;
    btnBackLeastUncertainty: TBitBtn;
    btnNextLeastUncertainty: TBitBtn;
    btnCloseLeastUncertainty: TBitBtn;
    btnHelpLeastUncertainty: TBitBtn;
    lblLeastUncertainty: TLabel;
    pcLUM: TPageControl;
    tsLUMBaseline: TTabSheet;
    tsLUMEDM: TTabSheet;
    chkEDMLUM1: TCheckBox;
    chkBaselineLUM1: TCheckBox;
    Memo7: TMemo;
    Label7: TLabel;
    gbNoFrequency: TGroupBox;
    Memo2: TMemo;
    lblPageSelectEntryType: TLabel;
    gbLumUnits: TGroupBox;
    gbBaselineLUMUnits: TGroupBox;
    Label1: TLabel;
    FrameLUMUnits1: TFrameLUMUnits;
    FrameLUMUnits2: TFrameLUMUnits;
    FrameLUMUnitsNonDB2: TFrameLUMUnitsNonDB;
    FrameLUMUnitsNonDB1: TFrameLUMUnitsNonDB;
    FrameLUMUnits3: TFrameLUMUnits;
    procedure btnInstrumentBack2Click(Sender: TObject);
    procedure btnInstrumentBack3Click(Sender: TObject);
    procedure btnInstrumentBack4Click(Sender: TObject);
    procedure btnInstrumentNext2Click(Sender: TObject);
    procedure btnInstrumentNext3Click(Sender: TObject);
    procedure rbtnNewClick(Sender: TObject);
    procedure rbtnExistingClick(Sender: TObject);
    procedure btnNext1Click(Sender: TObject);
    procedure btnNext4Click(Sender: TObject);
    procedure chkMetsDialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNewJobNameChange(Sender: TObject);
    procedure btnNextMetsClick(Sender: TObject);
    procedure btnBackMetsClick(Sender: TObject);
    procedure btnNext3Click(Sender: TObject);
    procedure btnBack3Click(Sender: TObject);
    procedure btnNewMakeClick(Sender: TObject);
    procedure btnNewModelClick(Sender: TObject);
    procedure btnNewInstrumentClick(Sender: TObject);
    procedure btnInstrumentNext4Click(Sender: TObject);
    procedure btnBack4Click(Sender: TObject);
    procedure edtModelStdDevPPMChange(Sender: TObject);
    procedure btnBackObsClick(Sender: TObject);
    procedure btnNextObsClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgridObsRowChanged(Sender: TObject);
    procedure btnClose1Click(Sender: TObject);
    procedure btnNewPrismMakeClick(Sender: TObject);
    procedure btnNewPrismModelClick(Sender: TObject);
    procedure btnNewPrismClick(Sender: TObject);
    procedure edtNewJobNameExit(Sender: TObject);
    procedure edtInstrumentMakeExit(Sender: TObject);
    procedure edtModelNameExit(Sender: TObject);
    procedure edtInstrumentSerialNumberExit(Sender: TObject);
    procedure rxdblcBaselineCloseUp(Sender: TObject);
    procedure rxdblcBaselineExit(Sender: TObject);
    procedure pickStartDateExit(Sender: TObject);
    procedure pickEndDateExit(Sender: TObject);
    procedure pickStartTimeExit(Sender: TObject);
    procedure pickEndTimeExit(Sender: TObject);
    procedure pickStartDateCloseUp(Sender: TObject);
    procedure pickEndDateCloseUp(Sender: TObject);
    procedure rxdblcJobCloseUp(Sender: TObject);
    procedure rxdblcJobExit(Sender: TObject);
    procedure rxdblcAtInstrumentMakeCloseUp(Sender: TObject);
    procedure rxdblcAtInstrumentMakeExit(Sender: TObject);
    procedure rxdblcAtInstrumentModelCloseUp(Sender: TObject);
    procedure rxdblcAtInstrumentModelExit(Sender: TObject);
    procedure rxdblcAtInstrumentCloseUp(Sender: TObject);
    procedure rxdblcToInstrumentMakeCloseUp(Sender: TObject);
    procedure rxdblcToInstrumentModelCloseUp(Sender: TObject);
    procedure rxdblcToInstrumentCloseUp(Sender: TObject);
    procedure rxdblcToInstrumentMakeExit(Sender: TObject);
    procedure rxdblcToInstrumentModelExit(Sender: TObject);
    procedure btnHelp1Click(Sender: TObject);
    procedure btnHelp2Click(Sender: TObject);
    procedure btnHelpEDMClick(Sender: TObject);
    procedure btnHelp4Click(Sender: TObject);
    procedure btnHelp5Click(Sender: TObject);
    procedure btnHelpMakeClick(Sender: TObject);
    procedure btnHelpModelClick(Sender: TObject);
    procedure btnHelpNewInstrumentClick(Sender: TObject);
    procedure bedtWaveLengthExit(Sender: TObject);
    procedure bedtCarrierWaveLengthExit(Sender: TObject);
    procedure bedtModFreqExit(Sender: TObject);
    procedure btnNextBaselineClick(Sender: TObject);
    procedure btnBack2Click(Sender: TObject);
    procedure btnNextUncertaintyClick(Sender: TObject);
    procedure btnbackUncertaintyClick(Sender: TObject);
    procedure UncertaintyChange(Sender: TObject);
    procedure UncertaintyExit(Sender: TObject);
    procedure btnHelpBaselineClick(Sender: TObject);
    procedure btnHelpUncertaintyClick(Sender: TObject);
    procedure rbtnInstrumentClick(Sender: TObject);
    procedure rbtnBaselineClick(Sender: TObject);
    procedure btnNextProcedureClick(Sender: TObject);
    procedure btnBackProcedureClick(Sender: TObject);
    procedure memProcedureChange(Sender: TObject);
    procedure memTraceabilityChange(Sender: TObject);
    procedure btnCloseProcedureClick(Sender: TObject);
    procedure btnLogo1Click(Sender: TObject);
    procedure edtAuthorityChange(Sender: TObject);
    procedure edtAccreditationAuthorityChange(Sender: TObject);
    procedure pickAccreditationDateChange(Sender: TObject);
    procedure btnHelpProcedureClick(Sender: TObject);
    procedure btnExportFileClick(Sender: TObject);
    procedure btnDeleteObsClick(Sender: TObject);
    procedure btnLogo2Click(Sender: TObject);
    procedure btnPreviewCertificateClick(Sender: TObject);
    procedure btnBackReportsClick(Sender: TObject);
    procedure btnUpdateBaselineClick(Sender: TObject);
    procedure btnPreviewReportsClick(Sender: TObject);
    procedure btnPrintCertificateClick(Sender: TObject);
    procedure btnPrintReportClick(Sender: TObject);
    procedure chkIncludeLogosClick(Sender: TObject);
    procedure btnDeleteLogo2Click(Sender: TObject);
    procedure btnDeleteLogo1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveToFileClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure pickAccreditationDateClick(Sender: TObject);
    procedure pickAccreditationDateCloseUp(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure dbgridDistObsExit(Sender: TObject);
    procedure cbAtPillarChange(Sender: TObject);
    procedure cbToPillarChange(Sender: TObject);
    procedure rxDistObsBeforePost(DataSet: TDataSet);
    procedure rxDistObsAfterPost(DataSet: TDataSet);
    procedure btnEditClick(Sender: TObject);
    procedure edtAtHeightExit(Sender: TObject);
    procedure edtToleranceExit(Sender: TObject);
    procedure edtToHeightExit(Sender: TObject);
    procedure edtDryTempExit(Sender: TObject);
    procedure edtHumidityExit(Sender: TObject);
    procedure edtPressureExit(Sender: TObject);
    procedure edtPressure2Exit(Sender: TObject);
    procedure edtHumidity2Exit(Sender: TObject);
    procedure edtDryTemp2Exit(Sender: TObject);
    procedure edtToHeight2Exit(Sender: TObject);
    procedure edtAtHeight2Exit(Sender: TObject);
    procedure edtAtHeight2Change(Sender: TObject);
    procedure edtToHeight2Change(Sender: TObject);
    procedure edtDryTemp2Change(Sender: TObject);
    procedure dbgridObs2Exit(Sender: TObject);
    procedure edtHumidity2Change(Sender: TObject);
    procedure edtPressure2Change(Sender: TObject);
    procedure rxDistObsBeforeInsert(DataSet: TDataSet);
    procedure btnNextEntryTypeClick(Sender: TObject);
    procedure btnBackEntryTypeClick(Sender: TObject);
    procedure btnDeleteRecordClick(Sender: TObject);
    procedure btnHelp7Click(Sender: TObject);
    procedure btnHelp8Click(Sender: TObject);
    procedure dbgridObsCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnNextStandardClick(Sender: TObject);
    procedure btnBackStandardClick(Sender: TObject);
    procedure btnHelpStandardClick(Sender: TObject);
    procedure btnFirstPageClick(Sender: TObject);
    procedure btnNextAccreditationClick(Sender: TObject);
    procedure btnBackAccreditationClick(Sender: TObject);
    procedure btnAccreditationHelpClick(Sender: TObject);
    procedure edtTolerance2Exit(Sender: TObject);
    procedure edtTolerance3Exit(Sender: TObject);
    procedure ChangedMetsClick(Sender: TObject);
    procedure vedtNumberMetSetsChange(Sender: TObject);
    procedure cbAtPillar2Change(Sender: TObject);
    procedure edtAtHeight3Exit(Sender: TObject);
    procedure edtToHeight3Exit(Sender: TObject);
    procedure edtAtDryTempExit(Sender: TObject);
    procedure CheckDistValueChange(Sender: TObject);
    procedure CheckDistValueChange3(Sender: TObject);
    procedure edtToDryTempExit(Sender: TObject);
    procedure edtAtHumidityExit(Sender: TObject);
    procedure edtToHumidityExit(Sender: TObject);
    procedure edtAtPressureExit(Sender: TObject);
    procedure edtToPressureExit(Sender: TObject);
    procedure cbToPillar2Change(Sender: TObject);
    procedure edtTolerance4Exit(Sender: TObject);
    procedure rbtnDownloadClick(Sender: TObject);
    procedure vedtNumberMetSetsExit(Sender: TObject);
    procedure StandardExit(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure rbtnComputeRefractiveIndexClick(Sender: TObject);
    procedure pnlComputedRefractiveIndexClick(Sender: TObject);
    procedure dbedtManuRefractiveIndexClick(Sender: TObject);
    procedure dbedtDefaultRefractiveIndexClick(Sender: TObject);
    procedure edtRefractiveIndexChange(Sender: TObject);
    procedure btnNextLeastUncertaintyClick(Sender: TObject);
    procedure btnBackLeastUncertaintyClick(Sender: TObject);
    procedure chkEDMLUM1Click(Sender: TObject);
    procedure chkBaselineLUM1Click(Sender: TObject);
    procedure btnHelpLeastUncertaintyClick(Sender: TObject);
    procedure pcLUMChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tsStandardsShow(Sender: TObject);
  private
    { Private declarations }
    sPageNumber: Integer;
    TabsheetList: TStringList;

    procedure ShowErrors(ErrorList : TStringList);
    function HasValidJobFields1 : Boolean;
    function HasValidJobFields2 : Boolean;
    function HasValidJobFields3 : Boolean;
    function HasValidJobFields4 : Boolean;
    procedure CopyJobToForm;
    procedure ClearJobForm;
    procedure EnterNewInstrument(
     strInstrType : String;
     aInstrClass : TInstrumentClass);
    function GetModelAndMakeID(
      sInstrumentId : Integer;
      var sModelId : Integer;
      var sMakeId : Integer) : Boolean;
    procedure SetupInstrumentTables(
     strEndType : String;
     strInstrumentType : String;
     sMakeId : Integer;
     sModelId : Integer;
     sInstrumentId : Integer);
    procedure SetupInstrumentTablesforNewJob(
     strEndType : String;
     strInstrumentType : String);
    function ChangeAtInstrument : Boolean;
    function ChangeToInstrument : Boolean;
    function HasValidInstrumentNameFields : Boolean;
    function HasValidInstrumentModelFields : Boolean;
    function HasValidInstrumentFields : Boolean;
    procedure SetMetsFieldsInGrid;
    function GetLegalDistancebetweenPillars(
      sBaselineId : Integer;
      sAtPillarID : integer;
      sToPillarID : integer) : Double;
    procedure SaveJob;
    function CheckBeforeCalibration(var sErrorMeasID: Integer): Boolean;
    function IsJobNameDuplicated : Boolean;
    function IsInstrumentMakeDuplicated : Boolean;
    function IsInstrumentModelDuplicated : Boolean;
    function IsInstrumentDuplicated : Boolean;
    procedure SetUpObservationTables;
    procedure ResetAtInstrument;
    procedure ResetToInstrument;
    procedure SetupNewJob;
    procedure AmendCyclicErrorsInReports(dUnitLength : Double);
    function ComputeCalibrationTerm(dUnitLength: Double; sValue: Integer): String;
    function PerformCalibration: Boolean;
    function EDMCalibration(strReportFileName: string): Boolean;
    procedure SetDefaultUncertainties(Table: TDataset);
    procedure CopyMemoToDefaultTable;
    procedure DeleteObservations;
    procedure CreateFullReports;
    procedure UpdateLogos;
    procedure GetLogos;
    procedure FilterJob( strJobType: String);
    procedure FilterBaseline(strFilter: String);
    procedure FilterPillar( sBaselineId: Integer);
    procedure FilterModel(strTable: String; strModelType: String; sMakeId: Integer);
    procedure FilterInstrument(strTable: String; strInstType: String; sModelID: Integer);
    function CheckDistValues(doDistGrid: Boolean): Boolean;
    function CheckDistValues2(doDistGrid: Boolean): Boolean;
    function CheckDistValues3(doDistGrid: Boolean): Boolean;
    function ShowLegalDistance2: Boolean;
    procedure CreateAtPillarList;
    procedure CreateAtPillarList2;
    procedure CreateToPillarList;
    procedure CreateToPillarList2;
    procedure CreatePillarList(AComboBoxToPopulate: TComboBox; AComboBoxCompare: TComboBox);
    procedure InsertNewObs;
    function ImportFile: Boolean;
    procedure GotoObservationPage(doSaveJob: Boolean);
    procedure DeleteObservationRecord;
    procedure UpdateMetsFields;
    function CheckEditObservationSet: Boolean;
    function CheckInsertObservationSet: Boolean;
    function CheckInsertObservationSetAt: Boolean;
    function CheckInsertObservationSetTo: Boolean;
    function UsedByJob : Boolean;
    procedure SetImageSize(Image: TImage);
    function GetCertifiedSlopeDistance(
      sAtPillarID: Integer;
      sToPillarID: Integer): Double;
    procedure SaveAccreditation;
    procedure SetMetsInDistObsPage;
    function hasMetSettingErrors(strMeasMetFlag: string; strHumidityType: string): Boolean;
    procedure SetupMetsPage;
    function GetPageNumber(strTabsheet: string): Integer;
    procedure GetBaselineUncertainties;
    procedure SaveBaselineUncertainties;

    procedure ShowLUMUnits;
    procedure CalculateUncertaintyOfBaseline;
    procedure PositionGbRejection;
  public
    { Public declarations }
    sMakeId: Integer;
    sModelId: Integer;
    sNextInstrumentId: Integer;
    ErrorList : TStringList;
    strBaseLineName : String;
    strJobName : String;
    strInstrumentType : String;
    strInstrumentMake : String;
    strInstrumentModel : String;
    aInstrumentClass : TInstrumentClass;
    dDefaultHumidity : Double;
    strHumidityType  : String;
    strAtInstrumentType : String;
    sAtInstrumentId  :Integer;
    sAtModelId       :Integer;
    sAtMakeId        :Integer;
    strToInstrumentType : String;
    sToInstrumentId  :Integer;
    sToModelId       :Integer;
    sToMakeId        :Integer;
    sBaselineId      :Integer;
    aPreviousTabSheet : TTabSheet;
    dLegalDistance : Double;
    hasValidBaseline : Boolean;
    sJobID: Integer;
    hasChangedDefault: Boolean;
    hasAccreditation: Boolean;
    strAccreditationLogo: String;
    strAuthorityLogo: String;
    strQualityLogo: String;
    sTotalPages: Integer;
    hasUpdatedBaseline: Boolean;
    canCalibrateBaseline: Boolean;
    doEvents: Boolean;
    ObsDefault: TObsDefault;
    hasObsDefault: Boolean;
    hasChangedMets: Boolean;
    strLogoFolder: String;
    strLogoAuthorityFolder: String;
    isWARestrictedVersion: Boolean;
    dTolerance: Double;
    procedure ShowLegalDistance;
    procedure SetQRImageSize(Image: TQRImage);
    procedure ChangeThermometerPanel;
    procedure ChangeBarometerPanel;
  end;

var
  frmJob: TfrmJob;

implementation

{$R *.DFM}
 uses BSEdmMain, BseDM, BseCalib, BSEProgress,
  BseReportSummary, BseBaselineCertificate, BseBaselineCertificate2, BseReport1A;

(*******************************************************************************
@procedure btnInstrumentBack2Click(Sender: TObject);

@description
Before moving back to the previous page the following tasks are carried out:
  1. Checks if new Instrument Make has been created.
  2. Checks if Instrument Make has been duplicated.
  3. Prompts user to confirm the saving of the new Instrument Make.
  4. Saves the Instrument Make.
*******************************************************************************)
procedure TfrmJob.btnInstrumentBack2Click(Sender: TObject);
var
  doEvents2: Boolean;
begin
  doEvents2 := dmMain.doEvents;
  if edtInstrumentMake.Text <> '' then
  begin
    if not isInstrumentMakeDuplicated then
    begin
      if MessageDlg('Do you want to save Instrument Make '''+ edtInstrumentMake.Text+'''?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        if HasValidInstrumentNameFields then
        begin
          if strInstrumentType = 'E' then
          begin
            with dmBase.rxInstrumentMake do
            begin
              dmMain.doEvents := True;
              Append;
              FieldByName('MakeID').AsInteger     := sNextMakeID;
              Inc(sNextMakeId);
              FieldByName('MakeName').AsString    := edtInstrumentMake.Text;
              FieldByName('MakeCountry').AsString := edtCountry.Text;
              Post;
              dmMain.doEvents := False;
            end;
            ChangeAtInstrument;
          end;

          if strInstrumentType = 'P' then
          begin
            with dmMain.rxToInstrumentMake do
            begin
              dmMain.doEvents := True;
              Append;
              FieldByName('MakeID').AsInteger     := sNextMakeID;
              Inc(sNextMakeId);
              FieldByName('MakeName').AsString    := edtInstrumentMake.Text;
              FieldByName('MakeCountry').AsString := edtCountry.Text;
              Post;
              dmMain.doEvents := False;
            end;
           ChangeToInstrument;
          end;

          MessageDlg('Make '''+edtInstrumentMake.Text+''' has been saved',mtInformation,[mbOK],0);
        end
        else
          Abort;
      end;
    end;
  end;

  if strInstrumentType = 'E' then
  begin
    sPageNumber := GetPageNumber(tsEDM.Caption);
    lblPageEDM.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsEDM;
  end;

  if strInstrumentType = 'P' then
  begin
    sPageNumber := GetPageNumber(tsPrism.Caption);
    lblPagePrism.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsPrism;
  end;
  dmMain.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure btnInstrumentBack3Click(Sender: TObject);

@description
Before moving back to the previous page the following tasks are carried out:
  1. Checks if new Instrument Model has been created.
  2. Checks if Instrument Model has been duplicated.
  3. Prompts user to confirm the saving of the new Instrument Model.
  4. Saves the Instrument Model.
*******************************************************************************)
procedure TfrmJob.btnInstrumentBack3Click(Sender: TObject);
var
  doEvents2: Boolean;
begin
  doEvents2 := dmMain.doEvents;
  if edtModelName.Text <> '' then
  begin
    if not isInstrumentModelDuplicated then
    begin
      if MessageDlg('Do you want to save Instrument Model '''+ edtModelName.Text+'''?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        if HasValidInstrumentModelFields then
        begin
          if strInstrumentType = 'E' then
          begin
            with dmMain.rxAtInstrumentModel do
            begin
              dmMain.doEvents := True;
              Append;
              FieldByName('ModelId').AsInteger := sNextModelId;
              Inc(sNextModelID);
              FieldByName('MakeId').Value := dmMain.rxAtInstrumentMake.FieldByName('MakeId').Value;
              FieldByName('ModelName').AsString              := edtModelName.Text;
              FieldByName('ModelInstType').AsString          := strInstrumentType;
              FieldByName('ModelManufStdDevConst').AsFloat   := bedtModelStdDevConst.Value;
              FieldByName('ModelManufStdDevPPM').AsString    := edtModelStdDevPPM.Text;
              FieldByName('ModelUnitLength').AsFloat         := bedtWaveLength.Value;
              FieldByName('ModelModFreq').AsFloat            := bedtModFreq.Value;
              FieldByName('ModelCarrierWaveLength').AsFloat  := bedtCarrierWaveLength.Value;
              FieldByName('ModelComments').AsString          := edtModelComments.Text;
              Post;
              dmMain.doEvents := False;
            end;
          end;

          if strInstrumentType = 'P' then
          begin
            with dmMain.rxToInstrumentModel do
            begin
              dmMain.doEvents := True;
              Append;
              FieldByName('ModelId').AsInteger := sNextModelId;
              Inc(sNextModelID);
              FieldByName('MakeId').Value := dmMain.rxToInstrumentMake.FieldByName('MakeId').Value;
              FieldByName('ModelName').AsString              := edtModelName.Text;
              FieldByName('ModelInstType').AsString          := strInstrumentType;
              FieldByName('ModelManufStdDevConst').AsFloat   := bedtModelStdDevConst.Value;
              FieldByName('ModelManufStdDevPPM').AsString    := edtModelStdDevPPM.Text;
              FieldByName('ModelUnitLength').AsFloat         := bedtWaveLength.Value;
              FieldByName('ModelModFreq').AsFloat            := bedtModFreq.Value;
              FieldByName('ModelCarrierWaveLength').AsFloat  := bedtCarrierWaveLength.Value;
              FieldByName('ModelComments').AsString          := edtModelComments.Text;
              Post;
              dmMain.doEvents := False;
            end;
          end;
          MessageDlg('Model '''+edtModelName.Text+''' has been saved',mtInformation,[mbOK],0);
        end
        else
          Abort;
      end;
    end;
  end;

  if strInstrumentType = 'E' then
  begin
    sPageNumber := GetPageNumber(tsEDM.Caption);
    lblPageEDM.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsEDM;
    ChangeAtInstrument;
  end;

  if strInstrumentType = 'P' then
  begin
    sPageNumber := GetPageNumber(tsPrism.Caption);
    lblPagePrism.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsPrism;
    ChangeToInstrument;
  end;
  dmMain.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure btnInstrumentBack4Click(Sender: TObject);

@description
Before moving back to the previous page the following tasks are carried out:
  1. Checks if new Instrument has been created.
  2. Checks if Instrument has been duplicated.
  3. Prompts user to confirm the saving of the new Instrument.
  4. Saves the Instrument.
*******************************************************************************)
procedure TfrmJob.btnInstrumentBack4Click(Sender: TObject);
var
  doEvents2: Boolean;
begin
  doEvents2 := dmMain.doEvents;
  if edtInstrumentSerialNumber.Text <> '' then
  begin
    if not isInstrumentDuplicated then
    begin
      if MessageDlg('Do you want to save Instrument '''+ edtInstrumentSerialNumber.Text+'''?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        if HasValidInstrumentFields then
        begin
          if strInstrumentType = 'E' then
          begin
            edtInst1Owner.Text := edtInstrumentOwner.Text;
            edtInst1OwnerAddress.Text := edtInstrumentOwnerAddress.Text;
            with dmMain.rxAtInstrument do
            begin
              dmMain.doEvents := True;
              Append;
              FieldByName('InstID').AsInteger  := sNextInstrumentId;
              Inc(sNextInstrumentId);
              FieldByName('InstType').AsString := strInstrumentType;
              if strInstrumentType = 'E' then
                FieldByName('ModelId').Value := dmMain.rxAtInstrumentModel.FieldByName('ModelId').Value
              else
              if strInstrumentType = 'P' then
                FieldByName('ModelId').Value := dmMain.rxToInstrumentModel.FieldByName('ModelId').Value;

              FieldByName('InstSerialNo').AsString := edtInstrumentSerialNumber.Text;
              FieldByName('AntennaModelID').AsInteger := 0;
              FieldByName('InstAntennaSerialNo').AsString := '';

              FieldByName('InstStdDevConst').AsFloat := bedtInstStdDevConst.Value;

              FieldByName('InstStdDevPPM').AsFloat :=
                                     StrToFloat(PackStr(edtInstStdDevPPM.Text));

              FieldByName('InstConstant').AsFloat := bedtInstConst.Value;

              FieldByName('InstScaleFact').AsFloat :=
                                     StrToFloat(PackStr(edtInstScaleFact.Text));

              FieldByName('InstComments').AsString := edtInstComments.Text;
              Post;
              dmMain.doEvents := False;
            end;
          end
          else if strInstrumentType = 'P' then
          begin
            edtInst2Owner.Text := edtInstrumentOwner.Text;
            with dmMain.rxToInstrument do
            begin
              dmMain.doEvents := True;
              Append;
              FieldByName('InstID').AsInteger  := sNextInstrumentId;
              Inc(sNextInstrumentId);
              FieldByName('InstType').AsString := strInstrumentType;
              FieldByName('ModelId').Value := dmMain.rxToInstrumentModel.FieldByName('ModelId').Value;
              FieldByName('InstSerialNo').AsString := edtInstrumentSerialNumber.Text;
              FieldByName('AntennaModelID').AsInteger := 0;
              FieldByName('InstAntennaSerialNo').AsString := '';
              FieldByName('InstStdDevConst').AsFloat := bedtInstStdDevConst.Value;
              FieldByName('InstStdDevPPM').AsFloat := StrToFloat(Trim(edtInstStdDevPPM.Text));
              FieldByName('InstConstant').AsFloat := bedtInstConst.Value;
              FieldByName('InstScaleFact').AsFloat := StrToFloat(Trim(edtInstScaleFact.Text));
              FieldByName('InstComments').AsString := edtInstComments.Text;
              Post;
              dmMain.doEvents := False;
            end;
          end;
        end
        else
          Abort;
      end;
    end;
  end;

  if strInstrumentType = 'E' then
  begin
    sPageNumber := GetPageNumber(tsEDM.Caption);
    lblPageEDM.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsEDM;
    ChangeAtInstrument;
  end;

  if strInstrumentType = 'P' then
  begin
    sPageNumber := GetPageNumber(tsPrism.Caption);
    lblPagePrism.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsPrism;
    ChangeToInstrument;
  end;
  dmMain.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure btnInstrumentNext2Click(Sender: TObject);

@description
Before to the nexts page the following tasks are carried out:
  1. Checks if Instrument Make has been duplicated.
  2 Checks that valid information has been entered.
  3. Saves the Instrument Make.
*******************************************************************************)
procedure TfrmJob.btnInstrumentNext2Click(Sender: TObject);
var
  doEvents2: Boolean;
begin
  doEvents2 := dmMain.doEvents;
  if isInstrumentMakeDuplicated then
  begin
    edtInstrumentMake.Color := clRed;
    Abort;
  end;

  if HasValidInstrumentNameFields then
  begin
    if strInstrumentType = 'E' then
    begin
      with dmMain.rxAtInstrumentMake do
      begin
        dmMain.doEvents := True;
        Append;
        FieldByName('MakeID').AsInteger     := sNextMakeID;
        Inc(sNextMakeId);
        FieldByName('MakeName').AsString    := edtInstrumentMake.Text;
        FieldByName('MakeCountry').AsString := edtCountry.Text;
        Post;
        dmMain.doEvents := False;
      end;
      FilterModel('At', strInstrumentType, sMakeId);
    end;

    if strInstrumentType = 'P' then
    begin
      with dmMain.rxToInstrumentMake do
      begin
        dmMain.doEvents := True;
        Append;
        FieldByName('MakeID').AsInteger     := sNextMakeID;
        Inc(sNextMakeId);
        FieldByName('MakeName').AsString    := edtInstrumentMake.Text;
        FieldByName('MakeCountry').AsString := edtCountry.Text;
        Post;
        dmMain.doEvents := False;
      end;
      FilterModel('To', strInstrumentType, sMakeId);
    end;

    MessageDlg('Make '''+edtInstrumentMake.Text+''' has been saved',mtInformation,[mbOK],0);

    edtMake3.Text := edtInstrumentMake.Text;
    edtMake4.Text := edtInstrumentMake.Text;
    edtRefractiveIndex.Text := '';
    pcInstrument.ActivePage := tsInstrumentModel;
    edtModelName.SetFocus;
  end;
  dmMain.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure btnInstrumentNext3Click(Sender: TObject);

@description
The following tasks are carried out:
  1. Checks if Instrument Model has been duplicated.
  2. Checks that valid information has been entered.
  3. Saves the Instrument Model.
  4. Opens the next page where you can enteror view the Instrument details.
*******************************************************************************)
procedure TfrmJob.btnInstrumentNext3Click(Sender: TObject);
var
  doEvents2: Boolean;
  doEvents3: Boolean;
begin
  doEvents2 := doEvents;
  doEvents3 := dmMain.doEvents;
  if isInstrumentModelDuplicated then
  begin
    edtModelName.Color := clRed;
    Abort;
  end;

  if HasValidInstrumentModelFields then
  begin
    sModelID := dmBase.GetLastId(dmBase.rxInstrumentMOdel,'ModelID');
    if strInstrumentType = 'E' then
    begin
      ErrorList.Clear;
      doEvents := False;

      if (edtRefractiveIndex.Text <> '') then
      begin
        if (StrToFloat(edtRefractiveIndex.Text) <> 0) then
        begin
          if (StrToFloat(edtRefractiveIndex.Text) < 1.0002) or (StrToFloat(edtRefractiveIndex.Text) > 1.004) then
          begin
            ErrorList.Add('Refractive Index must be between 1.0002 and 1.0004');
            bedtModFreq.SetFocus;
          end;
        end;
      end;
      doEvents := True;
      if ErrorList.Count > 0 then
      begin
        ShowErrors(ErrorList);
        Abort;
      end;

      with dmMain.rxAtInstrumentModel do
      begin
        dmMain.doEvents := True;
        Append;
        FieldByName('ModelId').AsInteger := sNextModelId;
        Inc(sNextModelId);
        Inc(sModelId);
        FieldByName('MakeId').Value := dmMain.rxAtInstrumentMake.FieldByName('MakeId').Value;
        FieldByName('ModelName').AsString              := edtModelName.Text;
        FieldByName('ModelInstType').AsString          := strInstrumentType;
        FieldByName('ModelManufStdDevConst').AsFloat   := bedtModelStdDevConst.Value;
        FieldByName('ModelManufStdDevPPM').AsString    := edtModelStdDevPPM.Text;
        if bedtWaveLength.Value = 0 then
          FieldByName('ModelUnitLength').Clear
        else
          FieldByName('ModelUnitLength').AsFloat := bedtWaveLength.Value;

        if bedtModFreq.Value = 0 then
          FieldByName('ModelModFreq').Clear
        else
          FieldByName('ModelModFreq').AsFloat := bedtModFreq.Value;

        if bedtCarrierWaveLength.Value = 0 then
          FieldByName('ModelCarrierWaveLength').Clear
        else
          FieldByName('ModelCarrierWaveLength').AsFloat := bedtCarrierWaveLength.Value;

        FieldByName('ModelComments').AsString := edtModelComments.Text;
        if edtRefractiveIndex.Text = '' then
           FieldByName('ManuRefractiveIndex').Clear
        else
        begin
           if  StrToFloat(edtRefractiveIndex.Text) = 0 then
             FieldByName('ManuRefractiveIndex').Clear
           else
             FieldByName('ManuRefractiveIndex').AsFloat := StrToFloat(edtRefractiveIndex.Text);
        end;
        FieldByName('isPulseMeter').AsBoolean := chkNewPulse.Checked;
        Post;
        dmMain.doEvents := False;
      end;
      FilterInstrument('At',strInstrumentType, sModelId);
    end;

    if strInstrumentType = 'P' then
    begin
      with dmMain.rxToInstrumentModel do
      begin
        dmMain.doEvents := True;
        Append;
        FieldByName('ModelId').AsInteger := sNextModelId;
        Inc(sNextModelID);
        FieldByName('MakeId').Value := dmMain.rxToInstrumentMake.FieldByName('MakeId').Value;
        FieldByName('ModelName').AsString              := edtModelName.Text;
        FieldByName('ModelInstType').AsString          := strInstrumentType;
        FieldByName('ModelManufStdDevConst').AsFloat   := bedtModelStdDevConst.Value;
        FieldByName('ModelManufStdDevPPM').AsString    := edtModelStdDevPPM.Text;
        FieldByName('ModelUnitLength').AsFloat         := bedtWaveLength.Value;
        FieldByName('ModelModFreq').AsFloat            := bedtModFreq.Value;
        FieldByName('ModelCarrierWaveLength').AsFloat  := bedtCarrierWaveLength.Value;
        FieldByName('ModelComments').AsString          := edtModelComments.Text;
        Post;
        dmMain.doEvents := False;
      end;
      FilterInstrument('To',strInstrumentType, sModelId);
    end;

    MessageDlg('Model '''+edtModelName.Text+''' has been saved',mtInformation,[mbOK],0);
    edtModel4.Text := edtModelName.Text;
    pcInstrument.ActivePage := tsInstrument;
    edtInstrumentSerialNumber.SetFocus;
  end;
  doEvents := doEvents2;
  dmMain.doEvents := doEvents3;

  if dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean then
  begin
    chkMetsDial.Checked := True;
    chkMetsDial.Enabled := False;
    gbPulse.Visible := True;
    pnlMets.Visible := False;
    lblDownloadWarning.Visible := False;
    lblMetsDialSetMessage.Visible := False;
  end
  else
  begin
    gbPulse.Visible := False;
    chkMetsDial.Enabled := True;
    lblMetsDialSetMessage.Visible := True;
  end;
end;

(*******************************************************************************
@procedure rbtnNewClick(Sender: TObject);

@description
  Sets up a new job
*******************************************************************************)
procedure TfrmJob.rbtnNewClick(Sender: TObject);
begin
  hasValidBaseline := True;
  if doEvents then
    SetupNewJob;

  if pcmain.ActivePage = tsJob then
  begin
    TabsheetList.Clear;
    TabsheetList.Add('tsJob');
    FilterBaseline('C'); // Gets all data from main baseline table
  end;
  pnlJobBottom.Visible := False;
end;

(*******************************************************************************
@procedure rbtnExistingClick(Sender: TObject);

@description
  Sets up an existing job
*******************************************************************************)
procedure TfrmJob.rbtnExistingClick(Sender: TObject);
begin
  if doEvents then
  begin
    hasValidBaseline := True;
    lblHeader1.caption := 'Select Job';
    pcExistingOrNew.ActivePage := tsExistingJob;
    pnlJobBottom.Visible := True;
    dmMain.rxBaseline.Active := True;
    rxdblcJob.DisplayValue := dmMain.rxJob.FieldByName('JobDescription').AsString;
    btnNext1.Enabled := True;
    btnDelete.Enabled := True;
    CopyJobToForm;

    if pcmain.ActivePage = tsJob then
    begin
      TabsheetList.Clear;
      TabsheetList.Add('tsJob');
      rbtnEnter.Checked := True;
      edtObserverName.SetFocus;
      FilterBaseline(''); // Gets all data from main baseline table
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure btnNext1Click(Sender: TObject);

@description
  1. Checks Job Name has been duplicated.
  2. Checks that valid job information has been entered.
  3. Opens the next page of the wizard where you can select a baseline.
*******************************************************************************)
procedure TfrmJob.btnNext1Click(Sender: TObject);
var
  hasBaseline: Boolean;
  doContinue: Boolean;
begin
//  gbVarianceFactorControl.Visible := rbtnBaseline.Checked;

  if rbtnNew.Checked then
  begin
    FilterBaseline('C');
    if dmMain.rxBaseline.isEmpty  then
    begin
      MessageDlg('You must first create a new Baseline.'#10+#10+
      'Click on the ''Close'' button and then click on the ''Edit/Create Baselines'' button on the main panel.',mtWarning,[mbOK],0);
      Exit;
    end;
  end;

  if isJobNameDuplicated then
    Abort;

  if (pickStartDate.Date = pickEndDate.Date) and
     (pickStartTime.Time >= pickEndTime.Time) then
  begin
    MessageDlg('The End Time must be greater than the Start Time',mtError,[mbOK],0);
    pickEndTime.SetFocus;
    Abort;
  end;

  if HasValidJobFields1 then
  begin
    if rbtnNew.Checked then
    begin
      sJobID := dmBase.GetLastId(dmBase.rxJob,'JobID');
      strJobName := edtNewJobName.Text;
    end
    else
    begin
      sJobID := dmMain.rxJob.FieldByName('JobID').AsInteger;
      strJobName := dmMain.rxJob.FieldByName('JobDescription').AsString;
    end;

    pnlJobProcedure.Caption := strJobName;
    pnlJobProcedure2.Caption := strJobName;
    pnlJob2.Caption := strJobName;
    pnlJob3.Caption := strJobName;
    pnlJob4.Caption := strJobName;
    pnlJob5.Caption := strJobName;
    pnlJob6.Caption := strJobName;
    pnlJob7.Caption := strJobName;
    pnlJob8.Caption := strJobName;
    pnlJobInst2.Caption := strJobName;
    pnlJobInst1.Caption := strJobName;
    pnlJobInst3.Caption := strJobName;

    hasBaseline := false;
    if rbtnExisting.Checked then
    begin
      if not dmMain.rxJob.FieldByName('BaselineId').isNull then
      begin
        sBaseLineId := dmMain.rxJob.FieldByName('BaselineId').AsInteger;
        FilterBaseline('');
        with dmMain.rxBaseline do
          if Locate('BaselineID', IntToStr(sBaseLineId),[]) then
            hasBaseline := True;
      end;
      edtWeather.Text := dmMain.rxJob.FieldByName('JobWeatherConditions').AsString;
    end
    else
      edtWeather.Text := '';

    if hasBaseline then
    begin
      rxdblcBaseline.Visible := False;
      dbedtBaseline.Visible := True;
      lblBaseline.caption := 'Baseline';
    end
    else
    begin
      FilterBaseline('C');
      with dmMain.rxBaseline do
      begin
        First;
        doContinue := True;
        while (not EOF) and doContinue do
        begin;
          if Pos('Curtin',FieldByName('BaselineName').AsString) > 0 then
            doContinue := False
          else
            Next;
        end;
        rxdblcBaseline.DisplayValue := FieldByName('BaselineName').AsString;
      end;

      rxdblcBaseline.Visible := True;
      dbedtBaseline.Visible := False;
      lblBaseline.caption := 'Select Baseline';
    end;

    btnNextbaseline.Enabled := hasValidBaseline;

    sBaseLineId := dmMain.rxBaseline.FieldByName('BaselineId').AsInteger;

    dmMain.rxPillar.Active := True;
    FilterPillar(sBaselineId);
    with dmMain.rxPillar do
      if RecordCount < 4 then
        hasValidBaseline := False;

    dmBase.FilterDistance(sBaselineId);
    with dmBase.rxFilteredDistance do
      if RecordCount < 3 then
        hasValidBaseline := False;

    CalculateUncertaintyOfBaseline;

    dmbase.rxFilteredDistance.First;
    dmMain.rxPillar.First;
    pcBaseline.ActivePage := tsBaselineInterval;
    dmBase.rxFilteredDistance.FieldByName('DistID').Visible := False;
    if rbtnBaseline.Checked then
    begin
      dbgridPillar.Color := clWindow;
      dbgridPillar.FixedCols := 1;
      dbgridPillar.ReadOnly := False;
    end
    else
    begin
      dbgridPillar.Color :=  clBtnFace;
      dbgridPillar.FixedCols := 0;
      dbgridPillar.ReadOnly := True;
    end;
    sPageNumber := GetPageNumber(tsBaseline.Caption);
    lblPage2.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsBaseline;
  end;
end;

(*******************************************************************************
@procedure CalculateUncertaintyOfBaseline;

@description
  Calculate the uncertainty of the base line.
    if the baseline constant < least uncertainty constant then
      use the least uncertainty constant

    if the baseline scale < last uncertainty scale then
      use the leaset uncertainty scale
*******************************************************************************)
procedure TfrmJob.CalculateUncertaintyOfBaseline;
var
  dScale,
  dConstant: Double;
begin
  with dmBase.rxBaselineAccuracy do
  begin
    if Locate('BaselineID',IntToStr(sBaseLineID),[]) then
    begin
      dConstant := FieldByName('UncertaintyConstant').AsFloat;
      dScale := FieldByName('UncertaintyScale').AsFloat;
      dmBase.rxStandard.locate('Type','F',[]);
      if dConstant < dmBase.rxStandard.FieldByName('StandardConstant').AsFloat then
        dConstant := dmBase.rxStandard.FieldByName('StandardConstant').AsFloat;

      if dScale < dmBase.rxStandard.FieldByName('StandardScale').AsFloat then
        dScale := dmBase.rxStandard.FieldByName('StandardScale').AsFloat;

      if not dmBase.rxStandard.Active then
      begin
        dmBase.rxStandard.Open;
        dmBase.rxStandard.First;
      end;

      FrameLUMUnitsNonDB1.LUMUnits := dmBase.rxStandard.FieldByName('LUMUnits').AsString;
      FrameLUMUnitsNonDB1.ConstantFormat := '%8.2f';
      FrameLUMUnitsNonDB1.Constant := dConstant;
      if dScale < 100 then
        FrameLUMUnitsNonDB1.ScaleFormat := '%5.2f'
      else
        FrameLUMUnitsNonDB1.ScaleFormat := '%8.2f';

      FrameLUMUnitsNonDB1.Scale := dScale;
      FrameLUMUnitsNonDB1.SetHeight(pnlUncertainty.Height-2);

      FrameLUMUnitsNonDB2.LUMUnits := dmBase.rxStandard.FieldByName('LUMUnits').AsString;
      FrameLUMUnitsNonDB2.ConstantFormat := '%8.2f';
      FrameLUMUnitsNonDB2.Constant := dConstant;
      if dScale < 100 then
        FrameLUMUnitsNonDB2.ScaleFormat := '%5.2f'
      else
        FrameLUMUnitsNonDB2.ScaleFormat := '%8.2f';

      FrameLUMUnitsNonDB2.Scale := dScale;
      FrameLUMUnitsNonDB2.SetHeight(pnlBaselineAccuracy.Height-2);
    end;
  end; {with}
end;

(*******************************************************************************
@procedure btnNext4Click(Sender: TObject);

@description
  1. Checks that valid information for the prism has been entered.
  2. Moves to the next page of the wizard, where you can enter the meteorology information.
*******************************************************************************)
procedure TfrmJob.btnNext4Click(Sender: TObject);
var
  doSaveData: Boolean;
begin
  doSaveData := False;
  hasPrismConstantBeenSetInEDM := rbtnPrismConstantInEDM.Checked;
  rbtnPrismConstantInEDM2.Checked := hasPrismConstantBeenSetInEDM;

  if HasValidJobFields4 then
  begin
    if (not dmMain.rxToInstrument.FieldByName('InstConstant').isNull) and
       (dmMain.rxToInstrument.FieldByName('InstConstant').asFloat <> 0) then
    begin
      if rbtnPrismConstantInEDM.Checked then
      begin
        if MessageDlg('Are you sure you have entered the Prism Constant into the EDM instrument',
        mtWarning,[mbYes, mbNo],0) = mrNo then
          Exit;
      end;
    end;
    strInstrumentType := strToInstrumentType;
    aInstrumentClass := icNone;
    if dmMain.rxToInstrument.isEmpty then aInstrumentClass := icInstrument;
    if dmMain.rxToInstrumentModel.isEmpty then
       aInstrumentClass := icModel
    else
      strInstrumentModel := dmMain.rxToInstrumentModel.FieldByName('ModelName').AsString;

    if dmMain.rxToInstrumentMake.isEmpty then
        aInstrumentClass := icMake
    else
      strInstrumentMake  := dmMain.rxToInstrumentMake.FieldByName('MakeName').AsString;

    if aInstrumentClass = icNone then
      doSaveData := True
    else
    begin
      edtInstrumentOwner.Text := edtInst2Owner.Text;
      pcMain.ActivePage := tsAddInstrument;
      EnterNewInstrument(strToInstrumentType,aInstrumentClass);
    end;
  end;

  if doSavedata then
  begin
    rbtnExisting.Enabled := True;
    dmMain.hasDefaultValues := False;
    sPageNumber := GetPageNumber(tsUncertainty.Caption);
    lblPageUncertainty.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsUncertainty;
  end;
end;

(*******************************************************************************
@procedure chkMetsDialClick(Sender: TObject);

@description
  Enables the user to enter the serial numbers and corrections for the Mets instruments
*******************************************************************************)
procedure TfrmJob.chkMetsDialClick(Sender: TObject);
begin
  if chkMetsDial.Checked then
  begin
    pnlMets.Visible := False;
    lblDownloadWarning.Visible := False;
    lblSuggestion.Visible := False;
  end
  else
  begin
    pnlMets.Visible := True;
    lblDownloadWarning.Visible := rbtnDownload.Checked;
    if lblDownloadWarning.Visible then
    begin
      lblSuggestion.Visible := True;
      lblNumberMetSets.Visible := False;
      vedtNumberMetSets.Visible := False;
    end
    else
    begin
      lblNumberMetSets.Visible := True;
      vedtNumberMetSets.Visible := True;
    end;
  end;
  hasChangedMets := True;
end;

(*******************************************************************************
@procedure ShowErrors(ErrorList : TStringList);

@description
  Displays an error message.
*******************************************************************************)
procedure TfrmJob.ShowErrors(ErrorList : TStringList);
var
  strLine : String;
  I : Integer;
begin
  strLine := '';
  if ErrorList.Count > 0 then
  begin
    for I := 0 to ErrorList.Count-1 do
    begin
      if I > 0 then strLine := strLine+#10;
      strLine := strLine+ErrorList[I];
    end;
    MessageDlg(strLine,mtError,[mbOk],0);
  end;
end;

(*******************************************************************************
@function HasValidJobFields1 : Boolean;

@description
  Checks if the observer and job names have been entered.
*******************************************************************************)
function TfrmJob.HasValidJobFields1 : Boolean;
begin
  ErrorList.Clear;
  if edtObserverName.Text = '' then
  begin
    ErrorList.Add('You must enter an observer name.');
    edtObserverName.SetFocus;
  end;
  if rbtnNew.Checked and (edtNewJobName.Text = '') then
  begin
    ErrorList.Add('You must enter an job name.');
    edtNewJobName.SetFocus;
  end;
  ShowErrors(ErrorList);

  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@function HasValidJobFields2 : Boolean;

@description
  Checks if the weather conditions has been entered.
*******************************************************************************)
function TfrmJob.HasValidJobFields2 : Boolean;
begin
  ErrorList.Clear;
  if edtWeather.Text = '' then
  begin
    ErrorList.Add('You must enter the weather conditions.');
    edtWeather.SetFocus;
  end;

  ShowErrors(ErrorList);

  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@function HasValidJobFields3 : Boolean;

@description
  Checks if the instrument owner has been entered.
*******************************************************************************)
function TfrmJob.HasValidJobFields3 : Boolean;
begin
  ErrorList.Clear;
  if edtInst1Owner.Text = '' then
  begin
    ErrorList.Add('You must enter the instrument owner.');
    edtInst1Owner.SetFocus;
  end;
  ShowErrors(ErrorList);
  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@function HasValidJobFields4 Boolean;

@description
  Checks if the instrument owner has been entered.
*******************************************************************************)
function TfrmJob.HasValidJobFields4 : Boolean;
begin
  ErrorList.Clear;
  if edtInst2Owner.Text = '' then
  begin
    ErrorList.Add('You must enter the instrument owner.');
    edtInst2Owner.SetFocus;
  end;
  ShowErrors(ErrorList);
  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  1. Initialises the settings.
  2. Displays the first page of the wizard
*******************************************************************************)
procedure TfrmJob.FormShow(Sender: TObject);
begin
  TabsheetList := TStringList.Create;
  sPageNumber := 1;
  doEvents := False;
  dmMain.doEvents := False;
  dmBase.doEvents := False;
  rxDistObs.Active := True;
  hasChangedMets := False;
  dTolerance := 0.3;
  edtTolerance.Value := dTolerance;
  edtTolerance2.Value := dTolerance;
  edtTolerance3.Value := dTolerance;
  edtTolerance4.Value := dTolerance;
  lblDownloadWarning.Visible := False;
  pcAccreditation.ActivePage := tsAccreditation;

  FilterBaseline(''); // Gets all data from main baseline table

  if canCalibrateBaseline then
  begin
    gbLogos.Visible := True;
    rbtnbaseLine.Enabled := True;
    btnLogoAccreditation.Visible := True;
    btnDeleteLogoAccreditation.Visible := True;
    memAccreditationLogoTitle.Color := clWindow;
    memAccreditationLogoTitle.ReadOnly := False;
    memAccreditationLogoTitle.Top := 138;
    lblLogoTitle.Top := 138;
    gbAccreditation.Height := 180;
  end
  else
  begin
    chkIncludeLogos.Checked := False;
    gbLogos.Visible := False;
    gbNumberPrints.Top := 104;
    rbtnbaseLine.Enabled := False;
    btnLogoAccreditation.Visible := False;
    btnDeleteLogoAccreditation.Visible := False;
    memAccreditationLogoTitle.Color := clBtnFace;
    memAccreditationLogoTitle.ReadOnly := True;
    memAccreditationLogoTitle.Top := 106;
    lblLogoTitle.Top := 106;
    gbAccreditation.Height := 148;

    // Public users can not change the uncertainties
    // Public users can now change the uncertainties                 KW 25/8/2021
    {lblUncertaintyHeader.Caption := 'Uncertainties';
    dbedtUncertaintyEDMHeight.ReadOnly := True;
    dbedtUncertaintyEDMHeight.Color := clBtnFace;
    dbedtUncertaintyPrismHeight.ReadOnly := True;
    dbedtUncertaintyPrismHeight.Color := clBtnFace;
    dbedtUncertaintyPillarHeightDiff.ReadOnly := True;
    dbedtUncertaintyPillarHeightDiff.Color := clBtnFace;
    dbedtUncertaintyTemp.ReadOnly := True;
    dbedtUncertaintyTemp.Color := clBtnFace;
    dbedtUncertaintyPressure.ReadOnly := True;
    dbedtUncertaintyPressure.Color := clBtnFace;
    dbedtUncertaintyHumidity.ReadOnly := True;
    dbedtUncertaintyHumidity.Color := clBtnFace;
    dbedtRejectionCriterion.ReadOnly := True;
    dbedtRejectionCriterion.Color := clBtnFace;
    dbedtUncertaintyOffset.ReadOnly := True;
    dbedtUncertaintyOffset.Color := clBtnFace;
    dbedtUncertaintyCentringEDM.ReadOnly := True;
    dbedtUncertaintyCentringEDM.Color := clBtnFace;
    dbedtUncertaintyCentringPrism.ReadOnly := True;
    dbedtUncertaintyCentringPrism.Color := clBtnFace;}

  end;

  dbedtUnitWaveLength.ReadOnly := True;		// KW Instrument parameters can only be edited from the Instrument Model
  dbedtFrequency.ReadOnly := True;
  dbedtCarrierWaveLength.ReadOnly := True;
  dbedtRefractiveIndex.ReadOnly := True;
  dbedtUnitWaveLength.Color := clBtnFace;
  dbedtFrequency.Color := clBtnFace;
  dbedtCarrierWaveLength.Color := clBtnFace;
  dbedtRefractiveIndex.Color := clBtnFace;
  
  hasChangedDefault := False;
  hasValidBaseline := True;
  dDefaultHumidity := 50.0;
  strHumidityType := 'D';
  ErrorList := tStringList.Create;
  strAtInstrumentType := 'E';
  strToInstrumentType := 'P';

  dmMain.rxBaseline.Active := True;
  if dmMain.rxBaseline.isEmpty then
  begin
    MessageDlg('There are no baselines.'+#10+
     'You must first enter the baseline used for the calibration.',mtWarning,[mbOK],0);
   Close;
  end;

  TabsheetList.Clear;
  TabsheetList.Add('tsJob');
  pcMain.ActivePage := tsJob;
  if dmBase.rxJob.isEmpty then
    rbtnExisting.Enabled := False;

  rbtnNew.Checked := True;
  rbtnInstrument.Checked := True;
  pnlJobBottom.Visible := False;

  SetupNewJob;

  FilterJob('I');

  with dmMain.rxJob do
  begin
    Last;
    rxdblcJob.DisplayValue := FieldByName('JobDescription').AsString;
  end;

  sNextInstrumentId := dmBase.GetLastId(dmBase.rxInstrument,'InstID');

  dmMain.rxAtInstrument.EmptyTable;
  dmMain.rxAtInstrument.LoadFromDataSet(dmBase.rxInstrument,0,lmAppend);
  dmMain.rxAtInstrumentModel.EmptyTable;
  dmMain.rxAtInstrumentModel.LoadFromDataSet(dmBase.rxInstrumentModel,0,lmAppend);
  dmMain.rxAtInstrumentMake.EmptyTable;
  dmMain.rxAtInstrumentMake.LoadFromDataSet(dmBase.rxInstrumentMake,0,lmAppend);

  dmMain.rxToInstrument.EmptyTable;
  dmMain.rxToInstrument.LoadFromDataSet(dmBase.rxInstrument,0,lmAppend);
  dmMain.rxToInstrumentModel.EmptyTable;
  dmMain.rxToInstrumentModel.LoadFromDataSet(dmBase.rxInstrumentModel,0,lmAppend);
  dmMain.rxToInstrumentMake.EmptyTable;
  dmMain.rxToInstrumentMake.LoadFromDataSet(dmBase.rxInstrumentMake,0,lmAppend);

  dmMain.rxJMeasure.EmptyTable;
  dmMain.rxFilteredEDMObs.EmptyTable;

  dmMain.sNextEDMObsId := dmBase.GetLastId(dmBase.rxEDMObs,'EDMObsID');
  dmMain.sNextMeasId := dmBase.GetLastId(dmBase.rxJMeasure,'MeasID');
  rbtnDefaultHumidity.Checked := True;

  strLogoFolder := ExtractFilePath(Application.ExeName);
  strLogoAuthorityFolder := strLogoFolder;
  GetLogos;

  strCopyRight := GetCopyRightReport;
  strProgramOwner := GetProgramOwner;

  doEvents := True;
  dmMain.doEvents := True;
  dmBase.doEvents := True;
end;

(*******************************************************************************
@procedure FormClose(Sender: TObject; var Action: TCloseAction);

@description
  Frees the Error List
*******************************************************************************)
procedure TfrmJob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TabSheetList.free;
  ErrorList.Free;
end;

(*******************************************************************************
@procedure edtNewJobNameChange(Sender: TObject);

@description
  Enables the Next button when you enter a new job name.
*******************************************************************************)
procedure TfrmJob.edtNewJobNameChange(Sender: TObject);
begin
  if pcMain.ActivePage = tsJob then
  begin
    TabsheetList.Clear;
    TabsheetList.Add('tsJob');
    edtNewJobName.Color := clWindow;
    if edtNewJobName.Text = '' then
    begin
      btnNext1.Enabled := False;
    end
    else
    begin
      pnlJobBottom.Visible := True;
      strJobName := edtNewJobName.Text;
      btnNext1.Enabled := True;
    end;
  end;
end;

(*******************************************************************************
@procedure CopyJobToForm;

@description
  Extracts the job information from the database and displays this information
  on the tabsheets.
*******************************************************************************)
procedure TfrmJob.CopyJobToForm;
var
  sBaselineId : Integer;
  aDate : TDate;
  aTime : TTime;
  strStartDate : String;
  strStartTime : String;
  strEndDate : String;
  strEndTime : String;
  sJobID : Integer;
  doContinue: Boolean;
  showMetsPanel: Boolean;
begin
  aDate := Date;
  aTime := Time;
  with dmMain.rxJob do
  begin
    strJobName := FieldByName('JobDescription').AsString;
    strStartDate := Trim(FieldByName('JobStartCalibrationDate').AsString);
    strStartTime := Trim(FieldByName('JobStartCalibrationTime').AsString);
    strEndDate := Trim(FieldByName('JobEndCalibrationDate').AsString);
    strEndTime := Trim(FieldByName('JobEndCalibrationTime').AsString);

    if Pos('?',strStartTime) > 0 then
      strStartTime := TimeToStr(aTime);
    if Pos('?',strEndTime) > 0then
      strEndTime := TimeToStr(aTime);
    if Pos('N/A',strStartTime) > 0 then
      strStartTime := TimeToStr(aTime);
    if Pos('N/A',strEndTime) > 0 then
      strEndTime := TimeToStr(aTime);

    while Pos('.', strStartTime) > 0 do
      strStartTime[Pos('.', strStartTime)] := ':';
    while Pos('.', strEndTime) > 0 do
      strEndTime[Pos('.', strEndTime)] := ':';

    try
      pickStartDate.Date := StrToDate(strStartDate);
      pickStartDate.Time := StrToTime('0:0:0');
    except
      pickStartDate.Date := aDate;
      pickStartDate.Time := StrToTime('0:0:0');
    end;

    try
      pickStartTime.Date := pickStartDate.Date;
      pickStartTime.Time := StrToTime(strStartTime);
    except
      pickStartTime.Date := aDate;
      pickStartTime.Time := aTime;
    end;

    try
      pickEndDate.Date   := StrToDate(strEndDate);
      pickEndDate.Time   := StrToTime('0:0:0');
    except
      pickEndDate.Date := pickStartDate.Date;
      pickEndDate.Time := StrToTime('0:0:0');
    end;

    try
      pickEndTime.Date   := pickStartTime.Date;
      pickEndTime.Time   := StrToTime(strEndTime);
    except
      pickEndTime.Date := pickStartTime.Date;
      pickEndTime.Time := pickStartTime.Time+StrToTime('1:00:00');
    end;

    if pickEndDate.Date < pickStartDate.Date then
    begin
      pickEndDate.Date := pickStartDate.Date;
      pickEndDate.Time := pickStartDate.Time;
    end;

    if (pickEndDate.Date = pickStartDate.Date) and
       (pickEndTime.Time <= pickStartTime.Time)  then
      pickEndTime.Time := pickStartTime.Time+StrToTime('1:00:00');

    edtObserverName.Text := FieldByName('JobObserverName').AsString;
    edtWeather.Text    := FieldByName('JobWeatherConditions').AsString;

    edtJobComments.Text := FieldByName('JobComments').AsString;

    rbtnInstrument.Checked := FieldByName('JobType').AsString = 'I';
    sBaseLineId := FieldByName('BaseLineID').AsInteger;
    sAtInstrumentId := FieldByName('InstID1').AsInteger;
    sToInstrumentId := FieldByName('InstID2').AsInteger;
    edtInst1Owner.Text := FieldByName('JobInst1Owner').AsString;
    edtInst1OwnerAddress.Text := FieldByName('JobInst1OwnerAddress').AsString;
    edtInst2Owner.Text := FieldByName('JobInst2Owner').AsString;

    Edit;
    if FieldByName('NumberThermometers').isNull then
      FieldByName('NumberThermometers').AsInteger := 1;

    if FieldByName('NumberBarometers').isNull then
      FieldByName('NumberBarometers').AsInteger := 1;

    if FieldByName('NumberThermometers').AsInteger = 0 then
      FieldByName('NumberThermometers').AsInteger := 1;

    if FieldByName('NumberBarometers').AsInteger = 0 then
      FieldByName('NumberBarometers').AsInteger := 1;

    if FieldByName('JobTempCorr').isNull then
      FieldByName('JobTempCorr').AsFloat := 0;

    if FieldByName('JobPressureCorr').isNull then
      FieldByName('JobPressureCorr').AsFloat := 0;

    if FieldByName('ThermometerCorr1').isNull then
      FieldByName('ThermometerCorr1').AsFloat := 0;

    if FieldByName('ThermometerCorr2').isNull then
      FieldByName('ThermometerCorr2').AsFloat := 0;

    if FieldByName('BarometerCorr1').isNull then
      FieldByName('BarometerCorr1').AsFloat := 0;

    if FieldByName('BarometerCorr2').isNull then
      FieldByName('BarometerCorr2').AsFloat := 0;

    if FieldByName('ThermometerCorr1').AsFloat = 0 then
      FieldByName('ThermometerCorr1').Value := FieldByName('JobTempCorr').Value;

    if FieldByName('BarometerCorr1').AsFloat = 0 then
      FieldByName('BarometerCorr1').Value := FieldByName('JobPressureCorr').Value;

    if FieldByName('NumberThermometers').AsInteger = 2 then
    begin
      if FieldByName('ThermometerCorr2').AsFloat = 0 then
        FieldByName('ThermometerCorr2').AsFloat := 2*FieldByName('JobTempCorr').AsFloat-FieldByName('ThermometerCorr1').AsFloat;
    end;

    if FieldByName('NumberBarometers').AsInteger = 2 then
    begin
      if FieldByName('BarometerCorr2').AsFloat = 0 then
        FieldByName('BarometerCorr2').AsFloat := 2*FieldByName('JobPressureCorr').AsFloat-FieldByName('BarometerCorr1').AsFloat;
    end;
    Post;

    // Displays the Mets corrections
    dmMain.doEvents := False;
    dmMain.rxMets.EmptyTable;
    dmMain.rxMets.Append;

    dmMain.rxMets.FieldByName('NumberBarometers').Value :=  FieldByName('NumberBarometers').Value;
    dmMain.rxMets.FieldByName('ThermometerCorr1').Value :=  FieldByName('ThermometerCorr1').Value;
    dmMain.rxMets.FieldByName('ThermometerCorr2').Value :=  FieldByName('ThermometerCorr2').Value;
    dmMain.rxMets.FieldByName('BarometerCorr1').Value :=  FieldByName('BarometerCorr1').Value;
    dmMain.rxMets.FieldByName('BarometerCorr2').Value :=  FieldByName('BarometerCorr2').Value;
    dmMain.rxMets.FieldByName('Thermometer1').Value :=  FieldByName('Thermometer1').Value;
    dmMain.rxMets.FieldByName('Thermometer2').Value :=  FieldByName('Thermometer2').Value;
    dmMain.rxMets.FieldByName('Barometer1').Value :=  FieldByName('Barometer1').Value;
    dmMain.rxMets.FieldByName('Barometer2').Value :=  FieldByName('Barometer2').Value;
    dmMain.rxMets.Post;

    doEvent := False;
    vedtNumberMetSets.Text :=  FieldByName('NumberThermometers').AsString;
    doEvent := True;
    dmMain.doEvents := True;

    ChangeThermometerPanel;
    ChangeBarometerPanel;
  end;

  // Checks if Mets observations have been carried out
  with dmBase.rxJMeasure do
  begin
    sJobID := dmMain.rxJob.FieldByName('JobID').AsInteger;
    First;
    doContinue := True;
    while (not EOF) and doContinue do
    begin
      if FieldByName('JobID').AsInteger = sJobID then
      begin
        doContinue := False;
        strHumidityType := FieldByName('MeasHumidityType').AsString;
        if strHumidityType='W' then rbtnWetTemp.Checked := True;
        if strHumidityType='R' then rbtnHumidity.Checked := True;
        if strHumidityType='D' then rbtnDefaultHumidity.Checked := True;
        showMetsPanel := False;
        if not FieldByName('MeasMetFlag').isNull and
           (Length(FieldByName('MeasMetFlag').AsString) > 0) then
          showMetsPanel := FieldByName('MeasMetFlag').AsString[1] = 'Y';

        if showMetsPanel then
        begin
          chkMetsDial.Checked := False;
          pnlMets.Visible := True;
          lblDownloadWarning.Visible := rbtnDownload.Checked;
        end
        else
        begin
          chkMetsDial.Checked := True;
          pnlMets.Visible := False;
          lblDownloadWarning.Visible := False;
        end;
      end;
      Next;
    end;
  end;

  with dmMain.rxBaseline do
  begin
    if Locate('BaselineID',IntToStr(sBaselineId),[]) then
    begin
      strBaseLineName := FieldByName('BaseLineName').AsString;
      if FieldByName('BaseRelativeHumidity').isNull then
        dDefaultHumidity := 50.0
      else
        dDefaultHumidity := FieldByName('BaseRelativeHumidity').AsFloat;

      if (dDefaultHumidity < 1) or (dDefaultHumidity > 100) then
        dDefaultHumidity := 50.0;
    end;
  end;

  GetModelAndMakeID(sAtInstrumentId, sAtModelId, sAtMakeId);
  GetModelAndMakeID(sToInstrumentId, sToModelId, sToMakeId);

  SetupInstrumentTables('At',strAtInstrumentType,sAtMakeId,sAtModelId,sAtInstrumentId);
  SetupInstrumentTables('To',strToInstrumentType,sToMakeId,sToModelId,sToInstrumentId)
end;

(*******************************************************************************
@procedure ClearJobForm;

@description
  Initialises the job tabsheet.
*******************************************************************************)
procedure TfrmJob.ClearJobForm;
begin
  pickStartDate.Date := Date;
  pickStartDate.Time := StrToTime('0:0:0');
  pickStartTime.Date := pickStartDate.Date;
  pickStartTime.Time := Time;

  pickEndDate.Date := pickStartDate.Date;
  pickEndDate.Time := pickStartDate.Time;
  pickEndTime.Date := pickStartTime.Date;
  pickEndTime.Time := pickStartTime.Time+StrToTime('1:00:00');

  edtObserverName.Text := '';
  edtWeather.Text    := '';
  chkMetsDial.Checked := True;
  lblDownloadWarning.Visible := False;
  pnlMets.Visible := False;

  edtJobComments.Text := '';
  edtInst1Owner.Text := '';
  edtInst1OwnerAddress.Text := '';
  edtInst2Owner.Text := '';

  dDefaultHumidity := 50.0;
  strHumidityType := 'D';
  rbtnDefaultHumidity.Checked := True;

  with dmMain.rxBaseline do
  begin
    First;
    Locate('BaselineName','Curtin',[loCaseInsensitive, loPartialKey]);
    strBaseLineName := FieldByName('BaseLineName').AsString;
    rxdblcBaseline.Refresh;
    rxdblcBaseline.DisplayValue := FieldByName('BaselineName').AsString;
  end;

  dmMain.rxMets.EmptyTable;
  dmMain.rxMets.Append;
  doEvent := False;
  vedtNumberMetSets.Value := 1;
  doEvent := True;
  ChangeThermometerPanel;
  ChangeBarometerPanel;

  btnDelete.Enabled := False;
end;


(*******************************************************************************
@procedure btnNextMetsClick(Sender: TObject);

@description
  1. Validates the Meteorlogy settings and job details.
  2. Save the job information.
  3. Download from Text file option: Imports and validates the data from a text file.
  4. Open the next page of the wizard where you can view, edit, delete and enter observations
*******************************************************************************)
procedure TfrmJob.btnNextMetsClick(Sender: TObject);
var
 dUnitLength, dModFreq, dRefractiveIndex, dC: Double;
 doSaveJob: Boolean;
begin
  doSaveJob := FALSE;
  if HasValidJobFields2 then
  begin

    SaveJob;     // Save job before you can update mets

    if hasChangedMets then
      UpdateMetsFields;

    hasChangedMets := False;

    dmMain.doEvents := False;
    with dmMain.rxJob do
    begin
      Edit;
      FieldByName('JobWeatherConditions').AsString := edtWeather.Text;
      Post;
    end;

    with dmBase.rxJob do
    begin
      if Locate('JobId',dmMain.rxJob.FieldByName('JobID').AsString,[]) then
      begin
        Edit;
        FieldByName('JobWeatherConditions').AsString := edtWeather.Text;
        Post;
      end;
    end;
    dmMain.doEvents := True;

    cbManufacturerSpecs.Checked := False;
    PositionGbRejection;
    if rbtnBaseline.Checked then
    begin
      with dmMain.rxAtInstrumentModel do
      begin
        pnlSpecifications.Caption := Format('%8.2f mm + %8.2f ppm',
        [FieldByName('ModelManufStdDevConst').AsFloat*1000,
        FieldByName('ModelManufStdDevPPM').AsFloat]);
      end;
    end;

    if not chkMetsDial.Checked then
    begin
    //***************************************
    // Compute reference refractive index
    //***************************************
      if rbtnComputeRefractiveIndex.Checked then
      begin
        dUnitLength := dmMain.rxAtInstrumentModelModelUnitLength.AsFloat;
        dModFreq := dmMain.rxAtInstrumentModelModelModFreq.AsFloat;
        dRefractiveIndex :=
                 VELOCITY_LIGHT / (2.0 * dUnitLength * dModFreq);
        dC  := (dRefractiveIndex - 1.000) * 1000000.000;

        if (dC < 240) or (dC > 335 ) then
        begin
          rbtnManuRefractiveIndex.Checked := True;
          {
          MessageDlg('The Computed Refractive Index is not correct.'+#10+#10+
            'Check the unit length and modulation frequency of the EDM instrument'+#10+
            'or re-calibrate the EDM instrument with the meteorological measurements'+#10+
            'entered into the EDM instrument (Tick the ''Mets Dial Set'' box).'+#10+#10+
            'Check if the EDM instrument is a Pulse Distance Meter. This application'+#10+
            'requires that you should always enter the meteorological measurements'+#10+
            'into a Pulse Distance Meter.'+#10+#10+
            'Alternatively you can select to use the Manufacturer''s or Default Refractive Index.',
            mtWarning,[mbOK],0);
            Exit;
          }
        end
        else
          dmMain.dRefractiveIndex := dRefractiveIndex;
      end;

      if rbtnManuRefractiveIndex.Checked then
      begin
        with dmMain.rxAtInstrumentModel do
        begin
          if FieldByName('ManuRefractiveIndex').isNull then
          begin
            rbtnDefaultRefractiveIndex.Checked := True;
            {
            MessageDlg('Manufacturer''''s Refractive Index must be between 1.0002 and 1.0004',
            mtWarning,[mbOK],0);
            Application.ProcessMessages;

            Exit;
            }
          end
          else
          begin
            dRefractiveIndex := FieldByName('ManuRefractiveIndex').AsFloat;
            if (dRefractiveIndex < 1.0002) or (dRefractiveIndex > 1.0004) then
            begin
              FieldByName('ManuRefractiveIndex').Clear;
              rbtnDefaultRefractiveIndex.Checked := True;
              {
              MessageDlg('Manufacturer''''s Refractive Index must be between 1.0002 and 1.0004',
              mtWarning,[mbOK],0);
              Exit;
              }
            end
            else
            begin
              dmMain.dRefractiveIndex := dRefractiveIndex;
            end;
          end;
          if State = dsEdit then Post;
        end
      end;

      if rbtnDefaultRefractiveIndex.Checked then
      begin
        with dmBase.rxDefault do
        begin
          if FieldByName('Default').isNull then
          begin
            FieldByName('Default').AsFloat := 1.000280;
            dRefractiveIndex := 1.000280;
            {
            MessageDlg('Default Refractive Index must be between 1.0002 and 1.0004',
            mtWarning,[mbOK],0);
            Exit;
            }
          end
          else
          begin
            dRefractiveIndex := FieldByName('Default').AsFloat;
            if (dRefractiveIndex < 1.0002) or (dRefractiveIndex > 1.0004) then
            begin
              FieldByName('Default').AsFloat := 1.000280;
              dRefractiveIndex := 1.000280;
              {
              FieldByName('Default').Clear;
              MessageDlg('Default Refractive Index must be between 1.0002 and 1.0004',
              mtWarning,[mbOK],0);
              Exit;
              }
            end;
          end;
          dmMain.dRefractiveIndex := dRefractiveIndex;
          if State = dsEdit then Post;
        end;
      end;
    end;
    Screen.Cursor := crHourGlass;

    dTolerance := edtTolerance3.Value;
    edtTolerance.Value := dTolerance;
    edtTolerance2.Value := dTolerance;
    edtTolerance4.Value := dTolerance;
    if rbtnDownload.Checked then
    begin
      if dmMain.rxJMeasure.isEmpty then
      begin
        if ImportFile then
        begin
          with dmMain.rxMets do
          begin
            Edit;
            if FieldByName('NumberThermometers').AsFloat = 2 then
            begin
              FieldByName('NumberThermometers').AsFloat := 1;
              FieldByName('NumberBarometers').AsFloat := 1;
            end;
            FieldByName('ThermometerCorr1').AsFloat := 0;
            FieldByName('ThermometerCorr2').AsFloat := 0;
            FieldByName('BarometerCorr1').AsFloat := 0;
            FieldByName('BarometerCorr2').AsFloat := 0;
            Post;
          end;

          with dmMain.rxJob do
          begin
            Edit;
            if FieldByName('NumberThermometers').AsFloat = 2 then
            begin
              FieldByName('NumberThermometers').AsFloat := 1;
              FieldByName('NumberBarometers').AsFloat := 1;
            end;
            FieldByName('JobTempCorr').AsFloat := 0;
            FieldByName('JobPressureCorr').AsFloat := 0;
            FieldByName('ThermometerCorr1').AsFloat := 0;
            FieldByName('ThermometerCorr2').AsFloat := 0;
            FieldByName('BarometerCorr1').AsFloat := 0;
            FieldByName('BarometerCorr2').AsFloat := 0;
            Post;
          end;
          with dmBase.rxJob do
          begin
            Edit;
            if FieldByName('NumberThermometers').AsFloat = 2 then
            begin
              FieldByName('NumberThermometers').AsFloat := 1;
              FieldByName('NumberBarometers').AsFloat := 1;
            end;
            FieldByName('JobTempCorr').AsFloat := 0;
            FieldByName('JobPressureCorr').AsFloat := 0;
            FieldByName('ThermometerCorr1').AsFloat := 0;
            FieldByName('ThermometerCorr2').AsFloat := 0;
            FieldByName('BarometerCorr1').AsFloat := 0;
            FieldByName('BarometerCorr2').AsFloat := 0;
            Post;
          end;

          if vedtNumberMetSets.Value = 2 then
            vedtNumberMetSets.Value := 1;

          SetMetsFieldsInGrid;
        end
        else
        begin
          Screen.Cursor := crDefault;
          Abort;
        end;
      end;
    end;
    Screen.Cursor := crDefault;
    GotoObservationPage(doSaveJob);
    btnExportFile.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteObs.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteRecord.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnEdit.Enabled := (not dmMain.rxJMeasure.isEmpty);
  end;
end;

(*******************************************************************************
@procedure btnBackMetsClick(Sender: TObject);

@description
  1. Returns to the previous page of the wizard.
  2. Note that Observation Capture Method will not be opened once observations
     have been downloaded or entered.
*******************************************************************************)
procedure TfrmJob.btnBackMetsClick(Sender: TObject);
var
  doEvents2: Boolean;
begin
  doEvents2 := dmMain.doEvents;
  hasChangedMets := False;
  dmMain.doEvents := False;
  if dmMain.rxJMeasure.isEmpty then
  begin
    sPageNumber := GetPageNumber(tsSelectEntryType.Caption);
    lblPageSelectEntryType.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsSelectEntryType;
    edtTolerance3.Value := dTolerance;
  end
  else
  begin
    rbtnEnter.Checked := True;
    if rbtnBaseline.Checked then
    begin
      sPageNumber := GetPageNumber(tsUncertainty.Caption);
      lblPageUncertainty.Caption := 'Page '+IntToStr(sPageNumber);
      pcMain.ActivePage := tsUncertainty;
    end
    else
    begin
      sPageNumber := GetPageNumber(tsStandards.Caption);
      lblPageStandards.Caption := 'Page '+IntToStr(sPageNumber);
      pcMain.ActivePage := tsStandards;
    end;
  end;
  dmMain.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure btnNext3Click(Sender: TObject);

@description
  1. Posts any changes to the Instrument model.
  2. Opens the next page, where you can select or create a prism.
*******************************************************************************)
procedure TfrmJob.btnNext3Click(Sender: TObject);
begin
  if (dmMain.rxAtInstrumentModel.State = dsInsert) or
  (dmMain.rxAtInstrumentModel.State = dsEdit) then
  begin
    dmMain.rxAtInstrumentModel.Post;
  end;

  if HasValidJobFields3 then
  begin
    strInstrumentType := strAtInstrumentType;
    aInstrumentClass := icNone;
    if dmMain.rxAtInstrument.isEmpty then aInstrumentClass := icInstrument;
    if dmMain.rxAtInstrumentModel.isEmpty then aInstrumentClass := icModel;
    if dmMain.rxAtInstrumentMake.isEmpty then  aInstrumentClass := icMake;
    if not dmMain.rxAtInstrumentMake.isEmpty then
      strInstrumentMake  := dmMain.rxAtInstrumentMake.FieldByName('MakeName').AsString;
    if not dmMain.rxAtInstrumentModel.isEmpty then
      strInstrumentModel := dmMain.rxAtInstrumentModel.FieldByName('ModelName').AsString;
    if aInstrumentClass = icNone then
    begin
      strInstrumentType := strToInstrumentType;
      if ChangeToInstrument then
      begin
        sPageNumber := GetPageNumber(tsPrism.Caption);
        lblpagePrism.Caption := 'Page '+IntToStr(sPageNumber);
        pcMain.ActivePage := tsPrism;
      end;
    end
    else
    begin
      edtInstrumentOwner.Text := edtInst1Owner.Text;
      edtInstrumentOwnerAddress.Text := edtInst1OwnerAddress.Text;
      pcMain.ActivePage := tsAddInstrument;
      EnterNewInstrument(strAtInstrumentType,aInstrumentClass);
    end;
  end;
  if dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean then
  begin
    chkMetsDial.Checked := True;
    chkMetsDial.Enabled := False;
    gbPulse.Visible := True;
    pnlMets.Visible := False;
    lblDownloadWarning.Visible := False;
    lblMetsDialSetMessage.Visible := False;
  end
  else
  begin
    gbPulse.Visible := False;
    chkMetsDial.Enabled := True;
    lblMetsDialSetMessage.Visible := True;
  end;
end;

(*******************************************************************************
@procedure btnBack3Click(Sender: TObject);

@description
  Returns to the previous page in the wizard.
*******************************************************************************)
procedure TfrmJob.btnBack3Click(Sender: TObject);
begin
  hasChangedMets := False;
  doEvents := False;
  if canCalibrateBaseline then
  begin
    dmBase.GetMethodDescription(memAccreditationLogoTitle,'Accreditation Logo Title');
    if (ImageAccreditation1.Picture.Bitmap.Empty) or
       (ImageAccreditation1.Picture = nil) or (strAccreditationLogo = '') then
    begin
      ImageAccreditation1.Picture := nil;
      strAccreditationLogo := '';
      btnDeleteLogoAccreditation.Enabled := False;
      btnLogoAccreditation.Caption := 'Create Logo';
    end;
    if rbtnBaseline.Checked then
    begin
      pcLUM.ActivePage := tsLUMBaseline;
      ShowLUMUnits;
      dmBase.rxStandard.Locate('Type','F',[]);
      chkBaselineLUM1.Checked := dmBase.rxStandard.FieldByName('Description').AsString = 'LUM';
    end
    else
    begin
      pcLUM.ActivePage := tsLUMEDM;
      ShowLUMUnits;
      dmBase.rxStandard.Locate('Type','G',[]);
      chkEDMLUM1.Checked := dmBase.rxStandard.FieldByName('Description').AsString = 'LUM';
    end;
    sPageNumber := GetPageNumber(tsLeastUncertainty.Caption);
    lblLeastUncertaintyPage.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsLeastUncertainty;
  end
  else
  begin
    sPageNumber := GetPageNumber(tsProcedure.Caption);
    lblPageProcedure.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsProcedure;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure btnNewMakeClick(Sender: TObject);

@description
  Allows the user to create a new instrument make.
*******************************************************************************)
procedure TfrmJob.btnNewMakeClick(Sender: TObject);
begin
  lblRefractiveIndex.Visible := True;
  edtRefractiveIndex.Visible := True;
  edtInstrumentOwner.Text := edtInst1Owner.Text;
  if edtInst1Owner.Text = '' then
  begin
    edtInstrumentOwner.Color := clWindow;
    edtInstrumentOwner.ReadOnly := False;
  end
  else
  begin
    edtInstrumentOwner.Color := clBtnFace;
    edtInstrumentOwner.ReadOnly := True;
  end;

  strInstrumentMake  := dmMain.rxAtInstrumentMake.FieldByName('MakeName').AsString;
  aInstrumentClass := icMake;
  strInstrumentType := strAtInstrumentType;
  pcMain.ActivePage := tsAddInstrument;
  EnterNewInstrument(strAtInstrumentType,aInstrumentClass);
  pcStdDev.ActivePage := tsEDMStdDev;
end;

(*******************************************************************************
@procedure btnNewModelClick(Sender: TObject);

@description
  Allows the user to create a new instrument model.
*******************************************************************************)
procedure TfrmJob.btnNewModelClick(Sender: TObject);
begin
  lblRefractiveIndex.Visible := True;
  edtRefractiveIndex.Visible := True;
  edtInstrumentOwner.Text := edtInst1Owner.Text;
  if edtInst1Owner.Text = '' then
  begin
    edtInstrumentOwner.Color := clWindow;
    edtInstrumentOwner.ReadOnly := False;
  end
  else
  begin
    edtInstrumentOwner.Color := clBtnFace;
    edtInstrumentOwner.ReadOnly := True;
  end;

  strInstrumentMake  := dmMain.rxAtInstrumentMake.FieldByName('MakeName').AsString;
  strInstrumentModel := dmMain.rxAtInstrumentModel.FieldByName('ModelName').AsString;
  aInstrumentClass   := icModel;
  strInstrumentType := strAtInstrumentType;
  pcMain.ActivePage := tsAddInstrument;
  EnterNewInstrument(strAtInstrumentType,aInstrumentClass);
end;

(*******************************************************************************
@procedure btnNewInstrumentClick(Sender: TObject);

@description
  Allows the user to create a new instrument.
*******************************************************************************)
procedure TfrmJob.btnNewInstrumentClick(Sender: TObject);
begin
  edtInstrumentOwner.Text := edtInst1Owner.Text;
  if edtInst1Owner.Text = '' then
  begin
    edtInstrumentOwner.Color := clWindow;
    edtInstrumentOwner.ReadOnly := False;
  end
  else
  begin
    edtInstrumentOwner.Color := clBtnFace;
    edtInstrumentOwner.ReadOnly := True;
  end;
  strInstrumentMake  := dmMain.rxAtInstrumentMake.FieldByName('MakeName').AsString;
  strInstrumentModel := dmMain.rxAtInstrumentModel.FieldByName('ModelName').AsString;
  aInstrumentClass   := icInstrument;
  strInstrumentType := strAtInstrumentType;
  pcMain.ActivePage := tsAddInstrument;
  EnterNewInstrument(strAtInstrumentType,aInstrumentClass);
end;

(*******************************************************************************
@procedure EnterNewInstrument( strInstrType: String; aInstrClass: TInstrumentClass);

@description
  1. Sets default values for a new instrument.
  2. Resets the tabsheet so that the user can create a new instrument.
*******************************************************************************)
procedure TfrmJob.EnterNewInstrument(
   strInstrType: String;
   aInstrClass: TInstrumentClass);
begin
  if aInstrClass <> icNone then
  begin
    edtInstrumentMake.Text := '';
    edtCountry.Text := '';
    edtModelName.Text := '';
    bedtModelStdDevConst.Value := 0;
    bedtWaveLength.Value := 0;
    bedtCarrierWaveLength.Value := 0;
    edtModelStdDevPPM.Text := '0';
    bedtModFreq.Value := 0;
    edtModelComments.Text := '';
    edtInstrumentSerialNumber.Text := '';
    edtInstComments.Text := '';
    bedtInstConst.value := 0;
    bedtInstStdDevConst.Value := 0.0001;
    edtInstScaleFact.Text := '0';
    edtInstStdDevPPM.Text := '0';
    edtRefractiveIndex.Text := '';
    edtInstrumentOwnerAddress.Text := '';

    if aInstrClass = icMake then
    begin
      pcInstrument.ActivePage := tsInstrumentMake;
      edtInstrumentMake.SetFocus;
    end
    else if aInstrClass = icModel then
    begin
      edtRefractiveIndex.Text := '';
      pcInstrument.ActivePage := tsInstrumentModel;
      edtMake3.Text := strInstrumentMake;
      edtMake4.Text := strInstrumentMake;
      edtModelName.SetFocus;
    end
    else if aInstrClass = icInstrument then
    begin
     pcInstrument.ActivePage := tsInstrument;
      edtMake4.Text := strInstrumentMake;
      edtModel4.Text := strInstrumentModel;
      edtInstrumentSerialNumber.SetFocus;
    end
    else
      Exit;

    if strInstrType = 'P' then
    begin
      pcStdDev.ActivePage := tsPrismConstant;
      pcStdDev.Visible          := True;
      lblModelStdDevConst.Visible  := False;
      bedtModelStdDevConst.Visible := False;
      lblModelStdDevPPM.Visible    := False;
      edtModelStdDevPPM.Visible    := False;
      lblModFreq.Visible           := False;
      bedtModFreq.Visible          := False;
      lblWaveLength.Visible        := False;
      bedtWaveLength.Visible       := False;
      lblCarrierWaveLength.Visible  := False;
      bedtCarrierWaveLength.Visible := False;
      lblInstrumentHeader.Caption := 'Add New Prism';
      lblOwnerAddress.Visible := False;
      edtInstrumentOwnerAddress.Visible := False;
      lblModelHeader.Caption := 'Add New Prism Model';
      lblMakeHeader.Caption := 'Add New Prism Make';
      chkNewPulse.Visible := False;
    end
    else
    begin
      pcStdDev.ActivePage := tsEDMStdDev;
      pcStdDev.Visible          := False;
      lblModelStdDevConst.Visible  := True;
      bedtModelStdDevConst.Visible := True;
      lblModelStdDevPPM.Visible    := True;
      edtModelStdDevPPM.Visible    := True;
      lblModFreq.Visible           := True;
      bedtModFreq.Visible          := True;
      lblWaveLength.Visible        := True;
      bedtWaveLength.Visible       := True;
      lblCarrierWaveLength.Visible  := True;
      bedtCarrierWaveLength.Visible := True;
      lblInstrumentHeader.Caption := 'Add New Instrument';
      lblOwnerAddress.Visible := True;
      edtInstrumentOwnerAddress.Visible := True;
      lblModelHeader.Caption := 'Add New Instrument Model';
      lblMakeHeader.Caption := 'Add New Instrument Make';
      chkNewPulse.Visible := True;
    end;
    if strInstrType = 'E' then
    begin
      edtType2.Text := 'EDM';
      edtType3.Text := 'EDM';
      edtType4.Text := 'EDM';
    end;
    if strInstrType = 'P' then
    begin
      edtType2.Text := 'Prism';
      edtType3.Text := 'Prism';
      edtType4.Text := 'Prism';
    end;
  end;
end;

(*******************************************************************************
@procedure GetModelAndMakeID(sInstrumentId: Integer; var sModelId: Integer;
                             var sMakeId: Integer): Boolean;
@description
  Gets the make and model index numbers of a selected Instrument
*******************************************************************************)
function TfrmJob.GetModelAndMakeID(
   sInstrumentId : Integer;
   var sModelId : Integer;
   var sMakeId : Integer) : Boolean;
begin
  Result := False;
  with dmBase.rxInstrument do
  begin
    if Locate('InstID',IntToStr(sInstrumentID),[]) then
    begin
      sModelId := FieldByName('ModelId').AsInteger;
      if dmbase.rxInstrumentModel.Locate('ModelID',IntToStr(sModelId),[]) then
      begin
        sMakeId := dmBase.rxInstrumentModel.FieldByName('MakeId').AsInteger;
        Result := True;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure SetupInstrumentTables(strEndType: String; strInstrumentType: String;
  sMakeId: Integer; sModelId: Integer; sInstrumentId: Integer);

@description
  Locates the make and model records of a selected EDM instrument and Prism.
*******************************************************************************)
procedure TfrmJob.SetupInstrumentTables(
  strEndType : String;
  strInstrumentType : String;
  sMakeId : Integer;
  sModelId : Integer;
  sInstrumentId : Integer);
begin
  if strEndType = 'At' then
  begin
    dmMain.rxAtInstrumentMake.Locate('MakeId',IntToStr(sMakeId),[]);

    FilterModel('At',strInstrumentType,sMakeId);
    with dmMain.rxAtInstrumentModel do
      if RecordCount > 1 then
      begin
        First;
        while (not EOF) and (FieldByName('ModelId').AsInteger <> sAtModelId) do
          Next;
      end;

    FilterInstrument('At',strInstrumentType,sModelId);
    with dmMain.rxAtInstrument do
      if RecordCount > 1 then
      begin
        First;
        while (not EOF) and (FieldByName('InstId').AsInteger <> sAtInstrumentId) do
          Next;
      end;
  end
  else
  if strEndType = 'To' then
  begin
    dmMain.rxToInstrumentMake.Locate('MakeId',IntToStr(sMakeId),[]);

    FilterModel('To',strInstrumentType,sMakeId);
    with dmMain.rxToInstrumentModel do
      if RecordCount > 1 then
      begin
        First;
        while (not EOF) and (FieldByName('ModelId').AsInteger <> sToModelId) do
          Next;
      end;

    FilterInstrument('To',strInstrumentType,sModelId);
    with dmMain.rxToInstrument do
      if RecordCount > 1 then
      begin
        First;
        while (not EOF) and (FieldByName('InstId').AsInteger <> sToInstrumentId) do
        begin
          Next;
        end;
      end;
  end;
end;

(*******************************************************************************
@procedure SetupInstrumentTablesforNewJob( strEndType : String;
  strInstrumentType : String);

@description
  Instrument tables are filtered so that all records contain a selected
  instrument make and instrument type.
*******************************************************************************)
procedure TfrmJob.SetupInstrumentTablesforNewJob(
  strEndType : String;
  strInstrumentType : String);
var
  sMakeID, sModelID : Integer;
begin
  if strEndType = 'At' then
  begin
    sMakeId := dmMain.rxAtInstrumentMake.FieldByName('MakeId').AsInteger;
    FilterModel('At',strInstrumentType, sMakeId);
    dmMain.rxAtInstrumentModel.First;

    sModelId := dmMain.rxAtInstrumentModel.FieldByName('ModelId').AsInteger;
    FilterInstrument('At',strInstrumentType, sModelId);
    dmMain.rxAtInstrument.First;
  end
  else
  if strEndType = 'To' then
  begin
    sMakeId := dmMain.rxToInstrumentMake.FieldByName('MakeId').AsInteger;
    FilterModel('To',strInstrumentType, sMakeId);
    dmMain.rxToInstrumentModel.First;

    sModelId := dmMain.rxToInstrumentModel.FieldByName('ModelId').AsInteger;
    FilterInstrument('To',strInstrumentType, sModelId);
    dmMain.rxToInstrument.First;
  end;
end;

(*******************************************************************************
@function ChangeAtInstrument : Boolean;

@description
  1. Returns True if there are no EDM instrument makes.
  2. Allows the user to create a new EDM instrument or select an existing one.
  3. Filters the EDM instrument tables so that only records containing the selected
     make and model are shown.
*******************************************************************************)
function TfrmJob.ChangeAtInstrument : Boolean;
var
  sMakeId, sModelId, sInstrumentId : Integer;
  strInstrType : String;
  isModelFound, isInstrumentFound : Boolean;
begin
  Result := True;
  strInstrType := 'E';
  with dmMain do
  begin
    if rxAtInstrumentMake.isEmpty then
    begin
      aInstrumentClass := icMake;
      pcMain.ActivePage := tsAddInstrument;
      EnterNewInstrument(strAtInstrumentType,aInstrumentClass);
      Result := False;
    end
    else
    begin
      sMakeId := rxAtInstrumentMake.FieldByName('MakeId').AsInteger;
      sModelId := 0;
      isModelFound := False;
      if not rxAtInstrumentModel.isEmpty then
      begin
        if rxAtInstrumentModel.FieldByName('MakeId').AsInteger = sMakeId then
        begin
          sModelId := rxAtInstrumentModel.FieldByName('ModelId').AsInteger;
          isModelFound := True;
        end;
      end;

      FilterModel('At',strInstrType,sMakeId);

      if (not rxAtInstrumentModel.isEmpty) and isModelFound then
      begin
        if not rxAtInstrumentModel.Locate('ModelId',sModelID,[]) then
           rxAtInstrumentModel.First;
      end;

      rxdblcAtInstrumentMake.DisplayValue := rxAtInstrumentMake.FieldByname('MakeName').AsString;

      if rxAtInstrumentModel.isEmpty then
      begin
        rxdblcAtInstrumentModel.Visible := False;
        rxdblcAtInstrument.Visible := False;
        lblAtInstrumentModel.Visible := False;
        lblAtInstrument.Visible := False;
        btnNewModel.Visible := True;
        btnNewInstrument.Visible := False;
      end
      else
      begin
        sModelId := rxAtInstrumentModel.FieldByName('ModelId').AsInteger;
        sInstrumentId := 0;
        isInstrumentFound := False;
        if not rxAtInstrument.isEmpty then
        begin
          if rxAtInstrument.FieldByName('ModelId').AsInteger = sModelId then
          begin
            sInstrumentId := rxAtInstrument.FieldByName('InstId').AsInteger;
            isInstrumentFound := True;
          end;
        end;

        FilterInstrument('At',strInstrType,sModelId);

        if (not rxAtInstrument.isEmpty) and isInstrumentFound and
           not rxAtInstrument.Locate('InstId',sInstrumentID,[]) then
          rxAtInstrument.First;

        rxdblcAtInstrumentModel.Visible := True;
        lblAtInstrumentModel.Visible := True;
        rxdblcAtInstrumentModel.DisplayValue := rxAtInstrumentModel.FieldByname('ModelName').AsString;
        btnNewModel.Visible := True;
        btnNewInstrument.Visible := True;

        if rxAtInstrument.isEmpty then
        begin
          rxdblcAtInstrument.Visible := False;
          lblAtInstrument.Visible := False;
          btnNewInstrument.Visible := True;
        end
        else
        begin
          rxdblcAtInstrument.Visible := True;
          lblAtInstrument.Visible := True;
          btnNewInstrument.Visible := True;
          rxdblcAtInstrument.DisplayValue := rxAtInstrument.FieldByname('InstSerialNo').AsString;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@function ChangeToInstrument : Boolean;

@description
  1. Returns True if there are no Prism makes.
  2. Allows the user to create a new prism or select an existing one.
  3. Filters the prism tables so that only records containing the selected
     make and model are shown.
*******************************************************************************)
function TfrmJob.ChangeToInstrument : Boolean;
var
  sMakeId, sModelId, sInstrumentId : Integer;
  strInstrType : String;
  isModelFound, isInstrumentFound : Boolean;
begin
  Result := True;
  strInstrType := 'P';
  with dmMain do
  begin
    if rxToInstrumentMake.isEmpty then
    begin
      aInstrumentClass := icMake;
      pcMain.ActivePage := tsAddInstrument;
      EnterNewInstrument(strToInstrumentType,aInstrumentClass);
      Result := False;
    end
    else
    begin
      sMakeId := rxToInstrumentMake.FieldByName('MakeId').AsInteger;
      sModelId := 0;
      isModelFound := False;
      if not rxToInstrumentModel.isEmpty then
      begin
        if rxToInstrumentModel.FieldByName('MakeId').AsInteger = sMakeId then
        begin
          sModelId := rxToInstrumentModel.FieldByName('ModelId').AsInteger;
          isModelFound := True;
        end;
      end;

      FilterModel('To', strInstrType, sMakeId);

      if (not rxToInstrumentModel.isEmpty) and isModelFound and
        not rxToInstrumentModel.Locate('ModelId',sModelID,[]) then
           rxToInstrumentModel.First;

      rxdblcToInstrumentMake.DisplayValue := rxToInstrumentMake.FieldByname('MakeName').AsString;
      if rxToInstrumentModel.isEmpty then
      begin
        rxdblcToInstrumentModel.Visible := False;
        rxdblcToInstrument.Visible := False;
        lblToInstrumentModel.Visible := False;
        lblToInstrument.Visible := False;
        btnNewPrismModel.Visible := True;
        btnNewPrism.Visible := False;
        gbPrismConstant.Visible := False;
      end
      else
      begin
        sModelId := rxToInstrumentModel.FieldByName('ModelId').AsInteger;
        sInstrumentId := 0;
        isInstrumentFound := False;
        if not rxToInstrument.isEmpty and
          (rxToInstrument.FieldByName('ModelId').AsInteger = sModelId) then
        begin
          sInstrumentId := rxToInstrument.FieldByName('InstId').AsInteger;
          isInstrumentFound := True;
        end;

        FilterInstrument('To',strInstrType,sModelId);

        if (not rxToInstrument.isEmpty) and isInstrumentFound and
           not rxToInstrument.Locate('InstId',sInstrumentID,[]) then
             rxToInstrument.First;

        rxdblcToInstrumentModel.Visible := True;
        rxdblcToInstrument.Visible := True;
        gbPrismConstant.Visible := True;
        lblToInstrumentModel.Visible := True;
        lblToInstrument.Visible := True;
        rxdblcToInstrumentModel.DisplayValue := rxToInstrumentModel.FieldByname('ModelName').AsString;
        btnNewPrismModel.Visible := True;
        btnNewPrism.Visible := True;
        if rxToInstrument.isEmpty then
        begin
          rxdblcToInstrument.Visible := False;
          gbPrismConstant.Visible := False;
          lblToInstrument.Visible := False;
          btnNewPrism.Visible := True;
        end
        else
        begin
          rxdblcToInstrument.Visible := True;
          gbPrismConstant.Visible := True;
          lblToInstrument.Visible := True;
          btnNewPrism.Visible := True;
          rxdblcToInstrument.DisplayValue := rxToInstrument.FieldByname('InstSerialNo').AsString;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure btnInstrumentNext4Click(Sender: TObject);

@description
  1. Saves the new EDM instrument or Prism to the database.
  2. Opens the next page of the wizard.
*******************************************************************************)
procedure TfrmJob.btnInstrumentNext4Click(Sender: TObject);
var
  doEvents2: Boolean;
begin
  doEvents2 := dmMain.doEvents;
  hasPrismConstantBeenSetInEDM := rbtnPrismConstantInEDM2.Checked;

  if HasValidInstrumentFields then
  begin
    if strInstrumentType = 'E' then
    begin
      edtInst1Owner.Text := edtInstrumentOwner.Text;
      edtInst1OwnerAddress.Text := edtInstrumentOwnerAddress.Text;
      with dmMain.rxAtInstrument do
      begin
        dmMain.doEvents := True;
        Append;
        FieldByName('InstID').AsInteger  := sNextInstrumentID;
        Inc(sNextInstrumentId);
        FieldByName('InstType').AsString := strInstrumentType;
        FieldByName('ModelId').Value := dmMain.rxAtInstrumentModel.FieldByName('ModelId').Value;
        FieldByName('InstSerialNo').AsString := edtInstrumentSerialNumber.Text;
        FieldByName('AntennaModelID').AsInteger := 0;
        FieldByName('InstAntennaSerialNo').AsString := '';

        FieldByName('InstStdDevConst').AsFloat := bedtInstStdDevConst.Value;

        FieldByName('InstStdDevPPM').AsFloat :=
                               StrToFloat(PackStr(edtInstStdDevPPM.Text));

        FieldByName('InstConstant').AsFloat := bedtInstConst.Value;

        FieldByName('InstScaleFact').AsFloat :=
                               StrToFloat(PackStr(edtInstScaleFact.Text));

        FieldByName('InstComments').AsString := edtInstComments.Text;
        Post;
        dmMain.doEvents := False;
      end;

      ResetAtInstrument;

      strInstrumentType := strToInstrumentType;
      if ChangeToInstrument then
      begin
        sPageNumber := GetPageNumber(tsPrism.Caption);
        lblPagePrism.Caption := 'Page '+IntToStr(sPageNumber);
        pcMain.ActivePage := tsPrism;
        edtInst2Owner.SetFocus;
      end;
    end
    else if strInstrumentType = 'P' then
    begin
      edtInst2Owner.Text := edtInstrumentOwner.Text;
      with dmMain.rxToInstrument do
      begin
        dmMain.doEvents := True;
        Append;
        FieldByName('InstID').AsInteger  := sNextInstrumentID;
        Inc(sNextInstrumentId);
        FieldByName('InstType').AsString := strInstrumentType;
        FieldByName('ModelId').Value := dmMain.rxToInstrumentModel.FieldByName('ModelId').Value;
        FieldByName('InstSerialNo').AsString := edtInstrumentSerialNumber.Text;
        FieldByName('AntennaModelID').AsInteger := 0;
        FieldByName('InstAntennaSerialNo').AsString := '';
        FieldByName('InstStdDevConst').AsFloat := bedtInstStdDevConst.Value;
        FieldByName('InstStdDevPPM').AsFloat := StrToFloat(Trim(edtInstStdDevPPM.Text));
        FieldByName('InstConstant').AsFloat := bedtInstConst.Value;
        FieldByName('InstScaleFact').AsFloat := StrToFloat(Trim(edtInstScaleFact.Text));
        FieldByName('InstComments').AsString := edtInstComments.Text;
        Post;
      end;

      if (not dmMain.rxToInstrument.FieldByName('InstConstant').isNull) and
         (dmMain.rxToInstrument.FieldByName('InstConstant').asFloat <> 0) then
      begin
        if rbtnPrismConstantInEDM2.Checked then
        begin
          if MessageDlg('Are you sure you have entered the Prism Constant into the EDM instrument',
          mtWarning,[mbYes, mbNo],0) = mrNo then
            Exit;
        end;
      end;

      ResetToInstrument;

      rbtnExisting.Enabled := True;

      dmMain.hasDefaultValues := False;
      hasPrismConstantBeenSetInEDM := rbtnPrismConstantInEDM2.Checked;
      sPageNumber := GetPageNumber(tsUncertainty.Caption);
      lblPageUncertainty.Caption := 'Page '+IntToStr(sPageNumber);
      pcMain.ActivePage := tsUncertainty;
    end;
    MessageDlg('Instrument '''+edtInstrumentSerialNumber.Text+''' has been saved',mtInformation,[mbOK],0);
  end;
  dmMain.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure btnBack4Click(Sender: TObject);

@description
  Returns to the previous page of the wizard
*******************************************************************************)
procedure TfrmJob.btnBack4Click(Sender: TObject);
begin
  sPageNumber := GetPageNumber(tsEDM.Caption);
  lblPageEDM.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsEDM;
end;

(*******************************************************************************
@function HasValidInstrumentNameFields : Boolean;

@description
  Validates the Instrument make.
*******************************************************************************)
function TfrmJob.HasValidInstrumentNameFields : Boolean;
begin
  ErrorList.Clear;
  if edtInstrumentMake.Text = '' then
  begin
    ErrorList.Add('You must enter an instrument make.');
    edtInstrumentMake.SetFocus;
  end;
  if edtCountry.Text = '' then
  begin
    ErrorList.Add('You must enter a country of origin.');
    edtCountry.SetFocus;
  end;

  ShowErrors(ErrorList);

  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@function HasValidInstrumentModelFields : Boolean;

@description
  Validates the Instrument model.
*******************************************************************************)
function TfrmJob.HasValidInstrumentModelFields : Boolean;
begin
  ErrorList.Clear;
  if edtModelName.Text = '' then
  begin
    ErrorList.Add('You must enter an instrument model.');
    edtModelName.SetFocus;
  end;

  if edtModelStdDevPPM.Text = '' then edtModelStdDevPPM.Text := '0';
  ShowErrors(ErrorList);

  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@function HasValidInstrumentFields : Boolean;

@description
  Validates the Instrument.
*******************************************************************************)
function TfrmJob.HasValidInstrumentFields : Boolean;
begin
  ErrorList.Clear;
  if edtInstrumentSerialNumber.Text = '' then
  begin
    ErrorList.Add('You must enter a serial number.');
    edtInstrumentSerialNumber.SetFocus;
  end;
  if  bedtInstStdDevConst.Value < 0.0001 then
  begin
    ErrorList.Add('The standard deviation of the constant must be equal or greater than 0.0001 metres.');
    bedtInstStdDevConst.SetFocus;
  end;
  if  edtInstrumentOwner.Text = '' then
  begin
    ErrorList.Add('You must enter the instrument owner.');
    edtInstrumentOwner.SetFocus;
  end;

  if edtInstScaleFact.Text = '' then edtInstScaleFact.Text := '0';
  if edtInstStdDevPPM.Text = '' then edtInstStdDevPPM.Text := '0';
  ShowErrors(ErrorList);

  Result := (ErrorList.Count=0);
end;


(*******************************************************************************
@procedure edtModelStdDevPPMChange(Sender: TObject);

@description
  Validates the Std Dev of the Instrument model.
*******************************************************************************)
procedure TfrmJob.edtModelStdDevPPMChange(Sender: TObject);
begin
  if (Trim(edtModelStdDevPPM.Text) <> '') and not IsFloat(edtModelStdDevPPM.Text) then
    ErrorMsg('You must enter a valid float value.');
end;

(*******************************************************************************
@procedure btnBackObsClick(Sender: TObject);

@description
  Returns to the previous page of the wizard where you can enter meteorological information
*******************************************************************************)
procedure TfrmJob.btnBackObsClick(Sender: TObject);
begin
  SetupMetsPage;
  sPageNumber := GetPageNumber(tsMets.Caption);
  lblPageMets.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsMets;
end;

(*******************************************************************************
@procedure btnNextObsClick(Sender: TObject);

@description
  1. Checks that enough observations have been entered.
  2. Calibrates the EDM instrument or Baseline.
  3. Displays the Reports page where you can preview or print the calibration reports.
*******************************************************************************)
procedure TfrmJob.btnNextObsClick(Sender: TObject);
var
  dUnitLength : Double;
  hasError: Boolean;
  sDegFreedom, sExtraObs: Integer;
  sMeasErrorID: Integer;
begin
  hasError := false;
  hasUpdatedBaseline := false;
  if dmMain.rxJMeasure.RecordCount < 3 then
  begin
    MessageBeep(mb_IconHand);
    MessageDlg('There must be at least 3 measurement sets before '
                + 'a calibration can be performed.',
                mtError, [mbOK], 0);
    hasError := True;
  end;

  if rbtnBaseline.Checked then
  begin
    gbCertification.Visible := True;
    dtStartCertification.Date := Date;
    dtEndCertification.Date := IncMonth(Date,24);
    sDegFreedom := dmMain.rxJMeasure.RecordCount - dmMain.rxPillar.RecordCount;
    if sDegFreedom < 2 then
    begin
      hasError := True;
      sExtraObs := 2 - sDegFreedom;
      if sExtraObs = 1 then
        MessageDlg('Not enough baseline intervals have been observed to calibrate a baseline.'+#10+
                 ' At least '+ IntToStr(sExtraObs)+ ' extra baseline interval has to be observed.',
                 mtWarning,[mbOK],0)
      else
        MessageDlg('Not enough baseline intervals have been observed to calibrate a baseline.'+#10+
                 ' At least '+ IntToStr(sExtraObs)+ ' extra baseline intervals have to be observed.',
                 mtWarning,[mbOK],0);
    end;
  end
  else
    gbCertification.Visible := False;

  if not hasError then
  begin
    frmProgress.pbarProgress.Min := 0;
    frmProgress.pbarProgress.Max := 100;
    frmProgress.pbarProgress.Visible := True;
    frmProgress.pbarProgress.Position := 0;
    if rbtnInstrument.Checked then
    begin
      frmProgress.lblMessage.Caption := 'Calibration of EDM Instrument.....';
      frmProgress.Show;
      Application.ProcessMessages;
    end
    else
    begin
      frmProgress.lblMessage.Caption := 'Calibration of Baseline.....';
      frmProgress.Show;
      Application.ProcessMessages;
    end;

    dmMain.rxJMeasure.DisableControls;
    dmMain.rxFilteredEDMObs.DisableControls;
    if CheckBeforeCalibration(sMeasErrorID) then
    begin
      frmProgress.pbarProgress.Position := 20;
      if not PerformCalibration then
      begin
        dmMain.rxJMeasure.EnableControls;
        dmMain.rxFilteredEDMObs.EnableControls;
        dmMain.rxJMeasure.Locate('MeasID',IntToStr(sMeasErrorID),[]);
        Screen.Cursor := crDefault;
        frmProgress.Close;
        Exit;
      end;
      frmProgress.pbarProgress.Position := 100;
      dUnitLength := dmMain.rxAtInstrumentModel.FieldByName('MOdelUnitLength').AsFloat;

      if dUnitLength <> 10 then
        AmendCyclicErrorsInReports(dUnitLength);

      if rbtnBaseline.Checked then
      begin
        btnUpdateBaseline.Visible := True;
        btnUpdateBaseline.Enabled := True;
      end
      else
        btnUpdateBaseline.Visible := False;

      chkIncludeLogos.Checked;
      pcLogo.Visible := True;
      pcLogo.ActivePage := tsAuthority;

      if (ImageAuthority.Picture = nil) or (strAuthorityLogo = '') then
      begin
        ImageAuthority.Picture := nil;
        strAuthorityLogo := '';
        btnDeleteLogo1.Enabled := False;
        btnLogo2.Caption := 'Create Logo';
      end;
      if (ImageAccreditation2.Picture = nil) or (strAccreditationLogo = '') then
      begin
        ImageAccreditation2.Picture := nil;
        strAccreditationLogo := '';
        btnDeleteLogo2.Enabled := False;
        btnLogo1.Caption := 'Create Logo';
      end;
      chkIncludeLogos.Checked := (strAccreditationLogo <> '') or (strAuthorityLogo <> '');

      cbLetterHead.Visible := not frmJob.rbtnInstrument.Checked;
      memAccreditationLogoTitle2.Lines := memAccreditationLogoTitle.Lines;
      if canCalibrateBaseline then
      begin
        tsAccreditation2.TabVisible := True;
        chkIncludeLogos.Caption := 'Include logos in reports and certificate'
      end
      else
      begin
        tsAccreditation2.TabVisible := False;
        chkIncludeLogos.Caption := 'Include logo in reports and certificate'
      end;
      pcLogo.ActivePage := tsAuthority;
      sPageNumber := GetPageNumber(tsReports.Caption);
      lblPageReports.Caption := 'Page '+IntToStr(sPageNumber);
      pcMain.ActivePage := tsReports;
    end
    else
      btnEdit.SetFocus;

    frmProgress.Close;
    dmMain.rxJMeasure.EnableControls;
    dmMain.rxFilteredEDMObs.EnableControls;
    dmMain.rxJMeasure.Locate('MeasID',IntToStr(sMeasErrorID),[]);
  end;
  Screen.Cursor := crDefault;
end;

(*******************************************************************************
@procedure SetMetsFieldsInGrid;

@description
  Only displays the Mets fields in the grid if the user has measured these Mets.
*******************************************************************************)
procedure TfrmJob.SetMetsFieldsInGrid;
begin
  with dmMain.rxJMeasure do
  begin
    FieldByName('MeasPressure2').Visible := False;
    FieldByName('MeasHumidity2').Visible := False;
    FieldByName('MeasDryTemp2').Visible := False;
    if chkMetsDial.Checked then
    begin
      FieldByName('MeasPressure').Visible := False;
      FieldByName('MeasHumidity').Visible := False;
      FieldByName('MeasDryTemp').Visible := False;
      lblDownloadWarning.Visible := False;
    end
    else
    begin
      FieldByName('MeasPressure').Visible := True;
      FieldByName('MeasHumidity').Visible := True;
      FieldByName('MeasDryTemp').Visible := True;
      lblDownloadWarning.Visible := rbtnDownload.Checked;

      if vedtNumberMetSets.Value = 1 then
      begin
        dbgridObs.TitleLines := 2;
        FieldByName('MeasPressure').DisplayLabel := 'Pressure~(Hectapascals)';
        FieldByName('MeasDryTemp').DisplayLabel := 'Dry Temp~(Celsius)';
        if rbtnDefaultHumidity.Checked then
           FieldByName('MeasHumidity').DisplayLabel := 'Default~Humidity(%)'
        else
        if rbtnHumidity.Checked then
           FieldByName('MeasHumidity').DisplayLabel := 'Humidity(%)'
        else
        if rbtnWetTemp.Checked then
           FieldByName('MeasHumidity').DisplayLabel := 'Wet Temp~(Celcius)';
      end
      else
      begin
        dbgridObs.TitleLines := 3;
        FieldByName('MeasPressure2').Visible := True;
        FieldByName('MeasHumidity2').Visible := True;
        FieldByName('MeasDryTemp2').Visible := True;
        FieldByName('MeasPressure').DisplayLabel := 'Pressure~EDM~(Hectapascals)';
        FieldByName('MeasDryTemp').DisplayLabel := 'Dry Temp~EDM~(Celsius)';
        if rbtnDefaultHumidity.Checked then
        begin
           FieldByName('MeasHumidity').DisplayLabel := 'Default~Humidity(%)';
           FieldByName('MeasHumidity2').Visible := False;
        end
        else if rbtnHumidity.Checked then
        begin
           FieldByName('MeasHumidity').DisplayLabel := 'Humidity~EDM~(%)';
           FieldByName('MeasHumidity2').DisplayLabel := 'Humidity~Prism~(%)';
        end
        else if rbtnWetTemp.Checked then
        begin
           FieldByName('MeasHumidity').DisplayLabel := 'Wet Temp~EDM~(Celcius)';
           FieldByName('MeasHumidity2').DisplayLabel := 'Wet Temp~Prism~(Celcius)';
        end;
      end;
    end;
  end;
  if rbtnWetTemp.Checked         then strHumidityType :='W';
  if rbtnHumidity.Checked        then strHumidityType :='R';
  if rbtnDefaultHumidity.Checked then strHumidityType :='D';

  dmMain.strHumidityType := strHumidityType;
  if chkMetsDial.Checked then
    dmMain.strMeasMetFlag := 'N'
  else
    dmMain.strMeasMetFlag := 'Y';
end;

(*******************************************************************************
@procedure btnDeleteClick(Sender: TObject);

@description
  Deletes a calibration job
*******************************************************************************)
procedure TfrmJob.btnDeleteClick(Sender: TObject);
var
  sJobId : Integer;
  strBaseJobName : String;
begin
  { Verify user really wants to delete the selected record }
  sJobId := dmMain.rxJob.FieldByName('JobID').AsInteger;
  strBaseJobName := dmMain.rxJob.FieldByName('JobDescription').AsString;
  MessageBeep(mb_IconHand);
  if MessageDlg('All data associated with job '+strBaseJobname+
  ' will be deleted.'+#10+'Are you sure you want delete this job?',MtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    with dmBase.rxJMeasure do
      if not isEmpty then
      begin
        First;
        while not EOF do
        begin
          if FieldByName('JobID').AsInteger = sJobID then
          begin
            dmBase.rxEDMObs.First;
            while not dmBase.rxEDMObs.EOF do
            begin
              if dmBase.rxEDMObs.FieldByName('MeasID').AsInteger = FieldByName('MeasId').AsInteger then
                dmBase.rxEDMObs.Delete
              else
                dmBase.rxEDMObs.Next;
            end;
            Delete;
          end
          else
            Next;
        end;
      end;

    dmMain.rxJob.Delete;

    if dmMain.rxJob.isEmpty then
    begin
      rbtnNew.Checked := True;
      dmMain.rxMets.EmptyTable;
      dmMain.rxMets.Append;
      doEvent := False;
      vedtNumberMetSets.Value := 1;
      doEvent := True;
      ChangeThermometerPanel;
      ChangeBarometerPanel;
    end
    else
    begin
      pcExistingOrNew.ActivePage := tsExistingJob;
      rxdblcbaseline.Visible := False;
      dbedtBaseline.Visible := True;
      lblBaseline.caption := 'Baseline';
      pnlJobBottom.Visible := True;
      rxdblcJob.DisplayValue := dmMain.rxJob.FieldByName('JobDescription').AsString;
      strJobName := rxdblcJob.DisplayValue;
      btnNext1.Enabled := True;
      CopyJobToForm;
    end;
    MessageDlg('Job '+strBaseJobname+' has been deleted.',MtInformation,[mbOK],0);
  end;
end;

(*******************************************************************************
@procedure dbgridObsRowChanged(Sender: TObject);

@description
  Displays the legal distance between the pillars of the selected observation record.
*******************************************************************************)
procedure TfrmJob.dbgridObsRowChanged(Sender: TObject);
begin
  if pcMain.ActivePage = tsObs then
    ShowLegalDistance;
end;

(*******************************************************************************
@procedure ShowLegalDistance;

@description
  Displays the legal distance between selected pillars.
*******************************************************************************)
procedure TfrmJob.ShowLegalDistance;
var
  sBaselineId : Integer;
  sAtPillarID, sToPillarID: integer;
begin
  if (not dmMain.rxJMeasure.isEmpty) or
     (dmMain.rxJMeasure.State = dsInsert) then
  begin
    if (not dmMain.rxJMeasure.FieldByName('MeasAtPillarId').isNull) and
       (not dmMain.rxJMeasure.FieldByName('MeasToPillarId').isNull) then
    begin
      with dmMain.rxJMeasure do
      begin
        sAtPillarID := FieldByName('MeasAtPillarId').AsInteger;
        sToPillarID := FieldByName('MeasToPillarId').AsInteger;
      end;
      with dmMain.rxBaseLine do
        sBaselineId := FieldByName('BaselineId').AsInteger;

      dLegalDistance := GetLegalDistanceBetweenPillars(sBaseLineId, sAtPillarID, sToPillarID);
      dmMain.dLegalDistance := dLegalDistance;
      if dLegalDistance > 0 then
        pnlCertifiedDistance.Caption := Format('%10.4f',[dLegalDistance])
      else
        pnlCertifiedDistance.Caption := '';
    end
    else
      pnlCertifiedDistance.Caption := '';
  end
  else
    pnlCertifiedDistance.Caption := '';
end;

(*******************************************************************************
@procedure GetLegalDistancebetweenPillars( sBaselineId : Integer;
  sAtPillarID : integer; sToPillarID : integer): Double;

@description
  Returns the legal distance between selected pillars.
*******************************************************************************)
function TfrmJob.GetLegalDistancebetweenPillars(
  sBaselineId : Integer;
  sAtPillarID : integer;
  sToPillarID : integer): Double;
var
  dSumDistance, dStartDistance : Double;
  isStart : Boolean;
begin
  dLegalDistance := 0;
  dmBase.FilterDistance(sBaselineId);
  with dmBase.rxFilteredDistance do
  begin
    if not isEmpty then
    begin
      First;
      dSumDistance := 0;
      dStartDistance := 0;
      isStart := True;
      while (not EOF) and (dLegalDistance = 0) do
      begin
        if isStart then
        begin
          if (FieldByName('PillarFromID').AsInteger = sAtPillarID) or
             (FieldByName('PillarFromID').AsInteger = sToPillarID) then
          begin
            dStartDistance := dSumDistance;
            isStart := False;
          end;
        end;
        if not isStart then
        begin
          if (FieldByName('PillarToID').AsInteger = sAtPillarID) or
             (FieldByName('PillarToID').AsInteger = sToPillarID) then
          begin
            dSumDistance := dSumDistance + FieldByName('DistLegalDistance').AsFloat;
            dLegalDistance := dSumDistance-dStartDistance;
          end;
        end;
        dSumDistance := dSumDistance + FieldByName('DistLegalDistance').AsFloat;
        Next;
      end;
    end;
  end;
  Result := dLegalDistance;
end;

(*******************************************************************************
@procedure SaveJob;

@description
  Saves a calibration job.
*******************************************************************************)
procedure TfrmJob.SaveJob;
var
  sJobId : Integer;
begin
  doEvents := False;
  dmMain.doEvents := False;
  with dmMain.rxMets do
  begin
    Edit;
    FieldByName('NumberThermometers').AsInteger := StrToInt(vedtNumberMetSets.Text);
    FieldByName('NumberBarometers').AsInteger := StrToInt(vedtNumberMetSets.Text);
    Post;
  end;
  if rbtnNew.Checked then
  begin
    with dmMain.rxJob do
    begin
      sJobID := dmBase.GetLastId(dmBase.rxJob,'JobID');
      dmMain.doEvents := True;
      Append;
      FieldByName('JobID').AsInteger := sJobID;
      FieldByName('JobDescription').AsString := strJobName;
      FieldByName('InstID1').Value := dmMain.rxAtInstrument.FieldByName('InstID').Value;
      FieldByName('InstID2').Value := dmMain.rxToInstrument.FieldByName('InstID').Value;
      FieldByName('JobInst1Owner').AsString := edtInst1Owner.Text;
      FieldByName('JobInst1OwnerAddress').AsString := edtInst1OwnerAddress.Text;
      FieldByName('JobInst2Owner').AsString := edtInst2Owner.Text;
      FieldByName('JobProcessingSoftware').Clear;
      FieldByName('JobStartCalibrationDate').AsString := DateToStr(pickStartDate.Date);
      FieldByName('JobStartCalibrationTime').AsString := TimeToStr(pickStartTime.Time);
      FieldByName('JobEndCalibrationDate').AsString   := DateToStr(pickEndDate.Date);
      FieldByName('JobEndCalibrationTime').AsString   := TimeToStr(pickEndTime.Time);
      FieldByName('JobObserverName').AsString := edtObserverName.Text;
      FieldByName('BaseLineID').Value := dmMain.rxBaseline.FieldByName('BaselineId').Value;
      FieldByName('JobWeatherConditions').AsString := edtWeather.Text;
      FieldByName('JobStdDevTemp').Value   := dmBase.rxJobUncertainty.FieldByName('Temperature').Value;
      FieldByName('JobStdDevPressure').Value := dmBase.rxJobUncertainty.FieldByName('Pressure').Value;
      FieldByName('NumberThermometers').Value := dmMain.rxMets.FieldByName('NumberThermometers').Value;
      FieldByName('NumberBarometers').Value := dmMain.rxMets.FieldByName('NumberBarometers').Value;
      FieldByName('ThermometerCorr1').Value := dmMain.rxMets.FieldByName('ThermometerCorr1').Value;
      FieldByName('ThermometerCorr2').Value := dmMain.rxMets.FieldByName('ThermometerCorr2').Value;
      FieldByName('BarometerCorr1').Value := dmMain.rxMets.FieldByName('BarometerCorr1').Value;
      FieldByName('BarometerCorr2').Value := dmMain.rxMets.FieldByName('BarometerCorr2').Value;
      FieldByName('Thermometer1').Value := dmMain.rxMets.FieldByName('Thermometer1').Value;
      FieldByName('Thermometer2').Value := dmMain.rxMets.FieldByName('Thermometer2').Value;
      FieldByName('Barometer1').Value := dmMain.rxMets.FieldByName('Barometer1').Value;
      FieldByName('Barometer2').Value := dmMain.rxMets.FieldByName('Barometer2').Value;
      if  dmMain.rxMets.FieldByName('NumberThermometers').AsInteger = 1 then
        FieldByName('JobTempCorr').Value := FieldByName('ThermometerCorr1').Value
      else
        FieldByName('JobTempCorr').AsFloat := (FieldByName('ThermometerCorr1').AsFloat+FieldByName('ThermometerCorr2').AsFloat)/2.0;

      if  dmMain.rxMets.FieldByName('NumberBarometers').AsInteger = 1 then
        FieldByName('JobPressureCorr').Value := FieldByName('BarometerCorr1').Value
      else
        FieldByName('JobPressureCorr').AsFloat := (FieldByName('BarometerCorr1').AsFloat+FieldByName('BarometerCorr2').AsFloat)/2.0;

      FieldByName('JobInstCentringStdDev').Value  := dmBase.rxJobUncertainty.FieldByName('InstrumentCentring').Value;
      FieldByName('JobInstLevellingStdDev').AsFloat := 0;
      FieldByName('JobComments').AsString := edtJobComments.Text;

      if rbtnInstrument.Checked then
        FieldByName('JobType').AsString := 'I'
      else
        FieldByName('JobType').AsString := 'B';

      FieldByName('JobInst1Owner').AsString := edtInst1Owner.Text;
      FieldByName('JobInst1OwnerAddress').AsString := edtInst1OwnerAddress.Text;
      FieldByName('JobInst2Owner').AsString := edtInst2Owner.Text;
      Post;
      dmMain.doEvents := False;
    end;
    rbtnExisting.Checked := True;
    edtNewJobName.Text := '';
  end
  else
  begin
    with dmMain.rxJob do
    begin
      dmMain.doEvents := True;
      Edit;
      FieldByName('JobDescription').AsString := strJobName;
      FieldByName('InstID1').Value := dmMain.rxAtInstrument.FieldByName('InstID').Value;
      FieldByName('InstID2').Value := dmMain.rxToInstrument.FieldByName('InstID').Value;
      FieldByName('JobInst1Owner').AsString := edtInst1Owner.Text;
      FieldByName('JobInst1OwnerAddress').AsString := edtInst1OwnerAddress.Text;
      FieldByName('JobInst2Owner').AsString := edtInst2Owner.Text;
      FieldByName('JobProcessingSoftware').Clear;
      FieldByName('JobStartCalibrationDate').AsString := DateToStr(pickStartDate.Date);
      FieldByName('JobStartCalibrationTime').AsString := TimeToStr(pickStartTime.Time);
      FieldByName('JobEndCalibrationDate').AsString   := DateToStr(pickEndDate.Date);
      FieldByName('JobEndCalibrationTime').AsString   := TimeToStr(pickEndTime.Time);
      FieldByName('JobObserverName').AsString := edtObserverName.Text;
      FieldByName('BaseLineID').Value := dmMain.rxBaseline.FieldByName('BaselineId').Value;
      FieldByName('JobWeatherConditions').AsString := edtWeather.Text;
      FieldByName('JobStdDevTemp').Value   := dmBase.rxJobUncertainty.FieldByName('Temperature').Value;
      FieldByName('JobStdDevPressure').Value := dmBase.rxJobUncertainty.FieldByName('Pressure').Value;
      FieldByName('JobInstCentringStdDev').Value  := dmBase.rxJobUncertainty.FieldByName('InstrumentCentring').Value;
      FieldByName('JobInstLevellingStdDev').AsFloat := 0; /// Check
      FieldByName('JobComments').AsString := edtJobComments.Text;

      if rbtnInstrument.Checked then
        FieldByName('JobType').AsString := 'I'
      else
        FieldByName('JobType').AsString := 'B';

      FieldByName('NumberThermometers').Value := dmMain.rxMets.FieldByName('NumberThermometers').Value;
      FieldByName('NumberBarometers').Value := dmMain.rxMets.FieldByName('NumberBarometers').Value;
      FieldByName('ThermometerCorr1').Value := dmMain.rxMets.FieldByName('ThermometerCorr1').Value;
      FieldByName('ThermometerCorr2').Value := dmMain.rxMets.FieldByName('ThermometerCorr2').Value;
      FieldByName('BarometerCorr1').Value := dmMain.rxMets.FieldByName('BarometerCorr1').Value;
      FieldByName('BarometerCorr2').Value := dmMain.rxMets.FieldByName('BarometerCorr2').Value;
      FieldByName('Thermometer1').Value := dmMain.rxMets.FieldByName('Thermometer1').Value;
      FieldByName('Thermometer2').Value := dmMain.rxMets.FieldByName('Thermometer2').Value;
      FieldByName('Barometer1').Value := dmMain.rxMets.FieldByName('Barometer1').Value;
      FieldByName('Barometer2').Value := dmMain.rxMets.FieldByName('Barometer2').Value;
      if  dmMain.rxMets.FieldByName('NumberThermometers').AsInteger = 1 then
        FieldByName('JobTempCorr').Value := FieldByName('ThermometerCorr1').Value
      else
        FieldByName('JobTempCorr').AsFloat := (FieldByName('ThermometerCorr1').AsFloat+FieldByName('ThermometerCorr2').AsFloat)/2.0;

      if  dmMain.rxMets.FieldByName('NumberBarometers').AsInteger = 1 then
        FieldByName('JobPressureCorr').Value := FieldByName('BarometerCorr1').Value
      else
        FieldByName('JobPressureCorr').AsFloat := (FieldByName('BarometerCorr1').AsFloat+FieldByName('BarometerCorr2').AsFloat)/2.0;

      Post;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure btnClose1Click(Sender: TObject);

@description
  Closes the application.
*******************************************************************************)
procedure TfrmJob.btnClose1Click(Sender: TObject);
begin
  Close;
end;

(*******************************************************************************
@procedure btnNewPrismMakeClick(Sender: TObject);

@description
  Allows the user to create a new prism make.
*******************************************************************************)
procedure TfrmJob.btnNewPrismMakeClick(Sender: TObject);
begin
  lblRefractiveIndex.Visible := False;
  edtRefractiveIndex.Visible := False;
  strInstrumentType := strToInstrumentType;
  edtInstrumentOwner.Text := edtInst2Owner.Text;
  if edtInst2Owner.Text = '' then
  begin
    edtInstrumentOwner.Color := clWindow;
    edtInstrumentOwner.ReadOnly := False;
  end
  else
  begin
    edtInstrumentOwner.Color := clBtnFace;
    edtInstrumentOwner.ReadOnly := True;
  end;
  strInstrumentMake  := dmMain.rxToInstrumentMake.FieldByName('MakeName').AsString;
  aInstrumentClass := icMake;
  pcMain.ActivePage := tsAddInstrument;
  EnterNewInstrument(strToInstrumentType,aInstrumentClass);
end;

(*******************************************************************************
@procedure btnNewPrismModelClick(Sender: TObject);

@description
  Allows the user to create a new prism model.
*******************************************************************************)
procedure TfrmJob.btnNewPrismModelClick(Sender: TObject);
begin
  lblRefractiveIndex.Visible := False;
  edtRefractiveIndex.Visible := False;
  strInstrumentType := strToInstrumentType;
  edtInstrumentOwner.Text := edtInst2Owner.Text;
  if edtInst2Owner.Text = '' then
  begin
    edtInstrumentOwner.Color := clWindow;
    edtInstrumentOwner.ReadOnly := False;
  end
  else
  begin
    edtInstrumentOwner.Color := clBtnFace;
    edtInstrumentOwner.ReadOnly := True;
  end;
  strInstrumentMake  := dmMain.rxToInstrumentMake.FieldByName('MakeName').AsString;
  strInstrumentModel := dmMain.rxToInstrumentModel.FieldByName('ModelName').AsString;
  aInstrumentClass   := icModel;
  pcMain.ActivePage := tsAddInstrument;
  EnterNewInstrument(strToInstrumentType,aInstrumentClass);
end;

(*******************************************************************************
@procedure btnNewPrismClick(Sender: TObject);

@description
  Allows the user to create a new prism.
*******************************************************************************)
procedure TfrmJob.btnNewPrismClick(Sender: TObject);
begin
  strInstrumentType := strToInstrumentType;
  edtInstrumentOwner.Text := edtInst2Owner.Text;
  if edtInst2Owner.Text = '' then
  begin
    edtInstrumentOwner.Color := clWindow;
    edtInstrumentOwner.ReadOnly := False;
  end
  else
  begin
    edtInstrumentOwner.Color := clBtnFace;
    edtInstrumentOwner.ReadOnly := True;
  end;
  strInstrumentMake  := dmMain.rxToInstrumentMake.FieldByName('MakeName').AsString;
  strInstrumentModel := dmMain.rxToInstrumentModel.FieldByName('ModelName').AsString;
  aInstrumentClass   := icInstrument;
  pcMain.ActivePage := tsAddInstrument;
  EnterNewInstrument(strToInstrumentType,aInstrumentClass);
end;

(*******************************************************************************
@function CheckBeforeCalibration( var sErrorMeasID: Integer): Boolean;

@description
  Validation of all observations prior to a calibration
*******************************************************************************)
function TfrmJob.CheckBeforeCalibration(
  var sErrorMeasID: Integer): Boolean;
var
  strErrorList : String;
  isError : Boolean;
  sErrorCount: Integer;
  hasRecordError: Boolean;
  dProgressCount: Double;
  dProgressIncrement: Double;
  sProgressCount: Integer;
begin
  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
  strErrorList := '';
  sErrorCount := 0;
  isError := False;
  with dmMain.rxJMeasure do
  begin
    sProgressCount := 0;
    dProgressCount := 0;
    dProgressIncrement:= 20/RecordCount;  // approximately 20% of total execution time
    First;
    while not EOF do
    begin
      frmProgress.pbarProgress.Position := sProgressCount;
      Application.ProcessMessages;
      dProgressCount := dProgressCount + dProgressIncrement;
      sProgressCount := Trunc(dProgressCount);
      hasRecordError := False;
      if sErrorCount < 12 then
      begin
        if (FieldByName('MeasMetFlag').AsString = 'Y') then
        begin
          if (sErrorCount < 12) then
          begin
            if FieldByName('MeasDryTemp').IsNull then
            begin
              Inc(sErrorCount);
              if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
              if strErrorList <> '' then
              begin
                strErrorList := strErrorList+#10;
              end;
              strErrorList := strErrorList+ 'Dry temperature measurement is missing '+
              'between Pillars '+
              FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
              isError := True;
              hasRecordError := True;
            end
            else
            begin
              if (FieldByName('MeasDryTemp').AsFloat < -20) or
                 (FieldByName('MeasDryTemp').AsFloat > 50) then
              begin
                Inc(sErrorCount);
                if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
                if strErrorList <> '' then
                begin
                  strErrorList := strErrorList+#10;
                end;
                strErrorList := strErrorList+ 'Dry temperature measurement must be between -20 and 50 degrees Celsius '+
                'between Pillars '+
                FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
                isError := True;
                hasRecordError := True;
              end;
            end;
          end;

          if (sErrorCount < 12) then
          begin
            if (FieldByName('MeasPressure').IsNull) or (FieldByName('MeasPressure').AsFloat = 0)  then
            begin
              Inc(sErrorCount);
              if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
              if strErrorList <> '' then
              begin
                strErrorList := strErrorList+#10;
              end;
              strErrorList := strErrorList+ 'Pressure measurement is missing '+
              'between Pillars '+
              FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
              isError := True;
              hasRecordError := True;
            end
            else
            begin
              if (FieldByName('MeasPressure').AsFloat < 800) or
                 (FieldByName('MeasPressure').AsFloat > 1200)  then
              begin
                Inc(sErrorCount);
                if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
                if strErrorList <> '' then
                begin
                  strErrorList := strErrorList+#10;
                end;
                strErrorList := strErrorList+ 'Pressure measurement must be between 800 and 1200 hectapascals '+
                'between Pillars '+
                FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
                isError := True;
                hasRecordError := True;
              end;
            end;
          end;

          if FieldByName('MeasHumidityType').AsString = 'W' then
          begin
            if (FieldByName('MeasHumidity').IsNull) then
            begin
              if (sErrorCount < 12) then
              begin
                Inc(sErrorCount);
                if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
                if strErrorList <> '' then
                begin
                  strErrorList := strErrorList+#10;
                end;
                strErrorList := strErrorList+ 'Wet temperature measurement is missing  '+
                'between Pillars '+
                FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
                isError := True;
                hasRecordError := True;
              end;
            end
            else
            begin
              if (FieldByName('MeasHumidity').AsFloat < -20) or
                 (FieldByName('MeasHumidity').AsFloat > 50) then
              begin
                Inc(sErrorCount);
                if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
                if strErrorList <> '' then
                begin
                  strErrorList := strErrorList+#10;
                end;
                strErrorList := strErrorList+ 'Wet temperature measurement must be between -20 and 50 degrees Celsius '+
                'between Pillars '+
                FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
                isError := True;
                hasRecordError := True;
              end;

              if (not FieldByName('MeasDryTemp').IsNull) then
              begin
                if FieldByName('MeasHumidity').AsFloat > FieldByName('MeasDryTemp').AsFloat then
                begin
                  if (sErrorCount < 12) then
                  begin
                    Inc(sErrorCount);
                    if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
                    if strErrorList <> '' then
                    begin
                      strErrorList := strErrorList+#10;
                    end;
                    strErrorList := strErrorList+ 'Wet temperature must be smaller than the Dry temperature '+
                    'between Pillars '+
                    FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
                    isError := True;
                    hasRecordError := True;
                  end;
                end;
              end;
            end;
          end;
          if FieldByName('MeasHumidityType').AsString = 'R' then
          begin
            if (FieldByName('MeasHumidity').IsNull) then
            begin
              if (sErrorCount < 12) then
              begin
                Inc(sErrorCount);
                if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
                if strErrorList <> '' then
                begin
                  strErrorList := strErrorList+#10;
                end;
                strErrorList := strErrorList+ 'Humidity measurement is missing '+
                'between Pillars '+
                FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
                isError := True;
                hasRecordError := True;
              end;
            end
            else
            begin
              if (FieldByName('MeasHumidity').AsFloat < 0) or
              (FieldByName('MeasHumidity').AsFloat > 100) then
              begin
                if (sErrorCount < 12) then
                begin
                  Inc(sErrorCount);
                  if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
                  if strErrorList <> '' then
                  begin
                    strErrorList := strErrorList+#10;
                  end;
                  strErrorList := strErrorList+ 'Humidity measurements must be between 0 and 100 % '+
                  'between Pillars '+
                  FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
                  isError := True;
                  hasRecordError := True;
                end;
              end;
            end;
          end;
        end;
        if (sErrorCount < 12) and (dmMain.rxFilteredEDMObs.isEmpty) then
        begin
          Inc(sErrorCount);
          if sErrorCount = 1 then  sErrorMeasID := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
          if strErrorList <> '' then
          begin
            strErrorList := strErrorList+#10;
          end;
          strErrorList := strErrorList+ 'There are no observations between Pillars '+
          FieldByName('AtPillarNo').AsString +' and '+FieldByName('ToPillarNo').AsString;
          isError := True;
          hasRecordError := True;
        end;
      end;
      if hasRecordError then
      begin
        Edit;
        FieldByName('hasError').AsBoolean := True;
        Post;
      end;
      Next;
    end;
  end;

  if isError then
  begin
    MessageBeep(mb_IconHand);
    MessageDlg(strErrorList, mtError, [mbOK], 0);
    Result := False;
    with dmMain.rxJMeasure do
    begin
      First;
      while (not EOF) and (dmMain.rxFilteredEDMObs.RecordCount <> 0) do
        Next;
    end;
    dbgridDistances.SetFocus;
  end
  else
    Result := True;
end;

(*******************************************************************************
@function IsJobNameDuplicated : Boolean;

@description
  This function checks if an existing make name is renamed with a duplicated make name
*******************************************************************************)
function TfrmJob.IsJobNameDuplicated : Boolean;
begin
  Result := False;
  if rbtnNew.Checked then
  begin
    with dmBase.rxJob do
    begin
      if Locate('JobDescription', edtNewJobName.Text, [loCaseInsensitive]) then
        Result := True;
    end;

    if Result then
    begin
      MessageDlg('You can not duplicate a Job Name.'+#10+
                 'Please enter another Job Name.',mtError,[mbOK],0);
      edtNewJobName.Color := clRed;
      edtNewJobName.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@function IsInstrumentMakeDuplicated : Boolean;

@description
  This function checks if an existing make name is renamed with a duplicated make name
*******************************************************************************)
function TfrmJob.IsInstrumentMakeDuplicated : Boolean;
begin
  Result := False;

  with dmBase.rxInstrumentMake do
  begin
    if Locate('MakeName', edtInstrumentMake.Text, [loCaseInsensitive]) then
      Result := True;
  end;

  if Result then
  begin
    MessageDlg('You can not duplicate an Instrument Make Name.'+#10+
               'Please enter another Instrument Make Name.',mtError,[mbOK],0);
    edtInstrumentMake.Color := clRed;
    edtInstrumentMake.SetFocus;
  end;
end;

(*******************************************************************************
@function IsInstrumentModelDuplicated : Boolean;

@description
  Checks if an instrument model name is duplicated.
*******************************************************************************)
function TfrmJob.IsInstrumentModelDuplicated : Boolean;
var
  sMakeId : Integer;
begin
  sMakeId := 0;
  if strInstrumentType = 'E' then
    with dmMain.rxAtInstrumentMake do
      sMakeID := FieldByName('MakeID').AsInteger
  else
  if strInstrumentType = 'P' then
    with dmMain.rxToInstrumentMake do
      sMakeID := FieldByName('MakeID').AsInteger;

  with dmBase.rxInstrumentModel do
    Result := Locate('MakeID;ModelName',VarArrayOf([IntToStr(sMakeID),edtModelName.Text]), [loCaseInsensitive]);

  if Result then
  begin
    MessageDlg('You can not duplicate an Instrument Model Name'+#10+
               'with the same Instrument Make Name.'+#10+
               'Please enter another Instrument Model Name.',mtError,[mbOK],0);
    edtModelName.Color := clRed;
    edtModelName.SetFocus;
  end;
end;

(*******************************************************************************
@function IsInstrumentDuplicated : Boolean;

@description
  Checks if a serial number is duplicated.
*******************************************************************************)
function TfrmJob.IsInstrumentDuplicated : Boolean;
var
  sModelId : Integer;
begin
  sModelId := 0;
  if strInstrumentType = 'E' then
    with dmMain.rxAtInstrumentModel do
      sModelID := FieldByName('ModelID').AsInteger
  else
  if strInstrumentType = 'P' then
    with dmMain.rxToInstrumentModel do
      sModelID := FieldByName('ModelID').AsInteger;

  with dmBase.rxInstrument do
    Result := Locate('ModelID;InstSerialNo',VarArrayOf([IntToStr(sModelID),edtInstrumentSerialNumber.Text]), [loCaseInsensitive]);

  if Result then
  begin
    MessageDlg('You can not duplicate an Instrument Serial Number'+#10+
               'with the same Instrument Model Name.'+#10+
               'Please enter another Instrument Serial Number.',mtError,[mbOK],0);
    edtInstrumentSerialNumber.Color := clRed;
    edtInstrumentSerialNumber.SetFocus;
  end;
end;

(*******************************************************************************
@procedure EditClick(Sender: TObject);

@description
  Changes the color of the edit box from a highlight color to a normal edit color.
*******************************************************************************)
procedure TfrmJob.EditClick(Sender: TObject);
var
 Edit: TEdit;
begin
  Edit := Sender as TEdit;
  Edit.Color := clWindow;
end;

(*******************************************************************************
@procedure edtNewJobNameExit(Sender: TObject);

@description
  1. Checks if the job name has been duplicated.
  2. Highlight the edit box in red if the job name has been duplicated.
*******************************************************************************)
procedure TfrmJob.edtNewJobNameExit(Sender: TObject);
begin
  if edtNewJobName.Text <> '' then
  begin
    if isJobNameDuplicated then
    begin
      edtNewJobName.Color := clRed;
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure edtInstrumentMakeExit(Sender: TObject);

@description
  1. Checks if the instrument make has been duplicated.
  2. Highlight the edit box in red if the instrument make has been duplicated.
*******************************************************************************)
procedure TfrmJob.edtInstrumentMakeExit(Sender: TObject);
begin
  if isInstrumentMakeDuplicated then
  begin
    edtInstrumentMake.Color := clRed;
    Abort;
  end;
end;

(*******************************************************************************
@procedure edtModelNameExit(Sender: TObject);
@description
  1. Checks if the instrument model has been duplicated.
  2. Highlight the edit box in red if the instrument model has been duplicated.
*******************************************************************************)
procedure TfrmJob.edtModelNameExit(Sender: TObject);
begin
  if isInstrumentModelDuplicated then
  begin
    edtModelName.Color := clRed;
    Abort;
  end;
end;

(*******************************************************************************
@procedure edtInstrumentSerialNumberExit

@description
  1. Checks if the serial number has been duplicated.
  2. Highlight the edit box in red if the serial number has been duplicated.
*******************************************************************************)
procedure TfrmJob.edtInstrumentSerialNumberExit(Sender: TObject);
begin
  if isInstrumentDuplicated then
  begin
    edtInstrumentSerialNumber.Color := clRed;
    Abort;
  end;
end;

(*******************************************************************************
@procedure edtInstrumentSerialNumberExit

@description
  1. Displays the baselione information.
  2. Checks if the selected baseline is suitable for calibration.
  3. Get the pillar information of selected baseline.
*******************************************************************************)
procedure TfrmJob.rxdblcBaselineCloseUp(Sender: TObject);
begin
  strBaseLineName := dmMain.rxBaseline.FieldByName('BaseLineName').AsString;
  if dmMain.rxBaseline.FieldByName('BaseRelativeHumidity').isNull then
    dDefaultHumidity := 50.0
  else
    dDefaultHumidity := dmMain.rxBaseline.FieldByName('BaseRelativeHumidity').AsFloat;

  if (dDefaultHumidity < 1) or (dDefaultHumidity > 100) then
    dDefaultHumidity := 50.0;

  rbtnDefaultHumidity.Caption := 'Default RH ('+FloatToStr(dDefaultHumidity)+'%)';

  sBaseLineId := dmMain.rxBaseline.FieldByName('BaselineId').AsInteger;
  FilterPillar(sBaselineId);
  with dmMain.rxPillar do
  begin
    if RecordCount < 4 then
    begin
      MessageDlg('You must select a baseline with at least 4 pillars',mtError,[mbOK],0);
      btnNextbaseline.Enabled := False;
      hasValidBaseline := False;
    end
    else
    begin
      btnNextBaseline.Enabled := True;
      hasValidBaseline := True;
    end;
  end;

  if btnNextBaseline.Enabled then
  begin
    dmBase.FilterDistance(sBaselineId);
    with dmBase.rxFilteredDistance do
    begin
      if RecordCount < 3 then
      begin
        MessageDlg('You must select a baseline with at least 3 distances',mtError,[mbOK],0);
        btnNext1.Enabled := False;
        hasValidBaseline := False;
      end
      else
      begin
        btnNextBaseline.Enabled := True;
        hasValidBaseline := True;
      end;
    end;
  end;

  CalculateUncertaintyOfBaseline;
end;

(*******************************************************************************
@procedure rxdblcBaselineExit(Sender: TObject);

@description
  Displays Baseline Name in edit box of dropdown list.
*******************************************************************************)
procedure TfrmJob.rxdblcBaselineExit(Sender: TObject);
begin
  rxdblcBaseline.DisplayValue := dmMain.rxBaseline.FieldByName('BaselineName').AsString;
end;

(*******************************************************************************
@procedure pickStartDateExit;

@description
  This procedure checks the starting date.
*******************************************************************************)
procedure TfrmJob.pickStartDateExit(Sender: TObject);
begin
  if pickStartDate.Date > pickEndDate.Date then
  begin
    MessageDlg('The Starting Date must be less or equal to the End Date',mtError,[mbOK],0);
    pickStartDate.SetFocus;
    Abort;
  end
  else
  if (pickStartDate.Date = pickEndDate.Date) and
     (pickStartTime.Time >= pickEndTime.Time) then
  begin
    MessageDlg('The Starting Time must be less than the End Time',mtWarning,[mbOK],0);
    pickStartTime.SetFocus;
    Abort;
  end;
end;

(*******************************************************************************
@procedure pickEndDateExit;

@description
  This procedure checks the end date.
*******************************************************************************)
procedure TfrmJob.pickEndDateExit(Sender: TObject);
begin
  if pickStartDate.Date > pickEndDate.Date then
  begin
    MessageDlg('The End Date must be greater or equal to the Start Date',mtError,[mbOK],0);
    pickEndDate.SetFocus;
    Abort;
  end;
  if (pickStartDate.Date = pickEndDate.Date) and
     (pickStartTime.Time >= pickEndTime.Time) then
  begin
    MessageDlg('The End Time must be greater than the Start Time',mtWarning,[mbOK],0);
    pickEndTime.SetFocus;
    Abort;
  end;
end;

(*******************************************************************************
@procedure pickStartTimeExit(Sender: TObject);

@description
  Validates the Start time.
*******************************************************************************)
procedure TfrmJob.pickStartTimeExit(Sender: TObject);
begin
  if (pickStartDate.Date = pickEndDate.Date) and
     (pickStartTime.Time >= pickEndTime.Time) then
  begin
    MessageDlg('The Start Time must be less than the End Time',mtError,[mbOK],0);
    pickStartTime.SetFocus;
    Abort;
  end;
end;

(*******************************************************************************
@procedure pickEndTimeExit(Sender: TObject);

@description
  Validates the End time.
*******************************************************************************)
procedure TfrmJob.pickEndTimeExit(Sender: TObject);
begin
  if (pickStartDate.Date = pickEndDate.Date) and
     (pickStartTime.Time >= pickEndTime.Time) then
  begin
    MessageDlg('The End Time must be greater than the Start Time',mtError,[mbOK],0);
    pickEndTime.SetFocus;
    Abort;
  end;
end;

(*******************************************************************************
@procedure pickStartDateCloseUp(Sender: TObject);

@description
  Validates the Start date.
*******************************************************************************)
procedure TfrmJob.pickStartDateCloseUp(Sender: TObject);
begin
  if pickStartDate.Date > pickEndDate.Date then
    MessageDlg('The Starting Date must be less or equal to the End Date',mtError,[mbOK],0);
end;

(*******************************************************************************
@procedure pickEndDateCloseUp(Sender: TObject);

@description
  Validates the End date.
*******************************************************************************)
procedure TfrmJob.pickEndDateCloseUp(Sender: TObject);
begin
  if pickStartDate.Date > pickEndDate.Date then
    MessageDlg('The End Date must be greater or equal to the Start Date',mtError,[mbOK],0);
end;

(*******************************************************************************
@procedure rxdblcJobCloseUp(Sender: TObject);

@description
  Displays the information of the selected job.
*******************************************************************************)
procedure TfrmJob.rxdblcJobCloseUp(Sender: TObject);
begin
  doEvent := True;
  strJobName := dmMain.rxJob.FieldByName('JobDescription').AsString;
  rxdblcJob.DisplayValue := dmMain.rxJob.FieldByName('JobDescription').AsString;
  btnNext1.Enabled := True;
  CopyJobToForm;
end;

(*******************************************************************************
@procedure rxdblcJobExit(Sender: TObject);

@description
  Displays the job description in the Edit box of thre dropdown list.
*******************************************************************************)
procedure TfrmJob.rxdblcJobExit(Sender: TObject);
begin
  rxdblcJob.DisplayValue := dmMain.rxJob.FieldByName('JobDescription').AsString;
end;

(*******************************************************************************
@procedure rxdblcAtInstrumentMakeCloseUp(Sender: TObject);

@description
  1. Allows the user to create a new EDM instrument or select an existing one.
  2. Filters the EDM instrument tables so that only records containing the selected
     make and model are shown.
*******************************************************************************)
procedure TfrmJob.rxdblcAtInstrumentMakeCloseUp(Sender: TObject);
begin
  ChangeAtInstrument;
end;

procedure TfrmJob.rxdblcAtInstrumentMakeExit(Sender: TObject);
begin
  rxdblcAtInstrumentMake.DisplayValue := dmMain.rxAtInstrumentMake.FieldByName('MakeName').AsString;
end;

(*******************************************************************************
@procedure rxdblcAtInstrumentModelCloseUp(Sender: TObject);

@description
  1. Allows the user to create a new EDM instrument or select an existing one.
  2. Filters the EDM instrument tables so that only records containing the selected
     make and model are shown.
*******************************************************************************)
procedure TfrmJob.rxdblcAtInstrumentModelCloseUp(Sender: TObject);
begin
  ChangeAtInstrument;
end;

(*******************************************************************************
@procedure rxdblcAtInstrumentModelExit(Sender: TObject);

@description
  Displays EDM Instrument model name in edit box of dropdown list.
*******************************************************************************)
procedure TfrmJob.rxdblcAtInstrumentModelExit(Sender: TObject);
begin
  rxdblcAtInstrumentModel.DisplayValue := dmMain.rxAtInstrumentModel.FieldByName('ModelName').AsString;
end;

(*******************************************************************************
@procedure rxdblcAtInstrumentCloseup(Sender: TObject);

@description
  Displays EDM Instrument serial number in edit box of dropdown list.
*******************************************************************************)
procedure TfrmJob.rxdblcAtInstrumentCloseUp(Sender: TObject);
begin
  rxdblcAtInstrument.DisplayValue := dmMain.rxAtInstrument.FieldByName('InstSerialNo').AsString;
end;

(*******************************************************************************
@procedure rxdblcToInstrumentMakeCloseUp(Sender: TObject);

@description
  1. Allows the user to create a new prism or select an existing one.
  2. Filters the prism tables so that only records containing the selected
     make and model are shown.
*******************************************************************************)
procedure TfrmJob.rxdblcToInstrumentMakeCloseUp(Sender: TObject);
begin
  ChangeToInstrument;
end;

(*******************************************************************************
@procedure rxdblcToInstrumentModelCloseUp(Sender: TObject);

@description
  1. Allows the user to create a new prism or select an existing one.
  2. Filters the prism tables so that only records containing the selected
     make and model are shown.
*******************************************************************************)
procedure TfrmJob.rxdblcToInstrumentModelCloseUp(Sender: TObject);
begin
  ChangeToInstrument;
end;

(*******************************************************************************
@procedure rxdblcToInstrumentCloseup(Sender: TObject);

@description
  Displays Prism Serial number in edit box of dropdown list.
*******************************************************************************)
procedure TfrmJob.rxdblcToInstrumentCloseUp(Sender: TObject);
begin
  rxdblcToInstrument.DisplayValue := dmMain.rxToInstrument.FieldByName('InstSerialNo').AsString;
end;

(*******************************************************************************
@procedure rxdblcToInstrumentMakeExit(Sender: TObject);

@description
  Displays Prism Make Name in edit box of dropdown list.
*******************************************************************************)
procedure TfrmJob.rxdblcToInstrumentMakeExit(Sender: TObject);
begin
  rxdblcToInstrumentMake.DisplayValue := dmMain.rxToInstrumentMake.FieldByName('MakeName').AsString;
end;

(*******************************************************************************
@procedure rxdblcToInstrumentModelExit(Sender: TObject);

@description
  Displays Prism Model Name in edit box of dropdown list.
*******************************************************************************)
procedure TfrmJob.rxdblcToInstrumentModelExit(Sender: TObject);
begin
  rxdblcToInstrumentModel.DisplayValue := dmMain.rxToInstrumentModel.FieldByName('ModelName').AsString;
end;

(*******************************************************************************
@procedure SetUpObservationTables;

@description
  Intialises an observations table for a new observation set.
  (Set = All observations between two selected pillars)
*******************************************************************************)
procedure TfrmJob.SetUpObservationTables;
begin
  dmMain.rxJMeasure.First;

  with dmMain.rxFilteredEDMObs do
  begin
    if (dmMain.rxJMeasure.FieldByName('MeasId').isNull) or
       (dmMain.rxJMeasure.isEmpty) then
      dmMain.rxFilteredEDMObs.EmptyTable
    else
      dmMain.FilterEDMObs(dmMain.rxJMeasure.FieldByName('MeasId').AsInteger);
  end;
end;

(*******************************************************************************
@procedure ResetAtInstrument;

@description
  Initialises the EDM Instrument page.
*******************************************************************************)
procedure TfrmJob.ResetAtInstrument;
begin
  with dmMain do
  begin
    rxdblcAtInstrumentMake.DisplayValue := rxAtInstrumentMake.FieldByname('MakeName').AsString;

    rxdblcAtInstrumentModel.Visible := True;
    lblAtInstrumentModel.Visible := True;
    rxdblcAtInstrumentModel.DisplayValue := rxAtInstrumentModel.FieldByname('ModelName').AsString;
    btnNewModel.Visible := True;
    btnNewInstrument.Visible := True;

    rxdblcAtInstrument.Visible := True;
    lblAtInstrument.Visible := True;
    btnNewInstrument.Visible := True;
    rxdblcAtInstrument.DisplayValue := rxAtInstrument.FieldByname('InstSerialNo').AsString;
  end;
end;

(*******************************************************************************
@procedure ResetToInstrument;

@description
  Initialises the Prism page.
*******************************************************************************)
procedure TfrmJob.ResetToInstrument;
begin
  with dmMain do
  begin
    rxdblcToInstrumentMake.DisplayValue := rxToInstrumentMake.FieldByname('MakeName').AsString;

    rxdblcToInstrumentModel.Visible := True;
    rxdblcToInstrument.Visible := True;
    gbPrismConstant.Visible := True;
    lblToInstrumentModel.Visible := True;
    lblToInstrument.Visible := True;
    rxdblcToInstrumentModel.DisplayValue := rxToInstrumentModel.FieldByname('ModelName').AsString;
    btnNewModel.Visible := True;
    btnNewInstrument.Visible := True;

    rxdblcToInstrument.Visible := True;
    gbPrismConstant.Visible := True;
    lblToInstrument.Visible := True;
    btnNewInstrument.Visible := True;
    rxdblcToInstrument.DisplayValue := rxToInstrument.FieldByname('InstSerialNo').AsString;
  end;
end;

(*******************************************************************************
@procedure btnHelp1Click(Sender: TObject);

@description
  Displays the Help for the "Select Job" page
*******************************************************************************)
procedure TfrmJob.btnHelp1Click(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTEXT, 1100);

end;

(*******************************************************************************
@procedure btnHelp2Click(Sender: TObject);

@description
  Displays the Help for the Meteorology page
*******************************************************************************)
procedure TfrmJob.btnHelp2Click(Sender: TObject);
begin
  Application.HelpContext(1200);
end;

(*******************************************************************************
@procedure btnHelpEDMClick(Sender: TObject);

@description
  Displays the Help for the "Instrument" page
*******************************************************************************)
procedure TfrmJob.btnHelpEDMClick(Sender: TObject);
begin
  Application.HelpContext(1300);
end;

(*******************************************************************************
@procedure btnHelp4Click(Sender: TObject);

@description
  Displays the Help for the "Prism" page
*******************************************************************************)
procedure TfrmJob.btnHelp4Click(Sender: TObject);
begin
  Application.HelpContext(1401);
end;

(*******************************************************************************
@procedure btnHelp5Click(Sender: TObject);

@description
  Displays the Help for the Observation Summary page
*******************************************************************************)
procedure TfrmJob.btnHelp5Click(Sender: TObject);
begin
  Application.HelpContext(1500);
end;

(*******************************************************************************
@procedure btnHelpModelClick(Sender: TObject);

@description
  Displays the Help for the "Add New Instrument Make" page
*******************************************************************************)
procedure TfrmJob.btnHelpMakeClick(Sender: TObject);
begin
  Application.HelpContext(1600);
end;

(*******************************************************************************
@procedure btnHelpModelClick(Sender: TObject);

@description
  Displays the Help for the "Add New Instrument Model" page
*******************************************************************************)
procedure TfrmJob.btnHelpModelClick(Sender: TObject);
begin
  Application.HelpContext(1700);
end;

(*******************************************************************************
@procedure btnHelpNewInstrumentClick(Sender: TObject);

@description
  Displays the Help for the "Add New Instrument" page
*******************************************************************************)
procedure TfrmJob.btnHelpNewInstrumentClick(Sender: TObject);
begin
  Application.HelpContext(1800);
end;

(*******************************************************************************
@procedure bedtWaveLengthExit(Sender: TObject);

@description
  Ensures that a unit wavelength has been entered
*******************************************************************************)
procedure TfrmJob.bedtWaveLengthExit(Sender: TObject);
begin
  if doEvent then
  begin
    if (Trim(bedtWaveLength.Text) = '') or (StrToFloat(bedtWaveLength.Text) <= 0) then
    begin
      MessageDlg('Unit Wave Length must have a value',mtError,[mbOK],0);
      bedtWaveLength.SetFocus;
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure bedtCarrierWaveLengthExit(Sender: TObject);

@description
  Ensures that a carrier  wavelength has been entered
*******************************************************************************)
procedure TfrmJob.bedtCarrierWaveLengthExit(Sender: TObject);
begin
  if doEvent then
  begin
    if (Trim(bedtCarrierWaveLength.Text) = '') or (StrToFloat(bedtCarrierWaveLength.Text) <= 0) then
    begin
      MessageDlg('Carrier Wave Length must have a value',mtError,[mbOK],0);
      bedtCarrierWaveLength.SetFocus;
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure bedtModFreqExit(Sender: TObject);

@description
  Ensures that a modulation frequency has been entered
*******************************************************************************)
procedure TfrmJob.bedtModFreqExit(Sender: TObject);
begin
  if doEvent then
  begin
    if (Trim(bedtModFreq.Text) = '') or (StrToFloat(bedtModFreq.Text) <= 0) then
    begin
      MessageDlg('Modulation Frequency must have a value',mtError,[mbOK],0);
      bedtModFreq.SetFocus;
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure SetupNewJob;

@description
  Initialises the Job page for a new job.
*******************************************************************************)
procedure TfrmJob.SetupNewJob;
begin
  doEvent := True;

  lblHeader1.caption := 'Enter New Job';
  pcExistingOrNew.ActivePage := tsNewJob;
  edtNewJobName.Text := '';
  btnNext1.Enabled := False;
  btnDelete.Enabled := False;
  ClearJobForm;
  SetupInstrumentTablesforNewJob('At',strAtInstrumentType);
  SetupInstrumentTablesforNewJob('To',strToInstrumentType);
  edtNewJobName.SetFocus;
end;

(*******************************************************************************
@procedure AmendCyclicErrorsInReports(dUnitLength : Double);

@description
  Creates a report, which contains the cyclic errors.
*******************************************************************************)
procedure TfrmJob.AmendCyclicErrorsInReports(dUnitLength : Double);
var
  strReportPath: String;
  strReportFileName : String;
  strLine : String;
  strLine1, strLine2 : String;
  LineCount : Integer;
  foundLine : Boolean;
  sPos : Integer;
  I,J : Integer;
  ReportLines : TStringList;
  strValue : String;
  sNewLength, sOldLength : Integer;
begin
  ReportLines := TStringList.Create;
  strReportPath := ExtractFilePath(Application.ExeName);
  strReportFileName := strReportPath + 'CALIB.B07';

  if FileExists(strReportFileName) then
  begin
    ReportLines.Clear;
    ReportLines.LoadFromFile(strReportFileName);

    LineCount := 0;
    foundLine := False;

    while (LineCount < ReportLines.Count) and (not foundLine) do
    begin
      strLine := Trim(ReportLines[LineCount]);
      sOldLength := Length(strLine);
      if Pos('IC =', strLine) > 0 then
      begin

        if (Pos('36D', strLine) > 0) then
        begin
          strValue := ComputeCalibrationTerm(dUnitLength,36);
          sPos := Pos('36D', strLine);
          strLine1 := Copy(strLine,1,sPos-1);
          Insert(strValue,strLine1,sPos);

          strLine2 := Copy(strLine,sPos+2,length(strLine));
          sPos := Pos('36D', strLine2);
          if sPos > 0 then
          begin
            Delete(strLine2,sPos,2);
            Insert(strValue,strLine2,sPos);
          end;
          strLine := strLine1+strLine2;
          Delete(strLine,length(strLine)-1,1);
        end;

        { Convert multiple spaces to single spaces }
        while Pos('  ', strLine) > 0 do
         Delete(strLine, Pos('  ', strLine),1);

        sNewLength := Length(strLine);
        if sNewLength < sOldLength then
        begin
          for I := sNewLength to sOldLength-1 do
          begin
            Insert(' ',strLine,sNewLength-1);
          end;
        end;
        strLine := '      '+ strLine;
        ReportLines[LineCount] := strLine;

        J := LineCount+1;
        strLine := Trim(ReportLines[J]);
        sOldLength := Length(strLine);

        if (Pos('72D', strLine) > 0) then
        begin
          strValue := ComputeCalibrationTerm(dUnitLength,72);
          sPos := Pos('72D', strLine);
          strLine1 := Copy(strLine,1,sPos-1);
          Insert(strValue,strLine1,sPos);

          strLine2 := Copy(strLine,sPos+2,length(strLine));
          sPos := Pos('72D', strLine2);
          if sPos > 0 then
          begin
            Delete(strLine2,sPos,2);
            Insert(strValue,strLine2,sPos);
          end;
          strLine := strLine1+strLine2;
          Delete(strLine,length(strLine)-1,1);
        end;

        { Convert multiple spaces to single spaces }
        while Pos('  ', strLine) > 0 do
         Delete(strLine, Pos('  ', strLine),1);

        Insert('                    ',strLine,2);
        sNewLength := Length(strLine);
        if sNewLength < sOldLength then
          for I := sNewLength to sOldLength-1 do
            Insert(' ',strLine,sNewLength-1);

        strLine := '      '+ strLine;
        ReportLines[J] := strLine;

        J := LineCount+2;
        strLine := ReportLines[J];
        Delete(strLine,10,4);
        Insert('    ',strLine,60);
        ReportLines[J] := strLine;
        foundLine := True;
      end;
      Inc(LineCount);
    end;
    if FoundLine then
      ReportLines.SaveToFile(strReportFileName);
  end;
  ReportLines.Free;
end;

(*******************************************************************************
@procedure ComputeCalibrationTerm( dUnitLength : Double; sValue : Integer) : String;

@description
  Formats the terms in the calibration correction equation.
*******************************************************************************)
function TfrmJob.ComputeCalibrationTerm(
    dUnitLength : Double;
    sValue : Integer) : String;
var
  dValue : Double;
  dFraction : Double;
  strValue : String;
begin
  dValue := sValue*10/dUnitLength;
  dFraction := Abs(Frac(dValue));
  if (dFraction < 0.001) or (dFraction > 0.999) then
    strValue := IntToStr(Round(dValue))
  else
  begin
    if dValue < 10 then strValue := Format('%7.5f', [dValue]);
    if (dValue >= 10) and (dValue < 100) then strValue := Format('%7.4f', [dValue]);
    if (dValue >= 100) and (dValue < 1000) then strValue := Format('%8.3f', [dValue]);
    if (dValue >= 1000) and (dValue < 10000) then strValue := Format('%9.2f', [dValue]);
    if (dValue >= 10000) and (dValue < 100000) then strValue := Format('%10.1f', [dValue]);
    if (dValue >= 100000) and (dValue < 1000000) then strValue := Format('%11.0f', [dValue]);
  end;
  Result := strValue;
end;

(*******************************************************************************
@procedure btnNextBaselineClick(Sender: TObject);

@description

  1. Moves to the next page of the wizard where you can view or edit the procedures.
  2. Only a Verifying authority can change the procedures and logos.
  3. Gets the pillar information of the selected baseline.
*******************************************************************************)
procedure TfrmJob.btnNextBaselineClick(Sender: TObject);
begin
  edtAuthority.text := '';

  if rbtnNew.Checked then
  begin
    sBaseLineId := dmMain.rxBaseline.FieldByName('BaselineId').AsInteger;
  end
  else
  begin
    sBaseLineId := dmMain.rxJob.FieldByName('BaselineId').AsInteger;
  end;

  if rbtnInstrument.Checked then
  begin
    dmBase.FilterBaselineDefault(sBaselineID);
    SetDefaultUncertainties(dmBase.rxBaselineDefaultFilterEDM);
  end
  else
  begin
    SetDefaultUncertainties(dmBase.rxUncertaintybaseline);
    GetBaselineUncertainties;  // Each baseline may have different uncertainties. Will overwrite default uncertainties
  end;

  if canCalibrateBaseline then
  begin
    memTraceability.Color := clWindow;
    memTraceability.ReadOnly := False;
    edtAuthority.Color := clWindow;
    edtAuthority.ReadOnly := False;
    btnLogo1.Enabled := True;
    btnLogo2.Enabled := True;
    btnDeleteLogo1.Enabled := True;
    btnDeleteLogo2.Enabled := True;
  end
  else
  begin
    memTraceability.Color := clBtnFace;
    memTraceability.ReadOnly := True;
    edtAuthority.Color := clBtnFace;
    edtAuthority.ReadOnly := True;
    btnLogo1.Enabled := False;
    btnLogo2.Enabled := False;
    btnDeleteLogo1.Enabled := False;
    btnDeleteLogo2.Enabled := False;
    if isWARestrictedVersion then
    begin
      btnLogo1.Enabled := True;
      btnLogo2.Enabled := True;
      btnDeleteLogo1.Enabled := True;
      btnDeleteLogo2.Enabled := True;
    end;
  end;

  sBaseLineId := dmMain.rxBaseline.FieldByName('BaselineId').AsInteger;
  strBaseLineName := dmMain.rxBaseline.FieldByName('BaseLineName').AsString;

  FilterPillar(sbaselineId);
  dmBase.FilterDistance(sBaselineId);

  pnlBaseline2.Caption := strBaselineName;
  pnlBaseline3.Caption := strBaselineName;
  pnlBaseline4.Caption := strBaselineName;
  pnlBaseline5.Caption := strBaselineName;
  pnlBaseline6.Caption := strBaselineName;
  pnlBaseline7.Caption := strBaselineName;
  pnlBaseline8.Caption := strBaselineName;
  pnlBaselineInst1.Caption := strBaselineName;
  pnlBaselineInst2.Caption := strBaselineName;
  pnlBaselineInst3.Caption := strBaselineName;
  pnlBaselineProcedure.Caption := strBaselineName;
  pnlBaselineProcedure2.Caption := strBaselineName;


  if rbtnBaseline.Checked then
    dmBase.GetMethodDescription(memProcedure,'Baseline Calibration Procedure')
  else
    dmBase.GetMethodDescription(memProcedure,'EDM Instrument Calibration Procedure');

  memTraceability.Lines.Clear;
  memBaselineTraceability.Lines.Clear;
  if rbtnBaseline.Checked or (not canCalibratebaseline) then
  begin
    dmBase.rxMethod.Locate('Method','Baseline Traceability',[]);
    memTraceability.Lines.Add(dmBase.rxMethod.FieldByName('Description').AsString);
    memBaselineTraceability.Lines.Add(dmBase.rxMethod.FieldByName('Description').AsString);
  end
  else
  begin
    dmBase.rxMethod.Locate('Method','EDM Instrument Traceability',[]);
    memTraceability.Lines.Add(dmBase.rxMethod.FieldByName('Description').AsString);
    dmBase.rxMethod.Locate('Method','Baseline Traceability',[]);
    memBaselineTraceability.Lines.Add(dmBase.rxMethod.FieldByName('Description').AsString);
  end;

  memLegalTraceability.Lines.Clear;
  if rbtnBaseline.Checked or (not canCalibratebaseline) then
  begin
    dmBase.rxMethod.Locate('Method','Legal Traceability',[]);
    memLegalTraceability.Lines.Add(dmBase.rxMethod.FieldByName('Description').AsString);
  end;

  if dmBase.rxMethod.Locate('Method','Testing Authority',[]) then
  begin
    edtAuthority.text := dmBase.rxMethod.FieldByName('Description').AsString;
  end;
  sPageNumber := GetPageNumber(tsProcedure.Caption);
  lblPageProcedure.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsProcedure;
end;

(*******************************************************************************
@procedure btnBack2Click(Sender: TObject);

@description
  Move to previous page of the wizard.
*******************************************************************************)
procedure TfrmJob.btnBack2Click(Sender: TObject);
begin
  TabsheetList.Clear;
  TabsheetList.Add('tsJob');
  doEvents := True;
  pcMain.ActivePage := tsJob;
end;

(*******************************************************************************
@procedure btnNextUncertaintyClick(Sender: TObject)

@description
  1. EDM Calibrations: Move to Standards page. Only authorised user can the Standards.
  2. Baseline calibrations: Move to the Observation or Entry Type page.
*******************************************************************************)
procedure TfrmJob.btnNextUncertaintyClick(Sender: TObject);
begin
  if canCalibrateBaseline then
  begin
    dbmemStandard.ReadOnly := False;
    dbmemStandard.Color := clWindow;
    dbedtStandardsAuthority.ReadOnly := False;
    dbedtStandardsAuthority.Color := clWindow;

    FrameLUMUnits3.SetReadonly(False);
  end
  else
  begin
    dbmemStandard.ReadOnly := True;
    dbmemStandard.Color := clBtnFace;
    dbedtStandardsAuthority.ReadOnly := True;
    dbedtStandardsAuthority.Color := clBtnFace;

    FrameLUMUnits3.SetReadonly(True);
  end;

  if rbtnBaseline.Checked then
  begin
    SaveBaselineUncertainties;

    dmMain.FilterJMeasure(sJobID);
    if dmMain.rxJMeasure.isEmpty then
    begin
      sPageNumber := GetPageNumber(tsSelectEntryType.Caption);
      lblPageSelectEntryType.Caption := 'Page '+IntToStr(sPageNumber);
      pcMain.ActivePage := tsSelectEntryType;
    end
    else
      GotoObservationPage(TRUE);
  end
  else
  begin
    dmBase.rxStandard.Locate('Type','E',[]);
    sPageNumber := GetPageNumber(tsStandards.Caption);
    lblPageStandards.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsStandards;
  end;
end;

(*******************************************************************************
@procedure GotoObservationPage;

@description
  Initialises and  opens the Observation page
*******************************************************************************)
procedure TfrmJob.GotoObservationPage(doSaveJob: Boolean);
begin
  if doSaveJob then
    SaveJob;

  hasObsDefault := False;
  Inc(sPageNumber);
  lblPageObs.Caption := 'Page '+IntToStr(sPageNumber);
  with Pre_StdDev, dmBase.rxJobUncertainty do
  begin
    Temperature := FieldByName('Temperature').AsFloat/dCoverageFactor;
    Pressure := FieldByName('Pressure').AsFloat/dCoverageFactor;
    Humidity := FieldByName('Humidity').AsFloat/dCoverageFactor;
    CentringInstrument := FieldByName('InstrumentCentring').AsFloat/dCoverageFactor;
    CentringReflector := FieldByName('ReflectorCentring').AsFloat/dCoverageFactor;
    HeightAboveAtPillar := FieldByName('InstrumentHeight').AsFloat/dCoverageFactor;
    HeightAboveToPillar := FieldByName('ReflectorHeight').AsFloat/dCoverageFactor;
    PillarHeightDiff := FieldByName('PillarHeightDiff').AsFloat/dCoverageFactor;
    OffsetInstrument := FieldByName('PillarOffset').AsFloat/dCoverageFactor;
    OffsetReflector := FieldByName('PillarOffset').AsFloat/dCoverageFactor;
    RejectionCriterion := FieldByName('RejectionCriterion').AsFloat;
  end;

  dmMain.doEvents := False;
  doEvents := False;

  sJobID := dmMain.rxJob.FieldByName('JobID').AsInteger;


  with dmMain.rxJMeasure do
  begin
    FieldByName('MeasPressure').Visible := True;
    FieldByName('MeasHumidity').Visible := True;
    FieldByName('MeasDryTemp').Visible := True;
  end;

  dmMain.FilterJMeasure(sJobID);


  SetMetsFieldsInGrid;

  if dmMain.rxJMeasure.isEmpty then
  begin
    dmMain.doEvents := True;
    doEvents := True;
    doEvent := True;
    InsertNewObs;
  end
  else
  begin
    dmMain.rxJMeasure.First;
    ShowLegalDistance;

    SetupObservationTables;

    btnExportFile.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteObs.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteRecord.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnEdit.Enabled := (not dmMain.rxJMeasure.isEmpty);

    sPageNumber := GetPageNumber(tsObs.Caption);
    lblPageObs.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsObs;
    doEvent := false;
    dbgridObs.SetFocus;
    dbgridObs.SetActiveField('AtPillarNo');
    dmMain.doEvents := True;
    doEvents := True;
    doEvent := True;
  end;
end;

(*******************************************************************************
@procedure btnbackUncertaintyClick(Sender: TObject);

@description
  Move to previous page of the wizard.
*******************************************************************************)
procedure TfrmJob.btnbackUncertaintyClick(Sender: TObject);
begin
  sPageNumber := GetPageNumber(tsPrism.Caption);
  lblPagePrism.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsPrism;
end;

(*******************************************************************************
@procedure PerformCalibration: Boolean;

@description
  Calibrates an EDM instrument.
*******************************************************************************)
function TfrmJob.PerformCalibration: Boolean;
var
  strReportFileName : String;
begin
  Screen.Cursor := crHourglass;

  strReportFileName := ExtractFilePath(Application.ExeName) + 'Calib';

  frmProgress.pbarProgress.Position := 20;
  FillrxPillarList;

  // All observations of a selected job are stored into the following temporary tables:
  //1. dmBase.rxmemMeasure: Contains information for each set of observations.
  //     Each set contains the observations between two selected pillars.
  //2. dmBase.rxmemObservation: Contains all observations between the pillars.
  FillMeasurementsList;


  frmProgress.pbarProgress.Position := 70;

  try
    Result := EDMCalibration(strReportFileName);
  except
    Result := False;
  end;

  frmProgress.Close;

  if not Result then
  begin
    if printDesignError then
      MessageDlg('Computation Errors'+#10+
      'You should select a combination of pillars whose interval distances are not equal.',mtError,[mbOK],0)
    else
      MessageDlg('Computation Errors'+#10+
               'Check for gross observation errors.', mtError, [mbOK], 0);
  end;
  Screen.Cursor := crDefault;
end;

(*******************************************************************************
@function TfrmJob.EDMCalibration ( strReportFileName: string): Boolean;

@description
  Calibrates an EDM instrument.
*******************************************************************************)
function TfrmJob.EDMCalibration( strReportFileName: string): Boolean;
begin
  Result := True;
  DeleteOutputFiles(strReportFileName);
  Application.ProcessMessages;

  if dmMain.rxJobJobType.AsString = 'I' then
  begin
    cerEDM.hasPrismConstantBeenSetInEDM := hasPrismConstantBeenSetInEDM;
    Result := BaseEDMCalibration(strReportFileName);
  end;

  if dmMain.rxJobJobType.AsString = 'B' then
    Result := BaselineCalibration (strReportFileName);
end;

(*******************************************************************************
@procedure SetDefaultUncertainties(Table: TDataset);

@description
  This procedure sets default values for the a priori uncertainties
*******************************************************************************)
procedure TfrmJob.SetDefaultUncertainties(Table: TDataset);
begin
  with dmBase.rxJobUncertainty do
  begin
    EmptyTable;
    Append;
    if Table.Locate('Description','Temperature',[]) then
      FieldByName('Temperature').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Pressure',[]) then
      FieldByName('Pressure').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Instrument height above pillar',[]) then
      FieldByName('InstrumentHeight').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Reflector height above pillar',[]) then
      FieldByName('ReflectorHeight').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Humidity',[]) then
      FieldByName('Humidity').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Instrument centring',[]) then
      FieldByName('InstrumentCentring').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Reflector centring',[]) then
      FieldByName('ReflectorCentring').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Pillar offset',[]) then
      FieldByName('PillarOffset').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Pillar Height Difference',[]) then
      FieldByName('PillarHeightDiff').Value := Table.FieldByName('Default').Value;

    if Table.Locate('Description','Rejection Criterion',[]) then
      FieldByName('RejectionCriterion').Value := Table.FieldByName('Default').Value;

    Post;
  end;
end;

(*******************************************************************************
@procedure UncertaintyChange(Sender: TObject);

@description
  Validates an uncertainty value
*******************************************************************************)
procedure TfrmJob.UncertaintyChange(Sender: TObject);
var
  Edit : TEdit;
  dValue: Double;
  sCode: Integer;
begin
  Edit := Sender as TEdit;
  if length(Edit.Text) > 0 then
  begin
    Val(Edit.Text,dValue, sCode);
    if sCode = 0 then
    begin
       Edit.ClearUndo;
    end
    else
    begin
       Edit.Undo;
       Edit.SelStart := Length(Edit.Text);
    end;
  end;
end;

(*******************************************************************************
@procedure UncertaintyExit(Sender: TObject);

@description
  Blank uncertainty values are set to 0.
*******************************************************************************)
procedure TfrmJob.UncertaintyExit(Sender: TObject);
var
  Edit: TEdit;
begin
  Edit := Sender as TEdit;
  if length(Edit.Text) = 0 then
  begin
    Edit.Text := '0';
  end;
end;

(*******************************************************************************
@procedure btnHelpBaselineClick(Sender: TObject);

@description
  Displays the Help for the "Select Baseline" page
*******************************************************************************)
procedure TfrmJob.btnHelpBaselineClick(Sender: TObject);
begin
  Application.HelpContext(1150);
end;

(*******************************************************************************
@procedure btnHelpUncertaintyClick(Sender: TObject);

@description
  Displays the Help for the Uncertainty page
*******************************************************************************)
procedure TfrmJob.btnHelpUncertaintyClick(Sender: TObject);
begin
  Application.HelpContext(1450);
end;

(*******************************************************************************
@procedure rbtnInstrumentClick(Sender: TObject);

@description
  Enables the user to carry out a new or existing EDM instrument calibration.
*******************************************************************************)
procedure TfrmJob.rbtnInstrumentClick(Sender: TObject);
begin
  if doEvents then
  begin
    if rbtnNew.Checked then
    begin
      ClearJobForm;
    end
    else
    begin
      FilterJob('I');
      with dmMain.rxJob do
      begin
        Last;
        if rbtnExisting.Checked then
        begin
          rxdblcJob.DisplayValue := FieldByName('JobDescription').AsString;
        end;
      end;
      CopyJobToForm;
    end;
  end;
end;

(*******************************************************************************
@procedure rbtnBaselineClick(Sender: TObject);

@description
  Enables the user to carry out a new or existing Baseline calibration.
*******************************************************************************)
procedure TfrmJob.rbtnBaselineClick(Sender: TObject);
begin
  if rbtnNew.Checked then
  begin
    ClearJobForm;
  end
  else
  begin
    FilterJob('B');
    with dmMain.rxJob do
    begin
      Last;
      rxdblcJob.DisplayValue := FieldByName('JobDescription').AsString;
    end;
    CopyJobToForm;
  end;
end;

(*******************************************************************************
@procedure .btnNextProcedureClick(Sender: TObject);

@description
  1. Saves the traceability statements to the database.
  2. Verifying Authorities: Opens the next page of the wizard where you can view or edit the accreditation.
  3. Public users: Opens the next page of the wizard where you select an EDM instrument.
*******************************************************************************)
procedure TfrmJob.btnNextProcedureClick(Sender: TObject);
begin
  CopyMemoToDefaultTable;

  if canCalibrateBaseline then
  begin
    edtAccreditationAuthority.Text := '';
    pickAccreditationDate.Date := Date;
    if dmBase.rxMethod.Locate('Method','Accreditation Date',[]) then
    begin
      if (dmBase.rxMethod.FieldByName('Description').AsString = '') or
         (dmBase.rxMethod.FieldByName('Description').isNull) then
      begin
        pickAccreditationDate.Date := Date;
        edtHideDate.Visible := True;
      end
      else
      begin
        edtHideDate.Visible := False;
        pickAccreditationDate.Date := StrToDate(dmBase.rxMethod.FieldByName('Description').AsString);
      end;
    end;
    if dmBase.rxMethod.Locate('Method','Accreditation',[]) then
    begin
      chkAccreditation.Checked := (dmBase.rxMethod.FieldByName('Description').AsString = 'Y');
    end;

    if dmBase.rxMethod.Locate('Method','Accreditation Authority',[]) then
    begin
      edtAccreditationAuthority.Text := dmBase.rxMethod.FieldByName('Description').AsString;
    end;

//    GetAccreditationNumber(memAccreditationLogoTitle);
    dmBase.GetMethodDescription(memAccreditationLogoTitle,'Accreditation Logo Title');

    memAccreditationStatement.Lines.Clear;
    if dmBase.rxMethod.Locate('Method','Baseline Accreditation Statement',[]) then
    begin
      memAccreditationStatement.Lines.Add(dmBase.rxMethod.FieldByName('Description').AsString);
    end;

    if (ImageAccreditation1.Picture.Bitmap.Empty) or
       (ImageAccreditation1.Picture = nil) or (strAccreditationLogo = '') then
    begin
      ImageAccreditation1.Picture := nil;
      strAccreditationLogo := '';
      btnDeleteLogoAccreditation.Enabled := False;
      btnLogoAccreditation.Caption := 'Create Logo';
    end;

    sPageNumber := GetPageNumber(tsAccreditationPage.Caption);
    lblPageAccreditation.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsAccreditationPage;
  end
  else
  begin
    if ChangeAtInstrument then
    begin
      sPageNumber := GetPageNumber(tsEDM.Caption);
      lblPageEDM.Caption := 'Page '+IntToStr(sPageNumber);
      pcMain.ActivePage := tsEDM;
    end;
  end
end;

(*******************************************************************************
@procedure btnBackProcedureClick(Sender: TObject);
  
@description
  1. Saves the traceability statements to the database.
  2. Returns to the previous page of the wizard
*******************************************************************************)
procedure TfrmJob.btnBackProcedureClick(Sender: TObject);
begin
  CopyMemoToDefaultTable;
  sPageNumber := GetPageNumber(tsBaseline.Caption);
  lblPage2.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsBaseline;
end;

(*******************************************************************************
@procedure CopyMemoToDefaultTable;

@description
  Saves the traceability statements to the database.
*******************************************************************************)
procedure TfrmJob.CopyMemoToDefaultTable;
var
  strLine: String;
  i: Integer;
begin
  if hasChangedDefault then
  begin
    if rbtnBaseline.Checked then
    begin
      dmBase.UpdateMethodDescription(memProcedure,'Baseline Calibration Procedure');
    end
    else
    begin
      dmBase.UpdateMethodDescription(memProcedure,'EDM Instrument Calibration Procedure');
    end;

    with memTraceability do
    begin
      strLine := '';
      for i := 0 to lines.Count-1 do
      begin
        strLine := strLine + Lines[i];
      end;
    end;

    with dmBase.rxMethod do
    begin
      // Save traceability
      if rbtnBaseline.Checked then
      begin
        Locate('Method','Baseline Traceability',[]);
      end
      else
      begin
        Locate('Method','EDM Instrument Traceability',[]);
      end;
      Edit;
      FieldByName('Description').AsString := strLine;
      Post;
      if (Locate('Method','Testing Authority',[])) then
      begin
        Edit;
        FieldByName('Description').AsString := edtAuthority.text;
        Post;
      end;
    end;
  end;
  hasChangedDefault := False;
end;

(*******************************************************************************
@procedure SaveAccreditation;

@description
  Saves the accreditation information to the database
*******************************************************************************)
procedure TfrmJob.SaveAccreditation;
var
  strLine: String;
  i: Integer;
begin
  if hasChangedDefault then
  begin
    with memAccreditationStatement do
    begin
      strLine := '';
      for i := 0 to lines.Count-1 do
      begin
        strLine := strLine + Lines[i];
      end;
    end;

    with dmBase.rxMethod do
    begin
      Locate('Method','Baseline Accreditation Statement',[]);
      Edit;
      FieldByName('Description').AsString := strLine;
      Post;

      // Has accreditation
      Locate('Method','Accreditation',[]);
      Edit;
      if chkAccreditation.Checked then
      begin
        FieldByName('Description').AsString := 'Y';
      end
      else
      begin
        FieldByName('Description').AsString := 'N';
      end;
      Post;

      if  (Locate('Method','Accreditation Authority',[])) then
      begin
        Edit;
        FieldByName('Description').AsString := edtAccreditationAuthority.Text;
        Post;
      end;

      if Locate('Method','Accreditation Date',[]) then
      begin
        Edit;
        FieldByName('Description').AsString := DateToStr(pickAccreditationDate.Date);
        Post;
      end;
      dmBase.UpdateMethodDescription(memAccreditationLogoTitle,'Accreditation Logo Title');
    end;
  end;
  hasChangedDefault := False;
end;

(*******************************************************************************
@procedure memProcedureChange(Sender: TObject);

@description
  1. Flags that the traceability statements have been changed.
  2. Ensures that the new traceability statements will be stored in the database.
*******************************************************************************)
procedure TfrmJob.memProcedureChange(Sender: TObject);
begin
  hasChangedDefault := True;
end;

(*******************************************************************************
@procedure edtAuthorityChange(Sender: TObject);

@description
  1. Flags that the traceability statements have been changed.
  2. Ensures that the new traceability statements will be stored in the database.
*******************************************************************************)
procedure TfrmJob.memTraceabilityChange(Sender: TObject);
begin
  hasChangedDefault := True;
end;

procedure TfrmJob.pcLUMChanging(Sender: TObject; var AllowChange: Boolean);
begin

end;

(*******************************************************************************
@procedure btnCloseProcedureClick(Sender: TObject);

@description
  Saves the procedure statements prior to closing the application.
*******************************************************************************)
procedure TfrmJob.btnCloseProcedureClick(Sender: TObject);
begin
  CopyMemoToDefaultTable;
  Close;
end;

(*******************************************************************************
@procedure btnLogo1Click(Sender: TObject);

@description
  Selects another accreditation logo
*******************************************************************************)
procedure TfrmJob.btnLogo1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir := strLogoFolder;
  if OpenDialog1.Execute then
  begin
    ImageAccreditation1.Height := 80;
    ImageAccreditation1.Width := 240;
    ImageAccreditation2.Height := 80;
    ImageAccreditation2.Width := 240;
    strLogoFolder := ExtractFilePath(OpenDialog1.FileName);
    ImageAccreditation1.Picture.LoadFromFile(OpenDialog1.FileName);
    SetImageSize(ImageAccreditation1);
    ImageAccreditation2.Picture.LoadFromFile(OpenDialog1.FileName);
    SetImageSize(ImageAccreditation2);
    strAccreditationLogo := OpenDialog1.FileName;
    btnDeleteLogo2.Enabled := True;
    btnLogo1.Caption := 'Change Logo';
    btnDeleteLogoAccreditation.Enabled := True;
    btnLogoAccreditation.Caption := 'Change Logo';
  end;
end;

(*******************************************************************************
@procedure edtAuthorityChange(Sender: TObject);

@description
  1. Flags that the accrediation information has been changed.
  2. Ensures that the new accrediation will be stored in the database.
*******************************************************************************)
procedure TfrmJob.edtAuthorityChange(Sender: TObject);
begin
  hasChangedDefault := True;
end;

(*******************************************************************************
@procedure edtAccreditationAuthorityChange(Sender: TObject);

@description
  1. Flags that the accrediation information has been changed.
  2. Ensures that the new accrediation will be stored in the database.
*******************************************************************************)
procedure TfrmJob.edtAccreditationAuthorityChange(Sender: TObject);
begin
  hasChangedDefault := True;
end;

(*******************************************************************************
@procedure pickAccreditationDateChange(Sender: TObject)

@description
  1. Flags that the accrediation information has been changed.
  2. Ensures that the new accrediation will be stored in the database.
*******************************************************************************)
procedure TfrmJob.pickAccreditationDateChange(Sender: TObject);
begin
  edtHideDate.Visible := False;
  hasChangedDefault := True;
end;

(*******************************************************************************
@procedure btnHelpProcedureClick(Sender: TObject);

@description
  Displays the Help for the Procedure page
*******************************************************************************)
procedure TfrmJob.btnHelpProcedureClick(Sender: TObject);
begin
  Application.HelpContext(1155);
end;

(*******************************************************************************
@procedure ImportFile

@description
  Loads the observations from a text file
*******************************************************************************)
function TfrmJob.ImportFile: Boolean;
var
  sJobID: Integer;
  strFileName: String;
  Lines: TStringList;
  i, j, P : Integer;
  strAtPillar : String;
  strToPillar : String;
  dDistance   : Double;
  dAtHeightAbovePillar : Double;
  dToHeightAbovePillar : Double;
  dPressure : Double;
  dDryTemp  : Double;
  dWetTemp  : Double;
  dHumidity : Double;
  EndOfLine : Boolean;
  hasError: Boolean;
  IntegerValue: Integer;
  FloatValue: Double;
  Code: Integer;
  hasIncorrectPillarNumbers: Boolean;
  strLine, strField: String;
  sAtPillarID, sToPillarID: Integer;
  strAtPillarNo, strToPillarNo: String;
  strKeyValues: String;
  hasFound : Boolean;
  hasDistanceError: Boolean;
  dLegalSlopeDistance: Double;
  sBaselineID: Integer;
  strError: String;
  hasNullFields: Boolean;
  sMeasID, sNextMeasId   : Integer;
  sNextEDMObsId : Integer;
  strHumidityType : String;
  strMeasMetFlag: String;
  hasJMeasureRecords : Boolean;
  hasEDMObsRecords : Boolean;
  hasAtmosphericErrors : Boolean;
  strAtmosErrors: string;
  hasPressure, hasDryTemp, hasWetTemp, hasHumidity: Boolean;
  isFirstRecord: Boolean;
  hasMetSetError: Boolean;
  sPreviousAtPillarID, sPreviousToPillarID: Integer;
  newMeasureIDs: TStringlist;
  meanDryTemp,
  meanHumidity,
  meanPressure: Double;
  dryTempCount,
  humidityCount,
  pressureCount: integer;
begin
  sJobID := dmMain.rxJob.FieldByName('JobID').AsInteger;

  hasMetSetError := False;
  isFirstRecord := True;
  strAtmosErrors := '';
  hasPressure := False;
  hasDryTemp := False;
  hasWetTemp := False;
  hasHumidity := False;
  sAtPillarID := 0;
  sToPillarID := 0;
  sPreviousAtPillarID :=0;
  sPreviousToPillarID := 0;
  dTolerance := edtTolerance3.Value;
  hasAtmosphericErrors := False;
  dmMain.rxJMeasure.EmptyTable;
  dmMain.rxFilteredEDMObs.EmptyTable;

  sNextMeasId   := dmBase.GetLastId(dmBase.rxJMeasure,'MeasID')-1;
  sNextEDMObsId := dmBase.GetLastId(dmBase.rxEDMObs,'EDMObsID');
  strError := '';
  hasNullFields := False;
  hasError := True;
  hasIncorrectPillarNumbers := False;
  hasDistanceError := False;
  hasJMeasureRecords := False;
  hasEDMObsRecords := False;
  sBaselineId := dmMain.rxBaseLine.FieldByName('BaselineId').AsInteger;
  dmBase.FilterDistance(sBaselineId);

  if OpenDialogTextFile.Execute then
  begin
    Screen.Cursor := crHourGlass;
    strFileName := OpenDialogTextFile.FileName;
    Lines := TStringList.Create;
    newMeasureIDs := TStringlist.Create;
    try
      Lines.LoadFromFile(strFileName);
      if Lines.Count > 0 then
      begin
        if Lines.Count > 5 then
        begin
          frmProgress.pbarProgress.Min := 0;
          frmProgress.pbarProgress.Max := LInes.Count;
          frmProgress.pbarProgress.Visible := True;
          frmProgress.pbarProgress.Position := 0;
          frmProgress.lblMessage.Caption := 'Downloading observations from a text file.....';
          frmProgress.Show;
          Application.ProcessMessages;
        end;
        hasError := False;
        dAtHeightAbovePillar := 0;
        dToHeightAbovePillar := 0;
        dPressure := 0;
        dDryTemp  := 0;
        dWetTemp  := 0;
        dHumidity := 0;

        // Processes each line in text file
        for i := 0 to Lines.Count-1 do
        begin
          if Lines.Count > 5 then
          begin
            frmProgress.pbarProgress.Position := i;
            Application.ProcessMessages;
          end;
          if not hasError then
          begin
            strLine := Trim(Lines[i]);
            if Length(strLine) > 0 then
            begin
              strAtPillar := '';
              strToPillar := '';
              dDistance   := 0;
              EndOfLine := false;
              for j:= 0 to 8 do
              begin
                P := Pos(',',strLine);
                if P > 0 then
                begin
                  strField := Trim(Copy(strLine,1,P-1));
                  strLine := Trim(Copy(strLine,P+1,length(strLine)));
                end;
                if P = 0 then strField := strLine;

                if (length(strField) = 0) and (length(strLine) = 0) then EndOfLine := True;
                if not EndOfLine then
                begin
                  if (j > 1) and (length(strField) > 0) then
                  begin
                    Val(strField,FloatValue,Code);
                    if Code <> 0 then
                    begin
                      hasError := True;
                      EndOfLine := True;
                    end;
                  end; {if}

                  if not hasError then
                  begin
                    if strField = '' then
                    begin
                      if j = 0 then
                      begin
                        strError := 'An ''AT'' Pillar number is missing.';
                        hasError := True;
                        hasNullFields := True;
                      end;
                      if j = 1 then
                      begin
                        strError := 'A ''TO'' Pillar number is missing.';
                        hasError := True;
                        hasNullFields := True;
                      end;
                      if j = 2 then
                      begin
                        strError := 'A distance is missing.';
                        hasError := True;
                        hasNullFields := True;
                      end;
                    end {if}
                    else
                    begin
                      if j = 0 then strAtPillar := strField;
                      if j = 1 then strToPillar := strField;
                      if j = 2 then
                      begin
                        dDistance   := StrToFloat(strField);
                        if dDistance <= 0 then
                        begin
                          strError := 'Distance must be greater than 0';
                          hasError := True;
                          hasNullFields := True;
                        end;
                      end;
                      if j = 3 then dAtHeightAbovePillar  := StrToFloat(strField);
                      if j = 4 then dToHeightAbovePillar  := StrToFloat(strField);
                      if j = 5 then
                      begin
                        dPressure := StrToFloat(strField);
                        hasPressure := True;
                      end;
                      if j = 6 then
                      begin
                        dDryTemp  := StrToFloat(strField);
                        hasDryTemp := True;
                      end;
                      if j = 7 then
                      begin
                        dWetTemp  := StrToFloat(strField);
                        hasWetTemp := True;
                      end;
                      if j = 8 then
                      begin
                        dHumidity := StrToFloat(strField);
                        hasHumidity := True;
                      end;
                    end; {if}
                    if P = 0 then EndOfLine := True;
                  end;
                end
                else
                begin
                  if not hasError then
                  begin
                    if j < 3 then
                    begin
                      strError := 'At least three fields are required';
                      hasError := True;
                    end;
                  end;
                end;
              end; {for}

              // Check Pillar information
              if not hasError then
              begin
                if dmMain.rxPillar.Locate('PillarNo',strAtPillar,[loCaseInsensitive]) then
                begin
                  sAtPillarID := dmMain.rxPillar.FieldByName('PillarID').AsInteger;
                  strAtPillarNo := dmMain.rxPillar.FieldByName('PillarNo').AsString;
                end
                else
                begin
                  hasIncorrectPillarNumbers := True;
                end;
                if not hasIncorrectPillarNumbers then
                begin
                  if dmMain.rxPillar.Locate('PillarNo',strToPillar,[loCaseInsensitive]) then
                  begin
                    sToPillarID := dmMain.rxPillar.FieldByName('PillarID').AsInteger;
                    strToPillarNo := dmMain.rxPillar.FieldByName('PillarNo').AsString;
                  end
                  else
                  begin
                    hasIncorrectPillarNumbers := True;
                    hasError := True;
                  end;
                end;
              end;

              // Determine if the text file contains Dry Temp, Pressure, Wet Temp and Humidity Readings
              // Only check first record
              if not hasError then
              begin
                if isFirstRecord then
                begin
                  strMeasMetFlag := 'N';
                  strHumidityType :='';
                  if hasPressure and (not hasDryTemp) then
                  begin
                    hasAtmosphericErrors := True;
                    strAtmosErrors := strAtmosErrors+'Line: '+IntToStr(i)+' - Pressure but no Dry Temperature'+#10;
                  end;
                  if hasDryTemp and (not hasPressure) then
                  begin
                    hasAtmosphericErrors := True;
                    strAtmosErrors := strAtmosErrors+'Line: '+IntToStr(i)+' - Dry Temperature but no Pressure'+#10;
                  end;
                  hasError := hasAtmosphericErrors;
                  if not hasError then
                  begin
                    if hasDryTemp and hasPressure then
                    begin
                      strMeasMetFlag := 'Y';
                      if hasWetTemp then
                      begin
                        strHumidityType :='W';
                      end
                      else
                      begin
                        if hasHumidity then
                        begin
                          strHumidityType :='R';
                        end
                        else
                        begin
                          strHumidityType :='D';
                        end;
                      end;
                    end;
                    hasMetSetError := hasMetSettingErrors(strMeasMetFlag, strHumidityType);
                    hasError := hasMetSetError;
                  end;
                  isFirstRecord := False;
                end;
              end;

              // Validate Met readings
              if not hasError then
              begin
                if strMeasMetFlag = 'Y' then
                begin
                  if (dPressure > 1500) or (dPressure < 500) then
                  begin
                    strAtmosErrors := 'Line: '+IntToStr(i)+' - Invalid Pressure'+#10;
                    hasAtmosphericErrors := True;
                  end;
                  if (dDryTemp > 50) or (dDryTemp < -20) then
                  begin
                    if strHumidityType = 'W' then
                      strAtmosErrors := strAtmosErrors+'Line: '+IntToStr(i)+' - Invalid Dry Temperature'+#10
                    else
                      strAtmosErrors := strAtmosErrors+'Line: '+IntToStr(i)+' - Invalid Temperature'+#10;

                    hasAtmosphericErrors := True;
                  end;
                  if strHumidityType = 'W' then
                  begin
                    if (dWetTemp > 50) or (dWetTemp < -20) then
                    begin
                      strAtmosErrors := strAtmosErrors+'Line: '+IntToStr(i)+' - Invalid Wet Temperature'+#10;
                      hasAtmosphericErrors := True;
                    end;
                    if (dWetTemp > dDryTemp) then
                    begin
                      strAtmosErrors := strAtmosErrors+'Line: '+IntToStr(i)+' - Wet Temperature must be smaller then Dry Temperature'+#10;
                      hasAtmosphericErrors := True;
                    end;
                  end;
                  if (strHumidityType = 'R') then
                  begin
                    if (dHumidity > 100) or (dHumidity < 0) then
                    begin
                      strAtmosErrors := strAtmosErrors+'Line: '+IntToStr(i)+' - Invalid Humidity'+#10;
                      hasAtmosphericErrors := True;
                    end;
                  end;
                  hasError := hasAtmosphericErrors;
                end;
              end;

              // Download each record
              if not hasError then
              begin
                if (not hasIncorrectPillarNumbers) and (not hasDistanceError)
                and (not hasAtmosphericErrors) then
                begin
                  with dmMain.rxJMeasure do
                    if not (( sAtPillarID = sPreviousAtPillarID) and
                           ( sToPillarID = sPreviousToPillarID)) then
                    begin
                      Inc(sNextMeasID);
                      sPreviousAtPillarID := sAtPillarID;
                      sPreviousToPillarID := sToPillarID;
                      dmMain.strHumidityType := strHumidityType;
                      Append;
                      FieldByName('MeasID').AsInteger := sNextMeasID;
                      FieldByName('MeasAtPillarID').AsInteger := sAtPillarID;
                      FieldByName('MeasToPillarID').AsInteger := sToPillarID;
                      Post;

                      dmBase.rxJMeasure.Append;
                      dmBase.rxJMeasure.FieldByName('MeasID').AsInteger := sNextMeasID;
                      newMeasureIDs.Add(IntToStr(sNextMeasID));
                      dmBase.rxJMeasure.FieldByName('MeasType').AsString := 'E';
                      dmBase.rxJMeasure.FieldByName('JobID').AsInteger := sJobID;
                      dmBase.rxJMeasure.FieldByName('MeasAtPillarID').AsInteger := sAtPillarID;
                      dmBase.rxJMeasure.FieldByName('MeasToPillarID').AsInteger := sToPillarID;
                      dmBase.rxJMeasure.FieldByName('MeasAtHeight').AsFloat := dAtHeightAbovePillar;
                      dmBase.rxJMeasure.FieldByName('MeasToHeight').AsFloat := dToHeightAbovePillar;
                      dmBase.rxJMeasure.FieldByName('MeasMetFlag').AsString := strMeasMetFlag;

                      if strMeasMetFlag = 'Y' then
                      begin
                        dmBase.rxJMeasure.FieldByName('MeasHumidityType').AsString := strHumidityType;
                        dmBase.rxJMeasure.FieldByName('MeasDryTemp').AsFloat := dDryTemp;
                        dmBase.rxJMeasure.FieldByName('MeasPressure').AsFloat := dPressure;
                        if hasWetTemp then
                        begin
                          dmBase.rxJMeasure.FieldByName('MeasHumidity').AsFloat := dWetTemp;
                          dmBase.rxJMeasure.FieldByName('WetTemp').AsFloat := dWetTemp;
                        end;
                        if strHumidityType = 'R' then
                        begin
                          dmBase.rxJMeasure.FieldByName('MeasHumidity').AsFloat := dHumidity;
                          dmBase.rxJMeasure.FieldByName('Humidity').AsFloat := dHumidity;
                        end;
                        if strHumidityType = 'D' then
                        begin
                          dmBase.rxJMeasure.FieldByName('MeasHumidity').AsFloat := 50;
                          dmBase.rxJMeasure.FieldByName('Humidity').AsFloat := 50;
                        end;
                      end
                      else
                      begin
                        dmBase.rxJMeasure.FieldByName('MeasHumidityType').Clear;
                        dmBase.rxJMeasure.FieldByName('MeasDryTemp').Clear;
                        dmBase.rxJMeasure.FieldByName('MeasHumidity').Clear;
                        dmBase.rxJMeasure.FieldByName('MeasPressure').Clear;
                      end;
                      dmBase.rxJMeasure.Post;

                      hasJMeasureRecords := True;
                    end; {if}

                  dLegalSlopeDistance := GetCertifiedSlopeDistance(sAtPillarID, sToPillarID);

                  if (dDistance < (dLegalSlopeDistance-dTolerance)) or
                     (dDistance > (dLegalSlopeDistance+dTolerance)) then
                  begin
                    hasDistanceError := True;
                    hasError := True;
                  end
                  else
                    with dmBase.rxEDMObs do
                    begin
                      Append;
                      FieldByName('EDMObsID').AsInteger := sNextEDMObsID;
                      FieldByName('MeasID').AsInteger := sNextMeasID;
                      FieldByName('EDMObsDistance').AsFloat := dDistance;
                      FieldByName('MeasDryTemp').AsFloat := dDryTemp;
                      FieldByName('MeasHumidity').AsFloat := dHumidity;
                      FieldByName('MeasPressure').AsFloat := dPressure;
                      Post;
                      hasEDMObsRecords := True;
                      Inc(sNextEDMOBsID);
                    end; {with}
                end
                else
                  hasError := True;
              end;
            end;
          end;
        end; {for}

        if Lines.Count > 5 then
          frmProgress.Close;
      end; {if}

      if hasError then
      begin
        DeleteObservations;

        if hasNullFields then
           MessageDlg(strError,mtError,[mbOK],0)
        else
        if hasDistanceError then
           MessageDlg('Distances must be within '+edtTolerance3.Text+' metres of the certified slope distances.',mtError,[mbOK],0)
        else
        if hasIncorrectPillarNumbers then
          MessageDlg('The text file '''+strFileName+ ''' contains incorrect pillar numbers.'
                     ,mtError,[mbOK],0)
        else
        if hasAtmosphericErrors then
          MessageDlg(strAtmosErrors ,mtError,[mbOK],0)
        else
        if (not hasMetSetError) then
          MessageDlg(' Text file '''+strFileName+ ''' has an incorrect format.'+#10+#10+
                   'The format of a line should be as follows:'+#10+
                   'At Pillar, To Pillar, Distance, Height above At pillar, Height above To Pillar,'+#10+
                   'Pressure, Dry Temperature, Wet Temperature, Humidity.'+#10+#10+
                   'Only the first three fields are compulsory. Fields are separated by commas.'
                   ,mtError,[mbOK],0);
      end {if}
      else
      if (not hasJMeasureRecords) or (not hasEDMObsRecords) then
      begin
        hasError := True;
        MessageDlg(' Text file '''+strFileName+ ''' contains no observations.' ,mtError,[mbOK],0);
      end
      else
      begin
        Screen.Cursor := crHourglass;
        try
          {
          loop through the new measure ID string list
          and fetch all measurements to calculate the mean measurements
          and apply them to rxEDMObs
          }
          for I := newMeasureIDs.Count - 1 downto 0 do
          begin
            dryTempCount := 0;
            humidityCount := 0;
            pressureCount := 0;
            meanDryTemp := 0;
            meanHumidity := 0;
            meanPressure := 0;

            with dmBase.rxEDMObs do
            begin
              Last;

              while not Bof do
              begin
                if FieldByName('MeasID').AsString = newMeasureIDs[i] then
                begin
                  if FieldByName('MeasDryTemp').AsFloat > 0 then
                  begin
                    meanDryTemp := meanDryTemp + FieldByName('MeasDryTemp').AsFloat;
                    Inc(dryTempCount);
                  end;

                  if FieldByName('MeasHumidity').AsFloat > 0 then
                  begin
                    meanHumidity := meanHumidity + FieldByName('MeasHumidity').AsFloat;
                    Inc(humidityCount);
                  end;

                  if FieldByName('MeasPressure').AsFloat > 0 then
                  begin
                    meanPressure := meanPressure + FieldByName('MeasPressure').AsFloat;
                    Inc(pressureCount);
                  end;
                end;
                Prior;
              end; {while}
            end; {with}

            if (dryTempCount > 0) or (humidityCount > 0) or (pressureCount > 0) then
            begin
              meanDryTemp := meanDryTemp / dryTempCount;
              meanHumidity := meanHumidity / humidityCount;
              meanPressure := meanPressure / pressureCount;

              with dmBase.rxJMeasure do
              begin
                Last;
                while not Bof do
                begin
                  if FieldByName('MeasID').AsString = newMeasureIDs[i] then
                  begin
                    Edit;
                    if dryTempCount > 0 then
                      dmBase.rxJMeasure.FieldByName('MeasDryTemp').AsFloat :=
                        meanDryTemp;

                    if pressureCount > 0 then
                      dmBase.rxJMeasure.FieldByName('MeasPressure').AsFloat :=
                        meanPressure;

                    if humidityCount > 0 then
                      dmBase.rxJMeasure.FieldByName('MeasHumidity').AsFloat :=
                        meanHumidity;

                    Post;
                    break;
                  end;
                  Prior;
                end; {while}
              end; {with}
            end; {if}
            Application.ProcessMessages;
          end; {for}
        finally
          Screen.Cursor := crDefault;
        end;
      end; {else}
    finally
      Lines.free;
      newMeasureIDs.free;
    end;
  end; {if}
  Result := (not hasError);
end;

(*******************************************************************************
@procedure btnExportFileClick(Sender: TObject);

@description
  Saves all observations of a selected job to a formatted text file.
*******************************************************************************)
procedure TfrmJob.btnExportFileClick(Sender: TObject);
var
  strFileName: String;
  Lines: TStringList;
  strLine: String;
  strAtPillar : String;
  strToPillar : String;
  strAtHeight : String;
  strToHeight : String;
  strPressure : String;
  strDryTemp  : String;
  strWetTemp  : String;
  strHumidity : String;
  strDistance : String;
  dPressure, dDryTemp, dWetTemp, dHumidity: Double;
begin
  SaveDialog.Title := 'Save observations to text file';
  SaveDialog.Filter := 'Text Files|*.txt|All Files|*.*';
  SaveDialog.DefaultExt := '*.txt';
  if SaveDialog.Execute then
  begin
    strFileName := SaveDialog.FileName;
    Lines := TStringList.Create;

    with dmMain.rxJMeasure do
    begin
      First;
      while not EOF do
      begin
        strAtHeight := '';
        strToHeight := '';
        strPressure := '';
        strDryTemp  := '';
        strWetTemp  := '';
        strHumidity := '';
        dmMain.rxPillar.Locate('PillarID',FieldByName('MeasAtPillarID').AsString,[]);
        strAtPillar :=  dmMain.rxPillar.FieldByName('PillarNo').AsString;
        dmMain.rxPillar.Locate('PillarID',FieldByName('MeasToPillarID').AsString,[]);
        strToPillar :=  dmMain.rxPillar.FieldByName('PillarNo').AsString;
        strAtHeight := FieldByName('MeasAtHeight').AsString;
        strToHeight := FieldByName('MeasToHeight').AsString;

        if not chkMetsDial.Checked then
        begin
          dDryTemp := FieldByName('MeasDryTemp').AsFloat + dmMain.rxJob.FieldByName('ThermometerCorr1').AsFloat;
          if vedtNumberMetSets.Text = '2' then
          begin
            if not FieldByName('MeasDryTemp2').isNull then
            begin
              dDryTemp := (dDryTemp+FieldByName('MeasDryTemp2').AsFloat+dmMain.rxJob.FieldByName('ThermometerCorr2').AsFloat)/2.0;
            end;
          end;
          strDryTemp := Format('%6.2f', [dDryTemp]);

          dPressure := FieldByName('MeasPressure').AsFloat + dmMain.rxJob.FieldByName('BarometerCorr1').AsFloat;
          if vedtNumberMetSets.Text = '2' then
          begin
            if not FieldByName('MeasPressure2').isNull then
            begin
              dPressure := (dPressure+FieldByName('MeasPressure2').AsFloat+dmMain.rxJob.FieldByName('BarometerCorr2').AsFloat)/2.0;
            end;
          end;
          strPressure := Format('%8.3f', [dPressure]);

          if rbtnWetTemp.Checked then
          begin
            dWetTemp := FieldByName('MeasHumidity').AsFloat + dmMain.rxJob.FieldByName('ThermometerCorr1').AsFloat;
            if vedtNumberMetSets.Text = '2' then
            begin
              if not FieldByName('MeasHumidity2').isNull then
              begin
                dWetTemp := (dWetTemp+FieldByName('MeasHumidity2').AsFloat + dmMain.rxJob.FieldByName('ThermometerCorr2').AsFloat)/2.0;
              end;
            end;
            strWetTemp := Format('%6.2f', [dWetTemp]);
          end;

          if rbtnHumidity.Checked then
          begin
            dHumidity := FieldByName('MeasHumidity').AsFloat;
            if vedtNumberMetSets.Text = '2' then
            begin
              if not FieldByName('MeasHumidity2').isNull then
              begin
                dHumidity := (dHumidity+FieldByName('MeasHumidity2').AsFloat)/2.0;
              end;
            end;
            strHumidity := Format('%5.2f', [dHumidity]);
          end;

          if rbtnDefaultHumidity.Checked then
          begin
            strHumidity := '50';
          end;
       end;

        dmMain.FilterEDMObs(FieldByName('MeasId').AsInteger);
        dmMain.rxFilteredEDMObs.First;

        while not dmMain.rxFilteredEDMObs.EOF do
        begin
          strDistance := dmMain.rxFilteredEDMObs.FieldByName('EDMObsDistance').AsString;
          if length(strDistance) > 0 then
          begin
            strLine := strAtPillar+','+strToPillar+','+strDistance+','+strAtHeight+','+
            strToHeight+','+strPressure+','+strDryTemp+','+strWetTemp+','+strHumidity;
            Lines.Add(strLine);
          end;
          dmMain.rxFilteredEDMObs.Next;
        end;
        Next;
      end;
    end;
    Lines.SaveToFile(strFileName);
    Lines.Free;
    MessageDlg('Observations have been saved to file '+strFileName,mtInformation,[mbOK],0);
  end;
end;

(*******************************************************************************
@procedure btnDeleteObsClick(Sender: TObject);

@description
  1. Deletes the observations between two pillars.
  2. Resets the Observations page
*******************************************************************************)
procedure TfrmJob.btnDeleteObsClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want delete all observations in this job?',MtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    DeleteObservations;
    btnExportFile.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteObs.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteRecord.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnEdit.Enabled := (not dmMain.rxJMeasure.isEmpty);
  end;
end;

(*******************************************************************************
@procedure DeleteObservations;

@description
  Deletes the observations between two pillars.
*******************************************************************************)
procedure TfrmJob.DeleteObservations;
var
  sMeasID: Integer;
begin
  with dmMain.rxJMeasure do
  begin
    First;
    while not EOF do
    begin
      sMeasID := FieldByName('MeasId').AsInteger;
      if dmBase.rxJMeasure.Locate('MeasID',INtToStr(sMeasID),[]) then
      begin
        dmBase.rxJMeasure.Delete;
      end;
      dmBase.rxEDMObs.First;
      while not dmBase.rxEDMObs.EOF do
      begin
        if dmBase.rxEDMObs.FieldByName('MeasID').AsInteger = sMeasID then
        begin
          dmBase.rxEDMObs.Delete;
        end
        else
        begin
          dmBase.rxEDMObs.Next;
        end;
      end;
      Next;
    end;
  end;

  dmMain.rxJMeasure.EmptyTable;
  dmMain.rxFilteredEDMObs.EmptyTable;
end;

(*******************************************************************************
@procedure btnLogo2Click(Sender: TObject);

@description
  Selects another authority logo
*******************************************************************************)
procedure TfrmJob.btnLogo2Click(Sender: TObject);
begin
  OpenDialog1.InitialDir := strLogoAuthorityFolder;
  if OpenDialog1.Execute then
  begin
    ImageAuthority.Height := 80;
    ImageAuthority.Width := 240;
    strLogoAuthorityFolder := ExtractFilePath(OpenDialog1.FileName);
    ImageAuthority.Picture.LoadFromFile(OpenDialog1.FileName);
    SetImageSize(ImageAuthority);
    strAuthorityLogo := OpenDialog1.FileName;
    btnDeleteLogo1.Enabled := True;
    btnLogo2.Caption := 'Change Logo';
  end;
end;

(*******************************************************************************
@procedure btnPreviewCertificateClick(Sender: TObject);

@description
  Previews the Calibration Certificate
*******************************************************************************)
procedure TfrmJob.btnPreviewCertificateClick(Sender: TObject);
var
  strAuthority: String;
  strJobDescription: string;
begin
  strAuthority := edtAuthority.Text;
  strJobDescription := dmMain.rxJobJobDescription.AsString;
  if strAuthority = '' then
  begin
    strAuthority := 'the relevant Authority';
  end;

  Screen.Cursor := crHourGlass;
  if frmJob.rbtnInstrument.Checked then
  begin
    cerEDM.isPulseMeter := dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean;
    cerEDM.dPrismConstant := dmMain.rxToInstrument.FieldByName('InstConstant').AsFloat;

    try
      frmReportSummary.qrlblCopyright.Caption := strCopyRight;
      frmReportSummary.qrmemoStatement.Lines.Clear;
      {
      frmReportSummary.qrmemoStatement.Lines.Add(
      'This report shall not be reproduced except in full, without written approval of '+
      strProgramOwner+'.');
      }
      PrintEDMCertificate2;

      frmReportSummary.imageAuthority.Height := 70;
      frmReportSummary.imageAuthority.Width := 230;
      SetQRImageSize(frmReportSummary.imageAuthority);
      frmReportSummary.qrEDM.PrinterSettings.Copies := 1;
      if not canCalibrateBaseline then frmReportSummary.qrmemoStatement.Lines.Clear;

      frmReportSummary.qrEDM.Preview;

    except;
      dmMain.rxJob.Locate('JobDescription',strJobDescription,[]);
      MessageDlg('A Preview System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
    end;
    Screen.Cursor := crDefault;
  end
  else
  begin
    if cbLetterHead.Checked then
    begin
      try;
        frmBaselineCertificate2.qrlblCopyright.Caption := strCopyRight;
        frmBaselineCertificate2.qrmemoStatement.Lines.Clear;
        {
        frmBaselineCertificate2.qrmemoStatement.Lines.Add(
        'This report shall not be reproduced except in full, without written approval of '+
        strProgramOwner+'.');
        }
        PrintBaselineCertificate2;

        frmBaselineCertificate2.qrEDM.PrinterSettings.Copies := 1;
        frmBaselineCertificate2.lblCertificationDate.Caption := DateToStr(dtStartCertification.Date);
        frmBaselineCertificate2.lblExpiryDate.Caption := DateToStr(dtEndCertification.Date);
        if not canCalibrateBaseline then frmReportSummary.qrmemoStatement.Lines.Clear;
        frmBaselineCertificate2.qrEDM.Preview;
      except;
        MessageDlg('A Preview System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
      end;
      Screen.Cursor := crDefault;
    end
    else
    begin
      try;
        frmBaselineCertificate.qrlblCopyright.Caption := strCopyRight;
        frmBaselineCertificate.qrmemoStatement.Lines.Clear;
        {
        frmBaselineCertificate.qrmemoStatement.Lines.Add(
        'This report shall not be reproduced except in full, without written approval of '+
        strProgramOwner+'.');
        }
        PrintBaselineCertificate;

        frmBaselineCertificate.imageAuthority.Height := 70;
        frmBaselineCertificate.imageAuthority.Width := 230;
        SetQRImageSize(frmBaselineCertificate.imageAuthority);

        frmBaselineCertificate.qrEDM.PrinterSettings.Copies := 1;
        frmBaselineCertificate.lblCertificationDate.Caption := DateToStr(dtStartCertification.Date);
        frmBaselineCertificate.lblExpiryDate.Caption := DateToStr(dtEndCertification.Date);
        if not canCalibrateBaseline then frmBaselineCertificate.qrmemoStatement.Lines.Clear;
        frmBaselineCertificate.qrEDM.Preview;
      except;
        MessageDlg('A Preview System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
        dmMain.rxJob.Locate('JobDescription',strJobDescription,[]);
      end;
      Screen.Cursor := crDefault;
    end;
  end;
  dmMain.rxJob.Locate('JobDescription',strJobDescription,[]);
end;

(*******************************************************************************
@procedure btnBackReportsClick(Sender: TObject);

@description
  1. Displays warning message if the user has not updated the baseline
  2. Saves any amendments to the logos
  3. Returns to the previous page of the wizard.
*******************************************************************************)
procedure TfrmJob.btnBackReportsClick(Sender: TObject);
begin
  if rbtnBaseline.Checked and (not hasUpdatedBaseline) then
  begin
    if MessageDlg('The baseline has not been updated.'+#10+
    'Are you sure you want to continue?',mtWarning,[mbYes,mbNo],0) = mrYes then
    begin
      UpdateLogos;
      sPageNumber := GetPageNumber(tsObs.Caption);
      lblPageObs.Caption := 'Page '+IntToStr(sPageNumber);
      pcMain.ActivePage := tsObs;
    end;
  end
  else
  begin
    if canCalibrateBaseline then
    begin
      UpdateLogos;
    end;
    sPageNumber := GetPageNumber(tsObs.Caption);
    lblPageObs.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsObs;
  end;
end;

(*******************************************************************************
@procedure btnUpdateBaselineClick(Sender: TObject);

@description
  Saves the latest baseline calibration results to the database.
*******************************************************************************)
procedure TfrmJob.btnUpdateBaselineClick(Sender: TObject);
var
  isUsedByJob: Boolean;
begin
  if MessageDlg('Are you sure you want to update the '+
                 dmMain.rxBaseline.FieldByName('BaselineName').AsString+
                 ' baseline?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    isUsedByJob := UsedByJob;
    UpdateBaseline(isUsedByJob);
    btnUpdateBaseline.Enabled := False;
    MessageDlg('the '+ dmMain.rxBaseline.FieldByName('BaselineName').AsString+
                 ' baseline has been updated.',mtInformation,[mbOK],0);
    hasUpdatedBaseline := True;
    if not isUsedByJob then
    begin
      sBaseLineId := dmMain.rxBaseline.FieldByName('BaselineId').AsInteger;
      FilterPillar(sBaselineId);
      dmBase.FilterDistance(sBaselineId);
    end;
  end;
end;

(*******************************************************************************
@procedure btnPreviewReportsClick(Sender: TObject);

@description
  Previews the full calibration report.
*******************************************************************************)
procedure TfrmJob.btnPreviewReportsClick(Sender: TObject);
var
  strAuthority: String;
begin
  strAuthority := edtAuthority.Text;
  if strAuthority = '' then
  begin
    strAuthority := 'the relevant Authority';
  end;
  Screen.Cursor := crHourGlass;
  try
    frmReport1A.qrlblCopyright.Caption := strCopyright;
    frmReport1A.qrmemoStatement.Lines.Clear;
    {
    frmReport1A.qrmemoStatement.Lines.Add(
      'This report shall not be reproduced except in full, without written approval of '+
      strProgramOwner+'.');
    }
    CreateFullReports;

    frmReport1A.qrEDM.PrinterSettings.Copies := 1;
    frmReport1A.imageAuthority.Height := 70;
    frmReport1A.imageAuthority.Width := 230;
    SetQRImageSize(frmReport1A.imageAuthority);
    if not canCalibrateBaseline then frmReport1A.qrmemoStatement.Lines.Clear;
    frmReport1A.qrEDM.Preview;
  except;
    MessageDlg('A Preview System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
  end;
  Screen.Cursor := crDefault;
end;

(*******************************************************************************
@procedure CreateFullReports;

@description
  Creates the full calibration report for printing or pre-viewing.
*******************************************************************************)
procedure TfrmJob.CreateFullReports;
var
  sTotalReportCount: Integer;
  strLine: String;
  dPrismConstant: Double;
  sLoop: Integer;
  hasImageAccreditation: Boolean;
begin
  if rbtnInstrument.Checked then
  begin
    sTotalReportCount := 9;
  end
  else
  begin
    sTotalReportCount := 8;
  end;

  frmReport1A.sTotalPages := sTotalPages;
  with frmReport1A do
  begin
    if frmJob.chkIncludeLogos.Checked then
    begin
      frmReport1A.imageAuthority.Enabled := True;
      frmReport1A.imageAccreditation.Enabled := True;
      frmReport1A.imageAuthority.Picture := frmJob.imageAuthority.Picture;
      frmReport1A.imageAccreditation.Picture := frmJob.imageAccreditation2.Picture;
    end
    else
    begin
      frmReport1A.imageAuthority.Enabled := False;
      frmReport1A.imageAccreditation.Enabled := False;
    end;
    lblTotalPages.caption := ' of '+IntToStr(sTotalPages);
    if rbtnInstrument.Checked then
    begin
      lblHeader.Caption := 'EDM Calibration Report';
      Dec(sTotalReportCount);
    end
    else
    begin
      lblHeader.Caption := 'Baseline Calibration Report';
    end;
    sReportTotal := sTotalReportCount;

    lblJobDescription.caption := dmMain.rxJobJobDescription.AsString;
    strLine := Format('This report has been generated by program Baseline %s, developed',[strVersionNumber]);
    strLine := strLine +' by the '+strProgramOwner+'.';
    lblVersionNumber.caption := strLine;
    lblCalibrationDate.caption := DateToStr(dmMain.rxJobJobStartCalibrationDate.AsDateTime);
    //lblComputationDate.caption := DateToStr(Date);    KW 31/08/2021
    lblComputationDate.caption := DateToStr(dmMain.rxJobJobEndCalibrationDate.AsDateTime);
    lblObserverName.Caption    := dmMain.rxJobJobObserverName.AsString;
    lblComputationTime.caption := TimeToStr(Time);
    lblEDMOwner.Caption := dmMain.rxJobJobInst1Owner.AsString;
    lblOwnerAddressFullReport.Caption := dmMain.rxJobJobInst1OwnerAddress.AsString;
    lblEDMMake.Caption := dmMain.rxAtInstrumentMakeMakeName.AsString;
    lblEDMModel.Caption := dmMain.rxAtInstrumentModelModelName.AsString;
    lblEDMSerialNumber.Caption := dmMain.rxAtInstrumentInstSerialNo.AsString;
    lblPrismMake.Caption := dmMain.rxToInstrumentMakeMakeName.AsString;
    lblPrismModel.Caption := dmMain.rxToInstrumentModelModelName.AsString;
    lblPrismSerialNumber.Caption := dmMain.rxToInstrumentInstSerialNo.AsString;

    dPrismConstant := 0;
    if not dmMain.rxToInstrument.FieldByName('InstConstant').isNull then
    begin
      dPrismConstant := dmMain.rxToInstrument.FieldByName('InstConstant').AsFloat;
    end;
    lblPrismConstant.Caption := Format('%5.0f mm',[dPrismConstant*1000]);
    frmReport1A.imageAccreditation.Height := 64;
    frmReport1A.imageAccreditation.Width := 180;
    SetQRImageSize(frmReport1A.imageAccreditation);

    PageFooterBand1.Height := 80;
    qrMemoStatement.Height := 20;
    qrMemoStatement.Left := 20;
    qrMemoStatement.Width := 680;
    qrMemoStatement.Alignment := taCenter;
    memAccreditationLogoTitle.Enabled := False;
    frmReport1A.ImageAccreditation.Enabled := False;
    if canCalibrateBaseline then
    begin
      hasImageAccreditation := True;
      if (frmReport1A.imageAccreditation.Picture.Bitmap.Empty) or
         (frmReport1A.imageAccreditation.Picture.Height = 0) or
         (frmReport1A.imageAccreditation.Picture.Width = 0) then
      begin
        hasImageAccreditation := False;
      end;

      if hasImageAccreditation and (frmJob.chkIncludeLogos.Checked) then
      begin
        frmReport1A.ImageAccreditation.Enabled := True;
        memAccreditationLogoTitle.Enabled := True;
        PageFooterBand1.Height := 80;
        memAccreditationLogoTitle.Lines.Clear;
        memAccreditationLogoTitle.Lines.Add(frmJob.memAccreditationLogoTitle2.Lines[0]);
        memAccreditationLogoTitle.Lines.Add(frmJob.memAccreditationLogoTitle2.Lines[1]);
        qrMemoStatement.Height := 36;
        qrMemoStatement.Lines.Clear;
        strLine := '';
        for sLoop := 0 to frmJob.memAccreditationStatement.Lines.Count-1 do
        begin
          strLine := strLine + frmJob.memAccreditationStatement.Lines[sLoop];
        end;
        qrMemoStatement.Lines.Add(strLine);
        if frmReport1A.ImageAccreditation.Picture.Height < frmReport1A.ImageAccreditation.Height then
        begin
          frmReport1A.ImageAccreditation.Height := frmReport1A.ImageAccreditation.Picture.Height+2;
        end;
        if frmReport1A.ImageAccreditation.Picture.Width < frmReport1A.ImageAccreditation.Width then
        begin
          frmReport1A.ImageAccreditation.Width := frmReport1A.ImageAccreditation.Picture.Width+5;
        end;
        memAccreditationLogoTitle.Top := frmReport1A.ImageAccreditation.Top+frmReport1A.ImageAccreditation.Height;
        if memAccreditationLogoTitle.Top < (qrMemoStatement.Top+qrMemoStatement.Height+3) then
        begin
          memAccreditationLogoTitle.Top := qrMemoStatement.Top+qrMemoStatement.Height+3;
        end;
        PageFooterBand1.Height := memAccreditationLogoTitle.Top+memAccreditationLogoTitle.Height+2;
        qrMemoStatement.Left := frmReport1A.ImageAccreditation.Left+frmReport1A.ImageAccreditation.Width;
        qrMemoStatement.Width := 500;
        qrMemoStatement.Alignment := taLeftJustify;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure btnPrintCertificateClick(Sender: TObject);

@description
  Prints the Calibration Certificate.
*******************************************************************************)
procedure TfrmJob.btnPrintCertificateClick(Sender: TObject);
var
  sCopies: Integer;
  sCode: Integer;
  strAuthority: String;
begin
  strAuthority := edtAuthority.Text;
  if strAuthority = '' then
  begin
    strAuthority := 'the relevant Authority';
  end;
  Screen.Cursor := crHourGlass;

  Val(edtCopies.Text, sCopies, sCode);
  if sCode <> 0 then
  begin
    edtCopies.Text := '1';
  end;

  if frmJob.rbtnInstrument.Checked then
  begin
    if dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean then
    begin
      cerEDM.isPulseMeter := True;
    end
    else
    begin
      cerEDM.isPulseMeter := False;
    end;
    cerEDM.dPrismConstant := dmMain.rxToInstrument.FieldByName('InstConstant').AsFloat;

    frmReportSummary.qrlblCopyright.Caption := strCopyright;
    try;

      PrintEDMCertificate2;

      frmReportSummary.imageAuthority.Height := 70;
      frmReportSummary.imageAuthority.Width := 230;
      SetQRImageSize(frmReportSummary.imageAuthority);
      frmReportSummary.qrEDM.PrinterSettings.Copies := StrToInt(edtCopies.Text);
      if not canCalibrateBaseline then frmReportSummary.qrmemoStatement.Lines.Clear;
      frmReportSummary.qrEDM.Print;
    except;
      Screen.Cursor := crDefault;
      MessageDlg('A Print System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
      Exit;
    end;
  end
  else
  begin
    if cbLetterHead.Checked then
    begin
      try;
        frmBaselineCertificate2.qrlblCopyright.Caption := strCopyright;
        frmBaselineCertificate2.qrmemoStatement.Lines.Clear;
        {
        frmBaselineCertificate2.qrmemoStatement.Lines.Add(
        'This report shall not be reproduced except in full, without written approval of '+
        strProgramOwner+'.');
        }
        PrintBaselineCertificate2;

        SetQRImageSize(frmBaselineCertificate2.imageAccreditation);
        frmBaselineCertificate2.qrEDM.PrinterSettings.Copies := 1;
        frmBaselineCertificate2.lblCertificationDate.Caption := DateToStr(dtStartCertification.Date);
        frmBaselineCertificate2.lblExpiryDate.Caption := DateToStr(dtEndCertification.Date);
        frmBaselineCertificate2.qrEDM.PrinterSettings.Copies := StrToInt(edtCopies.Text);
        if not canCalibrateBaseline then frmBaselineCertificate2.qrmemoStatement.Lines.Clear;
        frmBaselineCertificate2.qrEDM.Print;
      except;
        Screen.Cursor := crDefault;
        MessageDlg('A Print System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
        Exit;
      end;
    end
    else
    begin
      try;
        frmBaselineCertificate.qrlblCopyright.Caption := strCopyright;
        frmBaselineCertificate.qrmemoStatement.Lines.Clear;
        {
        frmBaselineCertificate.qrmemoStatement.Lines.Add(
        'This report shall not be reproduced except in full, without written approval of '+
        strProgramOwner+'.');
        }
        PrintBaselineCertificate;

        frmBaselineCertificate.qrEDM.PrinterSettings.Copies := StrToInt(edtCopies.Text);
        frmBaselineCertificate.lblCertificationDate.Caption := DateToStr(dtStartCertification.Date);
        frmBaselineCertificate.lblExpiryDate.Caption := DateToStr(dtEndCertification.Date);
        frmBaselineCertificate.qrEDM.PrinterSettings.Copies := StrToInt(edtCopies.Text);
        if not canCalibrateBaseline then frmBaselineCertificate.qrmemoStatement.Lines.Clear;
        frmBaselineCertificate.qrEDM.Print;
      except;
        Screen.Cursor := crDefault;
        MessageDlg('A Print System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
        Exit;
      end;
    end;
  end;
  Screen.Cursor := crDefault;
  MessageDlg('Certificate has been printed',mtInformation,[mbOK],0);
end;

(*******************************************************************************
@procedure btnPrintReportClick(Sender: TObject);

@description
  Prints the full Calibration report.
*******************************************************************************)
procedure TfrmJob.btnPrintReportClick(Sender: TObject);
var
  strAuthority: String;
begin
  strAuthority := edtAuthority.Text;
  if strAuthority = '' then
  begin
    strAuthority := 'the relevant Authority';
  end;
  Screen.Cursor := crHourGlass;
  try;
    frmReport1A.qrlblCopyright.Caption := strCopyright;
    frmReport1A.qrmemoStatement.Lines.Clear;
    frmReport1A.qrmemoStatement.Lines.Add(
      'This report shall not be reproduced except in full, without written approval of '+
      strProgramOwner+'.');

    CreateFullReports;

    frmReport1A.imageAuthority.Height := 70;
    frmReport1A.imageAuthority.Width := 230;
    SetQRImageSize(frmReport1A.imageAuthority);
    frmReport1A.qrEDM.PrinterSettings.Copies := 1;
    if not canCalibrateBaseline then frmReport1A.qrmemoStatement.Lines.Clear;
    frmReport1A.qrEDM.Print;
  except;
    MessageDlg('A Print System Error has occurred. The job has been saved. You must restart this program..',mtWarning,[mbOK],0);
  end;
  Screen.Cursor := crDefault;
end;

(*******************************************************************************
@procedure chkIncludeLogosClick(Sender: TObject);

@description
  1. Includes logos in the calibration reports.
  2. Allows the user to preview the logos prior to printing the calibration reports.
*******************************************************************************)
procedure TfrmJob.chkIncludeLogosClick(Sender: TObject);
begin
  if chkIncludeLogos.Checked then
  begin
    pcLogo.Visible := True;
  end
  else
  begin
    pcLogo.Visible := False;
  end;
end;

(*******************************************************************************
@procedure btnDeleteLogo2Click(Sender: TObject);

@description
  Deletes the Accreditation logo and resets the logo buttons.
*******************************************************************************)
procedure TfrmJob.btnDeleteLogo2Click(Sender: TObject);
begin
  ImageAccreditation1.Picture := nil;
  ImageAccreditation2.Picture := nil;
  strAccreditationLogo := '';
  btnDeleteLogo2.Enabled := False;
  btnLogo1.Caption := 'Create Logo';
  btnDeleteLogoAccreditation.Enabled := False;
  btnLogoAccreditation.Caption := 'Create Logo';
end;

(*******************************************************************************
@procedure btnDeleteLogo1Click(Sender: TObject);

@description
  Deletes the Authority logo and resets the logo buttons.
*******************************************************************************)
procedure TfrmJob.btnDeleteLogo1Click(Sender: TObject);
begin
  ImageAuthority.Picture := nil;
  strAuthorityLogo := '';
  btnDeleteLogo1.Enabled := False;
  btnLogo2.Caption := 'Create Logo';
end;

(*******************************************************************************
@procedure btnCloseClick(Sender: TObject);

@description
  1. Checks if the baseline required updating.
  2. Updates the logos.
  3. Closes the calibration function and returns to the main page
*******************************************************************************)
procedure TfrmJob.btnCloseClick(Sender: TObject);
begin
  if rbtnBaseline.Checked and (not hasUpdatedBaseline) then
  begin
    if MessageDlg('The baseline has not been updated.'+#10+
    'Are you sure you want to exit?',mtWarning,[mbYes,mbNo],0) = mrYes then
    begin
      UpdateLogos;
      Close;
    end;
  end
  else
  begin
    if canCalibratebaseline then
    begin
      UpdateLogos;
    end;
    Close;
  end;

end;

(*******************************************************************************
@procedure btnSaveToFileClick(Sender: TObject);

@description
  Saves the Reports to a text file.
*******************************************************************************)
procedure TfrmJob.btnSaveToFileClick(Sender: TObject);
var
  strFileName: String;
  sTotalReportCount: Integer;
  i: Integer;
  strReportPath : String;
  strReportFilePath : String;
  strReportFileName : String;
  F1, F2: TextFile;
  Ch: Char;
begin
  SaveDialog.Title := 'Save reports to text file';
  SaveDialog.Filter := 'Text Files|*.txt|All Files|*.*';
  SaveDialog.DefaultExt := '*.txt';
  if rbtnInstrument.Checked then
  begin
    sTotalReportCount := 9;
  end
  else
  begin
    sTotalReportCount := 8;
  end;

  strReportPath := ExtractFilePath(Application.ExeName);
  strReportFilePath := strReportPath + 'CALIB.B0';
  if SaveDialog.Execute then
  begin
    strFileName := SaveDialog.FileName;
    AssignFile(F1, SaveDialog.Filename);
    Rewrite(F1);
    for i := 1 to sTotalReportCount do
    begin
      strReportFileName := strReportFilePath + IntToStr(i);
      if FileExists(strReportFileName) then
      begin
        AssignFile(F2, strReportFileName);
        Reset(F2);
        while not Eof(F2) do
        begin
          Read(F2, Ch);
          Write(F1, Ch);
        end;
        CloseFile(F2);
      end;
    end;
    CloseFile(F1);
    MessageDlg('Reports saved to text file '+SaveDialog.Filename,mtInformation,[mbOK],0);
  end;
end;

(*******************************************************************************
@procedure btnHelpClick(Sender: TObject);

@description
  Displays the Help for the "Print/Preview Report" page
*******************************************************************************)
procedure TfrmJob.btnHelpClick(Sender: TObject);
begin
  Application.HelpContext(2000);
end;

(*******************************************************************************
@procedure pickAccreditationDateClick(Sender: TObject);

@description
  Makes the edtHideDate text box invisible
*******************************************************************************)
procedure TfrmJob.pickAccreditationDateClick(Sender: TObject);
begin
  edtHideDate.Visible := False;
end;

procedure TfrmJob.pickAccreditationDateCloseUp(Sender: TObject);
begin
  edtHideDate.Visible := False;
end;

(*******************************************************************************
@procedure UpdateLogos;

@description
  Updates the software authority and accreditation authority logos
*******************************************************************************)
procedure TfrmJob.UpdateLogos;
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Authority Logo',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := strAuthorityLogo;
      Post;
    end;
    if Locate('Method','Accreditation Logo',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := strAccreditationLogo;
      Post;
    end;
    dmBase.UpdateMethodDescription(memAccreditationLogoTitle2,'Accreditation Logo Title');
  end;
end;

(*******************************************************************************
@procedure GetLogos;

@description
  Gets the software authority and accreditation authority logos from the database
*******************************************************************************)
procedure TfrmJob.GetLogos;
begin
  strAuthorityLogo := '';
  strAccreditationLogo := '';
  strQualityLogo := '';
  ImageAuthority.Picture := nil;
  ImageAccreditation1.Picture := nil;
  ImageAccreditation2.Picture := nil;

  with dmBase.rxMethod do
  begin
    if Locate('Method','Authority Logo',[]) then
    begin
      strAuthorityLogo := FieldByName('Description').AsString;
      if FileExists(strAuthorityLogo) then
      begin
        strLogoAuthorityFolder := ExtractFilePath(strAuthorityLogo);
        ImageAuthority.Picture.LoadFromFile(strAuthorityLogo);
        ImageAuthority.Height := 80;
        ImageAuthority.Width := 240;
        SetImageSize(ImageAuthority);
      end
      else
      begin
        strAuthorityLogo := '';
      end;
    end;
    if Locate('Method','Accreditation Logo',[]) then
    begin
      strAccreditationLogo := FieldByName('Description').AsString;
      if FileExists(strAccreditationLogo) then
      begin
        strLogoFolder := ExtractFilePath(strAccreditationLogo);
        ImageAccreditation1.Picture.LoadFromFile(strAccreditationLogo);
        ImageAccreditation1.Height := 80;
        ImageAccreditation1.Width := 240;
        SetImageSize(ImageAccreditation1);
        ImageAccreditation2.Picture.LoadFromFile(strAccreditationLogo);
        ImageAccreditation2.Height := 80;
        ImageAccreditation2.Width := 240;
        SetImageSize(ImageAccreditation2);
      end
      else
      begin
        strAccreditationLogo := '';
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure FilterJob( strJobType: String);

@description
  Only display jobs of a selected job type (EDM or Baseline calibration jobs)
*******************************************************************************)
procedure TfrmJob.FilterJob(
 strJobType: String);
var
  i,j: Integer;
  strToField, strFromField: String;
begin
  doEvents := False;
  dmMain.rxJob.EmptyTable;
  with dmBase.rxJob do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('JobType').AsString = strJobType then
      begin
        dmMain.rxJob.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strToField   := uppercase(dmMain.rxJob.Fields[j].FieldName);
          strFromField := uppercase(Fields[i].FieldName);
          while (strToField <> strFromField) and
                 ( j < dmMain.rxJob.FieldCount-1) do
          begin
            Inc(j);
            strToField := uppercase(dmMain.rxJob.Fields[j].FieldName);
          end;
          if strFromField = strToField then
          begin
            dmMain.rxJob.Fields[j].Value := Fields[i].Value;
          end;
        end;
        dmMain.rxJob.Post;
      end;
      Next;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure FilterBaseline(strFilter: String);

@description
  Only display Archived or Current baselines
*******************************************************************************)
procedure TfrmJob.FilterBaseline(strFilter: String);
var
  i, j: Integer;
  strFilteredFieldName: String;
  strFieldName: String;
  hasFilter: Boolean;
begin
  hasFilter := False;
  if (strFilter = 'C') or (strFilter = 'A') then
  begin
    hasFilter := True;
  end;
  dmMain.rxBaseline.EmptyTable;
  with dmBase.rxBaseline do
  begin
    First;
    while not EOF do
    begin
      if (FieldByName('BaselineArchiveFlag').AsString = strFilter) or
          (not hasFilter) then
      begin
        dmMain.rxBaseline.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredFieldName := Uppercase(dmMain.rxBaseline.Fields[j].FieldName);
          strFieldName := Uppercase(dmbase.rxBaseline.Fields[i].FieldName);

          while (strFilteredFieldName <> strFieldName) and
                ( j < dmMain.rxBaseline.FieldCount-1) do
          begin
            Inc(j);
            strFilteredFieldName := Uppercase(dmMain.rxBaseline.Fields[j].FieldName);
          end;
          if strFilteredFieldName = strFieldName then
          begin
            dmMain.rxBaseline.Fields[j].Value := Fields[i].Value;
          end;
        end;
        dmmain.rxBaseline.Post;
      end;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure FilterPillar( sBaselineId: Integer);

@description
  Only display pillars of a selected baseline
*******************************************************************************)
procedure TfrmJob.FilterPillar( sBaselineId: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
 doEvents2: Boolean;
begin
  doEvents2 := doEvents;
  doEvents := False;
  dmMain.rxPillar.EmptyTable;
  with dmBase.rxPillar do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineId').AsInteger = sBaselineID then
      begin
        dmMain.rxPillar.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(dmMain.rxPillar.Fields[j].FieldName);
          strField := uppercase(Fields[i].FieldName);
          while (strFilteredField <> strField) and
                 ( j < dmMain.rxPillar.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(dmMain.rxPillar.Fields[j].FieldName);
          end;

          if strFilteredField = strField then
          begin
            dmMain.rxPillar.Fields[j].Value := Fields[i].Value;
          end;
        end;
        dmMain.rxPillar.Post;
      end;
      Next;
    end;
  end;
  doEvents := doEvents2;
end;


(*******************************************************************************
@procedure FilterModel(strTable: String; strModelType: String; sMakeId: Integer);

@description
  Only display instrument models of a selected Make and model type.
*******************************************************************************)
procedure TfrmJob.FilterModel(
 strTable: String;
 strModelType: String;
 sMakeId: Integer);
var
  i,j: Integer;
  strToField, strFromField: String;
begin
  doEvents := False;
  if strTable = 'At' then
  begin
    dmMain.rxAtInstrumentModel.EmptyTable;
    with dmBase.rxInstrumentModel do
    begin
      First;
      while not EOF do
      begin
        if (FieldByName('ModelInstType').AsString = strModelType) and
           (FieldByName('MakeID').AsInteger = sMakeId) then
        begin
          dmMain.rxAtInstrumentModel.Append;
          for i := 0 to FieldCount - 1 do
          begin
            j := 0;
            strToField := uppercase(dmMain.rxAtInstrumentModel.Fields[j].FieldName);
            strFromField := uppercase(Fields[i].FieldName);
            while (strToField <> strFromField) and
                   ( j < dmMain.rxAtInstrumentModel.FieldCount-1) do
            begin
              Inc(j);
              strToField := uppercase(dmMain.rxAtInstrumentModel.Fields[j].FieldName);
            end;
            if strFromField = strToField then
            begin
              dmMain.rxAtInstrumentModel.Fields[j].Value := Fields[i].Value;
            end;
          end;
          dmMain.rxAtInstrumentModel.Post;
        end;
        Next;
      end;
    end;
  end
  else
  begin
    dmMain.rxToInstrumentModel.EmptyTable;
    with dmBase.rxInstrumentModel do
    begin
      First;
      while not EOF do
      begin
        if (FieldByName('ModelInstType').AsString = strModelType) and
           (FieldByName('MakeID').AsInteger = sMakeId) then
        begin
          dmMain.rxToInstrumentModel.Append;
          for i := 0 to FieldCount - 1 do
          begin
            j := 0;
            strToField := uppercase(dmMain.rxToInstrumentModel.Fields[j].FieldName);
            strFromField := uppercase(Fields[i].FieldName);
            while (strToField <> strFromField) and
                   ( j < dmMain.rxToInstrumentModel.FieldCount-1) do
            begin
              Inc(j);
              strToField := uppercase(dmMain.rxToInstrumentModel.Fields[j].FieldName);
            end;
            if strFromField = strToField then
            begin
              dmMain.rxToInstrumentModel.Fields[j].Value := Fields[i].Value;
            end;
          end;
          dmMain.rxToInstrumentModel.Post;
        end;
        Next;
      end;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure FilterInstrument(strTable: String; strInstType: String; sModelID: Integer)

@description
  Only displays the instrument of a selected model and instrument type (EDM or Prism).
*******************************************************************************)
procedure TfrmJob.FilterInstrument(
 strTable: String;
 strInstType: String;
 sModelID: Integer);
var
  i,j: Integer;
  strToField, strFromField: String;
begin
  doEvents := False;
  if strTable = 'At' then
  begin
    dmMain.rxAtInstrument.EmptyTable;
    with dmBase.rxInstrument do
    begin
      First;
      while not EOF do
      begin
        if (FieldByName('InstType').AsString = strInstType) and
           (FieldByName('ModelID').AsInteger = sModelID) then
        begin
          dmMain.rxAtInstrument.Append;
          for i := 0 to FieldCount - 1 do
          begin
            j := 0;
            strToField   := uppercase(dmMain.rxAtInstrument.Fields[j].FieldName);
            strFromField := uppercase(Fields[i].FieldName);
            while (strToField <> strFromField) and
                   ( j < dmMain.rxAtInstrument.FieldCount-1) do
            begin
              Inc(j);
              strToField := uppercase(dmMain.rxAtInstrument.Fields[j].FieldName);
            end;
            if strFromField = strToField then
            begin
              dmMain.rxAtInstrument.Fields[j].Value := Fields[i].Value;
            end;
          end;
          dmMain.rxAtInstrument.Post;
        end;
        Next;
      end;
    end;
  end
  else
  begin
    dmMain.rxToInstrument.EmptyTable;
    with dmBase.rxInstrument do
    begin
      First;
      while not EOF do
      begin
        if (FieldByName('InstType').AsString = strInstType) and
           (FieldByName('ModelID').AsInteger = sModelID) then
        begin
          dmMain.rxToInstrument.Append;
          for i := 0 to FieldCount - 1 do
          begin
            j := 0;
            strToField   := uppercase(dmMain.rxToInstrument.Fields[j].FieldName);
            strFromField := uppercase(Fields[i].FieldName);
            while (strToField <> strFromField) and
                   ( j < dmMain.rxToInstrument.FieldCount-1) do
            begin
              Inc(j);
              strToField := uppercase(dmMain.rxToInstrument.Fields[j].FieldName);
            end;
            if strFromField = strToField then
            begin
              dmMain.rxToInstrument.Fields[j].Value := Fields[i].Value;
            end;
          end;
          dmMain.rxToInstrument.Post;
        end;
        Next;
      end;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure btnInsertClick(Sender: TObject);

@description
  1. Set default values for the Meteorological observations.
  2. Opens and initialises the "Enter New observations" page.
  3. On this page the user can enter a set of observations between two pillars.
*******************************************************************************)
procedure TfrmJob.btnInsertClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with dmMain.rxJMeasure do
  begin
    if not isEmpty then
    begin
      Last;
      hasObsDefault := True;
      ObsDefault.AtHeight  :=FieldByName('MeasAtHeight').AsFloat;
      ObsDefault.ToHeight  :=FieldByName('MeasToHeight').AsFloat;
      ObsDefault.DryTemp   :=FieldByName('MeasDryTemp').AsFloat;
      ObsDefault.Pressure  :=FieldByName('MeasPressure').AsFloat;
      ObsDefault.Humidity   :=FieldByName('MeasHumidity').AsFloat;
      ObsDefault.DryTemp2   :=FieldByName('MeasDryTemp').AsFloat;
      ObsDefault.Pressure2  :=FieldByName('MeasPressure').AsFloat;
      ObsDefault.Humidity2   :=FieldByName('MeasHumidity').AsFloat;
      ObsDefault.AtPillarNo :=FieldByName('AtPillarNo').AsString;
      if not FieldByName('MeasDryTemp2').isNull then
      begin
        ObsDefault.DryTemp2 :=FieldByName('MeasDryTemp2').AsFloat;
      end;
      if not FieldByName('MeasPressure2').isNull then
      begin
        ObsDefault.Pressure2 :=FieldByName('MeasPressure2').AsFloat;
      end;
      if not FieldByName('MeasHumidity2').isNull then
      begin
        ObsDefault.Humidity2 :=FieldByName('MeasHumidity2').AsFloat;
      end;
    end;
  end;
  InsertNewObs;
  Screen.Cursor := crDefault;
end;

(*******************************************************************************
@procedure InsertNewObs;

@description
  1. Opens and initialises the "Enter New observations" page.
  2. On this page the user can enter a set of observations between two pillars.
*******************************************************************************)
procedure TfrmJob.InsertNewObs;
begin
  doEvents := True;
  lblHeaderObs.Caption := 'Enter new observations';
  lblCertifiedDist.Visible := False;
  lblLegalSlopeDistance.Visible := True;
  pnlCertifiedDist.caption := '';
  dbgridDistObs.Color := clBtnFace;
  dbgridDistObs.ReadOnly := True;
  dbgridDistObs3.Color := clBtnFace;
  dbgridDistObs3.ReadOnly := True;
  lblCertifiedDist3.Visible := False;
  lblLegalSlopeDistance3.Visible := True;
  pnlCertifiedDist3.caption := '';


  if vedtNumberMetSets.Value = 1 then
  begin
    cbAtPillar.Items.Clear;
    cbToPillar.Items.Clear;
    with dmMain.rxPillar do
    begin
      First;
      while not EOF do
      begin
        cbAtPillar.Items.Add(FieldByname('PillarNo').AsString);
        cbToPillar.Items.Add(FieldByname('PillarNo').AsString);
        Next;
      end;
    end;
    cbAtPillar.ItemIndex := 0;
    cbAtPillar.Text := '';
    cbToPillar.ItemIndex := 0;
    cbToPillar.Text := '';
    edtAtHeight.value := 0;
    edtToHeight.value := 0;
    if chkMetsDial.Checked then
    begin
      memMetInstructions.Visible := False;
      edtDryTemp.Visible  := False;
      edtHumidity.Visible := False;
      edtPressure.Visible := False;
      lblDryTemp.Visible  := False;
      lblHumidity.Visible := False;
      lblPressure.Visible := False;
    end
    else
    begin
      memMetInstructions.Visible := True;
      memMetInstructions.Lines.Clear;
      memMetInstructions.Lines.Add('The Mets values must be actual observations, which will be corrected.');
      edtDryTemp.Visible  := True;
      edtHumidity.Visible := True;
      edtPressure.Visible := True;
      lblDryTemp.Visible  := True;
      lblHumidity.Visible := True;
      lblPressure.Visible := True;
      edtHumidity.Color := clWindow;
      edtHumidity.ReadOnly := False;
      edtDryTemp.Text := '';
      edtHumidity.Text := '';
      edtPressure.Text := '';
      if rbtnWetTemp.Checked then
      begin
        lblHumidity.Caption := 'Wet Temp'+#10+'Celsius';
      end
      else
      begin
        lblHumidity.Caption := 'Humidity'+#10+'%';
        if rbtnDefaultHumidity.Checked then
        begin
           edtHumidity.Value := 50;
           edtHumidity.Color := clBtnFace;
           edtHumidity.ReadOnly := True;
        end;
      end;
    end;
    if rbtnWetTemp.Checked then
    begin
      edtHumidity.MaxValue := 50;
      edtHumidity.MinValue := -30;
    end
    else
    begin
      edtHumidity.MaxValue := 100;
      edtHumidity.MinValue := 0;
    end;
    if hasObsDefault then
    begin
      edtAtHeight.Value := ObsDefault.AtHeight;
      edtToHeight.Value := ObsDefault.ToHeight;
      edtDryTemp.Value  := ObsDefault.DryTemp;
      edtPressure.Value := ObsDefault.Pressure;
      edtHumidity.Value := ObsDefault.Humidity;
      cbAtPillar.Text := ObsDefault.AtPillarNo;
      CreateToPillarList;
    end;
  end
  else
  begin
    cbAtPillar2.Items.Clear;
    cbToPillar2.Items.Clear;
    with dmMain.rxPillar do
    begin
      First;
      while not EOF do
      begin
        cbAtPillar2.Items.Add(FieldByname('PillarNo').AsString);
        cbToPillar2.Items.Add(FieldByname('PillarNo').AsString);
        Next;
      end;
    end;
    cbAtPillar2.ItemIndex := 0;
    cbAtPillar2.Text := '';
    cbToPillar2.ItemIndex := 0;
    cbToPillar2.Text := '';
    edtAtHeight3.value := 0;
    edtToHeight3.value := 0;

    SetMetsInDistObsPage;

    if hasObsDefault then
    begin
      edtAtHeight3.Value := ObsDefault.AtHeight;
      edtToHeight3.Value := ObsDefault.ToHeight;
      edtAtDryTemp.Value  := ObsDefault.DryTemp;
      edtAtPressure.Value := ObsDefault.Pressure;
      edtAtHumidity.Value := ObsDefault.Humidity;
      edtToDryTemp.Value  := ObsDefault.DryTemp2;
      edtToPressure.Value := ObsDefault.Pressure2;
      edtToHumidity.Value := ObsDefault.Humidity2;
      cbAtPillar2.Text := ObsDefault.AtPillarNo;
      CreateToPillarList2;
    end;
  end;
  rxDistObs.Active := True;
  rxDistObs.EmptyTable;
  btnSave.Enabled := False;

  edtTolerance.value := dTolerance;
  edtTolerance2.value := dTolerance;
  edtTolerance4.value := dTolerance;
  if vedtNumberMetSets.Value = 1 then
  begin
    pcObservations.ActivePage := tsNewObservations;
  end
  else
  begin
    pnlAtPillar2.Visible := False;
    pnlToPillar2.Visible := False;
    cbAtPillar2.Visible := True;
    cbToPillar2.Visible := True;
    pcObservations.ActivePage := tsObservations2;
  end;
  pcMain.ActivePage := tsDistObs;

  if vedtNumberMetSets.Value = 1 then
  begin
    if hasObsDefault then
    begin
      cbToPillar.SetFocus;
    end
    else
    begin
      cbAtPillar.SetFocus;
    end;
  end
  else
  begin
    if hasObsDefault then
    begin
      cbToPillar2.SetFocus;
    end
    else
    begin
      cbAtPillar2.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure btnCancelClick(Sender: TObject);

@description
  1. Cancels the observations.
  2. Return to the previous page in the wizard.
*******************************************************************************)
procedure TfrmJob.btnCancelClick(Sender: TObject);
begin
  if dmMain.rxJMeasure.isEmpty then
  begin
    cbManufacturerSpecs.Checked := False;
    PositionGbRejection;
    if rbtnBaseline.Checked then
    begin
      with dmMain.rxAtInstrumentModel do
      begin
        pnlSpecifications.Caption := Format('%8.2f mm + %8.2f ppm',
        [FieldByName('ModelManufStdDevConst').AsFloat*1000,
        FieldByName('ModelManufStdDevPPM').AsFloat]);
      end;
    end;
    sPageNumber := GetPageNumber(tsSelectEntryType.Caption);
    lblPageSelectEntryType.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsSelectEntryType;
  end
  else
  begin
    sPageNumber := GetPageNumber(tsObs.Caption);
    lblPageObs.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsObs;
  end;
end;

(*******************************************************************************
@procedure btnSaveClick(Sender: TObject);

@description
  1. Validates the observations.
  2. Updates the database. Saves the new or amended observation records.
*******************************************************************************)
procedure TfrmJob.btnSaveClick(Sender: TObject);
var
  strHumidityType: String;
  strMeasMetFlag: String;
  sAtPillarID, sToPillarID: Integer;
  sNextMeasId   : Integer;
  sNextEDMObsId : Integer;
  i, sCount: Integer;
  sEDMObsID: Integer;
  sFilteredEDMObsCount: Integer;
  gotoNextError: Boolean;
  sMeasID: Integer;
  isEdit, doContinue: Boolean;
begin
  gotoNextError := False;
  if pcObservations.ActivePage = tsNewObservations then
  begin
    if not CheckInsertObservationSet then
    begin
      Abort;
    end;
    sNextMeasId   := dmBase.GetLastId(dmBase.rxJMeasure,'MeasID');
    sNextEDMObsId := dmBase.GetLastId(dmBase.rxEDMObs,'EDMObsID');
    with dmMain.rxPillar do
    begin
      Locate('PillarNo',cbAtPillar.text,[]);
      sAtPillarID := FieldByname('PillarID').AsInteger;
      Locate('PillarNo',cbToPillar.text,[]);
      sToPillarID := FieldByname('PillarID').AsInteger;
    end;
    strHumidityType := 'D'; // default
    if rbtnWetTemp.Checked         then strHumidityType :='W';
    if rbtnHumidity.Checked        then strHumidityType :='R';
    if rbtnDefaultHumidity.Checked then strHumidityType :='D';
    if chkMetsDial.Checked then
    begin
      strMeasMetFlag := 'N';
    end
    else
    begin
      strMeasMetFlag := 'Y';
    end;

    with dmMain.rxJMeasure do
    begin
      Append;
      FieldByName('hasError').AsBoolean := False;
      FieldByName('MeasID').AsInteger := sNextMeasID;
      FieldByName('MeasType').AsString := 'E';
      FieldByName('MeasAtPillarID').AsInteger := sAtPillarID;
      FieldByName('MeasToPillarID').AsInteger := sToPillarID;
      FieldByName('JobID').AsInteger := dmMain.rxJob.FieldByName('JobId').AsInteger;
      FieldByName('AtPillarNo').AsString := cbAtPillar.Text;
      FieldByName('ToPillarNo').AsString := cbToPillar.Text;
      FieldByName('MeasAtHeight').AsFloat := edtAtHeight.Value;
      FieldByName('MeasToHeight').AsFloat := edtToHeight.Value;
      FieldByName('MeasMetFlag').AsString := strMeasMetFlag;
      if strMeasMetFlag = 'Y' then
      begin
        FieldByName('MeasHumidityType').AsString := strHumidityType;
        FieldByName('MeasDryTemp').AsFloat := edtDryTemp.Value;
        FieldByName('MeasHumidity').AsFloat := edtHumidity.Value;
        FieldByName('MeasPressure').AsFloat := edtPressure.Value;
        if strHumidityType = 'W' then
        begin
          FieldByName('WetTemp').AsFloat := edtHumidity.Value;
        end;
        if strHumidityType = 'R' then
        begin
          FieldByName('Humidity').AsFloat := edtHumidity.Value;
        end;
      end;
      Post;
    end;

    with dmBase.rxJMeasure do
    begin
      Append;
      FieldByName('MeasID').AsInteger := sNextMeasID;
      FieldByName('MeasType').AsString := 'E';
      FieldByName('MeasAtPillarID').AsInteger := sAtPillarID;
      FieldByName('MeasToPillarID').AsInteger := sToPillarID;
      FieldByName('JobID').AsInteger := dmMain.rxJob.FieldByName('JobId').AsInteger;
      FieldByName('MeasAtHeight').AsFloat := edtAtHeight.Value;
      FieldByName('MeasToHeight').AsFloat := edtToHeight.Value;
      FieldByName('MeasMetFlag').AsString := strMeasMetFlag;
      if strMeasMetFlag = 'Y' then
      begin
        FieldByName('MeasHumidityType').AsString := strHumidityType;
        FieldByName('MeasDryTemp').AsFloat := edtDryTemp.Value;
        FieldByName('MeasHumidity').AsFloat := edtHumidity.Value;
        FieldByName('MeasPressure').AsFloat := edtPressure.Value;
        if strHumidityType = 'W' then
        begin
          FieldByName('WetTemp').AsFloat := edtHumidity.Value;
        end;
        if strHumidityType = 'R' then
        begin
          FieldByName('Humidity').AsFloat := edtHumidity.Value;
        end;
      end;
      Post;
    end;

    with rxDistObs do
    begin
      First;
      while not EOF do
      begin
        dmMain.rxFilteredEDMObs.Append;
        dmMain.rxFilteredEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
        dmMain.rxFilteredEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
        dmMain.rxFilteredEDMObs.FieldByName('EDMObsDistance').Value :=
          FieldByName('Distance').Value;
        dmMain.rxFilteredEDMObs.Post;

        dmBase.rxEDMObs.Append;
        dmBase.rxEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
        dmBase.rxEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
        dmBase.rxEDMObs.FieldByName('EDMObsDistance').Value :=
          FieldByName('Distance').Value;
        dmbase.rxEDMObs.Post;

        Next;
        Inc(sNextEDMObsId);
      end;
    end;

    hasObsDefault := True;
    with dmMain.rxJMeasure do
    begin
      ObsDefault.AtHeight  :=FieldByName('MeasAtHeight').AsFloat;
      ObsDefault.ToHeight  :=FieldByName('MeasToHeight').AsFloat;
      ObsDefault.DryTemp   :=FieldByName('MeasDryTemp').AsFloat;
      ObsDefault.Pressure  :=FieldByName('MeasPressure').AsFloat;
      ObsDefault.Humidity   :=FieldByName('MeasHumidity').AsFloat;
      ObsDefault.AtPillarNo :=FieldByName('AtPillarNo').AsString;
    end;
  end;
  if pcObservations.ActivePage = tsEditObservations then
  begin
    if not CheckEditObservationSet then
    begin
      Abort;
    end;
    sNextMeasId   := dmMain.rxJMeasure.FieldByName('MeasID').AsInteger;
    sNextEDMObsId := dmBase.GetLastId(dmBase.rxEDMObs,'EDMObsID');
    if rbtnWetTemp.Checked         then strHumidityType :='W';
    if rbtnHumidity.Checked        then strHumidityType :='R';
    if rbtnDefaultHumidity.Checked then strHumidityType :='D';
    if chkMetsDial.Checked then
    begin
      strMeasMetFlag := 'N';
    end
    else
    begin
      strMeasMetFlag := 'Y';
    end;

    with dmMain.rxJMeasure do
    begin
      Edit;
      gotoNextError := FieldByName('hasError').AsBoolean;
      FieldByName('hasError').AsBoolean := False;
      FieldByName('MeasType').AsString := 'E';
      FieldByName('MeasAtHeight').AsFloat := edtAtHeight2.Value;
      FieldByName('MeasToHeight').AsFloat := edtToHeight2.Value;
      FieldByName('MeasMetFlag').AsString := strMeasMetFlag;
      if strMeasMetFlag = 'Y' then
      begin
        FieldByName('MeasHumidityType').AsString := strHumidityType;
        FieldByName('MeasDryTemp').AsFloat := edtDryTemp2.Value;
        FieldByName('MeasHumidity').AsFloat := edtHumidity2.Value;
        FieldByName('MeasPressure').AsFloat := edtPressure2.Value;
      end
      else
      begin
        FieldByName('MeasHumidityType').Clear;
        FieldByName('MeasDryTemp').Clear;
        FieldByName('MeasHumidity').Clear;
        FieldByName('MeasPressure').Clear;
      end;
      Post;
    end;

    with dmbase.rxJMeasure do
    begin
      if Locate('MeasID',IntToStr(sNextMeasID),[]) then
      begin
        Edit;
        FieldByName('MeasType').AsString := 'E';
        FieldByName('MeasAtHeight').AsFloat := edtAtHeight2.Value;
        FieldByName('MeasToHeight').AsFloat := edtToHeight2.Value;
        FieldByName('MeasMetFlag').AsString := strMeasMetFlag;
        if strMeasMetFlag = 'Y' then
        begin
          FieldByName('MeasHumidityType').AsString := strHumidityType;
          FieldByName('MeasDryTemp').AsFloat := edtDryTemp2.Value;
          FieldByName('MeasHumidity').AsFloat := edtHumidity2.Value;
          FieldByName('MeasPressure').AsFloat := edtPressure2.Value;
        end
        else
        begin
          FieldByName('MeasHumidityType').Clear;
          FieldByName('MeasDryTemp').Clear;
          FieldByName('MeasHumidity').Clear;
          FieldByName('MeasPressure').Clear;
        end;
        Post;
      end;
    end;

    sCount := 0;
    dmMain.rxFilteredEDMObs.First;
    sFilteredEDMObsCount := dmMain.rxFilteredEDMObs.RecordCount;
    with rxDistObs do
    begin
      First;
      while not EOF do
      begin
        if sCount < sFilteredEDMObsCount then
        begin
          dmMain.rxFilteredEDMObs.Edit;
          dmMain.rxFilteredEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
          dmMain.rxFilteredEDMObs.Post;
          sEDMObsID := dmMain.rxFilteredEDMObs.FieldByName('EDMObsID').AsInteger;
          if dmBase.rxEDMObs.Locate('EDMObsID',IntToStr(sEDMObsID),[]) then
          begin
            dmBase.rxEDMObs.Edit;
            dmBase.rxEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
            dmBase.rxEDMObs.Post;
          end;
          Inc(sCount);
          dmMain.rxFilteredEDMObs.Next;
        end
        else
        begin
          dmMain.rxFilteredEDMObs.Append;
          dmMain.rxFilteredEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
          dmMain.rxFilteredEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
          dmMain.rxFilteredEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
          dmMain.rxFilteredEDMObs.Post;

          dmBase.rxEDMObs.Append;
          dmBase.rxEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
          dmBase.rxEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
          dmBase.rxEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
          dmBase.rxEDMObs.Post;
          Inc(sNextEDMObsId);
        end;
        Next;
      end;
      if RecordCount < dmMain.rxFilteredEDMObs.RecordCount then
      begin
        sCount := dmMain.rxFilteredEDMObs.RecordCount- RecordCount;
        dmMain.rxFilteredEDMObs.Last;
        for i := 1 to sCount do
        begin
          if dmBase.rxEDMOBs.Locate('EDMObsID',dmMain.rxFilteredEDMObs.FieldByName('EDMObsID').AsString,[]) then
          begin
            dmBase.rxEDMOBs.Delete;
          end;
          dmMain.rxFilteredEDMObs.Delete;
        end;
      end;
    end
  end;

  if pcObservations.ActivePage = tsObservations2 then
  begin
    sAtPillarID := 0;
    sToPillarID := 0;
    isEdit := pnlAtPillar2.Visible;
    if (not isEdit) then
    begin
      with dmMain.rxPillar do
      begin
        Locate('PillarNo',cbAtPillar2.text,[]);
        sAtPillarID := FieldByname('PillarID').AsInteger;
        Locate('PillarNo',cbToPillar2.text,[]);
        sToPillarID := FieldByname('PillarID').AsInteger;
      end;
    end;

    if not CheckInsertObservationSetAt then
      Abort;

    if vedtNumberMetSets.Value = 2 then
    begin
      if not CheckInsertObservationSetTo then
        Abort;
    end;
    sNextMeasId   := dmBase.GetLastId(dmBase.rxJMeasure,'MeasID');
    sNextEDMObsId := dmBase.GetLastId(dmBase.rxEDMObs,'EDMObsID');
    strHumidityType := 'D'; // default
    if rbtnWetTemp.Checked         then strHumidityType :='W';
    if rbtnHumidity.Checked        then strHumidityType :='R';
    if rbtnDefaultHumidity.Checked then strHumidityType :='D';
    if chkMetsDial.Checked then
      strMeasMetFlag := 'N'
    else
      strMeasMetFlag := 'Y';

    with dmMain.rxJMeasure do
    begin
      if isEdit then
      begin
        sNextMeasID := FieldByName('MeasID').AsInteger;
        Edit;
      end
      else
      begin
        Append;
        FieldByName('MeasID').AsInteger := sNextMeasID;
        FieldByName('MeasAtPillarID').AsInteger := sAtPillarID;
        FieldByName('MeasToPillarID').AsInteger := sToPillarID;
        FieldByName('JobID').AsInteger := dmMain.rxJob.FieldByName('JobId').AsInteger;
        FieldByName('AtPillarNo').AsString := cbAtPillar2.Text;
        FieldByName('ToPillarNo').AsString := cbToPillar2.Text;
      end;
      FieldByName('hasError').AsBoolean := False;
      FieldByName('MeasType').AsString := 'E';
      FieldByName('MeasAtHeight').AsFloat := edtAtHeight3.Value;
      FieldByName('MeasToHeight').AsFloat := edtToHeight3.Value;
      FieldByName('MeasMetFlag').AsString := strMeasMetFlag;
      if strMeasMetFlag = 'Y' then
      begin
        FieldByName('MeasHumidityType').AsString := strHumidityType;
        FieldByName('MeasDryTemp').AsFloat := edtAtDryTemp.Value;
        FieldByName('MeasHumidity').AsFloat := edtAtHumidity.Value;
        FieldByName('MeasPressure').AsFloat := edtAtPressure.Value;
        FieldByName('MeasDryTemp2').AsFloat := edtToDryTemp.Value;
        FieldByName('MeasHumidity2').AsFloat := edtToHumidity.Value;
        FieldByName('MeasPressure2').AsFloat := edtToPressure.Value;
        if strHumidityType = 'W' then
        begin
          if vedtNumberMetSets.Value = 1 then
            FieldByName('WetTemp').AsFloat := edtAtHumidity.Value
          else
            FieldByName('WetTemp').AsFloat := (edtAtHumidity.Value+edtToHumidity.Value)/2.0;
        end;
        if strHumidityType = 'R' then
        begin
          if vedtNumberMetSets.Value = 1 then
            FieldByName('Humidity').AsFloat := edtAtHumidity.Value
          else
            FieldByName('Humidity').AsFloat := (edtAtHumidity.Value+edtToHumidity.Value)/2.0;
        end;
      end;
      Post;
    end;

    with dmbase.rxJMeasure do
    begin
      doContinue := True;
      if isEdit then
        doContinue := Locate('MeasID',IntToStr(sNextMeasID),[]);

      if doContinue then
      begin
        if isEdit then
          Edit
        else
        begin
          Append;
          FieldByName('MeasID').AsInteger := sNextMeasID;
          FieldByName('MeasAtPillarID').AsInteger := sAtPillarID;
          FieldByName('MeasToPillarID').AsInteger := sToPillarID;
          FieldByName('JobID').AsInteger := dmMain.rxJob.FieldByName('JobId').AsInteger;
        end;
        FieldByName('MeasType').AsString := 'E';
        FieldByName('MeasAtHeight').AsFloat := edtAtHeight3.Value;
        FieldByName('MeasToHeight').AsFloat := edtToHeight3.Value;
        FieldByName('MeasMetFlag').AsString := strMeasMetFlag;
        if strMeasMetFlag = 'Y' then
        begin
          FieldByName('MeasHumidityType').AsString := strHumidityType;
          FieldByName('MeasDryTemp').AsFloat := edtAtDryTemp.Value;
          FieldByName('MeasHumidity').AsFloat := edtAtHumidity.Value;
          FieldByName('MeasPressure').AsFloat := edtAtPressure.Value;
          if vedtNumberMetSets.Value = 2 then
          begin
            FieldByName('MeasDryTemp2').AsFloat := edtToDryTemp.Value;
            FieldByName('MeasHumidity2').AsFloat := edtToHumidity.Value;
            FieldByName('MeasPressure2').AsFloat := edtToPressure.Value;
          end;
          if strHumidityType = 'W' then
          begin
            if vedtNumberMetSets.Value = 1 then
              FieldByName('WetTemp').AsFloat := edtAtHumidity.Value
            else
              FieldByName('WetTemp').AsFloat := (edtAtHumidity.Value+edtToHumidity.Value)/2.0;
          end;
          if strHumidityType = 'R' then
          begin
            if vedtNumberMetSets.Value = 1 then
              FieldByName('Humidity').AsFloat := edtAtHumidity.Value
            else
              FieldByName('Humidity').AsFloat := (edtAtHumidity.Value+edtToHumidity.Value)/2.0;
          end;
        end;
        Post;
      end;
    end;
    if isEdit then
    begin
      sCount := 0;
      dmMain.rxFilteredEDMObs.First;
      sFilteredEDMObsCount := dmMain.rxFilteredEDMObs.RecordCount;
      with rxDistObs do
      begin
        First;
        while not EOF do
        begin
          if sCount < sFilteredEDMObsCount then
          begin
            dmMain.rxFilteredEDMObs.Edit;
            dmMain.rxFilteredEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
            dmMain.rxFilteredEDMObs.Post;
            sEDMObsID := dmMain.rxFilteredEDMObs.FieldByName('EDMObsID').AsInteger;
            if dmBase.rxEDMObs.Locate('EDMObsID',IntToStr(sEDMObsID),[]) then
            begin
              dmBase.rxEDMObs.Edit;
              dmBase.rxEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
              dmBase.rxEDMObs.Post;
            end;
            Inc(sCount);
            dmMain.rxFilteredEDMObs.Next;
          end
          else
          begin
            dmMain.rxFilteredEDMObs.Append;
            dmMain.rxFilteredEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
            dmMain.rxFilteredEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
            dmMain.rxFilteredEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
            dmMain.rxFilteredEDMObs.Post;

            dmBase.rxEDMObs.Append;
            dmBase.rxEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
            dmBase.rxEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
            dmBase.rxEDMObs.FieldByName('EDMObsDistance').Value := FieldByName('Distance').Value;
            dmBase.rxEDMObs.Post;
            Inc(sNextEDMObsId);
          end;
          Next;
        end;
        if RecordCount < dmMain.rxFilteredEDMObs.RecordCount then
        begin
          sCount := dmMain.rxFilteredEDMObs.RecordCount- RecordCount;
          dmMain.rxFilteredEDMObs.Last;
          for i := 1 to sCount do
          begin
            if dmBase.rxEDMOBs.Locate('EDMObsID',dmMain.rxFilteredEDMObs.FieldByName('EDMObsID').AsString,[]) then
              dmBase.rxEDMOBs.Delete;

            dmMain.rxFilteredEDMObs.Delete;
          end;
        end;
      end;
    end
    else
    begin
      with rxDistObs do
      begin
        First;
        while not EOF do
        begin
          dmMain.rxFilteredEDMObs.Append;
          dmMain.rxFilteredEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
          dmMain.rxFilteredEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
          dmMain.rxFilteredEDMObs.FieldByName('EDMObsDistance').Value :=
            FieldByName('Distance').Value;
          dmMain.rxFilteredEDMObs.Post;

          dmBase.rxEDMObs.Append;
          dmBase.rxEDMObs.FieldByName('EDMOBsId').AsInteger  := sNextEDMObsId;
          dmBase.rxEDMObs.FieldByName('MeasId').AsInteger  := sNextMeasId;
          dmBase.rxEDMObs.FieldByName('EDMObsDistance').Value :=
            FieldByName('Distance').Value;
          dmbase.rxEDMObs.Post;

          Next;
          Inc(sNextEDMObsId);
        end;
      end;

      hasObsDefault := True;
      with dmMain.rxJMeasure do
      begin
        ObsDefault.AtHeight  :=FieldByName('MeasAtHeight').AsFloat;
        ObsDefault.ToHeight  :=FieldByName('MeasToHeight').AsFloat;
        ObsDefault.DryTemp   :=FieldByName('MeasDryTemp').AsFloat;
        ObsDefault.Pressure  :=FieldByName('MeasPressure').AsFloat;
        ObsDefault.Humidity   :=FieldByName('MeasHumidity').AsFloat;
        ObsDefault.DryTemp2   :=FieldByName('MeasDryTemp2').AsFloat;
        ObsDefault.Pressure2  :=FieldByName('MeasPressure2').AsFloat;
        ObsDefault.Humidity2   :=FieldByName('MeasHumidity2').AsFloat;
        ObsDefault.AtPillarNo :=FieldByName('AtPillarNo').AsString;
      end;
    end;
  end;

  if gotoNextError then
  begin
    with dmMain.rxJMeasure do
    begin
      sMeasID := FieldByName('MeasID').AsInteger;
      while (not EOF) and gotoNextError do
      begin
        if FieldByName('hasError').AsBoolean then
          gotoNextError := False
        else
          Next;
      end;

      if gotoNextError then
        Locate('MeasID',IntToStr(sMeasID),[]);
    end;
  end;

  ShowLegalDistance;

  btnExportFile.Enabled := True;
  btnDeleteObs.Enabled := True;
  btnDeleteRecord.Enabled := True;
  btnEdit.Enabled := True;

  sPageNumber := GetPageNumber(tsObs.Caption);
  lblPageObs.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsObs;

  if dmMain.rxJMeasure.FieldByName('hasError').AsBoolean then
    btnEdit.SetFocus
  else
  begin
    if pcObservations.ActivePage = tsNewObservations then
      btnInsert.SetFocus
    else
      btnEdit.SetFocus;
  end;
end;

(*******************************************************************************
@procedure CheckDistValues(doDistGrid: Boolean): Boolean;

@description
  1. The distance is validated when you exit the distance grid.
  2. The Save button is disabled if the distance can not be validated.
*******************************************************************************)
procedure TfrmJob.dbgridDistObsExit(Sender: TObject);
begin
  if (rxDistObs.State = dsInsert) or (rxDistObs.State = dsEdit) then
    rxDistObs.Post;

  if pcObservations.ActivePage = tsNewObservations then
    btnSave.Enabled := CheckDistValues(TRUE)
  else
  if pcObservations.ActivePage = tsEditObservations then
    btnSave.Enabled := CheckDistValues2(TRUE)
  else
  if pcObservations.ActivePage = tsObservations2 then
    btnSave.Enabled := CheckDistValues3(TRUE);
end;

(*******************************************************************************
@procedure CheckDistValues(doDistGrid: Boolean): Boolean;

@description
  Returns FALSE if the distance can not be validated.
*******************************************************************************)
function TfrmJob.CheckDistValues(doDistGrid: Boolean): Boolean;
begin
  Result := True;
  if doDistGrid and rxDistObs.isEmpty then
  begin
    Result := False;
    exit;
  end;

  if cbAtPillar.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if cbToPillar.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if edtAtHeight.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if edtToHeight.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if not chkMetsDial.Checked then
  begin
    if edtDryTemp.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtHumidity.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtPressure.Text = '' then
      Result := False;
  end;
end;

(*******************************************************************************
@procedure CheckDistValues2(doDistGrid: Boolean): Boolean;

@description
  Returns FALSE if the distance can not be validated.
*******************************************************************************)
function TfrmJob.CheckDistValues2(doDistGrid: Boolean): Boolean;
begin
  Result := True;
  if doDistGrid and rxDistObs.isEmpty then
  begin
    Result := False;
    exit;
  end;

  if edtAtHeight2.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if edtToHeight2.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if not chkMetsDial.Checked then
  begin
    if edtDryTemp2.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtHumidity2.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtPressure2.Text = '' then
      Result := False;
  end;
end;

(*******************************************************************************
@procedure CheckDistValues3(doDistGrid: Boolean): Boolean;

@description
  Returns FALSE if the distance can not be validated.
*******************************************************************************)
function TfrmJob.CheckDistValues3(doDistGrid: Boolean): Boolean;
begin
  Result := True;
  if doDistGrid and rxDistObs.isEmpty then
  begin
    Result := False;
    exit;
  end;

  if cbAtPillar2.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if cbToPillar2.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if edtAtHeight2.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if edtToHeight2.Text = '' then
  begin
    Result := False;
    exit;
  end;

  if not chkMetsDial.Checked then
  begin
    if edtAtDryTemp.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtAtHumidity.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtAtPressure.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtToDryTemp.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtToHumidity.Text = '' then
    begin
      Result := False;
      exit;
    end;

    if edtToPressure.Text = '' then
      Result := False;
  end;
end;

(*******************************************************************************
@procedure cbAtPillarChange(Sender: TObject);

@description
  1. Creates a list containing valid pillars for the TO station.
  2. Shows the legal distance between the selected pillars.
  3. Disables the Save button
*******************************************************************************)
procedure TfrmJob.cbAtPillarChange(Sender: TObject);
begin
  rxDistObs.EmptyTable;
  ShowLegalDistance2;
  CreateToPillarList;
  btnSave.Enabled := CheckDistValues(TRUE);
end;

(*******************************************************************************
@procedure cbToPillarChange(Sender: TObject);

@description
  1. Creates a list containing valid pillars for the AT station.
  2. Shows the legal distance between the selected pillars.
  3. Disables the Save button
*******************************************************************************)
procedure TfrmJob.cbToPillarChange(Sender: TObject);
begin
  rxDistObs.EmptyTable;
  ShowLegalDistance2;
  CreateAtPillarList;
  btnSave.Enabled := CheckDistValues(TRUE);
end;

(*******************************************************************************
@procedure CheckDistValueChange(Sender: TObject);

@description
  Disables the Save button if the distance can not be validated.
*******************************************************************************)
procedure TfrmJob.CheckDistValueChange(Sender: TObject);
begin
  btnSave.Enabled := CheckDistValues(TRUE);
end;

(*******************************************************************************
@procedure CheckDistValueChange3(Sender: TObject);

@description
  Disables the Save button if the distance can not be validated.
*******************************************************************************)
procedure TfrmJob.CheckDistValueChange3(Sender: TObject);
begin
  btnSave.Enabled := CheckDistValues3(TRUE);
end;

(*******************************************************************************
@procedure rxDistObsBeforePost(DataSet: TDataSet);

@description
  1. Saves the amended record in the distance observation table.
  2. Check that the new distance is within a defined tolerance value
*******************************************************************************)
procedure TfrmJob.rxDistObsBeforePost(DataSet: TDataSet);
var
  dLegalSlopeDistance: Double;
begin
  if doEvents then
  begin
    if pcObservations.ActivePage = tsNewObservations then
    begin
      dTolerance := edtTolerance.Value;
      dLegalSlopeDistance := StrToFloat(pnlCertifiedDist.Caption)
    end
    else
    if pcObservations.ActivePage = tsEditObservations then
    begin
      dTolerance := edtTolerance2.Value;
      dLegalSlopeDistance := StrToFloat(pnlCertifiedDist2.Caption)
    end
    else
    if pcObservations.ActivePage = tsObservations2 then
    begin
      dTolerance := edtTolerance4.Value;
      dLegalSlopeDistance := StrToFloat(pnlCertifiedDist3.Caption)
    end
    else
      dLegalSlopeDistance := 0;

    if (rxDistObs.FieldByName('Distance').AsFloat < (dLegalSlopeDistance-dTolerance)) or
       (rxDistObs.FieldByName('Distance').AsFloat > (dLegalSlopeDistance+dTolerance)) then
    begin
      MessageDlg(
      Format('Distance must be within %5.3f metres of the certified slope distance %8.3f',[dTolerance,dLegalSlopeDistance])
        ,mtError,[mbOK],0);
      rxDistObs.Cancel;
      if pcObservations.ActivePage = tsNewObservations then
        dbgridDistObs.SetFocus
      else
      if pcObservations.ActivePage = tsEditObservations then
        dbgridObs2.SetFocus
      else
      if pcObservations.ActivePage = tsObservations2 then
        dbgridDistObs3.SetFocus;

      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure ShowLegalDistance2: Boolean;

@description
  Shows the certified distance between two selected pillars.
*******************************************************************************)
function TfrmJob.ShowLegalDistance2: Boolean;
var
  sBaselineId : Integer;
  dLegalSlopeDistance: Double;
  sAtPillarID, sToPillarID: Integer;
  doContinue: Boolean;
  strAtPillar, strToPillar: string;
begin
  Result := False;
  doContinue := False;
  if vedtNumberMetSets.Value = 1 then
  begin
    lblLegalSlopeDistance.Visible := True;
    lblCertifiedDist.Visible := False;
    if (cbAtPillar.Text <> '') and (cbToPillar.Text <> '') then
    begin
      doContinue := True;
      strAtPillar := cbAtPillar.text;
      strToPillar := cbToPillar.text;
      dbgridDistObs.Color := clWhite;
      dbgridDistObs.ReadOnly := False;
    end;
  end
  else
  begin
    lblLegalSlopeDistance3.Visible := True;
    lblCertifiedDist3.Visible := False;
    if (cbAtPillar2.Text <> '') and (cbToPillar2.Text <> '') then
    begin
      doContinue := True;
      strAtPillar := cbAtPillar2.text;
      strToPillar := cbToPillar2.text;
      dbgridDistObs3.Color := clWhite;
      dbgridDistObs3.ReadOnly := False;
    end;
  end;
  if doContinue then
  begin
    with dmMain.rxPillar do  //dmMain.rxPillar is filtered. Only contains pillars of selected baseline
    begin
      Locate('PillarNo',strAtPillar,[]);
      sAtPillarID := FieldByname('PillarID').AsInteger;
      Locate('PillarNo',strToPillar,[]);
      sToPillarID := FieldByname('PillarID').AsInteger;
    end;
    dLegalSlopeDistance := GetCertifiedSlopeDistance(sAtPillarID, sToPillarID);
    if dLegalSlopeDistance = 0 then
    begin
      sBaselineId := dmMain.rxBaseLine.FieldByName('BaselineId').AsInteger;
      dLegalDistance := GetLegalDistanceBetweenPillars(sBaseLineId, sAtPillarID, sToPillarID);
      if dLegalDistance > 0 then
      begin
        pnlCertifiedDist.Caption := Format('%10.4f',[dLegalDistance]);
        lblLegalSlopeDistance.Visible := False;
        lblCertifiedDist.Visible := True;
        pnlCertifiedDist3.Caption := Format('%10.4f',[dLegalDistance]);
        lblLegalSlopeDistance3.Visible := False;
        lblCertifiedDist3.Visible := True;
        Result := True;
      end
      else
      begin
        pnlCertifiedDist.Caption := '';
        pnlCertifiedDist3.Caption := '';
      end;
    end
    else
    begin
      pnlCertifiedDist.Caption := Format('%10.3f',[dLegalSlopeDistance]);
      lblLegalSlopeDistance.Visible := True;
      lblCertifiedDist.Visible := False;
      pnlCertifiedDist3.Caption := Format('%10.3f',[dLegalSlopeDistance]);
      lblLegalSlopeDistance3.Visible := True;
      lblCertifiedDist3.Visible := False;
      Result := True;
    end;
  end
  else
  begin
    pnlCertifiedDist.Caption := '';
    pnlCertifiedDist3.Caption := '';
  end;
end;

(*******************************************************************************
@procedure CreatePillarList;

@description
  generic procedure to Fill dropdown list with valid pillar numbers.
*******************************************************************************)
procedure TfrmJob.CreatePillarList(AComboBoxToPopulate: TComboBox;
  AComboBoxCompare: TComboBox);
begin
  AComboBoxToPopulate.Items.Clear;
  with dmMain.rxPillar do
  begin
    First;
    while not EOF do
    begin
      if FieldByname('PillarNo').AsString <> AComboBoxCompare.Text then
        AComboBoxToPopulate.Items.Add(FieldByname('PillarNo').AsString);

      Next;
    end;
  end;
end;
(*******************************************************************************
@procedure CreateToPillarList;

@description
  Fills the dropdown list (To Pillar) with valid pillar numbers.
*******************************************************************************)
procedure TfrmJob.CreateToPillarList;
begin
  CreatePillarList(cbToPillar, cbAtPillar);
end;

(*******************************************************************************
@procedure CreateToPillarList2;

@description
  Fills the dropdown list (To Pillar) with valid pillar numbers.
*******************************************************************************)
procedure TfrmJob.CreateToPillarList2;
begin
  CreatePillarList(cbToPillar2, cbAtPillar2);
end;

(*******************************************************************************
@procedure CreateAtPillarList;

@description
  Fills the dropdown list (At Pillar) with valid pillar numbers.
*******************************************************************************)
procedure TfrmJob.CreateAtPillarList;
begin
  CreatePillarList(cbAtPillar, cbToPillar);
end;

(*******************************************************************************
@procedure CreateAtPillarList2;

@description
  Fills the dropdown list (At Pillar) with valid pillar numbers.
*******************************************************************************)
procedure TfrmJob.CreateAtPillarList2;
begin
  CreatePillarList(cbAtPillar2, cbToPillar2);
end;

(*******************************************************************************
@procedure rxDistObsAfterPost(DataSet: TDataSet);

@description
  Enables the Save button if the distances and mets observations are valid.
*******************************************************************************)
procedure TfrmJob.rxDistObsAfterPost(DataSet: TDataSet);
begin
  if pcObservations.ActivePage = tsNewObservations then
  begin
    btnSave.Enabled := CheckDistValues(FALSE);
  end;
  if pcObservations.ActivePage = tsEditObservations then
  begin
    btnSave.Enabled := CheckDistValues2(FALSE);
  end;
  if pcObservations.ActivePage = tsObservations2 then
  begin
    btnSave.Enabled := CheckDistValues3(FALSE);
  end;
end;

(*******************************************************************************
@procedure btnEditClick(Sender: TObject);

@description
  Opens a page where you can edit the observations of a selected line.
*******************************************************************************)
procedure TfrmJob.btnEditClick(Sender: TObject);
var
 strFocus: String;
 dLegalSlopeDistance: Double;
 sAtPillarID, sToPillarID: Integer;
begin
  Screen.Cursor := crHourGlass;
  strFocus := '';
  lblHeaderObs.Caption := 'Edit observations';
  sAtPillarID := dmMain.rxJMeasureMeasAtPillarID.AsInteger;
  sToPillarID := dmMain.rxJMeasureMeasToPillarID.AsInteger;
  dLegalSlopeDistance := GetCertifiedSlopeDistance(sAtPillarID, sToPillarID);
  if dLegalSlopeDistance = 0 then
  begin
    pnlCertifiedDist2.Caption := pnlCertifiedDistance.Caption;
    lblLegalSlopeDistance2.Visible := False;
    lblCertifiedDist2.Visible := True;
    pnlCertifiedDist3.Caption := pnlCertifiedDistance.Caption;
    lblLegalSlopeDistance3.Visible := False;
    lblCertifiedDist3.Visible := True;
  end
  else
  begin
    pnlCertifiedDist2.Caption := Format('%10.3f',[dLegalSlopeDistance]);
    lblLegalSlopeDistance2.Visible := True;
    lblCertifiedDist2.Visible := False;
    lblLegalSlopeDistance3.Visible := True;
    lblCertifiedDist3.Visible := False;
    pnlCertifiedDist3.Caption := Format('%10.3f',[dLegalSlopeDistance]);
  end;

  doEvents := False;
  rxDistObs.Active := True;
  rxDistObs.EmptyTable;
  with dmMain.rxFilteredEDMObs do
  begin
    First;
    while not EOF do
    begin
      rxDistObs.Append;
      rxDistObs.FieldByName('Distance').Value := FieldByName('EDMObsDistance').Value;
      rxDistObs.Post;
      Next;
    end;
  end;
  doEvents := True;

  SetMetsInDistObsPage;

  if vedtNumberMetSets.Value = 1 then
  begin
    edtTolerance2.value := dTolerance;
    pnlAtPillar.Caption := dmMain.rxJMeasure.FieldByName('AtPillarNo').AsString;
    pnlToPillar.Caption := dmMain.rxJMeasure.FieldByName('ToPillarNo').AsString;
    edtAtHeight2.value := dmMain.rxJMeasure.FieldByName('MeasAtHeight').AsFloat;
    edtToHeight2.value := dmMain.rxJMeasure.FieldByName('MeasToHeight').AsFloat;
    pcObservations.ActivePage := tsEditObservations;
  end
  else
  begin
    pnlAtPillar2.Visible := True;
    pnlToPillar2.Visible := True;
    cbAtPillar2.Visible := False;
    cbToPillar2.Visible := False;
    edtTolerance3.value := dTolerance;
    edtTolerance4.value := dTolerance;
    pnlAtPillar2.Caption := dmMain.rxJMeasure.FieldByName('AtPillarNo').AsString;
    pnlToPillar2.Caption := dmMain.rxJMeasure.FieldByName('ToPillarNo').AsString;
    edtAtHeight3.value := dmMain.rxJMeasure.FieldByName('MeasAtHeight').AsFloat;
    edtToHeight3.value := dmMain.rxJMeasure.FieldByName('MeasToHeight').AsFloat;
    dbgridDistObs3.ReadOnly := False;
    dbgridDistObs3.Color := clWindow;
    pcObservations.ActivePage := tsObservations2;
  end;

  btnSave.Enabled := True;
  pcMain.ActivePage := tsDistObs;
  if vedtNumberMetSets.Value = 1 then
  begin
    btnSave.Enabled := CheckDistValues2(TRUE);
    if not btnSave.Enabled then
    begin
      if edtPressure2.Text = '' then strFocus := 'Pressure';
      if edtHumidity2.Text = '' then strFocus := 'Humidity';
      if edtDryTemp2.Text = ''  then strFocus := 'DryTemp';
      if edtToHeight2.Text = '' then strFocus := 'ToHeight';
      if edtAtHeight2.Text = '' then strFocus := 'AtHeight';

      if strFocus = 'Pressure' then edtPressure2.SetFocus;
      if strFocus = 'Humidity' then edtHumidity2.SetFocus;
      if strFocus = 'DryTemp'  then edtDryTemp2.SetFocus;
      if strFocus = 'ToHeight' then edtToHeight2.SetFocus;
      if strFocus = 'AtHeight' then edtAtHeight2.SetFocus;
    end
    else
    begin
      edtAtHeight2.SetFocus;
    end;
  end
  else
  begin
    btnSave.Enabled := CheckDistValues3(TRUE);
    if not btnSave.Enabled then
    begin
      if edtAtPressure.Text = '' then strFocus := 'Pressure';
      if edtAtHumidity.Text = '' then strFocus := 'Humidity';
      if edtAtDryTemp.Text = ''  then strFocus := 'DryTemp';
      if edtToHeight3.Text = '' then strFocus := 'ToHeight';
      if edtAtHeight3.Text = '' then strFocus := 'AtHeight';

      if strFocus = 'Pressure' then edtAtPressure.SetFocus;
      if strFocus = 'Humidity' then edtAtHumidity.SetFocus;
      if strFocus = 'DryTemp'  then edtAtDryTemp.SetFocus;
      if strFocus = 'ToHeight' then edtToHeight3.SetFocus;
      if strFocus = 'AtHeight' then edtAtHeight3.SetFocus;
    end
    else
    begin
      edtAtHeight3.SetFocus;
    end;
  end;
  Screen.Cursor := crDefault;
end;

(*******************************************************************************
@procedure edtAtHeightExit(Sender: TObject);

@description
  Checks the validity the height at the AT pillar.
*******************************************************************************)
procedure TfrmJob.edtAtHeightExit(Sender: TObject);
begin
  if not edtAtHeight.Valid then
  begin
    ShowMessage(edtAtHeight.ErrorMessage);
    edtAtHeight.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtToleranceExit(Sender: TObject);

@description
  Checks the validity of the value in the Tolerance Edit Box.
*******************************************************************************)
procedure TfrmJob.edtToleranceExit(Sender: TObject);
begin
  if not edtTolerance.Valid then
  begin
    ShowMessage(edtTolerance.ErrorMessage);
    edtTolerance.SetFocus;
  end
  else
  begin
    dTolerance := edtTolerance.Value;
  end;
end;

(*******************************************************************************
@procedure edtToHeightExit(Sender: TObject);

@description
  Checks the validity of the 'TO pillar' height.
*******************************************************************************)
procedure TfrmJob.edtToHeightExit(Sender: TObject);
begin
  if not edtToHeight.Valid then
  begin
    ShowMessage(edtToHeight.ErrorMessage);
    edtToHeight.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtDryTempExit(Sender: TObject);

@description
  Validates the Dry Temperature.
*******************************************************************************)
procedure TfrmJob.edtDryTempExit(Sender: TObject);
begin
  if not edtDryTemp.Valid then
  begin
    ShowMessage(edtDryTemp.ErrorMessage);
    edtDryTemp.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtHumidityExit(Sender: TObject);

@description
  Validates the Humidity.
*******************************************************************************)
procedure TfrmJob.edtHumidityExit(Sender: TObject);
begin
  if not edtHumidity.Valid then
  begin
    ShowMessage(edtHumidity.ErrorMessage);
    edtHumidity.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtPressureExit(Sender: TObject);

@description
  validates the pressure.
*******************************************************************************)
procedure TfrmJob.edtPressureExit(Sender: TObject);
begin
  if not edtPressure.Valid then
  begin
    ShowMessage(edtPressure.ErrorMessage);
    edtPressure.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtPressure2Exit(Sender: TObject);

@description
  Displays an error message if the input data is not valid.
*******************************************************************************)
procedure TfrmJob.edtPressure2Exit(Sender: TObject);
begin
  if not edtPressure2.Valid then
  begin
    ShowMessage(edtPressure2.ErrorMessage);
    edtPressure2.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtHumidity2Exit(Sender: TObject);

@description
  Displays an error message if the input data is not valid.
*******************************************************************************)
procedure TfrmJob.edtHumidity2Exit(Sender: TObject);
begin
  if not edtHumidity2.Valid then
  begin
    ShowMessage(edtHumidity2.ErrorMessage);
    edtHumidity2.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtDryTemp2Exit(Sender: TObject);

@description
  Displays an error message if the input data is not valid.
*******************************************************************************)
procedure TfrmJob.edtDryTemp2Exit(Sender: TObject);
begin
  if not edtDryTemp2.Valid then
  begin
    ShowMessage(edtDryTemp2.ErrorMessage);
    edtDryTemp2.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtToHeight2Exit(Sender: TObject)

@description
  Displays an error message if the input data is not valid.
*******************************************************************************)
procedure TfrmJob.edtToHeight2Exit(Sender: TObject);
begin
  if not edtToHeight2.Valid then
  begin
    ShowMessage(edtToHeight2.ErrorMessage);
    edtToHeight2.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtAtHeight2Exit(Sender: TObject);

@description
  Displays an error message if the input data is not valid.
*******************************************************************************)
procedure TfrmJob.edtAtHeight2Exit(Sender: TObject);
begin
  if not edtAtHeight2.Valid then
  begin
    ShowMessage(edtAtHeight2.ErrorMessage);
    edtAtHeight2.SetFocus;
  end;
end;

(*******************************************************************************
@procedure edtAtHeight2Change(Sender: TObject);

@description
  Enables the Next button in the input data is valid.
*******************************************************************************)
procedure TfrmJob.edtAtHeight2Change(Sender: TObject);
begin
  btnSave.Enabled := CheckDistValues2(TRUE);
end;

(*******************************************************************************
@procedure edtToHeight2Change(Sender: TObject);

@description
  Disables the Save button if the observed heights, mets and distances are not valid.
*******************************************************************************)
procedure TfrmJob.edtToHeight2Change(Sender: TObject);
begin
  btnSave.Enabled := CheckDistValues2(TRUE);
end;

(*******************************************************************************
@procedure edtDryTemp2Change(Sender: TObject);

@description
  Disables the Save button if the observed mets, heights  and distances are not valid.
*******************************************************************************)
procedure TfrmJob.edtDryTemp2Change(Sender: TObject);
begin
  btnSave.Enabled := CheckDistValues2(TRUE);
end;

(*******************************************************************************
@procedure dbgridObs2Exit(Sender: TObject);

@description
  1. Post the observed distances.
  2. Disables the Save button if the observed mets, heights and distances are not valid.
*******************************************************************************)
procedure TfrmJob.dbgridObs2Exit(Sender: TObject);
begin
  if (rxDistObs.State = dsInsert) or (rxDistObs.State = dsEdit) then
  begin
    rxDistObs.Post;
  end;
  btnSave.Enabled := CheckDistValues2(TRUE);
end;

(*******************************************************************************
@procedure edtHumidity2Change(Sender: TObject);

@description
  Disables the Save button if the observed mets, heights and distances are not valid.
*******************************************************************************)
procedure TfrmJob.edtHumidity2Change(Sender: TObject);
begin
  btnSave.Enabled := CheckDistValues2(TRUE);
end;

(*******************************************************************************
@procedure edtPressure2Change(Sender: TObject);

@description
  Disables the Save button if the observed mets, heights and distances are not valid.
*******************************************************************************)
procedure TfrmJob.edtPressure2Change(Sender: TObject);
begin
  btnSave.Enabled := CheckDistValues2(TRUE);
end;

(*******************************************************************************
@procedure rxDistObsBeforeInsert(DataSet: TDataSet);

@description
  Disables the Save button if the observed mets and distances are not valid.
*******************************************************************************)
procedure TfrmJob.rxDistObsBeforeInsert(DataSet: TDataSet);
begin
  if pcObservations.ActivePage = tsNewObservations then
  begin
    btnSave.Enabled := CheckDistValues(FALSE);
  end;
  if pcObservations.ActivePage = tsEditObservations then
  begin
    btnSave.Enabled := CheckDistValues2(FALSE);
  end;
  if pcObservations.ActivePage = tsObservations2 then
  begin
    btnSave.Enabled := CheckDistValues3(FALSE);
  end;
end;

(*******************************************************************************
@procedure btnNextEntryTypeClick(Sender: TObject);

@description
  Capture Method: "Manual enter new observations"
  "Observation" Page will be displayed where you can manually enter new observations.

  Capture Method: "Download observations from a text files"
  You will be prompted to select the text file. Observations in this text file will be
  downloaded and displayed on the Observation page.
*******************************************************************************)
procedure TfrmJob.btnNextEntryTypeClick(Sender: TObject);
begin
  rbtnDefaultHumidity.Caption := 'Default RH ('+FloatToStr(dDefaultHumidity)+'%)';
  vedtNumberMetSets.Value := 1;
  hasChangedMets := False;

  if dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean then
  begin
    chkMetsDial.Checked := True;
    chkMetsDial.Enabled := False;
    gbPulse.Visible := True;
    pnlMets.Visible := False;
    lblDownloadWarning.Visible := False;
  end
  else
  begin
    gbPulse.Visible := False;
    chkMetsDial.Enabled := True;
  end;

  if rbtnDownLoad.Checked then
  begin
    lblDownloadWarning.Visible := True;
    grpCorrections.Visible := False;
    lblNumberMetSets.Visible := False;
    vedtNumberMetSets.Visible := False;
  end
  else
  begin
    lblDownloadWarning.Visible := False;
    grpCorrections.Visible := True;
    lblNumberMetSets.Visible := True;
    vedtNumberMetSets.Visible := True;
  end;

  SetupMetsPage;
  sPageNumber := GetPageNumber(tsMets.Caption);
  lblPageMets.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsMets;
end;

(*******************************************************************************
@procedure btnBackEntryTypeClick(Sender: TObject);

@description
  Returns to the previous page of the wizard.
*******************************************************************************)
procedure TfrmJob.btnBackEntryTypeClick(Sender: TObject);
begin
  PositionGbRejection;
  if rbtnBaseline.Checked then
  begin
    cbManufacturerSpecs.Checked := False;
    with dmMain.rxAtInstrumentModel do
    begin
      pnlSpecifications.Caption := Format('%8.2f mm + %8.2f ppm',
      [FieldByName('ModelManufStdDevConst').AsFloat* 1000,
      FieldByName('ModelManufStdDevPPM').AsFloat]);
    end;
    sPageNumber := GetPageNumber(tsUncertainty.Caption);
    lblPageUncertainty.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsUncertainty;
  end
  else
  begin
    dmBase.rxStandard.Locate('Type','E',[]);
    sPageNumber := GetPageNumber(tsStandards.Caption);
    lblPageStandards.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsStandards;
  end;
end;

(*******************************************************************************
@procedure btnDeleteRecordClick(Sender: TObject);

@description
  Dialog to confirm the deletion of a selected observation.
*******************************************************************************)
procedure TfrmJob.btnDeleteRecordClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want delete the selected observation?',MtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    DeleteObservationRecord;
    btnExportFile.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteObs.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnDeleteRecord.Enabled := (not dmMain.rxJMeasure.isEmpty);
    btnEdit.Enabled := (not dmMain.rxJMeasure.isEmpty);
  end;
end;

(*******************************************************************************
@procedure DeleteObservationRecord;

@description
  Deletes the current observation record.
*******************************************************************************)
procedure TfrmJob.DeleteObservationRecord;
var
  sMeasID: Integer;
begin
  with dmMain.rxJMeasure do
  begin
    sMeasID := FieldByName('MeasId').AsInteger;
    if dmBase.rxJMeasure.Locate('MeasID',INtToStr(sMeasID),[]) then
    begin
      dmBase.rxJMeasure.Delete;
    end;
    dmBase.rxEDMObs.First;
    while not dmBase.rxEDMObs.EOF do
    begin
      if dmBase.rxEDMObs.FieldByName('MeasID').AsInteger = sMeasID then
      begin
        dmBase.rxEDMObs.Delete;
      end
      else
      begin
        dmBase.rxEDMObs.Next;
      end;
    end;
    Delete;
    if not isEmpty then
    begin
      dmMain.FilterEDMObs(dmMain.rxJMeasure.FieldByName('MeasId').AsInteger);
      ShowLegalDistance;
    end
    else
    begin
      dmMain.rxFilteredEDMObs.EmptyTable;
      pnlCertifiedDistance.Caption := '';
    end;
  end;
end;

(*******************************************************************************
@procedure btnHelp7Click(Sender: TObject);

@description
  Displays the Help for the "Observation" page
*******************************************************************************)
procedure TfrmJob.btnHelp7Click(Sender: TObject);
begin
  if pcObservations.ActivePage = tsNewObservations then
  begin
    Application.HelpContext(1900);
  end
  else
  begin
    Application.HelpContext(1910);
  end;
end;

(*******************************************************************************
@procedure btnHelp8Click(Sender: TObject);

@description
  Displays the Help for the "Observation Capture Method" page
*******************************************************************************)
procedure TfrmJob.btnHelp8Click(Sender: TObject);
begin
  Application.HelpContext(1920);
end;

(*******************************************************************************
@procedure UpdateMetsFields;

@description
  Updates the Meteorology fields.
*******************************************************************************)
procedure TfrmJob.UpdateMetsFields;
var
  sJobID: Integer;
  strHumidityType, strMeasMetFlag: String;
  dThermometerCorr, dBarometerCorr: Double;
begin
  with dmMain.rxJob do
  begin
    sJobID := dmMain.rxJob.FieldByName('JobID').AsInteger;
    if not ((State = dsEdit) or (State = dsInsert)) then edit;
    FieldByName('NumberThermometers').Value := dmMain.rxMets.FieldByName('NumberThermometers').Value;
    FieldByName('NumberBarometers').Value:= dmMain.rxMets.FieldByName('NumberBarometers').Value;
    if FieldByName('NumberThermometers').AsInteger = 1 then
    begin
       dThermometerCorr := FieldByName('ThermometerCorr1').AsFloat;
    end
    else
    begin
      dThermometerCorr := (FieldByName('ThermometerCorr1').AsFloat+FieldByName('ThermometerCorr2').AsFloat)/2.0;
    end;
    if FieldByName('NumberBarometers').AsInteger = 1 then
    begin
       dBarometerCorr := FieldByName('BarometerCorr1').AsFloat;
    end
    else
    begin
      dBarometerCorr := (FieldByName('BarometerCorr1').AsFloat+FieldByName('BarometerCorr2').AsFloat)/2.0;
    end;
    FieldByName('JobTempCorr').AsFloat := dThermometerCorr;
    FieldByName('JobPressureCorr').AsFloat := dBarometerCorr;
    Post;
  end;

  strHumidityType := 'D'; // default
  if rbtnWetTemp.Checked         then strHumidityType :='W';
  if rbtnHumidity.Checked        then strHumidityType :='R';
  if rbtnDefaultHumidity.Checked then strHumidityType :='D';
  if chkMetsDial.Checked then
  begin
    strMeasMetFlag := 'N';
  end
  else
  begin
    strMeasMetFlag := 'Y';
  end;

  with dmBase.rxJMeasure do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('JobID').AsInteger = sJobID then
      begin
        Edit;
        FieldByName('MeasMetFlag').AsString := strMeasMetFlag;
        FieldByName('MeasHumidityType').AsString := strHumidityType;
        if (strMeasMetFlag = 'Y') and (strHumidityType = 'D') then
        begin
          FieldByName('MeasHumidity').AsFloat := 50;
        end;
        if strHumidityType = 'W' then
        begin
          FieldByName('MeasHumidity').Value := FieldByName('WetTemp').Value
        end;
        if strHumidityType = 'R' then
        begin
          FieldByName('MeasHumidity').Value := FieldByName('Humidity').Value
        end;
        Post;
      end;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure dbgridObsCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);

@description
  Highlights the record in the database grid if the record contains an error.
*******************************************************************************)
procedure TfrmJob.dbgridObsCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if dmMain.rxJMeasure.FieldByName('hasError').AsBoolean = TRUE then
  begin
    ABrush.Color := clRed;
  end;
end;

(*******************************************************************************
@procedure CheckEditObservationSet: Boolean;

@description
  Check the Mets and Height Observations
*******************************************************************************)
function TfrmJob.CheckEditObservationSet: Boolean;
var
  ErrorList : TStringList;
  i: Integer;
  strError: String;
  strFocus: String;
begin
  strFocus := '';
  ErrorList := TStringList.Create;
  strError := '';
  if edtPressure2.Visible then
  begin
    if edtPressure2.Text = '' then
    begin
      ErrorList.Add('Pressure: An empty field is not allowed');
      strFocus := 'Pressure';
    end
    else
    begin
      if (edtPressure2.Value < 800) or (edtPressure2.Value > 1200) then
      begin
        ErrorList.Add('Pressure: Value must be between 800 and 1200 hectapascals');
        strFocus := 'Pressure';
      end;
    end;
  end;
  if edtDryTemp2.Visible then
  begin
    if edtDryTemp2.Text = '' then
    begin
      ErrorList.Add('Dry Temperature: An empty field is not allowed');
      strFocus := 'DryTemp';
    end
    else
    begin
      if (edtDryTemp2.Value < -20) or (edtDryTemp2.Value > 50) then
      begin
        ErrorList.Add('Dry Temperature: Value must be between -20 and 50 Celsius');
        strFocus := 'DryTemp';
      end;
    end;
  end;
  if edtHumidity2.Visible then
  begin
    if edtHumidity2.Text = '' then
    begin
      if rbtnWetTemp.Checked then
      begin
        ErrorList.Add('Wet Temperature: An empty field is not allowed');
      end
      else
      begin
        ErrorList.Add('Humidity: An empty field is not allowed');
      end;
      strFocus := 'Humidity';
    end
    else
    begin
      if rbtnWetTemp.Checked then
      begin
        if (edtHumidity2.Value < -20) or (edtHumidity2.Value > 50) then
        begin
          ErrorList.Add('Wet Temperature: Value must be between -20 and 50 Celsius');
          strFocus := 'Humidity';
        end;
      end
      else
      begin
        if (edtHumidity2.Value < 0) or (edtHumidity2.Value > 100) then
        begin
          ErrorList.Add('Humidity: Value must be between 0 and 100%');
          strFocus := 'Humidity';
        end;
      end;
    end;
  end;

  if edtAtHeight2.Text = '' then
  begin
    ErrorList.Add('Height above At Pillar: An empty field is not allowed');
    strFocus := 'AtHeight';
  end;
  if edtAtHeight2.Value <= 0 then
  begin
    ErrorList.Add('Height above At Pillar: Value must be bigger than 0');
    strFocus := 'AtHeight';
  end;

  if edtToHeight2.Text = ''then
  begin
    ErrorList.Add('Height above To Pillar:  An empty field is not allowed');
    strFocus := 'ToHeight';
  end;
  if edtToHeight2.Value <= 0 then
  begin
    ErrorList.Add('Height above To Pillar: Value must be bigger than 0');
    strFocus := 'ToHeight';
  end;

  if rbtnWetTemp.Checked and (not chkMetsDial.Checked) then
  begin
    if (edtDryTemp2.Text <> '') and (edtHumidity2.Text <> '') then
    begin
      if edtHumidity2.value > edtDryTemp2.Value then
      begin
        ErrorList.Add('Wet temperature must be smaller than the Dry temperature');
      end;
    end;
  end;
  if rxDistObs.isEmpty then
  begin
    ErrorList.Add('At least one distance is required');
  end;

  for i := 0 to ErrorList.Count-2 do
  begin
    strError := strError + ErrorList[i]+#10
  end;
  if ErrorList.Count > 0 then
  begin
    strError := strError + ErrorList[(ErrorList.Count-1)];
    MessageDlg(strError,mtError,[mbOK],0);
  end;
  Result := ErrorList.Count = 0;
  ErrorList.free;

  if strFocus = 'Pressure' then edtPressure2.SetFocus;
  if strFocus = 'Humidity' then edtHumidity2.SetFocus;
  if strFocus = 'DryTemp'  then edtDryTemp2.SetFocus;
  if strFocus = 'ToHeight' then edtToHeight2.SetFocus;
  if strFocus = 'AtHeight' then edtAtHeight2.SetFocus;
end;

(*******************************************************************************
@function CheckInsertObservationSet: Boolean;

@description
  1. Checks the validity of all observations in a set.
  2. Displays an error message if the observations are not valid
  3. Returns TRUE if all observations are valid and FALSE if one or more of the
     observations are not valid
*******************************************************************************)
function TfrmJob.CheckInsertObservationSet: Boolean;
var
  ErrorList : TStringList;
  i: Integer;
  strError: String;
  strFocus: String;
begin
  strFocus := '';
  ErrorList := TStringList.Create;
  strError := '';
  if edtPressure.Visible then
  begin
    if edtPressure.Text = '' then
    begin
      ErrorList.Add('Pressure: An empty field is not allowed');
      strFocus := 'Pressure';
      edtPressure.SetFocus;
    end
    else
    begin
      if (edtPressure.Value < 800) or (edtPressure.Value > 1200) then
      begin
        ErrorList.Add('Pressure: Value must be between 800 and 1200 hectapascals');
        strFocus := 'Pressure';
      end;
    end;
  end;
  if edtDryTemp.Visible then
  begin
    if edtDryTemp.Text = '' then
    begin
      ErrorList.Add('Dry Temperature: An empty field is not allowed');
      strFocus := 'DryTemp';
    end
    else
    begin
      if (edtDryTemp.Value < -20) or (edtDryTemp.Value > 50) then
      begin
        ErrorList.Add('Dry Temperature: Value must be between -20 and 50 Celsius');
        strFocus := 'DryTemp';
      end;
    end;
  end;
  if edtHumidity.Visible then
  begin
    if edtHumidity.Text = '' then
    begin
      if rbtnWetTemp.Checked then
      begin
        ErrorList.Add('Wet Temperature: An empty field is not allowed');
      end
      else
      begin
        ErrorList.Add('Humidity: An empty field is not allowed');
      end;
      strFocus := 'Humidity';
    end
    else
    begin
      if rbtnWetTemp.Checked then
      begin
        if (edtHumidity.Value < -20) or (edtHumidity.Value > 50) then
        begin
          ErrorList.Add('Wet Temperature: Value must be between -20 and 50 Celsius');
          strFocus := 'Humidity';
        end;
      end
      else
      begin
        if (edtHumidity.Value < 0) or (edtHumidity.Value > 100) then
        begin
          ErrorList.Add('Humidity: Value must be between 0 and 100%');
          strFocus := 'Humidity';
        end;
      end;
    end;
  end;

  if edtAtHeight.Text = '' then
  begin
    ErrorList.Add('Height above At Pillar: An empty field is not allowed');
    strFocus := 'AtHeight';
  end;
  if edtAtHeight.Value <= 0 then
  begin
    ErrorList.Add('Height above At Pillar: Value must be bigger than 0');
    strFocus := 'ToHeight';
  end;

  if edtToHeight.Text = '' then
  begin
    ErrorList.Add('Height above To Pillar:  An empty field is not allowed');
    strFocus := 'ToHeight';
  end;
  if edtToHeight.Value <= 0 then
  begin
    ErrorList.Add('Height above To Pillar: Value must be bigger than 0');
    strFocus := 'AtHeight';
  end;


  if rbtnWetTemp.Checked and (not chkMetsDial.Checked) then
  begin
    if (edtDryTemp.Text <> '') and (edtHumidity.Text <> '') then
    begin
      if edtHumidity.value > edtDryTemp.Value then
      begin
        ErrorList.Add('Wet temperature must be smaller than the Dry temperature');
      end;
    end;
  end;
  if rxDistObs.isEmpty then
  begin
    ErrorList.Add('At least one distance is required');
  end;

  for i := 0 to ErrorList.Count-2 do
  begin
    strError := strError + ErrorList[i]+#10
  end;
  if ErrorList.Count > 0 then
  begin
    strError := strError + ErrorList[(ErrorList.Count-1)];
    MessageDlg(strError,mtError,[mbOK],0);
  end;
  Result := ErrorList.Count = 0;
  ErrorList.free;

  if strFocus = 'Pressure' then edtPressure.SetFocus;
  if strFocus = 'Humidity' then edtHumidity.SetFocus;
  if strFocus = 'DryTemp'  then edtDryTemp.SetFocus;
  if strFocus = 'ToHeight' then edtToHeight.SetFocus;
  if strFocus = 'AtHeight' then edtAtHeight.SetFocus;
end;

(*******************************************************************************
@function UsedByJob : Boolean;

@description
  Checks if a baseline has been used in a calibration job.
*******************************************************************************)
function TfrmJob.UsedByJob : Boolean;
var
  sBaselineId : Integer;
  hasJob: Boolean;
begin
  sBaselineId := dmMain.rxBaseline.FieldByName('BaseLineId').AsInteger;
  hasJob := False;
  with dmBase.rxJob do
  begin
    First;
    while not EOF and (not hasJob) do
    begin
      if (FieldByName('BaselineID').AsInteger = sbaselineID) and
         (FieldByName('JobType').AsString = 'I') then
      begin
        hasJob := True;
      end;
      Next;
    end;
    Result := hasJob;
  end;
end;

(*******************************************************************************
@procedure btnBackStandardClick(Sender: TObject);

@description
  1. New Job: Move to the Entry Tape page.
  2. Existing Job: Move to the observation page.
*******************************************************************************)
procedure TfrmJob.btnNextStandardClick(Sender: TObject);
begin
  if dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean then
  begin
    chkMetsDial.Checked := True;
    chkMetsDial.Enabled := False;
    gbPulse.Visible := True;
    pnlMets.Visible := False;
    lblDownloadWarning.Visible := False;
    lblMetsDialSetMessage.Visible := False;
  end
  else
  begin
    gbPulse.Visible := False;
    chkMetsDial.Enabled := True;
    lblMetsDialSetMessage.Visible := True;
  end;
  dmMain.FilterJMeasure(sJobID);
  if dmMain.rxJMeasure.isEmpty then
  begin
    sPageNumber := GetPageNumber(tsSelectEntryType.Caption);
    lblPageSelectEntryType.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsSelectEntryType;
  end
  else
  begin
    lblNumberMetSets.Visible := True;
    vedtNumberMetSets.Visible := True;
    SetupMetsPage;
    sPageNumber := GetPageNumber(tsMets.Caption);
    lblPageMets.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsMets;
  end;
end;

(*******************************************************************************
@procedure btnBackStandardClick(Sender: TObject);

@description
  Returns to the Uncertainty page.
*******************************************************************************)
procedure TfrmJob.btnBackStandardClick(Sender: TObject);
begin
  sPageNumber := GetPageNumber(tsUncertainty.Caption);
  lblPageUncertainty.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsUncertainty;
end;

(*******************************************************************************
@procedure btnHelpStandardClick(Sender: TObject);

@description
  Displays the Help for the Minimum Uncertainty Standards page
*******************************************************************************)
procedure TfrmJob.btnHelpStandardClick(Sender: TObject);
begin
  Application.HelpContext(1460);
end;

(*******************************************************************************
@procedure btnFirstPageClick(Sender: TObject);

@description
  1. Returns to the first page of the wizard
  2. Checks if the baseline has been updated.
  3. Updates the logos.
*******************************************************************************)
procedure TfrmJob.btnFirstPageClick(Sender: TObject);
begin
  if rbtnBaseline.Checked and (not hasUpdatedBaseline) then
  begin
    if MessageDlg('The baseline has not been updated.'+#10+
    'Are you sure you want to continue?',mtWarning,[mbYes,mbNo],0) = mrYes then
    begin
      UpdateLogos;
      TabsheetList.Clear;
      TabsheetList.Add('tsJob');
      pcMain.ActivePage := tsJob;
      rbtnNew.Checked := True;
    end;
  end
  else
  begin
    if canCalibrateBaseline then
      UpdateLogos;

    TabsheetList.Clear;
    TabsheetList.Add('tsJob');
    pcMain.ActivePage := tsJob;
    rbtnNew.Checked := True;
  end;
end;

(*******************************************************************************
@procedure StandardExit(Sender: TObject);

@description
  Ensures that any changes to the Standards are posted to the database
*******************************************************************************)
procedure TfrmJob.StandardExit(Sender: TObject);
begin
  if dmBase.rxStandard.State = dsEdit then
    dmBase.rxStandard.Post;
end;

procedure TfrmJob.tsStandardsShow(Sender: TObject);
begin
  with dmBase.rxStandard do
  begin
    if not active then
      Open;

    FrameLUMUnits3.LUMUnits := FieldByName('LUMUnits').AsString;
  end;
end;

(*******************************************************************************
@procedure ShowLUMUnits;

@description
  set the LUM unit option from the database rxStandard.LUMUnits
*******************************************************************************)
procedure TfrmJob.ShowLUMUnits;
begin
  with dmBase.rxStandard do
  begin
    if not active then
      Open;

    if pcLum.ActivePage = tsLUMEDM then
      FrameLUMUnits1.LUMUnits := FieldByName('LUMUnits').AsString
    else
    if pcLum.ActivePage = tsLUMBaseline then
      FrameLUMUnits2.LUMUnits := FieldByName('LUMUnits').AsString;
  end;
end;

(*******************************************************************************
@procedure SetImageSize(Image: TImage);

@description
  Ensures that the image will fit on the screen.
*******************************************************************************)
procedure TfrmJob.SetImageSize(Image: TImage);
var
  sWidth1, sHeight1: Integer;
  sWidth2, sHeight2: Integer;
  dRatio1, dRatio2: Double;
begin
  Image.Stretch := False;
  sHeight1 := Image.Height;
  sWidth1 := Image.Width;
  sHeight2 := Image.Picture.Height;
  sWidth2 := Image.Picture.Width;

  if (sHeight2 > sHeight1) or (sWidth2 > sWidth1) then
  begin
    Image.Stretch := True;
    dRatio1 := sWidth1/sHeight1;
    dRatio2 := sWidth2/sHeight2;

    if dRatio1 <> dRatio2 then
    begin
      if dRatio2 > dRatio1 then
      begin
        Image.Height := Round(Image.Width/dRatio2);
      end
      else
      begin
        Image.Width := Round(Image.Height*dRatio2);
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure SetQRImageSize(Image: TQRImage);

@description
  Ensures that the image will fit on the screen.
*******************************************************************************)
procedure TfrmJob.SetQRImageSize(Image: TQRImage);
var
  sWidth1, sHeight1: Integer;
  sWidth2, sHeight2: Integer;
  dRatio1, dRatio2: Double;
begin
  sHeight1 := Image.Height;
  sWidth1 := Image.Width;
  sHeight2 := Image.Picture.Height;
  sWidth2 := Image.Picture.Width;

  if (sHeight2 > sHeight1) or (sWidth2 > sWidth1) then
  begin
    Image.Stretch := True;
    dRatio1 := sWidth1/sHeight1;
    dRatio2 := sWidth2/sHeight2;

    if dRatio1 <> dRatio2 then
    begin
      if dRatio2 > dRatio1 then
      begin
        Image.Width := sWidth1;
        Image.Height := Round(sWidth1/dRatio2);
      end
      else
      begin
        Image.Height := sHeight1;
        Image.Width := Round(sHeight1*dRatio2);
      end;
    end;
  end
  else
  begin
    Image.Stretch := False;
  end;
end;

(*******************************************************************************
@function GetCertifiedSlopeDistance( sAtPillarID: Integer; sToPillarID: Integer): Double;

@description
  Returns the certified slope distance between two pillars.
*******************************************************************************)
function TfrmJob.GetCertifiedSlopeDistance(
  sAtPillarID: Integer;
  sToPillarID: Integer): Double;
var
  doContinue: Boolean;
  dSlopeDistance: Double;
  dHt1, dHt2, dDist: Double;
  sBaselineId: Integer;
  dRadius: Double;
  dRefHeight, dDeltaHt : Double;
  dHeightFactor: Double;
  dOffset, dAtPillarOffset, dToPillarOffset: Double;
  sEllipsID: Integer;
begin
  dSlopeDistance := 0;
  dAtPillarOffset := 0;
  dToPillarOffset := 0;
  dHt1 := 0;
  dHt2 := 0;
  doContinue := False;
  if dmMain.rxPillar.Locate('PillarID',IntToStr(sAtPillarID),[]) then
  begin
    dHt1 := dmMain.rxPillar.FieldByName('PillarHeight').AsFloat;
    dAtPillarOffset := dmMain.rxPillar.FieldByName('PillarOffset').AsFloat;
    doContinue := True;
  end;

  if doContinue then
  begin
    doContinue := False;
    if dmMain.rxPillar.Locate('PillarID',IntToStr(sToPillarID),[]) then
    begin
      dHt2 := dmMain.rxPillar.FieldByName('PillarHeight').AsFloat;
      dToPillarOffset := dmMain.rxPillar.FieldByName('PillarOffset').AsFloat;
      doContinue := True;
    end;
  end;

  if doContinue then
  begin
    with dmMain.rxBaseLine do
    begin
      sBaselineId := FieldByName('BaselineId').AsInteger;
      sEllipsID := FieldByName('EllipsID').AsInteger;
      dRefHeight := FieldByName('BaseLegalHeight').AsFloat;
    end;
    with dmBase.rxEllipsoid do
    begin
      Locate('EllipsID',IntToStr(sEllipsID),[]);
      dRadius := FieldByName('EllipsARadius').AsFloat;
    end;

    dDeltaHt := dHt2 - dHt1;
    dOffset  := dAtPillarOffset - dToPillarOffset;
    dDist := GetLegalDistanceBetweenPillars(sBaseLineId, sAtPillarID, sToPillarID);
    dHeightFactor := (1+(dHt1-dRefHeight)/(dRadius+dRefHeight))*
                     (1+(dHt2-dRefHeight)/(dRadius+dRefHeight));

    dSlopeDistance := sqrt((dDist*dDist)*dHeightFactor + dDeltaHt*dDeltaHt + dOffset*dOffset);
  end;

  Result := dSlopeDistance;
end;

(*******************************************************************************
@procedure btnNextAccreditationClick(Sender: TObject);

@description
  1. Saves the accreditation information.
  2. Moves to the next page of the wizard where you can set the LUM.
*******************************************************************************)
procedure TfrmJob.btnNextAccreditationClick(Sender: TObject);
begin
  SaveAccreditation;

  doEvents := False;
  if rbtnBaseline.Checked then
  begin
    pcLUM.ActivePage := tsLUMBaseline;
    ShowLUMUnits;
    dmBase.rxStandard.Locate('Type','F',[]);
    chkBaselineLUM1.Checked :=
      dmBase.rxStandard.FieldByName('Description').AsString = 'LUM';
  end
  else
  begin
    pcLUM.ActivePage := tsLUMEDM;
    ShowLUMUnits;
    dmBase.rxStandard.Locate('Type','G',[]);
    chkEDMLUM1.Checked :=
      dmBase.rxStandard.FieldByName('Description').AsString = 'LUM';
  end;

  doEvents := True;

  sPageNumber := GetPageNumber(tsLeastUncertainty.Caption);
  lblLeastUncertaintyPage.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsLeastUncertainty;
end;

(*******************************************************************************
@procedure btnBackAccreditationClick(Sender: TObject);

@description
  1. Saves the accreditation information
  2. Returns to the previous page of the wizard
*******************************************************************************)
procedure TfrmJob.btnBackAccreditationClick(Sender: TObject);
begin
  SaveAccreditation;
  sPageNumber := GetPageNumber(tsProcedure.Caption);
  lblPageProcedure.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsProcedure;
end;

(*******************************************************************************
@procedure btnAccreditationHelpClick(Sender: TObject);

@description
  Displays the Help for the Accreditation page
*******************************************************************************)
procedure TfrmJob.btnAccreditationHelpClick(Sender: TObject);
begin
  Application.HelpContext(1160);
end;

(*******************************************************************************
@procedure edtTolerance2Exit(Sender: TObject);

@description
  Checks the validity of the value in the Tolerance Edit Box.
*******************************************************************************)
procedure TfrmJob.edtTolerance2Exit(Sender: TObject);
begin
  if not edtTolerance2.Valid then
  begin
    ShowMessage(edtTolerance2.ErrorMessage);
    edtTolerance2.SetFocus;
  end
  else
  begin
    dTolerance := edtTolerance2.Value;
  end;
end;

(*******************************************************************************
@procedure edtTolerance3Exit(Sender: TObject);

@description
  Checks the validity of the value in the Tolerance Edit Box.
*******************************************************************************)
procedure TfrmJob.edtTolerance3Exit(Sender: TObject);
begin
  if not edtTolerance3.Valid then
  begin
    ShowMessage(edtTolerance3.ErrorMessage);
    edtTolerance3.SetFocus;
  end
  else
  begin
    dTolerance := edtTolerance3.Value;
  end;
end;

(*******************************************************************************
@procedure ChangedMetsClick(Sender: TObject);

@description
  Any change in the Mets panels will trigger an update of the Mets fields in the
  database when you click on the Next button.
*******************************************************************************)
procedure TfrmJob.ChangedMetsClick(Sender: TObject);
begin
  if doEvent then
  begin
    hasChangedMets := True;
  end;
end;

(*******************************************************************************
@procedure ChangeThermometerPanel;

@description
  Initialises the Thermometer panels on the Meteorology tabsheet.
*******************************************************************************)
procedure TfrmJob.ChangeThermometerPanel;
begin
  if doEvent then
  begin
    hasChangedMets := True;
    if vedtNumberMetSets.Text = '1' then
    begin
      lblThermometer2.Visible := False;
      dbedtThermometer2.Visible := False;
      lblThermometer1.Caption := 'Thermometer';
      lblThermometer2Number.Visible := False;
      dbedtThermometerSerialNumber2.Visible := False;
      dbedtThermometer2.Visible := False;
      lblThermometer1Number.Caption := 'Thermometer:';
    end
    else
    begin
      lblThermometer2.Visible := True;
      dbedtThermometer2.Visible := True;
      lblThermometer1.Caption := 'Thermometer (EDM):';
      lblThermometer2Number.Visible := True;
      dbedtThermometerSerialNumber2.Visible := True;
      dbedtThermometer2.Visible := True;
      lblThermometer1Number.Caption := 'Thermometer (EDM):';
    end;
  end;
end;

(*******************************************************************************
@procedure ChangeBarometerPanel;

@description
  Initialises the Barameter panels on the Meteorology tabsheet.
*******************************************************************************)
procedure TfrmJob.ChangeBarometerPanel;
begin
  if doEvent then
  begin
    hasChangedMets := True;
    if vedtNumberMetSets.Text = '1' then
    begin
      lblBarometer2.Visible := False;
      dbedtBarometer2.Visible := False;
      lblBarometer1.Caption := 'Barometer';
      lblBarometer2Number.Visible := False;
      dbedtBarometerSerialNumber2.Visible := False;
      dbedtBarometer2.Visible := False;
      lblBarometer1Number.Caption := 'Barometer:';
    end
    else
    begin
      lblBarometer2.Visible := True;
      dbedtBarometer2.Visible := True;
      lblBarometer1.Caption := 'Barometer (EDM):';
      lblBarometer2Number.Visible := True;
      dbedtBarometerSerialNumber2.Visible := True;
      dbedtBarometer2.Visible := True;
      lblBarometer1Number.Caption := 'Barometer (EDM):';
    end;
  end;
end;

(*******************************************************************************
@procedure vedtNumberMetSetsChange(Sender: TObject);

@description
  Initialises the Thermometer and Barometer panels.
*******************************************************************************)
procedure TfrmJob.vedtNumberMetSetsChange(Sender: TObject);
begin
//  vedtNumberMetSets.Color := clWindow;
  if not vedtNumberMetSets.Valid then
  begin
    ShowMessage(vedtNumberMetSets.ErrorMessage);
  end
  else
  begin
    if (vedtNumberMetSets.Value = 1) or (vedtNumberMetSets.Value = 2) then
    begin
      ChangeThermometerPanel;
      ChangeBarometerPanel;
    end
    else
    begin
      MessageDlg('Number of Met Sets must be either 1 or 2',mtWarning,[mbOK],0);
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure cbAtPillar2Change(Sender: TObject);

@description
  1. Creates a new pillar list for the TO pillar dropdown box.
  2. Computes the certified distance between the selected pillars
  3. Initialises the database grid.
*******************************************************************************)
procedure TfrmJob.cbAtPillar2Change(Sender: TObject);
begin
  rxDistObs.EmptyTable;
  if ShowLegalDistance2 then
  begin
    dbgridDistObs3.ReadOnly := False;
    dbgridDistObs3.Color := clWindow;
  end
  else
  begin
    dbgridDistObs3.ReadOnly := True;
    dbgridDistObs3.Color := clBtnFace;
  end;
  CreateToPillarList2;
  btnSave.Enabled := CheckDistValues3(TRUE);
end;

(*******************************************************************************
@procedure edtAtHeight3Exit(Sender: TObject);

@description
  Checks the validity of the Height measurements.
*******************************************************************************)
procedure TfrmJob.edtAtHeight3Exit(Sender: TObject);
begin
  if edtAtHeight3.Text <> '' then
  begin
    if not edtAtHeight3.Valid then
    begin
      ShowMessage(edtAtHeight3.ErrorMessage);
      edtAtHeight3.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure edtToHeight3Exit(Sender: TObject);

@description
  Checks the validity of the Height measurements.
*******************************************************************************)
procedure TfrmJob.edtToHeight3Exit(Sender: TObject);
begin
  if edtToHeight3.Text <> '' then
  begin
    if not edtToHeight3.Valid then
    begin
      ShowMessage(edtToHeight3.ErrorMessage);
      edtToHeight3.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure edtAtDryTempExit(Sender: TObject);

@description
  Checks the validity of the Temperature measurements.
*******************************************************************************)
procedure TfrmJob.edtAtDryTempExit(Sender: TObject);
begin
  if edtAtDryTemp.Text <> '' then
  begin
    if not edtAtDryTemp.Valid then
    begin
      ShowMessage(edtAtDryTemp.ErrorMessage);
      edtAtDryTemp.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure edtToDryTempExit(Sender: TObject);

@description
  Checks the validity of the Temperature measurements.
*******************************************************************************)
procedure TfrmJob.edtToDryTempExit(Sender: TObject);
begin
  if edtToDryTemp.Text <> '' then
  begin
    if not edtToDryTemp.Valid then
    begin
      ShowMessage(edtToDryTemp.ErrorMessage);
      edtToDryTemp.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure edtAtHumidityExit(Sender: TObject);

@description
  Checks the validity of the Humidity measurements.
*******************************************************************************)
procedure TfrmJob.edtAtHumidityExit(Sender: TObject);
begin
  if edtAtHumidity.Text <> '' then
  begin
    if not edtAtHumidity.Valid then
    begin
      ShowMessage(edtAtHumidity.ErrorMessage);
      edtAtHumidity.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure edtToHumidityExit(Sender: TObject);

@description
  Checks the validity of the Humidity measurements.
*******************************************************************************)
procedure TfrmJob.edtToHumidityExit(Sender: TObject);
begin
  if edtToHumidity.Text <> '' then
  begin
    if not edtToHumidity.Valid then
    begin
      ShowMessage(edtToHumidity.ErrorMessage);
      edtToHumidity.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure edtAtPressureExit(Sender: TObject);

@description
  Checks the validity of the Pressure measurements.
*******************************************************************************)
procedure TfrmJob.edtAtPressureExit(Sender: TObject);
begin
  if edtAtPressure.Text <> '' then
  begin
    if not edtAtPressure.Valid then
    begin
      ShowMessage(edtAtPressure.ErrorMessage);
      edtAtPressure.SetFocus;
    end;
  end;
end;

(*******************************************************************************
@procedure edtToPressureExit(Sender: TObject);

@description
  Checks the validity of the Pressure measurements.
*******************************************************************************)
procedure TfrmJob.edtToPressureExit(Sender: TObject);
begin
  if edtToPressure.Text <> '' then
  begin
    if not edtToPressure.Valid then
    begin
      ShowMessage(edtToPressure.ErrorMessage);
      edtToPressure.SetFocus;
    end;
  end;  
end;

(*******************************************************************************
@procedure cbToPillar2Change(Sender: TObject);

@description
  1. Creates a new pillar list for the AT pillar dropdown box.
  2. Computes the certified distance between the selected pillars
  3. Initialises the database grid.
*******************************************************************************)
procedure TfrmJob.cbToPillar2Change(Sender: TObject);
begin
  rxDistObs.EmptyTable;
  if ShowLegalDistance2 then
  begin
    dbgridDistObs3.ReadOnly := False;
    dbgridDistObs3.Color := clWindow;
  end
  else
  begin
    dbgridDistObs3.ReadOnly := True;
    dbgridDistObs3.Color := clBtnFace;
  end;
  CreateAtPillarList2;
  btnSave.Enabled := CheckDistValues3(TRUE);
end;

(*******************************************************************************
@procedure CheckInsertObservationSetAt: Boolean;

@description
  Check the Mets Observations at the EDM instrument pillar.
*******************************************************************************)
function TfrmJob.CheckInsertObservationSetAt: Boolean;
var
  ErrorList : TStringList;
  i: Integer;
  strError: String;
  strFocus: String;
begin
  strFocus := '';
  ErrorList := TStringList.Create;
  strError := '';
  if edtAtPressure.Visible then
  begin
    if (edtAtPressure.Text = '') then
    begin
      ErrorList.Add('Pressure: An empty field is not allowed');
      strFocus := 'Pressure';
      edtAtPressure.SetFocus;
    end
    else
    begin
      if (edtAtPressure.Value < 800) or (edtAtPressure.Value > 1200) then
      begin
        ErrorList.Add('Pressure: Value must be between 800 and 1200 hectapascals');
        strFocus := 'Pressure';
      end;
    end;
  end;
  if edtAtDryTemp.Visible then
  begin
    if edtAtDryTemp.Text = '' then
    begin
      ErrorList.Add('Dry Temperature: An empty field is not allowed');
      strFocus := 'DryTemp';
    end
    else
    begin
      if (edtAtDryTemp.Value < -20) or (edtAtDryTemp.Value > 50) then
      begin
        ErrorList.Add('Dry Temperature: Value must be between -20 and 50 Celsius');
        strFocus := 'DryTemp';
      end;
    end;
  end;
  if edtAtHumidity.Visible then
  begin
    if edtAtHumidity.Text = '' then
    begin
      if rbtnWetTemp.Checked then
      begin
        ErrorList.Add('Wet Temperature: An empty field is not allowed');
      end
      else
      begin
        ErrorList.Add('Humidity: An empty field is not allowed');
      end;
      strFocus := 'Humidity';
    end
    else
    begin
      if rbtnWetTemp.Checked then
      begin
        if (edtAtHumidity.Value < -20) or (edtAtHumidity.Value > 50) then
        begin
          ErrorList.Add('Wet Temperature: Value must be between -20 and 50 Celsius');
          strFocus := 'Humidity';
        end;
      end
      else
      begin
        if (edtAtHumidity.Value < 0) or (edtAtHumidity.Value > 100) then
        begin
          ErrorList.Add('Humidity: Value must be between 0 and 100%');
          strFocus := 'Humidity';
        end;
      end;
    end;
  end;

  if edtAtHeight3.Text = '' then
  begin
    ErrorList.Add('Height above At Pillar: An empty field is not allowed');
    strFocus := 'AtHeight';
  end;
  if edtAtHeight3.Value <= 0 then
  begin
    ErrorList.Add('Height above At Pillar: Value must be bigger than 0');
    strFocus := 'AtHeight';
  end;

  if edtToHeight3.Text = '' then
  begin
    ErrorList.Add('Height above To Pillar:  An empty field is not allowed');
    strFocus := 'ToHeight';
  end;
  if edtToHeight3.Value <= 0 then
  begin
    ErrorList.Add('Height above To Pillar: Value must be bigger than 0');
    strFocus := 'ToHeight';
  end;

  if rbtnWetTemp.Checked and (not chkMetsDial.Checked) then
  begin
    if (edtAtDryTemp.Text <> '') and (edtAtHumidity.Text <> '') then
    begin
      if edtAtHumidity.value > edtAtDryTemp.Value then
      begin
        ErrorList.Add('Wet temperature must be smaller than the Dry temperature');
      end;
    end;
  end;
  if rxDistObs.isEmpty then
  begin
    ErrorList.Add('At least one distance is required');
  end;

  for i := 0 to ErrorList.Count-2 do
  begin
    strError := strError + ErrorList[i]+#10
  end;
  if ErrorList.Count > 0 then
  begin
    strError := strError + ErrorList[(ErrorList.Count-1)];
    MessageDlg(strError,mtError,[mbOK],0);
  end;
  Result := ErrorList.Count = 0;
  ErrorList.free;

  if strFocus = 'Pressure' then edtAtPressure.SetFocus;
  if strFocus = 'Humidity' then edtAtHumidity.SetFocus;
  if strFocus = 'DryTemp'  then edtAtDryTemp.SetFocus;
  if strFocus = 'ToHeight' then edtToHeight3.SetFocus;
  if strFocus = 'AtHeight' then edtAtHeight3.SetFocus;
end;

(*******************************************************************************
@procedure CheckInsertObservationSetTo: Boolean;

@description
  Check the Mets Observations at the Prism pillar.
*******************************************************************************)
function TfrmJob.CheckInsertObservationSetTo: Boolean;
var
  ErrorList : TStringList;
  i: Integer;
  strError: String;
  strFocus: String;
begin
  strFocus := '';
  ErrorList := TStringList.Create;
  strError := '';
  if edtToPressure.Visible then
  begin
    if (edtToPressure.Text = '') then
    begin
      ErrorList.Add('Pressure: An empty field is not allowed');
      strFocus := 'Pressure';
      edtToPressure.SetFocus;
    end
    else
    begin
      if (edtToPressure.Value < 800) or (edtToPressure.Value > 1200) then
      begin
        ErrorList.Add('Pressure: Value must be between 800 and 1200 hectapascals');
        strFocus := 'Pressure';
      end;
    end;
  end;
  if edtToDryTemp.Visible then
  begin
    if edtToDryTemp.Text = '' then
    begin
      ErrorList.Add('Dry Temperature: An empty field is not allowed');
      strFocus := 'DryTemp';
    end
    else
    begin
      if (edtToDryTemp.Value < -20) or (edtToDryTemp.Value > 50) then
      begin
        ErrorList.Add('Dry Temperature: Value must be between -20 and 50 Celsius');
        strFocus := 'DryTemp';
      end;
    end;
  end;
  if edtToHumidity.Visible then
  begin
    if edtToHumidity.Text = '' then
    begin
      if rbtnWetTemp.Checked then
      begin
        ErrorList.Add('Wet Temperature: An empty field is not allowed');
      end
      else
      begin
        ErrorList.Add('Humidity: An empty field is not allowed');
      end;
      strFocus := 'Humidity';
    end
    else
    begin
      if rbtnWetTemp.Checked then
      begin
        if (edtToHumidity.Value < -20) or (edtToHumidity.Value > 50) then
        begin
          ErrorList.Add('Wet Temperature: Value must be between -20 and 50 Celsius');
          strFocus := 'Humidity';
        end;
      end
      else
      begin
        if (edtToHumidity.Value < 0) or (edtToHumidity.Value > 100) then
        begin
          ErrorList.Add('Humidity: Value must be between 0 and 100%');
          strFocus := 'Humidity';
        end;
      end;
    end;
  end;

  if rbtnWetTemp.Checked and (not chkMetsDial.Checked) then
  begin
    if (edtToDryTemp.Text <> '') and (edtToHumidity.Text <> '') then
    begin
      if edtToHumidity.value > edtToDryTemp.Value then
      begin
        ErrorList.Add('Wet temperature must be smaller than the Dry temperature');
      end;
    end;
  end;

  for i := 0 to ErrorList.Count-2 do
  begin
    strError := strError + ErrorList[i]+#10
  end;
  if ErrorList.Count > 0 then
  begin
    strError := strError + ErrorList[(ErrorList.Count-1)];
    MessageDlg(strError,mtError,[mbOK],0);
  end;
  Result := ErrorList.Count = 0;
  ErrorList.free;

  if strFocus = 'Pressure' then edtToPressure.SetFocus;
  if strFocus = 'Humidity' then edtToHumidity.SetFocus;
  if strFocus = 'DryTemp'  then edtToDryTemp.SetFocus;
end;

(*******************************************************************************
@procedure SetMetsInDistObsPage;

@description
  Initialises the Meteorology Page.
*******************************************************************************)
procedure TfrmJob.SetMetsInDistObsPage;
begin
  if vedtNumberMetSets.Value = 1 then
  begin
    if chkMetsDial.Checked then
    begin
      memMetInstructions.Visible := False;
      edtDryTemp2.Visible  := False;
      edtHumidity2.Visible := False;
      edtPressure2.Visible := False;
      lblDryTemp2.Visible  := False;
      lblHumidity2.Visible := False;
      lblPressure2.Visible := False;
    end
    else
    begin
      memMetInstructions.Visible := True;
      memMetInstructions.Lines.Clear;
      memMetInstructions.Lines.Add('The Mets values must be actual observations, which will be corrected.');
      edtDryTemp2.Visible  := True;
      edtHumidity2.Visible := True;
      edtPressure2.Visible := True;
      lblDryTemp2.Visible  := True;
      lblHumidity2.Visible := True;
      lblPressure2.Visible := True;
      edtHumidity2.Color := clWindow;
      edtHumidity2.ReadOnly := False;
      edtDryTemp2.Text := dmMain.rxJMeasure.FieldByName('MeasDryTemp').AsString;
      edtHumidity2.Text := dmMain.rxJMeasure.FieldByName('MeasHumidity').AsString;
      edtPressure2.Text := dmMain.rxJMeasure.FieldByName('MeasPressure').AsString;
      if rbtnWetTemp.Checked then
      begin
        lblHumidity2.Caption := 'Wet Temp'+#10+'Celsius';
      end
      else
      begin
        lblHumidity2.Caption := 'Humidity'+#10+'%';
        if rbtnDefaultHumidity.Checked then
        begin
           edtHumidity2.Value := 50;
           edtHumidity2.Color := clBtnFace;
           edtHumidity2.ReadOnly := True;
        end;
      end;
      if rbtnWetTemp.Checked then
      begin
        edtHumidity2.MaxValue := 50;
        edtHumidity2.MinValue := -30;
      end
      else
      begin
        edtHumidity2.MaxValue := 100;
        edtHumidity2.MinValue := 0;
      end;
    end;
  end
  else
  begin
    if chkMetsDial.Checked then
    begin
      memMetInstructions.Visible := False;
      edtAtDryTemp.Visible  := False;
      edtAtHumidity.Visible := False;
      edtAtPressure.Visible := False;
      lblAtDryTemp.Visible  := False;
      lblAtHumidity.Visible := False;
      lblAtPressure.Visible := False;
      edtToDryTemp.Visible  := False;
      edtToHumidity.Visible := False;
      edtToPressure.Visible := False;
      lblToDryTemp.Visible  := False;
      lblToHumidity.Visible := False;
      lblToPressure.Visible := False;
    end
    else
    begin
      memMetInstructions.Visible := True;
      memMetInstructions.Lines.Clear;
      memMetInstructions.Lines.Add('The Mets values must be actual observations, which will be meaned and corrected.');
      edtAtDryTemp.Visible  := True;
      edtAtHumidity.Visible := True;
      edtAtPressure.Visible := True;
      lblAtDryTemp.Visible  := True;
      lblAtHumidity.Visible := True;
      lblAtPressure.Visible := True;
      edtToDryTemp.Visible  := True;
      edtToHumidity.Visible := True;
      edtToPressure.Visible := True;
      lblToDryTemp.Visible  := True;
      lblToHumidity.Visible := True;
      lblToPressure.Visible := True;
      edtAtHumidity.Color := clWindow;
      edtAtHumidity.ReadOnly := False;
      edtToHumidity.Color := clWindow;
      edtToHumidity.ReadOnly := False;
      edtAtDryTemp.Text := dmMain.rxJMeasure.FieldByName('MeasDryTemp').AsString;
      edtAtHumidity.Text := dmMain.rxJMeasure.FieldByName('MeasHumidity').AsString;
      edtAtPressure.Text := dmMain.rxJMeasure.FieldByName('MeasPressure').AsString;
      edtToDryTemp.Text := dmMain.rxJMeasure.FieldByName('MeasDryTemp2').AsString;
      edtToHumidity.Text := dmMain.rxJMeasure.FieldByName('MeasHumidity2').AsString;
      edtToPressure.Text := dmMain.rxJMeasure.FieldByName('MeasPressure2').AsString;
      if rbtnWetTemp.Checked then
      begin
        lblAtHumidity.Caption := 'Wet Temp'+#10+'Celsius';
        lblToHumidity.Caption := 'Wet Temp'+#10+'Celsius';
      end
      else
      begin
        lblAtHumidity.Caption := 'Humidity'+#10+'%';
        lblToHumidity.Caption := 'Humidity'+#10+'%';
        if rbtnDefaultHumidity.Checked then
        begin
           edtAtHumidity.Value := 50;
           edtAtHumidity.Color := clBtnFace;
           edtAtHumidity.ReadOnly := True;
           edtToHumidity.Value := 50;
           edtToHumidity.Color := clBtnFace;
           edtToHumidity.ReadOnly := True;
        end;
      end;
    end;
    if rbtnWetTemp.Checked then
    begin
      edtAtHumidity.MaxValue := 50;
      edtAtHumidity.MinValue := -30;
      edtToHumidity.MaxValue := 50;
      edtToHumidity.MinValue := -30;
    end
    else
    begin
      edtAtHumidity.MaxValue := 100;
      edtAtHumidity.MinValue := 0;
      edtToHumidity.MaxValue := 100;
      edtToHumidity.MinValue := 0;
    end;
  end;
end;

(*******************************************************************************
@procedure edtTolerance4Exit(Sender: TObject);

@description
  Checks the validity of the Tolerance.
*******************************************************************************)
procedure TfrmJob.edtTolerance4Exit(Sender: TObject);
begin
  if not edtTolerance4.Valid then
  begin
    ShowMessage(edtTolerance4.ErrorMessage);
    edtTolerance4.SetFocus;
  end
  else
  begin
    dTolerance := edtTolerance4.Value;
  end;
end;

(*******************************************************************************
@procedure rbtnDownloadClick(Sender: TObject);

@description
  Displays a warning message when you download a text file, which includes Mets.
*******************************************************************************)
procedure TfrmJob.rbtnDownloadClick(Sender: TObject);
begin
  if chkMetsDial.Checked then
  begin
    lblDownloadWarning.Visible := False;
  end
  else
  begin
    lblDownloadWarning.Visible := rbtnDownload.Checked;
  end;
end;

(*******************************************************************************
@function CheckMetSettings(strMeasMetFlag, strHumidityType): Boolean;

@description
  Displays a warning message when you download a text file, which includes Mets.
*******************************************************************************)
function TfrmJob.hasMetSettingErrors(
 strMeasMetFlag: string;
 strHumidityType: string): Boolean;
var
  hasError: Boolean;
  strMetSettingError: string;
begin
  hasError := False;
  strMetSettingError := '';
  if strMeasMetFlag = 'Y' then
  begin
    if chkMetsDial.Checked then
    begin
      hasError := True;
      strMetSettingError := 'Text File contain Mets observations, but the ''Mets Dial Set'' checkbox has been checked.'+#10+
      'To include Mets observations you must uncheck the ''Mets Dial Set'' checkbox.'
    end;
    if (strHumidityType = 'W') and (not hasError) then
    begin
      if not rbtnWetTemp.Checked then
      begin
         hasError := True;
         strMetSettingError := 'Text File contain Wet temperatures, but the ''Wet Temp'' option in the Humidity Panel has not been set.'+#10+
                               'To include Wet temperatures you must select the ''Wet Temp'' option in the Humidity Panel.'
      end;
    end;
    if (strHumidityType = 'R') and (not hasError) then
    begin
      if not rbtnHumidity.Checked then
      begin
         hasError := True;
         strMetSettingError := 'Text File contain Relative Humidity observations, but the ''Relative Humidity'' option in the Humidity Panel has not been set.'+#10+
         'To include relative humidities you must select the ''Relative Humidity'' option in the Humidity Panel.'
      end;
    end;
    if (strHumidityType = 'D') and (not hasError) then
    begin
      if not rbtnDefaultHumidity.Checked then
      begin
        hasError := True;
        strMetSettingError := 'You must select the ''Default RH'' option in the Humidity Panel if the Text File contain no Humidity observations .'
      end;
    end;
  end
  else
  begin
    if (not chkMetsDial.Checked) and (not hasError) then
    begin
      hasError := True;
      strMetSettingError := 'The Text File contain no Mets observations, but the ''Mets Dial Set'' box is unchecked.'+#10+
                            'To load the observations from this Text file you must check the ''Mets Dial Set'' checkbox'+#10+
                            'to indicate that the Mets have already been dialed into the EDM instrument.'
    end;
  end;
  if hasError then
  begin
    MessageDlg(strMetSettingError,mtError,[mbOK],0);
  end;
  Result := hasError;
end;

(*******************************************************************************
@function vedtNumberMetSetsExit(Sender: TObject);

@description
  Ensures that the number of Met sets is either 1 or 2.
*******************************************************************************)
procedure TfrmJob.vedtNumberMetSetsExit(Sender: TObject);
begin
  if not ((vedtNumberMetSets.Value = 1) or (vedtNumberMetSets.Value = 2)) then
  begin
    MessageDlg('Number of Met Sets must be either 1 or 2',mtWarning,[mbOK],0);
    vedtNumberMetSets.SetFocus;
    Abort;
  end;
end;


(*******************************************************************************
@procedure SetupMetsPage

@description
  Formats the Mets page
*******************************************************************************)
procedure TfrmJob.SetupMetsPage;
var
  dUnitLength, dModFreq, dRefractiveIndex: Double;
begin
  chkMetsDial.Enabled := True;
  rbtnComputeRefractiveIndex.Checked := True;
  gbNoFrequency.Visible := False;

  rbtnComputeRefractiveIndex.Checked :=
  (
    not dmMain.rxAtInstrumentModelModelUnitLength.isNull and
    (Trim(dmMain.rxAtInstrumentModelModelUnitLength.AsString) <> '') and
     (dmMain.rxAtInstrumentModelModelUnitLength.AsFloat > 0)
  ) or
  (
    not dmMain.rxAtInstrumentModelModelModFreq.isNull and
    (Trim(dmMain.rxAtInstrumentModelModelModFreq.AsString) <> '') and
    (dmMain.rxAtInstrumentModelModelModFreq.AsFloat > 0)
  );

  if rbtnComputeRefractiveIndex.Checked then
  begin
    dmBase.rxDefault.Locate('Description','Reference Refractive Index',[]);

    dUnitLength := dmMain.rxAtInstrumentModelModelUnitLength.AsFloat;
    dModFreq := dmMain.rxAtInstrumentModelModelModFreq.AsFloat;
    dRefractiveIndex :=
             VELOCITY_LIGHT / (2.0 * dUnitLength * dModFreq);
    pnlComputedRefractiveIndex.Visible := True;
    pnlComputedRefractiveIndex.Caption := Format('%8.6f',[dRefractiveIndex]);

    chkMetsDial.Enabled :=
      not dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean;
  end
  else
  begin
    pnlComputedRefractiveIndex.Caption := '';
    pnlComputedRefractiveIndex.Visible := False;
    chkMetsDial.Checked := True;
    chkMetsDial.Enabled := False;
    pnlMets.Visible := False;
    lblDownloadWarning.Visible := False;
    lblSuggestion.Visible := False;
    gbNoFrequency.Visible := True;
  end;

  if dmMain.rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean then
  begin
    chkMetsDial.Checked := True;
    chkMetsDial.Enabled := False;
    gbPulse.Visible := True;
    pnlMets.Visible := False;
    lblDownloadWarning.Visible := False;
    gbNoFrequency.Visible := False;
  end
  else
  begin
    gbPulse.Visible := False;
  end;
end;

procedure TfrmJob.rbtnComputeRefractiveIndexClick(Sender: TObject);
begin
  if rbtnComputeRefractiveIndex.Checked then
  begin
    dbedtManuRefractiveIndex.Color := clBtnFace;
    dbedtDefaultRefractiveIndex.Color := clBtnFace;
    dbedtManuRefractiveIndex.ReadOnly := True;
    dbedtDefaultRefractiveIndex.ReadOnly := True;
  end;
  if rbtnManuRefractiveIndex.Checked then
  begin
    dbedtManuRefractiveIndex.Color := clWindow;
    dbedtDefaultRefractiveIndex.Color := clBtnFace;
    dbedtManuRefractiveIndex.ReadOnly := False;
    dbedtDefaultRefractiveIndex.ReadOnly := True;
  end;
  if rbtnDefaultRefractiveIndex.Checked then
  begin
    dbedtManuRefractiveIndex.Color := clBtnFace;
    dbedtDefaultRefractiveIndex.Color := clWindow;
    dbedtManuRefractiveIndex.ReadOnly := True;
    dbedtDefaultRefractiveIndex.ReadOnly := False;
  end;
end;

procedure TfrmJob.pnlComputedRefractiveIndexClick(Sender: TObject);
begin
  rbtnComputeRefractiveIndex.Checked := True;
end;

procedure TfrmJob.dbedtManuRefractiveIndexClick(Sender: TObject);
begin
  rbtnManuRefractiveIndex.Checked := True;
end;

procedure TfrmJob.dbedtDefaultRefractiveIndexClick(Sender: TObject);
begin
  rbtnDefaultRefractiveIndex.Checked := True;
end;

procedure TfrmJob.edtRefractiveIndexChange(Sender: TObject);
begin
  if Trim(edtRefractiveIndex.Text) <> '' then
  begin
    if not IsFloat(edtRefractiveIndex.Text) then
    begin
      ErrorMsg('You must enter a valid float value.');
    end;
  end;
end;

procedure TfrmJob.btnNextLeastUncertaintyClick(Sender: TObject);
begin
  if ChangeAtInstrument then
  begin
    sPageNumber := GetPageNumber(tsEDM.Caption);
    lblPageEDM.Caption := 'Page '+IntToStr(sPageNumber);
    pcMain.ActivePage := tsEDM;
  end;
end;

procedure TfrmJob.btnBackLeastUncertaintyClick(Sender: TObject);
begin
  sPageNumber := GetPageNumber(tsAccreditation.Caption);
  lblPageAccreditation.Caption := 'Page '+IntToStr(sPageNumber);
  pcMain.ActivePage := tsAccreditationPage;
end;

procedure TfrmJob.chkEDMLUM1Click(Sender: TObject);
begin
  if doEvents then
  begin
    with dmBase.rxStandard do
    begin
      Edit;
      if chkEDMLUM1.Checked then
      begin
        FieldByName('Description').AsString := 'LUM';
      end
      else
      begin
        FieldByName('Description').AsString := 'Actual uncertainty';
      end;
      Post;
    end;
  end;
end;

procedure TfrmJob.chkBaselineLUM1Click(Sender: TObject);
begin
  if doEvents then
  begin
    with dmBase.rxStandard do
    begin
      Edit;
      if chkBaselineLUM1.Checked then
      begin
        FieldByName('Description').AsString := 'LUM';
      end
      else
      begin
        FieldByName('Description').AsString := 'Actual uncertainty';
      end;
      Post;
    end;
  end;
end;

procedure TfrmJob.btnHelpLeastUncertaintyClick(Sender: TObject);
begin
  Application.HelpContext(1170);
end;

function TfrmJob.GetPageNumber(strTabsheet: string): Integer;
var
  doContinue: Boolean;
  i: integer;
begin
  i := 0;
  doContinue := True;
  while doContinue and (i < TabsheetList.Count) do
  begin
    if TabsheetList[i] = strTabsheet then
    begin
      doContinue := False;
    end;
    Inc(i)
  end;
  if doContinue then
  begin
    TabsheetList.Add(strTabsheet);
    Inc(i);
  end;
  Result := i;
end;


(*******************************************************************************
@procedure SetDefaultBaselineUncertainties(Table: TDataset);

@description
  This procedure sets default values for the a priori uncertainties (Baseline calibrations only)
*******************************************************************************)
procedure TfrmJob.GetBaselineUncertainties;
var
 sBaselineID: Integer;
begin
  sBaseLineId := dmMain.rxJob.FieldByName('BaselineId').AsInteger;
  dmBase.rxJobUncertainty.Edit;
  with dmBase.rxBaselineDefault do
  begin
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Temperature']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('Temperature').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Pressure']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('Pressure').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Instrument height above pillar']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('InstrumentHeight').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Reflector height above pillar']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('ReflectorHeight').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Humidity']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('Humidity').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Instrument centring']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('InstrumentCentring').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Reflector centring']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('ReflectorCentring').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Pillar offset']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('PillarOffset').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Pillar Height Difference']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('PillarHeightDiff').Value := FieldByName('Default').Value;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Rejection Criterion']),[]) then
    begin
      dmBase.rxJobUncertainty.FieldByName('RejectionCriterion').Value := FieldByName('Default').Value;
    end;
  end;
  dmBase.rxJobUncertainty.Post;
end;

(*******************************************************************************
@procedure SaveBaselineUncertainties

@description
  Saves Baseline uncertainties. These uncertainties will now be used for
  all baseline calibrations on this baseline.
*******************************************************************************)

procedure TfrmJob.SaveBaselineUncertainties;
var
 sBaselineID: Integer;
begin
  doEvent := False;  // Set False, otherwise you can not append to rxBaselineDefault
  sBaseLineId := dmMain.rxJob.FieldByName('BaselineId').AsInteger;
  with dmBase.rxBaselineDefault do
  begin
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Temperature']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Temperature').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Temperature';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Temperature').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Pressure']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Pressure').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Pressure';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Pressure').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Instrument height above pillar']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('InstrumentHeight').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Instrument height above pillar';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('InstrumentHeight').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Reflector height above pillar']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('ReflectorHeight').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Reflector height above pillar';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('ReflectorHeight').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Humidity']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Humidity').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Humidity';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Humidity').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Instrument centring']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('InstrumentCentring').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Instrument centring';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('InstrumentCentring').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Reflector centring']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('ReflectorCentring').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Reflector centring';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Reflectorcentring').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Pillar offset']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('PillarOffset').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Pillar offset';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('Pillaroffset').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Pillar Height Difference']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('PillarHeightDiff').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Pillar Height Difference';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('PillarHeightDiff').Value;
      Post;
    end;
    if Locate('BaselineID; Description', VarArrayOf([sBaselineID, 'B_Rejection Criterion']),[]) then
    begin
      Edit;
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('RejectionCriterion').Value;
      Post;
    end
    else
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaselineID;
      FieldByName('Description').AsString := 'B_Rejection Criterion';
      FieldByName('Default').Value := dmBase.rxJobUncertainty.FieldByName('RejectionCriterion').Value;
      Post;
    end;
  end;
  doEvent := True;
end;

procedure TfrmJob.PositionGbRejection;
begin
  if rbtnBaseline.Checked then
  begin
    gbRejection.Left := 8;
    gbRejection.Top := 362;
    gbSpecifications.Visible := False;
  end
  else
  begin
    gbRejection.Left := 224;
    gbRejection.Top := 266;
    gbSpecifications.Visible := False;
  end;
end;

end.
