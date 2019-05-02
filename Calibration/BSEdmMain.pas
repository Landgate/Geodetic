(*******************************************************************************
@formunit BSEdmMain;

@description
  This data base module contains database tables for the Baseline application

@(c) Copyright Department of Land Information, Western Australia, 2006
     All rights reserved.
*******************************************************************************)
unit BSEdmMain;

interface

uses
  BseMisc,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, Wwquery, RxMemDS;

type
  TMeasDefault = record
    AtHeight : Double;
    ToHeight : Double;
    DryTemp  : Double;
    Pressure : Double;
    Humidity : Double;
    AtPillarID : Integer;
  end;
  TdmMain = class(TDataModule)
    dsJMeasure: TwwDataSource;
    dsJob: TwwDataSource;
    dsPillar: TwwDataSource;
    dsToInstrumentMake: TwwDataSource;
    dsToInstrumentModel: TwwDataSource;
    dsToInstrument: TwwDataSource;
    dsAtInstrument: TwwDataSource;
    dsAtInstrumentModel: TwwDataSource;
    dsAtInstrumentMake: TwwDataSource;
    dsPillar2: TwwDataSource;
    dsBaseline: TwwDataSource;
    rxJob: TRxMemoryData;
    rxJobJobId: TIntegerField;
    rxJobJobDescription: TStringField;
    rxJobInstID1: TIntegerField;
    rxJobInstID2: TIntegerField;
    rxJobJobInst1Owner: TStringField;
    rxJobJobInst2Owner: TStringField;
    rxJobJobProcessingSoftware: TStringField;
    rxJobJobStartCalibrationDate: TStringField;
    rxJobJobStartCalibrationTime: TStringField;
    rxJobJobEndCalibrationDate: TStringField;
    rxJobJobEndCalibrationTime: TStringField;
    rxJobJobObserverName: TStringField;
    rxJobBaselineID: TIntegerField;
    rxJobJobWeatherConditions: TStringField;
    rxJobJobTempCorr: TFloatField;
    rxJobJobPressureCorr: TFloatField;
    rxJobJobStdDevTemp: TFloatField;
    rxJobJobStdDevPressure: TFloatField;
    rxJobJobInstCentringStdDev: TFloatField;
    rxJobJobInstLevellingStdDev: TFloatField;
    rxJobJobType: TStringField;
    rxJobJobComments: TStringField;
    rxBaseline: TRxMemoryData;
    rxBaselineBaselineID: TIntegerField;
    rxBaselineBaselineName: TStringField;
    rxBaselineBaselineLocation: TStringField;
    rxBaselineBaselineAuthority: TStringField;
    rxBaselineBaselineCalibrationDate: TStringField;
    rxBaselineBaselineCalibrationRef: TStringField;
    rxBaselineEllipsID: TIntegerField;
    rxBaselineBaselineConfLevel: TFloatField;
    rxBaselineBaseLegalHeight: TFloatField;
    rxBaselineBaseStdICConstant: TFloatField;
    rxBaselineBaseStdICPPM: TFloatField;
    rxBaselineBaseRelativeHumidity: TFloatField;
    rxBaselineBaselineArchiveFlag: TStringField;
    rxPillar: TRxMemoryData;
    rxPillarPillarNo: TStringField;
    rxPillarPillarHeight: TFloatField;
    rxPillarPillarOffset: TFloatField;
    rxPillarPillarLatitude: TFloatField;
    rxPillarPillarLongitude: TFloatField;
    rxPillarPillarHtStdDev: TFloatField;
    rxPillarPillarEllipsARadius: TFloatField;
    rxPillarPillarEllipsBRadius: TFloatField;
    rxPillarPillarEllipsOrient: TFloatField;
    rxPillarPillarID: TIntegerField;
    rxPillarBaselineID: TIntegerField;
    rxPillarPillarSeqNo: TIntegerField;
    rxPillar2: TRxMemoryData;
    rxPillar2PillarNo: TStringField;
    rxPillar2PillarHeight: TFloatField;
    rxPillar2PillarOffset: TFloatField;
    rxPillar2PillarLatitude: TFloatField;
    rxPillar2PillarLongitude: TFloatField;
    rxPillar2PillarHtStdDev: TFloatField;
    rxPillar2PillarEllipsARadius: TFloatField;
    rxPillar2PillarEllipsBRadius: TFloatField;
    rxPillar2PillarEllipsOrient: TFloatField;
    rxPillar2PillarID: TIntegerField;
    rxPillar2BaselineID: TIntegerField;
    rxPillar2PillarSeqNo: TIntegerField;
    rxAtInstrumentMake: TRxMemoryData;
    rxAtInstrumentMakeMakeName: TStringField;
    rxAtInstrumentMakeMakeCountry: TStringField;
    rxAtInstrumentMakeMakeID: TIntegerField;
    rxAtInstrumentModel: TRxMemoryData;
    rxAtInstrumentModelModelName: TStringField;
    rxAtInstrumentModelModelManufStdDevConst: TFloatField;
    rxAtInstrumentModelModelManufStdDevPPM: TFloatField;
    rxAtInstrumentModelModelUnitLength: TFloatField;
    rxAtInstrumentModelModelModFreq: TFloatField;
    rxAtInstrumentModelModelCarrierWaveLength: TFloatField;
    rxAtInstrumentModelModelComments: TStringField;
    rxAtInstrumentModelModelID: TIntegerField;
    rxAtInstrumentModelMakeID: TIntegerField;
    rxAtInstrumentModelModelInstType: TStringField;
    rxAtInstrument: TRxMemoryData;
    rxAtInstrumentInstSerialNo: TStringField;
    rxAtInstrumentInstStdDevConst: TFloatField;
    rxAtInstrumentInstStdDevPPM: TFloatField;
    rxAtInstrumentInstConstant: TFloatField;
    rxAtInstrumentInstComments: TStringField;
    rxAtInstrumentInstID: TIntegerField;
    rxAtInstrumentInstType: TStringField;
    rxAtInstrumentModelID: TIntegerField;
    rxAtInstrumentAntennaModelID: TIntegerField;
    rxAtInstrumentInstAntennaSerialNo: TStringField;
    rxAtInstrumentInstScaleFact: TFloatField;
    rxToInstrumentMake: TRxMemoryData;
    rxToInstrumentMakeMakeID: TIntegerField;
    rxToInstrumentMakeMakeName: TStringField;
    rxToInstrumentMakeMakeCountry: TStringField;
    rxToInstrumentModel: TRxMemoryData;
    rxToInstrumentModelModelID: TIntegerField;
    IntegerField6: TIntegerField;
    StringField4: TStringField;
    rxToInstrumentModelModelName: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField6: TStringField;
    rxToInstrument: TRxMemoryData;
    rxToInstrumentInstID: TIntegerField;
    rxToInstrumentIntType: TStringField;
    rxToInstrumentModelID: TIntegerField;
    rxToInstrumentInstSerialNo: TStringField;
    rxToInstrumentInstStdDevConst: TFloatField;
    rxToInstrumentInstStdDevPPM: TFloatField;
    rxToInstrumentAntennaModelID: TIntegerField;
    rxToInstrumentInstAntennaSerialNo: TStringField;
    rxToInstrumentInstConstant: TFloatField;
    rxToInstrumentInstScaleFact: TFloatField;
    rxToInstrumentInstComments: TStringField;
    rxJMeasure: TRxMemoryData;
    rxJMeasureMeasID: TIntegerField;
    rxJMeasureMeasType: TStringField;
    rxJMeasureJobID: TIntegerField;
    rxJMeasureMeasAtPillarID: TIntegerField;
    rxJMeasureMeasToPillarID: TIntegerField;
    rxJMeasureMeasAtHeight: TFloatField;
    rxJMeasureMeasToHeight: TFloatField;
    rxJMeasureMeasDryTemp: TFloatField;
    rxJMeasureMeasHumidity: TFloatField;
    rxJMeasureMeasHumidityType: TStringField;
    rxJMeasureMeasPressure: TFloatField;
    rxJMeasureMeasMetFlag: TStringField;
    rxJMeasureAtPillarNo: TStringField;
    rxJMeasureToPillarNo: TStringField;
    rxFilteredEDMObs: TRxMemoryData;
    dsFilteredEDMObs: TwwDataSource;
    rxFilteredEDMObsEDMObsID: TIntegerField;
    rxFilteredEDMObsMeasID: TIntegerField;
    rxFilteredEDMObsEDMObsDistance: TFloatField;
    rxJMeasureWetTemp: TFloatField;
    rxJMeasureHumidity: TFloatField;
    rxJMeasurehasError: TBooleanField;
    rxAtInstrumentModelisPulseMeter: TBooleanField;
    rxToInstrumentModelisPulseMeter: TBooleanField;
    rxJobJobInst1OwnerAddress: TStringField;
    rxBaselineAuthorityAddress: TStringField;
    rxJobThermometer1: TStringField;
    rxJobThermometer2: TStringField;
    rxJobBarometer1: TStringField;
    rxJobBarometer2: TStringField;
    rxJobThermometerCorr1: TFloatField;
    rxJobThermometerCorr2: TFloatField;
    rxJobBarometerCorr1: TFloatField;
    rxJobBarometerCorr2: TFloatField;
    rxJobNumberThermometers: TIntegerField;
    rxJobNumberBarometers: TFloatField;
    rxMets: TRxMemoryData;
    rxMetsThermometer1: TStringField;
    rxMetsThermometer2: TStringField;
    rxMetsBarometer1: TStringField;
    rxMetsBarometer2: TStringField;
    rxMetsThermometerCorr1: TFloatField;
    rxMetsThermometerCorr2: TFloatField;
    rxMetsBarometerCorr1: TFloatField;
    rxMetsBarometerCorr2: TFloatField;
    dsMets: TwwDataSource;
    rxMetsNumberThermometers: TIntegerField;
    rxMetsNumberBarometers: TIntegerField;
    rxJMeasureMeasDryTemp2: TFloatField;
    rxJMeasureMeasPressure2: TFloatField;
    rxJMeasureMeasHumidity2: TFloatField;
    rxAtInstrumentModelManuRefractiveIndex: TFloatField;
    rxToInstrumentModelManuRefractiveIndex: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dsJMeasureStateChange(Sender: TObject);
    procedure dsFilteredEDMObsStateChange(Sender: TObject);
    procedure rxAtInstrumentBeforePost(DataSet: TDataSet);
    procedure rxToInstrumentBeforePost(DataSet: TDataSet);
    procedure rxToInstrumentModelBeforePost(DataSet: TDataSet);
    procedure rxAtInstrumentModelBeforePost(DataSet: TDataSet);
    procedure rxAtInstrumentMakeBeforePost(DataSet: TDataSet);
    procedure rxToInstrumentMakeBeforePost(DataSet: TDataSet);
    procedure rxJMeasureAfterScroll(DataSet: TDataSet);
    procedure rxJMeasureMeasAtHeightValidate(Sender: TField);
    procedure rxJMeasureMeasToHeightValidate(Sender: TField);
    procedure rxJobBeforePost(DataSet: TDataSet);
    procedure rxJobBeforeDelete(DataSet: TDataSet);
    procedure rxAtInstrumentModelNewRecord(DataSet: TDataSet);
    procedure rxToInstrumentModelNewRecord(DataSet: TDataSet);
    procedure rxJobNewRecord(DataSet: TDataSet);
    procedure rxMetsNewRecord(DataSet: TDataSet);
    procedure rxPillarBeforePost(DataSet: TDataSet);
    procedure rxPillarPillarHtStdDevGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    sNextEDMObsId: Integer;
    sNextMeasId: Integer;
    doEvents: Boolean;
    hasDefaultValues : Boolean;
    sMeasureId : Integer;
    strHumidityType : String;
    dDefaultHumidity : Double;
    strMeasMetFlag : String;
    dLegalDistance : Double;
    aDefault : TMeasDefault;
    dRefractiveIndex: Double;
    procedure FilterJMeasure( sJobID: Integer);
    procedure FilterEDMObs( sMeasID: Integer);
    procedure GetPillarNumbers;
  end;

var
  dmMain: TdmMain;
  strVersionNumber: String;
  strVersionNumberDate: String;

implementation

uses BseDM, Bse2Job;

{$R *.DFM}

(*******************************************************************************
@procedure DataModuleCreate(Sender: TObject);

@description
  1. Activates the memory modules.
  2. Set default values
*******************************************************************************)
procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  doEvents := True;
  dLegalDistance := 0;
  hasDefaultValues := False;
  with aDefault do
  begin
    AtHeight :=0;
    ToHeight :=0;
    DryTemp  :=0;
    Pressure :=0;
    Humidity :=0;
    AtPillarID :=0;
  end;
  strHumidityType := 'D';
  strMeasMetFlag := 'N';
  dDefaultHumidity := 50.0;

  rxJob.Active := True;
  rxBaseline.Active := True;
  rxPillar.Active := True;
  rxPillar2.Active := True;
  rxAtInstrument.Active := True;
  rxAtInstrumentModel.Active := True;
  rxAtInstrumentMake.Active := True;
  rxToInstrument.Active := True;
  rxToInstrumentModel.Active := True;
  rxToInstrumentMake.Active := True;
  rxJMeasure.Active := True;
  rxFilteredEDMObs.Active := True;
  rxMets.Active := True;
end;

(*******************************************************************************
@procedure dsJMeasureStateChange(Sender: TObject);

@description
  Ensures that new records can only be appended.
*******************************************************************************)
procedure TdmMain.dsJMeasureStateChange(Sender: TObject);
begin
  if (rxJMeasure.State = dsInsert) and ( not rxJMeasure.EOF) then
  begin
    rxJMeasure.Last;
    rxJMeasure.Append;
  end;
end;

(*******************************************************************************
@procedure dsFilteredEDMObsStateChange(Sender: TObject);

@description
  Ensures that new records can only be appended.
*******************************************************************************)
procedure TdmMain.dsFilteredEDMObsStateChange(Sender: TObject);
begin
  if doEvents then
  begin
    if (rxFilteredEDMObs.State = dsInsert) and ( not rxFilteredEDMObs.EOF) then
    begin
      rxFilteredEDMObs.Last;
      rxFilteredEDMObs.Append;
    end;
  end;
end;

(*******************************************************************************
@procedure rxAtInstrumentBeforePost(DataSet: TDataSet);

@description
  Saves the EDM instrument record to the main database.
*******************************************************************************)
procedure TdmMain.rxAtInstrumentBeforePost(DataSet: TDataSet);
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with dmBase.rxInstrument do
    begin
      if Locate('InstId',rxAtInstrument.FieldByName('InstId').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxAtInstrument.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxAtInstrument.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxAtInstrument.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxToInstrumentBeforePost(DataSet: TDataSet);

@description
  Saves the prism record to the main database.
*******************************************************************************)
procedure TdmMain.rxToInstrumentBeforePost(DataSet: TDataSet);
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with dmBase.rxInstrument do
    begin
      if Locate('InstId',rxToInstrument.FieldByName('InstId').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxToInstrument.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxToInstrument.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxToInstrument.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxToInstrumentModelBeforePost(DataSet: TDataSet);

@description
  Saves the prism model to the main database.
*******************************************************************************)
procedure TdmMain.rxToInstrumentModelBeforePost(DataSet: TDataSet);
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with dmBase.rxInstrumentModel do
    begin
      if Locate('ModelID',rxToInstrumentModel.FieldByName('ModelID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxToInstrumentModel.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxToInstrumentModel.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxToInstrumentModel.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxAtInstrumentModelBeforePost(DataSet: TDataSet);

@description
  Saves the EDM instrument model to the main database.
*******************************************************************************)
procedure TdmMain.rxAtInstrumentModelBeforePost(DataSet: TDataSet);
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with dmBase.rxInstrumentModel do
    begin
      if Locate('ModelID',rxAtInstrumentModel.FieldByName('ModelID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxAtInstrumentModel.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxAtInstrumentModel.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxAtInstrumentModel.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxAtInstrumentMakeBeforePost(DataSet: TDataSet);

@description
  Saves the EDM instrument make to the main database.
*******************************************************************************)
procedure TdmMain.rxAtInstrumentMakeBeforePost(DataSet: TDataSet);
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with dmBase.rxInstrumentMake do
    begin
      if Locate('MakeID',rxAtInstrumentMake.FieldByName('MakeID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxAtInstrumentMake.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxAtInstrumentMake.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxAtInstrumentMake.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxToInstrumentMakeBeforePost(DataSet: TDataSet);

@description
  Saves the Prism make to the main database.
*******************************************************************************)
procedure TdmMain.rxToInstrumentMakeBeforePost(DataSet: TDataSet);
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with dmBase.rxInstrumentMake do
    begin
      if Locate('MakeID',rxToInstrumentMake.FieldByName('MakeID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxToInstrumentMake.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxToInstrumentMake.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxToInstrumentMake.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxJMeasureAfterScroll(DataSet: TDataSet);

@description
  Displays the distance measurements between two selected pillars.
*******************************************************************************)
procedure TdmMain.rxJMeasureAfterScroll(DataSet: TDataSet);
begin
  if doEvents then
  begin
    with rxFilteredEDMObs do
    begin
      if rxJMeasure.FieldByName('MeasId').isNull then
      begin
        doEvents := False;
        EmptyTable;
        doEvents := True;
      end
      else
      begin
        doEvents := False;
        FilterEDMObs(dmMain.rxJMeasure.FieldByName('MeasId').AsInteger);
        doEvents := True;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure FilterEDMObs( sMeasID: Integer);

@description
  Displays the distance measurements between two selected pillars.
*******************************************************************************)
procedure TdmMain.FilterEDMObs( sMeasID: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
begin
  doEvents := False;
  dmMain.rxFilteredEDMObs.EmptyTable;
  with dmBase.rxEDMObs do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('MeasID').AsInteger = sMeasID then
      begin
        dmMain.rxFilteredEDMObs.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(rxFilteredEDMObs.Fields[j].FieldName);
          strField := uppercase(Fields[i].FieldName);
          while (strFilteredField <> strField) and
                 ( j < rxFilteredEDMObs.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(rxFilteredEDMObs.Fields[j].FieldName);
          end;

          if strFilteredField = strField then
          begin
            dmMain.rxFilteredEDMObs.Fields[j].Value := Fields[i].Value;
          end;
        end;
        dmMain.rxFilteredEDMObs.Post;
      end;
      Next;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure FilterJMeasure( sJobID: Integer);

@description
  Displays the measurement sets of a selected job.
*******************************************************************************)
procedure TdmMain.FilterJMeasure( sJobID: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
begin
  doEvents := False;
  rxJMeasure.EmptyTable;
  with dmBase.rxJMeasure do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('JobID').AsInteger = sJobID then
      begin
        rxJMeasure.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(rxJMeasure.Fields[j].FieldName);
          strField := uppercase(Fields[i].FieldName);
          while (strFilteredField <> strField) and
                 ( j < rxJMeasure.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(rxJMeasure.Fields[j].FieldName);
          end;
          if strFilteredField = strField then
          begin
            rxJMeasure.Fields[j].Value := Fields[i].Value;
          end;
        end;
        rxJMeasure.Post;
      end;
      Next;
    end;
  end;
  GetPillarNumbers;
  doEvents := True;
end;

(*******************************************************************************
@procedure GetPillarNumbers;

@description
  Gets the AT and TO pillar information for a set of measurements.
*******************************************************************************)
procedure TdmMain.GetPillarNumbers;
var
  strFromPillarNo, strToPillarNo: String;
  strPillarID: String;
begin
  with rxJMeasure do
  begin
    First;
    while not EOF do
    begin
      strPillarID := FieldByName('MeasAtPillarID').AsString;
      if dmBase.rxPillar.Locate('PillarID', strPillarID,[]) then
      begin
        strFromPillarNo := dmBase.rxPillar.FieldByName('PillarNo').AsString;
      end;
      strPillarID := FieldByName('MeasToPillarID').AsString;
      if dmBase.rxPillar.Locate('PillarID', strPillarID,[]) then
      begin
        strToPillarNo := dmBase.rxPillar.FieldByName('PillarNo').AsString;
      end;
      if (strFromPillarNo <> '') and (strToPillarNo <> '') then
      begin
        Edit;
        FieldByName('AtPillarNo').AsString := strFromPillarNo;
        FieldByName('ToPillarNo').AsString := strToPillarNo;
        Post;
      end;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure rxJMeasureMeasAtHeightValidate(Sender: TField);

@description
  Validates the height above the AT pillar
*******************************************************************************)
procedure TdmMain.rxJMeasureMeasAtHeightValidate(Sender: TField);
begin
  if rxJMeasureMeasAtHeight.isNull then
  begin
    MessageDlg('Height above At Pillar must have a value',mtError,[mbOK],0);
  end;
end;

(*******************************************************************************
@procedure rxJMeasureMeasToHeightValidate(Sender: TField);

@description
  Validates the height above the TO pillar
*******************************************************************************)
procedure TdmMain.rxJMeasureMeasToHeightValidate(Sender: TField);
begin
  if rxJMeasureMeasToHeight.isNull then
  begin
    MessageDlg('Height above To Pillar must have a value',mtError,[mbOK],0);
  end;
end;

(*******************************************************************************
@procedure rxJobBeforePost(DataSet: TDataSet);

@description
  Saves the job information to the Main database.
*******************************************************************************)
procedure TdmMain.rxJobBeforePost(DataSet: TDataSet);
var
 i,j: Integer;
 strFromField, strToField: String;
begin
  if doEvents then
  begin
    with dmBase.rxJob do
    begin
      if Locate('JobId',rxJob.FieldByName('JobID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxJob.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxJob.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strToField = strFromField then
        begin
          Fields[j].Value := rxJob.Fields[i].Value;
        end;  
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxJobBeforeDelete(DataSet: TDataSet);

@description
  Deletes the job from the Main database.
*******************************************************************************)
procedure TdmMain.rxJobBeforeDelete(DataSet: TDataSet);
begin
  if doEvents then
  begin
    if dmbase.rxJob.Locate('JobID',rxJob.FieldByName('JobID').AsString,[]) then
    begin
      dmbase.rxJob.Delete;
    end;
  end;
end;

(*******************************************************************************
@procedure rxAtInstrumentModelNewRecord(DataSet: TDataSet);

@description
  Pulse meter  is not used as the default value for a new record.
*******************************************************************************)
procedure TdmMain.rxAtInstrumentModelNewRecord(DataSet: TDataSet);
begin
  rxAtInstrumentModel.FieldByName('isPulseMeter').AsBoolean := False;
end;

(*******************************************************************************
@procedure rxToInstrumentModelNewRecord(DataSet: TDataSet);

@description
  Pulse meter  is not used as the default value for a new record.
*******************************************************************************)
procedure TdmMain.rxToInstrumentModelNewRecord(DataSet: TDataSet);
begin
  rxToInstrumentModel.FieldByName('isPulseMeter').AsBoolean := False;
end;

(*******************************************************************************
@procedure rxJobNewRecord(DataSet: TDataSet);

@description
  Sets default values for a new job.
*******************************************************************************)
procedure TdmMain.rxJobNewRecord(DataSet: TDataSet);
begin
  if doEvents then
  begin
    with rxJob do
    begin
      FieldByName('NumberThermometers').AsInteger := 1;
      FieldByName('NumberBarometers').AsInteger := 1;
      FieldByName('ThermometerCorr1').AsFloat := 0;
      FieldByName('BarometerCorr1').AsFloat := 0;
      FieldByName('ThermometerCorr2').AsFloat := 0;
      FieldByName('BarometerCorr2').AsFloat := 0;
      FieldByName('Thermometer1').Clear;
      FieldByName('Thermometer2').Clear;
      FieldByName('Barometer1').Clear;
      FieldByName('Barometer2').Clear;
      FieldByName('JobTempCorr').AsFloat := 0;
      FieldByName('JobPressureCorr').AsFloat := 0;
    end;
  end;
end;

(******************************************************************************
@description
  Sets default values for a new Meteorological record.
*******************************************************************************)
procedure TdmMain.rxMetsNewRecord(DataSet: TDataSet);
begin
  if doEvents then
  begin
    with rxMets do
    begin
      FieldByName('NumberThermometers').AsInteger := 1;
      FieldByName('NumberBarometers').AsInteger := 1;
      FieldByName('ThermometerCorr1').AsFloat := 0;
      FieldByName('BarometerCorr1').AsFloat := 0;
      FieldByName('ThermometerCorr2').AsFloat := 0;
      FieldByName('BarometerCorr2').AsFloat := 0;
      FieldByName('Thermometer1').Clear;
      FieldByName('Thermometer2').Clear;
      FieldByName('Barometer1').Clear;
      FieldByName('Barometer2').Clear;
    end;
  end;
end;

(*******************************************************************************
@procedure rxPillarBeforePost(DataSet: TDataSet);

@description
  Save the pillar information to the Main database.
*******************************************************************************)
procedure TdmMain.rxPillarBeforePost(DataSet: TDataSet);
begin
  with rxPillar do
  begin
    if State = dsEdit then
    begin
       if dmbase.rxPillar.Locate('PillarID',FieldByName('PillarID').AsString,[]) then
       begin
         dmbase.rxPillar.Edit;
         dmbase.rxPillar.FieldByName('PillarOffset').Value := FieldByName('PillarOffset').Value;
         dmbase.rxPillar.FieldByName('PillarHeight').Value := FieldByName('PillarHeight').Value;
         dmbase.rxPillar.FieldByName('PillarHtStdDev').Value := FieldByName('PillarHtStdDev').Value;
         dmbase.rxPillar.Post;
       end;
    end;
  end;
end;

procedure TdmMain.rxPillarPillarHtStdDevGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull or (Sender.AsString='') then
    Text := '± 0'
  else
    Text := '± ' + FormatFloat('##0.00000',Sender.AsFloat);
end;

end.
