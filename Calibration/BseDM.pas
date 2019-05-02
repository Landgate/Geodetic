(*******************************************************************************
@formunit BseDM;

@description
  This data base module contains database tables for the Baseline application

@(c) Copyright Department of Land Information, Western Autralia, 2006
     All rights reserved.
*******************************************************************************)
unit BseDM;

interface

uses
  BseMisc,
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, ValidEdt, Wwdatsrc, SysUtils, FileCtrl, stdctrls, Math, Variants;

type
  TdmBase = class(TDataModule)
    rxmemObservation: TRxMemoryData;
    {
      rxmemObservation.db
        MeasureID
        ObsDistance
    }
    rxmemObservationMeasureID: TIntegerField;
    rxmemObservationObsDistance: TFloatField;
    rxmemMeasure: TRxMemoryData;
    {
      rxmemMeasure.db
        MeasureID
        AtPillarID
        ToPillarID
        AtHeight
        ToHeight
        DryTemp
        WetTemp
        Humidity
        HumidityType
        Pressure
        MetsFlag
        ObsCount
    }
    IntegerField1: TIntegerField;
    rxmemMeasureAtPillarID: TIntegerField;
    rxmemMeasureToPillarID: TIntegerField;
    rxmemMeasureAtHeight: TFloatField;
    rxmemMeasureToHeight: TFloatField;
    rxmemMeasureDryTemp: TFloatField;
    rxmemMeasureHumidity: TFloatField;
    rxmemMeasureHumidityType: TStringField;
    rxmemMeasurePressure: TFloatField;
    rxmemMeasureMetsFlag: TStringField;
    rxmemMeasureObsCount: TIntegerField;
    rxmemPillar: TRxMemoryData;
    {
      rxmemPillar
        PillarID
        PillarNo
        PillarLatitude
        PillarLongitude
        PillarHeight
        HorizOffset
        MajorAxis
        MinorAxis
        AzimuthMajorAxis
        StdDevHeight
    }
    rxmemPillarPillarID: TIntegerField;
    rxmemPillarPillarNo: TStringField;
    rxmemPillarPillarLatitude: TFloatField;
    rxmemPillarPillarLongitude: TFloatField;
    rxmemPillarPillarHeight: TFloatField;
    rxmemPillarHorizOffset: TFloatField;
    rxmemPillarMajorAxis: TFloatField;
    rxmemPillarMinorAxis: TFloatField;
    rxmemPillarAzimuthMajorAxis: TFloatField;
    rxmemPillarStdDevHeight: TFloatField;
    vedtLatitude: TDisplayFmt;
    vedtLongitude: TDisplayFmt;
    rxmemStdDev: TRxMemoryData;
    {
      rxmemStdDev.db
        AtPillarNo
        ToPillarNo
        StdDevCombined
        StdDevBaselineInterval
        StdDevInstrument
        StdDevObsDistance
        StdDevMeteorology
        StdDevCentring
        StdDevHeightDifference
        StdDevOffset
        LineID
        AtPillarID
        ToPillarID
        Reduced Distance
    }
    IntegerField2: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    rxmemMeasureWetTemp: TFloatField;
    rxmemStdDevStdDevOffset: TFloatField;
    rxmemStdDevStdDevCentring: TFloatField;
    rxmemStdDevStdDevMeteorology: TFloatField;
    rxmemStdDevAtPillarNo: TStringField;
    rxmemStdDevToPillarNo: TStringField;
    rxmemStdDevReducedDistance: TFloatField;
    rxmemStdDevStdDevHeightDifference: TFloatField;
    rxmemStdDevStdDevBaselineInterval: TFloatField;
    rxmemStdDevStdDevObsDistance: TFloatField;
    rxmemStdDevStdDevCombined: TFloatField;
    dsrxmemStdDev: TwwDataSource;
    rxmemStdDevStdDevInstrument: TFloatField;
    rxUncertaintyEDM: TRxMemoryData;
    {
      rxUncertaintyEDM.db
        Description
        Default
        Unit
    }
    rxUncertaintyEDMDescription: TStringField;
    rxUncertaintyEDMDefault: TFloatField;
    rxUncertaintyEDMUnit: TStringField;
    dsUncertaintyEDM: TDataSource;
    rxUncertaintyBaseline: TRxMemoryData;
    {
      rxUncertaintyBaseline.db
        Description
        Default
        Unit
    }
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    dsUncertaintyBaseline: TDataSource;
    rxJobUncertainty: TRxMemoryData;
    rxJobUncertaintyTemperature: TFloatField;
    rxJobUncertaintyPressure: TFloatField;
    rxJobUncertaintyHumidity: TFloatField;
    rxJobUncertaintyInstrumentHeight: TFloatField;
    rxJobUncertaintyReflectorHeight: TFloatField;
    rxJobUncertaintyPillarHeightDiff: TFloatField;
    rxJobUncertaintyInstrumentCentring: TFloatField;
    rxJobUncertaintyReflectorCentring: TFloatField;
    rxJobUncertaintyPillarOffset: TFloatField;
    rxJobUncertaintyRejectionCriterion: TFloatField;
    dsJobUncertainty: TDataSource;
    rxMet: TRxMemoryData;
    rxMetTemperatureCorr1: TFloatField;
    rxMetBarometerCorr1: TFloatField;
    dsMet: TwwDataSource;
    rxNewLegalDistance: TRxMemoryData;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    rxBaselineAccuracy: TRxMemoryData;
    rxBaselineAccuracyBaselineID: TIntegerField;
    rxBaselineAccuracyConstant: TFloatField;
    rxBaselineAccuracyScale: TFloatField;
    rxMethod: TRxMemoryData;
    {
      rxMethod.db
        Method
        Description
    }
    rxDefault: TRxMemoryData;
    {
      rxDefault.db
        Description
        Default
    }
    rxDefaultDescription: TStringField;
    rxDefaultDefault: TFloatField;
    rxMethodMethod: TStringField;
    dsMethod: TwwDataSource;
    rxMethodDescription: TStringField;
    dsDefault: TwwDataSource;
    rxBaselineReport: TRxMemoryData;
    rxBaselineReportFrom: TStringField;
    rxBaselineReportTo: TStringField;
    rxBaselineReportInitialDistance: TFloatField;
    rxBaselineReportCorrection: TFloatField;
    rxBaselineReportAdjustedDistance: TFloatField;
    rxBaselineReportUncertainty: TFloatField;
    rxFullReport: TRxMemoryData;
    rxFullReportmemoPage: TMemoField;
    rxFilteredBaseline: TRxMemoryData;
    rxFilteredBaselineBaselineID: TIntegerField;
    rxFilteredBaselineBaselineName: TStringField;
    rxFilteredBaselineBaselineLocation: TStringField;
    rxFilteredBaselineBaselineAuthority: TStringField;
    rxFilteredBaselineBaselineCalibrationDate: TStringField;
    rxFilteredBaselineBaselineCalibrationRef: TStringField;
    rxFilteredBaselineEllipsID: TIntegerField;
    rxFilteredBaselineBaselineConfLevel: TFloatField;
    rxFilteredBaselineBaseLegalHeight: TFloatField;
    rxFilteredBaselineBaseStdICConstant: TFloatField;
    rxFilteredBaselineBaseStdICPPM: TFloatField;
    rxFilteredBaselineBaseRelativeHumidity: TFloatField;
    rxFilteredBaselineBaselineArchiveFlag: TStringField;
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
    dsFilteredBaseline: TwwDataSource;
    rxEllipsoid: TRxMemoryData;
    {
      rxEllipsoid.db
        EllipsID
        EllipsName
        EllipsARadius
        EllipsInvFlat
    }
    rxEllipsoidEllipsID: TIntegerField;
    rxEllipsoidEllipsName: TStringField;
    rxEllipsoidEllipsARadius: TFloatField;
    rxEllipsoidEllipsInvFlat: TFloatField;
    rxFilteredDistance: TRxMemoryData;
    {
      rxFilteredDistance.db
        FromPillar
        ToPillar
        DistLegalDistance
        DistStigma
        DistID
        BaselineID
        PillarFromID
        PillarToID
    }
    rxFilteredDistanceDistID: TIntegerField;
    rxFilteredDistanceBaselineID: TIntegerField;
    rxFilteredDistancePillarFromID: TIntegerField;
    rxFilteredDistancePillarToID: TIntegerField;
    rxFilteredDistanceDistLegalDistance: TFloatField;
    rxFilteredDistanceDistSigma: TFloatField;
    rxFilteredPillar: TRxMemoryData;
    {
      rxFilteredPillar.db
        PillarNo
        PillarHeight
        PillarOffset
        PillarLatitude
        PillarLongitude
        PillarHtStdDev
        PillarEllipsARadius
        PillarEllipsBRadius
        PillarID
        BaselineID
        PillarSeqNo
    }
    rxFilteredPillarPillarID: TIntegerField;
    rxFilteredPillarBaselineID: TIntegerField;
    rxFilteredPillarPillarSeqNo: TIntegerField;
    rxFilteredPillarPillarNo: TStringField;
    rxFilteredPillarPillarHeight: TFloatField;
    rxFilteredPillarPillarOffset: TFloatField;
    rxFilteredPillarPillarLatitude: TFloatField;
    rxFilteredPillarPillarLongitude: TFloatField;
    rxFilteredPillarPillarEllipsARadius: TFloatField;
    rxFilteredPillarPillarEllipsBRadius: TFloatField;
    rxFilteredPillarPillarEllipsOrient: TFloatField;
    rxFilteredPillarPillarHtStdDev: TFloatField;
    rxDistance: TRxMemoryData;
    {
      rxDistance.db
        DistID
        BaselineID
        PillarFromID
        PillarToID
        DistLegalDistance
        DistSigma
    }
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    rxPillar: TRxMemoryData;
    {
      rxPillar.db
        PillarID
        BaselineID
        PillarSeqNo
        PillarNo
        PillarHeight
        PillarOffset
        PilarLatitude
        PillarLongitude
        PillarEllipsARadius
        PillarEllipsBRadius
        PillarEllipsOrient
        PillarHtStdDev
    }
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    StringField3: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    dsFilteredDistance: TDataSource;
    rxFilteredDistanceFromPillar: TStringField;
    rxFilteredDistanceToPillar: TStringField;
    dsFilteredPillar: TDataSource;
    rxJob: TRxMemoryData;
    {
      rxJob.db
        JobID
        JobDescription
        InstID1
        InstID2
        JobInst1Owner
        JobInst2Owner
        JobProcessingSoftware
        JobStartCalibrationDate
        JobStartCalibrationTime
        JobEndCalibationDate,
        JobEndCalibrationTime,
        JobObserverName
        BaselineID
        JobWeatherConditions
        JobTempCorr
        JobPressureCorr
        JobStdDevTemp
        JobStdDevPressure
        JobInstCentringStdDev
        JobInstLevellingStdDev
        JobType
        JobComments
        JobInst1OwnerAddress
        Thermometer1
        Thermometer2
        Barometer1
        Barometer2
        ThermometerCorr1
        ThermometerCorr2
        BarometerCorr1
        BarometerCorr2
        NumberThermometers
        NumberBarometers
    }
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
    vedtAngle: TDisplayFmt;
    dsEllipsoid: TwwDataSource;
    rxInstrument: TRxMemoryData;
    {
      rxInstrument.db
        InstID
        InstType
        ModelID
        InstSerialNo
        InstStdDevConst
        InstStdDevPPM
        AntennaModelID
        InstAntennaSerialNo
        InstConstant
        InstScaleFact
        InstComments
    }
    rxInstrumentInstSerialNo: TStringField;
    rxInstrumentInstConstant: TFloatField;
    rxInstrumentInstStdDevConst: TFloatField;
    rxInstrumentInstStdDevPPM: TFloatField;
    rxInstrumentInstComments: TStringField;
    rxInstrumentInstScaleFact: TFloatField;
    rxInstrumentInstID: TIntegerField;
    rxInstrumentInstType: TStringField;
    rxInstrumentModelID: TIntegerField;
    rxInstrumentAntennaModelID: TIntegerField;
    rxInstrumentInstAntennaSerialNo: TStringField;
    rxInstrumentModel: TRxMemoryData;
    {
      rxInstrumentModel.db
        ModelID
        MakeID
        ModelName
        ModelInstType
        ModelManufStdDevConst
        ModelManufStdDevPPM
        ModelUnitLength
        ModelModFreq
        ModelCarrierWaveLength
        ModelComments
        isPulseMeter
        ManuRefractiveIndex
    }
    rxInstrumentModelModelName: TStringField;
    rxInstrumentModelModelUnitLength: TFloatField;
    rxInstrumentModelModelModFreq: TFloatField;
    rxInstrumentModelModelCarrierWaveLength: TFloatField;
    rxInstrumentModelModelManufStdDevConst: TFloatField;
    rxInstrumentModelModelManufStdDevPPM: TFloatField;
    rxInstrumentModelModelComments: TStringField;
    rxInstrumentModelModelID: TIntegerField;
    rxInstrumentModelMakeID: TIntegerField;
    rxInstrumentModelModelInstType: TStringField;
    rxInstrumentMake: TRxMemoryData;
    {
      rxInstrumentMake.db
        MakeID
        MakeName
        MakeCountry
    }
    rxInstrumentMakeMakeName: TStringField;
    rxInstrumentMakeMakeCountry: TStringField;
    rxInstrumentMakeMakeID: TIntegerField;
    rxJMeasure: TRxMemoryData;
    {
      rxJMeasure.db
        MeasID
        MeasType
        JobID
        MeasAtPillarID
        MeasToPillarID
        MeasAtHeight
        MeasToHeight
        MeasDryTemp
        MeasHumidity
        MeasHumidityType
        MeasPressure
        MeasMetFlag
        WetTemp
        Humidity
        MeasDryTemp2
        MeasPressure2
        MeasHumidity2
    }
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
    rxEDMObs: TRxMemoryData;
    {
      rxEDMObs.db
        EDMObsID
        MeasID
        EDMObsDistance
    }
    rxEDMObsEDMObsID: TIntegerField;
    rxEDMObsMeasID: TIntegerField;
    rxEDMObsEDMObsDistance: TFloatField;
    dsEDMObs: TwwDataSource;
    rxJMeasureWetTemp: TFloatField;
    rxJMeasureHumidity: TFloatField;
    rxStandard: TRxMemoryData;
    {
      rxStandard.db
        Type
        StandardConstant
        StandardScale
        Authority
        Description
        LUMUnits
        AlternateConstant
        AlternateScale
    }
    rxStandardAuthority: TStringField;
    rxStandardDescription: TStringField;
    rxStandardStandardConstant: TFloatField;
    rxStandardStandardScale: TFloatField;
    rxStandardType: TStringField;
    dsStandard: TwwDataSource;
    rxInstrumentModelisPulseMeter: TBooleanField;
    rxSecurity: TRxMemoryData;
    {
    rxSecurity.db
      SecurityID
      Password
      DistributionVersion
      DistributionDate
      DistributionAuthority
      isRegistered
      isFirtTimeUser
    }

    rxSecuritySecurityID: TIntegerField;
    rxSecurityPassword: TStringField;
    rxSecurityDistributionVersion: TStringField;
    rxSecurityDistributionAuthority: TStringField;
    rxSecurityDistributionDate: TDateField;
    rxSecurityisRegistered: TBooleanField;
    rxSecurityisFirstTimeUser: TBooleanField;
    rxDistribution: TRxMemoryData;
    {
      rxDistribution.db
        DistributionVersion
        DistributionAuthority
        DistributionDate
    }
    StringField5: TStringField;
    DateField1: TDateField;
    StringField6: TStringField;
    dsDistribution: TwwDataSource;
    rxWindow: TRxMemoryData;
    {
      rxWindow.db
        Description
        Default
    }
    StringField4: TStringField;
    FloatField14: TFloatField;
    rxJobJobInst1OwnerAddress: TStringField;
    rxBaselineAuthorityAddress: TStringField;
    rxFilteredBaselineAuthorityAddress: TStringField;
    rxJobThermometer1: TStringField;
    rxJobThermometer2: TStringField;
    rxJobBarometer1: TStringField;
    rxJobBarometer2: TStringField;
    rxMetTemperatureCorr2: TFloatField;
    rxMetBarometerCorr2: TFloatField;
    rxJobThermometerCorr1: TFloatField;
    rxJobThermometerCorr2: TFloatField;
    rxJobBarometerCorr1: TFloatField;
    rxJobBarometerCorr2: TFloatField;
    rxJobNumberThermometers: TIntegerField;
    rxJobNumberBarometers: TIntegerField;
    rxJMeasureMeasDryTemp2: TFloatField;
    rxJMeasureMeasPressure2: TFloatField;
    rxJMeasureMeasHumidity2: TFloatField;
    rxBaselineX: TRxMemoryData;
    {
      rxBaselineX.db
        BaselineID
        BaselineName
        BaselineLocation
        BaselineAuthority
        BaselineCalibrationDate
        BaselineCalibrationRef
        EllipsID
        BaselineConfLevel
        BaseLegalHeight
        BaseStdICConstant
        BaseStdICPPM
        BaseRelativeHumidity
        BaselineArchiveFlag
        AuthorityAddress
    }
    IntegerField17: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField18: TIntegerField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    rxPillarX: TRxMemoryData;
    {
      rxPillarX.db
        PillarID
        BaselineID
        PillarSeqNo
        PillarNo
        PillarHeight
        PillarOffset
        PillarLatitude
        PillarLongitude
        PillarEllipsARadius
        PillarEllipsBRadius
        PillarEllipsOrient
        PillarHtStdDev
    }
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    StringField14: TStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    rxDistanceX: TRxMemoryData;
    {
      rxDistanceX.db
        DistID
        BaselineID
        PillarFromID
        PillarToID
        DistLegalDistance
        DistSigma
    }
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    rxBaselineAccuracyX: TRxMemoryData;
    {
      rxBaselineAccuracyX
        BaselineID
        UncertaintyConstant
        UncertaintyScale
    }
    IntegerField26: TIntegerField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    rxMethodX: TRxMemoryData;
    {
      rxMethodX.db
        Method
        Description
    }
    rxMethodXMethod: TStringField;
    rxMethodXDescription: TStringField;
    rxInstrumentModelManuRefractiveIndex: TFloatField;
    rxBaselineDefault: TRxMemoryData;
    {
      rxBaselineDefault.db
        BaselineID
        Description
        Default
        Unit
    }
    StringField15: TStringField;
    FloatField32: TFloatField;
    StringField16: TStringField;
    rxBaselineDefaultBaselineID: TIntegerField;
    rxBaselineDefaultFilter: TRxMemoryData;
    {
      rxBaselineDefaultFilter.db
        BaselineID
        Description
        Default
        Unit
    }
    IntegerField3: TIntegerField;
    StringField17: TStringField;
    FloatField33: TFloatField;
    StringField18: TStringField;
    dsBaselineDefault: TDataSource;
    rxBaselineDefaultX: TRxMemoryData;
    {
      rxBaselineDefaultX.db
        BaselineID
        Description
        Default
        Unit
    }
    rxBaselineDefaultXBaselineID: TIntegerField;
    StringField19: TStringField;
    FloatField34: TFloatField;
    StringField20: TStringField;
    rxInstrumentX: TRxMemoryData;
    {
      rxInstrumentX
        InstID
        InstType
        ModelID
        InstSerialNo
        InstStdDevConst
        InstStdDevPPM
        AntennaModelID
        InstAntennaModelID
        InstConstant
        InstScaleFact
        InstComments
    }
    rxInstrumentXInstID: TIntegerField;
    rxInstrumentXInstType: TStringField;
    rxInstrumentXModelID: TIntegerField;
    rxInstrumentXInstSerialNo: TStringField;
    rxInstrumentXInstStdDevConst: TFloatField;
    rxInstrumentXInstStdDevPPM: TFloatField;
    rxInstrumentXAntennaModelID: TIntegerField;
    rxInstrumentXInstAntennaSerialNo: TStringField;
    rxInstrumentXInstConstant: TFloatField;
    rxInstrumentXInstScaleFact: TFloatField;
    rxInstrumentXInstComments: TStringField;
    rxInstrumentModelX: TRxMemoryData;
    {
      rxInstrumentModelX.db
        ModelID
        MakeID
        ModelName
        ModelInstType
        ModelManufStdDevConst
        ModelManufStdDevPPM
        ModelUnitLength
        ModelModFreq
        ModelCarrierWaveLength
        ModelComments
        isPulseMeter
        ManuRefractiveIndex
    }
    rxInstrumentModelXMakeID: TIntegerField;
    rxInstrumentModelXModelID: TIntegerField;
    rxInstrumentModelXModelName: TStringField;
    rxInstrumentModelXModelInstType: TStringField;
    rxInstrumentModelXModelManufStdDevConst: TFloatField;
    rxInstrumentModelXModelManufStdDevPPM: TFloatField;
    rxInstrumentModelXModelUnitLength: TFloatField;
    rxInstrumentModelXModelModFreq: TFloatField;
    rxInstrumentModelXModelCarrierWaveLength: TFloatField;
    rxInstrumentModelXModelComments: TStringField;
    rxInstrumentModelXisPulseMeter: TBooleanField;
    rxInstrumentModelXManuRefractiveIndex: TFloatField;
    rxInstrumentMakeX: TRxMemoryData;
    {
      rxInstrumentMakeX.db
        MakeID
        MakeName
        MakeCountry
    }
    rxInstrumentMakeXMakeID: TIntegerField;
    rxInstrumentMakeXMakeName: TStringField;
    rxInstrumentMakeXMakeCountry: TStringField;
    rxBaselineDefaultFilterEDM: TRxMemoryData;
    {
      rxBaselineDefaultFilterEDM.db
        Description
        Default
        Unit
        BaselineID
    }
    StringField21: TStringField;
    FloatField35: TFloatField;
    StringField22: TStringField;
    IntegerField4: TIntegerField;
    rxBaselineDefaultFilterBase: TRxMemoryData;
    {
      rxBaselineDefaultFilterBase.db
        Description
        Default
        Unit
        BaselineID
    }
    StringField23: TStringField;
    FloatField36: TFloatField;
    StringField24: TStringField;
    IntegerField27: TIntegerField;
    dsBaselineDefaultFilterEDM: TDataSource;
    dsBaselineDefaultFilterBase: TDataSource;
    rxStandardLUMUnits: TStringField;
    rxStandardAlternateConstant: TFloatField;
    rxStandardAlternateScale: TFloatField;
    rxEDMObsMeasDryTemp: TFloatField;
    rxEDMObsMeasHumidity: TFloatField;
    rxEDMObsMeasPressure: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure rxUncertaintyEDMBeforeDelete(DataSet: TDataSet);
    procedure rxUncertaintyEDMBeforeInsert(DataSet: TDataSet);
    procedure rxUncertaintyBaselineBeforeInsert(DataSet: TDataSet);
    procedure rxUncertaintyBaselineBeforeDelete(DataSet: TDataSet);
    procedure rxFilteredPillarPillarLatitudeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure rxFilteredPillarPillarLatitudeSetText(Sender: TField;
      const Text: String);
    procedure rxFilteredPillarPillarLongitudeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure rxFilteredPillarPillarLongitudeSetText(Sender: TField;
      const Text: String);
    procedure rxFilteredPillarPillarEllipsOrientGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure rxFilteredPillarPillarEllipsOrientSetText(Sender: TField;
      const Text: String);
    procedure rxFilteredPillarNewRecord(DataSet: TDataSet);
    procedure rxFilteredPillarBeforePost(DataSet: TDataSet);
    procedure rxFilteredPillarAfterPost(DataSet: TDataSet);
    procedure rxFilteredPillarAfterDelete(DataSet: TDataSet);
    procedure rxFilteredPillarBeforeDelete(DataSet: TDataSet);
    procedure rxFilteredDistanceBeforePost(DataSet: TDataSet);
    procedure rxFilteredDistanceAfterDelete(DataSet: TDataSet);
    procedure rxFilteredBaselineNewRecord(DataSet: TDataSet);
    procedure rxFilteredBaselineBeforePost(DataSet: TDataSet);
    procedure rxFilteredBaselineBeforeDelete(DataSet: TDataSet);
    procedure rxFilteredDistanceBeforeDelete(DataSet: TDataSet);
    procedure rxInstrumentModelNewRecord(DataSet: TDataSet);
    procedure rxFilteredDistanceDistSigmaGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    doCancel: Boolean;
    doEvents: Boolean;
    hasNewBaseline: Boolean;
    isUsedByJob: Boolean;
    sNextPillarID: Integer;
    sNextPillarNumber: Integer;
    sNextDistID: Integer;
    function LoadFromTextFileToTable(Table: TRXMemoryData) : Boolean;
    function LoadFromTextFileToTable2(strFolder: String; Table: TRXMemoryData) : Boolean;
    procedure SaveTableToTextFile(Table: TDataSet);
    procedure SaveTableToTextFile2(strFolder: String; Table: TDataSet);
    procedure SetReadAndWrite(Table: TDataSet);
    function FieldToDate(strField: String; var aDate: TDate ): Boolean;
    procedure InitUncertaintyTables;
    procedure InitUncertaintyTable(strCalibrationType: String; Table: TDataSet);
    procedure InitMethodTable(Table: TDataSet; isDLI: Boolean; canCalibrateBaseline: Boolean);
    procedure InitDefaultTable(Table: TDataSet);
    procedure ComputeBaselineAccuracy( DistanceTable: TDataSet;
              var dUncertaintyConstant: Double; var dUncertaintyScale: Double);
    procedure FilterBaseline(strFilter: String);
    procedure FilterPillar( sBaselineId: Integer);
    procedure FilterDistance( sBaselineId: Integer);
    function GetLastId(rxTable: TRxMemoryData; IDName: String): Integer;
    procedure RefreshDistanceTable;
    procedure InitStandardTable(Table: TDataSet);
    procedure InitSecurityTable(Table: TDataSet);
    procedure InitAccreditationTable(Table: TDataSet);
    procedure InitLegalTraceabilityTable(Table: TDataSet);
    procedure UpdateMethodDescription(aMemo: TMemo; strMethod: string);
    procedure GetMethodDescription(var aMemo: TMemo; strMethod: string);
    procedure InitBaselineDefaults;
    procedure InitBaselineDefault(sBaselineID: Integer);
    procedure FilterBaselineDefault(sBaselineID: Integer);
    procedure DeleteBaselineDefault(sBaselineID: Integer);
    procedure SortInstrumentMakes;
    function SortTable( rxTable: TrxMemoryData; strIDName, strSortName: string): Integer;
    procedure SaveBaselineDefaults;
    procedure CleanBaselineDefaults;
  end;

var
  dmBase: TdmBase;
  doEvent: Boolean;
  RxAlias: String;
  dRejectionCriterion: Double;
  sNextMakeId: Integer;
  sNextModelId: Integer;

implementation

{$R *.DFM}
uses BSEBase2;

(*******************************************************************************
@procedure DataModuleCreate(Sender: TObject);

@description
  Activates the memory modules.
*******************************************************************************)
procedure TdmBase.DataModuleCreate(Sender: TObject);
begin
  doCancel := False;
  rxmemMeasure.Active := true;
  rxmemPillar.Active := True;
  rxmemObservation.Active := True;
  rxNewLegalDistance.Active := True;
  rxmemStdDev.Active := True;
  rxJobUncertainty.Active := True;
  rxUncertaintyEDM.Active := True;
  rxUncertaintyBaseline.Active := True;
  rxBaselineAccuracy.Active := True;
  rxMet.Active := True;
  rxMethod.Active := True;
  rxMethodX.Active := True;
  rxDefault.Active := True;
  rxBaselineReport.Active := True;
  rxBaseline.Active := True;
  rxFilteredBaseline.Active := True;
  rxEllipsoid.Active := True;
  rxDistance.Active := True;
  rxPillar.Active := True;
  rxFilteredDistance.Active := True;
  rxFilteredPillar.Active := True;
  rxJob.Active := True;
  rxInstrument.Active := True;
  rxInstrumentModel.Active := True;
  rxInstrumentMake.Active := True;
  rxInstrumentX.Active := True;
  rxInstrumentModelX.Active := True;
  rxInstrumentMakeX.Active := True;
  rxJMeasure.Active := True;
  rxEDMObs.Active := True;
  rxStandard.Active := True;
  rxDistribution.Active := True;
  rxSecurity.Active := True;
  rxWindow.Active := True;
  rxBaselineDefault.Active := True;
  rxBaselineDefaultFilterEDM.Active := True;
  rxBaselineDefaultFilterBase.Active := True;
  rxBaselineDefaultX.Active := True;
end;

(*******************************************************************************
@procedure TLoadFromTextFileToTable(Table: TRXMemoryData) : Boolean;

@description
  Loads the data from an encrypted data file into a memory module.
*******************************************************************************)
function TdmBase.LoadFromTextFileToTable(Table: TRXMemoryData) : Boolean;
var
 i,j,P : Integer;
 strLine: String;
 strField: String;
 Lines: TStringList;
 hasFields : Boolean;
 TextFileName: String;
 Attributes: DWORD;
 aDate: TDate;
 doEncryption: Boolean;
begin
  result := False;
  try
    doEncryption := False;
    TextFileName := rxAlias + Table.Name+'.db';
    Lines:= TStringList.Create;
    try
      Result := False;
      Table.EmptyTable;
      if FileExists(TextFileName) then
      begin
        Attributes := GetFileAttributes(PChar(TextFileName));
        Attributes := Attributes and not faReadOnly;
        Attributes := Attributes and not faHidden;
        FileSetAttr(TextFileName, Attributes);
        Attributes := FileGetAttr(TextFileName);
        SetReadAndWrite(Table);
        Lines.LoadFromFile(TextFileName);
        if Lines.Count > 0 then
        begin
          strLine := Lines[0];
          if strLine = '#Encrypted' then
            doEncryption := True;

          for i := 0 to Lines.Count-1 do
          begin
            strLine := Lines[i];
            Table.Append;
            hasFields := False;
            if not ((i = 0) and doEncryption) then
            begin
              if doEncryption then
                strLine := Decrypt(strLine);

              for j:= 0 to Table.FieldCount - 1 do
              begin
                P := Pos('|',strLine);
                if P > 0 then
                begin
                  strField := Trim(Copy(strLine,1,P-1));
                  strLine := Copy(strLine,P+1,length(strLine));
                  if Table.Fields[j].DataType = ftDate then
                  begin
                    if FieldToDate(strField, aDate) then
                      Table.Fields[j].AsDateTime := aDate
                    else
                      Table.Fields[j].Clear;
                  end;
                  Table.Fields[j].AsString := strField;
                  hasFields := True;
                end
                else
                begin
                  if length(strLine) > 0 then
                  begin
                    strField := Trim(strLine);
                    Table.Fields[j].AsString := strField;
                    hasFields := True;
                    strLine := '';
                  end;
                end;
                                                                                                                                                                                                                                               end;
              if hasFields then
                Table.Post;
            end;
          end;
          Table.First;
          Result := True;
        end;
      end;
    finally
      Lines.Free;
    end;
  except on E:Exception do
    MessageDlg('Exception raised loading data from text file:'+#13+
      TextFileName+#13+'to table: '+table.Name+#13+'Exception Message: '+
      E.Message, mtError, [mbOK], 0);
  end;
end;

(*******************************************************************************
@procedure LoadFromTextFileToTable2(strFolder: String; Table: TRXMemoryData) : Boolean;

@description
  Loads the data from an encrypted data file from the selected folder
  into a memory module.
*******************************************************************************)
function TdmBase.LoadFromTextFileToTable2(strFolder: String; Table: TRXMemoryData) : Boolean;
var
 i,j,P : Integer;
 strLine: String;
 strField: String;
 Lines: TStringList;
 hasFields : Boolean;
 TextFileName: String;
 Attributes: Word;
 aDate: TDate;
 doEncryption: Boolean;
begin
  doEncryption := False;
  TextFileName := strFolder + Table.Name+'.db';
  Lines:= TStringList.Create;
  Result := False;
  Table.EmptyTable;
  if FileExists(TextFileName) then
  begin
    Attributes := FileGetAttr(TextFileName);
    Attributes := Attributes and not faReadOnly;
    Attributes := Attributes and not faHidden;
    FileSetAttr(TextFileName, Attributes);

    SetReadAndWrite(Table);

    Lines.LoadFromFile(TextFileName);
    if Lines.Count > 0 then
    begin
      strLine := Lines[0];
      if strLine = '#Encrypted' then
      begin
        doEncryption := True;
      end;

      for i := 0 to Lines.Count-1 do
      begin
        strLine := Lines[i];
        Table.Append;
        hasFields := False;
        if not ((i = 0) and doEncryption) then
        begin
          if doEncryption then
          begin
            strLine := Decrypt(strLine);
          end;
          for j:= 0 to Table.FieldCount - 1 do
          begin
            P := Pos('|',strLine);
            if P > 0 then
            begin
              strField := Trim(Copy(strLine,1,P-1));
              strLine := Copy(strLine,P+1,length(strLine));
              if Table.Fields[j].DataType = ftDate then
              begin
                if FieldToDate(strField, aDate) then
                begin
                  Table.Fields[j].AsDateTime := aDate;
                end
                else
                begin
                  Table.Fields[j].Clear;
                end;
              end;
              Table.Fields[j].AsString := strField;
              hasFields := True;
            end
            else
            begin
              if length(strLine) > 0 then
              begin
                strField := Trim(strLine);
                Table.Fields[j].AsString := strField;
                hasFields := True;
                strLine := '';
              end;
            end;
          end;
          if hasFields then
          begin
            Table.Post;
          end;
        end;
      end;
      Table.First;
      Result := True;
    end;
  end;
  Lines.Free;
end;

(*******************************************************************************
@procedure SaveTableToTextFile(Table: TDataSet);

@description
  Loads the data from a specific memory module into an encrypted data file.
*******************************************************************************)
procedure TdmBase.SaveTableToTextFile(Table: TDataSet);
var
 i : Integer;
 S: String;
 Lines: TStringList;
 TextFileName: String;
 Attributes: DWORD;
 strField: String;
 tableIsEmpty: boolean;
begin
  doEvent := False;
  TextFileName := rxAlias + Table.Name+'.db';

  Lines:= TStringList.Create;
  Lines.Add('#Encrypted');
  tableIsEmpty := Table.RecordCount = 0;
  if not tableIsEmpty then
  begin
    if FileExists(TextFileName) then
    begin
      //Attributes := FileGetAttr(TextFileName);
      Attributes := GetFileAttributes(PChar(TextFileName));
      Attributes := Attributes and not faReadOnly;
      Attributes := Attributes and not faHidden;
      FileSetAttr(TextFileName, Attributes);
    end; {if}

    Table.First;
    while not Table.EOF do
    begin
      S := '';
      for i := 0 to Table.FieldCount - 1 do
      begin
        if Table.Fields[i].DataType = ftMemo then
        begin
          if Table.Fields[i].AsString = '' then
            S := S + '|'
          else
            S := S + Table.Fields[i].AsString + '|';
        end {if}
        else
        begin
          if Table.Fields[i].IsNull then
            S := S + '|'
          else
          begin
            if Table.Fields[i].DataType = ftDate then
            begin
              strField := FormatDateTime('DD/MM/YYYY',Table.Fields[i].AsDateTime);
              S := S + strField + '|';
            end {if}
            else
              S := S + Table.Fields[i].AsString + '|';
          end; {else}
        end; {else}
      end; {for}
      Delete(S,Length(S),1);
      S := Encrypt(S);
      Lines.Add(S);    // Write to stringlist first to minimize Disk Interface
      Table.Next;
    end; {while}
//    Attributes := FileGetAttr(TextFileName);
//    Attributes := Attributes or faReadOnly;
//    Attributes := Attributes or faHidden;
//    FileSetAttr(TextFileName, Attributes);
  end; {if}

  if not tableIsEmpty then
    Lines.SaveToFile(TextFileName);

  Lines.Free;
  doEvent := True;
end;

(*******************************************************************************
@procedure SaveTableToTextFile2(strFolder: String; Table: TDataSet);

@description
  Loads the data from a specific memory module in the selected folder
  into an encrypted data file.
*******************************************************************************)
procedure TdmBase.SaveTableToTextFile2(strFolder: String; Table: TDataSet);
var
 i : Integer;
 S: String;
 Lines: TStringList;
 TextFileName: String;
 strField: String;
begin
  TextFileName := strFolder + Table.Name+'.db';

  Lines:= TStringList.Create;
  Lines.Add('#Encrypted');

  if Table.RecordCount > 0 then
  begin
    Table.First;
    while not Table.EOF do
    begin
      S := '';
      for i := 0 to Table.FieldCount - 1 do
      begin
        if Table.Fields[i].DataType = ftMemo then
        begin
          if Table.Fields[i].AsString = '' then
          begin
            S := S + '|';
          end
          else
          begin
            S := S + Table.Fields[i].AsString + '|';
          end;
        end
        else
        begin
          if Table.Fields[i].IsNull then
          begin
            S := S + '|';
          end
          else
          begin
            if Table.Fields[i].DataType = ftDate then
            begin
              strField := FormatDateTime('DD/MM/YYYY',Table.Fields[i].AsDateTime);
              S := S + strField + '|';
            end
            else
            begin
              S := S + Table.Fields[i].AsString + '|';
            end;
          end;
        end;
      end;
      Delete(S,Length(S),1);
      S := Encrypt(S);
      Lines.Add(S);    // Write to stringlist first to minimize Disk Interface
      Table.Next;
    end;
    Lines.SaveToFile(TextFileName);
  end;
  Lines.Free;
end;

(*******************************************************************************
@procedure SetReadAndWrite(Table: TDataSet);

@description
  All fields in a selected table are set to Read and Write.
*******************************************************************************)
procedure TdmBase.SetReadAndWrite(Table: TDataSet);
var
  j: Integer;
begin
  for j:= 0 to Table.FieldCount - 1 do
  begin
    Table.Fields[j].ReadOnly := False;
  end;
end;

(*******************************************************************************
@procedure FieldToDate( strField: String; var aDate: TDate ): Boolean;

@description
  Converts a string into a date type
*******************************************************************************)
function TdmBase.FieldToDate(
  strField: String;
  var aDate: TDate ): Boolean;
var
  sPos: Integer;
  strday, strMonth, strYear: String;
begin
  Result := False;
  aDate := Date;
  sPos := Pos('/',strField);
  if sPos > 0 then
  begin
    strDay := Copy(strField,0,sPos-1);
    strField := Copy(strField,sPos+1,length(strField));
    sPos := Pos('/',strField);
    if sPos > 0 then
    begin
      strMonth:= Copy(strField,0,sPos-1);
      strYear := Copy(strField,sPos+1,length(strField));
      try
        aDate := EncodeDate(StrToInt(strYear), StrToInt(strMonth), StrToInt(strDay));
        Result := True;
      except
        aDate := Date;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure InitUncertaintyTables;

@description
  Initialises the all uncertainty tables
*******************************************************************************)
procedure TdmBase.InitUncertaintyTables;
begin
  InitUncertaintyTable('EDM',dmBase.rxUncertaintyEDM);
  InitUncertaintyTable('Baseline',dmBase.rxUncertaintyBaseline);
  InitBaselineDefaults;
end;

(*******************************************************************************
@procedure InitUncertaintyTable(strCalibrationType: String; Table: TDataSet);

@description
  Stores default values in a given table;
*******************************************************************************)
procedure TdmBase.InitUncertaintyTable(strCalibrationType: String; Table: TDataSet);
begin
  with Table do
  begin
    if isEmpty then
    begin
      Append;
      FieldByName('Description').AsString := 'Temperature';
      FieldByName('Default').AsFloat := 1.5;
      if strCalibrationType = 'Baseline' then FieldByName('Default').AsFloat := 0.8;
      FieldByName('Unit').AsString := 'Celsius';
      Post;
      Append;
      FieldByName('Description').AsString := 'Pressure';
      FieldByName('Default').AsFloat := 2.0;
      if strCalibrationType = 'Baseline' then FieldByName('Default').AsFloat := 1.0;
      FieldByName('Unit').AsString := 'hPa';
      Post;
      Append;
      FieldByName('Description').AsString := 'Humidity';
      FieldByName('Default').AsFloat := 6.0;
      if strCalibrationType = 'Baseline' then FieldByName('Default').AsFloat := 3.0;
      FieldByName('Unit').AsString := '%';
      Post;
      Append;
      FieldByName('Description').AsString := 'Instrument centring';
      FieldByName('Default').AsFloat := 1;
      if strCalibrationType = 'Baseline' then FieldByName('Default').AsFloat := 0.5;
      FieldByName('Unit').AsString := 'mm';
      Post;
      Append;
      FieldByName('Description').AsString := 'Reflector centring';
      FieldByName('Default').AsFloat := 1;
      if strCalibrationType = 'Baseline' then FieldByName('Default').AsFloat := 0.5;
      FieldByName('Unit').AsString := 'mm';
      Post;
      Append;
      FieldByName('Description').AsString := 'Instrument height above pillar';
      FieldByName('Default').AsFloat := 2.0;
      if strCalibrationType = 'Baseline' then FieldByName('Default').AsFloat := 1.0;
      FieldByName('Unit').AsString := 'mm';
      Post;
      Append;
      FieldByName('Description').AsString := 'Reflector height above pillar';
      FieldByName('Default').AsFloat := 2.0;
      if strCalibrationType = 'Baseline' then FieldByName('Default').AsFloat := 1.0;
      FieldByName('Unit').AsString := 'mm';
      Post;
      Append;
      FieldByName('Description').AsString := 'Pillar offset';
      FieldByName('Default').AsFloat := 1.0;
      FieldByName('Unit').AsString := 'mm';
      Post;
      Append;
      FieldByName('Description').AsString := 'Pillar Height Difference';
      FieldByName('Default').AsFloat := 1.0;
      FieldByName('Unit').AsString := 'mm';
      Post;
      Append;
      FieldByName('Description').AsString := 'Rejection Criterion';
      FieldByName('Default').AsFloat := 3;
      FieldByName('Unit').AsString := 'Std Dev';
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure rxUncertaintyEDMBeforeDelete(DataSet: TDataSet);

@description
  The user can not delete a record in the rxUncertaintyEDM table
*******************************************************************************)
procedure TdmBase.rxUncertaintyEDMBeforeDelete(DataSet: TDataSet);
begin
  if doEvent then
  begin
    Abort;
  end;
end;

(*******************************************************************************
@procedure rxUncertaintyEDMBeforeInsert(DataSet: TDataSet);

@description
  The user can not insert a new record in the rxUncertaintyEDM table
*******************************************************************************)
procedure TdmBase.rxUncertaintyEDMBeforeInsert(DataSet: TDataSet);
begin
  if doEvent then
  begin
    Abort;
  end;
end;

(*******************************************************************************
@procedure rxUncertaintyBaselineBeforeInsert(DataSet: TDataSet);

@description
  The user can not insert a new record in the rxUncertaintyBaseline table
*******************************************************************************)
procedure TdmBase.rxUncertaintyBaselineBeforeInsert(DataSet: TDataSet);
begin
  if doEvent then
  begin
    Abort;
  end;
end;

(*******************************************************************************
@procedure rxUncertaintyBaselineBeforeDelete(DataSet: TDataSet);

@description
  The user can not delete a record in the rxUncertaintyBaseline table
*******************************************************************************)
procedure TdmBase.rxUncertaintyBaselineBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

(*******************************************************************************
@procedure InitMethodTable(Table: TDataSet; isDLI: Boolean; canCalibrateBaseline: Boolean);

@description
  Stores default values if the table is empty
*******************************************************************************)
procedure TdmBase.InitMethodTable(Table: TDataSet; isDLI: Boolean; canCalibrateBaseline: Boolean);
var
   strDir, strFile: String;
begin
  strDir := ExtractFilePath(Application.ExeName);
  with Table do
  begin
    if isEmpty then
    begin
      Append;
      FieldByName('method').AsString := 'Baseline Calibration Procedure';
      if isDLI then
      begin
        FieldByName('description').AsString :=
        'The calibration of the Baseline has been carried out '+
        'according to Work Instructions '+'''2000/03/1777'''+', Revision 1 of the Quality '+
        'Management System (ISO 9002 Certification) at the Department of Land Information, Western Australia.';
      end
      else
      begin
        FieldByName('description').AsString :=
        'The calibration of the Baseline has been carried out '+
        'according to Work Instructions provided by the Testing Authority.'
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'EDM Instrument Calibration Procedure';
      if isDLI then
      begin
        if canCalibrateBaseline then
        begin
          FieldByName('description').AsString :=
          'The calibration of the EDM Instrument has been carried out '+
          'according to Work Instructions '+'''2000/02/1550'''+', Revision 3 of the Quality '+
          'Management System (ISO 9002 Certification) at the Department of Land Information, Western Australia.';
        end
        else
        begin
          FieldByName('description').AsString :=
          'The calibration of the EDM Instrument has been carried out '+
          'according to Work Instructions provided by the Department of Land Information, Western Australia.';
        end;
      end
      else
      begin
        FieldByName('description').AsString :=
        'The calibration of the EDM Instrument has been carried out '+
        'according to Work Instructions provided by the Testing Authority.'
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Baseline Traceability';
      if isDLI then
      begin
        FieldByName('description').AsString :=
        'The baseline has been calibrated in accordance with the NATA requirements '+
        'which include the requirements of ISO/IEC 17025 and are traceable to '+
        'the Australian national standards for length in accordance with Section 10 '+
        'of the National Measurement Act.';
      end
      else
      begin
        FieldByName('description').AsString :=
        'The baseline distances should be traceable to '+
        'standards specified by the Testing Authority.';
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'EDM Instrument Traceability';
      if isDLI then
      begin
        FieldByName('description').AsString :=
        'The EDM instrument has been calibrated in accordance with the NATA requirements '+
        'which include the requirements of ISO/IEC 17025 and are traceable to '+
        'the Australian national standards for length in accordance with Section 10 '+
        'of the National Measurement Act.';
      end
      else
      begin
        FieldByName('description').AsString :=
        'The EDM instrument calibration should be traceable to '+
        'standards specified by the Testing Authority.';
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'EDM Accreditation Statement';
      if isDLI then
      begin
        FieldByName('description').AsString :=
        'The EDM instrument has been calibrated in accordance with the NATA requirements '+
        'which include the requirements of ISO/IEC 17025 and are traceable to '+
        'the Australian national standards for length in accordance with Section 10 '+
        'of the National Measurement Act.';
      end
      else
      begin
        FieldByName('description').AsString :=
        'The EDM instrument has been calibrated according to Accreditation requirements '+
        'and are traceable to the Australian national standards for length';
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Baseline Accreditation Statement';
      if isDLI then
      begin
        FieldByName('description').AsString :=
        'The Baseline has been calibrated in accordance with the NATA requirements '+
        'which include the requirements of ISO/IEC 17025 and are traceable to '+
        'the Australian national standards for length in accordance with Section 10 '+
        'of the National Measurement Act.';
      end
      else
      begin
        FieldByName('description').AsString :=
        'The Baseline has been calibrated according to Accreditation requirements '+
        'and are traceable to the Australian national standards for length';
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Computation method';
      FieldByName('description').AsString :=
      'The computation methods are derived from algorithms in the Manual '+
      '''Baseline Version 5.3 - Calibration of EDM instruments and baselines''.'+
      'This manual is available from the Department of Land Information, Western Australia''.';
      Post;
      Append;
      FieldByName('method').AsString := 'Accreditation';
      if isDLI then
      begin
        FieldByName('description').AsString := 'Y';
      end
      else
      begin
        FieldByName('description').AsString := 'N';
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Accreditation Authority';
      if isDLI then
      begin
        FieldByName('description').AsString := 'NATA';
      end
      else
      begin
        FieldByName('description').Clear;
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Accreditation Date';
      if isDLI then
      begin
        FieldByName('description').AsString := '18/06/2003';
      end
      else
      begin
        FieldByName('description').Clear;
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Accreditation Logo';
      if isDLI then
      begin
        strFile := strDir + 'NATA.bmp';
        if FileExists(strFile) then
        begin
          FieldByName('description').AsString := strDir + 'NATA.bmp';
        end
        else
        begin
          FieldByName('description').Clear;
        end;
      end
      else
      begin
        FieldByName('description').Clear;
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Testing Authority';
      if isDLI then
      begin
        FieldByName('description').AsString := 'DLI';
      end
      else
      begin
        FieldByName('description').Clear;
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Authority Logo';
      if isDLI then
      begin
        strFile := strDir + 'DOLI.bmp';
        if FileExists(strFile) then
        begin
          FieldByName('description').AsString := strDir + 'DOLI.bmp';
        end
        else
        begin
          FieldByName('description').Clear;
        end;
      end
      else
      begin
        FieldByName('description').Clear;
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Quality Logo';
      if isDLI then
      begin
        strFile := strDir + 'ISO9002Hor.bmp';
        if FileExists(strFile) then
        begin
          FieldByName('description').AsString := strDir + 'ISO9002Hor.bmp';
        end
        else
        begin
          FieldByName('description').Clear;
        end;
      end
      else
      begin
        FieldByName('description').Clear;
      end;
      Post;
      Append;
      FieldByName('method').AsString := 'Legal Traceability';
      FieldByName('description').AsString :=
                 'To obtain a regulation 13 Certificate for the purpose of legal traceability'+
                 ' to the Australian standard of length contact the Verifying Authority'+
                 ' responsible for length measurements in your State or Territory.';
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure InitDefaultTable(Table: TDataSet);

@description
  Stores default values if the table is empty
*******************************************************************************)
procedure TdmBase.InitDefaultTable(Table: TDataSet);
begin
  with Table do
  begin
    if isEmpty then
    begin
      Append;
      FieldByName('description').AsString := 'Confidence Level';
      FieldByName('Default').AsFloat := 95;
      Post;
      Append;
      FieldByName('description').AsString := 'Coverage Factor';
      FieldByName('Default').AsFloat := 2;
      Post;
    end
    else
    begin
      if Locate('Description','VarianceFactorControl',[]) then
      begin
        dmBase.rxDefault.Delete;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure ComputeBaselineAccuracy( DistanceTable: TDataSet;
  var dUncertaintyConstant: Double; var dUncertaintyScale: Double);

@description
  Computes the uncertainties of a baseline from the calibration results.
*******************************************************************************)
procedure TdmBase.ComputeBaselineAccuracy(
  DistanceTable: TDataSet;
  var dUncertaintyConstant: Double;
  var dUncertaintyScale: Double);
var
  dConstant:        DOUBLE; // Constant part of EDM std dev
  dScale:           DOUBLE; // Scale PPM  of EDM std dev
  dX, dY, dXY, dX2: DOUBLE; // Terms in equations
  dSumX, dSumY:     DOUBLE; // Terms in equations
  dSumXY, dSumX2:   DOUBLE; // Terms in equations
  dDistanceFromPillar1 : Double;
  dUncertaintyFromPillar1 : Double;
  dCoveragefactor: Double;
  dPreviousSigma: Double;
begin
  dSumX  := 0.000;
  dSumY  := 0.000;
  dSumXY := 0.000;
  dSumX2 := 0.000;
  dDistanceFromPillar1 := 0;
  dCoverageFactor := 2;
  dUncertaintyConstant := 0;
  dUncertaintyScale := 0;
  with DistanceTable do
  begin
    if RecordCount > 0 then
    begin
      dPreviousSigma := 0;
      First;
      while not EOF do
      begin
        dUncertaintyFromPillar1 :=
          sqrt(Abs(sqr(FieldByName('DistSigma').AsFloat) -
          sqr(dPreviousSigma)));
        dPreviousSigma := dUncertaintyFromPillar1;
        dY :=  dUncertaintyFromPillar1/ dCoverageFactor;
        dDistanceFromPillar1  :=
          dDistanceFromPillar1 +
          FieldByName('DistLegalDistance').AsFloat;
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
    end
    else
    begin
      dConstant := 0;
      dScale    := 0;
    end;

    if (dConstant < 0.0000) then
    begin
      dConstant := 0.000;
    end;
    dUncertaintyConstant := dConstant*1000;

    if (dScale < 0.0000) then
    begin
      dUncertaintyConstant := 0.0000;
      dUncertaintyScale := 0.0000;
    end
    else
    begin
      dUncertaintyScale := dScale * 1000000.000;
    end;
  end;
  dUncertaintyConstant := 2 * dUncertaintyConstant;
  dUncertaintyScale := 2 * dUncertaintyScale;
end;

(*******************************************************************************
@procedure FilterBaseline(strFilter: String);

@description
  Filters a Baseline table (Archived or unarchived baselines)
*******************************************************************************)
procedure TdmBase.FilterBaseline(strFilter: String);
var
  i, j: Integer;
  strFilteredFieldName: String;
  strFieldName: String;
begin
 doEvents := False;
 sNextDistID := GetLastID(rxDistance,'DistID');
 if (strFilter = 'C') or (strFilter = 'A') then
 begin
    rxFilteredBaseline.EmptyTable;
    with rxBaseline do
    begin
      First;
      while not EOF do
      begin
        if FieldByName('BaselineArchiveFlag').AsString = strFilter then
        begin
          rxFilteredBaseline.Append;
          for i := 0 to FieldCount - 1 do
          begin
            j := 0;
            strFilteredFieldName := Uppercase(rxFilteredBaseline.Fields[j].FieldName);
            strFieldName := Uppercase(rxBaseline.Fields[i].FieldName);

            while (strFilteredFieldName <> strFieldName) and
                  ( j < rxFilteredBaseline.FieldCount-1) do
            begin
              Inc(j);
              strFilteredFieldName := Uppercase(rxFilteredBaseline.Fields[j].FieldName);
            end;
            rxFilteredBaseline.Fields[j].Value := rxBaseline.Fields[i].Value;
          end;
          rxFilteredBaseline.Post;
        end;
        Next;
      end;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure FilterPillar( sBaselineId: Integer);

@description
  Gets the pillar information of a selected baseline
*******************************************************************************)
procedure TdmBase.FilterPillar( sBaselineId: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
begin
  doEvents := False;
  rxFilteredPillar.EmptyTable;
  sNextPillarID := GetLastID(rxPillar,'PillarID');
  sNextPillarNumber := rxPillar.RecordCount+1;

  with rxPillar do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineId').AsInteger = sBaselineID then
      begin
        rxFilteredPillar.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(rxFilteredPillar.Fields[j].FieldName);
          strField := uppercase(rxPillar.Fields[i].FieldName);
          while (strFilteredField <> strField) and
                 ( j < rxFilteredPillar.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(rxFilteredPillar.Fields[j].FieldName);
          end;
          rxFilteredPillar.Fields[j].Value := rxPillar.Fields[i].Value;
        end;
        rxFilteredPillar.Post;
      end;
      Next;
    end;
  end;
  sNextPillarNumber := rxFilteredPillar.RecordCount+1;
  doEvents := True;
end;

(*******************************************************************************
@procedure FilterDistance( sBaselineId: Integer);

@description
  Gets the pillar distances of a selected baseline
*******************************************************************************)
procedure TdmBase.FilterDistance( sBaselineId: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
begin
  doEvents := False;
  rxFilteredDistance.EmptyTable;
  with rxDistance do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineId').AsInteger = sBaselineID then
      begin
        rxFilteredDistance.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(rxFilteredDistance.Fields[j].FieldName);
          strField := uppercase(rxDistance.Fields[i].FieldName);
          while (strFilteredField <> strField) and
                (j < rxFilteredDistance.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(rxFilteredDistance.Fields[j].FieldName);
          end;
          rxFilteredDistance.Fields[j].Value := rxDistance.Fields[i].Value;
        end; {for}

        if rxPillar.Locate('PillarID',rxFilteredDistance.FieldByName('PillarFromID').AsString,[]) then
          rxFilteredDistance.FieldByName('FromPillar').Value :=
            rxPillar.FieldByName('PillarNo').Value;

        if rxPillar.Locate('PillarID',rxFilteredDistance.FieldByName('PillarToID').AsString,[]) then
          rxFilteredDistance.FieldByName('ToPillar').Value :=
            rxPillar.FieldByName('PillarNo').Value;

        rxFilteredDistance.Post;
      end;
      Next;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure rxFilteredPillarPillarLatitudeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);

@description
  Formats the Latitude value of a pillar
*******************************************************************************)
procedure TdmBase.rxFilteredPillarPillarLatitudeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not rxFilteredPillarPillarLatitude.isNull then
  begin
    vedtLatitude.Value := rxFilteredPillarPillarLatitude.AsFloat;
    if vedtLatitude.Value = 0 then
    begin
      Text := '';
    end
    else
    begin
      Text := vedtLatitude.Text;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarPillarLatitudeSetText(Sender: TField;
  const Text: String);

@description
  Validates the Latitude value of a pillar
*******************************************************************************)
procedure TdmBase.rxFilteredPillarPillarLatitudeSetText(Sender: TField;
  const Text: String);
begin
  if Text <> '' then
  begin
    vedtLatitude.Text := Text;
    if not vedtLatitude.Valid then
    begin
      ShowMessage(vedtLatitude.ErrorMessage);
    end
    else
    begin
      rxFilteredPillarPillarLatitude.AsFloat := vedtLatitude.Value;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarPillarLongitudeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);

@description
  Formats the Longitude value of a pillar
*******************************************************************************)
procedure TdmBase.rxFilteredPillarPillarLongitudeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not rxFilteredPillarPillarLongitude.isNull then
  begin
    vedtLongitude.Value := rxFilteredPillarPillarLongitude.AsFloat;
    if vedtLongitude.Value = 0 then
    begin
      Text := '';
    end
    else
    begin
      Text := vedtLongitude.Text;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarPillarLongitudeSetText(Sender: TField;
  const Text: String);

@description
  Validates the Longitude value of a pillar
*******************************************************************************)
procedure TdmBase.rxFilteredPillarPillarLongitudeSetText(Sender: TField;
  const Text: String);
begin
  if Text <> '' then
  begin
    vedtLongitude.Text := Text;
    if not vedtLongitude.Valid then
    begin
      ShowMessage(vedtLongitude.ErrorMessage);
    end
    else
    begin
      rxFilteredPillarPillarLongitude.AsFloat := vedtLongitude.Value;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarPillarEllipsOrientGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);

@description
  Formats the azimuth of an error ellipse
*******************************************************************************)
procedure TdmBase.rxFilteredPillarPillarEllipsOrientGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not rxFilteredPillarPillarEllipsOrient.isNull then
  begin
    vedtAngle.Value := rxFilteredPillarPillarEllipsOrient.AsFloat;
    Text := vedtAngle.Text;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarPillarEllipsOrientSetText(Sender: TField;
  const Text: String);

@description
  Validates the azimuth of an error ellipse
*******************************************************************************)
procedure TdmBase.rxFilteredPillarPillarEllipsOrientSetText(Sender: TField;
  const Text: String);
begin
  if Text <> '' then
  begin
    vedtAngle.Text := Text;
    if not vedtAngle.Valid then
    begin
      ShowMessage(vedtAngle.ErrorMessage);
    end
    else
    begin
      rxFilteredPillarPillarEllipsOrient.AsFloat := vedtAngle.Value;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarNewRecord(DataSet: TDataSet);

@description
  1. Sets default values for the new record.
  2. The user will not be able to insert a new record if the flag "doCancel" is TRUE.
*******************************************************************************)
procedure TdmBase.rxFilteredPillarNewRecord(DataSet: TDataSet);
var
  sbaseId : Integer;
begin
  if doEvents then
  begin
    if doCancel then
    begin
      rxFilteredPillar.Cancel;
      Abort;
    end
    else
    begin
      sBaseId := rxFilteredBaseline.FieldByName('BaselineId').AsInteger;
      with rxFilteredPillar do
      begin
        FieldByName('PillarId').AsInteger := sNextPillarId;
        FieldByName('BaseLineId').AsInteger := sBaseId;
        FieldByName('PillarNo').AsInteger := sNextPillarNumber;
        FieldByName('PillarSeqNo').AsInteger := sNextPillarNumber;
        FieldByName('PillarHeight').AsFloat := 0;
        FieldByName('PillarOffSet').AsFloat := 0;
        FieldByName('PillarEllipsARadius').AsFloat := 0;
        FieldByName('PillarEllipsBRadius').AsFloat := 0;
        FieldByName('PillarEllipsOrient').AsFloat := 0;
        FieldByName('PillarHtStdDev').AsFloat := 0;
      end;
    end;
  end;
end;

(*******************************************************************************
@function GetLastId(rxTable: TRxMemoryData; IDName: String): Integer;

@description
  Gets the last index in a database table.
*******************************************************************************)
function TdmBase.GetLastId(rxTable: TRxMemoryData; IDName: String): Integer;
begin
  with rxTable do
  begin
    Last;
    Result := FieldByName(IDName).AsInteger+1;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarBeforePost(DataSet: TDataSet);

@description
  Saves the pillar information to the Main database.
*******************************************************************************)
procedure TdmBase.rxFilteredPillarBeforePost(DataSet: TDataSet);
var
  i,j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with rxFilteredPillar do
    begin
      if  State = dsInsert then
      begin
        Inc(sNextPillarNumber);
        Inc(sNextPillarID);
      end;

      if (FieldByName('PillarHeight').isNull) then
      begin
        FieldByName('PillarHeight').AsFloat := 0;
      end;
      if (FieldByName('PillarOffset').isNull) then
      begin
        FieldByName('PillarOffset').AsFloat := 0;
      end;
    end;

    with rxPillar do
    begin
      if Locate('PillarID',rxFilteredPillar.FieldByName('PillarID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxFilteredPillar.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxFilteredPillar.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxFilteredPillar.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure RefreshDistanceTable;

@description
  Updates the distance observation records.
*******************************************************************************)
procedure TdmBase.RefreshDistanceTable;
var
  sFromPillarID : Integer;
  sToPillarID : Integer;
  strFromPillarNumber: String;
  strToPillarNumber: String;
  sBaseID : Integer;
begin
  sBaseID := rxFilteredBaseline.FieldByName('BaselineID').AsInteger;
  if rxFilteredDistance.isEmpty then
  begin
    sNextDistID := GetLastID(rxDistance,'DistID');
  end
  else
  begin
    sNextDistID := GetLastID(rxFilteredDistance,'DistID');
  end;

  with rxFilteredDistance do
  begin
    if RecordCount < rxFilteredPillar.RecordCount-1 then
    begin
      rxFilteredPillar.First;
      rxFilteredPillar.MoveBy(RecordCount);
      sFromPillarID := rxFilteredPillar.FieldByName('PillarId').AsInteger;
      strFromPillarNumber := rxFilteredPillar.FieldByName('PillarSeqNo').AsString;
      rxFilteredPillar.Next;

      while not rxFilteredPillar.EOF do
      begin
        sToPillarId := rxFilteredPillar.FieldByName('PillarId').AsInteger;
        strToPillarNumber := rxFilteredPillar.FieldByName('PillarSeqNo').AsString;
        Append;

        FieldByName('DistID').AsInteger := sNextDistID;
        FieldByName('PillarFromId').AsInteger := sFromPillarID;
        FieldByName('PillarToId').AsInteger := sToPillarID;

        FieldByName('FromPillar').AsString := strFromPillarNumber;
        FieldByName('ToPillar').AsString := strToPillarNumber;

        FieldByName('DistLegalDistance').AsFloat := 0;
        FieldByName('DistSigma').AsFloat := 0;
        FieldByName('BaseLineId').AsInteger := sBaseID;

        Post;
        Inc(sNextDistID);
        sFromPillarId := sToPillarId;
        rxFilteredPillar.Next;
      end;
    end;
    First;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarAfterPost(DataSet: TDataSet);

@description
  Disabled the Next button.
*******************************************************************************)
procedure TdmBase.rxFilteredPillarAfterPost(DataSet: TDataSet);
begin
  if doEvents then
  begin
    if rxFilteredPillar.RecordCount > 2 then
    begin
      frmBaseline.btnNext3.Enabled := True;
      frmBaseline.lblWarning.Visible := False;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredPillarAfterDelete(DataSet: TDataSet);

@description
  1. Disabled the Next button.
  2. Deletes the distance record to the deleted pillar
*******************************************************************************)
procedure TdmBase.rxFilteredPillarAfterDelete(DataSet: TDataSet);
begin
  Dec(sNextPillarNumber);
  if rxFilteredPillar.RecordCount < 3 then
  begin
    frmBaseline.btnNext3.Enabled := False;
    frmBaseline.lblWarning.Visible := True;
  end;
  if rxFilteredDistance.RecordCount > 0 then
  begin
    doEvents := False;
    rxFilteredDistance.Last;
    rxFilteredDistance.Delete;
    doEvents := True;
  end;
  //RefreshDistanceTable;
end;

(*******************************************************************************
@procedure rxFilteredPillarBeforeDelete(DataSet: TDataSet);

@description
  1. You can not delete pillars if they have been used in calibration jobs.
  2. You can only delete the last pillar.
*******************************************************************************)
procedure TdmBase.rxFilteredPillarBeforeDelete(DataSet: TDataSet);
begin
  if doCancel then
  begin
    MessageDlg('You can not delete pillars if the baseline has been used in calibration jobs.'+#10+#10+
    'To delete pillars you must first delete all jobs associated with this baseline.'+#10+
    'Alternatively you can create a new baseline with fewer pillars.',mtWarning,[mbOK],0);
    Abort;
  end
  else
  begin
    if rxFilteredPillar.FieldByName('PillarSeqNo').AsInteger <> rxFilteredPillar.RecordCount then
    begin
      MessageDlg('You can only delete the last pillar',mtWarning,[mbOK],0);
      Abort;
    end;
    if rxFilteredPillar.FieldByName('PillarSeqNo').AsInteger = 1 then
    begin
      MessageDlg('You can not delete the first pillar',mtWarning,[mbOK],0);
      Abort;
    end;
    if rxPillar.Locate('PillarID',rxFilteredPillar.FieldByName('PillarID').AsString,[]) then
    begin
      rxPillar.Delete;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredDistanceBeforePost(DataSet: TDataSet);

@description
  1. Validates values in the new or amended record
  2. Updates the associated records in the main database
*******************************************************************************)
procedure TdmBase.rxFilteredDistanceBeforePost(DataSet: TDataSet);
var
 i,j: Integer;
 strFromField, strToField: String;
begin
  if doEvents then
  begin
    if rxFilteredDistance.State = dsEdit then
    begin
      if rxFilteredDistance.FieldByName('DistLegalDistance').isNull then
      begin
        rxFilteredDistance.FieldByName('DistLegalDistance').AsFloat := 0;
      end;
      if (rxFilteredDistance.FieldByName('DistLegalDistance').AsFloat = 0) then
      begin
        MessageDlg('Certified distances must be greater than 0 metres.',mtWarning,[mbOK],0);
        Abort;
      end;
    end;

    with rxDistance do
    begin
      if Locate('DistID',rxFilteredDistance.FieldByName('DistID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxFilteredDistance.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxFilteredDistance.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxFilteredDistance.Fields[i].Value;
        end;
      end;
      Post;
    end;
  end;

end;

procedure TdmBase.rxFilteredDistanceDistSigmaGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull or (Sender.AsString='') then
    Text := '± 0'
  else
    Text := '± ' + FormatFloat('##0.00000',Sender.AsFloat);
end;

(*******************************************************************************
@procedure rxFilteredDistanceAfterDelete(DataSet: TDataSet);

@description
  Ensures that the user can not delete pillar distances if the distances are sequentially shown
*******************************************************************************)
procedure TdmBase.rxFilteredDistanceAfterDelete(DataSet: TDataSet);
begin
  if doEvents then
  begin
    if frmBaseline.pcBaseline.ActivePage = frmBaseline.tsSequentialDistances then
    begin
      MessageDlg('You can not delete certified distances from this page'+#10+
                 'Distances are deleted when you delete their associated pillars on the Pillar Page',mtWarning,[mbOK],0);
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredBaselineNewRecord(DataSet: TDataSet);

@description
  Sets default values for a new baseline record.
*******************************************************************************)
procedure TdmBase.rxFilteredBaselineNewRecord(DataSet: TDataSet);
var
  sNewBaseId: Integer;
  sEllipsId: Integer;
begin
  if doEvents then
  begin
    hasNewBaseline := True;
    isUsedByJob := False;
    sNewBaseId := GetlastId(rxBaseline,'BaselineID');
    rxEllipsoid.First;
    sEllipsId := rxEllipsoid.FieldByName('EllipsId').AsInteger;
    with rxFilteredBaseline do
    begin
      FieldByName('BaseLineId').AsInteger := sNewBaseId;
      FieldByName('BaseLineCalibrationDate').AsString := DateToStr(Date);
      FieldByName('BaseLineArchiveFlag').AsString := 'C';
      FieldByName('BaseLegalHeight').AsFloat := 0;
      FieldByName('BaseStdICConstant').AsFloat := 0.004;
      FieldByName('BaseStdICPPM').AsFloat := 20;
      FieldByName('BaseRelativeHumidity').AsFloat := 50;
      FieldByName('BaselineConfLevel').AsFloat := 95;
      FieldByName('EllipsID').AsInteger := sEllipsID;
      if dmBase.rxMethod.Locate('Method','Authority',[]) then
      begin
        FieldByName('BaselineAuthority').Value := dmBase.rxMethod.FieldByName('Description').Value;
      end;
    end;

    with rxBaselineAccuracy do
    begin
      if not Locate('BaselineID',IntToStr(sNewBaseID),[]) then
      begin
        Append;
        FieldByName('BaselineID').AsInteger := sNewBaseID;
        FieldByName('UncertaintyConstant').AsFloat := 0;
        FieldByName('UncertaintyScale').AsFloat    := 0;
        if dmBase.rxStandard.locate('Type','F',[]) then
        begin
          FieldByName('UncertaintyConstant').AsFloat := dmBase.rxStandard.FieldByName('StandardConstant').AsFloat;
          FieldByName('UncertaintyScale').AsFloat := dmBase.rxStandard.FieldByName('StandardScale').AsFloat;
        end;
        Post;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredBaselineBeforePost(DataSet: TDataSet);

@description
  Updates the associated records in the main database
*******************************************************************************)
procedure TdmBase.rxFilteredBaselineBeforePost(DataSet: TDataSet);
var
  i,j: Integer;
  strFromField, strToField: String;
begin
  if doEvents then
  begin
    with rxBaseline do
    begin
      if Locate('BaselineID',rxFilteredBaseline.FieldByName('BaselineID').AsString,[]) then
      begin
         Edit;
      end
      else
      begin
        Append;
      end;
      for i := 0 to rxFilteredBaseline.FieldCount - 1 do
      begin
        j := 0;
        strToField := uppercase(Fields[j].FieldName);
        strFromField := uppercase(rxFilteredBaseline.Fields[i].FieldName);
        while (strToField <> strFromField) and
               ( j < FieldCount-1) do
        begin
          Inc(j);
          strToField := uppercase(Fields[j].FieldName);
        end;
        if strFromField = strToField then
        begin
          Fields[j].Value := rxFilteredBaseline.Fields[i].Value;
        end;
      end;
      Post;
      if not FieldByName('BaselineAuthority').isNull then
      begin
        if rxMethod.Locate('Method','Authority',[]) then
        begin
          rxMethod.Edit;
          rxMethod.FieldByName('Description').Value := FieldByName('BaselineAuthority').Value;
          rxMethod.Post;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure rxFilteredBaselineBeforeDelete(DataSet: TDataSet);

@description
  Deletes the associated record in the main database
*******************************************************************************)
procedure TdmBase.rxFilteredBaselineBeforeDelete(DataSet: TDataSet);
begin
  if rxBaseline.Locate('BaselineID',rxFilteredBaseline.FieldByName('baselineID').AsString,[]) then
  begin
    rxBaseline.Delete;
  end;
end;

(*******************************************************************************
@procedure rxFilteredDistanceBeforeDelete(DataSet: TDataSet);

@description
  Deletes the associated record in the main database
*******************************************************************************)
procedure TdmBase.rxFilteredDistanceBeforeDelete(DataSet: TDataSet);
begin
  if rxDistance.Locate('DistID',rxFilteredDistance.FieldByName('DistID').AsString,[]) then
  begin
    rxDistance.Delete;
  end;
end;

(*******************************************************************************
@procedure InitStandardTable(Table: TDataSet);

@description
  Initialises the standards table if it is empty
*******************************************************************************)
procedure TdmBase.InitStandardTable(Table: TDataSet);
begin
  with Table do
  begin
    if isEmpty then
    begin
      Append;
      FieldByName('Type').AsString := 'E';
      FieldByName('Authority').AsString := 'National Standards Commission';
      FieldByName('Description').AsString :=
      'Recommendation No.8 of the Working Party of the National Standards '+
      'Commission on the calibration of EDM Equipment of 1 February, 1983';
      FieldByName('StandardConstant').AsFloat := 4;
      FieldByName('StandardScale').AsFloat := 20;
      Post;
    end;

    if not locate('Type','F',[]) then              // Baseline Calibration LUM
    begin
      Append;
      FieldByName('Type').AsString := 'F';
      FieldByName('Authority').AsString := 'NATA';
      FieldByName('Description').AsString := 'LUM';
      FieldByName('StandardConstant').AsFloat := 0.13;
      FieldByName('StandardScale').AsFloat := 0.09;
      Post;
    end
    else
    begin
      Edit;
      FieldByName('Description').AsString := 'LUM';
      Post;
    end;

    if not locate('Type','G',[]) then            // EDM Calibration LUM
    begin
      Append;
      FieldByName('Type').AsString := 'G';
      FieldByName('Authority').AsString := 'NATA';
      FieldByName('Description').AsString := 'LUM';
      FieldByName('StandardConstant').AsFloat := 0.6;
      FieldByName('StandardScale').AsFloat := 1.6;
      Post;
    end
    else
    begin
      Edit;
      FieldByName('Description').AsString := 'LUM';
      Post;
    end;
    First;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentModelNewRecord(DataSet: TDataSet);

@description
  A new instrument model is initially not a Pulse meter
*******************************************************************************)
procedure TdmBase.rxInstrumentModelNewRecord(DataSet: TDataSet);
begin
  rxInstrumentModel.FieldByName('isPulseMeter').AsBoolean := False;
end;

(*******************************************************************************
@procedure InitSecurityTable(Table: TDataSet);

@description
  Initialises the security table if it is empty
*******************************************************************************)
procedure TdmBase.InitSecurityTable(Table: TDataSet);
var
  strPassword: String;
begin
  with Table do
  begin
    if isEmpty then
    begin
      Append;
      FieldByName('SecurityID').AsInteger := 1;
      strPassword := Encrypt('DLI2003FULLVERSION');
      FieldByName('Password').AsString := strPassword;
      FieldByName('DistributionDate').AsDateTime := Date;
      FieldByName('DistributionAuthority').AsString := 'DLI';
      FieldByName('DistributionVersion').AsInteger := 1;
      FieldByName('isRegistered').AsBoolean := True;
      Post;
    end;
  end;
end;


(*******************************************************************************
@procedure InitAccreditationTable(Table: TDataSet);

@description
  Appends Accreditation records with blank descriptions if no accreditation records exist.
*******************************************************************************)
procedure TdmBase.InitAccreditationTable(Table: TDataSet);
begin
  with Table do
  begin
    if not Locate('method','Accreditation Authority',[]) then
    begin
      Append;
      FieldByName('method').AsString := 'Accreditation Authority';
      FieldByName('description').Clear;
      post;
    end;
    if not Locate('method','EDM Accreditation Statement',[]) then
    begin
      Append;
      FieldByName('method').AsString := 'EDM Accreditation Statement';
      FieldByName('description').Clear;
      post;
    end;
    if not Locate('method','Baseline Accreditation Statement',[]) then
    begin
      Append;
      FieldByName('method').AsString := 'Baseline Accreditation Statement';
      FieldByName('description').Clear;
      post;
    end;
    if not Locate('method','Accreditation Logo Title',[]) then
    begin
      Append;
      FieldByName('method').AsString := 'Accreditation Logo Title';
      FieldByName('description').Clear;
      post;
    end;
    if not Locate('method','Accreditation Logo',[]) then
    begin
      Append;
      FieldByName('method').AsString := 'Accreditation Logo';
      FieldByName('description').Clear;
      post;
    end;
  end;
end;

(*******************************************************************************
@procedure InitLegalTraceabilityTable(Table: TDataSet);

@description
  Appends Traceability records with blank descriptions if no traceability records exist.
*******************************************************************************)
procedure TdmBase.InitLegalTraceabilityTable(Table: TDataSet);
begin
  with Table do
  begin
    if not Locate('method','Legal Traceability',[]) then
    begin
      Append;
      FieldByName('method').AsString := 'Legal Traceability';
      FieldByName('description').Clear;
      post;
    end;
  end;
end;

(*******************************************************************************
@procedure UpdateMethodDescription(aMemo: TMemo;  strMethod: string);

@description
  Updates the Description in the rxMethod table.
*******************************************************************************)
procedure TdmBase.UpdateMethodDescription(
  aMemo: TMemo;
  strMethod: string);
var
  strLine: string;
  I: Integer;
begin
  strLine := '';
  with aMemo do
  begin
    for I := 0 to Lines.Count-1 do
    begin
      strLine := strLine+Lines[I];
      if (I < Lines.Count-1) then
      begin
        strLine := strLine + '^';
      end;
    end;
  end;
  with rxMethod do
  begin
    if Locate('Method',strMethod,[]) then
    begin
      Edit;
      if strLine = '' then
      begin
        FieldByName('Description').Clear;
      end
      else
      begin
        FieldByName('Description').AsString := strLine;
      end;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure GetMethodDescription(var aMemo: TMemo;  strMethod: string);

@description
  Displays a Method Description in a memo box.
*******************************************************************************)
procedure TdmBase.GetMethodDescription(
  var aMemo: TMemo;
  strMethod: string);
var
  strLine: string;
  sPos: Integer;
  doContinue: Boolean;
begin
  aMemo.Lines.Clear;
  with rxMethod do
  begin
    if Locate('method',strMethod,[]) then
    begin
      strLine := Trim(FieldByName('Description').AsString);
      if length(strLine) > 0 then
      begin
        doContinue := True;
        while doContinue do
        begin
          sPos := Pos('^',strLine);
          if sPos > 0 then
          begin
            aMemo.Lines.Add(Copy(strLine,1,sPos-1));
            strLine := Trim(Copy(strLine,sPos+1, length(strLine)));
          end
          else
          begin
            doContinue := false;
            if strLine <> '' then
            begin
              aMemo.Lines.Add(strLine);
            end;
          end;
        end;
      end;
    end;
  end;
end;


(*******************************************************************************
@procedure InitBaselineDefaults;

@description
  Initialises default values for EDM calibrations for all Baseline;
*******************************************************************************)
procedure TdmBase.InitBaselineDefaults;
begin
  if not rxBaseline.isEmpty then
  begin
    rxBaseline.First;
    while not rxBaseline.EOF do
    begin
      if not rxBaselineDefault.Locate('BaselineID',rxBaseline.FieldByName('BaselineID').AsInteger,[]) then
      begin
        InitBaselineDefault(rxBaseline.FieldByName('BaselineID').AsInteger);
      end;
      rxBaseline.Next;
    end;
  end;
end;

(*******************************************************************************
@procedure InitBaselineDefault;

@description
  Stores default values for EDM calibrations for a given Baseline;
*******************************************************************************)
procedure TdmBase.InitBaselineDefault(sBaselineID: Integer);
begin
  doEvent := False;
  if not rxBaselineDefault.Locate('BaselineID',sBaselineID,[]) then
  begin
    with rxUncertaintyEDM do
    begin
      First;
      while not EOF do
      begin
        rxBaselineDefault.Append;
        rxBaselineDefault.FieldByName('BaselineID').AsInteger := sBaselineID;
        rxBaselineDefault.FieldByName('Description').Value := FieldByName('Description').Value;
        rxBaselineDefault.FieldByName('Default').Value := FieldByName('Default').Value;
        rxBaselineDefault.FieldByName('Unit').Value := FieldByName('Unit').Value;
        rxBaselineDefault.Post;
        Next;
      end;
    end;
    with rxUncertaintyBaseline do
    begin
      First;
      while not EOF do
      begin
        rxBaselineDefault.Append;
        rxBaselineDefault.FieldByName('BaselineID').AsInteger := sBaselineID;
        rxBaselineDefault.FieldByName('Description').AsString := 'B_'+FieldByName('Description').AsString;
        rxBaselineDefault.FieldByName('Default').Value := FieldByName('Default').Value;
        rxBaselineDefault.FieldByName('Unit').Value := FieldByName('Unit').Value;
        rxBaselineDefault.Post;
        Next;
      end;
    end;
  end;
  doEvent := True;
end;

(*******************************************************************************
@procedure CleanBaselineDefault;

@description
  Clean BaselineDufault table;
*******************************************************************************)
procedure TdmBase.CleanBaselineDefaults;
var
  doEvent2: Boolean;
  strDescription: string;
begin
  doEvent2 := doEvent;
  doEvent := False;
  with rxBaselineDefault do
  begin
    First;
    while not EOF do
    begin
      if not rxBaseline.Locate('BaselineID',rxBaselineDefault.FieldByName('BaselineID').AsInteger,[]) then
      begin
        rxBaselineDefault.Delete;
      end
      else
      begin
        strDescription := FieldByName('Description').AsString;
        if FieldByName('Unit').isNull then
        begin
          Edit;
          if strDescription = 'B_Temperature' then FieldByName('Unit').AsString := 'Celsius';
          if strDescription = 'B_Pressure' then FieldByName('Unit').AsString := 'hPa';
          if strDescription = 'B_Humidity' then FieldByName('Unit').AsString := '%';
          if strDescription = 'B_Instrument centring' then FieldByName('Unit').AsString := 'mm';
          if strDescription = 'B_Reflector centring' then FieldByName('Unit').AsString := 'mm';
          if strDescription = 'B_Instrument height above pillar' then FieldByName('Unit').AsString := 'mm';
          if strDescription = 'B_Reflector height above pillar' then FieldByName('Unit').AsString := 'mm';
          if strDescription = 'B_Pillar offset' then FieldByName('Unit').AsString := 'mm';
          if strDescription = 'B_Pillar Height Difference' then FieldByName('Unit').AsString := 'mm';
          if strDescription = 'B_Rejection Criterion' then FieldByName('Unit').AsString := 'Std Dev';
          Post;
        end;
        Next;
      end;
    end;
  end;
  doEvent := doEvent2;
end;


(*******************************************************************************
@procedure FilterBaselineDefault;

@description
  Stores default values for EDM calibrations for each Baseline;
*******************************************************************************)
procedure TdmBase.FilterBaselineDefault(sBaselineID: Integer);
var
  doEvent2: Boolean;
  strDescription, strCode: string;
begin
  doEvent2 := doEvent;
  doEvent := False;
{  rxBaselineDefaultFilter.EmptyTable;

  with rxBaselineDefault do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        rxBaselineDefaultFilter.Append;
        rxBaselineDefaultFilter.FieldByName('BaselineID').AsInteger := sBaselineID;
        rxBaselineDefaultFilter.FieldByName('Description').Value := FieldByName('Description').Value;
        rxBaselineDefaultFilter.FieldByName('Default').Value := FieldByName('Default').Value;
        rxBaselineDefaultFilter.FieldByName('Unit').Value := FieldByName('Unit').Value;
        rxBaselineDefaultFilter.Post;
      end;
      Next;
    end;
  end;
  }
  rxBaselineDefaultFilterEDM.EmptyTable;
  rxBaselineDefaultFilterBase.EmptyTable;
  with rxBaselineDefault do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        strDescription := FieldByName('Description').AsString;
        strCode := Copy(strDescription,1,2);
        if strCode = 'B_' then
        begin
          strDescription := Copy (strDescription, 3, length(strDescription));
          rxBaselineDefaultFilterBase.Append;
          rxBaselineDefaultFilterBase.FieldByName('BaselineID').AsInteger := sBaselineID;
          rxBaselineDefaultFilterBase.FieldByName('Description').AsString := strDescription;
          rxBaselineDefaultFilterBase.FieldByName('Default').Value := FieldByName('Default').Value;
          rxBaselineDefaultFilterBase.FieldByName('Unit').Value := FieldByName('Unit').Value;
          rxBaselineDefaultFilterBase.Post;
        end
        else
        begin
          rxBaselineDefaultFilterEDM.Append;
          rxBaselineDefaultFilterEDM.FieldByName('BaselineID').AsInteger := sBaselineID;
          rxBaselineDefaultFilterEDM.FieldByName('Description').Value := FieldByName('Description').Value;
          rxBaselineDefaultFilterEDM.FieldByName('Default').Value := FieldByName('Default').Value;
          rxBaselineDefaultFilterEDM.FieldByName('Unit').Value := FieldByName('Unit').Value;
          rxBaselineDefaultFilterEDM.Post;
        end;
      end;
      Next;
    end;
  end;
  doEvent := doEvent2;
end;

(*******************************************************************************
@procedure DeleteBaselineDefault

@description
  Deletes baseline defaults of a deleted or non-existing baseline;
*******************************************************************************)
procedure TdmBase.DeleteBaselineDefault(sBaselineID: Integer);
var
  doEvent2: Boolean;
begin
  doEvent2 := doEvent;
  doEvent := False;
//  rxBaselineDefaultFilter.EmptyTable;
  rxBaselineDefaultFilterEDM.EmptyTable;
  rxBaselineDefaultFilterBase.EmptyTable;
  with rxBaselineDefault do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        rxBaselineDefault.Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;
  doEvent := doEvent2;
end;


procedure TdmBase.SortInstrumentMakes;
var
  rxSorted: TrxMemoryData;
  SortedList: TStringList;
  i, j: Integer;
begin
  sNextMakeID := 0;
  rxSorted := TrxMemoryData.Create(nil);
  SortedList := TStringList.Create;
  try
    with rxSorted do
    begin
      CopyStructure(rxInstrumentMake);
      Active := True;
      EmptyTable;
    end;

    SortedList.Sorted := True;
    with rxInstrumentMake do
    begin
      First;
      while not EOF do
      begin
        SortedList.Add(FieldByName('MakeName').AsString);
        sNextMakeID := Max(sNextMakeID,FieldByName('MakeID').AsInteger);
        Next;
      end;
      Inc(sNextMakeId);

      for i := 0 to SortedList.Count-1 do
      begin
        if Locate('MakeName',SortedList[i],[]) then
        begin
          rxSorted.Append;
          for j := 0 to FieldCount-1 do
          begin
            rxSorted.Fields[j].Value := Fields[j].Value;
          end;
          rxSorted.Post;
        end;
      end;
      EmptyTable;
    end;

    with rxSorted do
    begin
      First;
      while not EOF do
      begin
        rxInstrumentMake.Append;
        for j := 0 to FieldCount-1 do
        begin
          rxInstrumentMake.Fields[j].Value := Fields[j].Value;
        end;
         rxInstrumentMake.Post;
        Next;
      end;
      EmptyTable;
    end;

  finally
    SortedList.Free;
    rxSorted.free;
  end;

end;

function TdmBase.SortTable(
  rxTable: TrxMemoryData;
  strIDName, strSortName: string): Integer;
var
  rxSorted: TrxMemoryData;
  SortedList: TStringList;
  i, j: Integer;
  sNextID: Integer;
begin
  sNextID := 0;
  rxSorted := TrxMemoryData.Create(nil);
  SortedList := TStringList.Create;
  try
    with rxSorted do
    begin
      CopyStructure(rxTable);
      Active := True;
      EmptyTable;
    end;

    SortedList.Sorted := True;
    with rxTable do
    begin
      First;
      while not EOF do
      begin
        SortedList.Add(FieldByName(strSortName).AsString);
        sNextID := Max(sNextID,FieldByName(strIDName).AsInteger);
        Next;
      end;
      Inc(sNextId);

      for i := 0 to SortedList.Count-1 do
      begin
        if Locate(strSortName,SortedList[i],[]) then
        begin
          rxSorted.Append;
          for j := 0 to FieldCount-1 do
          begin
            rxSorted.Fields[j].Value := Fields[j].Value;
          end;
          rxSorted.Post;
        end;
      end;
      EmptyTable;
    end;

    with rxSorted do
    begin
      First;
      while not EOF do
      begin
        rxTable.Append;
        for j := 0 to FieldCount-1 do
        begin
          rxTable.Fields[j].Value := Fields[j].Value;
        end;
         rxTable.Post;
        Next;
      end;
      EmptyTable;
    end;

  finally
    SortedList.Free;
    rxSorted.free;
  end;
  Result := sNextID;
end;


(*******************************************************************************
@procedure SaveBaselineDefaults

@description
  Saves Baseline defaults
*******************************************************************************)
procedure TdmBase.SaveBaselineDefaults;
var
  strDescription: string;
begin
  with rxBaselineDefaultFilterEDM do
  begin
    First;
    while not EOF do
    begin
      if rxBaselineDefault.Locate('BaselineID;Description',
        VarArrayOf([FieldByName('BaselineID').AsInteger,FieldByName('Description').AsString]),[]) then
      begin
        rxBaselineDefault.Edit;
        rxBaselineDefault.FieldByName('Default').Value := FieldByName('Default').Value;
        rxBaselineDefault.Post;
      end;
      Next;
    end;
  end;
  with rxBaselineDefaultFilterBase do
  begin
    First;
    while not EOF do
    begin
      strDescription := 'B_'+FieldByName('Description').AsString;
      if rxBaselineDefault.Locate('BaselineID;Description',
        VarArrayOf([FieldByName('BaselineID').AsInteger,strDescription]),[]) then
      begin
        rxBaselineDefault.Edit;
        rxBaselineDefault.FieldByName('Default').Value := FieldByName('Default').Value;
        rxBaselineDefault.Post;
      end;
      Next;
    end;
  end;
  {
  with rxBaselineDefaultFilter do
  begin
    First;
    while not EOF do
    begin
      if rxBaselineDefault.Locate('BaselineID;Description',
        VarArrayOf([FieldByName('BaselineID').AsInteger,FieldByName('Description').AsString]),[]) then
      begin
        rxBaselineDefault.Edit;
        rxBaselineDefault.FieldByName('Default').Value := FieldByName('Default').Value;
        rxBaselineDefault.Post;
      end;
      Next;
    end;
  end;
  }
end;

end.
