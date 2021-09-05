(*******************************************************************************
@FormUnit BseMisc;

@Description
  Miscellaneous constants, records, functions and procedures for the Baseline program.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseMisc;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls;
const
  NO_ERROR = 0;
  ERROR = 1;
  BASELINE_VERSION_NUMBER = 1;
  RAD_TO_DEG = 57.29577951308;        // Conversion factor radians to
                                      // decimal degrees.
  DEG_TO_RAD = 0.01745329251994;      // Conversion factor decimal
                                      // degrees to radians
  RAD_TO_SEC = 206264.806247;         // Conversion factor radians to
                                      // seconds of arc.
  SIN_1SECOND = 0.000004848136;       // Conversion factor seconds of
                                      // arc to radians.
  EXPONENTIAL = 2.71828182846;        // Exponential function
  LOGEXPON    = 0.434294481903;       // Log of Exponential function
  SMALL_VALUE = 0.0000000000000001;   // Small value  1.0e-16
  PI          = 3.141592653589793;    // Pi value
  VELOCITY_LIGHT  = 299792458.0;      // Recommended
  DEFAULT_REF_INDEX = 1.000280;       // Recommended
  DEFAULT_C_TERM    = 280.000;        // Recommended
  DEFAULT_D_TERM    = 79.5;           // Recommended

  CONVERGENCE_LIMIT = 0.0001;         // Convergence limit
  MAXIMUM_ITERATIONS = 20;            // Maximum iterations
  FIRST_SOLUTION = 1;                 // Convergence flag
  NEXT_ITERATION = 2;                 // Convergence flag
  DIVERGING = 3;                      // Convergence flag
  MAX_ITERATION_REACHED = 4;          // Convergence flag
  SOLVED = 5;                         // Convergence flag
  NUMBER_OF_UNKNOWNS = 8;             // Number of unknowns in equations

// Security
  NORMAL_CHARS =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 abcdefghijklmnopqrstuvwxyz.|(),;"!@#$%^&*()_-+={}[]\<>?/:';
  ENCRYPT_CHARS = '962XRLD7YJS1AHBQ5NCO3M08EKGIWUPTVZ4F qwertyuiopasdfghjklzxcvbnm|.(),;"!@#$%^&*()_-=+{}[]\<>?/:';
  LENGTH_CHARS = length(NORMAL_CHARS);

type
  TInstrumentClass = (icType, icMake,icModel,icInstrument, icNone);
  THumidityType = (htWetTemp,htRelativeHumidity,htDefaultHumidity);

  CharSet = set of Char;

  CERTIFEDM_L = packed record         // Prefix cer
     szJobCalibrationDate  : TDateTime;  // Date this calibration job was performed
     szJobDescription      : string;     // Job identification
     szJobObserverName     : string;     // Name of observer

     szEDMOwner            : string;  // Current owner of EDM instrument
     szEDMOwnerAddress     : string;  // Address of owner
     szEDMMakeName         : string;  // EDM instrument make
     szEDMModelName        : string;  // EDM instrument model
     szEDMSerialNo         : string;  // EDM serial number
     szPrismMakeName       : string;  // Prism make
     szPrismModelName      : string;  // Prism model
     szPrismSerialNo       : string;  // Prism serial number
     dPrismConstant        : Double;  // Prism additive constant (m)
     dEdmManuConstant      : Double;  // Manufacturers uncertainty specification (mm)
     dEdmManuPPM           : Double;  // Manufacturers uncertainty specification (ppm)

     szBaseLineName        : string;  // Baseline name
     szBaseLineLocation    : string;  // Baseline location
     szBaseLineAuthority   : string;  // Baseline authority
     szAuthorityAddress    : string;  // Baseline authority address
     szBaseLineCalibrationDate : TDateTime; // Baseline calibration date

     dLegalHeight          : Double;        // Certified height used for baseline
     szProgramVersion      : string;        // Baseline application version number
     cTSignificant         : Char;          // Y=include cyclic errors
     dConfLevel            : Double;        // Confidence level
     dCalibParm            : array[0..5] of Double; // Instr calib parms
     dCalibUncert          : array[0..5] of Double; // Uncertainty of calib parms

     cMetsFlag             : String;        // Y=include atmos reading
     dMinDistance          : Double;        // Minimum distance
     dMaxDistance          : Double;        // Maximum distance
     dMeanTemp             : Double;        // Mean dry temperature

     dStdICConstant        : Double;        // Minimum standards - constant
     dStdICPPM             : Double;        // Minimum standards - scale

     dDistance             : array[0..5] of Double; // Array of standard distances
     dDistUncert           : array[0..5] of Double; // Array of distance uncertainties
     dMinUncert            : array[0..5] of Double; // Array of minimum uncertainties
     cPass                 : array[0..5] of Char;   // Array of Pass/Fail flags Y=Pass
     cExtrapolated         : array[0..5] of Char;   // Array of Extrapolated flags
                                                    // Y=extrapolated N=blank
     cPassFail             : Char;                  // P=Pass F=Fail

     ISOTestA              : array[0..5] of String; // Array of Accept / Reject
     ISOTestC              : string;                // Accept / Reject

     dC                    : Double;                // Term 1 used in atmos corr
     dD                    : Double;                // Term 2 used in atmos corr
     VelocityLight         : Double;                // Velocity of light in vacuum (m/s)
     isPulseMeter          : Boolean;
     hasPrismConstantBeenSetInEDM      : Boolean;
  end;

  LINE_L = packed record
    sLineID: Integer;
    dTrueDistance:        Double;         // True slope distance
    dTrueDistanceStdDev:  Double;         // Std Dev of True distance
    dMeanObsDistance:     Double;         // Mean Observed Distance
    dReducedDistance:     Double;         // Mean Reduced Distance
                                         // Reduced to pillar to pillar dist
    dObsDistanceStdDev:   Double;         // Std Dev computed from observation
    dAprioriStdDev:       Double;         // Std Dev of observed distance
    dOffsetCorrection:    Double;         // Slope correction (From "inst to
    dSlopeCorrection:     Double;         // Slope correction (From "inst to
                                         // Prism" distance to horizontal
                                         // dist at a given height.
    dAtmosphericCorrection: Double;      // Atmospheric correction
    dEDMConstant:         Double;         // EDM additive constant
    dPrismConstant:       Double;         // Prism additive constant
    dResidual:            Double;         // Residual

    dDryTemp:             Double;         // Dry temperature
    dWetTemp:             Double;         // Wet temperature
    dHumidity:            Double;         // Humidity
    cHumidityType:        String;         // R=RH%  W=Wet temp
    cMetsFlag:            String;         // Y=use mets N=do not use mets
    dPressure:            Double;         // Barometric Pressure

    sAtPillarIndex:       Integer;        // "AT" pillar index:
    sToPillarIndex:       Integer;        // "TO" pillar index:
    strAtPillarNo:        String;         // "AT" pillar number
    strToPillarNo:        String;         // "TO" pillar number
    dAtPillarRL:          Double;         // RL "AT" pillar
    dToPillarRL:          Double;         // RL "TO" pillar
    dAtPillarRLStdDev:    Double;         // StdDev of RL "AT" Pillar
    dToPillarRLStdDev:    Double;         // StdDev of RL "TO" Pillar
    dHeightAboveAtPillar: Double;         // Height above "AT" pillar
    dHeightAboveToPillar: Double;         // Height above "TO" pillar
    dAtPillarOffset:      Double;         // Pillar offset "AT"
    dToPillarOffset:      Double;         // Pillar offset "TO"
    dAtPillarLatitude:    Double;         // Latitude "AT" pillar
    dAtPillarLongitude:   Double;         // Longitude"AT" pillar
    dToPillarLatitude:    Double;         // Latitude "TO" pillar
    dToPillarLongitude:   Double;         // Longitude"TO" pillar
    dAtPillarCoordX:      Double;         // Cartesian Coord X "AT" pillar
    dAtPillarCoordY:      Double;         // Cartesian Coord Y "AT" pillar
    dAtPillarCoordZ:      Double;         // Cartesian Coord Z "AT" pillar
    dToPillarCoordX:      Double;         // Cartesian Coord X "TO" pillar
    dToPillarCoordY:      Double;         // Cartesian Coord Y "TO" pillar
    dToPillarCoordZ:      Double;         // Cartesian Coord Z "TO" pillar
  end;

  CARTESIAN_L = packed record
    dCoordX: DOUBLE;                // "X" Cartesian coordinate
    dCoordY: DOUBLE;                // "Y" Cartesian coordinate
    dCoordZ: DOUBLE;                // "Z" Cartesian coordinate
  end;

  PRE_L = record
     dConfLevel:          DOUBLE;          // Confidence Level %
     dUnitLength:         DOUBLE;          // Wave length in metres
     dModFreq:            DOUBLE;          // Modulation frequency in Hertz
     dCarrierWaveLength:  DOUBLE;          // Carrier wavelength in nanometres
     dStdDevConst:        DOUBLE;          // computed apriori stddev constant
     dStdDevPPM:          DOUBLE;          // computed apriori std dev PPM
     dRefractiveIndex:    DOUBLE;          // Reference refractive Index
     dGroupRefractiveIndex:  DOUBLE;       // Group refractive Index
     dC:                  DOUBLE;          // Term 'C' of first velocity corr
     dD:                  DOUBLE;          // Term 'D' of first velocity corr
     dPartialWaterVapPres:DOUBLE;          // Partial Water Vapour Pressure
     dMeanPressure:       DOUBLE;          // Mean Pressure
     dMeanDryTemp:        DOUBLE;          // Mean Dry temperature
     dMeanWetTemp:        DOUBLE;          // Mean Wet temperature
     dMeanHumidity:       DOUBLE;          // Mean Wet temperature
     cHumidityType:       String;          // R=RH% W=Wet temp
     cMetsFlag:           String;          // Y=Use mets, N=not use mets
     cDefaultCFlag:       String;          // Y=Use default N= No default
     cDefaultDFlag:       String;          // Y=Use default N= No default
     strThermometer1:    String;
     strThermometer2:    String;
     strBarometer1:      String;
     strBarometer2:      String;
     strThermometer1Corr: Double;
     strThermometer2Corr: Double;
     strBarometer1Corr:   Double;
     strBarometer2Corr:   Double;
  end;

  POST_L = record
   cMethod:            String;           // computation method
   dStdDevConst:       DOUBLE;           // computed apriori stddev constant
   dStdDevPPM:         DOUBLE;           // computed apriori std dev PPM
   dParm:              array of DOUBLE;  // calibration parameters
   dParmStdDev:        array of DOUBLE;  // std dev of calibration parms
   sDegFreedom:        Integer;          // degrees of freedom
   sParameterCount:    Integer;          // Total Number of parameters
   sObservationCount:  Integer;          // Number of observations
   dTrueDistance:      array of DOUBLE;  // True slope distance
   dObservedDistance:  array of DOUBLE;  // Mean Reduced observed distance
   dAdjustedDistance:  array of DOUBLE;  // Least squares estimate of dist
   dLSCorrection:      array of DOUBLE;  // Least squares dist correction
   dLSResidual:        array of DOUBLE;  // Least squares dist residual
   dStdDevL:           array of DOUBLE;  // Std Dev of adjusted observation
   dStdDevResidual:    array of DOUBLE;  // Std Dev of residual
   dStdDevObservation: array of DOUBLE;  // Apriori std dev of observation
   dMinimum:           DOUBLE;           // Minimum
   dPostVarFactor:     DOUBLE;           // A posteriori Variance Factor
   dStandardisedRes:   array of DOUBLE;  // Standardised residual
   dConfLevel:         DOUBLE;           // Confidence Level %
   dProbability:       DOUBLE;           // Probability
   dTValue:            DOUBLE;           // Student T value
   dTMaxCyclicError:   DOUBLE;           // T derived from max cyclic error
   fTSignificant:      BOOL;             // Significance of cyclic error
   dChiLow:            DOUBLE;           // Low Chi Value for testing
   dChiHigh:           DOUBLE;           // High Chi Value for testing
   dChiValueL:         DOUBLE;           // Low Chi Value
   dChiValueH:         DOUBLE;           // Hight Chi Value
   dAbscissa:          DOUBLE;           // Abscissa Value
   fsIterationFlag:    Integer;          // Iteration flag
   sIterationCount:    Integer;          // Iteration count
   dConvergenceLimit:  DOUBLE;           // Convergence Limit
   sMaxIterations:     Integer;          // Max iterations
   dMinDistance:       DOUBLE;           // Minimum Distance
   dMaxDistance:       DOUBLE;           // Maximum Distance
   dMeanTemp:          DOUBLE;           // Mean Dry Temperature
   cMetsFlag:          String;           // Y=use mets, N=do not use mets
  end;

  OBSMATRIX_L = record
   dB:  array of array of double; // coefficients
   dP:  array of double;          // Weight Matrix
   dW:  array of double;          // Residuals
   dBP: array of array of double  // BP Matrix
  end;

  MATRIX_L = record
   dA:  array of array of double;       // coefficients
   dB:  array of double;                // vector of constants
   dX:  array of double;                // vector of unknowns
   dInv: array of array of double;      // inverse elements of dA
 end;

  XCOORD_L = record
    sXCount:             Integer;                  // Number of pillars
    dConstant:           Double;                   // Constant of prescribed EDM
    dXCor:               array of double;          // X coordinate correction
    dXCoord:             array of double;          // X coordinate of pillar
    StdDevEdmSF:         array of double;          // 1. EDM scale factor 
    StdDevEdmSFtemp:     array of double;          // 2. EDM scale factor (temp. effect)   
    StdDevEdmSFtime:     array of double;          // 3. EDM scale factor (drift over time)
    StdDevEdmZO:         double;                   // 4. EDM zero offset                     
    StdDevTemp:          array of double;          // 5. Temperature unc
    StdDevPres:          array of double;          // 6. Pressure unc
    StdDevHumi:          array of double;          // 7. Humidity unc
    //StdDevLSAConst:      double;                   // 8. LS fit unc fixed term
    //StdDevLSAScale:      array of double;          // 9. LS fit unc proportional term
    StdDevLSADist :      array of double;          // 8 & 9. Std Dev from the LSA.
    StdDevCentring:      double;                   // 10. centring (axial)
    StdDevHD:            array of double;          // 11. Heights & offsets (transverse)
    StdDevOS:            array of double;          // 12. Offset
    StdDevRound:         double;                   // 13. Rounding
    StdDevBaseInterval:  array of double;          // Type A errors from baseline calibration
    CombinedUncertainty: array of double;					 // Sum of the squares of all in error budget
    LUMUncertainty:      array of double;					 // LUM Calculated for distance
    PublishUncertainty:  array of double;					 // Uncertainty used on certificate
  end;

  UNCERTAINTY_L = record
    ConfidenceLevel: Double;
    Temperature: Double;
    Pressure: Double;
    Humidity: Double;
    PartialWaterVapourPressure: Double;
    CentringInstrument: Double;
    CentringReflector: Double;
    HeightAboveAtPillar: Double;
    HeightAboveToPillar: Double;
    AtPillarRL: Double;
    ToPillarRL: Double;
    PillarHeightDiff: Double;
    OffsetReflector: Double;
    OffsetInstrument: Double;
    Interval: Double;           // Existing baseline
    IntervalConstant: Double;
    IntervalScale: Double;
    ObsDistance: Double;
    ObsDistanceConstant: Double;
    ObsDistanceScale: Double;
    Instrument: Double;  // Prescribed instrument
    InstrumentConstant: Double;  // Prescribed instrument
    InstrumentScale: Double;
    AtmospherePPM: Double;
    Atmosphere: Double;
    Centring: Double;
    Offset: Double;
    HeightDifference: Double;
    Combined: Double;
    CombinedConstant: Double;
    CombinedScale: Double;
    RejectionCriterion: Double;
  end;

  DEFAULT_L = record
    ConfidenceLevel: Double;
    StdDevTemperature: Double;
    StdDevPressure: Double;
    StdDevHumidity: Double;
    StdDevCentring: Double;
    StdDevHeightAbovePillar: Double;
    StdDevPillarRL: Double;
    StdDevOffset: Double;
    StdDevDistanceReading: Double;
  end;

  ATMOSPHERE_L = record
    DryTemperature: Double;
    WetTemperature: Double;
    Pressure: Double;
    Humidity: Double;
    HumidityType: String;
    PartialWaterVapourPressure: Double;
    ReferenceRefractiveIndex: Double;
    GroupRefractiveIndex_nG: Double;
    GroupRefractiveIndex_nL: Double;
    CarrierWaveLength: Double;
    UnitLength: Double;
    VelocityLight: Double;
  end;

  SECURITY_L = record
    PassWord: String;
    NewPassWord: String;
    hasChangedPassWord: Boolean;
    UserID: String;
    MinimumLength: Integer;
    FirstTimeUser: Boolean;
    isRegistered: Boolean;
  end;

var
  pre_StdDev: UNCERTAINTY_L;
  aDefault:  DEFAULT_L;
  dCoveragefactor: Double;
  security: SECURITY_L;
  canCalibrateBaseline: Boolean;

procedure ClearStatusMessage;

procedure DegreesToDMS ( dDegrees : Double; var sDeg, sMin : Integer;  var dSec : Double;
  bDecPlaces : Byte);

procedure ErrorMsg(strMessage : String);
function  IsInteger(TestString : String) : Boolean;
function  IsFloat(TestString : String) : Boolean;
function  PackStr(strString : String) : String;
procedure SetCalibrationType(cCalibType : String);
function  SignOf(dValue : Double) : Double;
function  XToPowerY(X, Y : Double) : Double;
function Encrypt(password:string):string;
function Decrypt(password:string):string;


var
  cCalibrationType : String;

implementation

uses BseMain;

(*******************************************************************************
@procedure DegreesToDMS ( dDegrees: Double; var sDeg, sMin: Integer;
  var dSec: Double;  bDecPlaces: Byte);

@description
  Converts decimal degrees to degrees, minutes and seconds.
*******************************************************************************)
procedure DegreesToDMS ( dDegrees: Double; var sDeg, sMin: Integer;
  var dSec: Double;  bDecPlaces: Byte);
var
  dTemp, dSign : Double;
begin
  dSign    := SignOf(dDegrees);
  dDegrees := Abs(dDegrees);

  {Extract degrees, minutes and seconds from the decimal angle}
  sDeg := Trunc(dDegrees);
  dTemp := (dDegrees - sDeg) * 60.0;
  sMin := Trunc(dTemp);
  dSec := (dTemp - sMin) * 60.0;

  {Ensure true angle representation in case of arithmetic rounding}
  dTemp := 60.0 - (5.0 * (XToPowerY(10.0, -(bDecPlaces + 1.0))));

  if (dSec >= dTemp) then
  begin
    dSec := 0.0;
    Inc(sMin);
  end;

  if (sMin = 60) then
  begin
    sMin := 0;
    Inc(sDeg);
  end;

  {Restore the sign according to the original angle value}
  sDeg := sDeg * Trunc(dSign);
  sMin := sMin * Trunc(dSign);
  dSec := dSec * dSign;
end;

(*******************************************************************************
@procedure ClearStatusMessage;

@description
  Clears Status message.
*******************************************************************************)
procedure ClearStatusMessage;
begin
  with frmMain do
  begin
    pnlStatusMessage.Caption := '';
    tmrStatusMessage.Enabled := False;
  end;
end;

(*******************************************************************************
@function SignOf(dValue : Double) : Double;

@description
  Returns -1 if value is negative and 1 if value is positive.
*******************************************************************************)
function SignOf(dValue : Double) : Double;
begin
  if (dValue < 0.0) then SignOf := -1.0
  else                   SignOf :=  1.0;
end;

(*******************************************************************************
@function XToPowerY(X, Y : Double) : Double;

@description
  Returns X to the power Y.
*******************************************************************************)
function XToPowerY(X, Y : Double) : Double;
begin
  XToPowerY := Exp(Ln(X) * Y);
end;

(*******************************************************************************
@function IsInteger(TestString : String) : Boolean;

@description
  Returns True if value is an integer.
*******************************************************************************)
function IsInteger(TestString : String) : Boolean;
var
  sIndex      : Integer;
  sDigitCount : Integer;
  OK          : Boolean;
  strString   : String;
begin
  strString   := PackStr(TestString);
  sDigitCount := 0;
  OK          := True;

  for sIndex := 1 to Length(strString) do
  begin
    case strString[sIndex] of
      '0'..'9':
      begin
        Inc(sDigitCount);
      end;

      '+', '-':
      begin
        if sIndex <> 1 then
        begin
          OK := False;
          Break;
        end;
      end;

      else
      begin
        OK := False;
        Break;
      end;
    end;
  end;

  if OK and (sDigitCount = 0) then OK := False;

  IsInteger := OK;
end;

(*******************************************************************************
@function IsFloat(TestString : String) : Boolean;

@description
  Returns True if value is a real number.
*******************************************************************************)
function IsFloat(TestString : String) : Boolean;
var
  sIndex      : Integer;
  sDigitCount : Integer;
  sDotCount   : Integer;
  OK          : Boolean;
  strString   : String;
begin
  strString   := PackStr(TestString);
  sDigitCount := 0;
  sDotCount   := 0;
  OK          := True;

  for sIndex := 1 to Length(strString) do
  begin
    case strString[sIndex] of
      '0'..'9':
      begin
        Inc(sDigitCount);
      end;

      '+', '-':
      begin
        if sIndex <> 1 then
        begin
          OK := False;
          Break;
        end;
      end;

      '.' :
      begin
        if sDotCount > 1 then
        begin
          OK := False;
          Break;
        end
        else
        begin
          Inc(sDotCount);
        end;
      end;

      else
      begin
        OK := False;
        Break;
      end;
    end;
  end;

  if OK and (sDigitCount = 0) then OK := False;

  IsFloat := OK;
end;

(*******************************************************************************
@function PackStr(strString : String) : String;

@description
  Removes all blank characters from a string.
*******************************************************************************)
function PackStr(strString : String) : String;
var
  newString : String;
  sIndex    : Integer;
begin
  newString := '';

  for sIndex := 1 to Length(strString) do
  begin
    if strString[sIndex] <> ' ' then
    begin
      newString := newString + strString[sIndex];
    end;
  end;
  PackStr := newString;
end;

(*******************************************************************************
@procedure ErrorMsg(strMessage : String);

@description
  Displays Error message.
*******************************************************************************)
procedure ErrorMsg(strMessage : String);
begin
  MessageBeep(mb_IconHand);
  MessageDlg(strMessage, mtInformation, [mbOK], 0);
end;

(*******************************************************************************
@procedure SetCalibrationType(cCalibType : String);

@description
  Sets global calibration Type
*******************************************************************************)
procedure SetCalibrationType(cCalibType : String);
begin
  cCalibrationType := cCalibType;
end;

(*******************************************************************************
@function Encrypt(password:string):string;

@description
  Returns an encrypted string.
*******************************************************************************)
function Encrypt(password:string):string;
var
  Index : integer;
  Offset : integer;
begin
  result := '';
  Password := trim(Password);
  for Index:= 1 to length(password) do
  begin
    Offset := pos(password[Index],NORMAL_CHARS);
    if Offset = 0 then
    begin
      result := result + password[Index];
    end
    else
    begin
      result := result + Encrypt_chars[Offset];
    end;

  end;
end;

(*******************************************************************************
@function Decrypt(password:string):string;

@description
  Decrypts an encrypted string.
*******************************************************************************)
function Decrypt(password:string):string;
var
  Index : integer;
  Offset : integer;
begin
  result := '';
  for Index:= 1 to length(password) do
  begin
    Offset := pos(password[Index],Encrypt_chars);
    if Offset = 0 then
    begin
      Result := Result + password[Index];
    end
    else
    begin
      result := result + NORMAL_CHARS[Offset];
    end;
  end;
end;

end.
