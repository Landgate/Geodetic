(*******************************************************************************
@FormUnit BseCalib;

@Description
  Contains procedures, which are used in the Calibration computations.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseCalib;

interface

uses
  Windows, Messages,SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, ExtCtrls,
  DB, BseMisc, BseDM, BSEdmMain, Math, RxMemDS, BSEProgress, DateUtils;

function  GetEllipsARadius(sEllipsID : Integer) : Double;
procedure DeleteOutputFiles ( strReportFileName:  string);
function BaseEDMCalibration( strOutputFileName: String): Boolean;
procedure LineInformation;

procedure AtmosphericCorrection (
    var pre: PRE_L);                // Pre-adj statistics
function AtmosphericCorrection2 (
    var pre: PRE_L): Boolean;       // Pre-adj statistics
procedure OffsetCorrection (
    sLineCount: Integer);           // Number of lines
procedure SlopeCorrection (
   dRefHeight: DOUBLE;                  // Reference height
   dRadius:    DOUBLE;                  // Radius of earth
   sLineCount: Integer);                // Number of lines
procedure ReduceDistance  (
    sLineCount: Integer);           // Number of lines
procedure  AprioriStdDevDistance1;
procedure AprioriStdDevDistance2;
function  BaseEDMPrePrint(
    sPage:           Integer;            // page number
    sTotalPages:     Integer;            // Total number of pages
    strBaseFileName: string;             // Base file name
    pre:            PRE_L): Integer;     // Pre-processing struct
function  LeastSquaresRoutine (
    var sPage:          Integer;          // Page number
    sTotalPages:        Integer;          // Total pages
    sLineCount:         Integer;          // Number of lines
    dUnitLength:        DOUBLE;           // EDM Unit length
    strBaseFileName:    string;           // Base file name
    pre:                PRE_L): Boolean;  // Pre-processing struct

procedure FormEDMCertData(pre: PRE_L);
procedure PrintEDMCertificate(strBaseFile: string);     // Output file

procedure FillrxEDMObservationsList(sMeasID : Integer);
procedure FillrxPillarList;
procedure PrintComputationMethod;
procedure PrintAtmosphericParameters(pre: PRE_L);
function  PrintLineObservation(
    sPage: Integer;                   // Page number
    sTotalPages: Integer): Integer;   // Total pages
function  PrintDistanceReductions(
   sPage: Integer;                   // Page number
   sTotalPages: Integer): Integer;   // Total pages
function  PrintDistanceStdDev(
   sPage: Integer;                   // Page number
   sTotalPages: Integer): Integer;   // Total pages
function PrintLinearMiscloses(
   sPage: Integer;                   // Page number
   sTotalPages: Integer): Integer;   // Total pages
procedure BaseLeastSquareSolution (
   sLineCount: Integer;                // Number of lines
   dUnitLength:  DOUBLE);              // Unit lenght in metres
procedure BaseFormObservationEquations (
    sLineCount: Integer;                // Number of lines
    dUnitLength: DOUBLE);               // Unit lenght in metres
procedure BaseFormNormalEquations (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
procedure Multiply_BtP_Matrix (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
procedure Multiply_BtPT_Matrix (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
procedure Multiply_BtPB_Matrix (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
procedure Matrix( sUnknowns: Integer);
procedure AdjustedDistances  (
   dUnitLength:  DOUBLE);            // Unit lenght in metres
procedure LSVarianceFactor;
procedure Basechitest;
procedure BaseNormalDistribution;
function BasePDF (dAbscissa: Double): Double; // Abscissa: Normal Distributions
procedure BaseChiValue;
procedure VarianceMatrixByVF(
   dPostvarFactor: DOUBLE;      // A posteriori variance factor
   sParCount: Integer);         // Number of parameters
procedure StdDevResiduals;
procedure LSStandardisedResidual;
procedure Student;
procedure TestCyclicError;
procedure MaxMinDistance( sLineCount: Integer);
function  BaseEDMPostPrint(
   sPage: Integer;                        // Page number
   sTotalPages: Integer;
   strBaseFileName: String;               // Base file name
   pre: PRE_L): Integer;                 // ptr to pre  processing struct
procedure PrintCalibrationParameters;
procedure PrintNationalStandards;
function UncertaintyIC2(
      dDistance: DOUBLE): Double;
function PrintUncertainty(
   dDistance:        DOUBLE;           // Distance
   dInstUncertainty: DOUBLE;           // Instrument uncertainty
   dMinUncertainty:  DOUBLE): Boolean; // Minimum uncertainty
procedure PrintPostStatistics;
function PrintResiduals(
   sPage: Integer;                  // Page number
   sTotalPages: Integer): Integer;  // Total pages
procedure BaseHistogram;
function PrintCurve (
   strLine: String;
   sCurrentCol: Integer;               // Current column value
   sPrevCol: Integer;                  // Previous column value
   sRow: Integer;                      // Current row
   sPlace: Integer): String;

function BaselineCalibration(
    strOutputFileName: String): Boolean;    // output file name string

function  LeastSquaresRoutine2 (
    var sPage:          Integer;          // Page number
    sTotalPages:        Integer;          // Total pages
    sLineCount:         Integer;          // Number of lines
    dUnitLength:        DOUBLE;           // EDM Unit length
    strBaseFileName:    string;           // Base file name
    pre:                PRE_L): Boolean;  // ptr to pre  processing struct
procedure InitialiseXCoord;
procedure BaseLeastSquareSolution2 (
   sLineCount: Integer;                // Number of lines
   dUnitLength:  DOUBLE);              // Unit lenght in metres
procedure AdjustedDistances2 (dConstant: Double);       // Constant Error of prescr EDM
function  BaseEDMPostPrint2(
   var sPage: Integer;                    // Page number
   sTotalPages: Integer;                  // Total pages
   strBaseFileName: String;               // Base file name
   pre: PRE_L): Boolean;                  // ptr to pre  processing struct
procedure BaseFormObservationEquations2 (
    sLineCount: Integer;                // Number of lines
    dUnitLength: DOUBLE);               // Unit lenght in metres
procedure  PrintLSParameters(
    sDistCount: Integer);              // Number of lines
procedure PrintPostStatistics2;
function PillarIndex(sPillarID: Integer): Integer;

procedure ComputeAprioriStdDevs( strMeasType: String; sLineCount: Integer);
procedure ComputeStdDevAtmosphere(aLine: LINE_L);
procedure ComputePartialWaterVapourPressure;
procedure ComputeBaselineIntervalStdDev;
procedure ComputeStdDevObservedDistance(sLineCount: Integer);
procedure  UpdateBaseline(isUsedByJobs: Boolean);
procedure  UpdateCertifiedDistanceRXTable(sDistCount: Integer);
function CountReportPages: Integer;
procedure PrintAccreditation;
procedure ComputeBaselinelength;
procedure PrintEDMCertificate2;
function RightAlign(strField: String; sWidth: Integer): String;
procedure PrintBaselineCertificate;
procedure PrintBaselineCertificate2;
procedure PrintAccreditationHeader;
procedure LinesFromSentence(
  strSentence: String;
  sWidth: Integer;
  var aLines: TStringList);
procedure AtmosphericCorrectionDI3000 (
    var pre: PRE_L);     // ptr to pre-adj statistics
function CheckBaselineDesign (
    sLineCount: Integer): Boolean;      // Number of lines
function EDMPageHeader(
      sPage: Integer;                     // Page number
      sTotalPages: Integer): Integer;    // Page number
procedure PrintJobInformation;
procedure PrintInstrumentParameters;
procedure PrintLegalDistances;
procedure FillMeasurementsList;
function GetCopyRightReport: string;
function GetProgramOwner: string;
function GetVerifyingAuthority: string;
procedure SaveCopyRightReport( strCopyRight: string);
procedure SaveProgramOwner( strProgramOwner: string);
function GetLUM( var dUncertaintyConstant: Double;
                  var dUncertaintyScale: Double;
                  strCalibType: string): Boolean;
function AddCalibrationUncertainties(dUncertainty: Double; dDistance: Double): Double;
function AddEDMCalibrationUncertainties(dScaleStdDev: Double): Double;
function GetUncertaintyWithUnits(AConstant, AScale: Double;
  AConstantFormat, AScaleFormat, AMessage: string; IncludeNewBrackets: boolean = True;
  ShowLengthInMetres: boolean = True; IncludeOldBrackets: boolean = True;
  IncludePlusMinus: boolean = True): string;
function GetLumUnitsFromDB: string;
procedure LogDebugMessage(AMessage: string);
procedure InitialiseOMat(sLineCount, sMaxUnknowns: integer);
procedure InitialiseMat(sMaxUnknowns: integer);

var
  strWeatherCondition: String;
  line: array of LINE_L;               // ptr to line
  car: array of CARTESIAN_L;           // ptr to cartesian ccord struct
  OMat: OBSMATRIX_L;                   // observation equations struct
  Post: POST_L;
  Mat: MATRIX_L;                       // normal equations matrix
  pfRPTFile: TextFile;                 // ptr to Output file
  pfRPTFile4: TextFile;                // ptr to Output file
  xCoord:  XCOORD_L;                   // X Coordinates of pillars
  dConstant: Double;
  Atmosphere: ATMOSPHERE_L;
  dBaselineUncertaintyScale    : Double;
  dBaselineUncertaintyConstant : Double;
  hasDesignError: Boolean;
  printDesignError: Boolean;
  dBaselineLength: Double;
  hasPrismConstantBeenSetInEDM: Boolean;
  cMetsFlag: string;
  isSignificant: boolean;
  cerEDM: CERTIFEDM_L;
  strCopyRight: string;
  strProgramOwner: string;
  hasUnitLength: Boolean;
  DebugLogfile: TStringlist;
  LogfileCount: integer;

implementation

uses
  Bse2Job, BseMain, BseReportSummary, BseBaselineCertificate, BseBaselineCertificate2;

(*******************************************************************************
@procedure FillrxPillarList;

@description
  Saves pillar onformation to a temporary table (dmBase.rxmemPillar).
*******************************************************************************)
procedure FillrxPillarList;
begin
  dmBase.rxmemPillar.EmptyTable;
  with dmMain.rxPillar do
  begin
    First;
    while not EOF do
    begin
      dmBase.rxmemPillar.Append;
      dmBase.rxmemPillar.FieldByName('PillarID').Value         := FieldByName('PillarID').Value;
      dmBase.rxmemPillar.FieldByName('PillarNo').Value         := FieldByName('PillarNo').Value;
      dmBase.rxmemPillar.FieldByName('PillarLatitude').Value   := FieldByName('PillarLatitude').AsFloat;
      dmBase.rxmemPillar.FieldByName('PillarLongitude').Value  := FieldByName('PillarLongitude').AsFloat;
      dmBase.rxmemPillar.FieldByName('PillarHeight').Value     := FieldByName('PillarHeight').AsFloat;
      dmBase.rxmemPillar.FieldByName('HorizOffset').Value      := FieldByName('PillarOffset').AsFloat;
      dmBase.rxmemPillar.FieldByName('MajorAxis').Value        := FieldByName('PillarEllipsARadius').AsFloat;
      dmBase.rxmemPillar.FieldByName('MinorAxis').Value        := FieldByName('PillarEllipsBRadius').AsFloat;
      dmBase.rxmemPillar.FieldByName('AzimuthMajorAxis').Value := FieldByName('PillarEllipsOrient').AsFloat;
      dmBase.rxmemPillar.FieldByName('StdDevHeight').Value     := FieldByName('PillarHtStdDev').AsFloat;
      if dmBase.rxmemPillar.FieldByName('StdDevHeight').isNull or
         (dmBase.rxmemPillar.FieldByName('StdDevHeight').AsFloat = 0) then
      begin
        dmBase.rxmemPillar.FieldByName('StdDevHeight').AsFloat := aDefault.StdDevPillarRL;
      end;
      dmBase.rxmemPillar.Post;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure FillrxEDMObservationsList(sMeasID : Integer);

@description
  Saves the observations between two selected pillars to a temporary table (dmBase.rxmemObservation).
*******************************************************************************)
procedure FillrxEDMObservationsList(sMeasID : Integer);
begin
  dmMain.FilterEDMObs(sMeasID);
  with dmMain.rxFilteredEDMObs do
  begin
    First;
    while not EOF do
    begin
      dmBase.rxmemObservation.Append;
      dmBase.rxmemObservation.FieldByName('MeasureID').AsInteger := sMeasID;
      dmBase.rxmemObservation.FieldByName('ObsDistance').Value := FieldByName('EDMObsDistance').Value;
      dmBase.rxmemObservation.Post;
      Next;
    end;
  end;
end;

(*******************************************************************************
@function GetEllipsARadius(sEllipsID : Integer) : Double;

@description
  Gets the Ellipsoidal radius.
*******************************************************************************)
function GetEllipsARadius(sEllipsID : Integer) : Double;
begin
  with dmBase.rxEllipsoid do
  begin
    Locate('EllipsID',IntToStr(sEllipsID),[]);
    GetEllipsARadius := FieldByName('EllipsARadius').AsFloat;
  end;
end;

(*******************************************************************************
@procedure DeleteOutputFiles (strReportFileName:  string);

@description
  Deletes the previous baseline reports.
*******************************************************************************)
procedure DeleteOutputFiles (strReportFileName:  string);
var
  strOutputFileName: String;
begin
  //*********************************************
  // Delete Baseline reports
  //**********************************************
  strReportFileName := strReportFileName + 'CALIB';

  strOutputFileName := strReportFileName+'.B01';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B02';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B03';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B04';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B05';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B06';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B07';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B08';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
  strOutputFileName := strReportFileName+'.B09';
  if FileExists(strOutputFileName) then
  begin
    DeleteFile(strOutputFileName);
  end;
end;

(*******************************************************************************
@function BaseEDMCalibration(strOutputFileName: String): Boolean;

@description
  Calibrates an EDM instrument.
*******************************************************************************)
function BaseEDMCalibration(strOutputFileName: String): Boolean;
var
  sLineCount: Integer;                 // Number of lines
  dUnitLength: DOUBLE;                 // Unit length in metres
  pre: PRE_L;                          // ptr pre-adjustment statistics
  sPage: Integer;                      // Page number
  sMaxUnknowns: Integer;               // Maximum number of unknowns
  sTotalPages: Integer;
  sPage2: Integer;
  sEllipsID: Integer;
  dARadius: Double;
begin
  hasUnitLength := True;
  frmProgress.pbarProgress.Position := 70;
  Result := True;
  printDesignError := False;
  try
    sPage := 1;
    post.cMethod := dmMain.rxJobJobType.AsString;
    sMaxUnknowns := NUMBER_OF_UNKNOWNS;
    sLineCount   := dmMain.rxJMeasure.RecordCount;

    //***************************************************
    // Allocate observation and normal equation matrices
    //***************************************************
    try
      InitialiseMat(sMaxUnknowns);

      InitialiseOMat(sLineCount, sMaxUnknowns);

     //***************************************
     // Allocate cartesian coordinate arrays
     //***************************************
      SetLength(car, dmMain.rxPillar.RecordCount);

     //***************************************
     // Allocate line arrays
     //***************************************
      SetLength(line, dmMain.rxJMeasure.RecordCount);

     //***************************************
     // Allocate post-adjustment arrays
     //***************************************
      SetLength(post.dParm,sMaxUnknowns);
      SetLength(post.dParmStdDev,sMaxUnknowns);
      SetLength(post.dTrueDistance, sLineCount);
      SetLength(post.dObservedDistance, sLineCount);
      SetLength(post.dAdjustedDistance, sLineCount);
      SetLength(post.dLSCorrection, sLineCount);
      SetLength(post.dLSResidual, sLineCount);
      SetLength(post.dStdDevL, sLineCount);
      SetLength(post.dStdDevResidual, sLineCount);
      SetLength(post.dStdDevObservation, sLineCount);
      SetLength(post.dStandardisedRes, sLineCount);
      post.dConfLevel := dmMain.rxBaselineBaselineConfLevel.AsFloat;
      pre.dConfLevel  := dmMain.rxBaselineBaselineConfLevel.AsFloat;
    except
      Result := False;
      MessageDlg('There is not enough memory available for the allocation of arrays.'+#10+
      'Close all other applications and restart this application.',mtWarning,[mbOK],0);
    end;

    if  Result then
    begin
      frmProgress.pbarProgress.Position := 75;
      //**********************************************************************
      // Compute  measured pillar line information & StdDev Distance
      //**********************************************************************
       LineInformation;

      //**********************************************************************
      // Compute  atmospheric corrections
      //**********************************************************************
      if dmMain.rxAtInstrumentModelModelUnitLength.isNull then
      begin
        dUnitLength := 0;
        hasUnitLength := False;
      end
      else
      begin
        dUnitLength := dmMain.rxAtInstrumentModelModelUnitLength.AsFloat;
      end;
      pre.dUnitLength := dUnitLength;

      if dmMain.rxAtInstrumentModelModelModFreq.isNull then
      begin
        pre.dModFreq := 0;
      end
      else
      begin
        pre.dModFreq := dmMain.rxAtInstrumentModelModelModFreq.AsFloat;
      end;

      if dmMain.rxAtInstrumentModelModelCarrierWaveLength.isNull then
      begin
        pre.dCarrierWaveLength := 0;
      end
      else
      begin
        pre.dCarrierWaveLength := dmMain.rxAtInstrumentModelModelCarrierWaveLength.AsFloat;
      end;

      pre.dRefractiveIndex := dmMain.dRefractiveIndex;
      pre.strThermometer1 := dmMain.rxjobThermometer1.AsString;
      pre.strThermometer2 := dmMain.rxjobThermometer2.AsString;
      pre.strBarometer1 := dmMain.rxjobBarometer1.AsString;
      pre.strBarometer2 := dmMain.rxjobBarometer2.AsString;
      pre.strThermometer1Corr := dmMain.rxjobThermometerCorr1.AsFloat;
      pre.strThermometer2Corr := dmMain.rxjobThermometerCorr2.AsFloat;
      pre.strBarometer1Corr   := dmMain.rxjobBarometerCorr1.AsFloat;
      pre.strBarometer2Corr   := dmMain.rxjobBarometerCorr2.AsFloat;

      Result := AtmosphericCorrection2(pre);

      if Result then
      begin
        //**********************************************************************
        // Compute  offset corrections
        //**********************************************************************
        OffsetCorrection (sLineCount);

        //**********************************************************************
        // Compute  slope corrections
        //**********************************************************************
        sEllipsID := dmMain.rxBaselineEllipsID.AsInteger;
        dARadius := GetEllipsARadius(sEllipsID);
        SlopeCorrection (dmMain.rxBaselineBaseLegalHeight.AsFloat,
                         dARadius, sLineCount);

        //**********************************************************************
        // Compute  reduced distance (corrected for slope and atmospherics)
        //**********************************************************************
        ReduceDistance  ( sLineCount);

        //**********************************************************************
        // Compute  a priori standard deviations
        // standard deviations (IC Constant + Scale) from sts dev of single obs
        //**********************************************************************
        ComputeAprioriStdDevs ( 'Instrument',sLineCount);
        frmProgress.pbarProgress.Position := 42;
        pre.dStdDevConst :=  pre_StdDev.ObsDistanceConstant;
        pre.dStdDevPPM   :=  pre_StdDev.ObsDistanceScale;
        post.dStdDevConst :=  pre_StdDev.ObsDistanceConstant;
        post.dStdDevPPM   :=  pre_StdDev.ObsDistanceScale;

        sTotalPages :=  CountReportPages;
        frmJob.sTotalPages := sTotalPages;
        frmProgress.pbarProgress.Position := 80;

        //**********************************************************************
        // Print pre-least squares information
        //**********************************************************************
        sPage := BaseEDMPrePrint(
                 sPage,                   // page number
                 sTotalPages,             // Total number of pages
                 strOutputFileName,       // Base file name
                 pre);                    // pre-adjustment struct

        frmProgress.pbarProgress.Position := 90;

        ComputeBaselinelength;

        //**********************************************************************
        // Least squares solution  6 parameters
        //**********************************************************************

        //**********************************************************************
        // Initialise File
        //**********************************************************************
        isSignificant := FALSE;
        sPage2 := sPage;

        if pre.dUnitLength > 0 then
        begin
          if (dmMain.rxJMeasure.RecordCount > 6) then
          begin
            post.sParameterCount := 6;
            Result := LeastSquaresRoutine (
                      sPage,                   // Page number
                      sTotalPages,             // Total pages
                      sLineCount,              // Number of lines
                      dUnitLength,             // EDM Unit length
                      strOutputFileName,       // Output File name
                      pre);                    // Pre-adjustment struct
            frmProgress.pbarProgress.Position := 100;
            if Result then
            begin
              //**************************************************************
              // Print Certificate
              //**************************************************************
              if (dmMain.rxJobJobType.AsString = 'I') then
              begin
                if isSignificant then
                begin
                  try
                    FormEDMCertData(pre);          // Pre-adjustment struct

                    PrintEDMCertificate(strOutputFileName);
                  except
                    Result := False;
                  end;
                end;
              end;
            end;
          end;
        end;

        if Result then
        begin
          //**********************************************************************
          // Least squares solution 2 parameters
          //**********************************************************************
          if (dmMain.rxJMeasure.RecordCount > 2) and (not isSignificant) then
          begin
            post.sParameterCount := 2;
            Result := LeastSquaresRoutine (
                      sPage2,                  // Page number
                      sTotalPages,             // Total pages
                      sLineCount,              // Number of lines
                      dUnitLength,             // EDM Unit length
                      strOutputFileName,       // Output File name
                      pre);                    // Pre-adjustment struct
            frmProgress.pbarProgress.Position := 100;
            if Result then
            begin
               sPage := sPage2;
              //**************************************************************
              // Print Certificate
              //**************************************************************
              if (dmMain.rxJobJobType.AsString = 'I') then
              begin
                FormEDMCertData (pre); // Pre-adjustment struct
                PrintEDMCertificate (strOutputFileName);
              end;
            end;
          end;
        end;
      end;
    end;
  except
    Result := False;
  end;
end;

(*******************************************************************************
@procedure LineInformation

@description
  1. Saves the pillar information and observations between two selected pillars.
  2. This information is stored in a structure array (line).
*******************************************************************************)
procedure LineInformation;
var
  sLoop:         Integer;               // Loop counter
  dSumDist:      DOUBLE;                // Sum distances
  sAtPillarID:   Integer;               // AT Pillar ID
  sToPillarID:   Integer;               // TO Pillar ID
  sAtPillarIndex:   Integer;            // AT Pillar number
  sToPillarIndex:   Integer;            // TO Pillar number
  dResidual:     DOUBLE;                // Residual
  dSumVar:       DOUBLE;                // Sum of residuals
  sIndexStart:   Integer;               // Start Index
  sIndexEnd:     Integer;               // End index
  aLine: Line_L;
  sMeasureID: Integer;
  sObsCount: Integer;
  sNextPillarID: Integer;
  dSigma: Double;
begin

  sLoop := 0;
  with dmBase.rxmemMeasure do
  begin
    First;
    while not EOF do
    begin
      aLine.dHeightAboveAtPillar := FieldByName('AtHeight').AsFloat;
      aLine.dHeightAboveToPillar := FieldByName('ToHeight').AsFloat;

      sMeasureID := FieldByName('MeasureID').AsInteger;
      aLine.sLineID := sMeasureID;
      dmBase.rxmemObservation.First;
      dSumDist := 0;
      sObsCount := 0;
      while not dmBase.rxmemObservation.EOF do
      begin
        if dmBase.rxmemObservation.FieldByName('MeasureID').AsInteger = sMeasureID then
        begin
          dSumDist := dSumDist +dmBase.rxmemObservation.FieldByName('ObsDistance').AsFloat;
          Inc(sObsCount);
        end;
        dmBase.rxmemObservation.Next;
      end;
      aLine.dMeanObsDistance := dSumDist / sObsCount;

      //**********************************************************************
      // Compute standard deviation of observations
      //**********************************************************************
      dSumVar := 0.0;

      if (sObsCount < 1) then
        aLine.dObsDistanceStdDev := aDefault.StdDevDistanceReading
      else
      begin
        dmBase.rxmemObservation.First;
        while not dmBase.rxmemObservation.EOF do
        begin
          if dmBase.rxmemObservation.FieldByName('MeasureID').AsInteger = sMeasureID then
          begin
            dResidual := aLine.dMeanObsDistance - dmBase.rxmemObservation.FieldByName('ObsDistance').AsFloat;
            dSumVar := dSumVar +(dResidual * dResidual);
          end;
          dmBase.rxmemObservation.Next;
        end;
        if sObsCount < 2 then
          aLine.dObsDistanceStdDev := aDefault.StdDevDistanceReading
        else
        begin
          aLine.dObsDistanceStdDev := sqrt( dSumVar / (sObsCount-1));
          if aLine.dObsDistanceStdDev = 0 then
            aLine.dObsDistanceStdDev := aDefault.StdDevDistanceReading;
        end;
      end;
      sAtPillarID := FieldByName('AtPillarID').AsInteger;
      sToPillarID := FieldByName('ToPillarID').AsInteger;
      aLine.sAtPillarIndex := sAtPillarID;
      aLine.sToPillarIndex := sToPillarID;
      sAtPillarIndex := PillarIndex(sAtPillarID);
      sToPillarIndex := PillarIndex(sToPillarID);
      aLine.dAtPillarCoordX    := car[sAtPillarIndex].dCoordX;
      aLine.dAtPillarCoordY    := car[sAtPillarIndex].dCoordY;
      aLine.dAtPillarCoordZ    := car[sAtPillarIndex].dCoordZ;
      aLine.dToPillarCoordX    := car[sToPillarIndex].dCoordX;
      aLine.dToPillarCoordY    := car[sToPillarIndex].dCoordY;
      aLine.dToPillarCoordZ    := car[sToPillarIndex].dCoordZ;
      with dmBase.rxmemPillar do
      begin
        dmBase.rxmemPillar.First;
        while not EOF do
        begin
          if dmBase.rxmemPillar.FieldByName('PillarID').AsInteger = sAtPillarID then
          begin
            aLine.strAtPillarNo      := dmBase.rxmemPillar.FieldByName('PillarNo').AsString;
            aLine.dAtPillarLatitude  := dmBase.rxmemPillar.FieldByName('PillarLatitude').AsFloat;
            aLine.dAtPillarLongitude := dmBase.rxmemPillar.FieldByName('PillarLongitude').AsFloat;
            aLine.dAtPillarOffset    := dmBase.rxmemPillar.FieldByName('HorizOffset').AsFloat;
            aLine.dAtPillarRL        := dmBase.rxmemPillar.FieldByName('PillarHeight').AsFloat;
            aLine.dAtPillarRLStdDev  := dmBase.rxmemPillar.FieldByName('StdDevHeight').AsFloat;
          end;
          if dmBase.rxmemPillar.FieldByName('PillarID').AsInteger = sToPillarID then
          begin
            aLine.strToPillarNo      := dmBase.rxmemPillar.FieldByName('PillarNo').AsString;
            aLine.dToPillarLatitude  := dmBase.rxmemPillar.FieldByName('PillarLatitude').AsFloat;
            aLine.dToPillarLongitude := dmBase.rxmemPillar.FieldByName('PillarLongitude').AsFloat;
            aLine.dToPillarOffset    := dmBase.rxmemPillar.FieldByName('HorizOffset').AsFloat;
            aLine.dToPillarRL        := dmBase.rxmemPillar.FieldByName('PillarHeight').AsFloat;
            aLine.dToPillarRLStdDev  := dmBase.rxmemPillar.FieldByName('StdDevHeight').AsFloat;
          end;
          dmBase.rxmemPillar.Next;
        end;
      end; {with}
      //**********************************************************************
      // Compute legal distance of each line
      //**********************************************************************
      if (sAtPillarID < sToPillarID) then
      begin
        sIndexStart := sAtPillarID;
        sIndexEnd   := sToPillarID;
      end
      else
      begin
        sIndexStart := sToPillarID;
        sIndexEnd   := sAtPillarID;
      end;
      aLine.dTrueDistance := 0;
      dSumVar := 0;
      if dmBase.rxFilteredDistance.Locate('PillarFromID',sIndexStart,[]) then
      begin
        aLine.dTrueDistance :=
          dmBase.rxFilteredDistance.FieldByName('DistLegalDistance').AsFloat;
        dSigma := dmBase.rxFilteredDistance.FieldByName('DistSigma').AsFloat;
        dSumVar := dSigma * dSigma;
        sNextPillarID := dmBase.rxFilteredDistance.FieldByName('PillarToID').AsInteger;
        while sNextPillarID <> sIndexEnd do
        begin
          if dmBase.rxFilteredDistance.Locate('PillarFromID',sNextPillarID,[]) then
          begin
            aLine.dTrueDistance := aLine.dTrueDistance +
              dmBase.rxFilteredDistance.FieldByName('DistLegalDistance').AsFloat;
            dSigma := dmBase.rxFilteredDistance.FieldByName('DistSigma').AsFloat;
            dSumVar := dSumVar +dSigma * dSigma;
            sNextPillarID := dmBase.rxFilteredDistance.FieldByName('PillarToID').AsInteger;
          end
          else
            sNextPillarID := -1;
        end; {while}
      end; {if}
      aLine.dTrueDistanceStdDev := sqrt(dSumVar);

      //**********************************************************************
      // Copy meteorological measurements
      //**********************************************************************
      aLine.dDryTemp  := FieldByName('DryTemp').AsFloat + dmMain.rxJobJobTempCorr.AsFloat;
      aLine.dHumidity  := FieldByName('Humidity').AsFloat;
      aLine.cHumidityType := FieldByName('HumidityType').AsString;
      if (aLine.cHumidityType = 'W') then
      begin
        aLine.dWetTemp  := aLine.dHumidity + dmMain.rxJobJobTempCorr.AsFloat;
        aLine.dHumidity := 0.0;
      end;
      aLine.dPressure := FieldByName('Pressure').AsFloat + dmMain.rxJobJobPressureCorr.AsFloat;
      aLine.cMetsFlag := FieldByName('MetsFlag').AsString;
      if (aLine.cMetsFlag = 'N') then
      begin
        aLine.dWetTemp   := 0.0;
        aLine.dHumidity  := 0.0;
      end;

      //**********************************************************************
      // Copy instrument & prism heights above pillars
      //**********************************************************************
      aLine.dEDMConstant   := dmMain.rxAtInstrumentInstConstant.AsFloat;
      if hasPrismConstantBeenSetInEDM then
        aLine.dPrismConstant := 0
      else
        aLine.dPrismConstant := dmMain.rxToInstrumentInstConstant.AsFloat;

      line[sLoop] := aLine;
      Inc(sLoop);
      Next;
    end; {while}
  end; {with}
end;

(*******************************************************************************
@procedure AtmosphericCorrection (var pre: PRE_L);

@description
  Computes the atmospheric corrections
*******************************************************************************)
procedure AtmosphericCorrection (var pre: PRE_L);
var
  dUnitLength:            Double;       // Unit lenght in metres
  dModFreq:               Double;       // Modulation frequency in Hertz
  dCarrierWaveLength:     Double;       // Carrier wavelength in nanometres
  sLineCount:            Integer;     // Number of lines
  sLoop:                 Integer;     // Loop counter
  sCount:                Integer;     // counter
  dReferenceRefractiveIndex: Double;   // Reference Refractive Index
  dGroupRefractiveIndex: Double;            // Group Refractive Index
  dAbsTemp:              Double;       // Absolute temperature
  dY:                    Double;       // Temporary value
  dY2:                   Double;       // Temporary value
  dY4:                   Double;       // Temporary value
  dC:                    Double;       // Term used in equation
  dD:                    Double;       // Term used in equation
  dE:                    Double;       // Term used in equation
  dK:                    Double;       // Term used in equation
  deWater:               Double;       // Saturation vap pres over water
  deIce:                 Double;       // Saturation vap pres over ice
  dDist:                 Double;       // Mean observed distance
  dDryTemp:              Double;       // Dry temperature
  dWetTemp:              Double;       // Wet temperature
  dHumidity:             Double;       // Humidity
  dPressure:             Double;       // Pressure in millibars
  dSumE:                 Double;       // Sum of partial water vap pressure
  dSumDryTemp:  Double;
  dSumWetTemp:  Double;
  dSumHumidity: Double;
  dSumPressure: Double;
begin
   dSumE := 0.0;
   dSumDryTemp  := 0.0;
   dSumWetTemp  := 0.0;
   dSumHumidity := 0.0;
   dSumPressure := 0.0;

  sLineCount        := dmMain.rxJMeasure.RecordCount;
  dUnitLength       := pre.dUnitLength;
  dModFreq          := pre.dModFreq;
  dCarrierWaveLength := pre.dCarrierWaveLength;

  pre.dPartialWaterVapPres := 0.0;
  pre.dMeanHumidity        := 0.0;
  pre.dMeanDryTemp         := 0.0;
  pre.dMeanWetTemp         := 0.0;
  pre.dMeanPressure        := 0.0;
  cMetsFlag                := 'N';
  pre.cHumidityType        := 'R';

  for sLoop:=0 to sLineCount-1 do
  begin
    line[sLoop].dAtmosphericCorrection := 0.0;
  end;

  sCount := 0;
  for sLoop := 0  to sLineCount-1 do
  begin
    if (line[sLoop].cMetsFlag = 'Y') then
    begin
      dSumDryTemp  := dSumDryTemp + line[sLoop].dDryTemp;
      dSumWetTemp  := dSumWetTemp + line[sLoop].dWetTemp;
      dSumPressure := dSumPressure + line[sLoop].dPressure;
      cMetsFlag:='Y';
      Inc(sCount);
    end;
  end;

  if (cMetsFlag = 'Y') then
  begin
    pre.dMeanDryTemp  := dSumDryTemp  / sCount;
    pre.dMeanWetTemp  := dSumWetTemp  / sCount;
    pre.dMeanPressure := dSumPressure / sCount;

    //***************************************
    // Compute reference refractive index
    //***************************************
    if dmMain.rxAtInstrumentModelManuRefractiveIndex.asFloat > 0 then
      dReferenceRefractiveIndex := dmMain.rxAtInstrumentModelManuRefractiveIndex.asFloat
    else
      dReferenceRefractiveIndex :=
               VELOCITY_LIGHT / (2.0 * dUnitLength * dModFreq);

    dC  := (dReferenceRefractiveIndex - 1.000) * 1000000.000;
    pre.cDefaultCFlag := 'N';
    if (dC < 240) or (dC > 335 ) then
    begin
      dC                        := DEFAULT_C_TERM;
      dReferenceRefractiveIndex := DEFAULT_REF_INDEX;
      pre.cDefaultCFlag := 'Y';
    end;
    //***************************************
    // Compute group refractive index
    //***************************************
    dY  := dCarrierWaveLength/1000.000 ;
    dY2 := dY * dY;
    dY4 := dY2 * dY2;
    dD  := 287.604 + 3.0 * (1.6288 / dY2) + 5.0 * (0.0136 / dY4);
    dGroupRefractiveIndex := 1.0 + dD / 1000000.000;
    pre.dGroupRefractiveIndex := dGroupRefractiveIndex;
    Atmosphere.GroupRefractiveIndex_nG := dGroupRefractiveIndex;
    // next lines to be checked

    dD  := dD * 273.150 / 1013.250;
    pre.cDefaultDFlag := 'N';
    if (dD < 75) or (dD > 85) then
    begin
       dD := DEFAULT_D_TERM;
       pre.cDefaultDFlag := 'Y';
    end;
    pre.dRefractiveIndex := dReferenceRefractiveIndex;
    pre.dC               := dC;
    pre.dD               := dD;

    sCount:=0;
    for sLoop:=0 to sLineCount-1 do
    begin
      if (line[sLoop].cMetsFlag = 'Y') then
      begin
        dDist       := line[sLoop].dMeanObsDistance;
        dDryTemp    := line[sLoop].dDryTemp;
        dWetTemp    := line[sLoop].dWetTemp;
        dHumidity   := line[sLoop].dHumidity;
        dPressure   := line[sLoop].dPressure;
        dAbsTemp    := dDryTemp + 273.15;

         Inc(sCount);
        //***************************************
        // Compute partial water vapour pressure
        //***************************************
        if (line[sLoop].cHumidityType ='W') then
        begin
          pre.cHumidityType := 'W';
          if (dWetTemp > 0.0) then
          begin
            dY := (7.5 * dWetTemp / (237.3 + dWetTemp)) + 0.7858;
            deWater := Power(10, dY);
            dE := deWater - 0.000662 * dPressure * ( dDryTemp - dWetTemp);
            dHumidity := dE * 100.000 / deWater;
          end
          else
          begin
            dY := (9.5 * dWetTemp / (265.5 + dHumidity)) + 0.7858;
            deIce := Power(10, dY);
            dE := deIce - 0.000583 * dPressure * ( dDryTemp - dWetTemp);
            dHumidity := dE * 100.000 / deIce;
          end;
          line[sLoop].dHumidity := dHumidity;
        end
        else
        begin
           dY := (7.5 * dDryTemp / (237.3 + dDryTemp)) + 0.7858;
           deWater := Power(10.000, dY);
           dE := deWater * dHumidity /100.000;
        end;
        dSumHumidity := dSumHumidity + line[sLoop].dHumidity;
        dSumE := dSumE + dE;

        //***************************************
        // Compute first velocity correction
        //***************************************
        dK := (dC - dD * dPressure / dAbsTemp + 11.27 * dE / dAbsTemp)
             * dDist /1000000.00;

        line[sLoop].dAtmosphericCorrection := dK;
      end;
    end;
    pre.dPartialWaterVapPres := dSumE/sCount;
    pre.dMeanHumidity := dSumHumidity / sCount;
  end; {if}
end;

(*******************************************************************************
@function AtmosphericCorrection2( var pre: PRE_L): Boolean;

@description
  Computes the atmospheric corrections
  Based on the IAG Resolutions adopted at the XXIIth General Assembly
 in Birmingham, 1999
*******************************************************************************)
function AtmosphericCorrection2 (
    var pre: PRE_L): Boolean;   // ptr to pre-adj statistics
var
  dUnitLength:            Double;       // Unit lenght in metres
  dModFreq:               Double;       // Modulation frequency in Hertz
  dCarrierWaveLength:     Double;       // Carrier wavelength in nanometres
   sLineCount:            Integer;     // Number of lines
   sLoop:                 Integer;     // Loop counter
   sCount:                Integer;     // counter
   dReferenceRefractiveIndex: Double;   // Reference Refractive Index
   dGroupRefractiveIndex: Double;            // Group Refractive Index
   dAbsTemp:              Double;       // Absolute temperature
   dY:                    Double;       // Temporary value
   dY2:                   Double;       // Temporary value
   dY4:                   Double;       // Temporary value
   dC:                    Double;       // Term used in equation
   dD:                    Double;       // Term used in equation
   dE:                    Double;       // Term used in equation
   dK:                    Double;       // Term used in equation
   deWater:               Double;       // Saturation vap pres over water
   deIce:                 Double;       // Saturation vap pres over ice
   dDist:                 Double;       // Mean observed distance
   dDryTemp:              Double;       // Dry temperature
   dWetTemp:              Double;       // Wet temperature
   dHumidity:             Double;       // Humidity
   dPressure:             Double;       // Pressure in millibars
   dSumE:                 Double;       // Sum of partial water vap pressure
   dSumDryTemp:  Double;
   dSumWetTemp:  Double;
   dSumHumidity: Double;
   dSumPressure: Double;
begin
   Result := True;
   dSumE := 0.0;
   dSumDryTemp  := 0.0;
   dSumWetTemp  := 0.0;
   dSumHumidity := 0.0;
   dSumPressure := 0.0;

  sLineCount        := dmMain.rxJMeasure.RecordCount;
  dUnitLength       := pre.dUnitLength;
  dModFreq          := pre.dModFreq;
  dCarrierWaveLength := pre.dCarrierWaveLength;
  dReferenceRefractiveIndex := pre.dRefractiveIndex;

  pre.dPartialWaterVapPres := 0.0;
  pre.dMeanHumidity        := 0.0;
  pre.dMeanDryTemp         := 0.0;
  pre.dMeanWetTemp         := 0.0;
  pre.dMeanPressure        := 0.0;
  cMetsFlag            := 'N';
  pre.cHumidityType        := 'R';

  for sLoop:=0 to sLineCount-1 do
  begin
    line[sLoop].dAtmosphericCorrection := 0.0;
  end;

  sCount := 0;
  for sLoop := 0  to sLineCount-1 do
  begin
    if (line[sLoop].cMetsFlag = 'Y') then
    begin
      dSumDryTemp  := dSumDryTemp + line[sLoop].dDryTemp;
      dSumWetTemp  := dSumWetTemp + line[sLoop].dWetTemp;
      dSumPressure := dSumPressure + line[sLoop].dPressure;
      cMetsFlag:='Y';
      Inc(sCount);
    end;
  end;
  if (cMetsFlag = 'Y') then
  begin
    pre.dMeanDryTemp  := dSumDryTemp  / sCount;
    pre.dMeanWetTemp  := dSumWetTemp  / sCount;
    pre.dMeanPressure := dSumPressure / sCount;

    //***************************************
    // Compute reference refractive index
    //***************************************
    if (dReferenceRefractiveIndex < 1.0002) or (dReferenceRefractiveIndex > 1.0004) then
    begin
      dReferenceRefractiveIndex :=
               VELOCITY_LIGHT / (2.0 * dUnitLength * dModFreq);
    end;

    dC  := (dReferenceRefractiveIndex - 1.000) * 1000000.000;
    pre.cDefaultCFlag := 'N';

    if (dC < 240) or (dC > 335 ) then
    begin
      dC                        := DEFAULT_C_TERM;
      dReferenceRefractiveIndex := DEFAULT_REF_INDEX;
    end;

    if Result then
    begin
      //**************************************************************************
      // Compute group refractivity (Ng) of standard air with 0.0375% CO2
      // and temperature = 0C, pressure 1013.25 hPa and e = 0.0 hPa
      //**************************************************************************
      dY  := dCarrierWaveLength/1000.000 ;
      dY2 := dY * dY;
      dY4 := dY2 * dY2;
      dD := 287.6155 + 4.8866/dY2 + 0.068/dY4;

      dGroupRefractiveIndex := 1.0 + dD / 1000000.000;
      pre.dGroupRefractiveIndex := dGroupRefractiveIndex;
      Atmosphere.GroupRefractiveIndex_nG := dGroupRefractiveIndex;

      dD  := dD * 273.150 / 1013.250;
      pre.cDefaultDFlag := 'N';
      if (dD < 75) or (dD > 85) then
      begin
         dD := DEFAULT_D_TERM;
         pre.cDefaultDFlag := 'Y';
      end;
      pre.dRefractiveIndex := dReferenceRefractiveIndex;
      pre.dC               := dC;
      pre.dD               := dD;

      //**************************************************************************
      // Compute partial water vapor pressure
      //**************************************************************************
      sCount:=0;
      for sLoop:=0 to sLineCount-1 do
      begin
        if (line[sLoop].cMetsFlag = 'Y') then
        begin
          dDist       := line[sLoop].dMeanObsDistance;
          dDryTemp    := line[sLoop].dDryTemp;
          dWetTemp    := line[sLoop].dWetTemp;
          dHumidity   := line[sLoop].dHumidity;
          dPressure   := line[sLoop].dPressure;
          dAbsTemp    := dDryTemp + 273.15;

           Inc(sCount);
          //***************************************
          // Compute partial water vapour pressure
          //***************************************
          if (line[sLoop].cHumidityType ='W') then
          begin
            pre.cHumidityType := 'W';
            if (dWetTemp > 0.0) then
            begin
              dY := (7.5 * dWetTemp / (237.3 + dWetTemp)) + 0.7858;
              deWater := Power(10, dY);
              dE := deWater - 0.000662 * dPressure * ( dDryTemp - dWetTemp);
              dHumidity := dE * 100.000 / deWater;
            end
            else
            begin
              dY := (9.5 * dWetTemp / (265.5 + dHumidity)) + 0.7858;
              deIce := Power(10, dY);
              dE := deIce - 0.000583 * dPressure * ( dDryTemp - dWetTemp);
              dHumidity := dE * 100.000 / deIce;
            end;
            line[sLoop].dHumidity := dHumidity;
          end
          else
          begin
             dY := (7.5 * dDryTemp / (237.3 + dDryTemp)) + 0.7858;
             deWater := Power(10.000, dY);
             dE := deWater * dHumidity /100.000;
          end;
          dSumHumidity := dSumHumidity + line[sLoop].dHumidity;
          dSumE := dSumE + dE;

          //***************************************
          // Compute first velocity correction
          //***************************************
          dK := (dC - dD * dPressure / dAbsTemp + 11.27 * dE / dAbsTemp)
               * dDist /1000000.00;

          line[sLoop].dAtmosphericCorrection := dK;
        end;
      end;

      pre.dPartialWaterVapPres := dSumE/sCount;
      pre.dMeanHumidity := dSumHumidity / sCount;
    end;
  end;
end;

(*******************************************************************************
@procedure OffsetCorrection (sLineCount: Integer);

@description
  Computes all offset corrections.
*******************************************************************************)
procedure OffsetCorrection (sLineCount: Integer);
var
  sLoop:     Integer;                   // Loop counter
  dSkewDist: DOUBLE;                    // Skew distance
  dLineDist: DOUBLE;                    // distance parallel with baseline
  dOffset:   DOUBLE;                    // offset
begin
  for sLoop := 0 to sLineCount-1 do
  begin
    dSkewDist    := line[sLoop].dMeanObsDistance;
    dOffset  := line[sLoop].dAtPillarOffset - line[sLoop].dToPillarOffset;
    dLineDist := sqrt(dSkewDist*dSkewDist - dOffset * dOffset);
    line[sLoop].dOffsetCorrection := dLineDist - dSkewDist;
  end;
end;

(*******************************************************************************
@procedure SlopeCorrection (
   dRefHeight: DOUBLE;                  // Reference height
   dRadius:    DOUBLE;                  // Radius of earth
   sLineCount: Integer);                // Number of lines

@description
  Computes all slope corrections.
*******************************************************************************)
procedure SlopeCorrection (
   dRefHeight: DOUBLE;                  // Reference height
   dRadius:    DOUBLE;                  // Radius of earth
   sLineCount: Integer);                // Number of lines
var
   sLoop:          Integer;             // Loop counter
   dDist:          DOUBLE;              // Observed mean distance
   dRL1:           DOUBLE;              // RL of point 1
   dRL2:           DOUBLE;              // RL of point 2
   dHt1:           DOUBLE;              // Height of inst above pillar 1
   dHt2:           DOUBLE;              // Height of inst above pillar 2
   dDeltaHt:       DOUBLE;              // Height difference
   dHorzDist:      DOUBLE;              // Horizontal distance
   dHeightFactor: Double;
begin
  for sLoop :=0 to sLineCount-1 do
  begin
    dDist      := line[sLoop].dMeanObsDistance;
    dDist      := dDist + line[sLoop].dOffsetCorrection;
    dRL1       := line[sLoop].dAtPillarRL;
    dRL2       := line[sLoop].dToPillarRL;
    dHt1       := dRL1 + line[sLoop].dHeightAboveAtPillar;
    dHt2       := dRL2 + line[sLoop].dHeightAboveToPillar;
    dDeltaHt   := dHt2 - dHt1;

    dHeightFactor := (1+(dHt1-dRefHeight)/(dRadius+dRefHeight))*
                     (1+(dHt2-dRefHeight)/(dRadius+dRefHeight));

    dHorzDist := sqrt((dDist*dDist - dDeltaHt*dDeltaHt)/dHeightFactor);
    line[sLoop].dSlopeCorrection := dHorzDist - dDist;
  end;
end;

(*******************************************************************************
@procedure ReduceDistance (sLineCount: Integer);

@description
  Applies the slope, offset, atmospheric corrections and prism constant to the mean
  observed distances.
*******************************************************************************)
procedure ReduceDistance (
    sLineCount: Integer);           // Number of lines
var
   sLoop:          Integer;             // Loop counter
   dDist:          DOUBLE;              // Observed mean distance
   dSlopeCor:      DOUBLE;              // Slope Correction
   dOffsetCor:     DOUBLE;              // Offset Correction
   dAtmosCor:      DOUBLE;              // Atmospheric correction
   dPrismConstant: DOUBLE;              // Prism Constant
begin
  for sLoop :=0 to sLineCount-1 do
  begin
    dDist          := line[sLoop].dMeanObsDistance;
    dOffsetCor     := line[sLoop].dOffsetCorrection;
    dSlopeCor      := line[sLoop].dSlopeCorrection;
    dAtmosCor      := line[sLoop].dAtmosphericCorrection;
//***********************************************************
// *** Not included. Program will compute new EDM constant  ***
//    dEDMConstant   := line[sLoop].dEDMConstant;
// ***********************************************************
    dPrismConstant := line[sLoop].dPrismConstant;

    line[sLoop].dReducedDistance :=
    dDist + dOffsetCor + dSlopeCor + dAtmosCor + dPrismConstant;

    //***************************************************
    // Compute residuals
    //***************************************************
    line[sLoop].dResidual :=
            line[sLoop].dTrueDistance - line[sLoop].dReducedDistance;
  end;
end;

(*******************************************************************************
@procedure AprioriStdDevDistance1;

@description
  A linear regression solution is used to resolve an a priori standard deviation
  of the measured line caused by random errors in the distance measurements of
  all lines used on the baseline.
*******************************************************************************)
procedure  AprioriStdDevDistance1;
var
  sLoop:            Integer;             // Loop Counter
  sLineCount:       Integer;             // Number of lines
  dConstant:        DOUBLE;              // Constant part of EDM std dev
  dScale:           DOUBLE;              // Scale PPM  of EDM std dev
  dX, dY, dXY, dX2: DOUBLE;              // Terms in equations
  dSumX, dSumY:     DOUBLE;              // Terms in equations
  dSumXY, dSumX2:   DOUBLE;              // Terms in equations
begin
  dSumX  := 0.000;
  dSumY  := 0.000;
  dSumXY := 0.000;
  dSumX2 := 0.000;

  sLineCount := dmMain.rxJMeasure.RecordCount;

  for sLoop := 0 to sLineCount-1 do
  begin
    dX  := line[sLoop].dMeanObsDistance;
    dY  := line[sLoop].dObsDistanceStdDev;
    dX2 := dX*dX;
    dXY := dX*dY;
    dSumX  := dSumX + dX;
    dSumY  := dSumY + dY;
    dSumXY := dSumXY + dXY;
    dSumX2 := dSumX2 + dX2;
  end;

  dConstant := (dSumX2 * dSumY - dSumX * dSumXY) /
              (sLineCount * dSumX2 - dSumX * dSumX);
  dScale    := (sLineCount * dSumXY - dSumX * dSumY) /
              (sLineCount * dSumX2 - dSumX * dSumX);

  if (dConstant < 0.0000) then
  begin
    dConstant := 0.000;
  end;
  post.dStdDevConst := dConstant;

  if (dScale < 0.0000) then
  begin
    post.dStdDevPPM := 0.0000;
  end
  else
  begin
    post.dStdDevPPM := dScale * 1000000.000;
  end;
end;

(*******************************************************************************
@procedure AprioriStdDevDistance2;

@description
  Computes the a priori standard deviation of all measured lines.
*******************************************************************************)
procedure AprioriStdDevDistance2;
var
  sLoop:      Integer;              // Loop Counter
  dConstant:  DOUBLE;               // Constant part of EDM std dev
  dScale:     DOUBLE;               // Scale PPM  of EDM std dev
  dSCentring: DOUBLE;               // Std dev Centering
  dSLevel:    DOUBLE;               // Std dev Levelling
  dSTemp:     DOUBLE;               // Std Dev temperature
  dSPres:     DOUBLE;               // Std dev pressure
  dA:         DOUBLE;               // Constant term
  dB:         DOUBLE;               // Scale term
  dDistance:  DOUBLE;               // Distance
  sLineCount: Integer;
begin
  //***************************************************************
  // Scale Term
  //***************************************************************
  sLineCount := dmMain.rxJMeasure.RecordCount;
  dScale  := dmMain.rxAtInstrumentInstStdDevPPM.AsFloat;
  dSTemp := dmMain.rxJobJobStdDevTemp.AsFloat;
  dSPres := dmMain.rxJobJobStdDevPressure.AsFloat * 0.3;
  dB := sqrt(dScale*dScale + dSTemp*dSTemp + dSPres*dSPres);

  //***************************************************************
  // Constant term
  //***************************************************************
  dConstant  := dmMain.rxAtInstrumentInstStdDevConst.AsFloat;
  dSCentring := dmMain.rxJobJobInstCentringStdDev.AsFLoat/1000;
  if dmMain.rxJobJobInstLevellingStdDev.AsFloat > 0 then
  begin
    dSLevel := dmMain.rxJobJobInstLevellingStdDev.AsFloat/1000;
  end
  else
  begin
    dSLevel := 0;
  end;
  dA := sqrt(dConstant*dConstant + 2*dSCentring*dSCentring + 2*dSLevel*dSLevel);

  //***************************************************************
  // Std dev of each distance
  //***************************************************************
  for sLoop :=0 to sLineCount-1 do
  begin
    dDistance :=  line[sLoop].dMeanObsDistance;
    line[sLoop].dAprioriStdDev := dA + dB * dDistance/1000000.000;
  end;
end;

(*******************************************************************************
@function  BaseEDMPrePrint(
    sPage:           Integer;            // page number
    sTotalPages:     Integer;            // Total number of pages
    strBaseFileName: string;             // Base file name
    pre:            PRE_L): Integer;     // ptr to pre  processing struct

@description
  Computes the a priori standard deviation of all measured lines.
*******************************************************************************)
function  BaseEDMPrePrint(
    sPage:           Integer;            // page number
    sTotalPages:     Integer;            // Total number of pages
    strBaseFileName: string;             // Base file name
    pre:            PRE_L): Integer;     // ptr to pre  processing struct
var
  strOutputFileName:     string;         // Output filename string
begin
  strOutputFileName := strBaseFileName;
  //**********************************************************
  // Write header, job information and instrument parameters
  //**********************************************************
  strOutputFileName := strBaseFileName + '.B01';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);

  sPage :=  EDMPageHeader(sPage,sTotalPages);

  if frmJob.chkAccreditation.Checked then
  begin
    PrintAccreditationHeader;
  end;

  PrintInstrumentParameters;
  sPage :=  EDMPageHeader(sPage,sTotalPages);

  PrintJobInformation;

  PrintComputationMethod;
  CloseFile(pfRPTFile);

  //************************************************
  // Write Summary legal distance residual report
  //************************************************
  strOutputFileName := strBaseFileName + '.B02';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  PrintLegalDistances;
  CloseFile(pfRPTFile);

  //************************************************
  // Write Summary Meteorological parameters report
  //************************************************
  strOutputFileName := strBaseFileName + '.B03';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);
  sPage :=  EDMPageHeader(sPage,sTotalPages);

  PrintAtmosphericParameters(pre);
  Flush(pfRPTFile);
  CloseFile(pfRPTFile);

  //**********************************************************
  // Write Line observation report
  //**********************************************************
  Application.ProcessMessages;
  strOutputFileName := strBaseFileName + '.B04';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);
  sPage := PrintLineObservation(
                sPage,                   // Page number
                sTotalPages);
  Flush(pfRPTFile);
  CloseFile(pfRPTFile);

  //*******************************************
  // Write Summary distance reduction report
  //*******************************************

  strOutputFileName := strBaseFileName + '.B05';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  sPage := PrintDistanceReductions(sPage,sTotalPages);

  CloseFile(pfRPTFile);

  //*******************************************
  // Write Summary distance stdDev report
  //*******************************************

  strOutputFileName := strBaseFileName + '.B06';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  sPage := PrintDistanceStdDev(sPage,sTotalPages);

  CloseFile(pfRPTFile);


  //*******************************************
  // Write Summary distance residual report
  //*******************************************
  strOutputFileName := strBaseFileName + '.B07';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  sPage := PrintLinearMiscloses(sPage, sTotalPages);
  CloseFile(pfRPTFile);

  Result := sPage;
end;

(*******************************************************************************
@function  LeastSquaresRoutine
 (
    var sPage:          Integer;          // Page number
    sTotalPages:        Integer;          // Total pages
    sLineCount:         Integer;          // Number of lines
    dUnitLength:        DOUBLE;           // EDM Unit length
    strBaseFileName:    string;           // Base file name
    pre:                PRE_L): Boolean;  // Pre-processing struct

@description
  1. Checks that the baselines has been correctly designed.
  2. Calibrates a baseline. Computes the baselines distances by least squares.
  3. A post adjustment analysis is carried out.
*******************************************************************************)
function  LeastSquaresRoutine (
    var sPage:          Integer;          // Page number
    sTotalPages:        Integer;          // Total pages
    sLineCount:         Integer;          // Number of lines
    dUnitLength:        DOUBLE;           // EDM Unit length
    strBaseFileName:    string;           // Base file name
    pre:                PRE_L): Boolean;  // Pre-processing struct
var
  strOutputFileName: String;           // Output filename string
begin
  Result := True;
  hasDesignError := False;
  try
    sLineCount := dmMain.rxJMeasure.RecordCount;

    hasDesignError := CheckBaselineDesign(sLineCount);

    BaseLeastSquareSolution(sLineCount,dUnitLength);
    frmProgress.pbarProgress.Position := 91;

    //**********************************************************************
    // Least squares estimates of distances (superimposed)
    //**********************************************************************
    AdjustedDistances  (dUnitLength);

    //**********************************************************************
    // A posteriori Variance Factor & Minimum
    //**********************************************************************
    LSVarianceFactor;
    frmProgress.pbarProgress.Position := 92;

    //**********************************************************************
    // Chi square test on the variance factor
    //**********************************************************************
    Basechitest;

    //**********************************************************************
    // Multiple variance-covariance matrix of the adjusted parameters
    // by a posteriori variance factor
    //**********************************************************************
    VarianceMatrixByVF(Post.dPostVarFactor, Post.sParameterCount);

    frmProgress.pbarProgress.Position := 93;

    //***********************************
    // Std Dev of residuals
    //***********************************
    StdDevResiduals;

    //**********************************************************************
    // A standardised residuals
    //**********************************************************************
    LSStandardisedResidual;
    frmProgress.pbarProgress.Position := 94;

    //**********************************************************************
    // Compute student t critical value
    //**********************************************************************
    Student;
    frmProgress.pbarProgress.Position := 95;

    //**********************************************************************
    // Test significance of largest cyclic error
    //**********************************************************************
    if (Post.sParameterCount > 2) then
    begin
      if dUnitLength < 5 then
      begin
        isSignificant := FALSE;
      end
      else
      begin
        TestCyclicError;
      end;
    end;

    frmProgress.pbarProgress.Position := 96;

    //**********************************************************************
    // Compute Maximum, minimum distance and mean observed dry temperature
    //**********************************************************************
    MaxMinDistance (sLineCount);

    //**********************************************
    // Print to Output File
    //**********************************************
    strOutputFileName := strBaseFileName + '.B08';
    try
      AssignFile(pfRPTFile, strOutputFileName);
      Rewrite(pfRPTFile);
      sPage := BaseEDMPostPrint(
                    sPage,                   // page number
                    sTotalPages,             // Total pages
                    strOutputFileName,       // Output File name
                    pre);                    // Pre-adjustment information
      frmProgress.pbarProgress.Position := 100;
    except
      printDesignError := hasDesignError;
      Result := False;
    end;
    CloseFile(pfRPTFile);
  except;
    Result := False;
  end;
  frmProgress.pbarProgress.Position := 90;
end;

(*******************************************************************************
@procedure FormEDMCertData (Pre: PRE_L);

@description
  Computes the data required for an EDM certification report.
*******************************************************************************)
procedure FormEDMCertData (Pre: PRE_L);
var
  sLoop:            Integer;
  dInstUncertainty: DOUBLE;
  dMinUncertainty:  DOUBLE;
  dDistance: array[0..5] of double;
  dInterval: array[0..5] of double;
  dMaxDistance: Double;
  i,j : Integer;
  dSum : Double;
  dIntervalValue: Double;
  dStdICConstant, dStdICPPM: Double;
  dConstant, dScale: Double;
  dScaleUncertainty: Double;
begin

  dDistance[0] := 50.0;
  dDistance[1] := 250.0;
  dDistance[2] := 500.0;
  dDistance[3] := 750.0;
  dDistance[4] := 1000.0;
  dDistance[5] := 2000.0;
  dMaxDistance := Round(dBaselineLength/100) * 100;
  dInterval[0] := 50;
  dInterval[1] := 50;
  dInterval[2] := 50;
  dInterval[3] := 50;
  dInterval[4] := 50;
  dInterval[5] := 50;

  dStdICConstant := 0;
  dStdICPPM := 0;
  dSum := 0;
  j := 5;
  dIntervalValue := 100;
  while dSum < dMaxDistance do
  begin
    dSum := 0;
    for i := 0 to 5 do
    begin
      dSum := dSum + dInterval[i];
    end;
    if dSum < dMaxDistance then
    begin
      if (j = 1) then
      begin
        j := 5;
        dIntervalValue := dIntervalValue + 100;
      end;
      dInterval[j] := dIntervalValue;
      Dec(j);
    end;
  end;

  for i := 0 to 5 do
  begin
    dDistance[0] := dInterval[0];
    dDistance[1] := dDistance[0] + dInterval[1];
    dDistance[2] := dDistance[1] + dInterval[2];
    dDistance[3] := dDistance[2] + dInterval[3];
    dDistance[4] := dDistance[3] + dInterval[4];
    dDistance[5] := dDistance[4] + dInterval[5];
  end;

  if (dmMain.rxjobJobType.AsString = 'I') then
  begin
    cerEDM.dCalibParm[0]   := Post.dParm[0] * 1000.000;
    cerEDM.dCalibUncert[0] := Post.dAbscissa * Post.dParmStdDev[0] * 1000.000;


    cerEDM.dCalibParm[1]   := Post.dParm[1] * 1000000.000;
    dScaleUncertainty := Post.dParmStdDev[1] * 1000000.000;
    cerEDM.dCalibUncert[1] := Post.dAbscissa * dScaleUncertainty;

    if isSignificant then
    begin
      for sLoop := 2 to Post.sParameterCount-1 do
      begin
        cerEDM.dCalibParm[sLoop]   := Post.dParm[sLoop] * 1000.000;
        cerEDM.dCalibUncert[sLoop] :=
            abs(Post.dAbscissa * Post.dParmStdDev[sLoop] * 1000.000);
      end;
    end
    else
    begin
      for sLoop := 2 to Post.sParameterCount-1 do
      begin
        cerEDM.dCalibParm[sLoop]   := 0.0;
        cerEDM.dCalibUncert[sLoop] := 0.0;
      end;
    end;


    cerEDM.dMinDistance := Post.dMinDistance;
    cerEDM.dMaxDistance := Post.dMaxDistance;

    if (cMetsFlag = 'Y') then
    begin
      cerEDM.dMeanTemp := Post.dMeanTemp;
      cerEDM.dC := Pre.dC;
      cerEDM.dD := Pre.dD;
    end
    else
    begin
      cerEDM.dMeanTemp := 0;
      cerEDM.dC := 0.0;
      cerEDM.dD := 0.0;
    end;
    if dmBase.rxStandard.Locate('Type','E',[]) then
    begin
      dStdICConstant := dmBase.rxStandard.FieldByName('StandardConstant').AsFloat/1000;
      cerEDM.dStdICConstant := dStdICConstant * 1000;
      dStdICPPM := dmBase.rxStandard.FieldByName('StandardScale').AsFloat;
      cerEDM.dStdICPPM := dStdICPPM;
      cerEDM.cPassFail := 'P';
    end;

    dConstant := cerEDM.dCalibUncert[0];
    dScale := cerEDM.dCalibUncert[1];
    GetLUM(dConstant, dScale, 'G');

    for sLoop := 0 to 5 do
    begin
      dInstUncertainty := dConstant/1000 + dDistance[sLoop] * dScale/1000000.0;
      dMinUncertainty  := dStdICConstant + dDistance[sLoop] *  dStdICPPM/1000000.0;
      cerEDM.dDistance[sLoop]   := dDistance[sLoop];
      cerEDM.dDistUncert[sLoop] := dInstUncertainty * 1000.0;
      cerEDM.dMinUncert[sLoop]  := dMinUncertainty * 1000.0;

      if ( dInstUncertainty < dMinUncertainty) then
      begin
        cerEDM.cPass[sLoop] := 'Y';
      end
      else
      begin
        cerEDM.cPass[sLoop] := 'N';
        cerEDM.cPassFail := 'F';
      end;
      cerEDM.cExtrapolated[sLoop] := 'N';
    end;
  end;
end;

(*******************************************************************************
@procedure PrintEDMCertificate( strBaseFile: string);

@description
  Prints the EDM certification report.
*******************************************************************************)
procedure PrintEDMCertificate (
    strBaseFile: string);     // Output file
var
  I, sLoop: Integer;                // Loop counter
  cSign: array[0..7] of string;     // Sign characters
  sParameterCount: Integer;
  szTest: string;
  szRemark: string;
  pfRPTFile: TextFile;
  strOutputFileName: string;
  strLine: String;
  strSentence: String;
  doSentence: Boolean;
  doLine: Boolean;
  dVelocityLight: Double;
  dConstant, dScale, dDistUncertainty: Double;
  hasLUM: Boolean;
begin
  dVelocityLight := VELOCITY_LIGHT;
  strOutputFileName := strBaseFile + '.B09';
  AssignFile(pfRPTFile, strOutputFileName);
  Rewrite(pfRPTFile);
  writeln(pfRPTFile,DateToStr(date));
  writeln (pfRPTFile,
  '                                                               Page 1 of 2');

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'                   Job Identification: '+dmMain.rxJobJobDescription.AsString);
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'                         EDM CALIBRATION REPORT');
  writeln (pfRPTFile,'                         ----------------------');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,Format(' This report has been generated by program Baseline %s, developed',[strVersionNumber]));
  writeln (pfRPTFile,' by the '+strProgramOwner+' for baselines');
  writeln (pfRPTFile,' within Australia. Use of this application elsewhere should rely on');
  writeln (pfRPTFile,' baseline distances certified by the relevant Verifying Authority.');
  writeln (pfRPTFile,' ');

  writeln (pfRPTFile,Format(' Date of Calibration : %s',[DateToStr(dmMain.rxJobJobStartCalibrationDate.AsDateTime)]));
  writeln (pfRPTFile,Format(' Date of computation : %s',[DateToStr(Date)]));
  writeln (pfRPTFile,Format(' Instrument Operator : %s',[dmMain.rxJobJobObserverName.AsString]));
  writeln (pfRPTFile,Format(' Time of computation : %s',[TimeToStr(Time)]));

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'                         EQUIPMENT DETAILS');
  writeln (pfRPTFile,' --------------------------------------------------------------------------');
  writeln (pfRPTFile,Format(' EDM Instrument make  : %-18s Reflector make     : %s',
  [dmMain.rxToInstrumentMakeMakeName.AsString,dmMain.rxAtInstrumentMakeMakeName.AsString]));
  writeln (pfRPTFile,Format(' EDM Instrument model : %-18s Reflector model    : %s',
  [dmMain.rxAtInstrumentModelModelName.AsString,dmMain.rxToInstrumentModelModelName.AsString]));
  writeln (pfRPTFile,Format(' EDM Serial number    : %-18s Refl Serial number : %s',
  [dmMain.rxAtInstrumentInstSerialNo.AsString,dmMain.rxToInstrumentInstSerialNo.AsString]));

  if dmMain.rxToInstrumentInstConstant.AsFloat = 0 then
  begin
    writeln (pfRPTFile,Format(' Instrument owner     : %-18s Reflector constant : 0 mm',
    [dmMain.rxJobJobInst1Owner.AsString]));
  end
  else
  begin
    writeln (pfRPTFile,Format(' Instrument owner     : %-18s Reflector constant : %5.0f mm',
    [dmMain.rxJobJobInst1Owner.AsString,dmMain.rxToInstrumentInstConstant.AsFloat*1000]));
  end;

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'                         BASELINE DETAILS');
  writeln (pfRPTFile,' --------------------------------------------------------------------------');
  writeln (pfRPTFile,Format(' Name      : %s',[dmMain.rxBaselineBaseLineName.AsString]));
  writeln (pfRPTFile,Format(' Location  : %s',[dmMain.rxBaselineBaseLineLocation.AsString]));
  writeln (pfRPTFile,Format(' Authority : %s',[dmMain.rxBaselineBaseLineAuthority.AsString]));
  writeln (pfRPTFile,Format(' Authority Address: %s',[dmMain.rxBaselineAuthorityAddress.AsString]));
  writeln (pfRPTFile,Format(' Last calibration date : %2s',[DateToStr(dmMain.rxBaselineBaselineCalibrationDate.AsDateTime)]));
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,
  ' This baseline consists of known lengths, which are the certified distances');
  writeln (pfRPTFile,
  ' between the pillars of the baseline. All certified distances are on the same');
  writeln (pfRPTFile,
  ' horizontal plane at the reference height and on the same vertical plane');
  writeln (pfRPTFile,
  ' running through the first and last stations.');
  writeln (pfRPTFile,' ');
  for sLoop := 0 to frmJob.memBaselineTraceability.Lines.Count-1 do
  begin
    writeln(pfRPTFile,' '+frmJob.memBaselineTraceability.Lines[sLoop]);
  end;
  writeln (pfRPTFile,' ');

  writeln (pfRPTFile,
  ' A coverage factor of 2 has been used for the uncertainty computations');

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'  INSTRUMENT CORRECTION (IC) IN MM (TO BE ADDED TO INSTRUMENT READING)');
  writeln (pfRPTFile,'  --------------------------------------------------------------------');

  if isSignificant then
     sParameterCount := 6
  else
     sParameterCount := 2;

  for sLoop := 0 to sParameterCount-1 do
  begin
    if (cerEDM.dCalibParm[sLoop] < 0.000) then
      cSign[sLoop] := '-'
    else
      cSign[sLoop] := '+';
  end;

  if isSignificant then
  begin
    strLine := Format('     IC = %6.2f %1s %8.5f L ',
            [cerEDM.dCalibParm[0], cSign[1], abs(cerEDM.dCalibParm[1]/1000.0)]);

    strLine := strLine + Format(' %1s %6.2f SIN(36D)  %1s %6.2f COS(36D)',
         [cSign[2], abs(cerEDM.dCalibParm[2]),
          cSign[3], abs(cerEDM.dCalibParm[3])]);
    writeln(pfRPTFile, strLine);
    writeln(pfRPTFile,
    Format('                               %1s %6.2f SIN(72D)  %1s %6.2f COS(72D)',
        [cSign[4], abs(cerEDM.dCalibParm[4]),cSign[5], abs(cerEDM.dCalibParm[5])]));
    if not hasPrismConstantBeenSetInEDM then
    begin
      writeln(pfRPTFile,
      '                               + Reflector Constant(mm)');
    end;
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,'    Where D = distance in metres and angles are in degrees');
    if hasPrismConstantBeenSetInEDM then
    begin
      strLine := '    The reflector constant has been entered into the instrument';
    end
    else
    begin
      strLine := '    The reflector constant has not been entered into the instrument';
    end;
    writeln (pfRPTFile,strLine);
    writeln (pfRPTFile,'                   CYCLIC ERRORS ARE SIGNIFICANT');
  end
  else
  begin
    writeln (pfRPTFile,' ');
    if hasPrismConstantBeenSetInEDM then
    begin
      writeln(pfRPTFile,
      Format('                      IC = %6.2f %1s %8.5f D',
         [cerEDM.dCalibParm[0], cSign[1], abs(cerEDM.dCalibParm[1])/1000.0]));
    end
    else
    begin
      writeln(pfRPTFile,
      Format('                      IC = %6.2f %1s %8.5f D + Reflector Constant(mm)',
         [cerEDM.dCalibParm[0], cSign[1], abs(cerEDM.dCalibParm[1])/1000.0]));
    end;
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,'                    Where D = distance in metres');

    if hasPrismConstantBeenSetInEDM then
    begin
      strLine := '                    The reflector constant has been entered into the instrument';
    end
    else
    begin
      strLine := '                    The reflector constant has not been entered into the instrument';
    end;
    writeln (pfRPTFile,strLine);
    if hasUnitLength then
    begin
      writeln (pfRPTFile,' ');
      writeln (pfRPTFile,'                   CYCLIC ERRORS ARE INSIGNIFICANT');
    end;
  end;

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,Format('      Calibration parameters         Value         Uncertainty(%2.0f',[dmMain.rxbaselineBaselineConfLevel.AsFloat])+'%)');
  writeln (pfRPTFile,  '      -----------------------     ------------     ----------------');

  dConstant := cerEDM.dCalibUncert[0];
  dScale := cerEDM.dCalibUncert[1];

  hasLUM := GetLUM(dConstant, dScale, 'G');

  if GetLumUnitsFromDB = '1' then
  begin
    writeln (pfRPTFile,Format('             Index                 %7.2f mm        %7.2f mm'
    ,[cerEDM.dCalibParm[0], dConstant]));

    writeln (pfRPTFile,Format('             Scale                 %7.2f ppm        %7.2f ppm'
    ,[cerEDM.dCalibParm[1], dScale]));
  end
  else
  begin
    writeln (pfRPTFile,Format('             Index        %7.2f mm                  %7.2f mm'
    ,[cerEDM.dCalibParm[0], dConstant]));

    writeln (pfRPTFile,Format('             Scale       (%7.2f x 10ˉ³ L) mm       (%7.2f x 10ˉ³ L) mm'
    ,[cerEDM.dCalibParm[1], dScale]));
    writeln (pfRPTFile,'             where L = length in metres');
  end;

  if isSignificant then
    for sLoop := 2 to sParameterCount-1 do
    begin
      writeln (pfRPTFile,Format('       %1d - Cyclic                  %7.2f mm        %7.2f mm'
      ,[sLoop-1, cerEDM.dCalibParm[sLoop], cerEDM.dCalibUncert[sLoop]]));
    end;

  writeln (pfRPTFile,' ');

  if cerEDM.dMaxDistance < 1000 then
    strLine := Format(' The instrument correction has been determined from measurements in the range of %3.0f to %3.0f metres', [cerEDM.dMinDistance, cerEDM.dMaxDistance])
  else
  begin
    if cerEDM.dMaxDistance < 10000 then
      strLine := Format(' The instrument correction has been determined from measurements in the range of %4.0f to %4.0f metres', [cerEDM.dMinDistance, cerEDM.dMaxDistance])
    else
      strLine := Format(' The instrument correction has been determined from measurements in the range of %5.0f to %5.0f metres', [cerEDM.dMinDistance, cerEDM.dMaxDistance]);
  end;
  writeln (pfRPTFile,strLine);

  if hasLUM then
  begin
    strLine := ' The Least Uncertainty of Measurement as specified by the Accreditation Authority';
    strLine := strLine + ' has been used for the uncertainty of the instrument correction.';
    writeln (pfRPTFile,strLine);
  end;

  writeln (pfRPTFile,Chr(12));                         // Next page     */
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,
  '                                                               Page 2 of 2');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'                   JOB IDENTIFICATION : '+ dmMain.rxJobJobDescription.AsString);
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'                         EDM CALIBRATION REPORT');
  writeln (pfRPTFile,'                         ----------------------');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,Format(' THE REPORT HAS BEEN GENERATED BY PROGRAM %s DEVELOPED BY THE',[strVersionNumber]));
  writeln (pfRPTFile,' DEPARTMENT OF LAND INFORMATION');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'               UNCERTAINTY OF THE INSTRUMENT CORRECTION');
  writeln (pfRPTFile,' ---------------------------------------------------------------------------');

  strLine :='Minimum standard for the uncertainty of calibration of an EDM instrument';
  writeln (pfRPTFile, strLine);
  strSentence := Format(' is %6.2f mm + %6.2f ppm as described in terms of ', [cerEDM.dStdICConstant, cerEDM.dStdICPPM]);

  dmBase.rxStandard.Locate('Type','E',[]);
  strSentence := strSentence + dmBase.rxStandard.FieldByName('Description').AsString;
  if Copy(strSentence,length(strSentence),1) <> '.' then
  begin
    strSentence := strSentence+'.';
  end;
  strSentence := strSentence + ' All uncertainties are specified at';
  strSentence := strSentence + Format(' the %2.0f %1s confidence level.',[dmMain.rxbaselineBaselineConfLevel.AsFloat,'%']);

  if length(strSentence) < 73 then
  begin
    writeln (pfRPTFile, strSentence);
  end
  else
  begin
    doSentence := True;
    while doSentence do
    begin
      I := 73;
      strLine := Copy(strSentence,1,73);
      doLine := True;
      while doLine do
      begin
        if Copy(strLine,I,1) = ' ' then
        begin
          doLine := False;
        end;
        Dec(I);
        if I = 0 then
        begin
          doLine := False;
          I := 72;
        end;
      end;
      strLine := Copy(strLine,1,I);
      writeln (pfRPTFile, strLine);
      strSentence := Copy(strSentence,I+1,length(strSentence));
      if length(strSentence) < 73 then
      begin
        writeln (pfRPTFile, strSentence);
        doSentence := False;
      end;
    end;
  end;

  dConstant := cerEDM.dCalibUncert[0];
  dScale := cerEDM.dCalibUncert[1];
  GetLUM(dConstant, dScale, 'G');

  writeln (pfRPTFile,GetUncertaintyWithUnits(dConstant, dScale, '%6.2f', '%6.2f',
    '     Uncertainty of instrument correction : ', False));
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'                     INSTRUMENT      MINIMUM                ');
  writeln (pfRPTFile,'        DISTANCE     UNCERTAINTY     STANDARD    COMPARISON ');
  writeln (pfRPTFile,'        (metres)        (mm)           (mm)         TEST    ');
  writeln (pfRPTFile,'        --------     -----------    ----------  ----------- ');

  for sLoop := 0 to 5 do
  begin
    if (cerEDM.cPass[sLoop] = 'Y') then
    begin
      szTest := 'PASS';
    end
    else
    begin
      szTest := 'FAIL';
    end;
    szRemark := '            ';
    dDistUncertainty := dConstant/1000 + cerEDM.dDistance[sLoop]* dScale/1000000.0;
    dDistUncertainty := dDistUncertainty * 1000;
//    writeln (pfRPTFile,Format('           %5.0f        %8.2f      %8.2f       %4s  %12s'
//     ,[cerEDM.dDistance[sLoop], cerEDM.dDistUncert[sLoop],cerEDM.dMinUncert[sLoop], szTest, szRemark]));
    writeln (pfRPTFile,Format('           %5.0f        %8.2f      %8.2f       %4s  %12s'
     ,[cerEDM.dDistance[sLoop], dDistUncertainty, cerEDM.dMinUncert[sLoop], szTest, szRemark]));
  end;

  if (cerEDM.cPassFail = 'P') then
  begin
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,' This instrument satisfies the National Standards Commission minimum standards.');
  end
  else
  begin
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,' This instrument does not satisfy the National Standards Commission minimum standards.');
  end;

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'        FIRST VELOCITY CORRECTION (ATMOSPHERIC CORRECTION) APPLIED ');
  writeln (pfRPTFile,' --------------------------------------------------------------------------- ');

  if (cMetsFlag='Y') then
  begin
    writeln (pfRPTFile,Format('                             %6.2f P         11.27 e',[cerEDM.dD]));
    writeln (pfRPTFile,Format(' Correction  = ( %7.2f - ------------- + ------------- ).distance/1000000',[cerEDM.dC]));
    writeln (pfRPTFile,'                           (273.15 + Td)   (273.15 + Td)');
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,' Where  Td = Dry Temp (Celsius),      P = Barometric pressure (hectapascals)');
    writeln (pfRPTFile,'         e = partial Vapour Pressure (hectapascals)');

    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,' The first velocity correction is based on a velocity of light of');
    writeln (pfRPTFile,Format(' %9f m/s and on the refractive index formulae recommended by the',[dVelocityLight]));
    writeln (pfRPTFile,' International Association of Geodesy in 1999.');

  end
  else
  begin
    writeln (pfRPTFile,' The atmospheric correction dial of the EDM instrument was set for all');
    writeln (pfRPTFile,' observations. Therefore the observed distances have already been');
    writeln (pfRPTFile,' corrected for atmospheric effects.');
  end;
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' --------------------------------------------------------------------------- ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');

  for sLoop := 0 to frmJob.memLegalTraceability.Lines.Count-1 do
  begin
    writeln(pfRPTFile,' '+frmJob.memLegalTraceability.Lines[sLoop]);
  end;

  writeln (pfRPTFile,' ');
  for sLoop := 0 to frmJob.memProcedure.Lines.Count-1 do
  begin
    writeln(pfRPTFile,' '+frmJob.memProcedure.Lines[sLoop]);
  end;
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');

  strLine :=' Data entry by:....................';
  strLine := strLine +'      Results checked by:.......................';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' ');
  strLine :=' Position:.........................';
  strLine := strLine +'      Position:.................................';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' ');
  strLine :=' Signature:........................';
  strLine := strLine +'      Approved Signatory:.......................';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' ');
  strLine :=' Date:.............................';
  strLine := strLine +'      Date:.....................................';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  CloseFile(pfRPTFile);
end;

(*******************************************************************************
@procedure PrintComputationMethod;

@description
  Prints the Least squares adjustment options.
*******************************************************************************)
procedure PrintComputationMethod;
var
  dUncertaintyConstant, dUncertaintyScale: Double;
begin
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ---------------------------------------------------------------------------');
  writeln (pfRPTFile,' |                                                                          |');
  writeln (pfRPTFile,' |                     LEAST SQUARES ADJUSTMENT OPTION                      |');
  writeln (pfRPTFile,' |                                                                          |');
  writeln (pfRPTFile,' |--------------------------------------------------------------------------|');
  writeln (pfRPTFile,' |                                                                          |');
  writeln (pfRPTFile,' | A baseline of known lengths is assumed.                                  |');
  writeln (pfRPTFile,' |                                                                          |');
  writeln (pfRPTFile,' | The known lengths are the certified distances between the pillars of the |');
  writeln (pfRPTFile,' | baseline. All certified distances are on the same horizontal plane at a  |');
  writeln (pfRPTFile,' | specified reference height and on the same vertical plane running        |');
  writeln (pfRPTFile,' | through the first and last stations.                                     |');
  writeln (pfRPTFile,' |                                                                          |');
  writeln (pfRPTFile,' | For the calibration of EDM instruments the least squares estimates for   |');
  writeln (pfRPTFile,' | the additive constant, scale correction and short periodic error         |');
  writeln (pfRPTFile,' | corrections are determined.                                              |');
  writeln (pfRPTFile,' |                                                                          |');
  writeln (pfRPTFile,' | For the re-calibration of certified distances the least squares          |');
  writeln (pfRPTFile,' | estimates for the certified distance corrections and the additive        |');
  writeln (pfRPTFile,' | constant of the verifying EDM instrument are determined.                 |');
  writeln (pfRPTFile,' |                                                                          |');
  with dmBase.rxStandard do
  begin
    if frmJob.rbtnInstrument.Checked then
    begin
      if Locate('Type','G',[]) then
      begin
        if FieldByName('Description').AsString = 'LUM' then
        begin
          dUncertaintyConstant := FieldByName('StandardConstant').AsFloat;
          dUncertaintyScale := FieldByName('StandardScale').AsFloat;
          writeln (pfRPTFile,' | The Least Uncertainty of Measurement(LUM)is required for accreditation   |');
          if GetLumUnitsFromDB='1' then
            writeln (pfRPTFile,
              Format(' | LUM for the instrument correction = ±(%5.2f mm + %5.2f ppm)              |',
              [dUncertaintyConstant,dUncertaintyScale]))
          else
          begin
            writeln (pfRPTFile,' | LUM for the instrument correction =                                      |');
            writeln (pfRPTFile, GetUncertaintyWithUnits(dUncertaintyConstant, dUncertaintyScale, '%5.2f',
                      '%5.2f', ' | ')+'                  |');
          end;
          writeln (pfRPTFile,' |                                                                          |');
        end;
      end;
    end
    else
    begin
      if Locate('Type','F',[]) then
      begin
        if FieldByName('Description').AsString = 'LUM' then
        begin
          dUncertaintyConstant := FieldByName('StandardConstant').AsFloat;
          dUncertaintyScale := FieldByName('StandardScale').AsFloat;
          writeln (pfRPTFile,' | The Least Uncertainty of Measurement(LUM)is required for accreditation   |');

          if GetLumUnitsFromDB='2' then
          begin
            writeln (pfRPTFile,' | LUM for the certified baseline distances =                               |');
            writeln (pfRPTFile, GetUncertaintyWithUnits(dUncertaintyConstant, dUncertaintyScale, '%5.2f',
                      '%5.2f', ' | ')+'                  |');
          end
          else
            writeln (pfRPTFile, ' | LUM for the certified baseline distances = '+
              GetUncertaintyWithUnits(dUncertaintyConstant, dUncertaintyScale,
                '%5.2f', '%5.2f', '')+'       |');

          writeln (pfRPTFile,' |                                                                          |');
        end;
      end;
    end;
  end;
  writeln (pfRPTFile,' ----------------------------------------------------------------------------');
end;

(*******************************************************************************
@procedure PrintAtmosphericParameters( pre: PRE_L);

@description
  Prints the atmospheric parameters.
*******************************************************************************)
procedure PrintAtmosphericParameters( pre: PRE_L);
begin
  if (cMetsFlag ='Y') then
  begin
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,'       ---------------------------------------------------------------');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       |                  METEOROLOGICAL PARAMETERS                  |');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       |-------------------------------------------------------------|');
    writeln (pfRPTFile,Format('       |  Weather conditions                 |%-23s|',[strWeatherCondition]));
    writeln (pfRPTFile,Format('       |  Mean dry Temperature ''Td''          |   %10.2f  Celsius |'
     ,[pre.dMeanDryTemp]));
    if (pre.cHumidityType = 'W') then
    begin
      writeln (pfRPTFile,Format('       |  Mean wet Temperature ''Tw''          |   %10.2f  Celsius |'
      ,[pre.dMeanWetTemp]));
    end;
    writeln (pfRPTFile,
    Format('       |  Mean Humidity                      |   %10.2f  %1s       |'
    ,[pre.dMeanHumidity,'%']));
    writeln (pfRPTFile,
    Format('       |  Mean Pressure  ''P''                 |   %10.2f  hPa     |'
     ,[pre.dMeanPressure]));
    writeln (pfRPTFile,
    Format('       |  Partial Water Vapour Pressure ''e''  |   %10.2f  hPa     |'
     ,[pre.dPartialWaterVapPres]));
    writeln (pfRPTFile,
    Format('       |  Reference Refractive Index         |   %10.7f          |'
     ,[pre.dRefractiveIndex]));
    writeln (pfRPTFile,
    Format('       |  First velocity term ''C''            |   %10.2f          |'
     ,[pre.dC]));
    writeln (pfRPTFile,
    Format('       |  First Velocity term ''D''            |   %10.2f          |'
     ,[pre.dD]));
    writeln (pfRPTFile,'       |-------------------------------------------------------------|');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       |          FIRST VELOCITY CORRECTION APPLIED                  |');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       |                D.P           11.27 e                        |');
    writeln (pfRPTFile,'       |  K = ( C - ------------- + ------------- ).distance/1000000 |');
    writeln (pfRPTFile,'       |            (273.15 + Td)   (273.15 + Td)                    |');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       ---------------------------------------------------------------');

    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,'       The first velocity correction is based on a velocity of light');
    writeln (pfRPTFile,  '       of 299 792 458 m/s and on the refractive index formulae');
    writeln (pfRPTFile,  '       recommended by the International Association of Geodesy at the');
    writeln (pfRPTFile,  '       XXIIth General Assembly in Birmingham, 1999.');
    if (pre.cDefaultCFlag = 'Y') or (pre.cDefaultDFlag = 'Y') then
    begin
      writeln (pfRPTFile,'       ---------------------------------------------------------------');
      writeln (pfRPTFile,'                                  WARNING                             ');
      writeln (pfRPTFile,'       ---------------------------------------------------------------');
      if (pre.cDefaultCFlag = 'Y') then
      begin
        writeln (pfRPTFile,
         '       Refractive index and the C term could not be calculated from  ');
        writeln (pfRPTFile,
         '       given unit length and modulation frequency. The printed values  ');
        writeln (pfRPTFile,
         '       are the most commonly used for EDM instruments.');
      end;
      if (pre.cDefaultDFlag = 'Y') then
      begin
        writeln (pfRPTFile,' ');
        writeln (pfRPTFile,
         '       The D term could not be calculated from the given carrier ');
        writeln (pfRPTFile,
           '       wave length. The printed value is the most commonly used ');
        writeln (pfRPTFile,
           '       for EDM instruments.');
      end;
      writeln (pfRPTFile,'       ---------------------------------------------------------------');
    end;
  end
  else
  begin
    writeln (pfRPTFile,'');
    writeln (pfRPTFile,'       ---------------------------------------------------------------');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       |                  METEOROLOGICAL PARAMETERS                  |');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       |-------------------------------------------------------------|');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       |  The atmospheric correction dial of the EDM instrument      |');
    writeln (pfRPTFile,'       |  was set for all observations. Therefore the observed       |');
    writeln (pfRPTFile,'       |  distances measured by the EDM instrument were already      |');
    writeln (pfRPTFile,'       |  corrected for atmospherics.                                |');
    writeln (pfRPTFile,'       |                                                             |');
    writeln (pfRPTFile,'       ---------------------------------------------------------------');
  end;
  if (pre.strThermometer1 <> '') or (pre.strBarometer1 <> '') then
  begin
    writeln (pfRPTFile,'');
    writeln (pfRPTFile,'');
    writeln (pfRPTFile,'       --------------------------------------------------------------');
    writeln (pfRPTFile,'       |                    |                       |                |');
    writeln (pfRPTFile,'       |  Mets Instrument   |     Serial Number     |   Correction   |');
    writeln (pfRPTFile,'       |                    |                       |                |');
    writeln (pfRPTFile,'       |-------------------------------------------------------------|');
    if (pre.strThermometer1 <> '') then
    begin
      if (pre.strThermometer2 = '') then
      begin
        writeln (pfRPTFile,
                    Format('       | Thermometer        |  %20s |     %6.1f     |',[pre.strThermometer1, pre.strThermometer1Corr]));
      end
      else
      begin
        writeln (pfRPTFile,
                    Format('       | Thermometer (EDM)  |  %20s |     %6.1f     |',[pre.strThermometer1, pre.strThermometer1Corr]));
        writeln (pfRPTFile,
                    Format('       | Thermometer (Prism)|  %20s |     %6.1f     |',[pre.strThermometer2, pre.strThermometer2Corr]));
      end;
      writeln (pfRPTFile,'       |                    |                       |                |');
    end;
    if (pre.strBarometer1 <> '') then
    begin
      if (pre.strBarometer2 = '') then
      begin
        writeln (pfRPTFile,
                    Format('       | Barometer          |  %20s |     %6.1f     |',[pre.strBarometer1, pre.strBarometer1Corr]));
      end
      else
      begin
        writeln (pfRPTFile,
                    Format('       | Barometer (EDM)    |  %20s |     %6.1f     |',[pre.strBarometer1, pre.strBarometer1Corr]));
        writeln (pfRPTFile,
                    Format('       | Barometer (Prism)  |  %20s |     %6.1f     |',[pre.strBarometer2, pre.strBarometer2Corr]));
      end;
    end;
    writeln (pfRPTFile,'       ---------------------------------------------------------------');
  end;
end;

(*******************************************************************************
@function  PrintLineObservation( sPage: Integer; sTotalPages: Integer): Integer;

@description
  Prints the observations on each baseline interval. Returns next page number.
*******************************************************************************)
function  PrintLineObservation(
    sPage: Integer;                   // Page number
    sTotalPages: Integer): Integer;
var
  sLoop:      Integer;                    // Loop Counter
  sCount:     Integer;                    // Counter for skip page
  sI:         Integer;                    // Loop Counter
  sLineCount: Integer;                    // Number of lines
  sLineID: Integer;
begin
  sLineCount := dmMain.rxJMeasure.RecordCount;
  sCount := 2;

  for sLoop := 0 to sLineCount-1 do
  begin
    if (sCount = 2) then
    begin
      sPage :=  EDMPageHeader(sPage,sTotalPages);
      sCount := 0;
    end;
    Inc(sCount);

    writeln(pfRPTFile,' ');
    writeln(pfRPTFile,
    ' ============================================================================');
    writeln(pfRPTFile,
    '             FROM PILLAR                            TO PILLAR');
    writeln(pfRPTFile,
    ' -------------------------------------  -------------------------------------');
    writeln(pfRPTFile,
    Format(' Pillar ID          : %5s             Pillar ID          : %5s',
    [line[sLoop].strAtPillarNo, line[sLoop].strToPillarNo]));
    writeln(pfRPTFile,
    Format(' Height above pillar: %8.3f m        Height above pillar: %8.3f m',
    [line[sLoop].dHeightAboveAtPillar, line[sLoop].dHeightAboveToPillar]));
    writeln(pfRPTFile,'');
    if (line[sLoop].cMetsFlag = 'Y') then
    begin
      writeln(pfRPTFile,
      Format(' Dry Temperature     : %8.1f Celsius',[line[sLoop].dDryTemp]));
      if (line[sLoop].cHumidityType = 'W') then
      begin
        writeln(pfRPTFile,
        Format(' Wet Temperature     : %8.1f Celsius',[line[sLoop].dWetTemp]));
      end
      else
      begin
        writeln(pfRPTFile,
        Format(' Humidity            : %8.2f %1s        ',[line[sLoop].dHumidity,'%']));
      end;
      writeln(pfRPTFile,
      Format(' Pressure            : %8.1f millibars',[line[sLoop].dPressure]));
    end;
    writeln(pfRPTFile,'');
    writeln(pfRPTFile,'                      DISTANCE OBSERVATIONS (metres)');
    writeln(pfRPTFile,' -------------------------------------------------------------------------');

    sLineID := line[sLoop].sLineID;
    with dmBase.rxmemObservation do
    begin
      sI := 1;
      First;
      while not EOF do
      begin
        if FieldByName('MeasureID').AsInteger = sLineID then
        begin
          writeln(pfRPTFile,Format(' %3d   Observed distance         %9.4f',
              [sI, FieldByName('ObsDistance').AsFloat]));
          Inc(sI);
        end;
        Next;
      end;
    end;
    if sI > 12 then
    begin
      sCount := 2;
    end;

    writeln(pfRPTFile, '                                  ---------');
    writeln(pfRPTFile,
    Format(' Mean observed slope distance :  %9.4f     Std Dev =  %7.4f',
    [line[sLoop].dMeanObsDistance, line[sLoop].dObsDistanceStdDev]));
    writeln(pfRPTFile,' ');
  end;
  Result := sPage;
end;

(*******************************************************************************
@function PrintDistanceReductions( sPage: Integer; sTotalPages: Integer): Integer;

@description
  Prints all the distance reductions. Returns next page number.
*******************************************************************************)
function  PrintDistanceReductions(
   sPage: Integer;                   // Page number
   sTotalPages: Integer): Integer;
var
  sLoop: Integer;                    // Loop Counter
  sCount: Integer;                   // Line Counter
  dIndex:  DOUBLE;                   // Sum EDM and reflector index
  sLineCount: Integer;
begin
  sLineCount := dmMain.rxJMeasure.RecordCount;
  sCount := 0;
  for sLoop :=0 to sLineCount-1 do
  begin
    if(sCount > 38) then
    begin
      sPage :=  EDMPageHeader(sPage,sTotalPages);

      sCount := 0;
    end;
    if (sCount = 0) then
    begin
      writeln(pfRPTFile,
      ' --------------------------------------------------------------------------');
      writeln(pfRPTFile,
      '                        SUMMARY OF DISTANCE REDUCTIONS');
      writeln(pfRPTFile,
      ' --------------------------------------------------------------------------');
      writeln(pfRPTFile,
      '                    MEAN ');
      writeln(pfRPTFile,
      ' PILLAR NUMBERS   OBSERVED                                        REDUCED');
      writeln(pfRPTFile,
      ' --------------   DISTANCE    INDEX    OFFSET   SLOPE    ATMOS    DISTANCE');
      writeln(pfRPTFile,
      ' INSTR   REFL        (m)       (m)      (m)      (m)      (m)        (m)');
      writeln(pfRPTFile,
      ' -----   -----   ----------  -------  -------  -------  -------  ----------');
    end;
    Inc(sCount);
    dIndex := line[sLoop].dEDMConstant + line[sLoop].dPrismConstant;
    writeln(pfRPTFile,
    Format(' %5s   %5s   %10.4f  %7.4f  %7.4f  %7.4f  %7.4f  %10.4f',
     [line[sLoop].strAtPillarNo,
     line[sLoop].strToPillarNo,
     line[sLoop].dMeanObsDistance,
     dIndex,
     line[sLoop].dOffsetCorrection,
     line[sLoop].dSlopeCorrection,
     line[sLoop].dAtmosphericCorrection,
     line[sLoop].dReducedDistance]));
  end;
  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------');
  Result := sPage;
end;

(*******************************************************************************
@function PrintDistanceStdDev( sPage: Integer; sTotalPages: Integer): Integer;

@description
  Prints the a priori standard deviations. Returns next page number.
*******************************************************************************)
function  PrintDistanceStdDev(
   sPage: Integer;                   // Page number
   sTotalPages: Integer): Integer;
var
  sCount: Integer;                   // Line Counter
  isFirstPage: Boolean;
begin
  sCount := 0;
  isFirstPage := True;
  with dmBase.rxmemStdDev do
  begin
    First;
    while not EOF do
    begin
      if (sCount > 24) and isFirstPage then
      begin
        isFirstPage := False;
        sPage :=  EDMPageHeader(sPage,sTotalPages);
        sCount := 0;
      end;
      if(sCount > 37) then
      begin
        sPage :=  EDMPageHeader(sPage,sTotalPages);
        sCount := 0;
      end;
      if (sCount = 0) then
      begin

        writeln(pfRPTFile,
        ' -------------------------------------------------------------------------------');
        writeln(pfRPTFile,
        '                     SUMMARY OF A PRIORI STANDARD DEVIATIONS');
        writeln(pfRPTFile,
        ' -------------------------------------------------------------------------------');
        writeln(pfRPTFile,' ');
        if isFirstPage then
        begin
          writeln(pfRPTFile,' The following a priori standard deviations have been adopted: ');
          writeln(pfRPTFile,' ');

          writeln(pfRPTFile,GetUncertaintyWithUnits(pre_StdDev.ObsDistanceConstant,
            pre_StdDev.ObsDistanceScale, '%5.2f', '%7.3f',
            '     EDM Distance measurements     :', True, False, False, False));

          if dmMain.rxJobJobType.AsString = 'I' then
          begin
            writeln(pfRPTFile,GetUncertaintyWithUnits(pre_StdDev.IntervalConstant,
              pre_StdDev.IntervalScale, '%5.2f', '%7.3f',
              '     Baseline Interval             :', True, False, False, False));

            if GetLumUnitsFromDB='2' then
              writeln(pfRPTFile,'                                    where L = length in metres ');
          end
          else
          if frmJob.cbManufacturerSpecs.Checked then
          begin
            writeln(pfRPTFile,GetUncertaintyWithUnits(pre_StdDev.InstrumentConstant,
              pre_StdDev.InstrumentScale, '%5.2f', '%7.3f',
              '     Audit Instrument              :', True, False));

            if GetLumUnitsFromDB='2' then
              writeln(pfRPTFile,'                                    where L = length in metres ');
          end;

          writeln(pfRPTFile,Format('     Centring EDM Instrument       : %5.2f mm', [pre_StdDev.CentringInstrument]));
          writeln(pfRPTFile,Format('     Centring reflector            : %5.2f mm', [pre_StdDev.CentringReflector]));
          writeln(pfRPTFile,Format('     Offset                        : %5.2f mm', [pre_StdDev.OffsetInstrument]));
          writeln(pfRPTFile,Format('     EDM Height above pillar       : %5.2f mm', [pre_StdDev.HeightAboveAtPillar]));
          writeln(pfRPTFile,Format('     Reflector Height above pillar : %5.2f mm', [pre_StdDev.HeightAboveToPillar]));
          writeln(pfRPTFile,Format('     Pillar Height difference      : %5.2f mm', [pre_StdDev.PillarHeightDiff]));
          writeln(pfRPTFile,Format('     Temperature                   : %4.1f Celsius', [pre_StdDev.Temperature]));
          writeln(pfRPTFile,Format('     Pressure                      : %4.1f hPa', [pre_StdDev.Pressure]));
          writeln(pfRPTFile,Format('     Humidity                      : %4.1f %1s', [pre_StdDev.Humidity,'%']));
          writeln(pfRPTFile,' ');
        end;
        if dmMain.rxJobJobType.AsString = 'I' then
        begin
          writeln(pfRPTFile,
          '                BASELINE    EDM                          HEIGHT    ');
          writeln(pfRPTFile,
          ' PILLAR NUMBERS INTERVAL  READINGS    ATMOS   CENTRING    DIFF     OFFSET   COMBINED');
          writeln(pfRPTFile,
          ' -------------  STD DEV    STD DEV   STD DEV   STD DEV   STD DEV   STD DEV   STD DEV');
          writeln(pfRPTFile,
          ' INSTR   REFL     (mm)      (mm)      (mm)      (mm)      (mm)      (mm)      (mm)');
          writeln(pfRPTFile,
          ' -----   -----  --------  --------  --------  --------  --------  --------  --------');
        end
        else
        begin
          if frmJob.cbManufacturerSpecs.Checked then
          begin
            writeln(pfRPTFile,
            '                  EDM       EDM                          HEIGHT    ');
            writeln(pfRPTFile,
            ' PILLAR NUMBERS MANUFACT  READINGS    ATMOS   CENTRING    DIFF     OFFSET   COMBINED');
            writeln(pfRPTFile,
            ' -------------   STD DEV   STD DEV   STD DEV   STD DEV   STD DEV   STD DEV   STD DEV');
            writeln(pfRPTFile,
            ' INSTR  REFL      (mm)      (mm)      (mm)      (mm)      (mm)      (mm)      (mm)');
            writeln(pfRPTFile,
            ' -----   -----  --------  --------  --------  --------  --------  --------  --------');
          end
          else
          begin
            writeln(pfRPTFile,
            '                   EDM                          HEIGHT    ');
            writeln(pfRPTFile,
            ' PILLAR NUMBERS READINGS    ATMOS   CENTRING    DIFF     OFFSET   COMBINED');
            writeln(pfRPTFile,
            ' -------------   STD DEV   STD DEV   STD DEV   STD DEV   STD DEV   STD DEV');
            writeln(pfRPTFile,
            ' INSTR   REFL     (mm)      (mm)      (mm)      (mm)      (mm)      (mm)');
            writeln(pfRPTFile,
            ' -----   -----  --------  --------  --------  --------  --------  --------');
          end;
        end;
      end;
      Inc(sCount);

      if dmMain.rxJobJobType.AsString = 'I' then
      begin
        writeln(pfRPTFile,
        Format(' %5s   %5s   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f',
          [FieldByName('AtPillarNo').AsString,
          FieldByName('ToPillarNo').AsString,
          FieldByName('StdDevBaselineInterval').AsFloat,
          FieldByName('StdDevObsDistance').AsFloat,
          FieldByName('StdDevMeteorology').AsFloat,
          FieldByName('StdDevCentring').AsFloat,
          FieldByName('StdDevHeightDifference').AsFloat,
          FieldByName('StdDevOffset').AsFloat,
          FieldByName('StdDevCombined').AsFloat]));
      end
      else
      begin
        if frmJob.cbManufacturerSpecs.Checked then
        begin
          writeln(pfRPTFile,
          Format(' %5s   %5s   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f',
            [FieldByName('AtPillarNo').AsString,
            FieldByName('ToPillarNo').AsString,
            FieldByName('StdDevInstrument').AsFloat,
            FieldByName('StdDevObsDistance').AsFloat,
            FieldByName('StdDevMeteorology').AsFloat,
            FieldByName('StdDevCentring').AsFloat,
            FieldByName('StdDevHeightDifference').AsFloat,
            FieldByName('StdDevOffset').AsFloat,
            FieldByName('StdDevCombined').AsFloat]));
        end
        else
        begin
          writeln(pfRPTFile,
          Format(' %5s   %5s   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f   %7.2f',
            [FieldByName('AtPillarNo').AsString,
            FieldByName('ToPillarNo').AsString,
            FieldByName('StdDevObsDistance').AsFloat,
            FieldByName('StdDevMeteorology').AsFloat,
            FieldByName('StdDevCentring').AsFloat,
            FieldByName('StdDevHeightDifference').AsFloat,
            FieldByName('StdDevOffset').AsFloat,
            FieldByName('StdDevCombined').AsFloat]));
        end;
      end;
      Next;
    end;
  end;
  writeln(pfRPTFile,' ');
        writeln(pfRPTFile,
        ' -------------------------------------------------------------------------------');
  Result := sPage;
end;

(*******************************************************************************
@function PrintLinearMiscloses(sPage: Integer; sTotalPages: Integer): Integer;

@description
  Prints the linear miscloses. Returns next page number.
*******************************************************************************)
function PrintLinearMiscloses(
   sPage: Integer;                   // Page number
   sTotalPages: Integer): Integer;
var
  sLoop: Integer;                    // Loop Counter
  sCount: Integer;                   // Line Counter
  sLineCount: Integer;
begin
  sCount := 0;
  sLineCount := dmMain.rxJMeasure.RecordCount;
  for sLoop :=0 to sLineCount-1 do
  begin
    if(sCount > 38) then
    begin
      sPage :=  EDMPageHeader(sPage,sTotalPages);
      sCount := 0;
    end;
    if (sCount = 0) then
    begin
      writeln(pfRPTFile,
      ' ------------------------------------------------------------------------------');
      writeln(pfRPTFile,
      '                        SUMMARY OF LINEAR MISCLOSES');
      writeln(pfRPTFile,
      ' ------------------------------------------------------------------------------');
      writeln(pfRPTFile,
      ' PILLAR NUMBERS     FIXED     OBSERVED              A PRIORI');
      writeln(pfRPTFile,
      ' --------------    DISTANCE   DISTANCE   MISCLOSE   STD. DEV.');
      writeln(pfRPTFile,
      ' INSTR   REFL         (m)        (m)        (m)        (m)');
      writeln(pfRPTFile,
      ' -----   -----     ---------  ---------  ---------  ---------');
    end;
    Inc(sCount);
    writeln(pfRPTFile,
    Format(' %5s   %5s     %9.4f  %9.4f  %9.4f  %9.5f',
     [line[sLoop].strAtPillarNo,
     line[sLoop].strToPillarNo,
     line[sLoop].dTrueDistance,
     line[sLoop].dReducedDistance,
     line[sLoop].dResidual,
     line[sLoop].dAprioriStdDev]));
  end;
  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');
  writeln(pfRPTFile,' ');
  Result := sPage;
end;

(*******************************************************************************
@procedure BaseLeastSquareSolution( sLineCount: Integer; dUnitLength:  DOUBLE);

@description
  Least squares adjustment of the baseline distances.
*******************************************************************************)
procedure BaseLeastSquareSolution (
   sLineCount: Integer;                // Number of lines
   dUnitLength:  DOUBLE);              // Unit lenght in metres
var
   sLoop: Integer;                     // loop counter
   sParCount: Integer;                 // Total number of parameters
begin
   sParCount := Post.sParameterCount;  // Total number of parameters

  //***************************************************
  // Form observation equations
  //***************************************************
  BaseFormObservationEquations (sLineCount,dUnitLength);

  //***************************************************
  // Form normal equations
  //***************************************************
   BaseFormNormalEquations (sLineCount,sParCount);

  //***********************************
  // Solve equation for unknowns 'X'
  //***********************************
   Matrix (sParCount);

  //***********************************
  // Calibration parameters
  //***********************************
  Post.sDegFreedom := sLineCount - Post.sParameterCount;
  Post.sObservationCount := sLineCount;

  for sLoop :=0 to sParCount-1 do
  begin
     Post.dParm[sLoop] := Mat.dX[sLoop];
  end;
end;

(*******************************************************************************
@procedure BaseFormObservationEquations( sLineCount: Integer; dUnitLength: DOUBLE);

@description
  Form the observation equations.
*******************************************************************************)
procedure BaseFormObservationEquations (
    sLineCount: Integer;                // Number of lines
    dUnitLength: DOUBLE);               // Unit lenght in metres
var
  i:   Integer;                     // Loop counter
  dTerm:   DOUBLE;                      // Term in equations
  dStdDev: DOUBLE;                      // Standard deviation
begin
  LogDebugMessage('BaseFormObservationEquations('+IntToStr(sLineCount)+', '+
    FloatToStr(dUnitLength)+')');
  for i := 0 to sLineCount-1 do
  begin
    if dUnitLength > 0 then
      dTerm := 2.0 * PI * line[i].dReducedDistance / dUnitLength
    else
      dTerm := 0;

    omat.dB[i][0] := 1.000;
    LogDebugMessage('omat.dB['+IntToStr(i)+'][0] := 1.000');

    omat.dB[i][1] := line[i].dReducedDistance;
    LogDebugMessage('omat.dB['+IntToStr(i)+'][1] := line['+IntToStr(i)+
      '].dReducedDistance ('+FloatToStr(line[i].dReducedDistance)+')');

    omat.dB[i][2] := sin(dTerm);
    LogDebugMessage('omat.dB['+IntToStr(i)+'][2] := sin(dTerm) ['+FloatToStr(sin(dTerm)));

    omat.dB[i][3] := cos(dTerm);
    LogDebugMessage('omat.dB['+IntToStr(i)+'][3] := cos(dTerm) ['+FloatToStr(cos(dTerm)));

    omat.dB[i][4] := sin(2 * dTerm);
    LogDebugMessage('omat.dB['+IntToStr(i)+'][4] := sin(2 * dTerm) ['+FloatToStr(sin(2 * dTerm)));

    omat.dB[i][5] := cos(2 * dTerm);
    LogDebugMessage('omat.dB['+IntToStr(i)+'][5] := cos(2 * dTerm) ['+FloatToStr(cos(2 * dTerm)));

    omat.dB[i][6] := sin(3 * dTerm);
    LogDebugMessage('omat.dB['+IntToStr(i)+'][6] := sin(3 * dTerm) ['+FloatToStr(sin(3 * dTerm)));

    omat.dB[i][7] := cos(3 * dTerm);
    LogDebugMessage('omat.dB['+IntToStr(i)+'][7] := cos(3 * dTerm) ['+FloatToStr(cos(3 * dTerm)));

    omat.dW[i]    := line[i].dResidual;
    LogDebugMessage('omat.dW['+IntToStr(i)+'] := line[i].dResidual ['+FloatToStr(line[i].dResidual));

    dStdDev           := line[i].dAprioriStdDev;
    LogDebugMessage('dStdDev = '+FloatToStr(dStdDev));
    omat.dP[i]    := 1.00 / ( dStdDev * dStdDev);
    LogDebugMessage('omat.dP['+IntToStr(i)+'] := 1.00 / ( dStdDev * dStdDev) ['+FloatToStr(1.00 / ( dStdDev * dStdDev)));
  end;
end;

(*******************************************************************************
@procedure BaseFormNormalEquations( sLineCount: Integer; sColCount: Integer);

@description
  Form the normal equations.
*******************************************************************************)
procedure BaseFormNormalEquations (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
begin

  //***********************************************
  // Calculate BtP Matrix
  //***********************************************
  Multiply_BtP_Matrix (sLineCount, sColCount);

  //***********************************************
  // Calculate BtPT Matrix
  //***********************************************
  Multiply_BtPT_Matrix (sLineCount, sColCount);

  //***********************************************
  // Calculate BtPB Matrix
  //***********************************************
  Multiply_BtPB_Matrix (sLineCount, sColCount);
end;


(*******************************************************************************
@procedure Multiply_BtP_Matrix( sLineCount: Integer; sColCount: Integer);

@description
  Multiply the Transposed Observation (B) Matrix with the Weight(P) Matrix.
*******************************************************************************)
procedure Multiply_BtP_Matrix (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
var
  sI: Integer;
  sJ: Integer;
begin
  LogDebugMessage('Multiply_BtP_Matrix('+IntToStr(sLineCount)+','+
    IntToStr(sColCount)+')');

  LogDebugMessage('for sI := 0 to sColCount-1['+IntToStr(sColCount-1)+'] do');
  for sI := 0 to sColCount-1 do
  begin
    LogDebugMessage('for sJ := 0 to sColCount-1['+IntToStr(sColCount-1)+'] do');
    for sJ := 0 to sLineCount-1 do
    begin
      omat.dBP[sI][sJ] := omat.dB[sJ][sI] * omat.dP[sJ];

      LogDebugMessage('omat.dBP['+IntToStr(sI)+']['+IntToStr(sJ)+
        '] := omat.dB['+IntToStr(sJ)+']['+IntToStr(sI)+']('+
        FloatToStr(omat.dB[sJ][sI])+') * omat.dP['+IntToStr(sJ)+']('+
        FloatToStr(omat.dP[sJ])+') = '+FloatToStr(omat.dBP[sI][sJ]));
    end;
  end;
end;

(*******************************************************************************
@procedure Multiply_BtPT_Matrix( sLineCount: Integer; sColCount: Integer);

@description
  Multiply the BtP Matrix with the residual (T) Matrix.
*******************************************************************************)
procedure Multiply_BtPT_Matrix (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
var
  sI: Integer;
  sJ: Integer;
begin
  LogDebugMessage('Multiply_BtPT_Matrix('+IntToStr(sLineCount)+','+
    IntToStr(sColCount)+')');
  LogDebugMessage('for sI := 0 to sColCount-1['+IntToStr(sColCount-1)+'] do');
  for sI := 0 to sColCount-1 do
  begin
    mat.dB[sI] := 0;
    LogDebugMessage('mat.dB['+IntToStr(sI)+'] := 0');

    LogDebugMessage('for sJ := 0 to sColCount-1['+IntToStr(sColCount-1)+'] do');
    for sJ := 0 to sLineCount-1 do
    begin
      mat.dB[sI] := mat.dB[sI] + omat.dBP[sI][sJ] * omat.dW[sJ];

      LogDebugMessage('mat.dB['+IntToStr(sI)+'] := mat.dB['+IntToStr(sI)+']('+
        FloatToStr(mat.dB[sI])+') + omat.dBP['+IntToStr(sI)+']['+IntToStr(sJ)+']('+
        FloatToStr(omat.dBP[sI][sJ])+') * omat.dW['+IntToStr(sJ)+']('+FloatToStr(omat.dW[sJ])+')');
    end;
  end;
end;

(*******************************************************************************
@procedure Multiply_BtPB_Matrix( sLineCount: Integer; sColCount: Integer);

@description
  Multiply the BtP Matrix with the observation Matrix (B) Matrix.
*******************************************************************************)
procedure Multiply_BtPB_Matrix (
    sLineCount: Integer;               // Number of lines
    sColCount: Integer);               // Number of columns, unknowns
var
  sI: Integer;
  sJ: Integer;
  sK: Integer;
begin
  LogDebugMessage('Multiply_BtPB_Matrix('+IntToStr(sLineCount)+','+
    IntToStr(sColCount)+')');

  LogDebugMessage('for sI := 0 to sColCount-1['+IntToStr(sColCount-1)+'] do');
  for sI := 0 to sColCount-1 do
  begin
    for sJ := 0 to sColCount-1 do
    begin
      mat.dA[sI][sJ] := 0;
      LogDebugMessage('mat.dA['+IntToStr(sI)+'][['+IntToStr(sJ)+'] := 0');
      for sK := 0 to sLineCount-1 do
      begin
        mat.dA[sI][sJ] := mat.dA[sI][sJ] + omat.dBP[sI][sK] * omat.dB[sK][sJ];
        LogDebugMessage('mat.dA['+IntToStr(sI)+']['+IntToStr(sJ)+'] := mat.dA['+
          IntToStr(sI)+']['+IntToStr(sJ)+']('+
          FloatToStr(mat.dA[sI][sJ])+') + omat.dBP['+IntToStr(sI)+']['+IntToStr(sK)+']('+
          FloatToStr(omat.dBP[sI][sK])+') * omat.dB['+IntToStr(sK)+']['+
          IntToStr(sJ)+']('+FloatToStr(omat.dB[sK][sJ])+')');
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure Matrix( sUnknowns: Integer);

@description
  Computes the unknowns in the matrix equations.
*******************************************************************************)
procedure Matrix( sUnknowns: Integer);
var
  sI: Integer;
  sJ: Integer;
  sK: Integer;
  dCC: Double;
begin
  LogDebugMessage('Matrix('+IntToStr(sUnknowns)+')');
  //*****************************
  //  initialise inverse matrix
  //*****************************
  dCC := 0;
  LogDebugMessage('for sI := 0 to sUnknowns-1['+IntToStr(sUnknowns-1)+'] do');
  for sI :=0 to sUnknowns-1 do
  begin
    LogDebugMessage('for sJ := 0 to sUnknowns-1['+IntToStr(sUnknowns-1)+'] do');
    for sJ :=0 to sUnknowns-1 do
    begin
      Mat.dInv[sI][sJ] := 0.0;
      LogDebugMessage('mat.dInv['+IntToStr(sI)+']['+IntToStr(sJ)+'] := 0.0');
    end;

    Mat.dInv[sI][sI] := 1.0;
    LogDebugMessage('mat.dInv['+IntToStr(sI)+']['+IntToStr(sI)+'] := 1.0');
  end;

  //*****************************
  //  Compute unknowns & inverse
  //*****************************
  LogDebugMessage('for sI := 0 to sUnknowns-1['+IntToStr(sUnknowns-1)+'] do');
  for  sI := 0 to sUnknowns-1 do
    for sJ := 0 to sUnknowns-1 do
    begin
      LogDebugMessage('for sJ := 0 to sUnknowns-1['+IntToStr(sUnknowns-1)+'] do');
      if sI <> sJ then
      begin
        LogDebugMessage('if ( Mat.dA['+IntToStr(sI)+']['+IntToStr(sI)+'] ('+
          FloatToStr(Mat.dA[sI][sI])+') <> 0) then');
        if ( Mat.dA[sI][sI] <> 0) then
        begin
          dCC := Mat.dA[sJ][sI] / Mat.dA[sI][sI];
          LogDebugMessage('dCC := Mat.dA['+IntToStr(sJ)+']['+IntToStr(sI)+'] ('+
            FloatToStr(Mat.dA[sJ][sI])+') / Mat.dA['+IntToStr(sI)+']['+
            IntToStr(sI)+'] ('+FloatToStr(Mat.dA[sI][sI])+') = '+FloatToStr(dCC));
        end;

        Mat.dB[sJ] := Mat.dB[sJ] - dCC * Mat.dB[sI];
        LogDebugMessage('Mat.dB['+IntToStr(sJ)+'] := Mat.dB['+IntToStr(sJ)+'] ('+
          FloatToStr(Mat.dB[sJ])+') - dCC ('+FloatToStr(dCC)+') * Mat.dB['+
          IntToStr(sI)+'] ('+FloatToStr(Mat.dB[sI])+') = '+FloatToStr(Mat.dB[sJ]));

        LogDebugMessage('for sK := 0 to sUnknowns-1['+IntToStr(sUnknowns-1)+'] do');
        for sK := 0 to sUnknowns-1 do
        begin
          LogDebugMessage('Mat.dA['+IntToStr(sJ)+']['+IntToStr(sK)+
            '] := Mat.dA['+IntToStr(sJ)+']['+IntToStr(sK)+'] ('+
            FloatToStr(Mat.dA[sJ][sK])+') - dCC ('+FloatToStr(dCC)+') * Mat.dA['+
            IntToStr(sI)+']['+IntToStr(sK)+'] ('+
            FloatToStr(Mat.dA[sI][sK])+') = '+
            FloatToStr(Mat.dA[sJ][sK] - dCC * Mat.dA[sI][sK]));

          Mat.dA[sJ][sK]   :=
              Mat.dA[sJ][sK] - dCC * Mat.dA[sI][sK];

          LogDebugMessage('Mat.dInv['+IntToStr(sJ)+']['+IntToStr(sK)+
            '] := Mat.dInv['+IntToStr(sJ)+']['+IntToStr(sK)+'] ('+
            FloatToStr(Mat.dInv[sJ][sK])+') - dCC ('+FloatToStr(dCC)+') * Mat.dA['+
            IntToStr(sI)+']['+IntToStr(sK)+'] ('+
            FloatToStr(Mat.dInv[sI][sK])+') = '+
            FloatToStr(Mat.dInv[sJ][sK] - dCC * Mat.dInv[sI][sK]));

          Mat.dInv[sJ][sK] :=
              Mat.dInv[sJ][sK] - dCC * Mat.dInv[sI][sK];
        end; {for}
      end; {if}
    end; {for}

  LogDebugMessage('for sI := 0 to sUnknowns-1['+IntToStr(sUnknowns-1)+'] do');
  for sI := 0 to sUnknowns-1 do
  begin
    LogDebugMessage('if Mat.dA[sI][sI] ('+FloatToStr(Mat.dA[sI][sI])+
      ') <> 0.0 then');
    if Mat.dA[sI][sI] <> 0.0 then
    begin
      Mat.dX[sI] := Mat.dB[sI] / Mat.dA[sI][sI];
      LogDebugMessage('Mat.dX[sI] := Mat.dB[sI] ('+FloatToStr(Mat.dB[sI])+
        ') / Mat.dA[sI][sI] ('+FloatToStr(Mat.dA[sI][sI])+') = '+
        FloatToStr(Mat.dX[sI]));

      LogDebugMessage('for sJ := 0 to sUnknowns-1['+IntToStr(sUnknowns-1)+'] do');
      for sJ := 0 to sUnknowns-1 do
      begin
        LogDebugMessage('Mat.dInv['+IntToStr(sI)+']['+IntToStr(sJ)+
          '] := Mat.dInv['+IntToStr(sI)+']['+IntToStr(sJ)+'] ('+
          FloatToStr(Mat.dInv[sI][sJ])+') / Mat.dA['+IntToStr(sI)+']['+
          IntToStr(sI)+'] ('+FloatToStr(Mat.dA[sI][sI])+') = '+
          FloatToStr(Mat.dInv[sI][sJ] / Mat.dA[sI][sI]));

        Mat.dInv[sI][sJ] := Mat.dInv[sI][sJ] / Mat.dA[sI][sI];
      end;
    end; {if}
  end; {for}
end;

(*******************************************************************************
@procedure AdjustedDistances( dUnitLength:  DOUBLE);

@description
  Adjusts the baseline distances.
*******************************************************************************)
procedure AdjustedDistances  (
   dUnitLength:  DOUBLE);            // Unit lenght in metres
var
  sLoop: Integer;                    // loop counter
  dD: DOUBLE;                        // Reduced distance
  dTerm: DOUBLE;                     // Temp term
  dCor: DOUBLE;                      // Correction
  dC: array[0..7] of DOUBLE;         // Calibration parameters
begin
  for sLoop := 0 to Post.sParameterCount-1 do
  begin
     dC[sLoop]:=  Post.dParm[sLoop];
  end;

  for sLoop := 0 to Post.sObservationCount-1 do
  begin
    Post.dTrueDistance[sLoop]      := Line[sLoop].dTrueDistance;
    Post.dObservedDistance[sLoop]  := Line[sLoop].dReducedDistance;
    Post.dStdDevObservation[sLoop] := Line[sLoop].dAprioriStdDev;
  end;

  for sLoop := 0 to Post.sObservationCount-1 do
  begin
    dCor := 0.000;
    dD := Post.dObservedDistance[sLoop];
    if Post.sParameterCount = 8 then
    begin
      dTerm := 2.0 * PI * dD / dUnitLength;
      dCor  := dC[0] + dC[1]*dD  + dC[2]*sin(dTerm)   + dC[3]*cos(dTerm)
                                 + dC[4]*sin(2*dTerm) + dC[5]*cos(2*dTerm)
                                 + dC[6]*sin(3*dTerm) + dC[7]*cos(3*dTerm);
    end;

    if Post.sParameterCount = 6 then
    begin
      dTerm := 2.0 * PI * dD / dUnitLength;
      dCor  := dC[0] + dC[1]*dD  + dC[2]*sin(dTerm)   + dC[3]*cos(dTerm)
                                 + dC[4]*sin(2*dTerm) + dC[5]*cos(2*dTerm);
    end;
    if Post.sParameterCount = 2 then
    begin
      dCor :=  dC[0] + dC[1]*dD;
    end;
    Post.dLSCorrection[sLoop] := dCor;
    Post.dAdjustedDistance[sLoop] := dD + dCor;
    Post.dLSResidual[sLoop] := Post.dTrueDistance[sLoop] - Post.dAdjustedDistance[sLoop];
  end;
end;

(*******************************************************************************
@procedure LSVarianceFactor;

@description
  Computes the variance factor.
*******************************************************************************)
procedure LSVarianceFactor;
var
  sI: Integer;                   // Loop counter
  sLineCount: Integer;            // Number of lines
  dTerm: DOUBLE;                 // Temp variable used in equations
begin
  sLineCount := Post.sObservationCount;
  Post.dMinimum := 0.0;

  for sI := 0 to sLineCount-1 do
  begin
    dTerm :=  Post.dLSResidual[sI] / Post.dStdDevObservation[sI];
    Post.dMinimum := Post.dMinimum + (dTerm * dTerm);
  end;

  Post.dPostVarFactor := Post.dMinimum / Post.sDegFreedom;
end;

(*******************************************************************************
@procedure Basechitest;

@description
  Chi square test on the variance factor.
*******************************************************************************)
procedure Basechitest;
begin
  post.dProbability := post.dConfLevel/100.000;

//****************************************************
// if (ppost->sDegFreedom > 3 &&  (Amended 24-Jan-96)
//****************************************************
  if (post.dProbability < 1.0) and
     (post.dProbability > 0.5 ) then
  begin
    //*************************************************
    //   Compute the abscissa of normal distribution
    //*************************************************
    BaseNormalDistribution;

    //*************************************************************
    //   Initialise Chi values (default if degrees of freedom < 4)
    //*************************************************************
    post.dChiLow    := 0.0;
    post.dChiHigh   := 100.0;

    if (post.sDegFreedom > 3) then
    begin
      //*************************************************
      //   Compute the Chi values
      //*************************************************
      BaseChiValue;
    end;
  end;
end;

(*******************************************************************************
@procedure BaseNormalDistribution;

@description
  Creates a curve of a normal distribution.
*******************************************************************************)
procedure BaseNormalDistribution;
var
   dPr: DOUBLE;
   dTempPr: DOUBLE;
   dTempAbscissa: DOUBLE;
   sCount: Integer;
   dQ: Double;
   dQ1: Double;
   dTablePr: array[0..33] of Double;
begin
  dTablePr[0] := 0.5398;
  dTablePr[1] := 0.5793;
  dTablePr[2] := 0.6179;
  dTablePr[3] := 0.6554;
  dTablePr[4] := 0.6915;
  dTablePr[5] := 0.7257;
  dTablePr[6] := 0.7580;
  dTablePr[7] := 0.7881;
  dTablePr[8] := 0.8159;
  dTablePr[9] := 0.8413;
  dTablePr[10] := 0.8643;
  dTablePr[11] := 0.8849;
  dTablePr[12] := 0.9032;
  dTablePr[13] := 0.9192;
  dTablePr[14] := 0.9332;
  dTablePr[15] := 0.9452;
  dTablePr[16] := 0.9554;
  dTablePr[17] := 0.9641;
  dTablePr[18] := 0.9713;
  dTablePr[19] := 0.9772;
  dTablePr[20] := 0.9821;
  dTablePr[21] := 0.9861;
  dTablePr[22] := 0.9893;
  dTablePr[23] := 0.9918;
  dTablePr[24] := 0.9938;
  dTablePr[25] := 0.9953;
  dTablePr[26] := 0.9965;
  dTablePr[27] := 0.9974;
  dTablePr[28] := 0.9981;
  dTablePr[29] := 0.9987;
  dTablePr[30] := 0.9990;
  dTablePr[31] := 0.9993;
  dTablePr[32] := 0.9995;
  dTablePr[33] := 0.9997;
  sCount := 0;

  //************************************************
  // 2 tailed test
  //************************************************
  dPr       := post.dProbability;
  dPr       := dPr + (1 - dPr) / 2.0;

  while (dPr > dTablePr[sCount]) do
  begin
    Inc(sCount);
  end;

  dTempPr := dTablePr[sCount-1];
  dTempAbscissa := sCount / 10.0;

  //***********************************************
  // Probability density function  dQ
  //***********************************************
  dQ := BasePDF (dTempAbscissa);

  //************************************************
  // Calculate area under curve
  //************************************************
  dQ1 := dQ;
  sCount := 0;

  while( sCount < 100) and (dPr > dTempPr) do
  begin
    Inc(sCount);
    dTempAbscissa := dTempAbscissa + 0.001;
    dQ := BasePDF (dTempAbscissa);
    dTempPr := (dQ + dQ1)/2.0 * 0.001 + dTempPr;
    dQ1 := dQ;
  end;
  post.dAbscissa := dTempAbscissa;
end;

(*******************************************************************************
@function BasePDF (dAbscissa: Double): Double;

@description
  Computes the Abscissa of a normal distribution.
*******************************************************************************)
function BasePDF (
  dAbscissa: Double): Double;       // Abscissa: Normal Distributions
var
  dC: Double;
  dQ: Double;
begin
  dC := 0.398942280402;
  dQ := dC * exp(-(dAbscissa * dAbscissa)/2);
  Result := dQ;
end;

(*******************************************************************************
@procedure BaseChiValue;

@description
  Computes the High and Low Values for the Chi square test on the variance factor.
*******************************************************************************)
procedure BaseChiValue;
var
   dTemp: Double;
   dChiLow: Double;
   dChiHigh: Double;
   dPr: Double;
begin
   dTemp := sqrt(2 * post.sDegFreedom - 1.0);
   Post.dChiLow    :=  dTemp + Post.dAbscissa;
   Post.dChiHigh   :=  dTemp - Post.dAbscissa;

   Post.dChiLow    :=  0.5 * (Post.dChiLow * Post.dChiLow);
   Post.dChiHigh   :=  0.5 * (Post.dChiHigh * Post.dChiHigh);
   dChiLow  := Post.dChiLow;
   dChiHigh := Post.dChiHigh;

   dPr := Post.dProbability;
   dPr := dPr + (1.0 - dPr) / 2.0;

   if (dPr >= 0.90) then
   begin
     Post.dChiLow := dChiLow + 0.10;
     Post.dChiHigh:= dChiHigh + 0.10;
   end;
   if (dPr >= 0.95) then
   begin
     Post.dChiLow := dChiLow + 0.28;
     Post.dChiHigh:= dChiHigh + 0.28;
   end;
   if (dPr >= 0.9749999) then
   begin
     Post.dChiLow := dChiLow + 0.50;
     Post.dChiHigh:= dChiHigh + 0.50;
   end;
   if (dPr >= 0.990) then
   begin
     Post.dChiLow := dChiLow + 0.80;
     Post.dChiHigh:= dChiHigh + 0.80;
   end;
   if (dPr >= 0.995) then
   begin
     Post.dChiLow := dChiLow + 1.0;
     Post.dChiHigh:= dChiHigh + 1.0;
   end;
   Post.dChiValueH :=  Post.dChiHigh;
   Post.dChiValueL :=  Post.dChiLow;

   Post.dChiLow   := (Post.dPostVarFactor * Post.sDegFreedom)
                         / Post.dChiLow;
   Post.dChiHigh   := (Post.dPostVarFactor * Post.sDegFreedom)
                         / Post.dChiHigh;
end;

(*******************************************************************************
@procedure VarianceMatrixByVF( dPostvarFactor: DOUBLE; sParCount: Integer);

@description
  Scales the Inverse matrix by the Variance factor.
*******************************************************************************)
procedure VarianceMatrixByVF(
   dPostvarFactor: DOUBLE;      // A posteriori variance factor
   sParCount: Integer);         // Number of parameters
var
  x,
  y: Integer;
begin
  LogDebugMessage('VarianceMatrixByVF('+FloatToStr(dPostvarFactor)+','+
    IntToStr(sParCount)+')');

  LogDebugMessage('for x := 0 to sParCount-1['+IntToStr(sParCount-1)+'] do');
  for x := 0 to sParCount-1 do
  begin
    LogDebugMessage('for y := 0 to sParCount-1['+IntToStr(sParCount-1)+'] do');
    for y := 0 to sParCount-1 do
    begin
      Mat.dInv[x][y] := dPostvarFactor * Mat.dInv[x][y];
      LogDebugMessage('Mat.dInv['+IntToStr(x)+']['+IntToStr(y)+
        '] := dPostvarFactor ('+FloatToStr(dPostvarFactor)+
        ') * Mat.dInv['+IntToStr(x)+']['+IntToStr(y)+'] ('+
        FloatToStr(Mat.dInv[x][y])+') = '+FloatToStr(Mat.dInv[x][y]));
    end;
  end;
end;

(*******************************************************************************
@procedure StdDevResiduals;

@description
  Compute the standard deviations of the residuals.
*******************************************************************************)
procedure StdDevResiduals;
var
  sI:         Integer;                  // Loop counter
  sJ:         Integer;                  // Loop counter
  sK:         Integer;                  // Loop counter
  sLineCount: Integer;                  // Number of lines
  sColCount:  Integer;                  // Number of lines
  dCC:        DOUBLE;                   // Temp variable used in equations
  dVarObs:    DOUBLE;                   // Variance of distance observation
  dVarRes:    DOUBLE;                   // Variance of residual
begin
   sLineCount := Post.sObservationCount;
   sColCount  := Post.sParameterCount;

  for sI := 0 to sColCount-1 do
  begin
    Post.dParmStdDev[sI] := sqrt(Abs(Mat.dInv[sI][sI]));
  end;

  for sI := 0 to sLineCount-1 do
  begin
    Post.dStdDevL[sI] := 0.0;
    for sJ := 0 to sColCount-1 do
    begin
      dCC := 0.0;
      for sK := 0 to sColCount-1 do
      begin
        dCC := dCC + OMat.dB[sI][sK] * Mat.dInv[sJ][sK];
      end;
      Post.dStdDevL[sI] := Post.dStdDevL[sI] + (OMat.dB[sI][sJ] * dCC);
    end;
    Post.dStdDevL[sI] := abs(Post.dStdDevL[sI]);
    dVarObs := Post.dStdDevObservation[sI] * Post.dStdDevObservation[sI];
    dVarRes := abs(dVarObs - Post.dStdDevL[sI]);
    Post.dStdDevL[sI] := sqrt (Post.dStdDevL[sI]);
    Post.dStdDevResidual[sI] := sqrt (dVarRes);
  end;

end;

(*******************************************************************************
@procedure LSStandardisedResidual;

@description
  Compute the standardised residuals.
*******************************************************************************)
procedure LSStandardisedResidual;
var
  sI: Integer;
  sLineCount: Integer;
begin
  sLineCount := Post.sObservationCount;

  for sI := 0 to sLineCount-1 do
  begin
    if (Abs(Post.dStdDevResidual[sI]) < 0.0001) and (Abs(Post.dLSResidual[sI]) < 0.0001) then
    begin
      Post.dStandardisedRes[sI] := 0;
    end
    else
    begin
      if (Post.dStdDevResidual[sI] = 0) then
      begin
        if Post.dLSResidual[sI] > 0 then
        begin
          Post.dStandardisedRes[sI] := 999;
        end
        else
        begin
          Post.dStandardisedRes[sI] := -999;
        end;
      end
      else
      begin
        Post.dStandardisedRes[sI] := Post.dLSResidual[sI] / Post.dStdDevResidual[sI];
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure Student;

@description
  Compute the Student's T distribution criteria.
*******************************************************************************)
procedure Student;
var
  sNU: Integer;             // Degrees of freedom
  dALPH: DOUBLE;            // 1 - Probability
  dCRT: DOUBLE;             // Critical value
  AA,F,G,X,Y,A,B,C,E,V,LL: DOUBLE;
begin
  dALPH := (1.0 - Post.dConfLevel/100.00);
  sNU := Post.sDegFreedom;
  AA   := dALPH;         // for a one-tailed test
  LL := ln(AA);
  F := 1.3862943611199 - 2.0 * LL;
  G := sqrt(F);
  X := G-(2.515517+0.802853*G+0.010328*F)/(1.0+1.432788*G+F*(0.189169+0.001308*G));
  Y := X*X;
  A := X*(1.0+Y)/4.0;
  B := X*(3.0 + Y*(16.0 + 5.0*Y))/96.0;
  C := X*(-15.0 + Y*(17.0 + Y*(19.0 + 3.0*Y)))/384.0;
  E := X*(-945.0 + Y*(-1920.0 + Y*(1482.0 + Y*(776.0 + 79.0*Y))))/92160.0;
  V := 1.0/sNU;
  dCRT := X + V*(A + V*(B +V*(C + E*V)));

  Post.dTValue := dCRT;
end;

(*******************************************************************************
@procedure TestCyclicError;

@description
  Test the cyclic errors.
*******************************************************************************)
procedure TestCyclicError;
var
  sLoop: Integer;                // Loop Counter
  dTError:  DOUBLE;              // T derived from cyclicError
  dMaxCyclicError: DOUBLE;       // Maximum cyclic error
begin
  post.dTMaxCyclicError := 0.0;
  dMaxCyclicError       := 0.0;
  dTError := 0;
  for sLoop := 2 to 5 do
  begin
    if (abs(post.dParm[sLoop]) > dMaxCyclicError) then
    begin
      dMaxCyclicError := abs(post.dParm[sLoop]);
      dTError := abs(post.dParm[sLoop]) / post.dParmStdDev[sLoop];
    end;
  end;

  //**************************************************************
  // The variance-covariance matrix of the adjusted parameters is
  // obtained by multiplication with the a posteriori variance
  // factor.
  //**************************************************************
  post.dTMaxCyclicError := dTError;

  if ( post.dTMaxCyclicError < post.dTValue) then
  begin
    isSignificant := FALSE;
  end
  else
  begin
    isSignificant := TRUE;
  end;
end;

(*******************************************************************************
@procedure MaxMinDistance( sLineCount: Integer);

@description
  1. Computes the Minimum and Maximum distance.
  2. Computes the Mean temperature.
*******************************************************************************)
procedure MaxMinDistance( sLineCount: Integer);
var
  sLoop: Integer;
  dSumTemp: Double;
begin
  Post.dMaxDistance := 0.000;
  Post.dMinDistance := 9999999.999;
  dSumTemp     := 0.000;

  for sLoop := 0 to sLineCount-1 do
  begin
    Post.dMaxDistance :=
         max (Post.dMaxDistance, line[sLoop].dReducedDistance);
    Post.dMinDistance :=
         min (Post.dMinDistance, line[sLoop].dReducedDistance);
    dSumTemp := dSumTemp+ line[sLoop].dDryTemp;
  end;
  Post.dMeanTemp := dSumTemp / sLineCount;
end;

(*******************************************************************************
@function  BaseEDMPostPrint( sPage: Integer; sTotalPages: Integer;
  strBaseFileName: String; pre: PRE_L): Integer;

@description
  1. Prints the post adjustment statistics of an EDM calibration.
  2. Returns the next page number.
*******************************************************************************)
function  BaseEDMPostPrint(
   sPage: Integer;                        // Page number
   sTotalPages: Integer;                  // Total pages
   strBaseFileName: String;               // Base file name
   pre: PRE_L): Integer;                  // ptr to pre  processing struct
begin
  //****************************************************************/
  // Write calibration parameters, National Standards & statistics */
  //****************************************************************/
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  PrintCalibrationParameters;
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  PrintNationalStandards;
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  PrintPostStatistics;

  //***************************************************************/
  // Write Summary least squares estimates of distance residuals  */
  //***************************************************************/
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  sPage :=  PrintResiduals(sPage,sTotalPages);
  //***************************************************************/
  // Print Histogram of standardised residuals                    */
  //***************************************************************/
  sPage :=  EDMPageHeader(sPage,sTotalPages);
  BaseHistogram;

  Result := sPage;
end;

(*******************************************************************************
@procedure PrintCalibrationParameters;

@description
  Print the calibration parameters;
*******************************************************************************)
procedure PrintCalibrationParameters;
var
  sLoop: Integer;                   // Loop counter
  cSign: array[0..7] of string;     // Sign characters
  strLine: String;
  hasLUM: Boolean;
var
  dConstant, dScale: Double;
begin
  for sLoop := 0 to Post.sParameterCount-1 do
  begin
    if (Post.dParm[sLoop] < 0.000) then
    begin
      cSign[sLoop] := '-';
    end
    else
    begin
      cSign[sLoop] := '+';
    end;
  end;

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'      -------------------------------------------------------------------------------');
  writeln (pfRPTFile,'      |                                                                             |');
  writeln (pfRPTFile,'      |           LEAST SQUARES ESTIMATED CALIBRATION PARAMETERS                    |');
  writeln (pfRPTFile,'      |                                                                             |');
  writeln (pfRPTFile,'      |-----------------------------------------------------------------------------|');
  writeln (pfRPTFile,'      |         Parameter           |   Value               |   Std Dev             |');
  writeln (pfRPTFile,'      |-----------------------------|-----------------------|-----------------------|');

  dConstant := (Post.dParmStdDev[0] * 1000.000) * 2;
  dScale := Post.dParmStdDev[1] * 1000000.000;
  dScale := dScale * 2;

  hasLUM := GetLUM(dConstant, dScale, 'G');

  dConstant := dConstant/2.0;
  dScale := dScale/2.0;

  if GetLumUnitsFromDB='1' then
  begin
    writeln (pfRPTFile,Format('      |     Index                   |  %7.2f mm           |  %7.2f mm           |'
      ,[Post.dParm[0] * 1000.000, dConstant]));
    writeln (pfRPTFile,Format('      |     Scale                   |  %7.2f ppm          |  %7.2f ppm          |'
    ,[Post.dParm[1] * 1000000.000, dScale]));
  end
  else
  begin
    writeln (pfRPTFile,Format('      |     Index                   |  %7.2f mm           |  %7.2f mm           |'
      ,[Post.dParm[0] * 1000.000, dConstant]));
    writeln (pfRPTFile,Format('      |     Scale                   | (%7.2f x 10ˉ³ L) mm | (%7.2f x 10ˉ³ L) mm |'
    ,[Post.dParm[1] * 1000000.000, dScale]));
    writeln(pfRPTFile,'      |                             |   where L = length in metres                  |');
  end;

  for sLoop := 2 to Post.sParameterCount-1 do
  begin
    writeln (pfRPTFile,Format('      | %1d - Cyclic                  |  %7.2f mm     |  %7.2f mm     |'
    ,[sLoop-1, Post.dParm[sLoop] * 1000.000, Post.dParmStdDev[sLoop]*1000.000]));
  end;

  writeln (pfRPTFile,'      |-----------------------------------------------------------------------------|');
  writeln (pfRPTFile,'      |                                                                             |');
  writeln (pfRPTFile,'      |                      FULL INSTRUMENT CORRECTION IN MM                       |');
  writeln (pfRPTFile,'      |                     (TO BE ADDED TO INSTRUMENT READING)                     |');
  writeln (pfRPTFile,'      |                                                                             |');

  if (Post.sParameterCount = 2) then
  begin
    writeln (pfRPTFile,
                     '      |                                                                             |');
    if hasPrismConstantBeenSetInEDM then
    begin
      writeln (pfRPTFile,
              Format('      |      IC = %5.1f %1s %8.4f L                                                |',
         [Post.dParm[0]*1000.000,
         cSign[1],
         abs(Post.dParm[1])*1000.000]));
    end
    else
    begin
      writeln (pfRPTFile,
                Format('      |      IC = %5.1f %1s %8.4f L + Reflector Constant(mm)                        |',
         [Post.dParm[0]*1000.000,
         cSign[1],
         abs(Post.dParm[1])*1000.000]));
    end;
  end;
  if (Post.sParameterCount >= 6) then
  begin
    writeln (pfRPTFile,'      |                                                                             |');
    strLine :=  Format('      | IC = %5.1f %1s %7.4f L ',
       [Post.dParm[0]*1000.000,
       cSign[1],
       abs(Post.dParm[1])*1000.000]);
    strLine := strLine + Format(' %1s %6.2f SIN(36D)  %1s %6.2f COS(36D)  |',
         [cSign[2],
         abs(Post.dParm[2])*1000.000,
         cSign[3],
         abs(Post.dParm[3])*1000.000]);
    writeln(pfRPTFile,strLine);

    writeln(pfRPTFile,
                Format('      |                         %1s %6.2f SIN(72D)  %1s %6.2f COS(72D)              |',
         [cSign[4],
         abs(Post.dParm[4])*1000.000,
         cSign[5],
         abs(Post.dParm[5])*1000.000]));
    if not hasPrismConstantBeenSetInEDM then
    begin
      writeln(pfRPTFile,
                        '     |                         + Reflector Constant(mm)                            |');
    end;
  end;
  if (Post.sParameterCount = 8) then
  begin
    writeln(pfRPTFile,
                Format('      |                         %1s %6.2f SIN(108D) %1s %6.2f COS(108D)             |',
         [cSign[6],
         abs(Post.dParm[6])*1000.000,
         cSign[7],
         abs(Post.dParm[7])*1000.000]));
  end;
  writeln (  pfRPTFile,'      |                                                                             |');
  writeln (  pfRPTFile,'      |                                                                             |');
  if (Post.sParameterCount = 2) then
  begin
    writeln(pfRPTFile,
                       '      |   Where L = distance in metres                                              |');
    if hasPrismConstantBeenSetInEDM then
    begin
      strLine :=
                       '      |  The prism constant has been entered into the instrument                    |';
    end
    else
    begin
      strLine :=
                       '      |  The prism constant has not been entered into the instrument                |';
    end;
    writeln (pfRPTFile,strLine);
  end
  else
  begin
    writeln(pfRPTFile,
                        '      | Where L = distance in metres and angles are in degrees                     |');
    if hasPrismConstantBeenSetInEDM then
    begin
      strLine :=
                        '      |  The prism constant has been entered into the instrument                   |';
    end
    else
    begin
      strLine :=
                        '      |  The prism constant has not been entered into the instrument               |';
    end;
    writeln (pfRPTFile,strLine);
    writeln ( pfRPTFile,'      |                                                                            |');
    writeln ( pfRPTFile,'      |----------------------------------------------------------------------------|');
    writeln ( pfRPTFile,'      |                                                                            |');
    writeln ( pfRPTFile,'      |       t-distribution test on the largest cyclic error                      |');
    writeln ( pfRPTFile,'      |                                                                            |');
    writeln ( pfRPTFile,
                 Format('      |                  %7.2f   <   %7.3f  ?                                      |',
    [Post.dTMaxCyclicError, Post.dTValue]));
    writeln ( pfRPTFile,'      |                                                                            |');

    if isSignificant then
      writeln(pfRPTFile,'      |             CYCLIC CORRECTIONS ARE SIGNIFICANT                             |')
    else
      writeln(pfRPTFile,'      |             CYCLIC CORRECTIONS ARE INSIGNIFICANT                           |');

    writeln ( pfRPTFile,'      |                                                                            |');
  end;
  writeln (pfRPTFile,   '      -------------------------------------------------------------------------------');


  writeln (pfRPTFile,' ');
  strLine := '      The instrument correction has been determined from measurements in';
  writeln (pfRPTFile,strLine);
  if Post.dMaxDistance < 1000 then
    strLine := Format('      the range of %3.0f to %3.0f', [Post.dMinDistance, Post.dMaxDistance])
  else
  begin
    if Post.dMaxDistance < 10000 then
      strLine := Format('      the range of %4.0f to %4.0f', [Post.dMinDistance, Post.dMaxDistance])
    else
      strLine := Format('      the range of %5.0f to %5.0f', [Post.dMinDistance, Post.dMaxDistance]);
  end;
  if (cMetsFlag = 'Y') then
     strLine := strLine +Format(' metres at temperature %3.0f degrees Celsius.',[Post.dMeanTemp])
  else
     strLine := strLine + ' metres.';

  writeln (pfRPTFile,strLine);

  if hasLUM then
  begin
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,
     '      The Least Uncertainty of Measurement as specified by the Accreditation Authority');
    writeln (pfRPTFile,
     '      has been used for the uncertainty of the instrument correction.');
  end
  else
  begin
    writeln (pfRPTFile,' ');
    writeln (pfRPTFile,
     '      The variance-covariance matrix of the adjusted parameters is');
    writeln (pfRPTFile,
     '      multiplied by the a posteriori variance factor.');
  end;
end;


(*******************************************************************************
@procedure PrintNationalStandards;

@description
  Print the national standards;
*******************************************************************************)
procedure PrintNationalStandards;
var
  dDistance: DOUBLE;
  dInstUncertainty: DOUBLE;
  dMinUncertainty: DOUBLE;
  dConvfactor: DOUBLE;                 // Conversion factor to conf level
  dDist: array[0..5] of double;
  dInterval: array[0..5] of double;
  dMaxDistance: Double;
  i,j : Integer;
  dSum : Double;
  dIntervalValue: Double;
  strSentence: String;
  aLines: TStringList;
  strAuthority: String;
  dStdICConstant, dStdICPPM: Double;
  dConstant, dScale: Double;
begin

  dMaxDistance := Round(dBaselineLength/100) * 100;
  dInterval[0] := 50;
  dInterval[1] := 50;
  dInterval[2] := 50;
  dInterval[3] := 50;
  dInterval[4] := 50;
  dInterval[5] := 50;

  j := 5;
  dIntervalValue := 100;
  dSum := 0;
  while dSum < dMaxDistance do
  begin
    dSum := 0;
    for i := 0 to 5 do
    begin
      dSum := dSum + dInterval[i];
    end;
    if dSum < dMaxDistance then
    begin
      if (j = 1) then
      begin
        j := 5;
        dIntervalValue := dIntervalValue + 100;
      end;
      dInterval[j] := dIntervalValue;
      Dec(j);
    end;
  end;

  for i := 0 to 5 do
  begin
    dDist[0] := dInterval[0];
    dDist[1] := dDist[0] + dInterval[1];
    dDist[2] := dDist[1] + dInterval[2];
    dDist[3] := dDist[2] + dInterval[3];
    dDist[4] := dDist[3] + dInterval[4];
    dDist[5] := dDist[4] + dInterval[5];
  end;

  dConvfactor := Post.dAbscissa;

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ----------------------------------------------------------------------------');
  writeln (pfRPTFile,' |                                                                           |');
  writeln (pfRPTFile,' |   UNCERTAINTY OF THE INSTRUMENT CONSTANT AGAINST PRESCRIBED STANDARDS     |');
  writeln (pfRPTFile,' |                                                                           |');
  writeln (pfRPTFile,' |---------------------------------------------------------------------------|');
  writeln (pfRPTFile,' |                                                                           |');
  writeln (pfRPTFile,' | Minimum standard for the uncertainty of calibration of an EDM instrument  |');

  dmBase.rxStandard.Locate('Type','E',[]);
  strSentence := 'is described in terms of '+ dmBase.rxStandard.FieldByName('Description').AsString;
  if Copy(strSentence,length(strSentence),1) <> '.' then
  begin
    strSentence := strSentence+'.';
  end;
  aLines := TStringList.Create;
  LinesFromSentence(strSentence, 70, aLines);
  for I := 0 to aLines.Count-1 do
  begin
    writeln (pfRPTFile,' | '+aLines[I]+'    |');
  end;

  dStdICConstant := dmBase.rxStandard.FieldByName('StandardConstant').AsFloat/1000;
  dStdICPPM := dmBase.rxStandard.FieldByName('StandardScale').AsFloat;

  dConstant := dConvfactor * Post.dParmStdDev[0] * 1000.000;
  dScale := Post.dParmStdDev[1] * 1000000.000;
  dScale := dConvfactor * dScale;

  writeln (pfRPTFile,' |                                                                           |');
  writeln (pfRPTFile,' | All uncertainties are specified at 95% confidence.                        |');
  writeln (pfRPTFile,' |                                                                           |');
  if GetLumUnitsFromDB='1' then
  begin
    writeln (pfRPTFile,Format(' | Minimum Standard''s specifications        : ±(%6.2f mm + %6.2f ppm)      |'
      , [dStdICConstant * 1000.000, dStdICPPM]));
    writeln (pfRPTFile,Format(' | Uncertainty of instrument correction     : ±(%6.2f mm + %6.2f ppm)      |'
      , [dConstant, dScale]));
  end
  else
  begin
    writeln (pfRPTFile,Format(' | Minimum Standard''s specifications      : ±(%6.2f + %6.2f x 10ˉ³ L) mm   |'
      , [dStdICConstant * 1000.000, dStdICPPM]));
    writeln (pfRPTFile,Format(' | Uncertainty of instrument correction   : ±(%6.2f + %6.2f x 10ˉ³ L) mm   |'
      , [dConstant, dScale]));
    writeln(pfRPTFile,' |                                             where L = length in metres    |');
  end;

  writeln (pfRPTFile,' |                                                                           |');
  writeln (pfRPTFile,' |                                                                           |');
  writeln (pfRPTFile,' |                       INSTRUMENT         MINIMUM                          |');
  writeln (pfRPTFile,' |       DISTANCE        UNCERTAINTY        STANDARD    COMPARISON           |');
  writeln (pfRPTFile,' |       (metres)           (mm)              (mm)         TEST              |');
  writeln (pfRPTFile,' |       --------        -----------       ----------  -----------           |');

  for  i := 0 to 5 do
  begin
    dDistance := dDist[i];
    dInstUncertainty := dConstant/1000 + dDistance* dScale/1000000.0;
    dMinUncertainty  := dStdICConstant + dDistance *  dStdICPPM/1000000.0;
    PrintUncertainty (dDistance,dInstUncertainty,dMinUncertainty);
  end;

  writeln (pfRPTFile,' |                                                                           |');

  strSentence := 'The uncertainty of the instrument constant satisfies the '+
                 dmBase.rxStandard.FieldByName('Authority').AsString +
                 ' recommended minimum standard where a ''PASS'' is indicated.';
  LinesFromSentence(strSentence, 70, aLines);
  for I := 0 to aLines.Count-1 do
    writeln (pfRPTFile,' | '+aLines[I]+'    |');

  writeln (pfRPTFile,' |                                                                           |');
  writeln (pfRPTFile,' -----------------------------------------------------------------------------');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');

  strAuthority := dmMain.rxBaselineBaselineAuthority.AsString;
  if isDLI then
  begin
    strAuthority := 'Landgate';
    strSentence := 'The '+strAuthority+' accepts no responsibility for the'+
    ' correctness or otherwise of this report. Independent assesment of the'+
    ' instrument by the '+strAuthority+' is necessary if official certification is required';
  end
  else
  begin
    strSentence := strAuthority+' accepts no responsibility for the'+
    ' correctness or otherwise of this report. Independent assesment of the'+
    ' instrument by '+strAuthority+' is necessary if official certification is required';
  end;

  LinesFromSentence(strSentence, 70, aLines);
  for I := 0 to aLines.Count-1 do
  begin
    writeln (pfRPTFile,' '+aLines[I]);
  end;

  aLines.free;
end;

(*******************************************************************************
@function UncertaintyIC2( dDistance: DOUBLE): Double;

@description
  Computes the uncertainty of the instrument correction.
*******************************************************************************)
function UncertaintyIC2(
      dDistance: DOUBLE): Double;
var
  dInstUncertainty: Double;
  sParCount: Integer;
  pdF: array of Double;
  dTerm1: DOUBLE;
  dTerm2: DOUBLE;
  sLoop1: Integer;
  sLoop2: Integer;
  dQ: array[0..3] of array[0..3] of Double;
  sRow: Integer;
  sCol: Integer;
begin
  dInstUncertainty := 0;
  sParCount := Post.sParameterCount;
  SetLength(pdF, sParCount);

  if (sParCount = 2) then
  begin
     pdF[0] := 1.0;
     pdF[1] := dDistance;
     dInstUncertainty := sqrt(
     (pdF[0] * Abs(Mat.dInv[0][0]) + pdF[1] * Abs(Mat.dInv[1][0])) * pdF[0] +
     (pdF[0] * Abs(Mat.dInv[0][1]) + pdF[1] * Abs(Mat.dInv[1][1])) * pdF[1]);
  end;
  if (sParCount = 6) then
  begin
     pdF[0] := 1.0;
     pdF[1] := dDistance;
     pdF[2] := 1.0;
     pdF[3] := 1.0;
     sCol := 0;
     sRow := 0;

     for sLoop1 := 0 to 5 do
     begin
       if (sLoop1 = 0) or (sLoop1 = 1) or (sLoop1 = 3) or (sLoop1 = 5) then
       begin
         for sLoop2 := 0 to 5 do
         begin
           if (sLoop2 = 0) or (sLoop2 = 1) or (sLoop2 = 3) or (sLoop2 = 5) then
           begin
             dQ[sCol][sRow] :=  Abs(Mat.dInv[sLoop1][sLoop2]);
             Inc(sRow);
           end;
         end;
         sRow := 0;
         Inc(sCol);
       end;
     end;

     dTerm2 := 0.0;
     for sLoop1 := 0 to 3 do
     begin
       dTerm1 := 0.0;
       for sLoop2 := 0 to 3 do
       begin
         dTerm1 := dTerm1 + pdF[sLoop2] * dQ[sLoop2][sLoop1];
       end;
       dTerm2 := dTerm2 + dTerm1 * pdF[sLoop1];
     end;
     dInstUncertainty := sqrt(dTerm2);
  end;
  //******************************************************************/
  // Convert std dev to uncertainty at a specified confidence level) */
  //******************************************************************/
  dInstUncertainty := dInstUncertainty * Post.dTValue;

  Result := dInstUncertainty;
end;

(*******************************************************************************
@function PrintUncertainty( dDistance: DOUBLE; dInstUncertainty: DOUBLE;
   dMinUncertainty: DOUBLE): Boolean;

@description
  Prints the comparison between the computed uncertainties and the minimum uncertainties.
*******************************************************************************)
function PrintUncertainty(
   dDistance:        DOUBLE;           // Distance
   dInstUncertainty: DOUBLE;           // Instrument uncertainty
   dMinUncertainty:  DOUBLE): Boolean; // Minimum uncertainty
var
  fsPass: Boolean;
  szTest: string;
  szRemark: string;
begin
  if ( dInstUncertainty < dMinUncertainty) then
  begin
    szTest := 'PASS';
    fsPass := TRUE;
  end
  else
  begin
    szTest := 'FAIL';
    fsPass := FALSE;
  end;
  szRemark := '            ';
  writeln (pfRPTFile,Format(' |           %4.0f         ±%8.2f         ±%8.2f      %4s  %12s|'
  ,[dDistance, dInstUncertainty * 1000.0,dMinUncertainty * 1000.0, szTest, szRemark]));

  Result := fsPass;
end;

(*******************************************************************************
@procedure PrintPostStatistics;

@description
  Prints the post adjustment statistics.
*******************************************************************************)
procedure PrintPostStatistics;
begin
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'       -------------------------------------------------------------');
  writeln (pfRPTFile,'       |                                                           |');
  writeln (pfRPTFile,'       |                LEAST SQUARES STATISTICS                   |');
  writeln (pfRPTFile,'       |                                                           |');
  writeln (pfRPTFile,'       |-----------------------------------------------------------|');
  writeln (pfRPTFile,Format('       |  Number of observed baselines     |   %6d              |'
   ,[Post.sObservationCount]));
  writeln (pfRPTFile,Format('       |  Number of parameters             |   %6d              |'
   ,[Post.sParameterCount]));
  writeln (pfRPTFile,Format('       |  Confidence level                 |      %6.2f %1s         |'
   ,[Post.dConfLevel,'%']));
  writeln (pfRPTFile,Format('       |  Coverage factor                  |      %6.2f           |'
   ,[dCoverageFactor]));
  writeln (pfRPTFile,Format('       |  Degrees of freedom               |   %6d              |'
   ,[Post.sDegFreedom]));
  writeln (pfRPTFile,Format('       |  Critical t value                 |   %10.3f          |'
   ,[Post.dTValue]));
  writeln (pfRPTFile,Format('       |  Minimum                          |   %10.3f          |'
   ,[Post.dMinimum]));
  writeln (pfRPTFile,Format('       |  A posteriori variance factor     |   %10.3f          |'
    , [Post.dPostVarFactor]));
  writeln (pfRPTFile,'       -------------------------------------------------------------');
  writeln (pfRPTFile,'       |                                                           |');

  if (Post.sDegFreedom < 4 ) then
  begin
    writeln (pfRPTFile,
    '       |  WARNING: No Chi-square test. Degrees of freedom < 4      |');
  end
  else
  begin
    writeln (pfRPTFile,
    '       |        Chi-Square Test on the Variance Factor             |');
    writeln (pfRPTFile,
    '       |                                                           |');
    writeln (pfRPTFile,
    Format('       |         %1.4e  <  1.000   <  %1.4e  ?           |',
      [Post.dChiLow, Post.dChiHigh]));
    writeln (pfRPTFile,
    '       |                                                           |');
    if ( Post.dChiLow  > 1.000) or (Post.dChiHigh < 1.000 ) then
    begin
      writeln (pfRPTFile,
      '       |                    THE TEST FAILS                         |');
    end
    else
    begin
      writeln (pfRPTFile,
      '       |                    THE TEST PASSES                        |');
    end;
  end;
  writeln (pfRPTFile,
    '       |                                                           |');
  writeln (pfRPTFile,
    '       -------------------------------------------------------------');

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,
  '       The variance-covariance matrix of the adjusted parameters is');
   writeln (pfRPTFile,
    '       multiplied by the a posteriori variance factor.');
end;

(*******************************************************************************
@function PrintResiduals( sPage: Integer; sTotalPages: Integer): Integer;

@description
  Prints the residuals. Returns the next page number.
*******************************************************************************)
function PrintResiduals(
   sPage: Integer;                  // Page number
   sTotalPages: Integer): Integer; // Total pages
var
  sLoop: Integer;                   // Loop Counter
  sCount: Integer;                  // Line Counter
  strError : String;
  hasError : Boolean;


begin
  hasError := False;
  sCount := 0;
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');
  writeln(pfRPTFile,
  '                        SUMMARY OF LEAST SQUARES ESTIMATED RESIDUALS');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');
  writeln(pfRPTFile,
  ' PILLAR NO  CERTIFIED OBSERVED  STD DEV ADJUSTED  STD DEV            STANDARD');
  writeln(pfRPTFile,
  ' ---------  DISTANCE  DISTANCE  OBSERV  DISTANCE  RESIDUAL  RESIDUAL RESIDUAL');
  writeln(pfRPTFile,
  ' INST REFL     (m)       (m)      (m)       (m)      (m)       (m)');
  writeln(pfRPTFile,
  ' ---- ----  --------- --------- -------  --------- --------  -------- -------- ');

  for sLoop :=0 to Post.sObservationCount-1 do
  begin
    Inc(sCount);
    if(sCount > 38) then
    begin
      sPage :=  EDMPageHeader(sPage,sTotalPages);

      writeln(pfRPTFile,
      ' ------------------------------------------------------------------------------');
      writeln(pfRPTFile,
      '                        SUMMARY OF LEAST SQUARES ESTIMATED RESIDUALS');
      writeln(pfRPTFile,
      ' ------------------------------------------------------------------------------');
      writeln(pfRPTFile,
      ' PILLAR NO  CERTIFIED OBSERVED  STD DEV ADJUSTED  STD DEV            STANDARD');
      writeln(pfRPTFile,
      ' ---------  DISTANCE  DISTANCE  OBSERV  DISTANCE  RESIDUAL  RESIDUAL RESIDUAL');
      writeln(pfRPTFile,
      ' INST REFL     (m)       (m)      (m)       (m)      (m)       (m)');
      writeln(pfRPTFile,
      ' ---- ----  --------- --------- -------  --------- --------  -------- -------- ');
      sCount := 0;
    end;
    if Abs(Post.dStandardisedRes[sLoop]) > Pre_StdDev.RejectionCriterion then
    begin
      strError := '***';
      hasError := True;
    end
    else
    begin
      strError := '';
    end;
    writeln(pfRPTFile,
    Format(' %-4s %-4s  %9.4f %9.4f %7.4f %9.4f %8.4f %9.4f %7.2f %3s',
     [line[sLoop].strAtPillarNo,
     line[sLoop].strToPillarNo,
     Post.dTrueDistance[sLoop],
     Post.dObservedDistance[sLoop],
     line[sLoop].dAprioriStdDev,
     Post.dAdjustedDistance[sLoop],
     Post.dStdDevResidual[sLoop],
     Post.dLSResidual[sLoop],
     Post.dStandardisedRes[sLoop],
     strError]));
  end;
  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');
  if hasError then
  begin
    writeln(pfRPTFile,'*** indicates a possible outlier ');
  end;
  Result := sPage;
end;

(*******************************************************************************
@procedure BaseHistogram;

@description
  Prints the histogram of the standardised residuals.
*******************************************************************************)
procedure BaseHistogram;
var
  sNumObs: Integer;
  sRecord: Integer;
  sColCount: array[0..17] of integer;
  dColCount: Double;
  dStdResidual: Double;
  sJ: Integer;
  dColConstant: Double;
  sRow: Integer;
  fFlag: Boolean;
  strLine: String;
begin
  sNumObs := Post.sObservationCount;

  for sJ := 0 to 17 do
  begin
     sColCount[sJ] := 0;
  end;

  for sRecord := 0 to sNumObs-1 do
  begin
    dStdResidual := Post.dStandardisedRes[sRecord];

    if (dStdResidual <= -4.0) then
    begin
      Inc(sColCount[0]);
    end;
    if (dStdResidual > -4.0) and (dStdResidual <= -3.5) then
    begin
      Inc(sColCount[1]);
    end;
    if (dStdResidual > -3.5) and (dStdResidual <= -3.0) then
    begin
      Inc(sColCount[2]);
    end;
    if (dStdResidual > -3.0) and (dStdResidual <= -2.5) then
    begin                                                     
      Inc(sColCount[3]);
    end;
    if (dStdResidual > -2.5) and (dStdResidual <= -2.0) then  
    begin
      Inc(sColCount[4]);                                      
    end;                                                      
    if (dStdResidual > -2.0) and (dStdResidual <= -1.5) then  
    begin                                                     
      Inc(sColCount[5]);                                      
    end;                                                      
    if (dStdResidual > -1.5) and (dStdResidual <= -1.0) then
    begin
      Inc(sColCount[6]);                                      
    end;
    if (dStdResidual > -1.0) and (dStdResidual <= -0.5) then  
    begin
      Inc(sColCount[7]);                                      
    end;                                                      
    if (dStdResidual > -0.5) and (dStdResidual <=  0.0) then
    begin                                                     
      Inc(sColCount[8]);                                      
    end;                                                      
    if (dStdResidual >  0.0) and (dStdResidual <=  0.5) then  
    begin                                                     
      Inc(sColCount[9]);                                      
    end;                                                      
    if (dStdResidual >  0.5) and (dStdResidual <=  1.0) then
    begin                                                     
      Inc(sColCount[10]);
    end;                                                      
    if (dStdResidual >  1.0) and (dStdResidual <=  1.5) then  
    begin                                                     
      Inc(sColCount[11]);
    end;                                                      
    if (dStdResidual >  1.5) and (dStdResidual <=  2.0) then  
    begin
      Inc(sColCount[12]);                                     
    end;                                                      
    if (dStdResidual >  2.0) and (dStdResidual <=  2.5) then
    begin                                                     
      Inc(sColCount[13]);
    end;
    if (dStdResidual >  2.5) and (dStdResidual <=  3.0) then  
    begin                                                     
      Inc(sColCount[14]);                                     
    end;                                                      
    if (dStdResidual >  3.0) and (dStdResidual <=  3.5) then  
    begin                                                     
      Inc(sColCount[15]);
    end;
    if (dStdResidual >  3.5) and (dStdResidual <=  4.0) then
    begin
      Inc(sColCount[16]);
    end;
    if (dStdResidual > 4.0) then
    begin
      Inc(sColCount[17]);
    end;
  end;

  dColConstant :=  152.00 / sNumObs;

  for sJ := 0 to 17 do                        
  begin                                       
    dColCount := sColCount[sJ] * dColConstant;
    sColCount[sJ] := Trunc(dColCount);        
  end;                                        

  for sRow := 45 downto 1 do
  begin
    fFlag := FALSE;
    strLine := '';
    if (sRow = 32) then
    begin
      strLine :='  0.4 - ';
      fFlag := TRUE;
    end;
    if (sRow = 28) then
    begin
      strLine := 'R       ';
      fFlag := TRUE;
    end;
    if (sRow = 27) then
    begin
      strLine := 'e       ';
      fFlag := TRUE;
    end;
    if (sRow = 26) then
    begin
      strLine := 'l       ';
      fFlag := TRUE;
    end;
    if (sRow = 25) then
    begin
      strLine := 'a       ';
      fFlag := TRUE;
    end;
    if (sRow = 24) then
    begin
      strLine := 't 0.3 - ';
      fFlag := TRUE;
    end;                                      
    if (sRow = 23) then
    begin
      strLine := 'i       ';                  
      fFlag := TRUE;
    end;                                      
    if (sRow = 22) then                       
    begin                                     
      strLine := 'v       ';                  
      fFlag := TRUE;
    end;                                      
    if (sRow = 21) then                       
    begin                                     
      strLine := 'e       ';                  
      fFlag := TRUE;                          
    end;
    if (sRow = 19) then
    begin                                     
      strLine := 'F       ';
      fFlag := TRUE;                          
    end;                                      
    if (sRow = 18) then                       
    begin
      strLine := 'r       ';
      fFlag := TRUE;                          
    end;                                      
    if (sRow = 17) then
    begin
      strLine := 'e       ';
      fFlag := TRUE;
    end;                                      
    if (sRow = 16) then                       
    begin                                     
      strLine := 'q 0.2 - ';
      fFlag := TRUE;                          
    end;                                      
    if (sRow = 15) then
    begin                                     
      strLine := 'u       ';                  
      fFlag := TRUE;                          
    end;                                      
    if (sRow = 14) then                       
    begin                                     
      strLine := 'e       ';                  
      fFlag := TRUE;                          
    end;
    if (sRow = 13) then                       
    begin                                     
      strLine := 'n       ';
      fFlag := TRUE;
    end;
    if (sRow = 12) then                       
    begin                                     
      strLine := 'c       ';                  
      fFlag := TRUE;
    end;                                      
    if (sRow = 11) then                       
    begin                                     
      strLine := 'y       ';                  
      fFlag := TRUE;
    end;                                      
    if (sRow = 8) then                        
    begin                                     
      strLine := '  0.1 - ';                  
      fFlag := TRUE;
    end;                                      
    if not fFlag then
    begin
      strLine := '        ';
    end;

    //********************************************************
    //  First column
    //********************************************************
    if (sRow = 45) then
    begin
      if (sColCount[0] >= 45) then
      begin
        strLine := strLine + ' ---';
      end;
    end                                                             
    else                                                            
    begin
      if (sColCount[0] = sRow) then                                 
      begin
        strLine := strLine + ' ---';
      end;
      if (sColCount[0] > sRow) then
      begin
        strLine := strLine +'|:::';
      end;
    end;
    if (sColCount[0] < sRow) then
    begin
        strLine := strLine + '    ';
    end;
    //********************************************************
    //  Next columns
    //********************************************************
    for sJ := 1 to 16 do
    begin
      fFlag := FALSE;
      if (sJ = 8) and (sRow = 32) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine, sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 8) and (sRow = 31) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 8) and (sRow = 30) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);
      end;
      if (sJ = 8) and (sRow = 29) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);
      end;
      if (sJ = 9) and (sRow = 32) then
      begin
        fFlag := TRUE;
        if (sColCount[sJ] >= sRow) then
        begin
          strLine := strLine + '**::';
        end
        else
        begin
          strLine := strLine + '**  ';
        end;
      end;
      if (sJ = 9) and (sRow = 31) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 9) and (sRow = 30) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;

      if (sJ = 10) and (sRow = 29) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);
      end;
      if (sJ = 7) and (sRow = 27) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 10) and (sRow = 27) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);
      end;
      if (sJ = 7) and (sRow = 24) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 10) and (sRow = 24) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 7) and (sRow = 22) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);
      end;
      if (sJ = 10) and (sRow = 22) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 7) and (sRow = 19) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);
      end;
      if (sJ = 11) and (sRow = 19) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);
      end;
      if (sJ = 6) and (sRow = 17) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 11) and (sRow = 17) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);
      end;
      if (sJ = 6) and (sRow = 15) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 11) and (sRow = 15) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 6) and (sRow = 12) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);
      end;
      if (sJ = 11) and (sRow = 12) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 6) and (sRow = 10) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);
      end;
      if (sJ = 12) and (sRow = 10) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);
      end;
      if (sJ = 5) and (sRow = 8) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 12) and (sRow = 8) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);
      end;
      if (sJ = 5) and (sRow = 7) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 12) and (sRow = 7) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 5) and (sRow = 5) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);
      end;
      if (sJ = 12) and (sRow = 5) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 5) and (sRow = 4) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);
      end;
      if (sJ = 13) and (sRow = 4) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 1);   
      end;
      if (sJ = 4) and (sRow = 3) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 13) and (sRow = 3) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 2);   
      end;
      if (sJ = 4) and (sRow = 2) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 13) and (sRow = 2) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 3);
      end;
      if (sJ = 3) and (sRow = 1) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 4) and (sRow = 1) then
      begin
        fFlag := TRUE;
        if (sColCount[sJ] >= sRow) then
        begin
          strLine := strLine + '**::';
        end
        else
        begin
         strLine := strLine + '**  ';
        end;
      end;
      if (sJ = 13) and (sRow = 1) then
      begin
        fFlag := TRUE;
        strLine := PrintCurve(strLine,sColCount[sJ], sColCount[sJ-1], sRow, 4);
      end;
      if (sJ = 14) and (sRow = 1) then
      begin
        fFlag := TRUE;
        if (sColCount[sJ] >= sRow) then
        begin
          strLine := strLine + '**::';
        end
        else
        begin
          strLine := strLine + '**  ';
        end;
      end;

      if not fFlag then
      begin
        if (sColCount[sJ] = sRow) then
        begin
          strLine := strLine + ' ---';
        end;
        if (sColCount[sJ] > sRow) then
        begin
          if (sRow = 45) then
          begin
            strLine := strLine + ' ---';
          end
          else                                                       
          begin                                                      
            strLine := strLine + '|:::';                             
          end;                                                       
        end;                                                         
        if (sColCount[sJ] < sRow) then
        begin                                                        
          if (sColCount[sJ-1] > sRow) then
          begin                                                      
            if (sRow = 45) then
            begin                                                    
              strLine := strLine + '    ';
            end
            else                                                     
            begin
              strLine := strLine + '|   ';                           
            end;                                                     
          end
          else
          begin
            strLine := strLine + '    ';
          end;
        end;
      end;
    end;
    //*******************************************************
    //   Print last column
    //*******************************************************
    if (sColCount[17] > sRow) then
    begin
      strLine := strLine +'|:::|';
    end;
    if (sColCount[17] = sRow) and (sRow > 0) then
    begin
     strLine := strLine +' --- ';
    end;
    writeln (pfRPTFile,strLine);
  end;


  //*******************************************************
  //   Print bottom header
  //*******************************************************
  strLine := '        ';
  for sJ := 0 to 17 do
  begin
    strLine := strLine + '+---';
  end;
  strLine := strLine + '+';
  writeln(pfRPTFile, strLine);

  strLine :='     ';
  for sJ := -4 to 4 do
  begin
    strLine := strLine + Format('      %2d',[sJ]);
  end;
  writeln(pfRPTFile, strLine);
  writeln(pfRPTFile,'                           Histogram of standardised residuals');
end;

(*******************************************************************************
@function PrintCurve( strLine: String; sCurrentCol: Integer;
   sPrevCol: Integer;  sRow: Integer; sPlace: Integer): String;

@description
  Prints the curve of normal distribution.
*******************************************************************************)
function PrintCurve (
   strLine: String;
   sCurrentCol: Integer;               // Current column value
   sPrevCol: Integer;                  // Previous column value
   sRow: Integer;                      // Current row
   sPlace: Integer): String;
begin
  if (sPlace = 1) then
  begin
    if (sCurrentCol > sRow) then
    begin
      strLine := strLine + '*:::';
    end;
    if (sCurrentCol = sRow) then
    begin
      strLine := strLine + '*---';
    end;
    if (sCurrentCol < sRow) then
    begin
      strLine := strLine + '*   ';
    end;
  end;

  if (sPlace = 2) then
  begin
    if (sCurrentCol > sRow) then
    begin
      strLine := strLine + '|*::';
    end;
    if (sCurrentCol = sRow) then
    begin
      if (sPrevCol > sRow) then
      begin
        strLine := strLine + '|*--';
      end
      else
      begin
        strLine := strLine + ' *--';
      end;
    end;
    if (sCurrentCol < sRow) then
    begin
      if (sPrevCol > sRow) then
      begin
        strLine := strLine + '|*  ';
      end
      else
      begin
        strLine := strLine + ' *  ';
      end;
    end;
  end;
  if (sPlace = 3) then
  begin
    if (sCurrentCol > sRow) then
    begin
      strLine := strLine + '|:*:';
    end;
    if (sCurrentCol = sRow) then
    begin
      if (sPrevCol > sRow) then
      begin
        strLine := strLine + '|-*-';
      end
      else
      begin
        strLine := strLine + ' -*-';
      end;
    end;
    if (sCurrentCol < sRow) then
    begin
      if (sPrevCol >= sRow) then
      begin
        strLine := strLine + '| * ';
      end
      else
      begin
        strLine := strLine + '  * ';
      end;
    end;
  end;
  if (sPlace = 4) then
  begin
    if (sCurrentCol > sRow) then
    begin
      strLine := strLine + '|::*';
    end;
    if (sCurrentCol = sRow) then
    begin
      if (sPrevCol > sRow) then
      begin
        strLine := strLine + '|--*';
      end
      else
      begin
        strLine := strLine + ' --*';
      end;
    end;
    if (sCurrentCol < sRow) then
    begin
      if (sPrevCol >= sRow) then
      begin
        strLine := strLine + '|  *';
      end
      else
      begin
        strLine := strLine + '   *';
      end;
    end;
  end;
  Result := strLine;
end;

(*******************************************************************************
@function BaselineCalibration( strOutputFileName: String): Boolean;

@description
  Calibration of a baseline.
*******************************************************************************)
function BaselineCalibration(
    strOutputFileName: String): Boolean;  // output file name string
var
  sLineCount:       Integer;            // Number of lines
  sPillarCount:     Integer;            // Number of pillars
  dUnitLength:      DOUBLE;             // Unit length in metres
  pre:              PRE_L;              // ptr pre-adjustment statistics
  sPage:            Integer;            // Page number
  sMaxUnknowns:     Integer;            // Maximum number of unknowns
  sDistCount: Integer;
  sTotalPages: Integer;
  sEllipsID: Integer;
  dARadius: Double;
begin
  LogDebugMessage('BaselineCalibration('+strOutputFileName+')');
  frmProgress.pbarProgress.Position := 70;
  Application.ProcessMessages;
  try
    sPage := 1;
    post.cMethod      := dmMain.rxjobJobType.AsString;
    sLineCount        := dmMain.rxJMeasure.RecordCount;
    sPillarCount      := dmMain.rxPillar.RecordCount;
    sMaxUnknowns      := sPillarCount;
    xCoord.sXCount    := sPillarCount-1;
    LogDebugMessage('xCoord.sXCount = '+IntToStr(sPillarCount-1));

    //***************************************************
    // Allocate observation and normal equation matrices
    //***************************************************
    InitialiseMat(sMaxUnknowns);

    InitialiseOMat(sLineCount, sMaxUnknowns);
   //***************************************
   // Allocate cartesian coordinate arrays
   //***************************************
    SetLength(car, dmMain.rxPillar.RecordCount);

   //***************************************
   // Allocate line arrays
   //***************************************
    SetLength(line, dmMain.rxJMeasure.RecordCount);

   //***************************************
   // Allocate X Coordinate arrays
   //***************************************
    SetLength(xCoord.dXCor,xCoord.sXCount);
    LogDebugMessage('SetLength(xCoord.dXCor, '+IntToStr(xCoord.sXCount)+')');
    SetLength(xCoord.dXCoord,xCoord.sXCount);
    LogDebugMessage('SetLength(xCoord.dXCoord, '+IntToStr(xCoord.sXCount)+')');
   //***************************************
   // Allocate post-adjustment arrays
   //***************************************
    SetLength(post.dParm,sMaxUnknowns);
    SetLength(post.dParmStdDev,sMaxUnknowns);
    SetLength(post.dTrueDistance, sLineCount);
    SetLength(post.dObservedDistance, sLineCount);
    SetLength(post.dAdjustedDistance, sLineCount);
    SetLength(post.dLSCorrection, sLineCount);
    SetLength(post.dLSResidual, sLineCount);
    SetLength(post.dStdDevL, sLineCount);
    SetLength(post.dStdDevResidual, sLineCount);
    SetLength(post.dStdDevObservation, sLineCount);
    SetLength(post.dStandardisedRes, sLineCount);
    post.dConfLevel := dmMain.rxBaselineBaseLineConfLevel.AsFloat;
    pre.dConfLevel  := dmMain.rxBaselineBaseLineConfLevel.AsFloat;
    frmProgress.pbarProgress.Position := 75;

    //**********************************************************************
    // Compute  measured pillar line information
    //**********************************************************************
    LineInformation;

    //**********************************************************************
    // Compute  Initial X Coordinates of pillars
    //**********************************************************************
    InitialiseXCoord;

    //**********************************************************************
    // Compute  atmospheric corrections
    //**********************************************************************
    dUnitLength            := dmMain.rxAtInstrumentModelModelUnitLength.AsFloat;
    pre.dUnitLength        := dUnitLength;
    pre.dModFreq           := dmMain.rxAtInstrumentModelModelModFreq.AsFloat;
    pre.dCarrierWaveLength := dmMain.rxAtInstrumentModelModelCarrierWaveLength.AsFloat;
    pre.strThermometer1 := dmMain.rxjobThermometer1.AsString;
    pre.strThermometer2 := dmMain.rxjobThermometer2.AsString;
    pre.strBarometer1 := dmMain.rxjobBarometer1.AsString;
    pre.strBarometer2 := dmMain.rxjobBarometer2.AsString;
    pre.strThermometer1Corr := dmMain.rxjobThermometerCorr1.AsFloat;
    pre.strThermometer2Corr := dmMain.rxjobThermometerCorr2.AsFloat;
    pre.strBarometer1Corr   := dmMain.rxjobBarometerCorr1.AsFloat;
    pre.strBarometer2Corr   := dmMain.rxjobBarometerCorr2.AsFloat;

    AtmosphericCorrection (pre);   // Pre adjustment statistics

    //**********************************************************************
    // Compute  offset corrections
    //**********************************************************************
    OffsetCorrection (sLineCount);

    //**********************************************************************
    // Compute  slope corrections
    //**********************************************************************
    sEllipsID := dmMain.rxBaselineEllipsID.AsInteger;
    dARadius := GetEllipsARadius(sEllipsID);
    SlopeCorrection ( dmMain.rxBaselineBaseLegalHeight.AsFloat, dARadius, sLineCount);

    //**********************************************************************
    // Compute  reduced distance (corrected for slope and atmospherics)
    //**********************************************************************
    ReduceDistance  ( sLineCount);

    frmProgress.pbarProgress.Position := 80;
    //**********************************************************************
    // NEW
    //**********************************************************************
    ComputeAprioriStdDevs('Baseline', sLineCount);

    //**********************************************************************
    // Compute  a priori standard deviations
    // standard deviations (IC Constant + Scale) from sts dev of single obs
    //**********************************************************************
    pre.dStdDevConst  :=  pre_StdDev.ObsDistanceConstant;
    pre.dStdDevPPM    :=  pre_StdDev.ObsDistanceScale;
    post.dStdDevConst :=  pre_StdDev.ObsDistanceConstant;
    post.dStdDevPPM   :=  pre_StdDev.ObsDistanceScale;

    //**********************************************************************
    // standard deviations (Include std dev of centring and Mets )
    //**********************************************************************
    sTotalPages :=  CountReportPages;
    frmJob.sTotalPages := sTotalPages;

    //**********************************************************************
    // Print pre-least squares information
    //**********************************************************************
    sPage := BaseEDMPrePrint(
                  sPage,                   // page number
                  sTotalpages,             // Total number of pages
                  strOutputFileName,       // Base file name
                  pre);                    // pre-adjustment struct
    frmProgress.pbarProgress.Position := 90;

    //**********************************************************************
    // Least squares solution
    //**********************************************************************
    post.sParameterCount  := sPillarCount;
    Result := LeastSquaresRoutine2 (
                sPage,                   // Page number
                sTotalPages,             // Total pages
                sLineCount,              // Number of lines
                dUnitLength,             // EDM Unit length
                strOutputFileName,       // Output File name
                pre);                    // Pre-processing struct
    frmProgress.pbarProgress.Position := 100;

    if Result then
    begin
      sDistCount  := dmBase.rxFilteredDistance.RecordCount;
      UpdateCertifiedDistanceRXTable(sDistCount);
    end;
  except
    Result := False;
  end;
end;

(*******************************************************************************
@function LeastSquaresRoutine2( var sPage: Integer; sTotalPages: Integer;
    sLineCount: Integer; dUnitLength: DOUBLE; strBaseFileName: string; pre: PRE_L): Boolean;

@description
  Least squares adjustment of the baseline distances.
*******************************************************************************)
function  LeastSquaresRoutine2 (
    var sPage:          Integer;          // Page number
    sTotalPages:        Integer;          // Total pages
    sLineCount:         Integer;          // Number of lines
    dUnitLength:        DOUBLE;           // EDM Unit length
    strBaseFileName:    string;           // Base file name
    pre:                PRE_L): Boolean;  // Pre-processing struct
var
  strOutputFileName: String;              // Output filename string
  sPillarCount: Integer;                  // Number of pillars
begin
  try
    sPillarCount := dmMain.rxPillar.RecordCount;
    post.sParameterCount := sPillarCount;

    BaseLeastSquareSolution2 (sLineCount, dUnitLength);
    frmProgress.pbarProgress.Position := 91;

    //**********************************************************************
    // Least squares estimates of distances (superimposed)
    //**********************************************************************
    AdjustedDistances2 (xCoord.dConstant);
    frmProgress.pbarProgress.Position := 92;

    //***********************************
    // Std Dev of residuals
    //***********************************
    StdDevResiduals;
    frmProgress.pbarProgress.Position := 93;

    //**********************************************************************
    // A posteriori Variance Factor & Minimum
    //**********************************************************************
    LSVarianceFactor;
    frmProgress.pbarProgress.Position := 94;

    //**********************************************************************
    // Chi square test on the variance factor
    //**********************************************************************
    Basechitest;

    //**********************************************************************
    // Multiple variance-covariance matrix of the adjusted parameters
    // by a posteriori variance factor
    //**********************************************************************
    //  printf(' Multiply variance-covariance matrix of the adjusted ');
    //  printf(' parameters by the a posteriori variance factor.');
    //**********************************************************************
    VarianceMatrixByVF(Post.dPostVarFactor, Post.sParameterCount);
    {
    if dmBase.rxDefault.Locate('Description','VarianceFactorControl',[]) then
    begin
      if dmBase.rxDefault.FieldByName('Default').AsFloat = 1 then
      begin
        VarianceMatrixByVF(Post.dPostVarFactor, Post.sParameterCount);
      end
    end;
    }
    
    //************************************************************
    // Std Dev of residuals
    //************************************************************
    StdDevResiduals;
    frmProgress.pbarProgress.Position := 95;

    //**********************************************************************
    // A standardised residuals
    //**********************************************************************
    LSStandardisedResidual;

    //**********************************************************************
    // Compute student t critical value
    //**********************************************************************
    Student;
    frmProgress.pbarProgress.Position := 96;

    //**********************************************
    // Print to Output File
    //**********************************************
    strOutputFileName := strBaseFileName + '.B08';
    AssignFile(pfRPTFile, strOutputFileName);
    Rewrite(pfRPTFile);
    try
      Result := BaseEDMPostPrint2(
                sPage,                // page number
                sTotalPages,          // Total pages
                strOutputFileName,    // Output File name
                pre);                  // Pre-adjustment information
    except
      Result := False;
    end;
    frmProgress.pbarProgress.Position := 100;
    CloseFile(pfRPTFile);
  except
    Result := False;
  end;
end;

(*******************************************************************************
@procedure InitialiseXCoord;

@description
  Computes the legal distances from the first pillar to all other pillars.
*******************************************************************************)
procedure InitialiseXCoord;
var
 sCount: Integer;
 dSum: Double;
begin
  LogDebugMessage('InitialiseXCoord');

  with dmbase.rxFilteredDistance do
  begin
    First;
    sCount := 0;
    dSum := 0;
    while not EOF do
    begin
      LogDebugMessage('dSum := '+FloatToStr(dSum) + ' + ' + FieldByName('DistLegalDistance').AsString);
      dSum := dSum + FieldByName('DistLegalDistance').AsFloat;
      xCoord.dXCoord[sCount] := dSum;
      LogDebugMessage('xCoord.dXCoord['+IntToStr(sCount)+'] := '+FloatToStr(dSum));
      xCoord.dXCor[sCount] := 0.0;
      LogDebugMessage('xCoord.dXCor['+IntToStr(sCount)+'] := 0.0');
      Inc(sCount);
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure BaseLeastSquareSolution2 ( sLineCount: Integer; dUnitLength:  DOUBLE)

@description
  Least squares solution of the baseline calibration.
*******************************************************************************)
procedure BaseLeastSquareSolution2 (
   sLineCount: Integer;                // Number of lines
   dUnitLength:  DOUBLE);              // Unit lenght in metres
var
   x: Integer;                     // loop counter
   sParCount: Integer;                 // Total number of parameters
   sFrom, sTo: Integer;
begin
  LogDebugMessage('BaseLeastSquareSolution2('+IntToStr(sLineCount)+', '+
   FloatToStr(dUnitLength)+')');
  sParCount := Post.sParameterCount;  // Total number of parameters

  //***************************************************
  // Form observation equations
  //***************************************************
  BaseFormObservationEquations2 (sLineCount,dUnitLength);

  //***************************************************
  // Form normal equations
  //***************************************************
   BaseFormNormalEquations (sLineCount,sParCount);

  //***********************************
  // Solve equation for unknowns 'X'
  //***********************************
   Matrix (sParCount);

  //***********************************************
  // New approximated coordinates & EDM constant
  //***********************************************
  for x :=0 to sParCount-1 do
  begin
     Post.dParm[x] := Mat.dX[x];
     Post.dParmStdDev[x] := Mat.dInv[x][x];
  end;

  LogDebugMessage('for x :=0 to '+IntToStr(sParCount-2)+' do');
  for x :=0 to sParCount-2 do
  begin
    xCoord.dXCor[x]   := post.dParm[x];
    LogDebugMessage('xCoord.dXCor['+IntToStr(x)+'] := post.dParm['+IntToStr(x)+
      '] ('+FloatToStr(post.dParm[x])+')');

    LogDebugMessage('xCoord.dXCoord['+IntToStr(x)+'] := '+
      FloatToStr(xCoord.dXCoord[x])+' + '+ FloatToStr(xCoord.dXCor[x])+' = '+
      FloatToStr(xCoord.dXCor[x]+xCoord.dXCoord[x]));
    xCoord.dXCoord[x] := xCoord.dXCoord[x] + xCoord.dXCor[x];
  end;

  xCoord.dConstant := post.dParm[sParCount-1];
  LogDebugMessage('xCoord.dConstant := '+FloatToStr(post.dParm[sParCount-1]));

  //************************************************/
  // New approximated 'TRUE' distances & residuals */
  //************************************************/
  for x := 0 to sLineCount-1 do
  begin
    sFrom := line[x].sAtPillarIndex; // Actually they are Pillar ID's
    sTo   := line[x].sToPillarIndex;
    sFrom := PillarIndex(sFrom);
    sTo := PillarIndex(sTo);
    if (sFrom = 0) then
      line[x].dTrueDistance := xCoord.dXCoord[sTo-1];

    if (sTo = 0) then
      line[x].dTrueDistance := xCoord.dXCoord[sFrom-1];

    if (sFrom <> 0) and ( sTo <> 0) then
      line[x].dTrueDistance := Abs(xCoord.dXCoord[sTo-1]-xCoord.dXCoord[sFrom-1]);

    line[x].dResidual := line[x].dTrueDistance - line[x].dReducedDistance;
  end;

  Post.sDegFreedom := sLineCount - Post.sParameterCount;
  Post.sObservationCount := sLineCount;
  xCoord.dConstant := -xCoord.dConstant;
  LogDebugMessage('xCoord.dConstant := '+FloatToStr(-xCoord.dConstant));
end;

(*******************************************************************************
@procedure AdjustedDistances2 (dConstant: Double);

@description
  Adjusts the baseline distances and the residuals.
*******************************************************************************)
procedure AdjustedDistances2 (dConstant: Double);       // Constant Error of prescr EDM
var
  sLoop: Integer;
begin
  for sLoop := 0  to Post.sObservationCount-1 do
  begin
    Post.dTrueDistance[sLoop]      := Line[sLoop].dTrueDistance;
    Post.dObservedDistance[sLoop]  := Line[sLoop].dReducedDistance;
    Post.dStdDevObservation[sLoop] := Line[sLoop].dAprioriStdDev;
    Post.dLSCorrection[sLoop]      := dConstant;
    Post.dAdjustedDistance[sLoop]  := Post.dObservedDistance[sLoop] +
                                    dConstant;
    Post.dLSResidual[sLoop]        := Post.dTrueDistance[sLoop] -
                                      Post.dAdjustedDistance[sLoop];
  end;
end;

(*******************************************************************************
@function  BaseEDMPostPrint2( var sPage: Integer; sTotalPages: Integer;
   strBaseFileName: String; pre: PRE_L): Boolean;

@description
  Prints the post adjustment analysis report.
*******************************************************************************)
function  BaseEDMPostPrint2(
   var sPage: Integer;                    // Page number
   sTotalPages: Integer;                  // Total pages
   strBaseFileName: String;               // Base file name
   pre: PRE_L): Boolean;                  // ptr to pre  processing struct
var
  sDistCount: Integer;             // Number of legal distances
begin
  Result := True;
  try
    sDistCount  := dmBase.rxFilteredDistance.RecordCount;

    //***************************************************************
    // Write new baseline distances
    //***************************************************************
     sPage :=  EDMPageHeader(sPage,sTotalPages);
     PrintLSParameters( sDistCount);

     sPage :=  EDMPageHeader(sPage,sTotalPages);
     PrintPostStatistics2;

    //**************************************************************
    // Write Summary least squares estimates of distance residuals
    //**************************************************************
     sPage :=  EDMPageHeader(sPage,sTotalPages);
     sPage :=  PrintResiduals(sPage,sTotalPages);

    //**************************************************************
    // Print Histogram of standardised residuals
    //**************************************************************
     sPage :=  EDMPageHeader(sPage,sTotalPages);
     BaseHistogram;

    //**************************************************************
    // Print Accreditation and signatures
    //**************************************************************
     sPage :=  EDMPageHeader(sPage,sTotalPages);
     PrintAccreditation;
  except
    Result := False;
  end;
end;

(*******************************************************************************
@procedure BaseFormObservationEquations2( sLineCount: Integer; dUnitLength: DOUBLE);

@description
  Forms the observation equations for a baseline calibration.
*******************************************************************************)
procedure BaseFormObservationEquations2 (
    sLineCount: Integer;                // Number of lines
    dUnitLength: DOUBLE);               // Unit lenght in metres
var
  x,
  y:   Integer;                     // Loop counter
  dStdDev: DOUBLE;                      // Standard deviation
  sFrom: Integer;
  sTo: Integer;
  sPillarCount: Integer;
begin
  LogDebugMessage('BaseFormObservationEquations2('+IntToStr(sLineCount)+', '+FloatToStr(dUnitLength));
  sPillarCount := dmMain.rxPillar.RecordCount;
  for x := 0 to sLineCount-1 do
  begin
    sFrom := line[x].sAtPillarIndex;
    sTo := line[x].sToPillarIndex;
    sFrom := PillarIndex(sFrom);
    sTo := PillarIndex(sTo);
    for y := 1 to sPillarCount-1 do
    begin
      if (sFrom = y ) then
      begin
        if (sFrom < sTo) then
        begin
          omat.dB[x][y-1] := 1.000;
          LogDebugMessage('omat.dB['+IntToStr(x)+']['+IntToStr(y-1)+'] := 1.000');
        end
        else
        begin
          omat.dB[x][y-1] := -1.000;
          LogDebugMessage('omat.dB['+IntToStr(x)+']['+IntToStr(y-1)+'] := -1.000');
        end;
      end;
      if (sTo = y ) then
      begin
        if (sTo < sFrom) then
        begin
          omat.dB[x][y-1] := 1.000;
          LogDebugMessage('omat.dB['+IntToStr(x)+']['+IntToStr(y-1)+'] := 1.000');
        end
        else
        begin
          omat.dB[x][y-1] := -1.000;
          LogDebugMessage('omat.dB['+IntToStr(x)+']['+IntToStr(y-1)+'] := -1.000');
        end;
      end;
      if (sTo <> y) and (sFrom <> y) then
      begin
        omat.dB[x][y-1] := 0.000;
        LogDebugMessage('omat.dB['+IntToStr(x)+']['+IntToStr(y-1)+'] := 0.000');
      end;
    end;
    omat.dB[x][sPillarCount-1] := -1.000;
    LogDebugMessage('omat.dB['+IntToStr(x)+']['+IntToStr(sPillarCount-1)+'] := -1.000');
    omat.dW[x]  := line[x].dResidual;
    LogDebugMessage('omat.dW['+IntToStr(x)+'] := '+FloatToStr(line[x].dResidual));
    dStdDev         := line[x].dAprioriStdDev;
    LogDebugMessage('dStdDev := line['+IntToStr(x)+'].dAprioriStdDev ['+FloatToStr(dStdDev)+']');
    omat.dP[x]  := 1.00 / ( dStdDev * dStdDev);
    LogDebugMessage('omat.dP['+IntToStr(x)+'] := 1.00 / ( dStdDev * dStdDev) = '+FloatToStr(omat.dP[x]));
  end;
end;

(*******************************************************************************
@procedure PrintLSParameters( sDistCount: Integer);

@description
  prints the least squares estimated baseline distances and their uncertainties
*******************************************************************************)
procedure  PrintLSParameters(
    sDistCount: Integer);              // Number of lines
var
 i,
 j:             Integer;              // Loop Counter
 dCorrection:       Double;             // Correction
 dStdDev:           Double;             // dStdDev
 dUncertainty:      Double;             // Uncertainty at 95%
 dInitialDistance: Double;

 dConstant:         Double;               // Constant part of EDM std dev
 dScale:            Double;               // Scale PPM  of EDM std dev
 dX, dY, dXY, dX2:  Double;               // Terms in equations
 dSumX, dSumY:      Double;               // Terms in equations
 dSumXY, dSumX2:    Double;               // Terms in equations
 sPillarID: Integer;
 strFromPillarNo, strToPillarNo: String;
 hasLUM: Boolean;
 dCalibUncertainty: Double;
begin
  dSumX  := 0.000;
  dSumY  := 0.000;
  dSumXY := 0.000;
  dSumX2 := 0.000;

  writeln(pfRPTFile,
  ' --------------------------------------------------------------------');
  writeln(pfRPTFile,
  '           LEAST SQUARES ESTIMATED CERTIFIED BASELINE DISTANCES');
  writeln(pfRPTFile,
  ' --------------------------------------------------------------------');
  writeln(pfRPTFile,
  ' PILLAR NUMBERS    INITIAL                 ADJUSTED');
  writeln(pfRPTFile,
  ' --------------    DISTANCE   CORRECTION   DISTANCE      UNCERTAINTY');
  writeln(pfRPTFile,
  ' FROM     TO          (m)         (m)         (m)            (m)');
  writeln(pfRPTFile,
  ' -----   -----     ---------  -----------  ---------     -----------');

  LogDebugMessage('xCoord records Contents (initialised)');
  LogDebugMessage('-------------------------------------');
  LogDebugMessage('XCoord.sXCount = '+IntToStr(XCoord.sXCount));
  LogDebugMessage('XCoord.dConstant = '+FloatToStr(XCoord.dConstant));
  for i := Low(XCoord.dXCor) to High(XCoord.dXCor) do
    LogDebugMessage('XCoord.dXCor['+IntToStr(i)+'] = '+FloatToStr(XCoord.dXCor[i]));

  for i := Low(XCoord.dXCoord) to High(XCoord.dXCoord) do
    LogDebugMessage('XCoord.dXCoord['+IntToStr(i)+'] = '+FloatToStr(XCoord.dXCoord[i]));

  LogDebugMessage('mat records Contents (initialised)');
  LogDebugMessage('----------------------------------');
  for I := Low(mat.dA) to High(mat.dA) do
    for J := Low(mat.dA[i]) to High(mat.dA[i]) do
      LogDebugMessage('mat.dA['+IntToStr(i)+']['+IntToStr(j)+'] = '+
        FloatToStr(mat.dA[i][j]));

  for I := Low(mat.dB) to High(mat.dB) do
    LogDebugMessage('mat.dB['+IntToStr(i)+'] = '+FloatToStr(mat.dB[i]));

  for I := Low(mat.dX) to High(mat.dX) do
    LogDebugMessage('mat.dX['+IntToStr(i)+'] = '+FloatToStr(mat.dX[i]));

  for I := Low(mat.dInv) to High(mat.dInv) do
    for J := Low(mat.dInv[i]) to High(mat.dInv[i]) do
      LogDebugMessage('mat.dInv['+IntToStr(i)+']['+IntToStr(j)+'] = '+
        FloatToStr(mat.dInv[i][j]));

  LogDebugMessage('OMat records Contents (initialised)');
  LogDebugMessage('-----------------------------------');
  for I := Low(OMat.dB) to High(OMat.dB) do
    for J := Low(OMat.dB[i]) to High(OMat.dB[i]) do
      LogDebugMessage('OMat.dB['+IntToStr(i)+']['+IntToStr(j)+'] = '+
        FloatToStr(OMat.dB[i][j]));

  for I := Low(OMat.dP) to High(OMat.dP) do
    LogDebugMessage('OMat.dP['+IntToStr(i)+'] = '+FloatToStr(OMat.dP[i]));

  for I := Low(OMat.dW) to High(OMat.dW) do
    LogDebugMessage('OMat.dW['+IntToStr(i)+'] = '+FloatToStr(OMat.dW[i]));

  for I := Low(OMat.dBP) to High(OMat.dBP) do
    for J := Low(OMat.dBP[i]) to High(OMat.dBP[i]) do
      LogDebugMessage('OMat.dBP['+IntToStr(i)+']['+IntToStr(j)+'] = '+
        FloatToStr(OMat.dBP[i][j]));

  LogDebugMessage('');
  LogDebugMessage('---------------------------------------');
  LogDebugMessage('Print Least Square Parameters('+IntToStr(sDistCount));
  dInitialDistance := 0.0;
  LogDebugMessage('dInitialDistance := 0.0');
  dmBase.rxFilteredDistance.First;
  dmBase.rxBaselineReport.EmptyTable;

  LogDebugMessage('for i := 0 to '+IntToStr(sDistCount-1)+' do');
  for i := 0 to sDistCount-1 do
  begin
    LogDebugMessage('dInitialDistance := '+FloatToStr(dInitialDistance)+' + '+
      dmBase.rxFilteredDistance.FieldByName('DistLegalDistance').AsString+' = '+
      FloatToStr(dInitialDistance +
        dmBase.rxFilteredDistance.FieldByName('DistLegalDistance').AsFloat));

    dInitialDistance := dInitialDistance +dmBase.rxFilteredDistance.FieldByName('DistLegalDistance').AsFloat;
    dCorrection := xCoord.dXCoord[i] - dInitialDistance;
    LogDebugMessage('dCorrection := xCoord.dXCoord['+IntToStr(i)+'] ('+
      FloatToStr(xCoord.dXCoord[i])+') - dInitialDistance ('+
      FloatToStr(dInitialDistance)+') = '+FloatToStr(dCorrection));

    dStdDev := sqrt ( Mat.dInv[i][i]);
    LogDebugMessage('dStdDev := sqrt ( Mat.dInv['+IntToStr(i)+']['+IntToStr(i)+
      ']) = '+FloatToStr(dStdDev));
    //**************************************************
    //  Uncertainty at 95 % (Normal Density function)
    //**************************************************
    // dUncertainty := 1.96 * dStdDev;
     dUncertainty := 2.0 * dStdDev;
    LogDebugMessage('dUncertainty := 2.0 * dStdDev = '+FloatToStr(dUncertainty));
    //**************************************************
    //  Add Calibration uncertainties
    //**************************************************
    dCalibUncertainty := AddCalibrationUncertainties(dUncertainty, xCoord.dXCoord[i]);
    LogDebugMessage('dCalibUncertainty = '+FloatToStr(dCalibUncertainty));
    //**************************************************
    //  Regression line computation
    //**************************************************
    dX  := xCoord.dXCoord[i];
//    dY  := dUncertainty;
    dY  := dCalibUncertainty;
    dX2 := dX*dX;
    dXY := dX*dY;
    dSumX  := dSumX + dX;
    dSumY  := dSumY + dY;
    dSumXY := dSumXY + dXY;
    dSumX2 := dSumX2 + dX2;

    //**************************************************
    //  Print adjusted pillar distances & uncertainties
    //**************************************************
    sPillarID := dmBase.rxFilteredDistance.FieldByName('PillarFromID').AsInteger;
    dmBase.rxPillar.Locate('PillarID',IntToStr(sPillarID),[]);
    if (i = 0) then
      strFromPillarNo := dmBase.rxPillar.FieldByName('PillarNo').AsString;

    sPillarID := dmBase.rxFilteredDistance.FieldByName('PillarToID').AsInteger;
    dmBase.rxPillar.Locate('PillarID',IntToStr(sPillarID),[]);
    strToPillarNo := dmBase.rxPillar.FieldByName('PillarNo').AsString;

    writeln(pfRPTFile,Format(' %5s   %5s     %9.4f  %9.4f    %9.4f     ±%10.5f',
      [strFromPillarNo, strToPillarNo, dInitialDistance,
      dCorrection, xCoord.dXCoord[i],dCalibUncertainty]));
    LogDebugMessage('');
    LogDebugMessage('-------Least squares estimated certified baseline distances-------');
    LogDebugMessage('Pillar From, Pillar To, Initial Distance (m), Correction (m), Adjusted Distance (m), Uncertainty (m)');
    LogDebugMessage(Format(' %5s   %5s     %9.4f  %9.4f    %9.4f     ±%10.5f',
      [strFromPillarNo, strToPillarNo, dInitialDistance, dCorrection,
      xCoord.dXCoord[i],dCalibUncertainty]));
    LogDebugMessage('------------------------------------------------------------------');
    LogDebugMessage('');
          
    dmBase.rxFilteredDistance.Next;

    with dmBase.rxBaselineReport do
    begin
      Append;
      FieldByName('From').AsString := strFromPillarNo;
      FieldByName('To').AsString := strToPillarNo;
      FieldByName('InitialDistance').AsFloat := dInitialDistance;
      FieldByName('Correction').AsFloat := dCorrection;
      FieldByName('AdjustedDistance').AsFloat := xCoord.dXCoord[i];
      FieldByName('Uncertainty').AsFloat := dCalibUncertainty;
      Post;
    end;
  end; {for}
  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');

  //****************************************************
  //  Compute/Print uncertainty of calibrated distances
  //****************************************************
  dConstant := (dSumX2 * dSumY - dSumX * dSumXY) /
              (sDistCount * dSumX2 - dSumX * dSumX);
  dScale    := (sDistCount * dSumXY - dSumX * dSumY) /
              (sDistCount * dSumX2 - dSumX * dSumX);

  dScale    := 1000000.0 * dScale;
  dConstant := 1000.0 * dConstant;

  dBaselineUncertaintyScale    := dScale;
  dBaselineUncertaintyConstant := dConstant;

  hasLUM := GetLUM(dConstant, dScale, 'F');

  writeln(pfRPTFile,'');
  if hasLUM then
  begin
    writeln(pfRPTFile,' ');
    writeln(pfRPTFile,'  The Least Uncertainty of Measurement as specified by the Accreditation Authority');
    writeln(pfRPTFile,'  has been used for the uncertainty of the certified distances.');
  end
  else
    writeln(pfRPTFile,'  All uncertainties have been scaled by the a posteriori variance factor.');

  writeln(pfRPTFile,'');
  if GetLumUnitsFromDB='2' then
  begin
    writeln(pfRPTFile,'  The uncertainty of the certified distances is');
    writeln(pfRPTFile,GetUncertaintyWithUnits(dConstant, dScale, '%6.2f', '%6.2f',
      '  ',True, True, False));
  end
  else
    writeln(pfRPTFile,GetUncertaintyWithUnits(dConstant, dScale, '%6.2f', '%6.2f',
      '  The uncertainty of the certified distances is ', False));

  //****************************************************************
  //  Print additive constant & uncertainty of verifying instrument
  //****************************************************************
  writeln(pfRPTFile,'');
  writeln(pfRPTFile,
   '  Least squares estimated additive constant of');
  writeln(pfRPTFile,
   Format('  verifying EDM Instrument                      : %6.2f mm',
     [xCoord.dConstant * 1000.0]));

  dStdDev := sqrt ( Mat.dInv[sDistCount][sDistCount]);
  //**************************************************
  //  Uncertainty at 95 % (Normal Density function)
  //**************************************************
  dUncertainty := 1.96 * dStdDev;
  writeln(pfRPTFile,'');
  writeln(pfRPTFile,
   '  Uncertainty of the additive constant');
  writeln(pfRPTFile,
   Format('  of verifying EDM Instrument                   : %6.2f mm',
  [dUncertainty * 1000.0]));
end;

(*******************************************************************************
@procedure PrintPostStatistics2;

@description
  Print a summary of the post-adjustment statistics.
  Includes the Chi-Square Test on the Variance Factor and convergence errors.
*******************************************************************************)
procedure PrintPostStatistics2;
begin
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,'       -------------------------------------------------------------');
  writeln (pfRPTFile,'       |                                                           |');
  writeln (pfRPTFile,'       |                LEAST SQUARES STATISTICS                   |');
  writeln (pfRPTFile,'       |                                                           |');
  writeln (pfRPTFile,'       |-----------------------------------------------------------|');
  writeln (pfRPTFile,Format('       |  Number of observed baselines     |   %6d              |'
   ,[Post.sObservationCount]));
  writeln (pfRPTFile,Format('       |  Number of parameters             |   %6d              |'
   ,[Post.sParameterCount]));
  writeln (pfRPTFile,Format('       |  Confidence level                 |      %6.2f %1s         |'
   ,[Post.dConfLevel,'%']));
  writeln (pfRPTFile,Format('       |  Coverage factor                  |      %6.2f           |'
   ,[dCoverageFactor]));
  writeln (pfRPTFile,Format('       |  Degrees of freedom               |   %6d              |'
   ,[Post.sDegFreedom]));
  writeln (pfRPTFile,Format('       |  Critical t value                 |   %10.3f          |'
   ,[Post.dTValue]));
  writeln (pfRPTFile,Format('       |  Minimum                          |   %10.3f          |'
   ,[Post.dMinimum]));
  writeln (pfRPTFile,Format('       |  Estimated variance factor        |   %10.3f          |'
    , [Post.dPostVarFactor]));

  if (Post.fsIterationFlag = DIVERGING) then
  begin
    writeln (pfRPTFile,'       -------------------------------------------------------------');
    writeln (pfRPTFile,'       |                ERROR:  Solution diverges                  |');
    writeln (pfRPTFile,'       -------------------------------------------------------------');
  end
  else
  begin
    if (Post.fsIterationFlag = MAX_ITERATION_REACHED) then
    begin
      writeln (pfRPTFile,'       -------------------------------------------------------------');
      writeln (pfRPTFile,'       |  WARNING:  Convergence criteria not reached               |');
    end;
    writeln (pfRPTFile,'       -------------------------------------------------------------');
    writeln (pfRPTFile,'       |                                                           |');
  end;

  if (Post.sDegFreedom < 4 ) then
  begin
    writeln (pfRPTFile,
    '       |  WARNING: No Chi-square test. Degrees of freedom < 4      |');

  end
  else
  begin
    writeln (pfRPTFile,
    '       |        Chi-Square Test on the Variance Factor             |');
    writeln (pfRPTFile,
    '       |                                                           |');
    writeln (pfRPTFile,
    Format('       |         %1.4e  <  1.000   <  %1.4e  ?           |',
      [Post.dChiLow, Post.dChiHigh]));

    writeln (pfRPTFile,
    '       |                                                           |');
    if ( Post.dChiLow  > 1.000) or (Post.dChiHigh < 1.000 ) then
    begin
      writeln (pfRPTFile,
      '       |                    THE TEST FAILS                         |');
    end
    else
    begin
      writeln (pfRPTFile,
      '       |                    THE TEST PASSES                        |');
    end;
  end;
  writeln (pfRPTFile,
    '       |                                                           |');
  writeln (pfRPTFile,
    '       -------------------------------------------------------------');

end;

(*******************************************************************************
@function PillarIndex(sPillarID: Integer): Integer;

@description
  Returns the sequence number of the pillar.
*******************************************************************************)
function PillarIndex(sPillarID: Integer): Integer;
var
  doContinue: Boolean;
  sCount: Integer;
  sPillarIndex: Integer;
begin
  sPillarIndex := 0;
  doContinue := True;
  with dmBase.rxmemPillar do
  begin
    First;
    sCount := 0;
    while (not EOF) and doContinue do
    begin
      if (sPillarID = FieldByName('PillarID').AsInteger) then
      begin
        sPillarIndex := sCount;
        doContinue := False;
      end;
      Inc(sCount);
      Next;
    end;
  end;
  Result := sPillarIndex;
end;

(*******************************************************************************
@procedure ComputeAprioriStdDevs( trMeasType: String; sLineCount: Integer);

@description
  Compute the a priori standard deviations.
*******************************************************************************)
procedure ComputeAprioriStdDevs(
  strMeasType: String;
  sLineCount: Integer);
var
  aLine: LINE_L;
  sLoop: Integer;
  dDistance: Double;
  dX : Double;
  dHeightDiff: Double;
begin
  // All Standard deviations are in millimeters

  dmBase.rxmemStdDev.EmptyTable;
  if strMeasType = 'Instrument' then
  begin
    // ------------------------------------------------------
    // Std Dev Baseline interval As Constant(mm) + Scale(ppm)
    //-------------------------------------------------------
    ComputeBaselineIntervalStdDev;
  end
  else
  begin
    if frmJob.cbManufacturerSpecs.Checked then
    begin
      pre_StdDev.InstrumentConstant := dmMain.rxAtInstrumentModel.FieldByName('ModelManufStdDevConst').AsFloat * 1000; // convert to mm
      pre_StdDev.InstrumentScale    := dmMain.rxAtInstrumentModel.FieldByName('ModelManufStdDevPPM').AsFloat;
    end
    else
    begin
      pre_StdDev.InstrumentConstant := 0;
      pre_StdDev.InstrumentScale    := 0;
    end;
  end;
  // ------------------------------------------------------
  // Std Dev Observed distance  Constant(mm) + Scale(ppm)
  //-------------------------------------------------------
  ComputeStdDevObservedDistance(sLineCount);

  // -----------------------
  // Std Dev of the centring
  //------------------------
  pre_StdDev.Centring := sqrt(sqr(pre_StdDev.CentringInstrument)+ sqr(pre_StdDev.CentringInstrument));

  for sLoop :=0 to sLineCount-1 do
  begin
    aLine := line[sLoop];
    pre_StdDev.AtPillarRL := aLine.dAtPillarRLStdDev * 1000; // convert to mm
    pre_StdDev.ToPillarRL := aLine.dAtPillarRLStdDev * 1000;

    dDistance := aLine.dTrueDistance;

    // ------------------------------------------
    // Std Dev of the meteorological observations
    // ------------------------------------------
    ComputeStdDevAtmosphere(aLine);
    pre_StdDev.Atmosphere := pre_StdDev.Atmosphere * dDistance /1000; // Convert PPM to mm
    dHeightDiff := Abs((aLine.dAtPillarRL + aLine.dHeightAboveAtPillar) -
                      (aLine.dToPillarRL + aLine.dHeightAboveToPillar));
    // ------------------------------------------
    // Std Dev of the height difference
    // ------------------------------------------
        pre_StdDev.HeightDifference := dHeightDiff/dDistance * sqrt(
        sqr(pre_StdDev.HeightAboveAtPillar) +
        sqr(pre_StdDev.HeightAboveToPillar) +
        sqr(pre_StdDev.PillarHeightDiff));

    // ------------------------------------------
    // Std Dev of the offsets
    // ------------------------------------------
    dX := (aLine.dAtPillarOffset - aLine.dToPillarOffset) / dDistance;
    pre_StdDev.Offset := sqrt( sqr(dX * pre_StdDev.OffsetInstrument) +
                               sqr(dX * pre_StdDev.OffsetReflector));

    // ------------------------------------------
    // Std Dev of the observed distance
    // ------------------------------------------
    pre_StdDev.ObsDistance := pre_StdDev.ObsDistanceConstant +
                           pre_StdDev.ObsDistanceScale * dDistance /1000; // Convert PPM to mm

    if strMeasType = 'Instrument' then
    begin
      // ------------------------------------------
      // Std Dev of the certified baseline interval
      // ------------------------------------------
      pre_StdDev.Interval := pre_StdDev.IntervalConstant +
                             pre_StdDev.IntervalScale * dDistance /1000; // Convert PPM to mm
      pre_StdDev.Instrument := 0;
    end
    else
    begin
      // ------------------------------------------
      // Std Dev of the prescibed instrument
      // ------------------------------------------
      if frmJob.cbManufacturerSpecs.Checked then
      begin
        pre_StdDev.Instrument := pre_StdDev.InstrumentConstant +
                                 pre_StdDev.InstrumentScale * dDistance /1000; // Convert PPM to mm
      end
      else
      begin
        pre_StdDev.Instrument := 0;
      end;
      pre_StdDev.Interval := 0;
    end;
    // ------------------------------------------
    // Combining all standard deviations
    // ------------------------------------------
    pre_StdDev.Combined := sqrt(
          sqr(pre_StdDev.Interval) +
          sqr(pre_StdDev.Instrument) +
          sqr(pre_StdDev.Offset) +
          sqr(pre_StdDev.HeightDifference) +
          sqr(pre_StdDev.Centring) +
          sqr(pre_StdDev.ObsDistance) +
          sqr(pre_StdDev.Atmosphere));

    line[sLoop].dAprioriStdDev := pre_StdDev.Combined/1000; // convert to metres

    dmBase.rxmemStdDev.Append;
    dmBase.rxmemStdDev.FieldByName('LineID').AsInteger := aLine.sLineID;
    dmBase.rxmemStdDev.FieldByName('AtPillarID').AsInteger := aLine.sAtPillarIndex;
    dmBase.rxmemStdDev.FieldByName('ToPillarID').AsInteger := aLine.sToPillarIndex;
    dmBase.rxmemStdDev.FieldByName('AtPillarNo').AsString := aLine.strAtPillarNo;
    dmBase.rxmemStdDev.FieldByName('ToPillarNo').AsString := aLine.strToPillarNo;
    dmBase.rxmemStdDev.FieldByName('StdDevBaselineInterval').AsFloat := pre_StdDev.Interval;
    dmBase.rxmemStdDev.FieldByName('StdDevInstrument').AsFloat := pre_StdDev.Instrument;
    dmBase.rxmemStdDev.FieldByName('StdDevObsDistance').AsFloat := pre_StdDev.ObsDistance;
    dmBase.rxmemStdDev.FieldByName('StdDevMeteorology').AsFloat := pre_StdDev.Atmosphere;
    dmBase.rxmemStdDev.FieldByName('StdDevCentring').AsFloat := pre_StdDev.Centring;
    dmBase.rxmemStdDev.FieldByName('StdDevHeightDifference').AsFloat := pre_StdDev.HeightDifference;
    dmBase.rxmemStdDev.FieldByName('StdDevOffset').AsFloat := pre_StdDev.Offset;
    dmBase.rxmemStdDev.FieldByName('StdDevCombined').AsFloat := pre_StdDev.Combined;
    dmBase.rxmemStdDev.Post;
  end;
end;

(*******************************************************************************
@procedure ComputeStdDevAtmosphere(aLine: LINE_L);

@description
  Compute the standard deviations of the atmospheric observations.
*******************************************************************************)
procedure ComputeStdDevAtmosphere(aLine: LINE_L);
var
  dPressure: Double;
  dnG: Double;
  dT: Double;
  dE: Double;
  dK: Double;
  dL: Double;
  dM: Double;
  dEE: Double;
begin
  // Meteorological Standard deviations
  with Atmosphere do
  begin
    if aLine.cMetsFlag = 'Y' then
    begin
      DryTemperature := aline.dDryTemp;
      WetTemperature := aline.dWetTemp;
      Pressure       := aline.dPressure;
      Humidity       := aline.dHumidity;
      HumidityType   := aline.cHumidityType;
    end
    else
    begin
      DryTemperature := 20;
      WetTemperature := 0;
      Pressure       := 1000;
      Humidity       := 50;
      HumidityType   := 'D';
      GroupRefractiveIndex_nG := 1.0003;
    end;
    PartialWaterVapourPressure := 0;
  end;

  ComputePartialWaterVapourPressure;

  with Atmosphere do
  begin
    dT := 273.15 + DryTemperature;
    dPressure := Pressure;
    dE := PartialWaterVapourPressure;
    dnG := GroupRefractiveIndex_nG-1;
  end;

  dK := ((dnG*(273.15*dPressure)/1013.25 - 11.27*dE*0.000001)/(dT*dT))*1000000;
  dL := ((0.26957809*dnG)/dT) * 1000000;
  dM := ((11.27 * 0.000001)/dT) * 1000000;
  dEE := Exp(17.502*Atmosphere.DryTemperature/(240.94+Atmosphere.DryTemperature));
  dEE := (1.0007+(3.46*Atmosphere.Pressure)/1000000)* 6.1121* dEE;

  pre_StdDev.PartialWaterVapourPressure := dEE * pre_StdDev.Humidity/100;

  pre_StdDev.Atmosphere := sqrt(sqr(dK * pre_StdDev.Temperature)+
                             sqr(dL * pre_StdDev.Pressure) +
                             sqr(dM * pre_StdDev.PartialWaterVapourPressure));
end;

(*******************************************************************************
@procedure ComputePartialWaterVapourPressure;

@description
  Compute partial water vapour pressure.
*******************************************************************************)
procedure ComputePartialWaterVapourPressure;
var
  dDryTemp: Double;
  dWetTemp: Double;
  dPressure: Double;
  strHumidityType: String;
  dHumidity: Double;
  dE: Double;
var
  dY: Double;
  deWater: Double;
  deIce: Double;
begin
  with Atmosphere do
  begin
    dDryTemp := DryTemperature;
    dWetTemp := WetTemperature;
    dPressure := Pressure;
    dHumidity := Humidity;
    strHumidityType := HumidityType;
  end;

  if (strHumidityType ='W') then
  begin
    if (dWetTemp > 0.0) then
    begin
      dY := (7.5 * dWetTemp / (237.3 + dWetTemp)) + 0.7858;
      deWater := Power(10, dY);
      dE := deWater - 0.000662 * dPressure * ( dDryTemp - dWetTemp);
      dHumidity := dE * 100.000 / deWater;
    end
    else
    begin
      dY := (9.5 * dWetTemp / (265.5 + dHumidity)) + 0.7858;
      deIce := Power(10, dY);
      dE := deIce - 0.000583 * dPressure * ( dDryTemp - dWetTemp);
      dHumidity := dE * 100.000 / deIce;
    end;
  end
  else
  begin
    dY := (7.5 * dDryTemp / (237.3 + dDryTemp)) + 0.7858;
    deWater := Power(10.000, dY);
    dE := deWater * dHumidity /100.000;
  end;

  with Atmosphere do
  begin
    Humidity := dHumidity;
    PartialWaterVapourPressure := dE;
  end;
end;

(*******************************************************************************
@procedure ComputeBaselineIntervalStdDev;

@description
  Compute the standard deviation of the calibrated baseline.
*******************************************************************************)
procedure ComputeBaselineIntervalStdDev;
var
  dConstant:        DOUBLE;              // Constant part of EDM std dev
  dScale:           DOUBLE;              // Scale PPM  of EDM std dev
  dX, dY, dXY, dX2: DOUBLE;              // Terms in equations
  dSumX, dSumY:     DOUBLE;              // Terms in equations
  dSumXY, dSumX2:   DOUBLE;              // Terms in equations
  dDistanceFromPillar1 : Double;
  dUncertaintyFromPillar1 : Double;
  dUncertaintyConstant, dUncertaintyScale: DOUBLE;
begin
  dSumX  := 0.000;
  dSumY  := 0.000;
  dSumXY := 0.000;
  dSumX2 := 0.000;
  dDistanceFromPillar1 := 0;
  dUncertaintyFromPillar1 := 0;
  with dmBase.rxFilteredDistance do
  begin
    First;
    while not EOF do
    begin
      dUncertaintyFromPillar1 := sqrt(Abs(sqr(FieldByName('DistSigma').AsFloat) - sqr(dUncertaintyFromPillar1)));
      dY :=  dUncertaintyFromPillar1/ dCoverageFactor;
      dDistanceFromPillar1  := dDistanceFromPillar1 + FieldByName('DistLegalDistance').AsFloat;
      dX  := dDistanceFromPillar1;
      dX2 := dX*dX;
      dXY := dX*dY;
      dSumX  := dSumX + dX;
      dSumY  := dSumY + dY;
      dSumXY := dSumXY + dXY;
      dSumX2 := dSumX2 + dX2;
      Next;
    end;
    dConstant := (dSumX2 * dSumY - dSumX * dSumXY) /
              (RecordCount * dSumX2 - dSumX * dSumX);
    dScale    := (RecordCount * dSumXY - dSumX * dSumY) /
              (RecordCount * dSumX2 - dSumX * dSumX);


    if (dConstant < 0.0000) then
    begin
      dConstant := 0.000;
    end;
    pre_StdDev.IntervalConstant := dConstant*1000;

    if (dScale < 0.0000) then
    begin
      pre_StdDev.IntervalConstant := 0.0000;
    end
    else
    begin
      pre_StdDev.IntervalScale := dScale * 1000000.000;
    end;

    dUncertaintyConstant := pre_StdDev.IntervalConstant * 2;
    dUncertaintyScale := pre_StdDev.IntervalScale * 2;

    GetLUM(dUncertaintyConstant, dUncertaintyScale, 'F');

    pre_StdDev.IntervalConstant := dUncertaintyConstant/2.0;
    pre_StdDev.IntervalScale := dUncertaintyScale/2.0;
  end;
end;

(*******************************************************************************
@procedure ComputeStdDevObservedDistance(sLineCount: Integer);

@description
  Compute the standard deviation of observed distances.
*******************************************************************************)
procedure  ComputeStdDevObservedDistance(sLineCount: Integer);
var
  sLoop:            Integer;             // Loop Counter
  dConstant:        DOUBLE;              // Constant part of EDM std dev
  dScale:           DOUBLE;              // Scale PPM  of EDM std dev
  dX, dY, dXY, dX2: DOUBLE;              // Terms in equations
  dSumX, dSumY:     DOUBLE;              // Terms in equations
  dSumXY, dSumX2:   DOUBLE;              // Terms in equations
  dSumStdDev  : DOUBLE;
  dMeanStdDev : DOUBLE;
begin
  dSumX  := 0.000;
  dSumY  := 0.000;
  dSumXY := 0.000;
  dSumX2 := 0.000;
  dSumStdDev := 0.000;

  for sLoop := 0 to sLineCount-1 do
  begin
    dX  := line[sLoop].dMeanObsDistance;
    dY  := line[sLoop].dObsDistanceStdDev;
    dX2 := dX*dX;
    dXY := dX*dY;
    dSumX  := dSumX + dX;
    dSumY  := dSumY + dY;
    dSumXY := dSumXY + dXY;
    dSumX2 := dSumX2 + dX2;
    dSumStdDev := dSumStdDev + line[sLoop].dObsDistanceStdDev;
  end;

  dConstant := (dSumX2 * dSumY - dSumX * dSumXY) /
              (sLineCount * dSumX2 - dSumX * dSumX);
  dScale    := (sLineCount * dSumXY - dSumX * dSumY) /
              (sLineCount * dSumX2 - dSumX * dSumX);

  dMeanStdDev := dSumStdDev/sLineCount;

  if (dConstant < 0.0000) then
  begin
    pre_StdDev.ObsDistanceConstant := dMeanStdDev * 1000;
    pre_StdDev.ObsDistanceScale := 0;
  end
  else
  begin
    pre_StdDev.ObsDistanceConstant := dConstant * 1000;
  end;

  if (dScale < 0.0000) then
  begin
    pre_StdDev.ObsDistanceConstant := dMeanStdDev * 1000;
    pre_StdDev.ObsDistanceScale := 0;
  end
  else
  begin
    pre_StdDev.ObsDistanceScale := dScale * 1000000.000;
  end;

end;

(*******************************************************************************
@procedure UpdateBaseline(isUsedByJobs: Boolean);

@description
  Updates the baseline database with the a new baseline calibration.
*******************************************************************************)
procedure  UpdateBaseline(isUsedByJobs: Boolean);
var
  rxPillar: TRxMemoryData;
  rxDistance: TRxMemoryData;
  sBaselineID: Integer;
  sNewBaselineID: Integer;
  sNewPillarID: Integer;
  sNextPillarID: Integer;
  sNextDistanceID: Integer;
  strBaselineName: String;
  i, j: Integer;
  strFromFieldName, strToFieldName: String;
begin
  //-------------------- Update baseline table -------------------------
  dmBase.doEvents := False;
  sBaseLineId := dmMain.rxBaseline.FieldByName('BaselineId').AsInteger;
  strBaseLineName := dmMain.rxBaseline.FieldByName('BaselineName').AsString;

  with dmMain.rxBaseline do
  begin
    Edit;
    FieldByName('BaselineCalibrationDate').Value :=
    dmMain.rxJob.FieldByName('JobEndCalibrationDate').Value;
    Post;
  end;

  if not isUsedByJobs then
  begin
    with dmBase.rxNewLegalDistance do
    begin
      First;
      dmBase.rxFilteredDistance.First;
      while not EOF do
      begin
        if dmBase.rxDistance.Locate('DistID',dmBase.rxFilteredDistance.FieldByName('DistID').AsString,[]) then
        begin
          dmBase.rxDistance.Edit;
          dmBase.rxDistance.FieldByName('DistLegalDistance').Value   := FieldByName('LegalDistance').Value;
          dmBase.rxDistance.FieldByName('DistSigma').Value   := FieldByName('Uncertainty').Value;
          dmBase.rxDistance.Post;
        end;
        dmBase.rxFilteredDistance.Next;
        Next;
      end;
    end;

    with dmBase.rxBaseline do
    begin
      if Locate('BaselineID',sbaselineID,[]) then
      begin
        Edit;
        FieldByName('BaselineCalibrationDate').Value :=
          dmMain.rxJob.FieldByName('JobEndCalibrationDate').Value;
        Post;
      end;
    end;
    with dmBase.rxBaselineAccuracy do
    begin
      if Locate('BaselineID',sbaselineID,[]) then
      begin
        Edit;
        FieldByName('UncertaintyConstant').AsFloat := dBaselineUncertaintyConstant;
        FieldByName('UncertaintyScale').AsFloat    := dBaselineUncertaintyScale;
        Post;
      end;
    end;
  end
  else
  begin
    sNewBaselineID := dmBase.GetLastID(dmBase.rxBaseLine,'BaselineID');
    with dmBase.rxBaseline do
    begin
      First;
      while not EOF do
      begin
        if (FieldByName('BaselineName').AsString = strBaselineName) and
           (FieldByName('BaselineArchiveFlag').AsString = 'C') then
        begin
          Edit;
          FieldByName('BaselineArchiveFlag').AsString := 'A';
          Post;
        end;
        Next;
      end;

      Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strFromFieldName := Uppercase(dmMain.rxBaseline.Fields[j].FieldName);
        strToFieldName := Uppercase(Fields[i].FieldName);

        while (strFromFieldName <> strToFieldName) and
             ( j < dmMain.rxBaseline.FieldCount-1) do
        begin
          Inc(j);
          strFromFieldName := Uppercase(dmMain.rxBaseline.Fields[j].FieldName);
        end;
        Fields[i].Value := dmMain.rxBaseline.Fields[j].Value;
        if strFromFieldName = 'BASELINEID' then
        begin
          FieldByName('BaselineID').AsInteger := sNewBaselineID;
        end;
        if strFromFieldName = 'BASELINEARCHIVEFLAG' then
        begin
          FieldByName('BaselineArchiveFlag').AsString := 'C';
        end;
        {
        if strFromFieldName = 'BASELINECALIBRATIONDATE' then
        begin
          FieldByName('BaselineCalibrationDate').AsdateTime := Date;
        end;
        }
      end;
      Post;
    end;

    //-------------------- Update pillar table -------------------------
    rxPillar := TrxMemoryData.Create(nil);
    with rxPillar do
    begin
      CopyStructure(dmMain.rxPillar);
      LoadFromDataSet(dmMain.rxPillar,0, lmCopy);
      sNewPillarID := dmBase.GetLastID(dmBase.rxPillar,'PillarID');

      sNextPillarID := sNewPillarID;
      First;
      while not EOF do
      begin
        Edit;
        FieldByName('PillarId').AsInteger   := sNextPillarId;
        FieldByName('BaseLineId').AsInteger := sNewBaselineId;
        Post;
        Next;
        Inc(sNextPillarId);
      end;
      SaveToDataSet(dmBase.rxPillar,0);
    end;

    rxPillar.Free;

    //-------------------- Update distance table -------------------------
    dmBase.FilterDistance(sBaselineId);
    rxDistance := TrxMemoryData.Create(nil);
    with rxDistance do
    begin
      CopyStructure(dmBase.rxFilteredDistance);
      LoadFromDataSet(dmBase.rxFilteredDistance,0, lmCopy);
      sNextDistanceId := dmBase.GetLastID(dmBase.rxDistance,'DistID');

      sNextPillarId := sNewPillarId;
      dmBase.rxNewLegalDistance.First;
      First;
      while not EOF do
      begin
        Edit;
        FieldByName('DistId').AsInteger   := sNextDistanceId;
        FieldByName('BaseLineId').AsInteger := sNewBaselineId;
        FieldByName('PillarFromId').AsInteger := sNextPillarId;
        FieldByName('PillarToId').AsInteger   := sNextPillarId+1;
        FieldByName('DistLegalDistance').Value   := dmBase.rxNewLegalDistance.FieldByName('LegalDistance').Value;
        FieldByName('DistSigma').Value   := dmBase.rxNewLegalDistance.FieldByName('Uncertainty').Value;
        Post;
        Next;
        dmBase.rxNewLegalDistance.Next;
        Inc(sNextDistanceId);
        Inc(sNextPillarId);
      end;

      SaveToDataSet(dmBase.rxDistance,0);
    end;
    rxDistance.Free;

    with dmBase.rxBaselineAccuracy do
    begin
      Append;
      FieldByName('BaselineID').AsInteger := sNewBaselineID;
      FieldByName('UncertaintyConstant').AsFloat := dBaselineUncertaintyConstant;
      FieldByName('UncertaintyScale').AsFloat    := dBaselineUncertaintyScale;
      Post
    end;

    dmbase.FilterBaselineDefault(sBaselineID);

    doEvent := False;
    with dmbase.rxBaselineDefaultFilter do
    begin
      First;
      while not EOF do
      begin
        dmBase.rxBaselineDefault.Append;
        dmBase.rxBaselineDefault.FieldByName('BaselineID').AsInteger := sNewBaselineID;
        dmBase.rxBaselineDefault.FieldByName('Description').Value   := FieldByName('Description').Value;
        dmBase.rxBaselineDefault.FieldByName('Default').Value := FieldByName('Default').Value;
        dmBase.rxBaselineDefault.FieldByName('Unit').Value   := FieldByName('Unit').Value;
        dmBase.rxBaselineDefault.Post;
        Next;
      end;
    end;
  end;
  doEvent := True;
  dmBase.doEvents := True;
end;

(*******************************************************************************
@procedure UpdateCertifiedDistanceRXTable( sDistCount: Integer);

@description
  Save the new baseline distances into a temporary table (dmBase.rxNewLegalDistance)
*******************************************************************************)
procedure  UpdateCertifiedDistanceRXTable(
    sDistCount: Integer);              // Number of lines
var
 sLoop:             Integer;            // Loop Counter
 dStdDev:           Double;             // dStdDev
 dUncertainty:      Double;             // Uncertainty at 95%
 dIntervalDistance, dPreviousDistance: Double;
 dIntervalUncertainty, dPrevUncertainty: Double;
 dCalibUncertainty: Double;
begin
  dPreviousDistance := 0;
  dmBase.rxNewLegalDistance.EmptyTable;
  dPrevUncertainty := 0;

  for sLoop := 0 to sDistCount-1 do
  begin
    dStdDev := sqrt ( Mat.dInv[sLoop][sLoop]);
    dUncertainty := 2.0 * dStdDev;
    dCalibUncertainty := AddCalibrationUncertainties(dUncertainty, xCoord.dXCoord[sLoop]);

    dIntervalDistance := xCoord.dXCoord[sLoop] - dPreviousDistance;
    dIntervalUncertainty := Sqrt(Abs(Sqr(dCalibUncertainty) + Sqr(dPrevUncertainty)));
    dPrevUncertainty := dCalibUncertainty;

    with dmBase.rxNewLegalDistance do
    begin
      Append;
      FieldByName('LegalDistance').AsFloat := dIntervalDistance;
      FieldByName('Uncertainty').AsFloat   := dIntervalUncertainty;
      Post;
    end;
    dPreviousDistance := xCoord.dXCoord[sLoop];
  end;
end;

(*******************************************************************************
@function  CountReportPages: Integer;

@description
 Returns the total number of pages in the calibration report.
*******************************************************************************)
function  CountReportPages: Integer;
var
  sLineCount: Integer;        // Number of baselines measured
  sTotalPages: Integer;
  sCount: Integer;
  isFirstPage: Boolean;
  sLoop: Integer;
  sObsCount: Integer;
  sLineID: Integer;
begin
  sLineCount := dmMain.rxJMeasure.RecordCount;
  sTotalPages :=  1; // Job Information;
  Inc(sTotalPages); // Least squares adjustment options
  Inc(sTotalPages); // Legal distances
  Inc(sTotalPages); // Meteorological report

  // Observed distances
  sCount := 2;
  for sLoop := 0 to sLineCount-1 do
  begin
    sLineID := line[sLoop].sLineID;
    with dmBase.rxmemObservation do
    begin
      sObsCount := 1;
      First;
      while not EOF do
      begin
        if FieldByName('MeasureID').AsInteger = sLineID then
        begin
          Inc(sObsCount);
        end;
        Next;
      end;
    end;

    if (sObsCount > 10 ) then
    begin
      Inc(sTotalPages);
    end
    else
    begin
      if (sCount = 2) then
      begin
        Inc(sTotalPages);
        sCount := 0;
      end;
      Inc(sCount);
    end;
  end;

  // Reduced distances
  sTotalPages := sTotalPages + trunc(sLineCount/38)+1;

  // distance stdDev report
  Inc(sTotalPages);
  sCount := 0;
  isFirstPage := True;
  with dmBase.rxmemStdDev do
  begin
    First;
    while not EOF do
    begin
      if (sCount > 24) and isFirstPage then
      begin
        isFirstPage := False;
        Inc(sTotalPages);
        sCount := 0;
      end;
      if(sCount > 37) then
      begin
        Inc(sTotalPages);
        sCount := 0;
      end;
      Inc(sCount);
      Next;
    end;
  end;

  // Summary distance misclose report
  sTotalPages := sTotalPages + trunc(sLineCount/38)+1;

  if dmMain.rxJobJobType.AsString = 'I' then
  begin
    // Write calibration parameters
    Inc(sTotalPages);
    // Write National Standards
    Inc(sTotalPages);
    // Write statistics
    Inc(sTotalPages);

    // Write Summary least squares estimates of distance residuals
    sTotalPages := sTotalPages + trunc(sLineCount/38)+1;
    // Print Histogram of standardised residuals
    Inc(sTotalPages);
  end
  else
  begin
    // Write new baseline distances
    Inc(sTotalPages);

    // Write statistics
    Inc(sTotalPages);

    // Write Summary least squares estimates of distance residuals
    sTotalPages := sTotalPages + trunc(sLineCount/38)+1;

    // Print Histogram of standardised residuals
    Inc(sTotalPages);

    Inc(sTotalPages); // Accreditation page
  end;

  Result := sTotalPages;
end;

(*******************************************************************************
@procedure  procedure PrintAccreditation;

@description
 Prints the accreditation information.
*******************************************************************************)
procedure PrintAccreditation;
var
  i: integer;
  strLine: string;
begin
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ------------------------------------------------------------------------------');
  writeln (pfRPTFile,' |                                                                             |');
  writeln (pfRPTFile,' |                            ACCREDITATION                                    |');
  writeln (pfRPTFile,' |                                                                             |');
  writeln (pfRPTFile,' |-----------------------------------------------------------------------------|');
  writeln (pfRPTFile,' |                                                                             |');
  strLine := '';
  for i := 0 to frmJob.memProcedure.Lines.Count-1 do
  begin
    strLine := strLine+frmJob.memProcedure.Lines[i];
  end;
  frmJob.memPrint.Lines.Clear;
  frmJob.memPrint.Lines.Add(strLine);
  Application.ProcessMessages;

  for i := 0 to frmJob.memPrint.Lines.Count-1 do
  begin
    strLine := ' | '+frmJob.memPrint.Lines[i];
    while length(strLine) < 78 do
    begin
      strLine := strLine+ ' ';
    end;
    strLine := strLine + ' |';
    writeln (pfRPTFile,strLine);
  end;

  writeln (pfRPTFile,' |                                                                             |');

  strLine := '';
  for i := 0 to frmJob.memTraceability.Lines.Count-1 do
  begin
    strLine := strLine+frmJob.memTraceability.Lines[i];
  end;
  frmJob.memPrint.Lines.Clear;
  frmJob.memPrint.Lines.Add(strLine);
  Application.ProcessMessages;

  for i := 0 to frmJob.memPrint.Lines.Count-1 do
  begin
    strLine := ' | '+frmJob.memPrint.Lines[i];
    while length(strLine) < 78 do
    begin
      strLine := strLine+ ' ';
    end;
    strLine := strLine + ' |';
    writeln (pfRPTFile,strLine);
  end;
  writeln (pfRPTFile,' ------------------------------------------------------------------------------');

  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  strLine :=' Data entry by:....................';
  strLine := strLine +'    Results checked by:.......................';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' ');
  strLine :=' Position:.........................';
  strLine := strLine +'    Position:.................................';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' ');
  strLine :=' Signature:........................';
  strLine := strLine +'    Approved Signatory:.......................';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' ');
  strLine :=' Date:.............................';
  strLine := strLine +'    Date:.....................................';
  writeln (pfRPTFile,strLine);
end;


(*******************************************************************************
@procedure  ComputeBaselinelength;

@description
 Computes the total length of the baseline.
*******************************************************************************)
procedure ComputeBaselinelength;
var
 dSum: Double;
begin
  with dmbase.rxFilteredDistance do
  begin
    First;
    dSum := 0;
    while not EOF do
    begin
      dSum := dSum + FieldByName('DistLegalDistance').AsFloat;
      Next;
    end;
  end;
  dBaselineLength := dSum;
end;


(*******************************************************************************
@procedure  PrintEDMCertificate2;

@description
 Prints the EDM calibration certificate.
*******************************************************************************)
procedure PrintEDMCertificate2;
var
  sLoop: Integer;                   // Loop counter
  cSign: array[0..7] of string;     // Sign characters
  sParameterCount: Integer;
  szTest: string;
  szRemark: string;
  strLine, strField: String;
  hasImageAccreditation: Boolean;
  dVelocityLight: Double;
  dUncertaintyConstant, dUncertaintyScale: Double;
begin
  dVelocityLight := VELOCITY_LIGHT;
  dmBase.rxStandard.Locate('Type','E',[]);

  with frmReportSummary do
  begin
    imageAccreditation.Height := 64;
    imageAccreditation.Width := 180;
    if frmJob.chkIncludeLogos.Checked then
    begin
      imageAuthority.Enabled := True;
      imageAccreditation.Enabled := True;
      memAccreditationLogoTitle.Enabled := True;
      imageAccreditation.Picture := frmJob.imageAccreditation2.Picture;
      frmJob.SetQRImageSize(imageAccreditation);
      imageAuthority.Picture := frmJob.imageAuthority.Picture;
    end
    else
    begin
      imageAuthority.Enabled := False;
      imageAccreditation.Enabled := False;
      memAccreditationLogoTitle.Enabled := False;
    end;
    lblJobDescription.caption := dmMain.rxJobJobDescription.AsString;
    strLine := Format('This report has been generated by program Baseline %s, developed',[strVersionNumber]);
    strLine := strLine +' by the '+strProgramOwner+ '.';
    lblVersionNumber.caption := strLine;

    lblCalibrationDate.caption := DateToStr(dmMain.rxJobJobStartCalibrationDate.AsDateTime);
    lblComputationDate.caption := DateToStr(Date);
    lblObserverName.Caption    := dmMain.rxJobJobObserverName.AsString;
    lblComputationTime.caption := TimeToStr(Time);
    lblEDMOwner.Caption := dmMain.rxJobJobInst1Owner.AsString;
    lblOwnerAddress.Caption := dmMain.rxJobJobInst1OwnerAddress.AsString;
    lblEDMMake.Caption := dmMain.rxAtInstrumentMakeMakeName.AsString;
    lblEDMModel.Caption := dmMain.rxAtInstrumentModelModelName.AsString;
    lblEDMSerialNumber.Caption := dmMain.rxAtInstrumentInstSerialNo.AsString;
    lblPrismMake.Caption := dmMain.rxToInstrumentMakeMakeName.AsString;
    lblPrismModel.Caption := dmMain.rxToInstrumentModelModelName.AsString;
    lblPrismSerialNumber.Caption := dmMain.rxToInstrumentInstSerialNo.AsString;
    lblPrismConstant.Caption := Format('%5.0f mm',[dmMain.rxToInstrumentInstConstant.AsFloat*1000]);

    lblBaselineName.Caption := dmMain.rxBaselineBaseLineName.AsString;
    lblBaselineAuthority.Caption := dmMain.rxBaselineBaseLineAuthority.AsString;
    lblAuthorityAddress.Caption := dmMain.rxBaselineAuthorityAddress.AsString;
    lblBaselineLocation.Caption := dmMain.rxBaselineBaseLineLocation.AsString;
    lblBaselineDate.Caption := DateToStr(dmMain.rxBaselineBaselineCalibrationDate.AsDateTime);

    strLine := '';
    for sLoop := 0 to frmJob.membaselineTraceability.Lines.Count-1 do
    begin
      strLine := strLine + frmJob.membaselineTraceability.Lines[sLoop];
    end;
    lblHeader2.Lines.Clear;
    lblHeader2.Lines.Add(strLine);

    if isSignificant then
    begin
       sParameterCount := 6;
    end
    else
    begin
       sParameterCount := 2;
    end;
    for sLoop := 0 to sParameterCount-1 do
    begin
      if (cerEDM.dCalibParm[sLoop] < 0.000) then
      begin
        cSign[sLoop] := '-';
      end
      else
      begin
        cSign[sLoop] := '+';
      end;
    end;
    memIC.Lines.Clear;

    if isSignificant then
    begin
      memIC.Height := 60;
      memCorrectionTerms.height := sParameterCount * 17;
    end
    else
    begin
      memIC.Height := 20;
      if GetLumUnitsFromDB = '1' then
        memCorrectionTerms.height := 34
      else
        memCorrectionTerms.height := 50;
    end;

    lblNotation.Top := memIC.Top + memIC.Height + 3;
    lblPrismConstantBeenSetInEDM.Top := lblNotation.Top + lblNotation.Height + 3;
    lblSignificant.Top := lblPrismConstantBeenSetInEDM.Top + lblPrismConstantBeenSetInEDM.Height + 8;
    lblTermHeader.Top := lblSignificant.Top + lblSignificant.Height + 10;
    memCorrectionTerms.Top := lblTermHeader.Top + lblTermHeader.Height + 4;
    lblLineTerm2.Top := memCorrectionTerms.Top + memCorrectionTerms.Height + 6;
    lblRange.Top := lblLineTerm2.Top + lblLineTerm2.Height + 6;
    lblRange.Top := lblLineTerm2.Top + 14;

      // 26-July-2004

    if isSignificant then
    begin
      strLine := Format('IC = %7.2f %1s %8.5f D ',
             [cerEDM.dCalibParm[0], cSign[1], abs(cerEDM.dCalibParm[1]/1000.0)]);
      strLine := strLine + Format(' %1s %6.2f SIN(36D)  %1s %6.2f COS(36D)',
           [cSign[2], abs(cerEDM.dCalibParm[2]),
            cSign[3], abs(cerEDM.dCalibParm[3])]);
      memIC.Lines.Add(strLine);
      strLine := Format('        %1s %6.2f SIN(72D)  %1s %6.2f COS(72D)',
          [cSign[4], abs(cerEDM.dCalibParm[4]),cSign[5], abs(cerEDM.dCalibParm[5])]);
      memIC.Lines.Add(strLine);
      if not hasPrismConstantBeenSetInEDM then
      begin
        strLine :=   '        + Reflector Constant(mm)';
        memIC.Lines.Add(strLine);
      end;

      lblNotation.Caption    :='Where L = distance in metres and angles are in degrees';
      lblSignificant.Caption :='CYCLIC ERRORS ARE SIGNIFICANT';
    end
    else
    begin
      // 26-July-2004
      if hasPrismConstantBeenSetInEDM then
        strLine :=  Format('IC = %7.2f %1s %8.5f L',
           [cerEDM.dCalibParm[0], cSign[1], abs(cerEDM.dCalibParm[1])/1000.0])
      else
        strLine :=  Format('IC = %7.2f %1s %8.5f L + Reflector Constant(mm)',
           [cerEDM.dCalibParm[0], cSign[1], abs(cerEDM.dCalibParm[1])/1000.0]);

      memIC.Lines.Add(strLine);
      lblNotation.Caption    :='Where L = distance in metres';
      if hasUnitLength then
        lblSignificant.Caption :='CYCLIC ERRORS ARE INSIGNIFICANT'
      else
        lblSignificant.Caption :='';
    end;

    if hasPrismConstantBeenSetInEDM then
      strLine := ' The reflector constant has been entered into the instrument'
    else
      strLine := ' The reflector constant has not been entered into the instrument';

    lblPrismConstantBeenSetInEDM.Caption := strLine;


    memCorrectionTerms.Lines.Clear;

    dUncertaintyConstant := cerEDM.dCalibUncert[0];
    dUncertaintyScale := cerEDM.dCalibUncert[1];

    GetLUM(dUncertaintyConstant, dUncertaintyScale, 'G');

    if GetLumUnitsFromDB = '1' then
    begin
      lblTermHeader.Caption := 'Calibration Parameters         Value         Uncertainty(95%)';
      strLine := Format('                 Index                 %7.2f mm            ±%7.2f mm'
      ,[cerEDM.dCalibParm[0], dUncertaintyConstant]);
      memCorrectionTerms.Lines.Add(strLine);
      strLine := Format('                 Scale                 %7.2f ppm           ±%7.2f ppm '
      ,[cerEDM.dCalibParm[1], dUncertaintyScale]);
      memCorrectionTerms.Lines.Add(strLine);
    end
    else
    begin
      lblTermHeader.Caption := 'Calibration Parameters          Value                       Uncertainty(95%)';
      strLine := Format(       '                  Index                  %7.2f mm                     ± %7.2f mm'
      ,[cerEDM.dCalibParm[0], dUncertaintyConstant]);
      memCorrectionTerms.Lines.Add(strLine);
      strLine := Format(       '                  Scale                 (%7.2f x 10ˉ³ L) mm       ±(%7.2f x 10ˉ³ L) mm '
      ,[cerEDM.dCalibParm[1], dUncertaintyScale]);
      memCorrectionTerms.Lines.Add(strLine);
      memCorrectionTerms.Lines.Add('                                               where L = length in metres');
    end;

    if isSignificant then
    begin
      for sLoop := 2 to sParameterCount-1 do
      begin
        strLine := Format('       %1d - Cyclic                   %7.2f mm            %7.2f mm'
        ,[sLoop-1, cerEDM.dCalibParm[sLoop], cerEDM.dCalibUncert[sLoop]]);
         memCorrectionTerms.Lines.Add(strLine);
      end;
    end;
    strLine := Format(' The instrument correction has been determined from measurements in the range of %5.0f to %5.0f metres',
    [cerEDM.dMinDistance, cerEDM.dMaxDistance]);
    lblRange.caption := strLine;

    memUncertainty.Lines.CLear;
    strLine :='Minimum standard for the uncertainty of calibration of an EDM instrument';
    if GetLumUnitsFromDB='1' then
      strLine := strLine + Format(' is ±(%6.2f mm + %6.2f ppm) as described in terms of ', [cerEDM.dStdICConstant, cerEDM.dStdICPPM])
    else
      strLine := strLine + Format(' is ±(%6.2f + %6.2f x 10ˉ³ L) mm as described in terms of ', [cerEDM.dStdICConstant, cerEDM.dStdICPPM]);

    dmBase.rxStandard.Locate('Type','E',[]);
    strLine := strLine + dmBase.rxStandard.FieldByName('Description').AsString;
    strLine := Trim(strLine);
    if Copy(strLine,length(strLine),1) <> '.' then
    begin
      strLine := strLine+'.';
    end;
    strLine := strLine + ' All uncertainties are specified at';
    strLine := strLine + Format(' the %2.0f %1s confidence level.',[dmMain.rxbaselineBaselineConfLevel.AsFloat,'%']);
    strLine := strLine + ' A coverage factor of 2 has been used for the uncertainty computations.';

    dUncertaintyConstant := cerEDM.dCalibUncert[0];
    dUncertaintyScale := cerEDM.dCalibUncert[1];

    if GetLUM(dUncertaintyConstant, dUncertaintyScale, 'G') then
    begin
      strLine := strLine +' The Least Uncertainty of Measurement as specified by the Accreditation Authority';
      strLine := strLine + ' has been used for the uncertainty of the instrument correction.';
    end;

    memUncertainty.Lines.Add(strLine);

    if GetLumUnitsFromDB='2' then
      lblUncertainty.Left := 61
    else
      lblUncertainty.Left := 136;

    lblUncertainty.caption := GetUncertaintyWithUnits(dUncertaintyConstant,
      dUncertaintyScale, '%6.2f', '%6.2f',
      'Uncertainty of instrument correction: ');

    for sLoop := 0 to 5 do
    begin
      if (cerEDM.cPass[sLoop] = 'Y') then
        szTest := 'PASS'
      else
        szTest := 'FAIL';

      szRemark := '            ';
      strLine := '';
      strField := Trim(Format('%5.0f',[cerEDM.dDistance[sLoop]]));
      if sLoop = 0 then lblDist1.caption := strField;
      if sLoop = 1 then lblDist2.caption := strField;
      if sLoop = 2 then lblDist3.caption := strField;
      if sLoop = 3 then lblDist4.caption := strField;
      if sLoop = 4 then lblDist5.caption := strField;
      if sLoop = 5 then lblDist6.caption := strField;

      strField := '±'+Trim(Format('%8.2f',[cerEDM.dDistUncert[sLoop]]));
      if sLoop = 0 then lblUncertainty1.caption := strField;
      if sLoop = 1 then lblUncertainty2.caption := strField;
      if sLoop = 2 then lblUncertainty3.caption := strField;
      if sLoop = 3 then lblUncertainty4.caption := strField;
      if sLoop = 4 then lblUncertainty5.caption := strField;
      if sLoop = 5 then lblUncertainty6.caption := strField;

      strField := '±'+Trim(Format('%8.2f',[cerEDM.dMinUncert[sLoop]]));
      if sLoop = 0 then lblStandard1.caption := strField;
      if sLoop = 1 then lblStandard2.caption := strField;
      if sLoop = 2 then lblStandard3.caption := strField;
      if sLoop = 3 then lblStandard4.caption := strField;
      if sLoop = 4 then lblStandard5.caption := strField;
      if sLoop = 5 then lblStandard6.caption := strField;

      strField := Trim(szTest);
      if sLoop = 0 then lblTest1.caption := strField;
      if sLoop = 1 then lblTest2.caption := strField;
      if sLoop = 2 then lblTest3.caption := strField;
      if sLoop = 3 then lblTest4.caption := strField;
      if sLoop = 4 then lblTest5.caption := strField;
      if sLoop = 5 then lblTest6.caption := strField;
    end;

    dmBase.rxStandard.Locate('Type','E',[]);
    if (cerEDM.cPassFail = 'P') then
    begin
      lblStandards.Caption :='This instrument satisfies the '+
      dmBase.rxStandard.FieldByName('Authority').AsString + ' standards.';
    end
    else
    begin
      lblStandards.Caption :='This instrument does not satisfy the '+
      dmBase.rxStandard.FieldByName('Authority').AsString + ' standards.';
    end;

    memAtmos.Lines.Clear;

    if (cMetsFlag='Y') and (not cerEDM.isPulseMeter) then
    begin
      lblV1.Enabled := True;
      lblV2.Enabled := True;
      lblV3.Enabled := True;
      lblV5.Enabled := True;
      lblV6.Enabled := True;
      lblV8.Enabled := True;
      lblV9.Enabled := True;
      lblV10.Enabled := True;
      lblTerm1.Enabled := True;
      lblTerm2.Enabled := True;
      lblTerm3.Enabled := True;

      lblTerm1.Caption := Format('%7.2f',[cerEDM.dC]);
      lblTerm2.Caption := '   '+Format('%6.2f',[cerEDM.dD])+ ' P'+ '   ';
      memAtmos.Top := lblAtmosHeader.Top + 90;
      memAtmos.Height := 17 * 5;
      strLine := 'Where  Td = Dry Temperature(Celsius), P = Barometric pressure(hectapascals)';
      memAtmos.Lines.Add(strLine);
      strLine := '               e = partial Vapour Pressure (hectapascals)';
      memAtmos.Lines.Add(strLine);
      strLine := ' ';
      memAtmos.Lines.Add(strLine);
      strLine := 'The first velocity correction is based on a velocity of light of ';
      strLine := strLine + Format('%9f m/s and on the refractive index formulae recommended by the',[dVelocityLight]);
      strLine := strLine + ' International Association of Geodesy in 1999.';
      memAtmos.Lines.Add(strLine);
    end
    else
    begin
      lblV1.Enabled := False;
      lblV2.Enabled := False;
      lblV3.Enabled := False;
      lblV5.Enabled := False;
      lblV6.Enabled := False;
      lblV8.Enabled := False;
      lblV9.Enabled := False;
      lblV10.Enabled := False;
      lblTerm1.Enabled := False;
      lblTerm2.Enabled := False;
      lblTerm3.Enabled := False;
      memAtmos.Top := lblAtmosHeader.Top + lblAtmosHeader.Height + 20;
      memAtmos.Height := 17 * 2;
      if cerEDM.isPulseMeter and (cMetsFlag='Y')then
      begin
        strLine := 'The atmospheric correction for the Pulse Distance Meter was carried out';
        strLine := strLine + ' according to the correction equation in the operator''s manual.';
      end
      else
      begin
        strLine := 'The atmospheric correction dial of the EDM instrument was set for all';
        strLine := strLine + ' observations. Therefore the observed distances have already been';
        strLine := strLine +' corrected for atmospheric effects.';
      end;
      memAtmos.Lines.Add(strLine);
    end;

    lblLineTraceability.Top := memAtmos.Top + memAtmos.Height + 10;

    PageFooterBand1.Height := 75;
    qrMemoStatement.Height := 20;
    qrMemoStatement.Left := 20;
    qrMemoStatement.Width := 680;
    qrMemoStatement.Alignment := taCenter;
    memAccreditationLogoTitle.Enabled := False;
    memTraceability.Enabled := True;
    memTraceability.Top := lblLineTraceability.Top + lblLineTraceability.Height + 5;
    memProcedure.Top := memTraceability.Top + memTraceability.Height+5;

    memProcedure.Enabled := True;
    memProcedure.Lines.Clear;
    strLine := '';
    for sLoop := 0 to frmJob.memProcedure.Lines.Count-1 do
    begin
      strLine := strLine + frmJob.memProcedure.Lines[sLoop];
      memProcedure.Lines.Add(frmJob.memProcedure.Lines[sLoop]);
    end;
    strLine := Trim(strLine);
    if strLine = '' then
    begin
      memProcedure.Enabled := False;
    end;

    if canCalibrateBaseline then
    begin
      hasImageAccreditation := True;
      if (imageAccreditation.Picture.Bitmap.Empty) or
         (imageAccreditation.Picture.Height = 0) or
         (imageAccreditation.Picture.Width = 0) then
      begin
        hasImageAccreditation := False;
      end;

      if hasImageAccreditation and (frmJob.chkIncludeLogos.Checked) then
      begin
        memTraceability.Lines.Clear;
        memTraceability.Enabled := False;
        memProcedure.Top := lblLineTraceability.Top + lblLineTraceability.Height + 5;
        memAccreditationLogoTitle.Enabled := True;
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
        if ImageAccreditation.Picture.Height < ImageAccreditation.Height then
        begin
          ImageAccreditation.Height := ImageAccreditation.Picture.Height+2;
        end;
        if ImageAccreditation.Picture.Width < ImageAccreditation.Width then
        begin
          ImageAccreditation.Width := ImageAccreditation.Picture.Width+5;
        end;
        memAccreditationLogoTitle.Top := ImageAccreditation.Top+ImageAccreditation.Height;
        qrMemoStatement.Left := ImageAccreditation.Left+ImageAccreditation.Width;
        if memAccreditationLogoTitle.Top < (qrMemoStatement.Top+qrMemoStatement.Height+3) then
        begin
          memAccreditationLogoTitle.Top := qrMemoStatement.Top+qrMemoStatement.Height+3;
        end;
        qrMemoStatement.Width := 500;
        qrMemoStatement.Alignment := taLeftJustify;
        PageFooterBand1.Height := memAccreditationLogoTitle.Top+memAccreditationLogoTitle.Height+2;
      end
      else
      begin
        memTraceability.Enabled := True;
        memTraceability.Lines.Clear;
        strLine := '';
        for sLoop := 0 to frmJob.memTraceability.Lines.Count-1 do
        begin
          strLine := strLine + frmJob.memTraceability.Lines[sLoop];
        end;
        memTraceability.Lines.Add(strLine);
        imageAccreditation.Enabled := False;
        memAccreditationLogoTitle.Enabled := False;
      end;
      lblEntry.Top := memProcedure.Top + memProcedure.height + 18;
    end
    else
    begin
      imageAccreditation.Enabled := False;
      memAccreditationLogoTitle.Enabled := False;
      qrMemoStatement.Height := 16;
      memTraceability.Enabled := True;
      memTraceability.Lines.Clear;
      strLine := '';
      for sLoop := 0 to frmJob.memLegalTraceability.Lines.Count-1 do
      begin
        strLine := strLine +frmJob.memLegalTraceability.Lines[sLoop];
      end;

      memTraceability.Lines.Add(strLine);
      if memProcedure.Enabled then
      begin
        lblEntry.Top := memProcedure.Top + memProcedure.height + 18;
      end
      else
      begin
        lblEntry.Top := memTraceability.Top + memTraceability.height + 18;
      end;
    end;
    lblPosition.Top := lblEntry.Top + lblEntry.height + 18;
    lblSign.Top := lblPosition.Top + lblPosition.height + 18;
    lblDate1.Top := lblSign.Top + lblSign.height + 18;
    lblEntry2.Top := lblEntry.Top;
    lblPosition2.Top := lblPosition.Top;
    lblSign2.Top := lblSign.Top;
    lblEntryLine1.Top := lblEntry.Top+9;
    lblPositionLine1.Top := lblPosition.Top+9;
    lblSignLine1.Top := lblSign.Top+9;
    lblDateLine1.Top := lblDate1.Top+9;
    lblEntryLine2.Top    := lblEntryLine1.Top;
    lblPositionLine2.Top := lblPositionLine1.Top;
    lblSignLine2.Top     := lblSignLine1.Top;
    lblDate2.Top := lblDate1.Top;
    lblDateLine2.Top := lblDateLine1.Top;
    qrlblCopyright.Top := qrmemoStatement.Top + qrmemoStatement.Height+5;
    qrdataDate.Top := qrlblCopyright.Top + qrlblCopyright.Height+2;
  end;
end;


(*******************************************************************************
@procedure  PrintBaselineCertificate;

@description
 Prints the Baseline calibration certificate.
*******************************************************************************)
procedure PrintBaselineCertificate;
var
  sLoop: Integer;                   // Loop counter
  strLine: String;
  dUncertaintyConstant, dUncertaintyScale: Double;
  hasLUM: Boolean;
begin
  with frmBaselineCertificate do
  begin
    imageAccreditation.Height := 64;
    imageAccreditation.Width := 180;
    PageFooterBand1.Height := 75;
    qrMemoStatement.Height := 20;
    qrMemoStatement.Left := 20;
    qrMemoStatement.Width := 680;
    qrMemoStatement.Alignment := taCenter;
    memAccreditationLogoTitle.Enabled := False;
    imageAccreditation.Enabled := False;
    lblTraceability.Enabled := True;
    imageAuthority.Enabled := False;
    memProcedure.Top := lblTraceability.Top + lblTraceability.Height + 5;
    if frmJob.chkIncludeLogos.Checked then
    begin
      imageAuthority.Enabled := True;
      imageAuthority.Picture := frmJob.imageAuthority.Picture;
      imageAccreditation.Picture := frmJob.imageAccreditation2.Picture;
      if not frmJob.imageAccreditation2.Picture.Bitmap.Empty then
      begin
        lblTraceability.Lines.Clear;
        lblTraceability.Enabled := False;
        memProcedure.Top := lblLineTraceability2.Top + lblLineTraceability2.Height + 5;

        imageAccreditation.Enabled := True;
        memAccreditationLogoTitle.Enabled := True;
        imageAccreditation.Picture := frmJob.imageAccreditation2.Picture;
        frmJob.SetQRImageSize(imageAccreditation);

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
        if ImageAccreditation.Picture.Height < ImageAccreditation.Height then
        begin
          ImageAccreditation.Height := ImageAccreditation.Picture.Height+2;
        end;
        if ImageAccreditation.Picture.Width < ImageAccreditation.Width then
        begin
          ImageAccreditation.Width := ImageAccreditation.Picture.Width+5;
        end;
        memAccreditationLogoTitle.Top := ImageAccreditation.Top+ImageAccreditation.Height;
        if memAccreditationLogoTitle.Top < (qrMemoStatement.Top+qrMemoStatement.Height+3) then
        begin
          memAccreditationLogoTitle.Top := qrMemoStatement.Top+qrMemoStatement.Height+3;
        end;
        qrMemoStatement.Left := ImageAccreditation.Left+ImageAccreditation.Width;
        qrMemoStatement.Width := 500;
        qrMemoStatement.Alignment := taLeftJustify;
        PageFooterBand1.Height := memAccreditationLogoTitle.Top+memAccreditationLogoTitle.Height+2;
      end;
    end;
    if lblTraceability.Enabled then
    begin
      strLine := '';
      for sLoop := 0 to frmJob.memTraceability.Lines.Count-1 do
      begin
        strLine := strLine + frmJob.memTraceability.Lines[sLoop];
      end;
      lblTraceability.Lines.Clear;
      lblTraceability.Lines.Add(strLine);
    end;

    lblJobDescription.caption := dmMain.rxjobJobDescription.AsString;
    strLine := Format('This report has been generated by program Baseline %s, developed',[strVersionNumber]);
    strLine := strLine +' by the '+strProgramOwner+'.';
    lblVersionNumber.caption := strLine;

    lblCalibrationDate.caption := DateToStr(dmMain.rxJobJobStartCalibrationDate.AsDateTime);
    lblComputationDate.caption := DateToStr(Date);
    lblObserverName.Caption    := dmMain.rxJobJobObserverName.AsString;
    // lblComputationTime.caption := TimeToStr(Time);
    lblEDMOwner.Caption := dmMain.rxJobJobInst1Owner.AsString;
    lblEDMMake.Caption := dmMain.rxAtInstrumentMakeMakeName.AsString;
    lblEDMModel.Caption := dmMain.rxAtInstrumentModelModelName.AsString;
    lblEDMSerialNumber.Caption := dmMain.rxAtInstrumentInstSerialNo.AsString;
    lblPrismMake.Caption := dmMain.rxToInstrumentMakeMakeName.AsString;
    lblPrismModel.Caption := dmMain.rxToInstrumentModelModelName.AsString;
    lblPrismSerialNumber.Caption := dmMain.rxToInstrumentInstSerialNo.AsString;
    lblPrismConstant.Caption := Format('%5.0f mm',[dmMain.rxToInstrumentInstConstant.AsFloat*1000]);

    lblBaselineName.Caption := dmMain.rxBaselineBaseLineName.AsString;
    lblBaselineAuthority.Caption := dmMain.rxBaselineBaseLineAuthority.AsString;
    lblAuthorityAddress.Caption := dmMain.rxBaselineAuthorityAddress.AsString;
    lblBaselineLocation.Caption := dmMain.rxBaselineBaseLineLocation.AsString;


    dUncertaintyConstant := dBaselineUncertaintyConstant;
    dUncertaintyScale := dBaselineUncertaintyScale;

    hasLUM := GetLUM(dUncertaintyConstant, dUncertaintyScale, 'F');


    lblStandards.Caption :=
      GetUncertaintyWithUnits(dUncertaintyConstant, dUncertaintyScale, '%6.2f',
        '%6.2f', '  The uncertainty of the certified distances is ');
    if hasLUM then
    begin
      lblCoverageFactor.Caption :=
      'The Least Uncertainty of Measurement as specified by the Accreditation Authority'+
      ' has been used for the uncertainty of the certified distances.'+
       ' All uncertainties are specified at the 95% confidence level.'
    end
    else
    begin
      lblCoverageFactor.Caption := 'A coverage factor of 2 has been used for the uncertainty computations. '+
                                 'All uncertainties are specified at the 95% confidence level';
      lblCoverageFactor.Caption := lblCoverageFactor.Caption + ' and have been scaled by the a posteriori variance factor.';
    end;


    memProcedure.Lines.Clear;
    for sLoop := 0 to frmJob.memProcedure.Lines.Count-1 do
    begin
      memProcedure.Lines.Add(frmJob.memProcedure.Lines[sLoop]);
    end;

    lblEntry.Top := memProcedure.Top + memProcedure.height + 18;
    lblPosition.Top := lblEntry.Top + lblEntry.height + 18;
    lblSign.Top := lblPosition.Top + lblPosition.height + 18;
    lblDate1.Top := lblSign.Top + lblSign.Height+18;
    lblEntry2.Top := lblEntry.Top;
    lblPosition2.Top := lblPosition.Top;
    lblSign2.Top := lblSign.Top;
    lblEntryLine1.Top := lblEntry.Top+9;
    lblPositionLine1.Top := lblPosition.Top+9;
    lblSignLine1.Top := lblSign.Top+9;
    lblEntryLine2.Top    := lblEntryLine1.Top;
    lblPositionLine2.Top := lblPositionLine1.Top;
    lblSignLine2.Top     := lblSignLine1.Top;
    lblDateLine1.Top := lblDate1.Top+9;
    lblDate2.Top := lblDate1.Top;
    lblDateLine2.Top := lblDateLine1.Top;
    qrlblCopyright.Top := qrmemoStatement.Top + qrmemoStatement.Height+5;
    qrdataDate.Top := qrlblCopyright.Top + qrlblCopyright.Height+2;
  end;
end;

(*******************************************************************************
@procedure  PrintBaselineCertificate2;

@description
 Prints the Baseline calibration certificate.
*******************************************************************************)
procedure PrintBaselineCertificate2;
var
  sLoop: Integer;
  strLine: String;
  dUncertaintyConstant, dUncertaintyScale: Double;
begin
  with frmBaselineCertificate2 do
  begin
    imageAccreditation.Height := 64;
    imageAccreditation.Width := 180;
    PageFooterBand1.Height := 75;
    qrMemoStatement.Height := 20;
    qrMemoStatement.Left := 20;
    qrMemoStatement.Width := 680;
    qrMemoStatement.Alignment := taCenter;
    memAccreditationLogoTitle.Enabled := False;
    imageAccreditation.Enabled := False;
    lblTraceability.Enabled := True;
    memProcedure.Top := lblTraceability.Top + lblTraceability.Height + 5;
    if frmJob.chkIncludeLogos.Checked then
    begin
      imageAccreditation.Picture := frmJob.imageAccreditation2.Picture;
      if not frmJob.imageAccreditation2.Picture.Bitmap.Empty then
      begin
        lblTraceability.Lines.Clear;
        lblTraceability.Enabled := False;
        memProcedure.Top := lblLineTraceability2.Top + lblLineTraceability2.Height + 5;

        imageAccreditation.Enabled := True;
        memAccreditationLogoTitle.Enabled := True;
        imageAccreditation.Picture := frmJob.imageAccreditation2.Picture;
        frmJob.SetQRImageSize(imageAccreditation);

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
        if ImageAccreditation.Picture.Height < ImageAccreditation.Height then
        begin
          ImageAccreditation.Height := ImageAccreditation.Picture.Height+2;
        end;
        if ImageAccreditation.Picture.Width < ImageAccreditation.Width then
        begin
          ImageAccreditation.Width := ImageAccreditation.Picture.Width+5;
        end;
        memAccreditationLogoTitle.Top := ImageAccreditation.Top+ImageAccreditation.Height;
        if memAccreditationLogoTitle.Top < (qrMemoStatement.Top+qrMemoStatement.Height+3) then
        begin
          memAccreditationLogoTitle.Top := qrMemoStatement.Top+qrMemoStatement.Height+3;
        end;
        qrMemoStatement.Left := ImageAccreditation.Left+ImageAccreditation.Width;
        qrMemoStatement.Width := 500;
        qrMemoStatement.Alignment := taLeftJustify;
        PageFooterBand1.Height := memAccreditationLogoTitle.Top+memAccreditationLogoTitle.Height+2;
      end;
    end;
    if lblTraceability.Enabled then
    begin
      strLine := '';
      for sLoop := 0 to frmJob.memTraceability.Lines.Count-1 do
      begin
        strLine := strLine + frmJob.memTraceability.Lines[sLoop];
      end;
      lblTraceability.Lines.Clear;
      lblTraceability.Lines.Add(strLine);
    end;

    lblJobDescription.caption := dmMain.rxjobJobDescription.AsString;
    strLine := Format('This report has been generated by program Baseline %s, developed',[strVersionNumber]);
    strLine := strLine +' by the '+strProgramOwner+'.';
    lblVersionNumber.caption := strLine;

    lblCalibrationDate.caption := DateToStr(dmMain.rxJobJobStartCalibrationDate.AsDateTime);
    lblComputationDate.caption := DateToStr(Date);
    lblObserverName.Caption    := dmMain.rxJobJobObserverName.AsString;
    lblEDMOwner.Caption := dmMain.rxJobJobInst1Owner.AsString;
    lblEDMMake.Caption := dmMain.rxAtInstrumentMakeMakeName.AsString;
    lblEDMModel.Caption := dmMain.rxAtInstrumentModelModelName.AsString;
    lblEDMSerialNumber.Caption := dmMain.rxAtInstrumentInstSerialNo.AsString;
    lblPrismMake.Caption := dmMain.rxToInstrumentMakeMakeName.AsString;
    lblPrismModel.Caption := dmMain.rxToInstrumentModelModelName.AsString;
    lblPrismSerialNumber.Caption := dmMain.rxToInstrumentInstSerialNo.AsString;
    lblPrismConstant.Caption := Format('%5.0f mm',[dmMain.rxToInstrumentInstConstant.AsFloat*1000]);

    lblBaselineName.Caption := dmMain.rxBaselineBaseLineName.AsString;
    lblBaselineAuthority.Caption := dmMain.rxBaselineBaseLineAuthority.AsString;
    lblBaselineLocation.Caption := dmMain.rxBaselineBaseLineLocation.AsString;

    dmBase.rxStandard.Locate('Type','F',[]);
    if dBaselineUncertaintyConstant < dmBase.rxStandard.FieldByName('StandardConstant').AsFloat then
       dUncertaintyConstant := dmBase.rxStandard.FieldByName('StandardConstant').AsFloat
    else
       dUncertaintyConstant := dBaselineUncertaintyConstant;

    if dBaselineUncertaintyScale < dmBase.rxStandard.FieldByName('StandardScale').AsFloat then
       dUncertaintyScale := dmBase.rxStandard.FieldByName('StandardScale').AsFloat
    else
       dUncertaintyScale := dBaselineUncertaintyScale;

    lblStandards.Caption :=
      GetUncertaintyWithUnits(dUncertaintyConstant, dUncertaintyScale, '%6.2f',
        '%6.2f', '  The uncertainty of the certified distances is ');

    memProcedure.Lines.Clear;
    for sLoop := 0 to frmJob.memProcedure.Lines.Count-1 do
      memProcedure.Lines.Add(frmJob.memProcedure.Lines[sLoop]);

    lblEntry.Top := memProcedure.Top + memProcedure.height + 18;
    lblPosition.Top := lblEntry.Top + lblEntry.height + 18;
    lblSign.Top := lblPosition.Top + lblPosition.height + 18;
    lblDate1.Top := lblSign.Top + lblSign.height + 18;
    lblEntry2.Top := lblEntry.Top;
    lblPosition2.Top := lblPosition.Top;
    lblSign2.Top := lblSign.Top;
    lblEntryLine1.Top := lblEntry.Top+9;
    lblPositionLine1.Top := lblPosition.Top+9;
    lblSignLine1.Top := lblSign.Top+9;
    lblEntryLine2.Top    := lblEntryLine1.Top;
    lblPositionLine2.Top := lblPositionLine1.Top;
    lblSignLine2.Top     := lblSignLine1.Top;
    lblDateLine1.Top := lblDate1.Top+9;
    lblDate2.Top := lblDate1.Top;
    lblDateLine2.Top := lblDateLine1.Top;
    qrlblCopyright.Top := qrmemoStatement.Top + qrmemoStatement.Height+5;
    qrdataDate.Top := qrlblCopyright.Top + qrlblCopyright.Height+2;
  end;
end;


(*******************************************************************************
@function RightAlign(strField: String; sWidth: Integer): String;

@description
 Aligns a string to the right.
*******************************************************************************)
function RightAlign(strField: String; sWidth: Integer): String;
begin
  while length(strField) < sWidth do
  begin
    strField := ' '+strField;
  end;
  Result := strField;
end;

(*******************************************************************************
@procedure PrintAccreditationHeader

@description
 Prints the accreditation header.
*******************************************************************************)
procedure PrintAccreditationHeader;
var
 i: Integer;
 strLine: String;
begin
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ------------------------------------------------------------------------------');
  writeln (pfRPTFile,' |                                                                             |');
  writeln (pfRPTFile,' |                            ACCREDITATION                                    |');
  writeln (pfRPTFile,' |                                                                             |');
  writeln (pfRPTFile,' |-----------------------------------------------------------------------------|');
  writeln (pfRPTFile,' |                                                                             |');
  strLine := '';
  for i := 0 to frmJob.memProcedure.Lines.Count-1 do
  begin
    strLine := strLine+frmJob.memProcedure.Lines[i];
  end;
  frmJob.memPrint.Lines.Clear;
  frmJob.memPrint.Lines.Add(strLine);
  Application.ProcessMessages;
  for i := 0 to frmJob.memPrint.Lines.Count-1 do
  begin
    strLine := ' | '+frmJob.memPrint.Lines[i];
    while length(strLine) < 78 do
    begin
      strLine := strLine+ ' ';
    end;
    strLine := strLine + ' |';
    writeln (pfRPTFile,strLine);
  end;

  writeln (pfRPTFile,' |                                                                             |');

  strLine := '';
  for i := 0 to frmJob.memTraceability.Lines.Count-1 do
  begin
    strLine := strLine+frmJob.memTraceability.Lines[i];
  end;
  frmJob.memPrint.Lines.Clear;
  frmJob.memPrint.Lines.Add(strLine);
  Application.ProcessMessages;

  for i := 0 to frmJob.memPrint.Lines.Count-1 do
  begin
    strLine := ' | '+frmJob.memPrint.Lines[i];
    while length(strLine) < 78 do
    begin
      strLine := strLine+ ' ';
    end;
    strLine := strLine + ' |';
    writeln (pfRPTFile,strLine);
  end;
 writeln (pfRPTFile,' |                                                                             |');
  writeln (pfRPTFile,' ------------------------------------------------------------------------------');
end;

(*******************************************************************************
@procedure LinesFromSentence( strSentence: String; sWidth: Integer; var aLines: TStringList);

@description
 Converts a long string to a number of lines containing no more than a given
 number of characters
********************************************************************************)
procedure LinesFromSentence(
  strSentence: String;
  sWidth: Integer;
  var aLines: TStringList);
var
  I,J : Integer;
  strLine: String;
  doSentence: Boolean;
  doLine: Boolean;
begin
  aLines.Clear;
  strSentence := Trim(strSentence);
  if length(strSentence) <= sWidth then
  begin
    if length(strSentence) < sWidth then
    begin
      for I := length(strSentence) to sWidth-1 do
      begin
        strSentence := strSentence + ' ';
      end;
    end;
    aLines.Add(strSentence);
  end
  else
  begin
    doSentence := True;
    while doSentence do
    begin
      I := sWidth+1;
      strLine := Copy(strSentence,1,I);
      doLine := True;
      while doLine do
      begin
        if Copy(strLine,I,1) = ' ' then
        begin
          doLine := False;
        end;
        Dec(I);
        if I = 0 then
        begin
          doLine := False;
          I := sWidth;
        end;
      end;
      strLine := Copy(strLine,1,I);
      if length(strLine) < sWidth then
      begin
        for J := length(strLine) to sWidth-1 do
        begin
         strLine := strLine + ' ';
        end;
      end;

      aLines.Add(strLine);
      strSentence := Copy(strSentence,I+1,length(strSentence));
      strSentence := TrimLeft(strSentence);
      if length(strSentence) <= sWidth then
      begin
        if length(strSentence) < sWidth then
        begin
          for I := length(strSentence) to sWidth-1 do
          begin
            strSentence := strSentence + ' ';
          end;
        end;
        aLines.Add(strSentence);
        doSentence := False;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure AtmosphericCorrectionDI3000( var pre: PRE_L);

@description
 Atmospheric correction for a DI3000 instrument
********************************************************************************)
procedure AtmosphericCorrectionDI3000 (
    var pre: PRE_L);     // ptr to pre-adj statistics
var
  sLineCount:            Integer;     // Number of lines
  sLoop:                 Integer;     // Loop counter
  sCount:                Integer;     // counter
  dY:                    Double;       // Temporary value
  dA:                    Double;       // Term used in equation
  dB:                    Double;       // Term used in equation
  dC:                    Double;       // Term used in equation
  dE:                    Double;       // Term used in equation
  dK:                    Double;       // Term used in equation
  deWater:               Double;       // Saturation vap pres over water
  deIce:                 Double;       // Saturation vap pres over ice
  dDist:                 Double;       // Mean observed distance
  dDryTemp:              Double;       // Dry temperature
  dWetTemp:              Double;       // Wet temperature
  dHumidity:             Double;       // Humidity
  dPressure:             Double;       // Pressure in millibars
  dSumE:                 Double;       // Sum of partial water vap pressure
  dSumDryTemp:  Double;
  dSumWetTemp:  Double;
  dSumHumidity: Double;
  dSumPressure: Double;
begin
  dSumE := 0.0;
  dSumDryTemp  := 0.0;
  dSumWetTemp  := 0.0;
  dSumHumidity := 0.0;
  dSumPressure := 0.0;
  sLineCount := dmMain.rxJMeasure.RecordCount;

  pre.dPartialWaterVapPres := 0.0;
  pre.dMeanHumidity        := 0.0;
  pre.dMeanDryTemp         := 0.0;
  pre.dMeanWetTemp         := 0.0;
  pre.dMeanPressure        := 0.0;
  cMetsFlag            := 'N';
  pre.cHumidityType        := 'R';

  for sLoop:=0 to sLineCount-1 do
  begin
    line[sLoop].dAtmosphericCorrection := 0.0;
  end;

  sCount := 0;
  for sLoop := 0  to sLineCount-1 do
  begin
    if (line[sLoop].cMetsFlag = 'Y') then
    begin
      dSumDryTemp  := dSumDryTemp + line[sLoop].dDryTemp;
      dSumWetTemp  := dSumWetTemp + line[sLoop].dWetTemp;
      dSumPressure := dSumPressure + line[sLoop].dPressure;
      cMetsFlag:='Y';
      Inc(sCount);
    end;
  end;
  if (cMetsFlag = 'Y') then
  begin
    pre.dMeanDryTemp  := dSumDryTemp  / sCount;
    pre.dMeanWetTemp  := dSumWetTemp  / sCount;
    pre.dMeanPressure := dSumPressure / sCount;

    //**************************************************************************
    // Compute partial water vapor pressure
    //**************************************************************************
    sCount:=0;
    for sLoop:=0 to sLineCount-1 do
    begin
      if (line[sLoop].cMetsFlag = 'Y') then
      begin
        dDist       := line[sLoop].dMeanObsDistance;
        dDryTemp    := line[sLoop].dDryTemp;
        dWetTemp    := line[sLoop].dWetTemp;
        dHumidity   := line[sLoop].dHumidity;
        dPressure   := line[sLoop].dPressure;

         Inc(sCount);
        //***************************************
        // Compute partial water vapour pressure
        //***************************************
        if (line[sLoop].cHumidityType ='W') then
        begin
          pre.cHumidityType := 'W';
          if (dWetTemp > 0.0) then
          begin
            dY := (7.5 * dWetTemp / (237.3 + dWetTemp)) + 0.7858;
            deWater := Power(10, dY);
            dE := deWater - 0.000662 * dPressure * ( dDryTemp - dWetTemp);
            dHumidity := dE * 100.000 / deWater;
          end
          else
          begin
            dY := (9.5 * dWetTemp / (265.5 + dHumidity)) + 0.7858;
            deIce := Power(10, dY);
            dE := deIce - 0.000583 * dPressure * ( dDryTemp - dWetTemp);
            dHumidity := dE * 100.000 / deIce;
          end;
          line[sLoop].dHumidity := dHumidity;
        end
        else
        begin
           dY := (7.5 * dDryTemp / (237.3 + dDryTemp)) + 0.7858;
           deWater := Power(10.000, dY);
           dE := deWater * dHumidity /100.000;
        end;

        dSumHumidity := dSumHumidity + line[sLoop].dHumidity;
        dSumE := dSumE + dE;

        //***************************************
        // Compute first velocity correction
        //***************************************
        dA := 281.5 -0.29035 * dPressure / (1+ 0.00366 * dDryTemp);
        dB := 11.27 * dHumidity / (100 *(273.16+dDryTemp));
        dC := (7.5 * dDryTemp)/(237.3+dDryTemp)+0.7857;
        dB := Power(dB, dC);
        dK := dA + dB;
        line[sLoop].dAtmosphericCorrection := dK * dDist /1000000;
      end;
    end;
    pre.dPartialWaterVapPres := dSumE/sCount;
    pre.dMeanHumidity := dSumHumidity / sCount;
  end;
end;

(*******************************************************************************
@function CheckBaselineDesign( sLineCount: Integer): Boolean;

@description
 Checks if a baseline has been properly designed.
********************************************************************************)
function CheckBaselineDesign (
    sLineCount: Integer): Boolean;      // Number of lines
var
   sLoop1, sLoop2: Integer;             // Loop counter
   dDistance: DOUBLE;
   doContinue1, doContinue2, hasDesignError: Boolean;
begin
  sLoop1 := 0;
  doContinue1 := True;
  hasDesignError := False;
  while doContinue1 do
  begin
    if sLoop1 < sLineCount-2 then
    begin
      dDistance := line[sLoop1].dTrueDistance;
      Inc(sLoop1);
      sLoop2 := sLoop1;
      doContinue2 := True;
      while doContinue2 do
      begin
        if dDistance = line[sLoop2].dTrueDistance then
        begin
          hasDesignError := True;
          doContinue1 := False;
          doContinue2 := False;
        end;
        Inc(sLoop2);
        if sLoop2 = sLineCount then
        begin
          doContinue2 := False;
        end;
      end;
    end
    else
    begin
      doContinue1 := False;
    end;
  end;
  Result := hasDesignError;
end;

(*******************************************************************************
@procedure PrintJobInformation;

@description
 Prints job information.
********************************************************************************)
procedure PrintJobInformation;
var
  sJ: Integer;
  strLine: String;
begin
  strLine := ' ';
  for sJ :=0 to 82 do
  begin
     strLine := strLine +'-';
  end;
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' |                                                                                  |');
  writeln (pfRPTFile,' |                                BASELINE DETAILS                                  |');
  writeln (pfRPTFile,' |                                                                                  |');
  strLine := ' |';
  for sJ := 0 to 81 do
  begin
    strLine := strLine+'-';
  end;
  strLine := strLine + '|';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' |                             |                                                    |');
  with dmMain.rxBaseline do
  begin
    writeln (pfRPTFile,Format(' | Baseline name               | %-50s |',[FieldByName('BaseLineName').AsString]));
    writeln (pfRPTFile,Format(' | Baseline location           | %-50s |',[FieldByName('BaseLineLocation').AsString]));
    writeln (pfRPTFile,Format(' | Baseline authority          | %-50s |',[FieldByName('BaseLineAuthority').AsString]));
    writeln (pfRPTFile,Format(' | Authority Address           | %-50s |',[FieldByName('AuthorityAddress').AsString]));
    writeln (pfRPTFile,Format(' | Baseline calibration date   | %-50s |',[DateToStr(FieldByName('BaseLineCalibrationDate').AsDateTime)]));
    writeln (pfRPTFile,Format(' | Baseline reference          | %-50s |',[FieldByName('BaseLineCalibrationRef').AsString]));
  end;
  writeln (pfRPTFile,' |                             |                                                    |');
  strWeatherCondition := Copy(dmMain.rxJob.FieldByName('JobWeatherConditions').AsString,1,30);
  strLine := ' -';
  for sJ :=0 to 82 do
  begin
    strLine := strLine+ '-';
  end;
  writeln(pfRPTFile,strLine);
end;

(*******************************************************************************
@procedure PrintInstrumentParameters;

@description
 Prints instrument parameters.
********************************************************************************)
procedure PrintInstrumentParameters;
var
  sJ: Integer;
  strLine: string;
begin
  writeln (pfRPTFile,' ');
  writeln (pfRPTFile,' ');
  strLine :=' -';
  for sJ := 0 to 58 do
   begin
     strLine := strLine+'-';
   end;
  writeln (pfRPTFile,strLine);

  writeln (pfRPTFile,' |                                                          |');
  writeln (pfRPTFile,' |                  INSTRUMENT PARAMETERS                   |');
  writeln (pfRPTFile,' |                                                          |');
  strLine :=' |';
  for sJ := 0 to 57 do
   begin
     strLine := strLine+'-';
   end;
  strLine := strLine+'|';
  writeln (pfRPTFile,strLine);
  writeln (pfRPTFile,' |                                         |                |');

  if dmMain.rxAtInstrumentModelisPulseMeter.AsBoolean then
  begin
    writeln (pfRPTFile,' |  Pulse Distance Meter                   |  YES           |');
  end;

  writeln (pfRPTFile,Format(' |  EDM additive constant                  | %7.3f        |',
    [dmMain.rxAtInstrumentInstConstant.AsFloat]));
  writeln (pfRPTFile,Format(' |  Reflector additive constant            | %7.3f        |',
    [dmMain.rxToInstrumentInstConstant.AsFloat]));
  writeln (pfRPTFile,Format(' |  Unit length in metres                  | %9.5f      |',
    [dmMain.rxAtInstrumentModelModelUnitLength.AsFloat]));
  writeln (pfRPTFile,Format(' |  Modulation frequency in Hertz          | %9.0f      |',
    [dmMain.rxAtInstrumentModelModelModFreq.AsFloat]));
  writeln (pfRPTFile,Format(' |  Carrier wavelength in nanometres       | %7.3f        |',
    [dmMain.rxAtInstrumentModelModelCarrierWaveLength.AsFloat]));
  writeln (pfRPTFile,Format(' |  Manufacturer''s EDM std dev constant    | %7.3f        |',
    [dmMain.rxAtInstrumentModelModelManufStdDevConst.AsFloat]));
  writeln (pfRPTFile,Format(' |  Manufacturer''s EDM std dev PPM         | %7.3f        |',
    [dmMain.rxAtInstrumentModelModelManufStdDevPPM.AsFloat]));
  writeln (pfRPTFile,Format(' |  Std dev centring of instruments        |  %7.4f       |',
    [dmMain.rxJobJobInstCentringStdDev.AsFloat]));
  if (dmMain.rxJMeasureMeasMetFlag.AsString[1] = 'Y') then
  begin
    writeln (pfRPTFile,' |  Mets dial is not set                   |                |');
  end
  else
  begin
    writeln (pfRPTFile,' |  Mets dial is set                       |                |');
  end;

  writeln (pfRPTFile,Format(' |  Thermometer correction in Celsius      |  %7.3f       |',
    [dmMain.rxJobJobTempCorr.AsFLoat]));
  writeln (pfRPTFile,Format(' |  Barometer correction in hectapascals   |  %7.3f       |',
    [dmMain.rxJobJobPressureCorr.AsFLoat]));
  writeln (pfRPTFile,' |                                         |                |');
  strLine := ' ';
  for sJ := 0 to 59 do
   begin
     strLine := strLine+'-';
   end;
  writeln (pfRPTFile,strLine);
end;

(*******************************************************************************
@function EDMPageHeader( sPage: Integer; sTotalPages: Integer): Integer;

@description
 Print the page header for a report.
********************************************************************************)
function EDMPageHeader(
      sPage: Integer;                     // Page number
      sTotalPages: Integer): Integer;     // Total pages
var
  dPrismConstant: Double;
begin
  if (sPage > 1) then
  begin
    writeln(pfRPTFile,Chr(12));                      // Next page     */
  end;

  with dmMain do
  begin
    writeln(pfRPTFile,' ');
    writeln(pfRPTFile,Format('                  Job Identification: %-22s        Page %d of %d',
     [rxJob.FieldByName('JobDescription').AsString, sPage, sTotalPages]));

    if (rxJob.FieldByName('JobType').AsString = 'B') then
    begin
      writeln(pfRPTFile,' ');
      writeln(pfRPTFile,
      Format('            CALIBRATION OF BASELINE: %s',[rxBaseline.FieldByName('BaseLineName').AsString]));

      writeln(pfRPTFile,
      Format('            CALIBRATION PROGRAM: BASELINE %s',[strVersionNumber]));
      writeln(pfRPTFile,'            '+Uppercase(strProgramOwner));
    end
    else
    begin
      writeln(pfRPTFile,' ');
      writeln(pfRPTFile,
      Format('            EDM INSTRUMENT CALIBRATION PROGRAM: BASELINE %s',[strVersionNumber]));
      writeln(pfRPTFile,'            '+Uppercase(strProgramOwner));
    end;
    writeln(pfRPTFile,' ');

    writeln (pfRPTFile,Format(' Baseline name       : %-22s   Computation Date : %-22s',
    [rxBaseline.FieldByName('BaseLineName').AsString,dateToStr(Date)]));

    writeln (pfRPTFile,Format(' Date of calibration : %-22s   Computation Time : %-22s',
    [DateToStr(rxjob.FieldByName('JobStartCalibrationDate').AsDateTime),TimeToStr(Time)]));

    writeln(pfRPTFile,' ');

    writeln (pfRPTFile,Format(' EDM Instrument make  : %-18s Reflector make       : %s',
    [rxAtInstrumentMake.FieldByName('MakeName').AsString,
     rxToInstrumentMake.FieldByName('MakeName').AsString]));

    writeln (pfRPTFile,Format(' EDM Instrument model : %-18s Reflector model      : %s',
    [rxAtInstrumentModel.FieldByName('ModelName').AsString,
     rxToInstrumentModel.FieldByName('ModelName').AsString]));

    writeln (pfRPTFile,Format(' Serial number        : %-18s Serial number        : %s',
    [rxAtInstrument.FieldByName('InstSerialNo').AsString,
     rxToInstrument.FieldByName('InstSerialNo').AsString]));

    if rxToInstrument.FieldByName('InstConstant').isNull then
    begin
      dPrismConstant := 0;
    end
    else
    begin
      dPrismConstant := rxToInstrument.FieldByName('InstConstant').AsFloat;
    end;

    if dPrismConstant = 0 then
    begin
      writeln (pfRPTFile,Format(' Instrument owner     : %-22s',[rxJob.FieldByName('JobInst1Owner').AsString]));
     end
    else
    begin
      dPrismConstant := dPrismConstant*1000;
      writeln (pfRPTFile,Format(' Instrument owner     : %-18s Reflector Constant   : %5.0f mm',
      [rxJob.FieldByName('JobInst1Owner').AsString, dPrismConstant]));
    end;
  end;
  writeln(pfRPTFile,' ');
  Inc(sPage);
  Result := sPage;
end;

(*******************************************************************************
@procedure  PrintLegalDistances;

@description
 Print legal baseline distances.
********************************************************************************)
procedure  PrintLegalDistances;
var
  fsFlag: Boolean;
  sPillarID: Integer;
  strFromPillarNo, strToPillarNo: String;
begin

  with dmBase.rxFilteredDistance do
  begin
    if RecordCount > 0 then
    begin
      writeln(pfRPTFile,
      ' --------------------------------------------------------------------');
      writeln(pfRPTFile,
      '           SUMMARY OF CERTIFIED BASELINE DISTANCES');
      writeln(pfRPTFile,
      ' --------------------------------------------------------------------');
      writeln(pfRPTFile,
      ' PILLAR NUMBERS');
      writeln(pfRPTFile,
      ' -------------- ');
      writeln(pfRPTFile,
      ' FROM     TO       DISTANCE      UNCERTAINTY');
      writeln(pfRPTFile,
      '                    metres         metres');
      writeln(pfRPTFile,
      ' -----   -----     ---------     -----------');
      First;
      while not EOF do
      begin
        sPillarID := FieldByName('PillarFromID').AsInteger;
        dmBase.rxPillar.Locate('PillarID',IntToStr(sPillarID),[]);
        strFromPillarNo := dmBase.rxPillar.FieldByName('PillarNo').AsString;

        sPillarID := FieldByName('PillarToID').AsInteger;
        dmBase.rxPillar.Locate('PillarID',IntToStr(sPillarID),[]);
        strToPillarNo := dmBase.rxPillar.FieldByName('PillarNo').AsString;

        writeln(pfRPTFile,
        Format(' %5s   %5s     %9.4f     ±%9.5f',
         [strFromPillarNo, strToPillarNo,
         FieldByName('DistLegalDistance').AsFloat,
         FieldByName('DistSigma').AsFloat]));
       Next;
      end;
    end;
  end;

  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');
  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,
  '  All certified distances are on the same horizontal plane at a reference');
  writeln(pfRPTFile,
  Format('  height of %8.3f metres and on the same vertical plane running through',
  [dmMain.rxBaselineBaseLegalHeight.AsFloat]));
  writeln(pfRPTFile,'  the first and last stations.');

  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,' ');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');
  writeln(pfRPTFile,
  '                   SUMMARY OF PILLAR INFORMATION');
  writeln(pfRPTFile,
  ' ------------------------------------------------------------------------------');
  writeln(pfRPTFile,' ');
  with dmBase.rxmemPillar do
  begin
    First;
    if ((FieldByName('PillarLatitude').isNull) or
       (FieldByName('PillarLongitude').isNull)) or
       ((FieldByName('PillarLatitude').AsFloat = 0) and
        (FieldByName('PillarLongitude').AsFloat = 0)) then
    begin
      fsFlag := TRUE;
      writeln(pfRPTFile,
      ' PILLAR                            UNCERTAINTY');
      writeln(pfRPTFile,
      ' NUMBER      OFFSET     HEIGHT         HEIGHT');
      writeln(pfRPTFile,
      '             metres     metres         metres');
      writeln(pfRPTFile,
      ' ------    --------  ---------     -----------');
    end
    else
    begin
      fsFlag := FALSE;
      writeln(pfRPTFile,
      ' PILLAR                                                                UNCERTAINTY');
      writeln(pfRPTFile,
      ' NUMBER     LATITUDE           LONGITUDE        OFFSET    HEIGHT       HEIGHT');
      writeln(pfRPTFile,
      ' ------  -----------------  -----------------  --------  ---------     ----------');
    end;
    while not EOF do
    begin
      if fsFlag then
      begin
        writeln(pfRPTFile,Format('  %5s    %8.4f  %9.4f     ±%8.4f',
        [FieldByName('PillarNo').AsString, FieldByName('HorizOffset').AsFloat,
        FieldByName('PillarHeight').AsFloat, FieldByName('StdDevHeight').AsFloat]));
      end
      else
      begin
        dmbase.vedtLatitude.Value := FieldByName('PillarLatitude').AsFloat;
        dmbase.vedtLongitude.Value := FieldByName('PillarLongitude').AsFloat;

        writeln(pfRPTFile,Format('  %5s   %15s  %15s  %8.4f  %9.4f     ±%8.4f',
        [FieldByName('PillarNo').AsString, dmBase.vedtLatitude.text,
        dmBase.vedtLongitude.text,FieldByName('HorizOffset').AsFloat,
        FieldByName('PillarHeight').AsFloat, FieldByName('StdDevHeight').AsFloat]));
     end;
     Next;
   end;
  end;
end;

(*******************************************************************************
@procedure FillMeasurementsList;

@description
  All observations of a selected job are stored into the following temporary tables:
  1. dmBase.rxmemMeasure: Contains information for each set of observations.
     Each set contains the observations between two selected pillars.                               //
  2. dmBase.rxmemObservation: Contains all observations between the pillars.
*******************************************************************************)
procedure FillMeasurementsList;
var
  strHumidityType: String;
  dMeanTemp, dMeanPressure, dMeanHumidity: Double;
  dProgressCount: Double;
  dProgressIncrement: Double;
  sProgressCount: Integer;
begin

  dmBase.rxmemMeasure.EmptyTable;
  dmBase.rxmemObservation.EmptyTable;
  with dmMain.rxJMeasure do
  begin
    sProgressCount := 25;
    dProgressCount := 25;
    dProgressIncrement:= 45/RecordCount;  // approximately 45% of total execution time
    First;
    while not EOF do
    begin
      frmProgress.pbarProgress.Position := sProgressCount;
      dProgressCount := dProgressCount + dProgressIncrement;
      sProgressCount := Trunc(dProgressCount);

      dMeanTemp := FieldByName('MeasDryTemp').AsFloat;
      if not FieldByName('MeasDryTemp2').isNull then
      begin
        dMeanTemp := (FieldByName('MeasDryTemp').AsFloat+FieldByName('MeasDryTemp2').AsFloat)/2.0;
      end;

      dMeanHumidity := FieldByName('MeasHumidity').AsFloat;
      if not FieldByName('MeasHumidity2').isNull then
      begin
        dMeanHumidity := (FieldByName('MeasHumidity').AsFloat+FieldByName('MeasHumidity2').AsFloat)/2.0;
      end;

      dMeanPressure:= FieldByName('MeasPressure').AsFloat;
      if not FieldByName('MeasPressure2').isNull then
      begin
        dMeanPressure := (FieldByName('MeasPressure').AsFloat+FieldByName('MeasPressure2').AsFloat)/2.0;
      end;

      if FieldByName('MeasHumidityType').isNull then
      begin
        strHumidityType := 'D';
      end
      else
      begin
       strHumidityType := Trim(FieldByName('MeasHumidityType').AsString);
      end;
      if strHumidityType = '' then strHumidityType := 'D';

      dmBase.rxmemMeasure.Append;
      dmBase.rxmemMeasure.FieldByName('MeasureID').Value := FieldByName('MeasID').Value;
      dmBase.rxmemMeasure.FieldByName('AtPillarID').Value := FieldByName('MeasAtPillarID').Value;
      dmBase.rxmemMeasure.FieldByName('ToPillarID').Value := FieldByName('MeasToPillarID').Value;
      dmBase.rxmemMeasure.FieldByName('AtHeight').Value := FieldByName('MeasAtHeight').Value;
      dmBase.rxmemMeasure.FieldByName('ToHeight').Value := FieldByName('MeasToHeight').Value;
      dmBase.rxmemMeasure.FieldByName('DryTemp').AsFloat := dMeanTemp;
      dmBase.rxmemMeasure.FieldByName('Humidity').AsFloat := dMeanHumidity;
      dmBase.rxmemMeasure.FieldByName('HumidityType').AsString := strHumidityType;
      dmBase.rxmemMeasure.FieldByName('Pressure').AsFloat := dMeanPressure;
      dmBase.rxmemMeasure.FieldByName('MetsFlag').AsString := FieldByName('MeasMetFlag').AsString[1];
      dmBase.rxmemMeasure.Post;

      FillrxEDMObservationsList(FieldByName('MeasID').AsInteger);

      Next;
    end;
  end;
end;


(*******************************************************************************
@function GetCopyRightReport: string;

@description
  Load Copyright for the reports
*******************************************************************************)
function GetCopyRightReport: string;
var
  strCode: string;
  strCopyRight: string;
begin
  strCode := 'Copyright Report';
  with dmBase.rxMethod do
  begin
    if Locate('Method',strCode,[]) then
    begin
      strCopyRight := FieldByName('Description').AsString;
      if strCopyRight = '' then
      begin
        strCopyright := '© '+GetVerifyingAuthority+' '+ IntToStr(YearOf(Date));
      end;
    end
    else
    begin
      strCopyright := '© '+GetVerifyingAuthority+' '+ IntToStr(YearOf(Date));
      Append;
      FieldByName('Method').AsString := strCode;
      FieldByName('Description').AsString := strCopyRight;
      Post;
    end;
  end;
  Result := strCopyRight;
end;

(*******************************************************************************
@function GetProgramOwner: string

@description
  Get Program Owner
*******************************************************************************)
function GetProgramOwner: string;
var
  strCode: string;
  strProgramOwner: string;
begin
  strCode := 'Program Owner';
  with dmBase.rxMethod do
  begin
    if Locate('Method',strCode,[]) then
    begin
      strProgramOwner := FieldByName('Description').AsString;
      if strProgramOwner = '' then
      begin
       strProgramOwner:= GetVerifyingAuthority;
      end;
    end
    else
    begin
      strProgramOwner := GetVerifyingAuthority;
      Append;
      FieldByName('Method').AsString := strCode;
      FieldByName('Description').AsString := strProgramOwner;
      Post;
    end;
  end;
  Result := strProgramOwner;
end;

(*******************************************************************************
@function GetVerifyingAuthority: string;

@description
  Get Program Owner
*******************************************************************************)
function GetVerifyingAuthority: string;
var
  strCode: string;
  strAuthority: string;
begin
  strCode :=  'Authority';
  strAuthority := '';
  with dmBase.rxMethod do
  begin
    if Locate('Method',strCode,[]) then
    begin
      strAuthority := FieldByName('Description').AsString;
    end;
  end;

  if strAuthority = '' then
  begin
    strAuthority := 'Western Australian Land Information Agency';
  end;
  Result := strAuthority;
end;

(*******************************************************************************
@procedure SaveCopyRightReport(strCopyright: string);

@description
  Save Copyright for the reports
*******************************************************************************)
procedure SaveCopyRightReport( strCopyRight: string);
var
  strCode: string;
begin
  strCode := 'Copyright Report';
  if strCopyRight = '' then
  begin
    strCopyright := '© '+GetVerifyingAuthority+' '+ IntToStr(YearOf(Date));
  end;
  with dmBase.rxMethod do
  begin
    if Locate('Method',strCode,[]) then
    begin
      Edit;
    end
    else
    begin
      Append;
      FieldByName('Method').AsString := strCode;
    end;
    FieldByName('Description').AsString := strCopyRight;
    Post;
  end;
end;

(*******************************************************************************
@procedure SaveProgramOwner( strProgramOwner: string);

@description
Save Program Owner
*******************************************************************************)
procedure SaveProgramOwner( strProgramOwner: string);
var
  strCode: string;
begin
  strCode := 'Program Owner';
  if strProgramOwner = '' then
  begin
   strProgramOwner:= GetVerifyingAuthority;
  end;
  with dmBase.rxMethod do
  begin
    if Locate('Method',strCode,[]) then
    begin
      Edit;
    end
    else
    begin
      Append;
      FieldByName('Method').AsString := strCode;
    end;
    FieldByName('Description').AsString := strProgramOwner;
    Post;
  end;
end;

function GetLUM(
  var dUncertaintyConstant: Double;
  var dUncertaintyScale: Double;
  strCalibType: string): Boolean;
var
   SavePlace: TBookmark;
begin
  Result := False;
  with dmBase.rxStandard do
  begin
    SavePlace := GetBookmark;
    Locate('Type',strCalibType,[]);
    if FieldByName('Description').AsString = 'LUM' then
    begin
      if dUncertaintyConstant < dmBase.rxStandard.FieldByName('StandardConstant').AsFloat then
      begin
        dUncertaintyConstant := dmBase.rxStandard.FieldByName('StandardConstant').AsFloat;
        Result := True;
      end;
      if dUncertaintyScale < dmBase.rxStandard.FieldByName('StandardScale').AsFloat then
      begin
        dUncertaintyScale := dmBase.rxStandard.FieldByName('StandardScale').AsFloat;
        Result := True;
      end;
    end;
    GotoBookmark(SavePlace);
    FreeBookmark(SavePlace);
  end;
end;

(*******************************************************************************
@procedure AddCalibrationUncertainties;

@description
  Add calibration uncertainties to the computed uncertainties of the baseline distances.
*******************************************************************************)
function AddCalibrationUncertainties(dUncertainty: Double; dDistance: Double): Double;
var
  dScale:     DOUBLE;               // Scale PPM  of EDM std dev
  dSTemp:     DOUBLE;               // Std Dev temperature
  dSPres:     DOUBLE;               // Std dev pressure
  dB:         DOUBLE;               // Scale term
  dStdDev, dCalibUncertainty:  DOUBLE;               // Distance
begin
  LogDebugMessage('AddCalibrationUncertainties('+FloatToStr(dUncertainty)+', '+
    FloatToStr(dDistance)+')');
  //***************************************************************
  // Scale Term
  //***************************************************************
  dScale  := dmMain.rxAtInstrumentInstStdDevPPM.AsFloat;
  LogDebugMessage('dScale = '+FloatToStr(dScale));
  dSTemp := dmMain.rxJobJobStdDevTemp.AsFloat;
  LogDebugMessage('dSTemp = '+FloatToStr(dSTemp));
  dSPres := dmMain.rxJobJobStdDevPressure.AsFloat * 0.3;
  LogDebugMessage('dSPres = '+FloatToStr(dSPres));

  dB := sqrt(dScale*dScale + dSTemp*dSTemp + dSPres*dSPres)/ 1000000;
  LogDebugMessage('dB := sqrt(dScale*dScale + dSTemp*dSTemp + dSPres*dSPres)/ 1000000');
  LogDebugMessage('dB = '+FloatToStr(dB));
  //***************************************************************
  // Constant term  (Only include scale components)
  //***************************************************************
  dStdDev := dDistance*dB;
  LogDebugMessage('dStdDev := dDistance ('+FloatToStr(dDistance)+') * dB ('+
    FloatToStr(dStdDev)+') = '+FloatToStr(dStdDev));

  dCalibUncertainty := 2* dStdDev;
  LogDebugMessage('dCalibUncertainty := 2* dStdDev ('+
    FloatToStr(dStdDev)+') = '+FloatToStr(dCalibUncertainty));

  Result := sqrt( sqr(dUncertainty)+ sqr(dCalibUncertainty));
  LogDebugMessage('Result := sqrt( sqr(dUncertainty ['+FloatToStr(dUncertainty)+
    ']) + sqr(dCalibUncertainty ['+FloatToStr(dCalibUncertainty)+']) = '+
    FloatToStr(Result));

end;

(*******************************************************************************
@procedure AddEDMCalibrationUncertainties;

@description
  Returns scale std dev in ppm. The std deviations of the meteorological instruments
  have been added to the computed scale std dev.
*******************************************************************************)
function AddEDMCalibrationUncertainties(dScaleStdDev: Double): Double;
var
  dSTemp:     DOUBLE;               // Std Dev temperature
  dSPres:     DOUBLE;               // Std dev pressure
  dStdDev: DOUBLE;               // Distance
begin
  Result := dScaleStdDev;
  if dmBase.rxMethod.Locate('Method','AddInstrumentUncertaintyEDM',[]) then
  begin
    if dmBase.rxMethod.FieldByName('Description').AsString = 'TRUE' then
    begin
      dSTemp := dmMain.rxJobJobStdDevTemp.AsFloat;
      dSPres := dmMain.rxJobJobStdDevPressure.AsFloat * 0.3;
      dStdDev := sqrt(dSTemp*dSTemp + dSPres*dSPres);
      Result := sqrt( sqr(dScaleStdDev)+ sqr(dStdDev));    // Scale StdDev in ppm
    end;
  end;
end;

(*******************************************************************************
@procedure AddEDMCalibrationUncertainties;

@description
  Returns scale std dev in ppm. The std deviations of the meteorological instruments
  have been added to the computed scale std dev.
*******************************************************************************)
function GetUncertaintyWithUnits(AConstant, AScale: Double;
  AConstantFormat, AScaleFormat, AMessage: string;
  IncludeNewBrackets: boolean = True; ShowLengthInMetres: boolean = True;
  IncludeOldBrackets: boolean = True; IncludePlusMinus: boolean = True): string;
var
  AOpeningNewBracket,
    AClosingNewBracket,
    AOpeningOldBracket,
    AClosingOldBracket: string;
begin
  result := '';
  if IncludeNewBrackets then
  begin
    if IncludePlusMinus then
      AOpeningNewBracket := '±('
    else
      AOpeningNewBracket := ' (';

    AClosingNewBracket := ')';
  end;

  if IncludeOldBrackets then
  begin
    if IncludePlusMinus then
      AOpeningOldBracket := '±('
    else
      AOpeningOldBracket := ' (';

    AClosingOldBracket := ')';
  end
  else
  begin
    AOpeningOldBracket := ' ';
    AClosingOldBracket := ' ';
  end;

  if GetLumUnitsFromDB = '2' then
  begin
    if ShowLengthInMetres then
      result := Format(AMessage+AOpeningNewBracket+AConstantFormat+' + '+AScaleFormat+
        ' x 10ˉ³ L'+AClosingNewBracket+' mm where L = length in metres',[AConstant, AScale])
    else
      result := Format(AMessage+AOpeningNewBracket+AConstantFormat+' + '+AScaleFormat+
        ' x 10ˉ³ L'+AClosingNewBracket+' mm',[AConstant, AScale]);
  end
  else
     result := Format(AMessage+AOpeningOldBracket+AConstantFormat+' mm + '+AScaleFormat+
      ' ppm'+AClosingOldBracket+' ',[AConstant, AScale]);
end;

function GetLumUnitsFromDB: string;
begin
  result := '2';

  if not dmBase.rxStandard.active then
  begin
    dmBase.rxStandard.Open;
    dmBase.rxStandard.First;
  end;

  if dmBase.rxStandard.FieldByName('LUMUnits').AsString <> '' then
    result := dmBase.rxStandard.FieldByName('LUMUnits').AsString;
end;

procedure LogDebugMessage(AMessage: string);
begin
  if DebugLogfile <> nil then
    DebugLogfile.Add(AMessage);
end;

procedure InitialiseOMat(sLineCount, sMaxUnknowns: integer);
var
  i: integer;
begin
  SetLength(OMat.dB, sLineCount);
  LogDebugMessage('SetLength(OMat.dB, '+IntToStr(sLineCount)+')');

  LogDebugMessage('for I := Low(OMat.dB)['+IntToStr(Low(OMat.dB))+
    '] to High(OMat.dB)['+IntToStr(High(OMat.dB))+'] do');
  for I := Low(OMat.dB) to High(OMat.dB) do
  begin
    SetLength(OMat.dB[I], sMaxUnknowns);
    LogDebugMessage('SetLength(OMat.dB['+IntToStr(I)+'], '+IntToStr(sMaxUnknowns)+')');
  end;

  SetLength(OMat.dP, sLineCount);
  LogDebugMessage('SetLength(OMat.dP, '+IntToStr(sLineCount)+')');
  SetLength(OMat.dW, sLineCount);
  LogDebugMessage('SetLength(OMat.dW, '+IntToStr(sLineCount)+')');

  SetLength(OMat.dBP, sMaxUnknowns);
  LogDebugMessage('SetLength(OMat.dBP, '+IntToStr(sLineCount)+')');

  LogDebugMessage('for I := Low(OMat.dBP)['+IntToStr(Low(OMat.dBP))+
    '] to High(OMat.dBP)['+IntToStr(High(OMat.dBP))+'] do');
  for I := Low(OMat.dBP) to High(OMat.dBP) do
  begin
    SetLength(OMat.dBP[I], sLineCount);
    LogDebugMessage('SetLength(OMat.dBP['+IntToStr(I)+'], '+
      IntToStr(sLineCount)+')');
  end;
end;

procedure InitialiseMat(sMaxUnknowns: integer);
var
  i: integer;
begin
  SetLength(Mat.dA, sMaxUnknowns);
  LogDebugMessage('SetLength(Mat.dA, '+IntToStr(sMaxUnknowns)+')');

  LogDebugMessage('for I := Low(Mat.dA)['+IntToStr(Low(Mat.dA))+'] to High(Mat.dA)['+IntToStr(High(Mat.dA))+'] do');
  for I := Low(Mat.dA) to High(Mat.dA) do
  begin
    SetLength(Mat.dA[I], sMaxUnknowns);
    LogDebugMessage('SetLength(Mat.dA['+IntToStr(I)+'], '+IntToStr(sMaxUnknowns)+')');
  end;

  SetLength(Mat.dB, sMaxUnknowns);
  LogDebugMessage('SetLength(Mat.dB, '+IntToStr(sMaxUnknowns)+')');
  SetLength(Mat.dX, sMaxUnknowns);
  LogDebugMessage('SetLength(Mat.dX, '+IntToStr(sMaxUnknowns)+')');

  SetLength(Mat.dInv, sMaxUnknowns);
  LogDebugMessage('SetLength(Mat.dInv, '+IntToStr(sMaxUnknowns)+')');

  LogDebugMessage('for I := Low(Mat.dInv)['+IntToStr(Low(Mat.dInv))+
    '] to High(Mat.dInv)['+IntToStr(High(Mat.dInv))+'] do');
  for I := Low(Mat.dInv) to High(Mat.dInv) do
  begin
    SetLength(Mat.dInv[I], sMaxUnknowns);
    LogDebugMessage('SetLength(Mat.dInv['+IntToStr(I)+'], '+IntToStr(sMaxUnknowns)+')');
  end;
end;

initialization
  DebugLogfile := TStringlist.Create;

finalization
  LogfileCount := 0;

  if DirectoryExists('C:\Program Files (x86)\Calibration\Baseline') then
  begin
    while FileExists('C:\Program Files (x86)\Calibration\Baseline\DebugLog'+IntToStr(LogfileCount)+'.txt') do
      Inc(LogfileCount);

    DebugLogfile.SaveToFile('C:\Program Files (x86)\Calibration\Baseline\DebugLog'+IntToStr(LogfileCount)+'.txt');
  end; {if}

  DebugLogfile.Free;

end.
