object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 291
  Width = 504
  object dsJMeasure: TwwDataSource
    DataSet = rxJMeasure
    OnStateChange = dsJMeasureStateChange
    Left = 162
    Top = 202
  end
  object dsJob: TwwDataSource
    DataSet = rxJob
    Left = 112
    Top = 202
  end
  object dsPillar: TwwDataSource
    DataSet = rxPillar
    Left = 15
    Top = 202
  end
  object dsToInstrumentMake: TwwDataSource
    DataSet = rxToInstrumentMake
    Left = 413
    Top = 9
  end
  object dsToInstrumentModel: TwwDataSource
    DataSet = rxToInstrumentModel
    Left = 413
    Top = 54
  end
  object dsToInstrument: TwwDataSource
    DataSet = rxToInstrument
    Left = 413
    Top = 99
  end
  object dsAtInstrument: TwwDataSource
    DataSet = rxAtInstrument
    Left = 309
    Top = 99
  end
  object dsAtInstrumentModel: TwwDataSource
    DataSet = rxAtInstrumentModel
    Left = 309
    Top = 54
  end
  object dsAtInstrumentMake: TwwDataSource
    DataSet = rxAtInstrumentMake
    Left = 309
    Top = 9
  end
  object dsPillar2: TwwDataSource
    Left = 66
    Top = 202
  end
  object dsBaseline: TwwDataSource
    DataSet = rxBaseline
    Left = 16
    Top = 56
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
        Name = 'InstID2'
        DataType = ftInteger
      end
      item
        Name = 'JobInst1Owner'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobInst2Owner'
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
    BeforePost = rxJobBeforePost
    BeforeDelete = rxJobBeforeDelete
    OnNewRecord = rxJobNewRecord
    Left = 110
    Top = 152
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
      FieldName = 'JobInst2Owner'
      Size = 25
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
    object rxJobThermometer1: TStringField
      FieldName = 'Thermometer1'
      Size = 18
    end
    object rxJobThermometer2: TStringField
      FieldName = 'Thermometer2'
      Size = 18
    end
    object rxJobBarometer1: TStringField
      FieldName = 'Barometer1'
      Size = 18
    end
    object rxJobBarometer2: TStringField
      FieldName = 'Barometer2'
      Size = 18
    end
    object rxJobThermometerCorr1: TFloatField
      FieldName = 'ThermometerCorr1'
    end
    object rxJobThermometerCorr2: TFloatField
      FieldName = 'ThermometerCorr2'
    end
    object rxJobBarometerCorr1: TFloatField
      FieldName = 'BarometerCorr1'
    end
    object rxJobBarometerCorr2: TFloatField
      FieldName = 'BarometerCorr2'
    end
    object rxJobNumberThermometers: TIntegerField
      DisplayLabel = 'Number of Thermometers'
      FieldName = 'NumberThermometers'
      MaxValue = 2
      MinValue = 1
    end
    object rxJobNumberBarometers: TFloatField
      FieldName = 'NumberBarometers'
      MaxValue = 2.000000000000000000
      MinValue = 1.000000000000000000
    end
  end
  object rxBaseline: TRxMemoryData
    FieldDefs = <
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineName'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'BaselineLocation'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'BaselineAuthority'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'BaselineCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BaselineCalibrationRef'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'EllipsID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineConfLevel'
        DataType = ftFloat
      end
      item
        Name = 'BaseLegalHeight'
        DataType = ftFloat
      end
      item
        Name = 'BaseStdICConstant'
        DataType = ftFloat
      end
      item
        Name = 'BaseStdICPPM'
        DataType = ftFloat
      end
      item
        Name = 'BaseRelativeHumidity'
        DataType = ftFloat
      end
      item
        Name = 'BaselineArchiveFlag'
        DataType = ftString
        Size = 1
      end>
    Left = 15
    Top = 9
    object rxBaselineBaselineID: TIntegerField
      DisplayWidth = 10
      FieldName = 'BaselineID'
    end
    object rxBaselineBaselineName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 25
      FieldName = 'BaselineName'
      Size = 25
    end
    object rxBaselineBaselineLocation: TStringField
      DisplayLabel = 'Location'
      DisplayWidth = 50
      FieldName = 'BaselineLocation'
      Size = 50
    end
    object rxBaselineBaselineAuthority: TStringField
      DisplayLabel = 'Authority'
      DisplayWidth = 32
      FieldName = 'BaselineAuthority'
      Size = 32
    end
    object rxBaselineBaselineCalibrationDate: TStringField
      DisplayWidth = 20
      FieldName = 'BaselineCalibrationDate'
    end
    object rxBaselineBaselineCalibrationRef: TStringField
      DisplayWidth = 50
      FieldName = 'BaselineCalibrationRef'
      Size = 50
    end
    object rxBaselineEllipsID: TIntegerField
      DisplayWidth = 10
      FieldName = 'EllipsID'
    end
    object rxBaselineBaselineConfLevel: TFloatField
      DisplayWidth = 10
      FieldName = 'BaselineConfLevel'
    end
    object rxBaselineBaseLegalHeight: TFloatField
      DisplayWidth = 10
      FieldName = 'BaseLegalHeight'
    end
    object rxBaselineBaseStdICConstant: TFloatField
      DisplayWidth = 10
      FieldName = 'BaseStdICConstant'
    end
    object rxBaselineBaseStdICPPM: TFloatField
      DisplayWidth = 10
      FieldName = 'BaseStdICPPM'
    end
    object rxBaselineBaseRelativeHumidity: TFloatField
      DisplayWidth = 10
      FieldName = 'BaseRelativeHumidity'
    end
    object rxBaselineBaselineArchiveFlag: TStringField
      DisplayWidth = 1
      FieldName = 'BaselineArchiveFlag'
      Size = 1
    end
    object rxBaselineAuthorityAddress: TStringField
      DisplayWidth = 50
      FieldName = 'AuthorityAddress'
      Size = 50
    end
  end
  object rxPillar: TRxMemoryData
    Active = True
    FieldDefs = <
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
        Name = 'PillarHtStdDev'
        DataType = ftFloat
      end
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
      end>
    BeforePost = rxPillarBeforePost
    Left = 16
    Top = 152
    object rxPillarPillarNo: TStringField
      DisplayLabel = 'Pillar~Number'
      DisplayWidth = 5
      FieldName = 'PillarNo'
      Size = 5
    end
    object rxPillarPillarHeight: TFloatField
      DisplayLabel = 'Pillar~Height'
      DisplayWidth = 10
      FieldName = 'PillarHeight'
    end
    object rxPillarPillarOffset: TFloatField
      DisplayLabel = 'Pillar~Offset~(metres)'
      DisplayWidth = 10
      FieldName = 'PillarOffset'
    end
    object rxPillarPillarHtStdDev: TFloatField
      DisplayLabel = 'Uncertainty~95%~Pillar Height'
      DisplayWidth = 10
      FieldName = 'PillarHtStdDev'
      OnGetText = rxPillarPillarHtStdDevGetText
    end
    object rxPillarPillarID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PillarID'
      Visible = False
    end
    object rxPillarBaselineID: TIntegerField
      FieldName = 'BaselineID'
      Visible = False
    end
    object rxPillarPillarSeqNo: TIntegerField
      FieldName = 'PillarSeqNo'
      Visible = False
    end
    object rxPillarPillarLatitude: TFloatField
      DisplayLabel = 'Latitude~ (DMS)'
      DisplayWidth = 12
      FieldName = 'PillarLatitude'
      Visible = False
    end
    object rxPillarPillarLongitude: TFloatField
      DisplayLabel = 'Longitude~ (DMS)'
      DisplayWidth = 12
      FieldName = 'PillarLongitude'
      Visible = False
    end
    object rxPillarPillarEllipsARadius: TFloatField
      DisplayLabel = 'Error Ellipse~Semi-Major Axis'
      DisplayWidth = 10
      FieldName = 'PillarEllipsARadius'
      Visible = False
    end
    object rxPillarPillarEllipsBRadius: TFloatField
      DisplayLabel = 'Semi_Minor Axis'
      DisplayWidth = 10
      FieldName = 'PillarEllipsBRadius'
      Visible = False
    end
    object rxPillarPillarEllipsOrient: TFloatField
      DisplayLabel = 'Error Ellipse~Orientation~(DMS)'
      DisplayWidth = 10
      FieldName = 'PillarEllipsOrient'
      Visible = False
    end
  end
  object rxPillar2: TRxMemoryData
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
    Left = 64
    Top = 152
    object rxPillar2PillarID: TIntegerField
      FieldName = 'PillarID'
      Visible = False
    end
    object rxPillar2BaselineID: TIntegerField
      FieldName = 'BaselineID'
      Visible = False
    end
    object rxPillar2PillarSeqNo: TIntegerField
      FieldName = 'PillarSeqNo'
      Visible = False
    end
    object rxPillar2PillarNo: TStringField
      DisplayLabel = 'Pillar~Number'
      DisplayWidth = 5
      FieldName = 'PillarNo'
      Size = 5
    end
    object rxPillar2PillarHeight: TFloatField
      DisplayLabel = 'Height'
      DisplayWidth = 10
      FieldName = 'PillarHeight'
    end
    object rxPillar2PillarOffset: TFloatField
      DisplayLabel = 'Offset'
      DisplayWidth = 10
      FieldName = 'PillarOffset'
    end
    object rxPillar2PillarLatitude: TFloatField
      DisplayLabel = 'Latitude~ (DMS)'
      DisplayWidth = 12
      FieldName = 'PillarLatitude'
      Visible = False
    end
    object rxPillar2PillarLongitude: TFloatField
      DisplayLabel = 'Longitude~ (DMS)'
      DisplayWidth = 12
      FieldName = 'PillarLongitude'
      Visible = False
    end
    object rxPillar2PillarEllipsARadius: TFloatField
      DisplayLabel = 'Error Ellipse~Semi-Major Axis'
      DisplayWidth = 10
      FieldName = 'PillarEllipsARadius'
      Visible = False
    end
    object rxPillar2PillarEllipsBRadius: TFloatField
      DisplayLabel = 'Semi_Minor Axis'
      DisplayWidth = 10
      FieldName = 'PillarEllipsBRadius'
      Visible = False
    end
    object rxPillar2PillarEllipsOrient: TFloatField
      DisplayLabel = 'Error Ellipse~Orientation~(DMS)'
      DisplayWidth = 10
      FieldName = 'PillarEllipsOrient'
      Visible = False
    end
    object rxPillar2PillarHtStdDev: TFloatField
      DisplayLabel = 'Height~Uncertainty'
      DisplayWidth = 10
      FieldName = 'PillarHtStdDev'
      Visible = False
    end
  end
  object rxAtInstrumentMake: TRxMemoryData
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
    BeforePost = rxAtInstrumentMakeBeforePost
    Left = 96
    Top = 9
    object rxAtInstrumentMakeMakeID: TIntegerField
      FieldName = 'MakeID'
      Visible = False
    end
    object rxAtInstrumentMakeMakeName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 22
      FieldName = 'MakeName'
    end
    object rxAtInstrumentMakeMakeCountry: TStringField
      DisplayLabel = 'Country'
      DisplayWidth = 20
      FieldName = 'MakeCountry'
    end
  end
  object rxAtInstrumentModel: TRxMemoryData
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
        Name = 'ModelInstType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModelName'
        DataType = ftString
        Size = 20
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
      end
      item
        Name = 'ManuRefractiveIndex'
        DataType = ftFloat
      end>
    BeforePost = rxAtInstrumentModelBeforePost
    OnNewRecord = rxAtInstrumentModelNewRecord
    Left = 96
    Top = 55
    object rxAtInstrumentModelModelID: TIntegerField
      FieldName = 'ModelID'
      Visible = False
    end
    object rxAtInstrumentModelMakeID: TIntegerField
      FieldName = 'MakeID'
      Visible = False
    end
    object rxAtInstrumentModelModelInstType: TStringField
      DisplayLabel = 'Type'
      FieldName = 'ModelInstType'
      Visible = False
      Size = 1
    end
    object rxAtInstrumentModelModelName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 19
      FieldName = 'ModelName'
    end
    object rxAtInstrumentModelModelManufStdDevConst: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~Constant'
      DisplayWidth = 10
      FieldName = 'ModelManufStdDevConst'
    end
    object rxAtInstrumentModelModelManufStdDevPPM: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~PPM'
      DisplayWidth = 10
      FieldName = 'ModelManufStdDevPPM'
    end
    object rxAtInstrumentModelModelUnitLength: TFloatField
      DisplayLabel = 'Unit~Length'
      DisplayWidth = 5
      FieldName = 'ModelUnitLength'
    end
    object rxAtInstrumentModelModelModFreq: TFloatField
      DisplayLabel = 'Frequency'
      DisplayWidth = 10
      FieldName = 'ModelModFreq'
    end
    object rxAtInstrumentModelModelCarrierWaveLength: TFloatField
      DisplayLabel = 'Carrier~Wave~Length'
      DisplayWidth = 8
      FieldName = 'ModelCarrierWaveLength'
    end
    object rxAtInstrumentModelModelComments: TStringField
      DisplayLabel = 'Comments'
      DisplayWidth = 24
      FieldName = 'ModelComments'
      Size = 30
    end
    object rxAtInstrumentModelisPulseMeter: TBooleanField
      FieldName = 'isPulseMeter'
    end
    object rxAtInstrumentModelManuRefractiveIndex: TFloatField
      FieldName = 'ManuRefractiveIndex'
    end
  end
  object rxAtInstrument: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'InstID'
        DataType = ftInteger
      end
      item
        Name = 'InstType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModelID'
        DataType = ftInteger
      end
      item
        Name = 'InstSerialNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InstStdDevConst'
        DataType = ftFloat
      end
      item
        Name = 'InstStdDevPPM'
        DataType = ftFloat
      end
      item
        Name = 'AntennaModelID'
        DataType = ftInteger
      end
      item
        Name = 'InstAntennaSerialNo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'InstConstant'
        DataType = ftFloat
      end
      item
        Name = 'InstScaleFact'
        DataType = ftFloat
      end
      item
        Name = 'InstComments'
        DataType = ftString
        Size = 30
      end>
    BeforePost = rxAtInstrumentBeforePost
    Left = 96
    Top = 100
    object rxAtInstrumentInstID: TIntegerField
      FieldName = 'InstID'
      Visible = False
    end
    object rxAtInstrumentInstType: TStringField
      FieldName = 'InstType'
      Visible = False
      Size = 1
    end
    object rxAtInstrumentModelID: TIntegerField
      FieldName = 'ModelID'
      Visible = False
    end
    object rxAtInstrumentInstSerialNo: TStringField
      DisplayLabel = 'Serial Number'
      DisplayWidth = 20
      FieldName = 'InstSerialNo'
    end
    object rxAtInstrumentInstStdDevConst: TFloatField
      DisplayLabel = 'Std Dev~Constant'
      DisplayWidth = 10
      FieldName = 'InstStdDevConst'
    end
    object rxAtInstrumentInstStdDevPPM: TFloatField
      DisplayLabel = 'Std Dev~PPM'
      DisplayWidth = 10
      FieldName = 'InstStdDevPPM'
    end
    object rxAtInstrumentAntennaModelID: TIntegerField
      FieldName = 'AntennaModelID'
      Visible = False
    end
    object rxAtInstrumentInstAntennaSerialNo: TStringField
      FieldName = 'InstAntennaSerialNo'
      Visible = False
      Size = 30
    end
    object rxAtInstrumentInstConstant: TFloatField
      DisplayLabel = 'Constant~(m)'
      DisplayWidth = 10
      FieldName = 'InstConstant'
    end
    object rxAtInstrumentInstScaleFact: TFloatField
      DisplayLabel = 'Scale~Factor'
      FieldName = 'InstScaleFact'
      Visible = False
    end
    object rxAtInstrumentInstComments: TStringField
      DisplayLabel = 'Comments'
      DisplayWidth = 30
      FieldName = 'InstComments'
      Size = 30
    end
  end
  object rxToInstrumentMake: TRxMemoryData
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
    BeforePost = rxToInstrumentMakeBeforePost
    Left = 200
    Top = 9
    object rxToInstrumentMakeMakeID: TIntegerField
      FieldName = 'MakeID'
      Visible = False
    end
    object rxToInstrumentMakeMakeName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 22
      FieldName = 'MakeName'
    end
    object rxToInstrumentMakeMakeCountry: TStringField
      DisplayLabel = 'Country'
      DisplayWidth = 20
      FieldName = 'MakeCountry'
    end
  end
  object rxToInstrumentModel: TRxMemoryData
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
        Name = 'ModelInstType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModelName'
        DataType = ftString
        Size = 20
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
      end
      item
        Name = 'ManuRefractiveIndex'
        DataType = ftFloat
      end>
    BeforePost = rxToInstrumentModelBeforePost
    OnNewRecord = rxToInstrumentModelNewRecord
    Left = 200
    Top = 54
    object rxToInstrumentModelModelID: TIntegerField
      FieldName = 'ModelID'
      Visible = False
    end
    object IntegerField6: TIntegerField
      FieldName = 'MakeID'
      Visible = False
    end
    object StringField4: TStringField
      DisplayLabel = 'Type'
      FieldName = 'ModelInstType'
      Visible = False
      Size = 1
    end
    object rxToInstrumentModelModelName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 19
      FieldName = 'ModelName'
    end
    object FloatField9: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~Constant'
      DisplayWidth = 10
      FieldName = 'ModelManufStdDevConst'
    end
    object FloatField10: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~PPM'
      DisplayWidth = 10
      FieldName = 'ModelManufStdDevPPM'
    end
    object FloatField11: TFloatField
      DisplayLabel = 'Unit~Length'
      DisplayWidth = 5
      FieldName = 'ModelUnitLength'
    end
    object FloatField12: TFloatField
      DisplayLabel = 'Frequency'
      DisplayWidth = 10
      FieldName = 'ModelModFreq'
    end
    object FloatField13: TFloatField
      DisplayLabel = 'Carrier~Wave~Length'
      DisplayWidth = 8
      FieldName = 'ModelCarrierWaveLength'
    end
    object StringField6: TStringField
      DisplayLabel = 'Comments'
      DisplayWidth = 24
      FieldName = 'ModelComments'
      Size = 30
    end
    object rxToInstrumentModelisPulseMeter: TBooleanField
      FieldName = 'isPulseMeter'
    end
    object rxToInstrumentModelManuRefractiveIndex: TFloatField
      FieldName = 'ManuRefractiveIndex'
    end
  end
  object rxToInstrument: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'InstID'
        DataType = ftInteger
      end
      item
        Name = 'InstType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModelID'
        DataType = ftInteger
      end
      item
        Name = 'InstSerialNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InstStdDevConst'
        DataType = ftFloat
      end
      item
        Name = 'InstStdDevPPM'
        DataType = ftFloat
      end
      item
        Name = 'AntennaModelID'
        DataType = ftInteger
      end
      item
        Name = 'InstAntennaSerialNo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'InstConstant'
        DataType = ftFloat
      end
      item
        Name = 'InstScaleFact'
        DataType = ftFloat
      end
      item
        Name = 'InstComments'
        DataType = ftString
        Size = 30
      end>
    BeforePost = rxToInstrumentBeforePost
    Left = 200
    Top = 100
    object rxToInstrumentInstID: TIntegerField
      FieldName = 'InstID'
      Visible = False
    end
    object rxToInstrumentIntType: TStringField
      FieldName = 'InstType'
      Visible = False
      Size = 1
    end
    object rxToInstrumentModelID: TIntegerField
      FieldName = 'ModelID'
      Visible = False
    end
    object rxToInstrumentInstSerialNo: TStringField
      DisplayLabel = 'Serial Number'
      DisplayWidth = 20
      FieldName = 'InstSerialNo'
    end
    object rxToInstrumentInstStdDevConst: TFloatField
      DisplayLabel = 'Std Dev~Constant'
      DisplayWidth = 10
      FieldName = 'InstStdDevConst'
    end
    object rxToInstrumentInstStdDevPPM: TFloatField
      DisplayLabel = 'Std Dev~PPM'
      DisplayWidth = 10
      FieldName = 'InstStdDevPPM'
    end
    object rxToInstrumentAntennaModelID: TIntegerField
      FieldName = 'AntennaModelID'
      Visible = False
    end
    object rxToInstrumentInstAntennaSerialNo: TStringField
      FieldName = 'InstAntennaSerialNo'
      Visible = False
      Size = 30
    end
    object rxToInstrumentInstConstant: TFloatField
      DisplayLabel = 'Constant~(m)'
      DisplayWidth = 10
      FieldName = 'InstConstant'
    end
    object rxToInstrumentInstScaleFact: TFloatField
      DisplayLabel = 'Scale~Factor'
      FieldName = 'InstScaleFact'
      Visible = False
    end
    object rxToInstrumentInstComments: TStringField
      DisplayLabel = 'Comments'
      DisplayWidth = 30
      FieldName = 'InstComments'
      Size = 30
    end
  end
  object rxJMeasure: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'AtPillarNo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ToPillarNo'
        DataType = ftString
        Size = 5
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
        Name = 'MeasDryTemp2'
        DataType = ftFloat
      end
      item
        Name = 'MeasPressure'
        DataType = ftFloat
      end
      item
        Name = 'MeasPressure2'
        DataType = ftFloat
      end
      item
        Name = 'MeasHumidity'
        DataType = ftFloat
      end
      item
        Name = 'MeasHumidity2'
        DataType = ftFloat
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
        Name = 'hasError'
        DataType = ftBoolean
      end
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
        Name = 'MeasHumidityType'
        DataType = ftString
        Size = 1
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
    AfterScroll = rxJMeasureAfterScroll
    Left = 160
    Top = 152
    object rxJMeasureAtPillarNo: TStringField
      DisplayLabel = 'At~Pillar'
      DisplayWidth = 5
      FieldName = 'AtPillarNo'
      Size = 5
    end
    object rxJMeasureToPillarNo: TStringField
      DisplayLabel = 'To~Pillar'
      DisplayWidth = 5
      FieldName = 'ToPillarNo'
      Size = 5
    end
    object rxJMeasureMeasAtHeight: TFloatField
      DisplayLabel = 'Height above~At Pillar(m)'
      DisplayWidth = 11
      FieldName = 'MeasAtHeight'
      OnValidate = rxJMeasureMeasAtHeightValidate
    end
    object rxJMeasureMeasToHeight: TFloatField
      DisplayLabel = 'Height above~To Pillar (m)'
      DisplayWidth = 11
      FieldName = 'MeasToHeight'
      OnValidate = rxJMeasureMeasToHeightValidate
    end
    object rxJMeasureMeasDryTemp: TFloatField
      DisplayLabel = 'Dry Temp ~EDM~(Celcius)'
      DisplayWidth = 8
      FieldName = 'MeasDryTemp'
    end
    object rxJMeasureMeasDryTemp2: TFloatField
      DisplayLabel = 'Dry Temp ~Prism~(Celcius)'
      DisplayWidth = 8
      FieldName = 'MeasDryTemp2'
    end
    object rxJMeasureMeasPressure: TFloatField
      DisplayLabel = 'Pressure~EDM~(Hectapascals)'
      DisplayWidth = 10
      FieldName = 'MeasPressure'
      DisplayFormat = '0.0'
    end
    object rxJMeasureMeasPressure2: TFloatField
      DisplayLabel = 'Pressure~Prism~(Hectapascals)'
      DisplayWidth = 10
      FieldName = 'MeasPressure2'
      DisplayFormat = '0.0'
    end
    object rxJMeasureMeasHumidity: TFloatField
      DisplayLabel = 'Humidity~EDM~ (%)'
      DisplayWidth = 10
      FieldName = 'MeasHumidity'
    end
    object rxJMeasureMeasHumidity2: TFloatField
      DisplayLabel = 'Humidity~Prism~(%)'
      DisplayWidth = 10
      FieldName = 'MeasHumidity2'
    end
    object rxJMeasureMeasAtPillarID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MeasAtPillarID'
      Visible = False
    end
    object rxJMeasureMeasToPillarID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MeasToPillarID'
      Visible = False
    end
    object rxJMeasurehasError: TBooleanField
      DisplayWidth = 5
      FieldName = 'hasError'
      Visible = False
    end
    object rxJMeasureMeasID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MeasID'
      Visible = False
    end
    object rxJMeasureMeasType: TStringField
      DisplayWidth = 1
      FieldName = 'MeasType'
      Visible = False
      Size = 1
    end
    object rxJMeasureJobID: TIntegerField
      DisplayWidth = 10
      FieldName = 'JobID'
      Visible = False
    end
    object rxJMeasureMeasHumidityType: TStringField
      DisplayWidth = 1
      FieldName = 'MeasHumidityType'
      Visible = False
      Size = 1
    end
    object rxJMeasureMeasMetFlag: TStringField
      DisplayWidth = 1
      FieldName = 'MeasMetFlag'
      Visible = False
      Size = 1
    end
    object rxJMeasureWetTemp: TFloatField
      DisplayWidth = 10
      FieldName = 'WetTemp'
      Visible = False
    end
    object rxJMeasureHumidity: TFloatField
      DisplayWidth = 10
      FieldName = 'Humidity'
      Visible = False
    end
  end
  object rxFilteredEDMObs: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'EDMObsDistance'
        DataType = ftFloat
      end
      item
        Name = 'MeasID'
        DataType = ftInteger
      end
      item
        Name = 'EDMObsID'
        DataType = ftInteger
      end>
    Left = 238
    Top = 152
    object rxFilteredEDMObsEDMObsDistance: TFloatField
      DisplayLabel = 'Observations~(metres)'
      DisplayWidth = 12
      FieldName = 'EDMObsDistance'
      DisplayFormat = '0.0000'
    end
    object rxFilteredEDMObsMeasID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MeasID'
      Visible = False
    end
    object rxFilteredEDMObsEDMObsID: TIntegerField
      DisplayWidth = 10
      FieldName = 'EDMObsID'
      Visible = False
    end
  end
  object dsFilteredEDMObs: TwwDataSource
    DataSet = rxFilteredEDMObs
    OnStateChange = dsFilteredEDMObsStateChange
    Left = 242
    Top = 202
  end
  object rxMets: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Thermometer1'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Thermometer2'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Barometer1'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Barometer2'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'ThermometerCorr1'
        DataType = ftFloat
      end
      item
        Name = 'ThermometerCorr2'
        DataType = ftFloat
      end
      item
        Name = 'BarometerCorr1'
        DataType = ftFloat
      end
      item
        Name = 'BarometerCorr2'
        DataType = ftFloat
      end
      item
        Name = 'NumberThermometers'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NumberBarometers'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    OnNewRecord = rxMetsNewRecord
    Left = 316
    Top = 152
    object rxMetsThermometer1: TStringField
      FieldName = 'Thermometer1'
      Size = 18
    end
    object rxMetsThermometer2: TStringField
      FieldName = 'Thermometer2'
      Size = 18
    end
    object rxMetsBarometer1: TStringField
      FieldName = 'Barometer1'
      Size = 18
    end
    object rxMetsBarometer2: TStringField
      FieldName = 'Barometer2'
      Size = 18
    end
    object rxMetsThermometerCorr1: TFloatField
      FieldName = 'ThermometerCorr1'
    end
    object rxMetsThermometerCorr2: TFloatField
      FieldName = 'ThermometerCorr2'
    end
    object rxMetsBarometerCorr1: TFloatField
      FieldName = 'BarometerCorr1'
    end
    object rxMetsBarometerCorr2: TFloatField
      FieldName = 'BarometerCorr2'
    end
    object rxMetsNumberThermometers: TIntegerField
      DefaultExpression = '1'
      DisplayLabel = 'Number of Thermometers'
      FieldName = 'NumberThermometers'
      Required = True
      MaxValue = 2
      MinValue = 1
    end
    object rxMetsNumberBarometers: TIntegerField
      DefaultExpression = '1'
      DisplayLabel = 'Number of Barometers'
      FieldName = 'NumberBarometers'
      Required = True
      MaxValue = 2
      MinValue = 1
    end
  end
  object dsMets: TwwDataSource
    DataSet = rxMets
    Left = 315
    Top = 202
  end
end
