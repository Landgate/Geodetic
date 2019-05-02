object dmBase: TdmBase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 375
  Width = 526
  object rxUncertaintyEDM: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Description'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Default'
        DataType = ftFloat
      end
      item
        Name = 'Unit'
        DataType = ftString
        Size = 24
      end>
    Left = 31
    Top = 56
    object rxUncertaintyEDMDescription: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object rxUncertaintyEDMDefault: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object rxUncertaintyEDMUnit: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
  object rxUncertaintyBaseline: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Description'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Default'
        DataType = ftFloat
      end
      item
        Name = 'Unit'
        DataType = ftString
        Size = 24
      end>
    Left = 40
    Top = 104
    object StringField1: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField2: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
  object rxBaselineAccuracy: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'UncertaintyConstant'
        DataType = ftFloat
      end
      item
        Name = 'UncertaintyScale'
        DataType = ftFloat
      end>
    Left = 41
    Top = 163
    object rxBaselineAccuracyBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxBaselineAccuracyConstant: TFloatField
      FieldName = 'UncertaintyConstant'
      DisplayFormat = '0.00'
    end
    object rxBaselineAccuracyScale: TFloatField
      FieldName = 'UncertaintyScale'
      DisplayFormat = '0.00'
    end
  end
  object rxMethod: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Method'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 250
      end>
    Left = 126
    Top = 4
    object rxMethodMethod: TStringField
      DisplayWidth = 40
      FieldName = 'Method'
      Size = 40
    end
    object rxMethodDescription: TStringField
      DisplayWidth = 300
      FieldName = 'Description'
      Size = 300
    end
  end
  object rxDefault: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Description'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'Default'
        DataType = ftFloat
      end>
    Left = 125
    Top = 56
    object rxDefaultDescription: TStringField
      DisplayWidth = 32
      FieldName = 'Description'
      Size = 32
    end
    object rxDefaultDefault: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
    end
  end
  object rxBaseline: TRxMemoryData
    FieldDefs = <>
    Left = 132
    Top = 104
    object rxBaselineBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxBaselineBaselineName: TStringField
      FieldName = 'BaselineName'
      Size = 25
    end
    object rxBaselineBaselineLocation: TStringField
      FieldName = 'BaselineLocation'
      Size = 50
    end
    object rxBaselineBaselineAuthority: TStringField
      DisplayWidth = 32
      FieldName = 'BaselineAuthority'
      Size = 32
    end
    object rxBaselineBaselineCalibrationDate: TStringField
      FieldName = 'BaselineCalibrationDate'
    end
    object rxBaselineBaselineCalibrationRef: TStringField
      FieldName = 'BaselineCalibrationRef'
      Size = 50
    end
    object rxBaselineEllipsID: TIntegerField
      FieldName = 'EllipsID'
    end
    object rxBaselineBaselineConfLevel: TFloatField
      FieldName = 'BaselineConfLevel'
    end
    object rxBaselineBaseLegalHeight: TFloatField
      FieldName = 'BaseLegalHeight'
    end
    object rxBaselineBaseStdICConstant: TFloatField
      FieldName = 'BaseStdICConstant'
    end
    object rxBaselineBaseStdICPPM: TFloatField
      FieldName = 'BaseStdICPPM'
    end
    object rxBaselineBaseRelativeHumidity: TFloatField
      FieldName = 'BaseRelativeHumidity'
    end
    object rxBaselineBaselineArchiveFlag: TStringField
      FieldName = 'BaselineArchiveFlag'
      Size = 1
    end
    object rxBaselineAuthorityAddress: TStringField
      FieldName = 'AuthorityAddress'
      Size = 50
    end
  end
  object rxEllipsoid: TRxMemoryData
    FieldDefs = <>
    Left = 128
    Top = 168
    object rxEllipsoidEllipsID: TIntegerField
      FieldName = 'EllipsID'
    end
    object rxEllipsoidEllipsName: TStringField
      FieldName = 'EllipsName'
      Size = 30
    end
    object rxEllipsoidEllipsARadius: TFloatField
      FieldName = 'EllipsARadius'
    end
    object rxEllipsoidEllipsInvFlat: TFloatField
      FieldName = 'EllipsInvFlat'
    end
  end
  object rxDistance: TRxMemoryData
    FieldDefs = <>
    Left = 130
    Top = 224
    object IntegerField10: TIntegerField
      FieldName = 'DistID'
    end
    object IntegerField11: TIntegerField
      FieldName = 'BaselineID'
    end
    object IntegerField12: TIntegerField
      FieldName = 'PillarFromID'
    end
    object IntegerField13: TIntegerField
      FieldName = 'PillarToID'
    end
    object FloatField4: TFloatField
      FieldName = 'DistLegalDistance'
    end
    object FloatField5: TFloatField
      FieldName = 'DistSigma'
    end
  end
  object rxPillar: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'PillarID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'PillarSeqNo'
        DataType = ftInteger
      end
      item
        Name = 'PillarNo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PillarHeight'
        DataType = ftFloat
      end
      item
        Name = 'PillarOffset'
        DataType = ftFloat
      end
      item
        Name = 'PillarLatitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarLongitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsARadius'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsBRadius'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsOrient'
        DataType = ftFloat
      end
      item
        Name = 'PillarHtStdDev'
        DataType = ftFloat
      end>
    Left = 131
    Top = 280
    object IntegerField14: TIntegerField
      FieldName = 'PillarID'
    end
    object IntegerField15: TIntegerField
      FieldName = 'BaselineID'
    end
    object IntegerField16: TIntegerField
      FieldName = 'PillarSeqNo'
    end
    object StringField3: TStringField
      FieldName = 'PillarNo'
      Size = 5
    end
    object FloatField6: TFloatField
      FieldName = 'PillarHeight'
    end
    object FloatField7: TFloatField
      FieldName = 'PillarOffset'
    end
    object FloatField8: TFloatField
      FieldName = 'PillarLatitude'
    end
    object FloatField9: TFloatField
      FieldName = 'PillarLongitude'
    end
    object FloatField10: TFloatField
      FieldName = 'PillarEllipsARadius'
    end
    object FloatField11: TFloatField
      FieldName = 'PillarEllipsBRadius'
    end
    object FloatField12: TFloatField
      FieldName = 'PillarEllipsOrient'
    end
    object FloatField13: TFloatField
      FieldName = 'PillarHtStdDev'
    end
  end
  object rxJob: TRxMemoryData
    FieldDefs = <
      item
        Name = 'JobId'
        DataType = ftInteger
      end
      item
        Name = 'JobDescription'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InstID1'
        DataType = ftInteger
      end
      item
        Name = 'InstrID2'
        DataType = ftInteger
      end
      item
        Name = 'JobInstr1Owner'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobInstr2Owner'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobProcessingSoftware'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobStartCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobStartCalibrationTime'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobEndCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobEndCalibrationTime'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobObserverName'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'JobWeatherConditions'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'JobTempCorr'
        DataType = ftFloat
      end
      item
        Name = 'JobPressureCorr'
        DataType = ftFloat
      end
      item
        Name = 'JobStdDevTemp'
        DataType = ftFloat
      end
      item
        Name = 'JobStdDevPressure'
        DataType = ftFloat
      end
      item
        Name = 'JobInstCentringStdDev'
        DataType = ftFloat
      end
      item
        Name = 'JobInstLevellingStdDev'
        DataType = ftFloat
      end
      item
        Name = 'JobType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobComments'
        DataType = ftString
        Size = 50
      end>
    Left = 208
    Top = 4
    object rxJobJobId: TIntegerField
      FieldName = 'JobId'
    end
    object rxJobJobDescription: TStringField
      DisplayWidth = 30
      FieldName = 'JobDescription'
      Size = 30
    end
    object rxJobInstID1: TIntegerField
      FieldName = 'InstID1'
    end
    object rxJobInstID2: TIntegerField
      FieldName = 'InstID2'
    end
    object rxJobJobInst1Owner: TStringField
      DisplayWidth = 38
      FieldName = 'JobInst1Owner'
      Size = 38
    end
    object rxJobJobInst2Owner: TStringField
      DisplayWidth = 38
      FieldName = 'JobInst2Owner'
      Size = 38
    end
    object rxJobJobProcessingSoftware: TStringField
      FieldName = 'JobProcessingSoftware'
      Size = 25
    end
    object rxJobJobStartCalibrationDate: TStringField
      FieldName = 'JobStartCalibrationDate'
    end
    object rxJobJobStartCalibrationTime: TStringField
      FieldName = 'JobStartCalibrationTime'
      Size = 25
    end
    object rxJobJobEndCalibrationDate: TStringField
      FieldName = 'JobEndCalibrationDate'
    end
    object rxJobJobEndCalibrationTime: TStringField
      FieldName = 'JobEndCalibrationTime'
    end
    object rxJobJobObserverName: TStringField
      FieldName = 'JobObserverName'
      Size = 25
    end
    object rxJobBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxJobJobWeatherConditions: TStringField
      FieldName = 'JobWeatherConditions'
      Size = 30
    end
    object rxJobJobTempCorr: TFloatField
      FieldName = 'JobTempCorr'
    end
    object rxJobJobPressureCorr: TFloatField
      FieldName = 'JobPressureCorr'
    end
    object rxJobJobStdDevTemp: TFloatField
      FieldName = 'JobStdDevTemp'
    end
    object rxJobJobStdDevPressure: TFloatField
      FieldName = 'JobStdDevPressure'
    end
    object rxJobJobInstCentringStdDev: TFloatField
      FieldName = 'JobInstCentringStdDev'
    end
    object rxJobJobInstLevellingStdDev: TFloatField
      FieldName = 'JobInstLevellingStdDev'
    end
    object rxJobJobType: TStringField
      FieldName = 'JobType'
    end
    object rxJobJobComments: TStringField
      FieldName = 'JobComments'
      Size = 50
    end
    object rxJobJobInst1OwnerAddress: TStringField
      FieldName = 'JobInst1OwnerAddress'
      Size = 40
    end
  end
  object rxInstrument: TRxMemoryData
    FieldDefs = <>
    Left = 290
    Top = 4
    object rxInstrumentInstID: TIntegerField
      FieldName = 'InstID'
    end
    object rxInstrumentInstType: TStringField
      FieldName = 'InstType'
      Size = 1
    end
    object rxInstrumentModelID: TIntegerField
      FieldName = 'ModelID'
    end
    object rxInstrumentInstSerialNo: TStringField
      DisplayLabel = 'Serial Number'
      FieldName = 'InstSerialNo'
    end
    object rxInstrumentInstStdDevConst: TFloatField
      DisplayLabel = 'Std Dev~Constant'
      FieldName = 'InstStdDevConst'
    end
    object rxInstrumentInstStdDevPPM: TFloatField
      DisplayLabel = 'Std Dev~PPM'
      FieldName = 'InstStdDevPPM'
    end
    object rxInstrumentAntennaModelID: TIntegerField
      FieldName = 'AntennaModelID'
    end
    object rxInstrumentInstAntennaSerialNo: TStringField
      FieldName = 'InstAntennaSerialNo'
      Size = 30
    end
    object rxInstrumentInstConstant: TFloatField
      DisplayLabel = 'Constant~(m)'
      FieldName = 'InstConstant'
    end
    object rxInstrumentInstScaleFact: TFloatField
      DisplayLabel = 'Scale~Factor'
      FieldName = 'InstScaleFact'
    end
    object rxInstrumentInstComments: TStringField
      DisplayLabel = 'Comments'
      FieldName = 'InstComments'
      Size = 30
    end
  end
  object rxInstrumentModel: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'ModelID'
        DataType = ftInteger
      end
      item
        Name = 'MakeID'
        DataType = ftInteger
      end
      item
        Name = 'ModelName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ModelInstType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModelManufStdDevConst'
        DataType = ftFloat
      end
      item
        Name = 'ModelManufStdDevPPM'
        DataType = ftFloat
      end
      item
        Name = 'ModelUnitLength'
        DataType = ftFloat
      end
      item
        Name = 'ModelModFreq'
        DataType = ftFloat
      end
      item
        Name = 'ModelCarrierWaveLength'
        DataType = ftFloat
      end
      item
        Name = 'ModelComments'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'isPulseMeter'
        DataType = ftBoolean
      end>
    Left = 290
    Top = 54
    object rxInstrumentModelModelID: TIntegerField
      FieldName = 'ModelID'
    end
    object rxInstrumentModelMakeID: TIntegerField
      FieldName = 'MakeID'
    end
    object rxInstrumentModelModelName: TStringField
      DisplayLabel = 'Name'
      FieldName = 'ModelName'
    end
    object rxInstrumentModelModelInstType: TStringField
      DisplayLabel = 'Type'
      FieldName = 'ModelInstType'
      Size = 1
    end
    object rxInstrumentModelModelManufStdDevConst: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~Constant'
      FieldName = 'ModelManufStdDevConst'
    end
    object rxInstrumentModelModelManufStdDevPPM: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~PPM'
      FieldName = 'ModelManufStdDevPPM'
    end
    object rxInstrumentModelModelUnitLength: TFloatField
      DisplayLabel = 'Unit~Length'
      FieldName = 'ModelUnitLength'
    end
    object rxInstrumentModelModelModFreq: TFloatField
      DisplayLabel = 'Frequency'
      FieldName = 'ModelModFreq'
    end
    object rxInstrumentModelModelCarrierWaveLength: TFloatField
      DisplayLabel = 'Carrier~Wave~Length'
      FieldName = 'ModelCarrierWaveLength'
    end
    object rxInstrumentModelModelComments: TStringField
      DisplayLabel = 'Comments'
      FieldName = 'ModelComments'
      Size = 30
    end
    object rxInstrumentModelisPulseMeter: TBooleanField
      FieldName = 'isPulseMeter'
    end
  end
  object rxInstrumentMake: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'MakeID'
        DataType = ftInteger
      end
      item
        Name = 'MakeName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MakeCountry'
        DataType = ftString
        Size = 20
      end>
    Left = 294
    Top = 107
    object rxInstrumentMakeMakeID: TIntegerField
      FieldName = 'MakeID'
      Visible = False
    end
    object rxInstrumentMakeMakeName: TStringField
      DisplayLabel = 'Name'
      FieldName = 'MakeName'
    end
    object rxInstrumentMakeMakeCountry: TStringField
      DisplayLabel = 'Country'
      FieldName = 'MakeCountry'
    end
  end
  object rxJMeasure: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'MeasID'
        DataType = ftInteger
      end
      item
        Name = 'MeasType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'JobID'
        DataType = ftInteger
      end
      item
        Name = 'MeasAtPillarID'
        DataType = ftInteger
      end
      item
        Name = 'MeasToPillarID'
        DataType = ftInteger
      end
      item
        Name = 'MeasAtHeight'
        DataType = ftFloat
      end
      item
        Name = 'MeasToHeight'
        DataType = ftFloat
      end
      item
        Name = 'MeasDryTemp'
        DataType = ftFloat
      end
      item
        Name = 'MeasHumidity'
        DataType = ftFloat
      end
      item
        Name = 'MeasHumidityType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MeasPressure'
        DataType = ftFloat
      end
      item
        Name = 'MeasMetFlag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WetTemp'
        DataType = ftFloat
      end
      item
        Name = 'Humidity'
        DataType = ftFloat
      end>
    Left = 384
    Top = 4
    object rxJMeasureMeasID: TIntegerField
      FieldName = 'MeasID'
    end
    object rxJMeasureMeasType: TStringField
      FieldName = 'MeasType'
      Size = 1
    end
    object rxJMeasureJobID: TIntegerField
      FieldName = 'JobID'
    end
    object rxJMeasureMeasAtPillarID: TIntegerField
      FieldName = 'MeasAtPillarID'
    end
    object rxJMeasureMeasToPillarID: TIntegerField
      FieldName = 'MeasToPillarID'
    end
    object rxJMeasureMeasAtHeight: TFloatField
      FieldName = 'MeasAtHeight'
    end
    object rxJMeasureMeasToHeight: TFloatField
      FieldName = 'MeasToHeight'
    end
    object rxJMeasureMeasDryTemp: TFloatField
      FieldName = 'MeasDryTemp'
    end
    object rxJMeasureMeasHumidity: TFloatField
      FieldName = 'MeasHumidity'
    end
    object rxJMeasureMeasHumidityType: TStringField
      FieldName = 'MeasHumidityType'
      Size = 1
    end
    object rxJMeasureMeasPressure: TFloatField
      FieldName = 'MeasPressure'
    end
    object rxJMeasureMeasMetFlag: TStringField
      FieldName = 'MeasMetFlag'
      Size = 1
    end
    object rxJMeasureWetTemp: TFloatField
      FieldName = 'WetTemp'
    end
    object rxJMeasureHumidity: TFloatField
      FieldName = 'Humidity'
    end
  end
  object rxEDMObs: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'EDMObsID'
        DataType = ftInteger
      end
      item
        Name = 'MeasID'
        DataType = ftInteger
      end
      item
        Name = 'EDMObsDistance'
        DataType = ftFloat
      end>
    Left = 384
    Top = 55
    object rxEDMObsEDMObsID: TIntegerField
      DisplayWidth = 10
      FieldName = 'EDMObsID'
    end
    object rxEDMObsMeasID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MeasID'
    end
    object rxEDMObsEDMObsDistance: TFloatField
      DisplayLabel = 'Observations~(metres)'
      DisplayWidth = 12
      FieldName = 'EDMObsDistance'
    end
  end
  object rxStandard: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Type'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'StandardConstant'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'StandardScale'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'Authority'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Description'
        Attributes = [faRequired]
        DataType = ftString
        Size = 256
      end>
    Left = 454
    Top = 4
    object rxStandardType: TStringField
      FieldName = 'Type'
      Required = True
      Size = 1
    end
    object rxStandardStandardConstant: TFloatField
      FieldName = 'StandardConstant'
      Required = True
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
      MinValue = 0.100000000000000000
    end
    object rxStandardStandardScale: TFloatField
      FieldName = 'StandardScale'
      Required = True
      DisplayFormat = '0.0'
      MaxValue = 1000.000000000000000000
    end
    object rxStandardAuthority: TStringField
      DisplayWidth = 40
      FieldName = 'Authority'
      Required = True
      Size = 40
    end
    object rxStandardDescription: TStringField
      DisplayWidth = 256
      FieldName = 'Description'
      Required = True
      Size = 256
    end
  end
  object rxDistribution: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DistributionVersion'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DistributionAuthority'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'DistributionDate'
        DataType = ftDate
      end>
    Left = 451
    Top = 55
    object StringField5: TStringField
      DisplayLabel = 'Distribution~Version'
      DisplayWidth = 20
      FieldName = 'DistributionVersion'
    end
    object StringField6: TStringField
      DisplayLabel = 'Distribution~Authority'
      DisplayWidth = 32
      FieldName = 'DistributionAuthority'
      Size = 32
    end
    object DateField1: TDateField
      DisplayLabel = 'Distribution~Date'
      DisplayWidth = 10
      FieldName = 'DistributionDate'
    end
  end
  object rxWindow: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Description'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'Default'
        DataType = ftFloat
      end>
    Left = 29
    Top = 4
    object StringField4: TStringField
      DisplayWidth = 32
      FieldName = 'Description'
      Size = 32
    end
    object FloatField14: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
    end
  end
  object rxWebBaseline: TRxMemoryData
    FieldDefs = <>
    Left = 300
    Top = 176
    object IntegerField1: TIntegerField
      FieldName = 'BaselineID'
    end
    object StringField7: TStringField
      FieldName = 'BaselineName'
      Size = 25
    end
    object StringField8: TStringField
      FieldName = 'BaselineLocation'
      Size = 50
    end
    object StringField9: TStringField
      DisplayWidth = 32
      FieldName = 'BaselineAuthority'
      Size = 32
    end
    object StringField10: TStringField
      FieldName = 'BaselineCalibrationDate'
    end
    object StringField11: TStringField
      FieldName = 'BaselineCalibrationRef'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'EllipsID'
    end
    object FloatField2: TFloatField
      FieldName = 'BaselineConfLevel'
    end
    object FloatField3: TFloatField
      FieldName = 'BaseLegalHeight'
    end
    object FloatField15: TFloatField
      FieldName = 'BaseStdICConstant'
    end
    object FloatField16: TFloatField
      FieldName = 'BaseStdICPPM'
    end
    object FloatField17: TFloatField
      FieldName = 'BaseRelativeHumidity'
    end
    object StringField12: TStringField
      FieldName = 'BaselineArchiveFlag'
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'AuthorityAddress'
      Size = 50
    end
  end
  object rxWebDistance: TRxMemoryData
    FieldDefs = <>
    Left = 298
    Top = 224
    object IntegerField3: TIntegerField
      FieldName = 'DistID'
    end
    object IntegerField4: TIntegerField
      FieldName = 'BaselineID'
    end
    object IntegerField5: TIntegerField
      FieldName = 'PillarFromID'
    end
    object IntegerField6: TIntegerField
      FieldName = 'PillarToID'
    end
    object FloatField18: TFloatField
      FieldName = 'DistLegalDistance'
    end
    object FloatField19: TFloatField
      FieldName = 'DistSigma'
    end
  end
  object rxWebPillar: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'PillarID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'PillarSeqNo'
        DataType = ftInteger
      end
      item
        Name = 'PillarNo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PillarHeight'
        DataType = ftFloat
      end
      item
        Name = 'PillarOffset'
        DataType = ftFloat
      end
      item
        Name = 'PillarLatitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarLongitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsARadius'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsBRadius'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsOrient'
        DataType = ftFloat
      end
      item
        Name = 'PillarHtStdDev'
        DataType = ftFloat
      end>
    Left = 299
    Top = 272
    object IntegerField7: TIntegerField
      FieldName = 'PillarID'
    end
    object IntegerField8: TIntegerField
      FieldName = 'BaselineID'
    end
    object IntegerField9: TIntegerField
      FieldName = 'PillarSeqNo'
    end
    object StringField14: TStringField
      FieldName = 'PillarNo'
      Size = 5
    end
    object FloatField20: TFloatField
      FieldName = 'PillarHeight'
    end
    object FloatField21: TFloatField
      FieldName = 'PillarOffset'
    end
    object FloatField22: TFloatField
      FieldName = 'PillarLatitude'
    end
    object FloatField23: TFloatField
      FieldName = 'PillarLongitude'
    end
    object FloatField24: TFloatField
      FieldName = 'PillarEllipsARadius'
    end
    object FloatField25: TFloatField
      FieldName = 'PillarEllipsBRadius'
    end
    object FloatField26: TFloatField
      FieldName = 'PillarEllipsOrient'
    end
    object FloatField27: TFloatField
      FieldName = 'PillarHtStdDev'
    end
  end
  object rxWebJob: TRxMemoryData
    FieldDefs = <
      item
        Name = 'JobId'
        DataType = ftInteger
      end
      item
        Name = 'JobDescription'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InstID1'
        DataType = ftInteger
      end
      item
        Name = 'InstrID2'
        DataType = ftInteger
      end
      item
        Name = 'JobInstr1Owner'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobInstr2Owner'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobProcessingSoftware'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobStartCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobStartCalibrationTime'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobEndCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobEndCalibrationTime'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobObserverName'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'JobWeatherConditions'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'JobTempCorr'
        DataType = ftFloat
      end
      item
        Name = 'JobPressureCorr'
        DataType = ftFloat
      end
      item
        Name = 'JobStdDevTemp'
        DataType = ftFloat
      end
      item
        Name = 'JobStdDevPressure'
        DataType = ftFloat
      end
      item
        Name = 'JobInstCentringStdDev'
        DataType = ftFloat
      end
      item
        Name = 'JobInstLevellingStdDev'
        DataType = ftFloat
      end
      item
        Name = 'JobType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobComments'
        DataType = ftString
        Size = 50
      end>
    Left = 400
    Top = 180
    object IntegerField17: TIntegerField
      FieldName = 'JobId'
    end
    object StringField15: TStringField
      DisplayWidth = 30
      FieldName = 'JobDescription'
      Size = 30
    end
    object IntegerField18: TIntegerField
      FieldName = 'InstID1'
    end
    object IntegerField19: TIntegerField
      FieldName = 'InstID2'
    end
    object StringField16: TStringField
      DisplayWidth = 38
      FieldName = 'JobInst1Owner'
      Size = 38
    end
    object StringField17: TStringField
      DisplayWidth = 38
      FieldName = 'JobInst2Owner'
      Size = 38
    end
    object StringField18: TStringField
      FieldName = 'JobProcessingSoftware'
      Size = 25
    end
    object StringField19: TStringField
      FieldName = 'JobStartCalibrationDate'
    end
    object StringField20: TStringField
      FieldName = 'JobStartCalibrationTime'
      Size = 25
    end
    object StringField21: TStringField
      FieldName = 'JobEndCalibrationDate'
    end
    object StringField22: TStringField
      FieldName = 'JobEndCalibrationTime'
    end
    object StringField23: TStringField
      FieldName = 'JobObserverName'
      Size = 25
    end
    object IntegerField20: TIntegerField
      FieldName = 'BaselineID'
    end
    object StringField24: TStringField
      FieldName = 'JobWeatherConditions'
      Size = 30
    end
    object FloatField28: TFloatField
      FieldName = 'JobTempCorr'
    end
    object FloatField29: TFloatField
      FieldName = 'JobPressureCorr'
    end
    object FloatField30: TFloatField
      FieldName = 'JobStdDevTemp'
    end
    object FloatField31: TFloatField
      FieldName = 'JobStdDevPressure'
    end
    object FloatField32: TFloatField
      FieldName = 'JobInstCentringStdDev'
    end
    object FloatField33: TFloatField
      FieldName = 'JobInstLevellingStdDev'
    end
    object StringField25: TStringField
      FieldName = 'JobType'
    end
    object StringField26: TStringField
      FieldName = 'JobComments'
      Size = 50
    end
    object StringField27: TStringField
      FieldName = 'JobInst1OwnerAddress'
      Size = 40
    end
  end
  object rxWebJMeasure: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'MeasID'
        DataType = ftInteger
      end
      item
        Name = 'MeasType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'JobID'
        DataType = ftInteger
      end
      item
        Name = 'MeasAtPillarID'
        DataType = ftInteger
      end
      item
        Name = 'MeasToPillarID'
        DataType = ftInteger
      end
      item
        Name = 'MeasAtHeight'
        DataType = ftFloat
      end
      item
        Name = 'MeasToHeight'
        DataType = ftFloat
      end
      item
        Name = 'MeasDryTemp'
        DataType = ftFloat
      end
      item
        Name = 'MeasHumidity'
        DataType = ftFloat
      end
      item
        Name = 'MeasHumidityType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MeasPressure'
        DataType = ftFloat
      end
      item
        Name = 'MeasMetFlag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WetTemp'
        DataType = ftFloat
      end
      item
        Name = 'Humidity'
        DataType = ftFloat
      end>
    Left = 400
    Top = 228
    object IntegerField21: TIntegerField
      FieldName = 'MeasID'
    end
    object StringField28: TStringField
      FieldName = 'MeasType'
      Size = 1
    end
    object IntegerField22: TIntegerField
      FieldName = 'JobID'
    end
    object IntegerField23: TIntegerField
      FieldName = 'MeasAtPillarID'
    end
    object IntegerField24: TIntegerField
      FieldName = 'MeasToPillarID'
    end
    object FloatField34: TFloatField
      FieldName = 'MeasAtHeight'
    end
    object FloatField35: TFloatField
      FieldName = 'MeasToHeight'
    end
    object FloatField36: TFloatField
      FieldName = 'MeasDryTemp'
    end
    object FloatField37: TFloatField
      FieldName = 'MeasHumidity'
    end
    object StringField29: TStringField
      FieldName = 'MeasHumidityType'
      Size = 1
    end
    object FloatField38: TFloatField
      FieldName = 'MeasPressure'
    end
    object StringField30: TStringField
      FieldName = 'MeasMetFlag'
      Size = 1
    end
    object FloatField39: TFloatField
      FieldName = 'WetTemp'
    end
    object FloatField40: TFloatField
      FieldName = 'Humidity'
    end
  end
  object rxWebEDMObs: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'EDMObsID'
        DataType = ftInteger
      end
      item
        Name = 'MeasID'
        DataType = ftInteger
      end
      item
        Name = 'EDMObsDistance'
        DataType = ftFloat
      end>
    Left = 408
    Top = 279
    object IntegerField25: TIntegerField
      DisplayWidth = 10
      FieldName = 'EDMObsID'
    end
    object IntegerField26: TIntegerField
      DisplayWidth = 10
      FieldName = 'MeasID'
    end
    object FloatField41: TFloatField
      DisplayLabel = 'Observations~(metres)'
      DisplayWidth = 12
      FieldName = 'EDMObsDistance'
    end
  end
  object rxMethodX: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Method'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 250
      end>
    Left = 198
    Top = 60
    object StringField31: TStringField
      DisplayWidth = 40
      FieldName = 'Method'
      Size = 40
    end
    object StringField32: TStringField
      DisplayWidth = 300
      FieldName = 'Description'
      Size = 300
    end
  end
  object rxBaselineDefault: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Default'
        DataType = ftFloat
      end
      item
        Name = 'Unit'
        DataType = ftString
        Size = 24
      end>
    Left = 407
    Top = 104
    object rxBaselineDefaultBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object StringField33: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField42: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField34: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
  object rxBaselineDefaultX: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Default'
        DataType = ftFloat
      end
      item
        Name = 'Unit'
        DataType = ftString
        Size = 24
      end>
    Left = 351
    Top = 128
    object IntegerField27: TIntegerField
      FieldName = 'BaselineID'
    end
    object StringField35: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField43: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField36: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
  object rxBaselineAccuracyX: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'UncertaintyConstant'
        DataType = ftFloat
      end
      item
        Name = 'UncertaintyScale'
        DataType = ftFloat
      end>
    Left = 41
    Top = 211
    object IntegerField28: TIntegerField
      FieldName = 'BaselineID'
    end
    object FloatField44: TFloatField
      FieldName = 'UncertaintyConstant'
      DisplayFormat = '0.00'
    end
    object FloatField45: TFloatField
      FieldName = 'UncertaintyScale'
      DisplayFormat = '0.00'
    end
  end
  object rxInstrumentMakeX: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'MakeID'
        DataType = ftInteger
      end
      item
        Name = 'MakeName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MakeCountry'
        DataType = ftString
        Size = 20
      end>
    Left = 206
    Top = 115
    object IntegerField29: TIntegerField
      FieldName = 'MakeID'
      Visible = False
    end
    object StringField37: TStringField
      DisplayLabel = 'Name'
      FieldName = 'MakeName'
    end
    object StringField38: TStringField
      DisplayLabel = 'Country'
      FieldName = 'MakeCountry'
    end
  end
  object rxInstrumentModelX: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'ModelID'
        DataType = ftInteger
      end
      item
        Name = 'MakeID'
        DataType = ftInteger
      end
      item
        Name = 'ModelName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ModelInstType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModelManufStdDevConst'
        DataType = ftFloat
      end
      item
        Name = 'ModelManufStdDevPPM'
        DataType = ftFloat
      end
      item
        Name = 'ModelUnitLength'
        DataType = ftFloat
      end
      item
        Name = 'ModelModFreq'
        DataType = ftFloat
      end
      item
        Name = 'ModelCarrierWaveLength'
        DataType = ftFloat
      end
      item
        Name = 'ModelComments'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'isPulseMeter'
        DataType = ftBoolean
      end>
    Left = 202
    Top = 158
    object IntegerField30: TIntegerField
      FieldName = 'ModelID'
    end
    object IntegerField31: TIntegerField
      FieldName = 'MakeID'
    end
    object StringField39: TStringField
      DisplayLabel = 'Name'
      FieldName = 'ModelName'
    end
    object StringField40: TStringField
      DisplayLabel = 'Type'
      FieldName = 'ModelInstType'
      Size = 1
    end
    object FloatField46: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~Constant'
      FieldName = 'ModelManufStdDevConst'
    end
    object FloatField47: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~PPM'
      FieldName = 'ModelManufStdDevPPM'
    end
    object FloatField48: TFloatField
      DisplayLabel = 'Unit~Length'
      FieldName = 'ModelUnitLength'
    end
    object FloatField49: TFloatField
      DisplayLabel = 'Frequency'
      FieldName = 'ModelModFreq'
    end
    object FloatField50: TFloatField
      DisplayLabel = 'Carrier~Wave~Length'
      FieldName = 'ModelCarrierWaveLength'
    end
    object StringField41: TStringField
      DisplayLabel = 'Comments'
      FieldName = 'ModelComments'
      Size = 30
    end
    object BooleanField1: TBooleanField
      FieldName = 'isPulseMeter'
    end
  end
  object rxInstrumentX: TRxMemoryData
    FieldDefs = <>
    Left = 202
    Top = 204
    object IntegerField32: TIntegerField
      FieldName = 'InstID'
    end
    object StringField42: TStringField
      FieldName = 'InstType'
      Size = 1
    end
    object IntegerField33: TIntegerField
      FieldName = 'ModelID'
    end
    object StringField43: TStringField
      DisplayLabel = 'Serial Number'
      FieldName = 'InstSerialNo'
    end
    object FloatField51: TFloatField
      DisplayLabel = 'Std Dev~Constant'
      FieldName = 'InstStdDevConst'
    end
    object FloatField52: TFloatField
      DisplayLabel = 'Std Dev~PPM'
      FieldName = 'InstStdDevPPM'
    end
    object IntegerField34: TIntegerField
      FieldName = 'AntennaModelID'
    end
    object StringField44: TStringField
      FieldName = 'InstAntennaSerialNo'
      Size = 30
    end
    object FloatField53: TFloatField
      DisplayLabel = 'Constant~(m)'
      FieldName = 'InstConstant'
    end
    object FloatField54: TFloatField
      DisplayLabel = 'Scale~Factor'
      FieldName = 'InstScaleFact'
    end
    object StringField45: TStringField
      DisplayLabel = 'Comments'
      FieldName = 'InstComments'
      Size = 30
    end
  end
  object rxBaselineX: TRxMemoryData
    FieldDefs = <>
    Left = 36
    Top = 264
    object IntegerField35: TIntegerField
      FieldName = 'BaselineID'
    end
    object StringField46: TStringField
      FieldName = 'BaselineName'
      Size = 25
    end
    object StringField47: TStringField
      FieldName = 'BaselineLocation'
      Size = 50
    end
    object StringField48: TStringField
      DisplayWidth = 32
      FieldName = 'BaselineAuthority'
      Size = 32
    end
    object StringField49: TStringField
      FieldName = 'BaselineCalibrationDate'
    end
    object StringField50: TStringField
      FieldName = 'BaselineCalibrationRef'
      Size = 50
    end
    object IntegerField36: TIntegerField
      FieldName = 'EllipsID'
    end
    object FloatField55: TFloatField
      FieldName = 'BaselineConfLevel'
    end
    object FloatField56: TFloatField
      FieldName = 'BaseLegalHeight'
    end
    object FloatField57: TFloatField
      FieldName = 'BaseStdICConstant'
    end
    object FloatField58: TFloatField
      FieldName = 'BaseStdICPPM'
    end
    object FloatField59: TFloatField
      FieldName = 'BaseRelativeHumidity'
    end
    object StringField51: TStringField
      FieldName = 'BaselineArchiveFlag'
      Size = 1
    end
    object StringField52: TStringField
      FieldName = 'AuthorityAddress'
      Size = 50
    end
  end
end
