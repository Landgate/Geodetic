(*******************************************************************************
@FormUnit BSEBase2

@Description
  A wizard guides you in creating, deleting and archiving Baselines.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BSEBase2;

interface

uses
  BseMisc,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbdatetimepicker, BtnEdit, StdCtrls, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, Mask, wwdbedit, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, Db, Wwdatsrc, wwdblook, RxMemDS,
  RXCtrls, RXDBCtrl, DBGrids, RxLookup, ValidEdt, WwDBGrd2, DBCtrls, Variants;

type
  PXBase  = ^TXBase;
  TXBase = Record
    Id : Integer;
    ContainsJob : Boolean;
    ChangedData : Boolean;
    isNewBaseline : Boolean;
  end;

  TfrmBaseline = class(TForm)
    pcBaseline: TPageControl;
    tsBaseline: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    dbgridbaseline: TwwDBGrid;
    btnClose1: TBitBtn;
    btnNext1: TBitBtn;
    btnHelp1: TBitBtn;
    wwDBEdit4: TwwDBEdit;
    tsDetails: TTabSheet;
    lblBaselineDetails: TLabel;
    btnClose2: TBitBtn;
    btnNext2: TBitBtn;
    btnBack2: TBitBtn;
    dbedtName: TwwDBEdit;
    btnHelp2: TBitBtn;
    tsPillar: TTabSheet;
    btnBack3: TBitBtn;
    btnClose3: TBitBtn;
    btnHelp3: TBitBtn;
    navBaseline: TwwDBNavigator;
    navBaselineFirst: TwwNavButton;
    navBaselinePriorPage: TwwNavButton;
    navBaselinePrior: TwwNavButton;
    navBaselineNext: TwwNavButton;
    navBaselineNextPage: TwwNavButton;
    navBaselineLast: TwwNavButton;
    navBaselineRefresh: TwwNavButton;
    GroupBox1: TGroupBox;
    rbtnCurrent: TRadioButton;
    rbtnArchived: TRadioButton;
    lblBaselineLocation: TLabel;
    lblBaselineAuthority: TLabel;
    lblReference: TLabel;
    lblEllipsoid: TLabel;
    lblConfLevel: TLabel;
    lblRefHeight: TLabel;
    lblHumidity: TLabel;
    lblCalibrationDate: TLabel;
    edtCalibrationRef: TEdit;
    edtConfLevel: TEdit;
    gbStandards: TGroupBox;
    lblConstant: TLabel;
    lblPPM: TLabel;
    edtStdICPPM: TEdit;
    bedtStdICConstant: TBtnEdit;
    edtRelHumidity: TEdit;
    bedtLegalHeight: TBtnEdit;
    lblBaseline: TLabel;
    dbedtLocation: TwwDBEdit;
    dbedtAuthority: TwwDBEdit;
    pickDate: TDateTimePicker;
    lblPillarHeader: TLabel;
    lblName3: TLabel;
    dbedtName3: TwwDBEdit;
    gbInclude: TGroupBox;
    chkCoord: TCheckBox;
    chkErrorEllipse: TCheckBox;
    chkHeightUncertainty: TCheckBox;
    tsSequentialDistances: TTabSheet;
    lblDistancesFromPIllar1Header: TLabel;
    lblName4: TLabel;
    dbedtName4: TwwDBEdit;
    dbedtHeight: TwwDBEdit;
    lblHeight: TLabel;
    dbgridDistances: TwwDBGrid;
    dbnavDistance: TwwDBNavigator;
    dbnavDistanceFirst: TwwNavButton;
    dbnavDistancePriorPage: TwwNavButton;
    dbnavDistancePrior: TwwNavButton;
    dbnavDistanceNext: TwwNavButton;
    dbnavDistanceNextPage: TwwNavButton;
    dbnavDistanceLast: TwwNavButton;
    dbnavDistanceEdit: TwwNavButton;
    dbnavDistancePost: TwwNavButton;
    dbnavDistanceCancel: TwwNavButton;
    dbnavDistanceRefresh: TwwNavButton;
    btnNext3: TBitBtn;
    btnClose4: TBitBtn;
    btnHelp4: TBitBtn;
    btnBack4: TBitBtn;
    lblWarning: TLabel;
    tsArchivedBaselineDetails: TTabSheet;
    lblArchivedBaselineHeader: TLabel;
    lblArchivedBaselineLocation: TLabel;
    lblArchivedBaselineAuthority: TLabel;
    lblArchivedReference: TLabel;
    lblArchivedEllipsoid: TLabel;
    lblArchivedConfLevel: TLabel;
    lblArchivedCertHeight: TLabel;
    lblArchivedHumidity: TLabel;
    lblArchivedCalibrationDate: TLabel;
    lblArchivedBaselineName: TLabel;
    dbedtArchivedBaselineName: TwwDBEdit;
    GroupBox2: TGroupBox;
    lblArchivedConstant: TLabel;
    lblArchivedPPM: TLabel;
    dbedtArchivedBaselineLocation: TwwDBEdit;
    dbedtArchivedBaselineAuthority: TwwDBEdit;
    dbedtArchivedCalibrationDate: TwwDBEdit;
    dbedtArchivedConfLevel: TwwDBEdit;
    dbedtArchivedCertHeight: TwwDBEdit;
    dbedtArchivedReference: TwwDBEdit;
    dbedtArchivedConstant: TwwDBEdit;
    dbedtArchivedPPM: TwwDBEdit;
    dbedtArchivedHumidity: TwwDBEdit;
    dbedtArchivedEllipsoid: TwwDBEdit;
    btnHelpArchivedBaseline: TBitBtn;
    btnNextArchived2: TBitBtn;
    btnBackArchived2: TBitBtn;
    lblCloseArchivedBaseline: TBitBtn;
    tsArchivedPillars: TTabSheet;
    lblArchivedPillarsHeader: TLabel;
    lblArchivedBaseline: TLabel;
    lblArchivedHeight: TLabel;
    dbgridArchivedPillars: TwwDBGrid;
    dbnavArchivedPillars: TwwDBNavigator;
    dbnavArchivedPillarsFirst: TwwNavButton;
    dbnavArchivedPillarsPage: TwwNavButton;
    dbnavArchivedPillarsPrior: TwwNavButton;
    dbnavArchivedPillarsNext: TwwNavButton;
    dbnavArchivedPillarsNextPage: TwwNavButton;
    dbnavArchivedPillarsLast: TwwNavButton;
    wwDBEdit14: TwwDBEdit;
    GroupBox3: TGroupBox;
    chkArchivedCoord: TCheckBox;
    chkArchivedErrorEllips: TCheckBox;
    chkArchivedHeightUncertainty: TCheckBox;
    wwDBEdit15: TwwDBEdit;
    btnHelpArchivedPillars: TBitBtn;
    btnNextArchived3: TBitBtn;
    btnBackArchived3: TBitBtn;
    BitBtn8: TBitBtn;
    lblArchivedBaselineNote: TLabel;
    lblArchivedPillarsNote: TLabel;
    DBStatusLabel1: TDBStatusLabel;
    lblUsedByJob: TLabel;
    dblcEllipsoid: TRxDBLookupCombo;
    dbgridPillars: TwwDBGrid2;
    DBStatusLabel2: TDBStatusLabel;
    DBStatusLabel3: TDBStatusLabel;
    tsDistancesFromPillar1: TTabSheet;
    Label37: TLabel;
    Label38: TLabel;
    wwDBEdit17: TwwDBEdit;
    dbgridDistance2: TwwDBGrid;
    dbnavDistanceA: TwwDBNavigator;
    wwNavButton7: TwwNavButton;
    wwNavButton42: TwwNavButton;
    wwNavButton43: TwwNavButton;
    wwNavButton44: TwwNavButton;
    wwNavButton45: TwwNavButton;
    wwNavButton46: TwwNavButton;
    wwNavButton47: TwwNavButton;
    wwNavButton48: TwwNavButton;
    wwNavButton49: TwwNavButton;
    wwNavButton50: TwwNavButton;
    btnHelpSeq: TBitBtn;
    btnCloseDistFromPillar1: TBitBtn;
    btnBackSeq: TBitBtn;
    RxDistance2: TRxMemoryData;
    rxDistance2rxFromPillar: TStringField;
    rxDistance2rxToPillar: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    GroupBox4: TGroupBox;
    rbtnFromFirstPillar2: TRadioButton;
    rbtnSeqDistances2: TRadioButton;
    GroupBox5: TGroupBox;
    rbtnFromFirstPillar: TRadioButton;
    rbtnSeqDistances: TRadioButton;
    dsRXDistance2: TwwDataSource;
    DBStatusLabel4: TDBStatusLabel;
    tsArchivedDistances: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    wwDBEdit16: TwwDBEdit;
    Label36: TLabel;
    dbgridArchivedDistances: TwwDBGrid;
    dbnavArchivedDistances: TwwDBNavigator;
    dbnavArchivedDistancesFirst: TwwNavButton;
    dbnavArchivedDistancesPriorPage: TwwNavButton;
    dbnavArchivedDistancesPrior: TwwNavButton;
    dbnavArchivedDistancesNext: TwwNavButton;
    dbnavArchivedDistancesNextPage: TwwNavButton;
    dbnavArchivedDistancesLast: TwwNavButton;
    BitBtn11: TBitBtn;
    btnBackArchived4: TBitBtn;
    GroupBox6: TGroupBox;
    pnlBaselineAccuracy: TPanel;
    btnCreateNewBaseline: TBitBtn;
    btnDeleteBaseline: TBitBtn;
    lblNote2: TLabel;
    lblNote1: TLabel;
    lblNote3: TLabel;
    lblNote4: TLabel;
    dbnavDistance2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    dbnavDistanceA2: TwwDBNavigator;
    dbnavDistanceA2First: TwwNavButton;
    dbnavDistanceA2PriorPage: TwwNavButton;
    dbnavDistanceA2Prior: TwwNavButton;
    dbnavDistanceA2Next: TwwNavButton;
    dbnavDistanceA2NextPage: TwwNavButton;
    dbnavDistanceA2Last: TwwNavButton;
    Panel1: TPanel;
    dbnavPillars2: TwwDBNavigator;
    dbnavPillars2First: TwwNavButton;
    dbnavPillars2PriorPage: TwwNavButton;
    dbnavPillars2Prior: TwwNavButton;
    dbnavPillars2Next: TwwNavButton;
    dbnavPillars2NextPage: TwwNavButton;
    dbnavPillars2Last: TwwNavButton;
    dbnavPillars: TwwDBNavigator;
    nbFirst: TwwNavButton;
    nbPriorPage: TwwNavButton;
    nbPrior: TwwNavButton;
    nbNext: TwwNavButton;
    nbNextPage: TwwNavButton;
    nbLast: TwwNavButton;
    nbDelete: TwwNavButton;
    nbEdit: TwwNavButton;
    nbPost: TwwNavButton;
    nbCancel: TwwNavButton;
    nbRefresh: TwwNavButton;
    nbAppend: TwwNavButton;
    GroupBox7: TGroupBox;
    rbtnArchivedFromFirstPillar: TRadioButton;
    rbtnSeqArchivedDistances: TRadioButton;
    tsArchivedDistancesFromPillar1: TTabSheet;
    lblArchivedDistancesHeader: TLabel;
    gbDistanceSequence: TGroupBox;
    rbtnArchivedFromFirstPillar2: TRadioButton;
    rbtnSeqArchivedDistances2: TRadioButton;
    lblArchivedDistancesNote: TLabel;
    btnCloseArchivedDistances: TBitBtn;
    btnBackArchivedDistances: TBitBtn;
    lblArchivedBaseline1: TLabel;
    dbedtArchivedBaseline1: TwwDBEdit;
    dbgridCertifiedDist: TwwDBGrid;
    dbnavCertifiedDist: TwwDBNavigator;
    dbnavCertifiedDistFirst: TwwNavButton;
    dbnavCertifiedDistPriorPage: TwwNavButton;
    dbnavCertifiedDistPrior: TwwNavButton;
    dbnavCertifiedDistNext: TwwNavButton;
    dbnavCertifiedDistNextPage: TwwNavButton;
    dbnavCertifiedDistLast: TwwNavButton;
    lblAuthorityAddress: TLabel;
    dbedtAuthorityAddress: TwwDBEdit;
    btnArchiveBaseline: TBitBtn;
    cbEditPillarNumber: TCheckBox;
    lblArchivedBaselineAuthorityAddress: TLabel;
    dbedtArchivedBaselineAuthorityAddress: TwwDBEdit;
    tsDefaults: TTabSheet;
    lblUncertaintyEDM: TLabel;
    btnCloseDefaults: TBitBtn;
    btnNextDefaults: TBitBtn;
    btnBackDefaults: TBitBtn;
    btnHelpDefaults: TBitBtn;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    pnlBaselineAccuracy2: TPanel;
    Label5: TLabel;
    tsArchivedDefaults: TTabSheet;
    BitBtn1: TBitBtn;
    btnNextArchivedDefaults: TBitBtn;
    btnBackArchivedUncertainties: TBitBtn;
    btnCloseUncertainties: TBitBtn;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label9: TLabel;
    pnlArchivedBaselineAccuracy2: TPanel;
    Label10: TLabel;
    pcArchivedDefaultUncertainties: TPageControl;
    tsArchivedDefaultEDMUncertainties: TTabSheet;
    tsArchivedDefaultBaselineUncertainties: TTabSheet;
    dbgridDefaultUncertaintiesEDM: TwwDBGrid;
    DBNavigator3: TDBNavigator;
    dbgridDefaultUncertaintiesBase: TwwDBGrid;
    DBNavigator4: TDBNavigator;
    pcDefaultUncertainties: TPageControl;
    tsDefaultEDMUncertainties: TTabSheet;
    dbgridDefaultEDMUncertainty: TwwDBGrid;
    DBNavigator1: TDBNavigator;
    tsDefaultBaselineUncertainties: TTabSheet;
    dbgridDefaultBaselineUncertainty: TwwDBGrid;
    DBNavigator5: TDBNavigator;
    GroupBox8: TGroupBox;
    pnlArchivedBaselineAccuracy: TPanel;
    procedure btnNext1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNext2Click(Sender: TObject);
    procedure btnNext3Click(Sender: TObject);
    procedure btnBack2Click(Sender: TObject);
    procedure btnBack3Click(Sender: TObject);
    procedure btnBack4Click(Sender: TObject);
    procedure btnClose1Click(Sender: TObject);
    procedure rbtnArchivedClick(Sender: TObject);
    procedure rbtnCurrentClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgridPillarsColExit(Sender: TObject);
    procedure btnClose4Click(Sender: TObject);
    procedure ChangedValue(Sender: TObject);
    procedure btnNextArchived2Click(Sender: TObject);
    procedure btnNextArchived3Click(Sender: TObject);
    procedure btnBackArchived2Click(Sender: TObject);
    procedure btnBackArchived3Click(Sender: TObject);
    procedure btnBackArchived4Click(Sender: TObject);
    procedure chkArchivedCoordClick(Sender: TObject);
    procedure chkArchivedErrorEllipsClick(Sender: TObject);
    procedure chkArchivedHeightUncertaintyClick(Sender: TObject);
    procedure edtConfLevelExit(Sender: TObject);
    procedure edtRelHumidityExit(Sender: TObject);
    procedure bedtLegalHeightChange(Sender: TObject);
    procedure dbgridPillarsExit(Sender: TObject);
    procedure dbgridDistancesColExit(Sender: TObject);
    procedure btnClose3Click(Sender: TObject);
    procedure btnHelp1Click(Sender: TObject);
    procedure btnHelp2Click(Sender: TObject);
    procedure btnHelp3Click(Sender: TObject);
    procedure btnHelp4Click(Sender: TObject);
    procedure rbtnFromFirstPillarClick(Sender: TObject);
    procedure rbtnSeqDistances2Click(Sender: TObject);
    procedure dbgridDistance2ColExit(Sender: TObject);
    procedure btnBackSeqClick(Sender: TObject);
    procedure btnCloseDistFromPillar1Click(Sender: TObject);
    procedure RxDistance2BeforeDelete(DataSet: TDataSet);
    procedure RxDistance2BeforePost(DataSet: TDataSet);
    procedure RxDistance2BeforeInsert(DataSet: TDataSet);
    procedure RxDistance2AfterPost(DataSet: TDataSet);
    procedure btnHelpArchivedBaselineClick(Sender: TObject);
    procedure btnHelpArchivedPillarsClick(Sender: TObject);
    procedure btnCreateNewBaselineClick(Sender: TObject);
    procedure btnDeleteBaselineClick(Sender: TObject);
    procedure dbedtNameExit(Sender: TObject);
    procedure dbedtNameChange(Sender: TObject);
    procedure dbedtAuthorityChange(Sender: TObject);
    procedure dbedtLocationChange(Sender: TObject);
    procedure btnAppendClick(Sender: TObject);
    procedure nbAppendClick(Sender: TObject);
    procedure rbtnArchivedFromFirstPillarClick(Sender: TObject);
    procedure rbtnSeqArchivedDistances2Click(Sender: TObject);
    procedure btnArchiveBaselineClick(Sender: TObject);
    procedure cbEditPillarNumberClick(Sender: TObject);
    procedure PillarColumnsClick(Sender: TObject);
    procedure btnNextDefaultsClick(Sender: TObject);
    procedure btnBackDefaultsClick(Sender: TObject);
    procedure dbgridUncertaintyCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure btnHelpDefaultsClick(Sender: TObject);
    procedure btnClose2Click(Sender: TObject);
    procedure btnNextArchivedDefaultsClick(Sender: TObject);
    procedure btnBackArchivedUncertaintiesClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowErrors(ErrorList : TStringList);
    function HasValidDistance : Boolean;
    function HasValidDistances : Boolean;
    function UsedByJob : Boolean;
    function HasValidPillars : Boolean;
    procedure FocusOnDistanceRecord;
    procedure SetPillarColumnsVisible;
    function IsBaselineNameDuplicated : Boolean;
    procedure ConvertDistancesToFirstPillar;
    procedure ConvertDistancesToSequence;
    function HasDistanceSequenceError : Boolean;
    procedure UpdateBaselineAccuracy;
    function GetLastId(rxTable: TRxMemoryData; IDName: String): Integer;
    procedure SaveFromFilteredTable(
      FromTable: TRxMemoryData;
      ToTable: TRxMemoryData;
      IDFieldName: String);
    procedure SaveNewData;
    procedure SaveBaseline;
    function CheckBaseline: Boolean;
    procedure DeleteBaseline;
    function CheckBaselineDesign : Boolean;
  public
    { Public declarations }
    sBaselineID : Integer;
    sEllipsID : Integer;
    isCurrent : Boolean;
    isNewRecord : Boolean;
    doEvents : Boolean;
    ErrorList : TStringList;
    sNextPillarNumber : Integer;
    aBase : PXBase;
    BaseList: TList;
    isUsedByJob : Boolean;
    hasChanged : Boolean;
    hasRxChanged : Boolean;
    sRxPillarId : Integer;
    sRxDistanceId : Integer;
    strGridName : String;
    strPreviousBaselineName :String;
    hasRxDistFromPillar1Changed: Boolean;
    hasNewBaseline: Boolean;
    sNewBaselineId : Integer;
    sNewBaseId : Integer;
    doCalibrateBaseline: Boolean;
    sNewPillarID: Integer;
    sNewDistanceID: Integer;
  end;

var
  frmBaseline: TfrmBaseline;

implementation

uses BSEdmMain, BseDM;

{$R *.DFM}

(*******************************************************************************
@procedure btnNext1Click(Sender: TObject);

@description
  Opens the next page of the wizard where you can view more details if the selected baseline.
*******************************************************************************)
procedure TfrmBaseline.btnNext1Click(Sender: TObject);
begin
  hasNewBaseLine := False;
  isUsedByJob := UsedByJob;

  sEllipsID := dmBase.rxFilteredBaseline.FieldByName('EllipsID').AsInteger;
  sBaselineID := dmBase.rxFilteredBaseline.FieldByName('BaselineID').AsInteger;

  if dmBase.rxFilteredBaseline.FieldByName('BaseLineArchiveFlag').AsString = 'A' then
  begin
    with dmBase.rxBaselineAccuracy do
    begin
      if Locate('BaselineID',IntToStr(sBaseLineID),[]) then
      begin
        pnlArchivedBaselineAccuracy.Caption := Format('%8.2f mm + %8.2f ppm',
        [FieldByName('UncertaintyConstant').AsFloat,
        FieldByName('UncertaintyScale').AsFloat]);
      end
      else
      begin
        pnlArchivedBaselineAccuracy.Caption := '';
      end;
    end;
    pnlArchivedBaselineAccuracy2.Caption :=  pnlArchivedBaselineAccuracy.Caption;
    dmBase.rxEllipsoid.Locate('EllipsID',dmBase.rxFilteredBaseline.FieldByName('EllipsID').AsString,[]);
    pcBaseline.ActivePage := tsArchivedBaselineDetails;
    btnNextArchived2.SetFocus
  end
  else
  begin
    with dmBase.rxBaselineAccuracy do
    begin
      if Locate('BaselineID',IntToStr(sBaseLineID),[]) then
      begin
        pnlBaselineAccuracy.Caption := Format('%8.2f mm + %8.2f ppm',
        [FieldByName('UncertaintyConstant').AsFloat,
        FieldByName('UncertaintyScale').AsFloat]);
      end
      else
      begin
        pnlBaselineAccuracy.Caption := '';
      end;
      pnlBaselineAccuracy2.Caption := pnlBaselineAccuracy.Caption;
    end;
    lblBaselineDetails.Caption := 'Baseline Details';
    if isUsedByJob then
    begin
      lblNote1.Visible := False;
      lblNote2.Visible := False;
      lblNote3.Visible := False;
      lblNote4.Visible := False;
      dbedtName.Color := clBtnFace;
      dbedtName.Readonly := True;
    end
    else
    begin
      lblNote1.Visible := True;
      lblNote2.Visible := True;
      lblNote3.Visible := True;
      lblNote4.Visible := True;
    end;

    pcBaseline.ActivePage := tsDetails;
    with dmBase.rxFilteredBaseline do
    begin
      try
        pickDate.Date :=  StrToDate(FieldByName('BaseLineCalibrationDate').AsString);
      except
        MessageDlg('Error in Baseline Database.'+#10+#10+
                   'The Baseline Calibration Date '''+
                   FieldByName('BaseLineCalibrationDate').AsString+
                   ''' is not in the correct date format.'+#10+
                   'The correct Date Format = ''DD/MM/YYYY'' (Example 08/10/2000)'+#10+
                   'To correct this date, select the correct date from the ''Calibration Date'' Edit Box.',
                   mtWarning,[mbOK],0);
      end;
      bedtLegalHeight.Value   := FieldByName('BaseLegalHeight').AsFloat;
      edtRelHumidity.Text     := FieldByName('BaseRelativeHumidity').AsString;
      edtConfLevel.Text := FieldByName('BaseLineConfLevel').AsString;
      edtCalibrationRef.Text := FieldByName('BaseLineCalibrationRef').AsString;
    end;
    pickDate.SetFocus;
  end;
end;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  1. Initialises the settings.
  2. Displays the first page of the wizard
*******************************************************************************)
procedure TfrmBaseline.FormShow(Sender: TObject);
begin
  dmBase.doCancel := False;
  rxDistance2.Active := True;
  sNewBaseID := 0;
  hasNewBaseline := False;
  rxDistance2.Active := True;
  strGridName := '';
  hasRxChanged := False;
  BaseList := TList.Create;
  ErrorList := tStringList.Create;
  isCurrent := True;
  isNewRecord := False;
  doEvents := True;

  dmBase.FilterBaseline('A');

  if dmBase.rxFilteredBaseline.isEmpty then
  begin
    rbtnArchived.Enabled := False;
  end
  else
  begin
    rbtnArchived.Enabled := True;
  end;

  dmBase.FilterBaseline('C');

  chkCoord.Checked := False;
  chkErrorEllipse.Checked := False;
  chkHeightUncertainty.Checked := False;

  with dmBase.rxFilteredPillar do
  begin
    FieldByname('PillarLatitude').Visible := False;
    FieldByname('PillarLongitude').Visible := False;
    FieldByname('PillarEllipsARadius').Visible := False;
    FieldByname('PillarEllipsBRadius').Visible := False;
    FieldByname('PillarEllipsOrient').Visible := False;
    FieldByname('PillarHtStdDev').Visible := False;
  end;
  pcBaseline.ActivePage := tsBaseline;

  dbgridbaseline.Color := clBtnFace;
  dbgridbaseline.ReadOnly := True;
  dmBase.rxFilteredDistance.FieldByName('DistID').Visible := False;
  rxDistance2.FieldByName('DistID').Visible := False;

  rbtnCurrent.Checked := True;
  btnDeleteBaseline.Caption := '&Delete Baseline';
  btnArchiveBaseline.Caption := '&Archive Baseline';
  if dmBase.rxFilteredBaseline.isEmpty then
  begin
    btnDeleteBaseline.Enabled := False;
    btnArchiveBaseline.Enabled := False;
    btnNext1.Enabled := False;
  end
  else
  begin
    btnDeleteBaseline.Enabled := True;
    btnArchiveBaseline.Enabled := True;
    btnNext1.Enabled := True;
  end;
  pcArchivedDefaultUncertainties.ActivePage := tsArchivedDefaultEDMUncertainties;
end;

(*******************************************************************************
@procedure btnNext2Click(Sender: TObject);

@description
  1. Validates the baseline details.
  2. Opens the next page of the wizard where you can view the pillar information.
*******************************************************************************)
procedure TfrmBaseline.btnNext2Click(Sender: TObject);
begin
  nbDelete.Visible := not isUsedByJob;
  nbAppend.Visible := not isUsedByJob;
  dmBase.doCancel := isUsedByJob;
  if CheckBaseline then
  begin
    with dmbase.rxFilteredBaseline do
    begin
      Edit;
      FieldByName('BaseLineCalibrationDate').AsString := DateToStr(pickDate.Date);
      FieldByName('BaseLegalHeight').AsFloat := bedtLegalHeight.Value;
      FieldByName('BaseRelativeHumidity').AsString := edtRelHumidity.Text;
      FieldByName('BaseStdICConstant').AsFloat := 0.004;
      FieldByName('BaseStdICPPM').AsFloat := 20;
      FieldByName('BaseLineConfLevel').AsString := edtConfLevel.Text;
      FieldByName('BaseLineCalibrationRef').AsString := edtCalibrationRef.Text;
      Post;
    end;

    SaveBaseline;

    dmBase.FilterBaselineDefault(dmBase.rxFilteredBaseline.FieldByName('BaselineID').AsInteger);

//    dmBase.rxBaselineDefaultFilter.First;
    dmBase.rxBaselineDefaultFilterEDM.First;
    dmBase.rxBaselineDefaultFilterBase.First;
    pcDefaultUncertainties.ActivePage := tsDefaultEDMUncertainties;
    if dmBase.rxBaselineDefaultFilterBase.isEmpty then
    begin
      tsDefaultBaselineUncertainties.TabVisible := False;
    end
    else
    begin
      tsDefaultBaselineUncertainties.TabVisible := True;
    end;

    pcBaseline.ActivePage := tsDefaults;
  end;
end;

(*******************************************************************************
@procedure btnNext3Click(Sender: TObject);

@description
  Opens the next page of the wizard where you can view the certified distances between the pillars.
*******************************************************************************)
procedure TfrmBaseline.btnNext3Click(Sender: TObject);
begin
  dmBase.RefreshDistanceTable;
  with dmBase.rxFilteredDistance do
  begin
    Refresh;
    FieldByName('DistSigma').DisplayLabel :=
       'Uncertainty~at '+dmBase.rxFilteredBaseline.FieldByName('BaselineConfLevel').AsString+'%';
  end;
  with rxDistance2 do
  begin
    Refresh;
    FieldByName('DistSigma').DisplayLabel :=
       'Uncertainty~at '+dmBase.rxFilteredBaseline.FieldByName('BaselineConfLevel').AsString+'%';
  end;

  FocusOnDistanceRecord;

  hasRxDistFromPillar1Changed := cbEditPillarNumber.Checked;
  cbEditPillarNumber.Checked := False;

  ConvertDistancesToFirstPillar;

  pcBaseline.ActivePage := tsDistancesFromPillar1;

  strGridName := 'Distances';

  rxDistance2.First;
  if isUsedByJob then
  begin
    dbgridDistance2.Color := clBtnFace;
    dbgridDistance2.ReadOnly := True;
    dbgridDistances.Color := clBtnFace;
    dbgridDistances.ReadOnly := True;
    dbnavDistance2.Visible := True;
    dbnavDistance.Visible := False;
    dbnavDistanceA2.Visible := True;
    dbnavDistanceA.Visible := False;
  end
  else
  begin
    dbgridDistance2.Color := clWindow;
    dbgridDistance2.ReadOnly :=False;
    dbgridDistances.Color := clBtnFace;
    dbgridDistances.ReadOnly := True;
    dbnavDistance2.Visible := False;
    dbnavDistance.Visible := True;
    dbnavDistanceA2.Visible := False;
    dbnavDistanceA.Visible := True;
    dbgridDistance2.SetFocus;
    dbgridDistance2.SetActiveField('DistLegalDistance');
  end;

end;

(*******************************************************************************
@procedure btnBack2Click(Sender: TObject);

@description
  1. Validates the baseline details.
  2. Returns to the first page of the wizard where you can view another baseline.
*******************************************************************************)
procedure TfrmBaseline.btnBack2Click(Sender: TObject);
begin
  if CheckBaseline then
  begin
    with dmbase.rxFilteredBaseline do
    begin
      Edit;
      FieldByName('BaseLineCalibrationDate').AsString := DateToStr(pickDate.Date);
      FieldByName('BaseLegalHeight').AsFloat := bedtLegalHeight.Value;
      FieldByName('BaseRelativeHumidity').AsString := edtRelHumidity.Text;
      FieldByName('BaseStdICConstant').AsFloat := 0.004;
      FieldByName('BaseStdICPPM').AsFloat := 20;
      FieldByName('BaseLineConfLevel').AsString := edtConfLevel.Text;
      FieldByName('BaseLineCalibrationRef').AsString := edtCalibrationRef.Text;
      Post;
    end;
    if hasNewBaseline then rbtnCurrent.Checked := True;
    pcBaseline.ActivePage := tsBaseline;
  end;
end;

(*******************************************************************************
@procedure btnBack3Click(Sender: TObject);

@description
  Returns to the previous page of the wizard.
*******************************************************************************)
procedure TfrmBaseline.btnBack3Click(Sender: TObject);
begin
  cbEditPillarNumber.Checked := False;
  dmBase.doCancel := False;
//  dmBase.rxBaselineDefaultFilter.First;
  dmBase.rxBaselineDefaultFilterBase.First;
  dmBase.rxBaselineDefaultFilterEDM.First;
  pcBaseline.ActivePage := tsDefaults;
end;

(*******************************************************************************
@procedure btnBack4Click(Sender: TObject);

@description
  Returns to the previous page of the wizard.
*******************************************************************************)
procedure TfrmBaseline.btnBack4Click(Sender: TObject);
begin
  if HasValidDistances then
  begin
    pcBaseline.ActivePage := tsPillar;
    strGridName := 'Pillars';
    UpdateBaselineAccuracy;
  end;
end;

(*******************************************************************************
@procedure btnClose1Click(Sender: TObject);

@description
  1. Saves the data.
  2. Returns to the main form of the application.
*******************************************************************************)
procedure TfrmBaseline.btnClose1Click(Sender: TObject);
begin
  SaveNewData;
  Close;
end;

(*******************************************************************************
@procedure rbtnArchivedClick(Sender: TObject);

@description
  Only displays the archived baselines
*******************************************************************************)
procedure TfrmBaseline.rbtnArchivedClick(Sender: TObject);
begin
  isCurrent := False;
  btnCreateNewBaseline.Visible := false;
  dmBase.FilterBaseline('A');
  btnArchiveBaseline.Caption := '&Unarchive Baseline';

  dbgridbaseline.Color := clBtnFace;
  dbgridbaseline.ReadOnly := True;

  chkArchivedCoord.Checked := False;
  chkArchivedErrorEllips.Checked := false;
  chkArchivedHeightUncertainty.Checked := false;
  chkCoord.Checked := False;
  chkErrorEllipse.Checked := false;
  chkHeightUncertainty.Checked := False;

  with dmBase.rxFilteredPillar do
  begin
    FieldByname('PillarLatitude').Visible := False;
    FieldByname('PillarLongitude').Visible := False;
    FieldByname('PillarEllipsARadius').Visible := False;
    FieldByname('PillarEllipsBRadius').Visible := False;
    FieldByname('PillarEllipsOrient').Visible := False;
    FieldByname('PillarHtStdDev').Visible := False;
    Refresh;
  end;

  with dmBase.rxFilteredDistance do
  begin
    FieldByName('FromPillar').Visible := True;
    FieldByName('ToPillar').Visible := True;
  end;

  if dmBase.rxFilteredBaseline.isEmpty then
  begin
    btnDeleteBaseline.Enabled := False;
    btnArchiveBaseline.Enabled := False;
    btnNext1.Enabled := False;
  end
  else
  begin
    btnDeleteBaseline.Enabled := True;
    btnArchiveBaseline.Enabled := True;
    btnNext1.Enabled := True;
  end;
end;

(*******************************************************************************
@procedure rbtnCurrentClick(Sender: TObject);

@description
  Only displays the current baselines
*******************************************************************************)
procedure TfrmBaseline.rbtnCurrentClick(Sender: TObject);
begin
  isCurrent := True;
  btnDeleteBaseline.Caption := '&Delete Baseline';
  btnArchiveBaseline.Caption := '&Archive Baseline';
  btnCreateNewBaseline.Visible := True;
  btnDeleteBaseline.Visible := True;
  dmBase.FilterBaseline('C');

  chkCoord.Checked := False;
  chkErrorEllipse.Checked := false;
  chkHeightUncertainty.Checked := False;
  chkArchivedCoord.Checked := False;
  chkArchivedErrorEllips.Checked := false;
  chkArchivedHeightUncertainty.Checked := false;

  with dmBase.rxFilteredPillar do
  begin
    FieldByname('PillarLatitude').Visible := False;
    FieldByname('PillarLongitude').Visible := False;
    FieldByname('PillarEllipsARadius').Visible := False;
    FieldByname('PillarEllipsBRadius').Visible := False;
    FieldByname('PillarEllipsOrient').Visible := False;
    FieldByname('PillarHtStdDev').Visible := False;
  end;

  if dmBase.rxFilteredBaseline.isEmpty then
  begin
    btnDeleteBaseline.Enabled := False;
    btnArchiveBaseline.Enabled := False;
    btnNext1.Enabled := False;
  end
  else
  begin
    btnDeleteBaseline.Enabled := True;
    btnArchiveBaseline.Enabled := True;
    btnNext1.Enabled := True;
  end;
end;

(*******************************************************************************
@procedure PillarColumnsClick(Sender: TObject);

@description
  Displays additional fields in the database grid
*******************************************************************************)
procedure TfrmBaseline.PillarColumnsClick(Sender: TObject);
begin
  SetPillarColumnsVisible;
end;

(*******************************************************************************
@procedure FormClose(Sender: TObject; var Action: TCloseAction);

@description
  Fees lists when the form closes.
*******************************************************************************)
procedure TfrmBaseline.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BaseList.Free;
  ErrorList.Free;
end;

(*******************************************************************************
@procedure ShowErrors(ErrorList : TStringList);

@description
  Displays a list of error statements.
*******************************************************************************)
procedure TfrmBaseline.ShowErrors(ErrorList : TStringList);
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
@procedure dbgridPillarsColExit(Sender: TObject);

@description
  Validates the Pillar record when you select another column on the grid.
*******************************************************************************)
procedure TfrmBaseline.dbgridPillarsColExit(Sender: TObject);
begin
  if (isCurrent) and (doEvents) then
  begin
    if dbgridPillars.GetActiveField = dmBase.rxFilteredPillar.FieldByName('PillarHeight') then
    begin
      ErrorList.Clear;
      with dmBase.rxFilteredPillar do
      begin
        if (FieldByName('PillarHeight').isNull) then
        begin
          ErrorList.Add('Pillar Height is required');
          dbgridPillars.SetFocus;
          dbgridPillars.SetActiveField('PillarHeight');
          ShowErrors(ErrorList);
          Abort;
        end;
      end;
    end;
    if dbgridPillars.GetActiveField = dmbase.rxFilteredPillar.FieldByName('PillarOffset') then
    begin
      ErrorList.Clear;
      with dmBase.rxFilteredPillar do
      begin
        if (FieldByName('PillarOffset').isNull) then
        begin
          ErrorList.Add('Pillar Offset is required');
          dbgridPillars.SetFocus;
          dbgridPillars.SetActiveField('PillarOffset');
          ShowErrors(ErrorList);
          Abort;
        end;
      end;
    end;
  end;
end;


(*******************************************************************************
@procedure btnClose4Click(Sender: TObject);

@description
  Updates the Baseline accuracy when you close the form.
*******************************************************************************)
procedure TfrmBaseline.btnClose4Click(Sender: TObject);
begin
  dmBase.doCancel := False;
  UpdateBaselineAccuracy;
  Close;
end;

(*******************************************************************************
@procedure UsedByJob : Boolean;

@description
  Returns TRUE if the baseline has been used in the calibration of an EDM.
*******************************************************************************)
function TfrmBaseline.UsedByJob : Boolean;
var
  sBaselineId : Integer;
  hasJob: Boolean;
begin
  sBaselineId := dmBase.rxFilteredBaseline.FieldByName('BaseLineId').AsInteger;
  hasJob := False;
  with dmBase.rxJob do
  begin
    First;
    while not EOF and (not hasJob) do
    begin
      if FieldByName('BaselineID').AsInteger = sbaselineID then
      begin
        hasJob := True;
      end;
      Next;
    end;
    Result := hasJob;
  end;
end;

(*******************************************************************************
@procedure ChangedValue(Sender: TObject);

@description
  Set the flag "hasChanged" = TRUE if a value in an edit box gas changed.
*******************************************************************************)
procedure TfrmBaseline.ChangedValue(Sender: TObject);
begin
  hasChanged := True;
end;

(*******************************************************************************
@procedure btnNextArchived2Click(Sender: TObject);

@description
  Opens the next page where you can view the pillars of the selected archived baseline.
*******************************************************************************)
procedure TfrmBaseline.btnNextArchived2Click(Sender: TObject);
begin
  sBaselineId := dmBase.rxFilteredBaseline.FieldByName('BaseLineId').AsInteger;
  dmBase.FilterPillar( sBaselineId);
  dmBase.FilterDistance( sBaselineId);
  dmBase.FilterBaselineDefault(sBaselineId);

  dmBase.rxBaselineDefaultFilterEDM.First;
  dmBase.rxBaselineDefaultFilterBase.First;
  pcArchivedDefaultUncertainties.ActivePage := tsArchivedDefaultEDMUncertainties;
  if dmBase.rxBaselineDefaultFilterBase.isEmpty then
  begin
    tsArchivedDefaultBaselineUncertainties.TabVisible := False;
  end
  else
  begin
    tsArchivedDefaultBaselineUncertainties.TabVisible := True;
  end;

  pcBaseline.ActivePage := tsArchivedDefaults;

end;

(*******************************************************************************
@procedure btnNextArchived3Click(Sender: TObject);

@description
  Opens the next page where you can view the certified distances between the
  pillars of the selected archived baseline.
*******************************************************************************)
procedure TfrmBaseline.btnNextArchived3Click(Sender: TObject);
begin
  with dmBase.rxFilteredDistance do
  begin
    Refresh;
    FieldByName('DistSigma').DisplayLabel :=
       'Uncertainty~at '+dmBase.rxFilteredBaseline.FieldByName('BaselineConfLevel').AsString+'%';
  end;

  ConvertDistancesToFirstPillar;
  pcBaseline.ActivePage := tsArchivedDistances;
  dbgridArchivedDistances.SetFocus;
end;

procedure TfrmBaseline.btnNextArchivedDefaultsClick(Sender: TObject);
begin
  pcBaseline.ActivePage := tsArchivedPillars;
  dmBase.rxFilteredPillar.First;
  dbgridArchivedPillars.SetFocus;
end;

(*******************************************************************************
@procedure btnBackArchived2Click(Sender: TObject);

@description
  Returns to the previous page where you select, delete or archive another baseline.
*******************************************************************************)
procedure TfrmBaseline.btnBackArchived2Click(Sender: TObject);
begin
  pcBaseline.ActivePage := tsBaseline;
end;

(*******************************************************************************
@procedure btnBackArchived3Click(Sender: TObject);

@description
  Returns to the previous page where you view the archived baseline information.
*******************************************************************************)
procedure TfrmBaseline.btnBackArchived3Click(Sender: TObject);
begin
  pcBaseline.ActivePage := tsArchivedDefaults;
end;

(*******************************************************************************
@procedure btnBackArchived4Click(Sender: TObject);

@description
  Returns to the previous page where you view the pillars of the selected archived baseline.
*******************************************************************************)
procedure TfrmBaseline.btnBackArchived4Click(Sender: TObject);
begin
  dmBase.rxFilteredPillar.First;
  pcBaseline.ActivePage := tsArchivedPillars;
end;

(*******************************************************************************
@procedure chkArchivedCoordClick(Sender: TObject);

@description
  Enables the user to view the geographical coordinates of the pillars
*******************************************************************************)
procedure TfrmBaseline.chkArchivedCoordClick(Sender: TObject);
begin
  with dmBase.rxFilteredPillar do
  begin
    if chkArchivedCoord.Checked then
    begin
      FieldByname('PillarLatitude').Visible := True;
      FieldByname('PillarLongitude').Visible := True;
    end
    else
    begin
      FieldByname('PillarLatitude').Visible := False;
      FieldByname('PillarLongitude').Visible := False;
    end;
  end;
end;

(*******************************************************************************
@procedure chkArchivedErrorEllipsClick(Sender: TObject);

@description
  Enables the user to view the error ellipses of the pillars
*******************************************************************************)
procedure TfrmBaseline.chkArchivedErrorEllipsClick(Sender: TObject);
begin
  with dmBase.rxFilteredPillar do
  begin
    if chkArchivedErrorEllips.Checked then
    begin
      FieldByname('PillarEllipsARadius').Visible := True;
      FieldByname('PillarEllipsBRadius').Visible := True;
      FieldByname('PillarEllipsOrient').Visible := True;
    end
    else
    begin
      FieldByname('PillarEllipsARadius').Visible := False;
      FieldByname('PillarEllipsBRadius').Visible := False;
      FieldByname('PillarEllipsOrient').Visible := False;
    end;
  end;
end;

(*******************************************************************************
@procedure chkArchivedHeightUncertaintyClick(Sender: TObject);

@description
  Enables the user to view the error ellipses of the pillars
*******************************************************************************)
procedure TfrmBaseline.chkArchivedHeightUncertaintyClick(Sender: TObject);
begin
  with dmBase.rxFilteredPillar do
  begin
    if chkArchivedHeightUncertainty.Checked then
    begin
      FieldByname('PillarHtStdDev').Visible := True;
    end
    else
    begin
      FieldByname('PillarHtStdDev').Visible := False;
    end;
  end;
end;

(*******************************************************************************
@procedure edtConfLevelExit(Sender: TObject);

@description
  Validates the confidence level value.
*******************************************************************************)
procedure TfrmBaseline.edtConfLevelExit(Sender: TObject);
begin
  if edtConfLevel.Text = '' then
  begin
    MessageDlg('You must enter a confidence level',mtWarning,[mbOK],0);
    edtConfLevel.SetFocus;
    Abort;
  end;
end;

(*******************************************************************************
@procedure edtRelHumidityExit(Sender: TObject);

@description
  Validates the relative humidity.
*******************************************************************************)
procedure TfrmBaseline.edtRelHumidityExit(Sender: TObject);
begin
  if edtRelHumidity.Text = '' then
  begin
    MessageDlg('You must enter a relative humidity',mtWarning,[mbOK],0);
    edtRelHumidity.SetFocus;
    Abort;
  end;
end;

(*******************************************************************************
@procedure bedtLegalHeightChange(Sender: TObject);

@description
  Null height values are converted to 0.
*******************************************************************************)
procedure TfrmBaseline.bedtLegalHeightChange(Sender: TObject);
begin
  if bedtLegalHeight.Text = '' then bedtLegalHeight.Value := 0;
  hasChanged := True;
end;

procedure TfrmBaseline.btnBackArchivedUncertaintiesClick(Sender: TObject);
begin
  pcBaseline.ActivePage := tsArchivedBaselineDetails;
end;

(*******************************************************************************
@procedure dbgridPillarsExit(Sender: TObject);

@description
  Validates the pillars and produces an error message if the pillar information
  is incorrect.
*******************************************************************************)
procedure TfrmBaseline.dbgridPillarsExit(Sender: TObject);
begin
  with dmBase.rxFilteredPillar do
  begin
    if (State = dsInsert) or (State = dsEdit) then
    begin
      if not HasValidPillars then
      begin
        Abort;
      end
      else
      begin
        Post;
      end;
    end;
  end;
end;

(*******************************************************************************
@function HasValidPillars : Boolean;

@description
  1. Validates the pillars and produces an error message if the pillar information
     is incorrect.
  2. Returns TRUE if the pillar information is correct.
*******************************************************************************)
function TfrmBaseline.HasValidPillars : Boolean;
begin
  ErrorList.Clear;
  with dmBase.rxFilteredPillar do
  begin
    if (FieldByName('PillarOffset').isNull) then
    begin
      ErrorList.Add('Pillar Offset is required');
      dbgridPillars.SetFocus;
      dbgridPillars.SetActiveField('PillarOffset');
    end;
    if (FieldByName('PillarHeight').isNull) then
    begin
      ErrorList.Add('Pillar Height is required');
      dbgridPillars.SetFocus;
      dbgridPillars.SetActiveField('PillarHeight');
    end;
    ShowErrors(ErrorList);
  end;
  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@procedure FocusOnDistanceRecord;

@description
  Places the cursor on the first record with a zero distance.
*******************************************************************************)
procedure TfrmBaseline.FocusOnDistanceRecord;
begin
  with dmBase.rxFilteredDistance do
  begin
    First;
    while (not EOF) and (FieldByName('DistLegalDistance').AsFloat <> 0) do
    begin
      Next;
    end;
    if FieldByName('DistLegalDistance').AsFloat <> 0 then First;
  end;
end;

(*******************************************************************************
@procedure dbgridDistancesColExit(Sender: TObject);

@description
  Validates the certified distance if the user exits the  distance column in the grid.
*******************************************************************************)
procedure TfrmBaseline.dbgridDistancesColExit(Sender: TObject);
begin
  if (isCurrent) and (doEvents) then
  begin
    if dbgridDistances.GetActiveField = dmBase.rxFilteredDistance.FieldByName('DistLegalDistance') then
    begin
      ErrorList.Clear;
      with dmbase.rxFilteredDistance do
      begin
        if (FieldByName('DistLegalDistance').isNull) or (FieldByName('DistLegalDistance').AsFloat=0) then
        begin
          ErrorList.Add('Certified Distance is required');
          dbgridDistances.SetFocus;
          dbgridDistances.SetActiveField('DistLegalDistance');
        end;
      end;
      ShowErrors(ErrorList);
      if ErrorList.Count > 0 then Abort;
    end;

    if dbgridDistances.GetActiveField = dmbase.rxFilteredDistance.FieldByName('DistSigma') then
    begin
      with dmbase.rxFilteredDistance do
      begin
        if (FieldByName('DistSigma').isNull) then
        begin
          ErrorList.Add('Uncertainty must have a value');
          dbgridDistances.SetFocus;
          dbgridDistances.SetActiveField('DistSigma');
        end;
      end;
      ShowErrors(ErrorList);
      if ErrorList.Count > 0 then Abort;
    end;
  end;
end;

(*******************************************************************************
@function hasValidDistance : Boolean;

@description
  Returns TRUE if a valid distance has been used.
*******************************************************************************)
function TfrmBaseline.hasValidDistance : Boolean;
begin
  ErrorList.Clear;
  with dmbase.rxFilteredDistance do
  begin
    if (FieldByName('DistSigma').isNull) then
    begin
      ErrorList.Add('Uncertainty must have a value');
      dbgridDistances.SetFocus;
      dbgridDistances.SetActiveField('DistSigma');
    end;
    if (FieldByName('DistLegalDistance').isNull) or (FieldByName('DistLegalDistance').AsFloat=0) then
    begin
      ErrorList.Add('Certified Distance must be greater then 0 metres');
      pcBaseline.ActivePage := tsSequentialDistances;
      dbgridDistances.SetFocus;
      dbgridDistances.SetActiveField('DistLegalDistance');
    end;
  end;
  ShowErrors(ErrorList);
  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@function hasValidDistances : Boolean;

@description
  Returns TRUE if all distances are valid.
*******************************************************************************)
function TfrmBaseline.hasValidDistances : Boolean;
var
  isValid : Boolean;
begin
  isValid := True;
  with dmBase.rxFilteredDistance do
  begin
    First;
    while (not EOF) and isValid do
    begin
      isValid := hasValidDistance;
      if isValid then
      begin
        Next;
      end;
    end;
  end;
  Result := isValid;
end;

(*******************************************************************************
@procedure SetPillarColumnsVisible;

@description
  Additional columns are made visible in the database grid.
*******************************************************************************)
procedure TfrmBaseline.SetPillarColumnsVisible;
begin
  with dmBase.rxFilteredPillar do
  begin
    if chkCoord.Checked then
    begin
      FieldByname('PillarLatitude').Visible := True;
      FieldByname('PillarLatitude').Visible := True;
      FieldByname('PillarLongitude').Visible := True;
    end
    else
    begin
      FieldByname('PillarLatitude').Visible := False;
      FieldByname('PillarLongitude').Visible := False;
    end;
    if chkErrorEllipse.Checked then
    begin
      FieldByname('PillarEllipsARadius').Visible := True;
      FieldByname('PillarEllipsBRadius').Visible := True;
      FieldByname('PillarEllipsOrient').Visible := True;
    end
    else
    begin
      FieldByname('PillarEllipsARadius').Visible := False;
      FieldByname('PillarEllipsBRadius').Visible := False;
      FieldByname('PillarEllipsOrient').Visible := False;
    end;
    if chkHeightUncertainty.Checked then
    begin
      FieldByname('PillarHtStdDev').Visible := True;
    end
    else
    begin
      FieldByname('PillarHtStdDev').Visible := False;
    end;
  end;
end;


(*******************************************************************************
@procedure btnClose3Click(Sender: TObject);

@description
  Saves the data and closes the application.
*******************************************************************************)
procedure TfrmBaseline.btnClose3Click(Sender: TObject);
begin
  dmBase.doCancel := False;
  SaveNewData;
  Close;
end;

(*******************************************************************************
@function IsBaselineNameDuplicated : Boolean;

@description
  Checks if a baseline name is duplicated
*******************************************************************************)
function TfrmBaseline.IsBaselineNameDuplicated : Boolean;
var
  strBaselineName : String;
  hasDuplicateName: Boolean;
begin
  Result := False;
  strBaselineName := dmBase.rxFilteredBaseline.FieldByname('BaselineName').AsString;

  if (dmBase.rxFilteredBaseline.State = dsInsert) or (dmBase.rxFilteredBaseline.State = dsEdit) then
  begin
    with dmBase.rxBaseline do
    begin
      First;
      hasDuplicateName := False;
      While (not EOF) and (not hasDuplicateName) do
      begin
        if (FieldByName('BaselineName').AsString = strBaselineName) and
           (FieldByName('BaseLineArchiveFlag').AsString = 'C') then
        begin
          hasDuplicateName := True;
        end;
        Next;
      end;
    end;

    Result := hasDuplicateName;

    if Result then
    begin
      MessageDlg('You can not duplicate a current Baseline Name.'+#10+
                 'Please enter another Baseline Name.',mtError,[mbOK],0);
      if pcBaseline.ActivePage = tsBaseline then
      begin
        dbgridBaseline.SetFocus;
        doEvents := False;
          dbgridBaseline.SetActiveField('BaselineName');
        doEvents := True;
      end;

      if pcBaseline.ActivePage = tsDetails then
      begin
        dbedtName.SetFocus;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure btnHelp1Click(Sender: TObject);

@description
  Displays the Help for the first page of the wizard
*******************************************************************************)
procedure TfrmBaseline.btnHelp1Click(Sender: TObject);
begin
  Application.HelpContext(3100);
end;

(*******************************************************************************
@procedure btnHelp2Click(Sender: TObject);

@description
  Displays the Help for the second page of the wizard
*******************************************************************************)
procedure TfrmBaseline.btnHelp2Click(Sender: TObject);
begin
  Application.HelpContext(3200);
end;

(*******************************************************************************
@procedure btnHelp3Click(Sender: TObject);

@description
  Displays the Help for the third page of the wizard
*******************************************************************************)
procedure TfrmBaseline.btnHelp3Click(Sender: TObject);
begin
  Application.HelpContext(3300);
end;

(*******************************************************************************
@procedure btnHelp4Click(Sender: TObject);

@description
  Displays the Help for the fourth page of the wizard
*******************************************************************************)
procedure TfrmBaseline.btnHelp4Click(Sender: TObject);
begin
  Application.HelpContext(3400);
end;

(*******************************************************************************
@procedure rbtnFromFirstPillarClick(Sender: TObject);

@description
  Displays the distances from the first pillar to all other pillars
*******************************************************************************)
procedure TfrmBaseline.rbtnFromFirstPillarClick(Sender: TObject);
begin
  if doEvents then
  begin
    doEvents := False;
    rbtnSeqDistances.Checked := True;
    rbtnFromFirstPillar2.Checked := True;
    doEvents := True;

    ConvertDistancesToFirstPillar;
    pcBaseline.ActivePage := tsDistancesFromPillar1;
  end;
end;

(*******************************************************************************
@procedure ConvertDistancesToFirstPillar;

@description
  Converts sequential distances to distances from the first pillar to all other pillars
*******************************************************************************)
procedure TfrmBaseline.ConvertDistancesToFirstPillar;
var
  dDistance   : Double;
  dSigma      : Double;
  dPreviousSigma : Double;
  strFirstPillar: string;
begin
  dmBase.doEvents := False;
  dDistance   := 0;
  dPreviousSigma := 0;
  rxDistance2.EmptyTable;

  dmBase.rxFilteredPillar.First;
  strFirstPillar := dmBase.rxFilteredPillar.FieldByName('PillarNo').AsString;
  with dmBase.rxFilteredDistance do
  begin
    First;
    while not EOF do
    begin
      rxDistance2.Append;
      rxDistance2.FieldByName('DistID').AsInteger := FieldByName('DistID').AsInteger;
      rxDistance2.FieldByName('rxFromPillar').AsString := strFirstPillar;
      dmBase.rxFilteredPillar.Next;
      rxDistance2.FieldByName('rxToPillar').AsString := dmBase.rxFilteredPillar.FieldByName('PillarNo').Value;

      dDistance := dDistance + FieldByName('DistLegalDistance').AsFloat;
      rxDistance2.FieldByName('DistLegalDistance').AsFloat := dDistance;

      dSigma := Sqrt(Abs(Sqr(FieldByName('DistSigma').AsFloat) - Sqr(dPreviousSigma)));
      rxDistance2.FieldByName('DistSigma').AsFloat := dSigma;
      dPreviousSigma := dSigma;

      rxDistance2.Post;
      Next;
    end;
    First;
    rxDistance2.First;
  end;
  dmBase.doEvents := True;
end;

(*******************************************************************************
@procedure ConvertDistancesToSequence;

@description
  Converts distances (first pillar to all other pillars) to sequential distances.
*******************************************************************************)
procedure TfrmBaseline.ConvertDistancesToSequence;
var
  dDistance : Double;
  dPreviousDistance : Double;
  dPreviousSigma    : Double;
  dSigma: Double;
begin
  dPreviousDistance := 0;
  dPreviousSigma := 0;

  dmBase.rxFilteredPillar.First;

  with dmBase.rxFilteredDistance do
  begin
    First;
    rxDistance2.First;
    while not EOF do
    begin
      Edit;
      FieldByName('FromPillar').Value := dmBase.rxFilteredPillar.FieldByName('PillarNo').Value;
      dmBase.rxFilteredPillar.Next;
      FieldByName('ToPillar').Value := dmBase.rxFilteredPillar.FieldByName('PillarNo').Value;
      dDistance := rxDistance2.FieldByName('DistLegalDistance').AsFloat- dPreviousDistance;
      dPreviousDistance := dPreviousDistance+ dDistance;
      FieldByName('DistLegalDistance').AsFloat := dDistance;
      dSigma := rxDistance2.FieldByName('DistSigma').AsFloat;
      FieldByName('DistSigma').AsFloat := Sqrt(Abs(Sqr(dSigma) + Sqr(dPreviousSigma)));
      dPreviousSigma := dSigma;
      Post;
      Next;
      rxDistance2.Next;
    end;
    First;
    rxDistance2.First;
  end;
end;

(*******************************************************************************
@procedure rbtnSeqDistances2Click(Sender: TObject);

@description
  Displays the sequential distances.
*******************************************************************************)
procedure TfrmBaseline.rbtnSeqDistances2Click(Sender: TObject);
begin
  if doEvents then
  begin
    if rxDistance2.State = dsEdit then
    begin
      rxDistance2.Post;
    end;

    doEvents := False;
    rbtnFromFirstPillar2.Checked := True;
    rbtnSeqDistances.Checked := True;
    if  hasRxDistFromPillar1Changed then
    begin
      if not HasDistanceSequenceError then
      begin
        ConvertDistancesToSequence;
        CheckBaselineDesign;
        hasRxDistFromPillar1Changed := False;
        pcBaseline.ActivePage := tsSequentialDistances;
      end
    end
    else
    begin
      pcBaseline.ActivePage := tsSequentialDistances;
    end;
    doEvents := True;
  end;
end;

(*******************************************************************************
@procedure dbgridDistance2ColExit(Sender: TObject);

@description
  Validates the distance when you exit the distance column in the database grid.
*******************************************************************************)
procedure TfrmBaseline.dbgridDistance2ColExit(Sender: TObject);
begin
  if doEvents then
  begin
    with rxDistance2 do
    begin
      if dbgridDistance2.GetActiveField = FieldByName('DistLegalDistance') then
      begin
        ErrorList.Clear;
        if (FieldByName('DistLegalDistance').isNull) or (FieldByName('DistLegalDistance').AsFloat=0) then
        begin
          ErrorList.Add('Certified Distance is required');
          dbgridDistance2.SetFocus;
          dbgridDistance2.SetActiveField('DistLegalDistance');
          ShowErrors(ErrorList);
        end;
        if ErrorList.Count > 0 then Abort;
      end;

      if dbgridDistance2.GetActiveField = FieldByName('DistSigma') then
      begin
        ErrorList.Clear;
        if (FieldByName('DistSigma').isNull) then
        begin
          ErrorList.Add('Uncertainty must have a value');
          dbgridDistance2.SetFocus;
          dbgridDistance2.SetActiveField('DistSigma');
          ShowErrors(ErrorList);
        end;
        if ErrorList.Count > 0 then Abort;
      end;
    end;
  end;
end;

(*******************************************************************************
@function HasDistanceSequenceError : Boolean;

@description
  Returns TRUE and displays an error message if the distances are not sequence.
*******************************************************************************)
function TfrmBaseline.HasDistanceSequenceError : Boolean;
var
  hasError : Boolean;
  dPreviousDistance : Double;
begin
  dPreviousDistance := 0;
  hasError := False;
  ErrorList.Clear;
  with rxDistance2 do
  begin
    First;
    while (not EOF) and (not hasError) do
    begin
      if (FieldByName('DistLegalDistance').isNull) or (FieldByName('DistLegalDistance').AsFloat=0) then
      begin
        hasError := True;
        ErrorList.Add('Certified Distance is required');
        dbgridDistance2.SetFocus;
        dbgridDistance2.SetActiveField('DistLegalDistance');
      end;

      if (not hasError) and (FieldByName('DistSigma').isNull) then
      begin
        hasError := True;
        ErrorList.Add('Uncertainty must have a value');
        dbgridDistance2.SetFocus;
        dbgridDistance2.SetActiveField('DistSigma');
      end;

      if pcBaseline.ActivePage = tsDistancesFromPillar1 then
      begin
        if (not hasError) then
        begin
          if FieldByName('DistLegalDistance').AsFloat <= dPreviousDistance then
          begin
            hasError := True;
            ErrorList.Add('Distance must be greater than preceding distance');
            dbgridDistance2.SetFocus;
            dbgridDistance2.SetActiveField('DistLegalDistance');
          end;
        end;
      end;

      if hasError then
      begin
        ShowErrors(ErrorList);
      end;

      dPreviousDistance := FieldByName('DistLegalDistance').AsFloat;
      Next;
    end;
  end;
  Result := hasError;
end;

(*******************************************************************************
@procedure btnBackSeqClick(Sender: TObject);

@description
  1. Converts the distances to sequential distances,
  2. Checks the design of the baseline.
  3. Returns to the Pillars page.
*******************************************************************************)
procedure TfrmBaseline.btnBackSeqClick(Sender: TObject);
begin
  if rxDistance2.State = dsEdit then
  begin
    rxDistance2.Post;
  end;
  if  hasRxDistFromPillar1Changed then
  begin
    if not HasDistanceSequenceError then
    begin
      ConvertDistancesToSequence;
      hasRxDistFromPillar1Changed := False;
      pcBaseline.ActivePage := tsPillar;
      strGridName := 'Pillars';
      UpdateBaselineAccuracy;
      CheckBaselineDesign;
    end
  end
  else
  begin
    pcBaseline.ActivePage := tsPillar;
    strGridName := 'Pillars';
  end;
end;

(*******************************************************************************
@procedure btnCloseDistFromPillar1Click(Sender: TObject);

@description
  1. Converts the distances to sequential distances,
  2. Checks the design of the baseline.
  3. Closes application.
*******************************************************************************)
procedure TfrmBaseline.btnCloseDistFromPillar1Click(Sender: TObject);
begin
  if rxDistance2.State = dsEdit then
  begin
    rxDistance2.Post;
  end;

  if  hasRxDistFromPillar1Changed then
  begin
    if not HasDistanceSequenceError then
    begin
      ConvertDistancesToSequence;
      if hasRxChanged then
      begin
        UpdateBaselineAccuracy;
      end;
      CheckBaselineDesign;
      Close;
    end
  end
  else
  begin
    if hasRxChanged then
    begin
    end;
    Close;
  end;
end;

(*******************************************************************************
@procedure RxDistance2BeforeDelete(DataSet: TDataSet);

@description
  You can not delete certified distances from the page, which displays all
  baseline distances from the first pillar.
*******************************************************************************)
procedure TfrmBaseline.RxDistance2BeforeDelete(DataSet: TDataSet);
begin
  if pcBaseline.ActivePage = tsDistancesFromPillar1 then
  begin
    MessageDlg('You can not delete certified distances from this page'+#10+
               'Distances are deleted when you delete their associated pillars on the Pillar Page',mtWarning,[mbOK],0);
    Abort;
  end;
end;

(*******************************************************************************
@procedure RxDistance2BeforePost(DataSet: TDataSet)

@description
  Validates the certified distance.
*******************************************************************************)
procedure TfrmBaseline.RxDistance2BeforePost(DataSet: TDataSet);
begin
  if pcBaseline.ActivePage = tsDistancesFromPillar1 then
  begin
    if rxDistance2.FieldByName('DistLegalDistance').isNull then
    begin
      rxDistance2.FieldByName('DistLegalDistance').AsFloat := 0;
    end;
    if (rxDistance2.FieldByName('DistLegalDistance').AsFloat = 0) then
    begin
      MessageDlg('Certified distances must be greater than 0 metres.',mtWarning,[mbOK],0);
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure RxDistance2BeforeInsert(DataSet: TDataSet);

@description
  You can not insert certified distances on the page, which displays all
  baseline distances from the first pillar.
*******************************************************************************)
procedure TfrmBaseline.RxDistance2BeforeInsert(DataSet: TDataSet);
begin
  if pcBaseline.ActivePage = tsDistancesFromPillar1 then
  begin
    Abort;
  end;
end;

(*******************************************************************************
@procedure RxDistance2AfterPost(DataSet: TDataSet);

@description
  Flag indicates that you have changed the distance data.
*******************************************************************************)
procedure TfrmBaseline.RxDistance2AfterPost(DataSet: TDataSet);
begin
  if pcBaseline.ActivePage = tsDistancesFromPillar1 then
  begin
    hasRxDistFromPillar1Changed := True;
    hasRxChanged := True;
  end;
end;

(*******************************************************************************
@procedure btnHelpArchivedBaselineClick(Sender: TObject);

@description
  Displays the Help for the "Archived Baseline" page.
*******************************************************************************)
procedure TfrmBaseline.btnHelpArchivedBaselineClick(Sender: TObject);
begin
  Application.HelpContext(3210);
end;

(*******************************************************************************
@procedure btnHelpArchivedPillarsClick(Sender: TObject);

@description
  Displays the Help for the "Archived Pillars" page.
*******************************************************************************)
procedure TfrmBaseline.btnHelpArchivedPillarsClick(Sender: TObject);
begin
  Application.HelpContext(3310);
end;

(*******************************************************************************
@procedure btnCreateNewBaselineClick(Sender: TObject);

@description
  Opens a page where you can create a new baseline.
*******************************************************************************)
procedure TfrmBaseline.btnCreateNewBaselineClick(Sender: TObject);
begin
  isUsedByJob := False;
  hasNewBaseline := True;
  sNewPillarId := GetLastId(dmBase.rxPillar,'PillarID');
  sNewDistanceId := GetLastId(dmBase.rxDistance,'DistID');
  sNewBaselineId := GetLastId(dmBase.rxBaseline,'BaselineID');
  dmBase.rxFilteredPillar.EmptyTable;
  dmBase.rxFilteredDistance.EmptyTable;
//  dmBase.rxBaselineDefaultFilter.EmptyTable;
  dmBase.rxBaselineDefaultFilterEDM.EmptyTable;
  dmBase.rxBaselineDefaultFilterBase.EmptyTable;

  dmBase.rxEllipsoid.First;
  sEllipsId := dmBase.rxEllipsoid.FieldByName('EllipsId').AsInteger;

  with dmBase.rxFilteredBaseline do
  begin
    Append;
    FieldByName('BaselineID').AsInteger := sNewBaselineID;
    FieldByName('BaseLineId').AsInteger := sNewBaselineId;
    FieldByName('BaseLineCalibrationDate').AsString := DateToStr(Date);
    FieldByName('BaseLineArchiveFlag').AsString := 'C';
    FieldByName('BaseLegalHeight').AsFloat := 0;
    FieldByName('BaseStdICConstant').AsFloat := 0.004;
    FieldByName('BaseStdICPPM').AsFloat := 20;
    FieldByName('BaseRelativeHumidity').AsFloat := 50;
    FieldByName('BaselineConfLevel').AsFloat := 95;
    FieldByName('EllipsID').AsInteger := sEllipsID;
    Post;
  end;

  dmBase.InitBaselineDefault(sNewBaselineID);

  SaveBaseline;

  edtConfLevel.Text := '95';
  dbedtName.Color := clWindow;
  dbedtName.Readonly := False;
  lblNote1.Visible := True;
  lblNote2.Visible := True;
  lblNote3.Visible := True;
  lblNote4.Visible := True;

  lblBaselineDetails.Caption := 'Create New Baseline';
  pnlBaselineAccuracy.Caption := '';
  pcBaseline.ActivePage := tsDetails;
  edtRelHumidity.Text := '50';
  bedtLegalHeight.Value := 0;
  edtCalibrationRef.Text := '';
  pickdate.Date := Date;
  lblUsedByJob.Visible := False;

  btnDeleteBaseline.Enabled := True;
  btnArchiveBaseline.Enabled := True;
  btnNext1.Enabled := True;

  dbedtName.SetFocus;
end;

(*******************************************************************************
@procedure btnDeleteBaselineClick(Sender: TObject);

@description
  1. Deletes a selected baseline
  2. You can only delete baselines, which have not been used for the calibration
     of EDM instruments.
*******************************************************************************)
procedure TfrmBaseline.btnDeleteBaselineClick(Sender: TObject);
begin
  if UsedByJob then
  begin
    MessageDlg('Baseline is used by a job and cannot be deleted',mtWarning,[mbOK],0);
  end
  else
  begin
    if MessageDlg('All data associated with this baseline will be deleted.'+#10+' Are you sure you want delete this baseline?',MtWarning,[mbYes,mbNo],0) = mrNo then
    begin
      Abort;
    end;
    DeleteBaseline;
  end;
  if dmBase.rxFilteredBaseline.isEmpty then
  begin
    btnDeleteBaseline.Enabled := False;
    btnArchiveBaseline.Enabled := False;
    btnNext1.Enabled := False;
  end;
end;

(*******************************************************************************
@procedure dbedtNameExit(Sender: TObject);

@description
  Validates the baseline name.
*******************************************************************************)
procedure TfrmBaseline.dbedtNameExit(Sender: TObject);
begin
  ErrorList.Clear;
  with dmBase.rxFilteredBaseline do
  begin
    if (FieldByName('BaselineName').isNull) or (Trim(FieldByName('BaselineName').AsString)='') then
    begin
      ErrorList.Add('Baseline Name is required');
      dbedtName.Color := clRed;
      dbedtName.SetFocus;
      ShowErrors(ErrorList);
      Abort;
    end;
  end;
  if IsBaselineNameDuplicated then
  begin
    Abort;
  end;
end;

(*******************************************************************************
@procedure dbedtNameChange(Sender: TObject);

@description
  Colour of Edit box becomes white.
*******************************************************************************)
procedure TfrmBaseline.dbedtNameChange(Sender: TObject);
begin
  dbedtName.Color := clWindow;
end;

(*******************************************************************************
@procedure dbedtAuthorityChange(Sender: TObject);

@description
  Colour of Edit box becomes white.
*******************************************************************************)
procedure TfrmBaseline.dbedtAuthorityChange(Sender: TObject);
begin
  dbedtAuthority.Color := clWindow;
end;

(*******************************************************************************
@procedure dbedtLocationChange(Sender: TObject);

@description
  Colour of Edit box becomes white.
*******************************************************************************)
procedure TfrmBaseline.dbedtLocationChange(Sender: TObject);
begin
  dbedtLocation.Color := clWindow;
end;

(*******************************************************************************
@procedure UpdateBaselineAccuracy;

@description
  Updates the baseline accuracy.
*******************************************************************************)
procedure TfrmBaseline.UpdateBaselineAccuracy;
var
  sBaselineID: Integer;
  dUncertaintyConstant: Double;
  dUncertaintyScale: Double;
  dConstant, dScale: Double;
begin
  dConstant := 0;
  dScale := 0;

  dmBase.ComputeBaselineAccuracy(dmBase.rxFilteredDistance, dUncertaintyConstant, dUncertaintyScale);

  if dmBase.rxStandard.locate('Type','F',[]) then
  begin
    dConstant := dmBase.rxStandard.FieldByName('StandardConstant').AsFloat;
    dScale := dmBase.rxStandard.FieldByName('StandardScale').AsFloat;
  end;

  if dUncertaintyConstant < dConstant then  dUncertaintyConstant := dConstant;
  if dUncertaintyScale < dScale then  dUncertaintyScale := dScale;

  sBaselineID := dmBase.rxFilteredBaseline.FieldByName('BaselineID').AsInteger;
  if dmBase.rxBaselineAccuracy.Locate('BaselineID',IntToStr(sBaseLineID),[]) then
  begin
    dmBase.rxBaselineAccuracy.Edit;
  end
  else
  begin
    dmBase.rxBaselineAccuracy.Append;
    dmBase.rxBaselineAccuracy.FieldByName('BaselineID').AsInteger := sBaselineID;
  end;

  dmBase.rxBaselineAccuracy.FieldByName('UncertaintyConstant').AsFloat := dUncertaintyConstant;
  dmBase.rxBaselineAccuracy.FieldByName('UncertaintyScale').AsFloat    := dUncertaintyScale;
  dmBase.rxBaselineAccuracy.Post;

  pnlBaselineAccuracy.Caption := Format('%8.2f mm + %8.2f ppm',
  [dUncertaintyConstant,dUncertaintyScale]);
  pnlBaselineAccuracy2.Caption := pnlBaselineAccuracy.Caption;
end;

(*******************************************************************************
@function GetLastId(rxTable: TRxMemoryData; IDName: String): Integer;

@description
  Returns the next ID number.
*******************************************************************************)
function TfrmBaseline.GetLastId(rxTable: TRxMemoryData; IDName: String): Integer;
begin
  with rxTable do
  begin
    Last;
    Result := FieldByName(IDName).AsInteger+1;
  end;
end;

(*******************************************************************************
@procedure DeleteBaseline;

@description
  Deletes the baseline and its associated information from the database.
*******************************************************************************)
procedure TfrmBaseline.DeleteBaseline;
var
  sBaselineID: Integer;
  doEvent2: Boolean;
begin
  doEvent2 := doEvent;
  doEvent := False;
  sBaselineID := dmBase.rxFilteredBaseline.FieldByName('BaselineID').AsInteger;
  dmBase.rxFilteredBaseline.Delete;
  with dmBase.rxBaseline do
  begin
    if Locate('BaselineID',IntToStr(sBaselineID),[]) then
    begin
      dmBase.rxBaselineAccuracy.Delete;
    end;
  end;

  with dmBase.rxPillar do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;

  with dmBase.rxDistance do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;

  with dmbase.rxBaselineAccuracy do
  begin
    if Locate('BaselineID',IntToStr(sBaselineID),[]) then
    begin
      Delete;
    end;
  end;

  doEvent := False;
  with dmBase.rxBaselineDefault do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;
  doEvent := doEvent2;
end;


(*******************************************************************************
@procedure SaveNewData;

@description
  Saves the new data to the main database.
*******************************************************************************)
procedure TfrmBaseline.SaveNewData;
begin

  SaveBaseline;

  dmBase.SaveBaselineDefaults;
  
  SaveFromFilteredTable(dmBase.rxFilteredPillar, dmBase.rxPillar,'PillarID');
  SaveFromFilteredTable(dmBase.rxFilteredDistance, dmBase.rxDistance,'DistID');
end;

(*******************************************************************************
@procedure SaveBaseline;

@description
  Saves the new data to the main database.
*******************************************************************************)
procedure TfrmBaseline.SaveBaseline;
var
  sBaselineID: Integer;
begin

  sBaselineID := dmBase.rxFilteredBaseline.FieldByName('BaselineID').AsInteger;
  with dmBase.rxBaselineAccuracy do
  begin
    if not Locate('BaselineID',IntToStr(sBaselineID),[]) then
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sBaseLineID;
      FieldByName('UncertaintyConstant').AsFloat := 0;
      FieldByName('UncertaintyScale').AsFloat    := 0;
      Post;
    end;
  end;

  SaveFromFilteredTable(dmBase.rxFilteredBaseline, dmBase.rxBaseline,'BaselineID');
  dmBase.rxFilteredBaseline.Locate('BaselineID',sBaselineID,[]);
end;


(*******************************************************************************
@procedure SaveFromFilteredTable( FromTable: TRxMemoryData; ToTable: TRxMemoryData;
   IDFieldName: String);

@description
  Saves the information of a filtered table to the main database.
*******************************************************************************)
procedure TfrmBaseline.SaveFromFilteredTable(
  FromTable: TRxMemoryData;
  ToTable: TRxMemoryData;
  IDFieldName: String);
var
  strRecordID: String;
  i, j: Integer;
  strToField: String;
  strFromField: String;
begin
  with FromTable do
  begin
    if not isEmpty then
    begin
      First;
      while not EOF do
      begin
        strRecordID := FieldByName(IDFieldName).AsString;
        if ToTable.Locate(IDFieldName,strRecordID,[]) then
        begin
          ToTable.Edit;
        end
        else
        begin
          ToTable.Append;
        end;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strToField := uppercase(ToTable.Fields[j].FieldName);
          strFromField := uppercase(Fields[i].FieldName);
          while (strToField <> strFromField) and
                 ( j < ToTable.FieldCount-1) do
          begin
            Inc(j);
            strToField := uppercase(ToTable.Fields[j].FieldName);
          end;
          if strFromField = strToField then
          begin
            ToTable.Fields[j].Value := Fields[i].Value;
          end;
        end;
        ToTable.Post;
        Next;
      end;
    end;
  end;
end;

(*******************************************************************************
@function CheckBaseline: Boolean;

@description
  1. Validates the baseline information.
  2. Returns TRUE if the baseline was validated.
*******************************************************************************)
function TfrmBaseline.CheckBaseline: Boolean;
begin
  ErrorList.Clear;
  Result := True;
  if hasNewBaseline then
  begin
    if IsBaselineNameDuplicated then Result := False;
  end;

  if Result then
  begin
    with dmbase.rxFilteredBaseline do
    begin
      if (FieldByName('BaselineAuthority').isNull) or (Trim(FieldByName('BaselineAuthority').AsString)='') then
      begin
        ErrorList.Add('Baseline Authority is required');
        dbedtAuthority.Color := clRed;
        dbedtAuthority.SetFocus;
      end;
    end;
    with dmBase.rxFilteredBaseline do
    begin
      if (FieldByName('BaselineLocation').isNull) or (Trim(FieldByName('BaselineLocation').AsString)='') then
      begin
        ErrorList.Add('Baseline Location is required');
        dbedtLocation.Color := clRed;
        dbedtLocation.SetFocus;
      end
    end;
    with dmBase.rxFilteredBaseline do
    begin
      if (FieldByName('BaselineName').isNull) or (Trim(FieldByName('BaselineName').AsString)='') then
      begin
        ErrorList.Add('Baseline Name is required');
        dbedtName.Color := clRed;
        dbedtName.SetFocus;
      end;
    end;
    if ErrorList.Count > 0 then
    begin
      ShowErrors(ErrorList);
      Result := False;
    end;
  end;
end;

(*******************************************************************************
@procedure btnAppendClick(Sender: TObject);

@description
  Append a new pillar.
*******************************************************************************)
procedure TfrmBaseline.btnAppendClick(Sender: TObject);
begin
  dmBase.rxFilteredPillar.Append;
end;

(*******************************************************************************
@procedure nbAppendClick(Sender: TObject);

@description
  Append a new pillar.
*******************************************************************************)
procedure TfrmBaseline.nbAppendClick(Sender: TObject);
begin
  dmBase.rxFilteredPillar.Append;
end;

(*******************************************************************************
@procedure rbtnSeqArchivedFromFirstPillarClick(Sender: TObject);

@description
  Displays the distances from the first pillar to all othr pillars of the archived baseline.
*******************************************************************************)
procedure TfrmBaseline.rbtnArchivedFromFirstPillarClick(Sender: TObject);
begin
  if doEvents then
  begin
    doEvents := False;
    rbtnArchivedFromFirstPillar2.Checked := True;
    rbtnSeqArchivedDistances.Checked := True;
    doEvents := True;
  end;
  pcBaseline.ActivePage := tsArchivedDistancesFromPillar1;
end;

(*******************************************************************************
@procedure rbtnSeqArchivedDistances2Click(Sender: TObject);

@description
  Displays the seqential distances of the archived baseline.
*******************************************************************************)
procedure TfrmBaseline.rbtnSeqArchivedDistances2Click(Sender: TObject);
begin
  if doEvents then
  begin
    doEvents := False;
    rbtnSeqArchivedDistances.Checked := True;
    rbtnArchivedFromFirstPillar2.Checked := True;
    doEvents := True;
  end;
  pcBaseline.ActivePage := tsArchivedDistances;
end;

(*******************************************************************************
@procedure btnArchiveBaselineClick(Sender: TObject);

@description
  Archives a current baseline.
*******************************************************************************)
procedure TfrmBaseline.btnArchiveBaselineClick(Sender: TObject);
begin
  if rbtnCurrent.Checked then
  begin
    if not UsedByJob then
    begin
      MessageDlg('You can not archive a Baseline, which has not yet been used in the calibration of EDM instruments.',
      mtWarning,[mbOK],0);
      Abort;
    end;

    if MessageDlg('Archived Baselines can no longer be selected when calibrating EDM instruments.'+#10+#10+
      'Are you sure you want to archive baseline '''+
       dmBase.rxFilteredBaseline.FieldByName('BaselineName').AsString+' - '+
       dmBase.rxFilteredBaseline.FieldByName('BaselineCalibrationDate').AsString+'''',
        mtWarning,[mbYes, mbNo],0) = mrYes then
    begin
      with dmBase.rxFilteredBaseline do
      begin
        Edit;
        FieldByname('BaselineArchiveFlag').AsString := 'A';
        Post;
      end;
      dmBase.FilterBaseline('C');
    end;
  end
  else
  begin
    if dmBase.rxBaseline.Locate('BaselineName;BaselineArchiveFlag',
      VarArrayOf([dmBase.rxFilteredBaseline.FieldByName('BaselineName').AsString,'C']),[]) then
    begin
      if MessageDlg('Baseline '''+ dmBase.rxFilteredBaseline.FieldByName('BaselineName').AsString+' - '+
         dmBase.rxFilteredBaseline.FieldByName('BaselineCalibrationDate').AsString+''' will replace '+
         ''''+ dmBase.rxBaseline.FieldByName('BaselineName').AsString+' - '+
         dmBase.rxBaseline.FieldByName('BaselineCalibrationDate').AsString+''' as the current baseline.'+#10+
         'The replaced Baseline '''+ dmBase.rxBaseline.FieldByName('BaselineName').AsString+' - '+
         dmBase.rxBaseline.FieldByName('BaselineCalibrationDate').AsString+''' will be archived.'+#10+
         'Only current baselines can be selected in new calibration jobs.'+#10+#10+
         'Are you sure you want to unarchive Baseline '''+ dmBase.rxFilteredBaseline.FieldByName('BaselineName').AsString+' - '+
         dmBase.rxFilteredBaseline.FieldByName('BaselineCalibrationDate').AsString+'''.', mtWarning,[mbYes, mbNo],0) = mrYes then
      begin
        with dmBase.rxBaseline do
        begin
          Edit;
          FieldByname('BaselineArchiveFlag').AsString := 'A';
          Post;
        end;
        with dmBase.rxFilteredBaseline do
        begin
          Edit;
          FieldByname('BaselineArchiveFlag').AsString := 'C';
          Post;
        end;
        dmBase.FilterBaseline('A');
      end;
    end
    else
    begin
      if MessageDlg('You will be able to select Baseline '''+ dmBase.rxFilteredBaseline.FieldByName('BaselineName').AsString+' - '+
         dmBase.rxFilteredBaseline.FieldByName('BaselineCalibrationDate').AsString+''' when calibrating EDM instruments.'+#10+#10+
         'Are you sure you want to unarchive Baseline '''+ dmBase.rxFilteredBaseline.FieldByName('BaselineName').AsString+' - '+
         dmBase.rxFilteredBaseline.FieldByName('BaselineCalibrationDate').AsString+'''.', mtWarning,[mbYes, mbNo],0) = mrYes then
      begin
        with dmBase.rxFilteredBaseline do
        begin
          Edit;
          FieldByname('BaselineArchiveFlag').AsString := 'C';
          Post;
        end;
        dmBase.FilterBaseline('A');
      end;
    end;
  end;
  if dmBase.rxFilteredBaseline.isEmpty then
  begin
    btnDeleteBaseline.Enabled := False;
    btnArchiveBaseline.Enabled := False;
    btnNext1.Enabled := False;
  end
  else
  begin
    btnDeleteBaseline.Enabled := True;
    btnArchiveBaseline.Enabled := True;
    btnNext1.Enabled := True;
  end;
end;

(*******************************************************************************
@procedure cbEditPillarNumberClick(Sender: TObject);

@description
  Enables the user to change the pillar number.
*******************************************************************************)
procedure TfrmBaseline.cbEditPillarNumberClick(Sender: TObject);
begin
  if cbEditPillarNumber.Checked then
  begin
    dbgridPillars.FixedCols := 0;
  end
  else
  begin
    dbgridPillars.FixedCols := 1;
  end;
end;

(*******************************************************************************
@procedure CheckBaselineDesign : Boolean;

@description
  Returns TRUE if the baseline design is incorrect.
  The distances between the pillars shouls not be equal.
*******************************************************************************)
function TfrmBaseline.CheckBaselineDesign : Boolean;
var
  hasError : Boolean;
  dPreviousDistance : Double;
  dPreviousDistanceInterval: Double;
  dDistanceInterval: Double;
  dInterval1, dInterval2: Double;
  dPreviousDistance1, dPreviousDistance2: Double;
begin
  dPreviousDistance := 0;
  dPreviousDistanceInterval := 0;
  hasError := False;
  with rxDistance2 do
  begin
    First;
    while (not EOF) and (not hasError) do
    begin
      dDistanceInterval :=  FieldByName('DistLegalDistance').AsFloat - dPreviousDistance;
      if dDistanceInterval = dPreviousDistanceInterval then
      begin
        hasError := True;
      end;
      dPreviousDistanceInterval := dDistanceInterval;
      dPreviousDistance := FieldByName('DistLegalDistance').AsFloat;
      Next;
    end;

    dPreviousDistance1 := 0;
    First;
    while (not EOF) and (not hasError) do
    begin
      dPreviousDistance2 :=  FieldByName('DistLegalDistance').AsFloat;
      Next;
      if not EOF then
      begin
        dInterval1 :=  FieldByName('DistLegalDistance').AsFloat-dPreviousDistance1;
        Next;
        if not EOF then
        begin
          dInterval2 :=  FieldByName('DistLegalDistance').AsFloat-dPreviousDistance2;
          dPreviousDistance1 := dPreviousDistance2;
          if dInterval1 = dInterval2 then
          begin
            hasError := True;
          end;
          Prior;
        end;
      end;
    end;
  end;
  if hasError then
  begin
    MessageDlg('The Baseline has not been designed correctly.'+#10+
    'You should not have equal spacing between any combination of pillars'+#10+#10+
    'It may not be possible to calibrate EDM instruments on this baseline'+#10+
    'if you select a combination of pillars whose interval distances are equal.',mtWarning,[mbOK],0);
  end;
  Result := hasError;
end;

procedure TfrmBaseline.btnNextDefaultsClick(Sender: TObject);
begin
  dmbase.SaveBaselineDefaults;

  sBaselineId := dmBase.rxFilteredBaseline.FieldByName('BaseLineId').AsInteger;
  dmBase.rxFilteredBaseline.Locate('BaselineID',sBaselineID,[]);
  dmBase.FilterPillar( sBaselineId);
  dmBase.FilterDistance( sBaselineId);

  SetPillarColumnsVisible;

  pcBaseline.ActivePage := tsPillar;
  strGridName := 'Pillars';

  with dmBase.rxFilteredPillar do
  begin
    FieldByName('PillarHtStdDev').DisplayLabel :=
       'Height~Uncertainty ('+dmBase.rxFilteredBaseline.FieldByName('BaselineConfLevel').AsString+'%)';
    if RecordCount < 3 then
    begin
      btnNext3.Enabled := False;
      lblWarning.Visible := True;
    end
    else
    begin
      btnNext3.Enabled := True;
      lblWarning.Visible := False;
    end;
  end;

  if not isUsedByJob then
  begin
    dbgridPillars.Color := clWindow;
    dbgridPillars.ReadOnly := False;
    dbnavPillars.Visible := True;
    dbnavPillars2.Visible := False;

    dmBase.sNextPillarId := dmbase.GetlastId(dmBase.rxPillar,'PillarID');

    if dmBase.rxFilteredPillar.isEmpty then
    begin
      dmBase.sNextPillarNumber := 1;
      dmBase.doEvents := True;
      dmBase.rxFilteredPillar.Append;
      dmBase.rxFilteredPillar.Post;
      dmBase.rxFilteredPillar.Edit;
    end
    else
    begin
      dmBase.rxFilteredPillar.Last;
      dmBase.sNextPillarNumber := dmBase.rxFilteredPillar.FieldByName('PillarSeqNo').AsInteger+1;
    end;
  end;

  dmbase.rxFilteredPillar.First;
  dbgridPillars.SetFocus;
  dbgridPillars.SetActiveField('PillarHeight');
end;

procedure TfrmBaseline.btnBackDefaultsClick(Sender: TObject);
begin
  dmbase.SaveBaselineDefaults;

  sBaselineId := dmBase.rxFilteredBaseline.FieldByName('BaseLineId').AsInteger;
  dmBase.rxFilteredBaseline.Locate('BaselineID',sBaselineID,[]);
  
  pcBaseline.ActivePage := tsDetails;
end;

procedure TfrmBaseline.dbgridUncertaintyCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName = 'Unit' then
  begin
    ABrush.Color := clBtnFace;
    if Highlight then ABrush.Color := clMenuHighlight;
  end;
end;

procedure TfrmBaseline.btnHelpDefaultsClick(Sender: TObject);
begin
  Application.HelpContext(3250);
end;

procedure TfrmBaseline.btnClose2Click(Sender: TObject);
begin
  if CheckBaseline then
  begin
    with dmbase.rxFilteredBaseline do
    begin
      Edit;
      FieldByName('BaseLineCalibrationDate').AsString := DateToStr(pickDate.Date);
      FieldByName('BaseLegalHeight').AsFloat := bedtLegalHeight.Value;
      FieldByName('BaseRelativeHumidity').AsString := edtRelHumidity.Text;
      FieldByName('BaseStdICConstant').AsFloat := 0.004;
      FieldByName('BaseStdICPPM').AsFloat := 20;
      FieldByName('BaseLineConfLevel').AsString := edtConfLevel.Text;
      FieldByName('BaseLineCalibrationRef').AsString := edtCalibrationRef.Text;
      Post;
    end;
    SaveNewData;
    Close;
  end;

end;

end.
