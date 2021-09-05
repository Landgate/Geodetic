object dmBase: TdmBase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 427
  Width = 695
  object rxmemObservation: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'MeasureID'
        DataType = ftInteger
      end
      item
        Name = 'ObsDistance'
        DataType = ftFloat
      end>
    Left = 280
    Top = 235
    object rxmemObservationMeasureID: TIntegerField
      FieldName = 'MeasureID'
    end
    object rxmemObservationObsDistance: TFloatField
      FieldName = 'ObsDistance'
    end
  end
  object rxmemMeasure: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'MeasureID'
        DataType = ftInteger
      end
      item
        Name = 'AtPillarID'
        DataType = ftInteger
      end
      item
        Name = 'ToPillarID'
        DataType = ftInteger
      end
      item
        Name = 'AtHeight'
        DataType = ftFloat
      end
      item
        Name = 'ToHeight'
        DataType = ftFloat
      end
      item
        Name = 'DryTemp'
        DataType = ftFloat
      end
      item
        Name = 'WetTemp'
        DataType = ftFloat
      end
      item
        Name = 'Humidity'
        DataType = ftFloat
      end
      item
        Name = 'HumidityType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Pressure'
        DataType = ftFloat
      end
      item
        Name = 'MetsFlag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ObsCount'
        DataType = ftInteger
      end>
    Left = 366
    Top = 235
    object IntegerField1: TIntegerField
      FieldName = 'MeasureID'
    end
    object rxmemMeasureAtPillarID: TIntegerField
      FieldName = 'AtPillarID'
    end
    object rxmemMeasureToPillarID: TIntegerField
      FieldName = 'ToPillarID'
    end
    object rxmemMeasureAtHeight: TFloatField
      FieldName = 'AtHeight'
    end
    object rxmemMeasureToHeight: TFloatField
      FieldName = 'ToHeight'
    end
    object rxmemMeasureDryTemp: TFloatField
      FieldName = 'DryTemp'
    end
    object rxmemMeasureWetTemp: TFloatField
      FieldName = 'WetTemp'
    end
    object rxmemMeasureHumidity: TFloatField
      FieldName = 'Humidity'
    end
    object rxmemMeasureHumidityType: TStringField
      FieldName = 'HumidityType'
      Size = 1
    end
    object rxmemMeasurePressure: TFloatField
      FieldName = 'Pressure'
    end
    object rxmemMeasureMetsFlag: TStringField
      FieldName = 'MetsFlag'
      Size = 1
    end
    object rxmemMeasureObsCount: TIntegerField
      FieldName = 'ObsCount'
    end
  end
  object rxmemPillar: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'PillarID'
        DataType = ftInteger
      end
      item
        Name = 'PillarNo'
        DataType = ftString
        Size = 5
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
        Name = 'PillarHeight'
        DataType = ftFloat
      end
      item
        Name = 'HorizOffset'
        DataType = ftFloat
      end
      item
        Name = 'MajorAxis'
        DataType = ftFloat
      end
      item
        Name = 'MinorAxis'
        DataType = ftFloat
      end
      item
        Name = 'AzimuthMajorAxis'
        DataType = ftFloat
      end
      item
        Name = 'StdDevHeight'
        DataType = ftFloat
      end>
    Left = 438
    Top = 235
    object rxmemPillarPillarID: TIntegerField
      FieldName = 'PillarID'
    end
    object rxmemPillarPillarNo: TStringField
      FieldName = 'PillarNo'
      Size = 5
    end
    object rxmemPillarPillarLatitude: TFloatField
      FieldName = 'PillarLatitude'
    end
    object rxmemPillarPillarLongitude: TFloatField
      FieldName = 'PillarLongitude'
    end
    object rxmemPillarPillarHeight: TFloatField
      FieldName = 'PillarHeight'
    end
    object rxmemPillarHorizOffset: TFloatField
      FieldName = 'HorizOffset'
    end
    object rxmemPillarMajorAxis: TFloatField
      FieldName = 'MajorAxis'
    end
    object rxmemPillarMinorAxis: TFloatField
      FieldName = 'MinorAxis'
    end
    object rxmemPillarAzimuthMajorAxis: TFloatField
      FieldName = 'AzimuthMajorAxis'
    end
    object rxmemPillarStdDevHeight: TFloatField
      FieldName = 'StdDevHeight'
    end
  end
  object rxmemStdDev: TRxMemoryData
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
        Name = 'StdDevCombined'
        DataType = ftFloat
      end
      item
        Name = 'StdDevBaselineInterval'
        DataType = ftFloat
      end
      item
        Name = 'StdDevInstrument'
        DataType = ftFloat
      end
      item
        Name = 'StdDevObsDistance'
        DataType = ftFloat
      end
      item
        Name = 'StdDevMeteorology'
        DataType = ftFloat
      end
      item
        Name = 'StdDevCentring'
        DataType = ftFloat
      end
      item
        Name = 'StdDevHeightDifference'
        DataType = ftFloat
      end
      item
        Name = 'StdDevOffset'
        DataType = ftFloat
      end
      item
        Name = 'LineID'
        DataType = ftInteger
      end
      item
        Name = 'AtPillarID'
        DataType = ftInteger
      end
      item
        Name = 'ToPillarID'
        DataType = ftInteger
      end
      item
        Name = 'Reduced Distance'
        DataType = ftFloat
      end>
    Left = 508
    Top = 144
    object rxmemStdDevAtPillarNo: TStringField
      DisplayLabel = 'From'
      DisplayWidth = 5
      FieldName = 'AtPillarNo'
      Size = 5
    end
    object rxmemStdDevToPillarNo: TStringField
      DisplayLabel = 'To'
      DisplayWidth = 5
      FieldName = 'ToPillarNo'
      Size = 5
    end
    object rxmemStdDevStdDevCombined: TFloatField
      DisplayLabel = 'Std Dev~Combined~(mm)'
      DisplayWidth = 9
      FieldName = 'StdDevCombined'
      DisplayFormat = '0.000'
    end
    object rxmemStdDevStdDevBaselineInterval: TFloatField
      DisplayLabel = 'Std Dev~Baseline~Interval~(mm)'
      DisplayWidth = 9
      FieldName = 'StdDevBaselineInterval'
      DisplayFormat = '0.000'
    end
    object rxmemStdDevStdDevInstrument: TFloatField
      FieldName = 'StdDevInstrument'
    end
    object rxmemStdDevStdDevObsDistance: TFloatField
      DisplayLabel = 'Std Dev~Observed~Distance~(mm)'
      DisplayWidth = 9
      FieldName = 'StdDevObsDistance'
      DisplayFormat = '0.000'
    end
    object rxmemStdDevStdDevMeteorology: TFloatField
      DisplayLabel = 'Std Dev~Meteorology~(mm)'
      DisplayWidth = 10
      FieldName = 'StdDevMeteorology'
      DisplayFormat = '0.000'
    end
    object rxmemStdDevStdDevCentring: TFloatField
      DisplayLabel = 'Std Dev~Centring~(mm)'
      DisplayWidth = 8
      FieldName = 'StdDevCentring'
      DisplayFormat = '0.000'
    end
    object rxmemStdDevStdDevHeightDifference: TFloatField
      DisplayLabel = 'Std Dev~Height~Difference~(mm)'
      DisplayWidth = 10
      FieldName = 'StdDevHeightDifference'
      DisplayFormat = '0.000'
    end
    object rxmemStdDevStdDevOffset: TFloatField
      DisplayLabel = 'Std Dev~Offset~(mm)'
      DisplayWidth = 8
      FieldName = 'StdDevOffset'
      DisplayFormat = '0.000'
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'LineID'
      Visible = False
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 10
      FieldName = 'AtPillarID'
      Visible = False
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 10
      FieldName = 'ToPillarID'
      Visible = False
    end
    object rxmemStdDevReducedDistance: TFloatField
      DisplayWidth = 10
      FieldName = 'Reduced Distance'
      Visible = False
    end
  end
  object dsrxmemStdDev: TwwDataSource
    DataSet = rxmemStdDev
    Left = 510
    Top = 189
  end
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
    BeforeInsert = rxUncertaintyEDMBeforeInsert
    BeforeDelete = rxUncertaintyEDMBeforeDelete
    Left = 295
    Top = 144
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
  object dsUncertaintyEDM: TDataSource
    DataSet = rxUncertaintyEDM
    Left = 299
    Top = 189
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
    BeforeInsert = rxUncertaintyBaselineBeforeInsert
    BeforeDelete = rxUncertaintyBaselineBeforeDelete
    Left = 112
    Top = 144
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
  object dsUncertaintyBaseline: TDataSource
    DataSet = rxUncertaintyBaseline
    Left = 109
    Top = 189
  end
  object rxJobUncertainty: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Temperature'
        DataType = ftFloat
      end
      item
        Name = 'Pressure'
        DataType = ftFloat
      end
      item
        Name = 'Humidity'
        DataType = ftFloat
      end
      item
        Name = 'InstrumentHeight'
        DataType = ftFloat
      end
      item
        Name = 'ReflectorHeight'
        DataType = ftFloat
      end
      item
        Name = 'PillarHeightDiff'
        DataType = ftFloat
      end
      item
        Name = 'InstrumentCentring'
        DataType = ftFloat
      end
      item
        Name = 'ReflectorCentring'
        DataType = ftFloat
      end
      item
        Name = 'PillarOffset'
        DataType = ftFloat
      end
      item
        Name = 'RejectionCriterion'
        DataType = ftFloat
      end>
    Left = 207
    Top = 144
    object rxJobUncertaintyTemperature: TFloatField
      FieldName = 'Temperature'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyPressure: TFloatField
      FieldName = 'Pressure'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyHumidity: TFloatField
      FieldName = 'Humidity'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyInstrumentHeight: TFloatField
      FieldName = 'InstrumentHeight'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyReflectorHeight: TFloatField
      FieldName = 'ReflectorHeight'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyPillarHeightDiff: TFloatField
      FieldName = 'PillarHeightDiff'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyInstrumentCentring: TFloatField
      FieldName = 'InstrumentCentring'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyReflectorCentring: TFloatField
      FieldName = 'ReflectorCentring'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyPillarOffset: TFloatField
      FieldName = 'PillarOffset'
      DisplayFormat = '0.0'
      MaxValue = 100.000000000000000000
    end
    object rxJobUncertaintyRejectionCriterion: TFloatField
      FieldName = 'RejectionCriterion'
      MaxValue = 100.000000000000000000
    end
  end
  object dsJobUncertainty: TDataSource
    DataSet = rxJobUncertainty
    Left = 207
    Top = 189
  end
  object rxMet: TRxMemoryData
    FieldDefs = <
      item
        Name = 'TemperatureCorrection'
        DataType = ftFloat
      end
      item
        Name = 'PressureCorrection'
        DataType = ftFloat
      end>
    Left = 432
    Top = 144
    object rxMetTemperatureCorr1: TFloatField
      DisplayLabel = 'Temperature Correction 1'
      FieldName = 'TemperatureCorr1'
      MaxValue = 10.000000000000000000
      MinValue = -10.000000000000000000
    end
    object rxMetBarometerCorr1: TFloatField
      DisplayLabel = 'Barometer Correction 1'
      FieldName = 'BarometerCorr1'
      MaxValue = 20.000000000000000000
      MinValue = -20.000000000000000000
    end
    object rxMetTemperatureCorr2: TFloatField
      DisplayLabel = 'Temperature Correction 2'
      FieldName = 'TemperatureCorr2'
    end
    object rxMetBarometerCorr2: TFloatField
      FieldName = 'BarometerCorr2'
    end
  end
  object dsMet: TwwDataSource
    DataSet = rxMet
    Left = 443
    Top = 189
  end
  object rxNewLegalDistance: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DistID'
        DataType = ftInteger
      end
      item
        Name = 'AtPillarID'
        DataType = ftInteger
      end
      item
        Name = 'ToPillarID'
        DataType = ftInteger
      end
      item
        Name = 'LegalDistance'
        DataType = ftFloat
      end
      item
        Name = 'Sigma'
        DataType = ftFloat
      end>
    Left = 41
    Top = 281
    object IntegerField7: TIntegerField
      FieldName = 'DistID'
    end
    object IntegerField8: TIntegerField
      FieldName = 'AtPillarID'
    end
    object IntegerField9: TIntegerField
      FieldName = 'ToPillarID'
    end
    object FloatField2: TFloatField
      FieldName = 'LegalDistance'
    end
    object FloatField3: TFloatField
      FieldName = 'Uncertainty'
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
    Left = 185
    Top = 235
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
    Left = 374
    Top = 148
    object rxMethodMethod: TStringField
      DisplayWidth = 40
      FieldName = 'Method'
      Size = 40
    end
    object rxMethodDescription: TStringField
      DisplayWidth = 300
      FieldName = 'Description'
      Size = 350
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
    Left = 32
    Top = 145
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
  object dsMethod: TwwDataSource
    DataSet = rxMethod
    Left = 375
    Top = 189
  end
  object dsDefault: TwwDataSource
    DataSet = rxDefault
    Left = 30
    Top = 189
  end
  object rxBaselineReport: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'From'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'To'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'InitialDistance'
        DataType = ftFloat
      end
      item
        Name = 'Correction'
        DataType = ftFloat
      end
      item
        Name = 'AdjustedDistance'
        DataType = ftFloat
      end
      item
        Name = 'Uncertainty'
        DataType = ftFloat
      end>
    Left = 31
    Top = 235
    object rxBaselineReportFrom: TStringField
      FieldName = 'From'
      Size = 5
    end
    object rxBaselineReportTo: TStringField
      FieldName = 'To'
      Size = 5
    end
    object rxBaselineReportInitialDistance: TFloatField
      FieldName = 'InitialDistance'
      DisplayFormat = '0.0000'
    end
    object rxBaselineReportCorrection: TFloatField
      FieldName = 'Correction'
      DisplayFormat = '0.0000'
    end
    object rxBaselineReportAdjustedDistance: TFloatField
      FieldName = 'AdjustedDistance'
      DisplayFormat = '0.0000'
    end
    object rxBaselineReportUncertainty: TFloatField
      FieldName = 'Uncertainty'
      DisplayFormat = '0.00000'
    end
  end
  object rxFullReport: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'memoPage'
        DataType = ftMemo
      end>
    Left = 103
    Top = 235
    object rxFullReportmemoPage: TMemoField
      FieldName = 'memoPage'
      BlobType = ftMemo
    end
  end
  object rxFilteredBaseline: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'BaselineName'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'BaselineLocation'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BaselineCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineAuthority'
        DataType = ftString
        Size = 32
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
      end
      item
        Name = 'AuthorityAddress'
        DataType = ftString
        Size = 50
      end>
    BeforePost = rxFilteredBaselineBeforePost
    BeforeDelete = rxFilteredBaselineBeforeDelete
    OnNewRecord = rxFilteredBaselineNewRecord
    Left = 36
    Top = 54
    object rxFilteredBaselineBaselineName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 25
      FieldName = 'BaselineName'
      Size = 25
    end
    object rxFilteredBaselineBaselineLocation: TStringField
      DisplayLabel = 'Location'
      DisplayWidth = 25
      FieldName = 'BaselineLocation'
      Size = 50
    end
    object rxFilteredBaselineBaselineCalibrationDate: TStringField
      DisplayLabel = 'Calibration Date'
      DisplayWidth = 19
      FieldName = 'BaselineCalibrationDate'
    end
    object rxFilteredBaselineBaselineID: TIntegerField
      DisplayWidth = 10
      FieldName = 'BaselineID'
      Visible = False
    end
    object rxFilteredBaselineBaselineAuthority: TStringField
      DisplayWidth = 32
      FieldName = 'BaselineAuthority'
      Visible = False
      Size = 32
    end
    object rxFilteredBaselineBaselineCalibrationRef: TStringField
      FieldName = 'BaselineCalibrationRef'
      Visible = False
      Size = 50
    end
    object rxFilteredBaselineEllipsID: TIntegerField
      FieldName = 'EllipsID'
      Visible = False
    end
    object rxFilteredBaselineBaselineConfLevel: TFloatField
      FieldName = 'BaselineConfLevel'
      Visible = False
    end
    object rxFilteredBaselineBaseLegalHeight: TFloatField
      FieldName = 'BaseLegalHeight'
      Visible = False
    end
    object rxFilteredBaselineBaseStdICConstant: TFloatField
      FieldName = 'BaseStdICConstant'
      Visible = False
    end
    object rxFilteredBaselineBaseStdICPPM: TFloatField
      FieldName = 'BaseStdICPPM'
      Visible = False
    end
    object rxFilteredBaselineBaseRelativeHumidity: TFloatField
      FieldName = 'BaseRelativeHumidity'
      Visible = False
    end
    object rxFilteredBaselineBaselineArchiveFlag: TStringField
      FieldName = 'BaselineArchiveFlag'
      Visible = False
      Size = 1
    end
    object rxFilteredBaselineAuthorityAddress: TStringField
      FieldName = 'AuthorityAddress'
      Visible = False
      Size = 50
    end
  end
  object rxBaseline: TRxMemoryData
    FieldDefs = <>
    Left = 36
    Top = 8
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
  object dsFilteredBaseline: TwwDataSource
    DataSet = rxFilteredBaseline
    Left = 36
    Top = 99
  end
  object rxEllipsoid: TRxMemoryData
    FieldDefs = <>
    Left = 526
    Top = 8
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
  object rxFilteredDistance: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'FromPillar'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ToPillar'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DistLegalDistance'
        DataType = ftFloat
      end
      item
        Name = 'DistSigma'
        DataType = ftFloat
      end
      item
        Name = 'DistID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'PillarFromID'
        DataType = ftInteger
      end
      item
        Name = 'PillarToID'
        DataType = ftInteger
      end>
    BeforePost = rxFilteredDistanceBeforePost
    BeforeDelete = rxFilteredDistanceBeforeDelete
    AfterDelete = rxFilteredDistanceAfterDelete
    Left = 194
    Top = 54
    object rxFilteredDistanceFromPillar: TStringField
      DisplayLabel = 'From~Pillar'
      DisplayWidth = 8
      FieldName = 'FromPillar'
      Size = 5
    end
    object rxFilteredDistanceToPillar: TStringField
      DisplayLabel = 'To~Pillar'
      DisplayWidth = 8
      FieldName = 'ToPillar'
      Size = 5
    end
    object rxFilteredDistanceDistLegalDistance: TFloatField
      DisplayLabel = 'Certified~Distance~(m)'
      DisplayWidth = 15
      FieldName = 'DistLegalDistance'
      DisplayFormat = '0.0000'
    end
    object rxFilteredDistanceDistSigma: TFloatField
      DisplayLabel = 'Uncertainty~ at 95%'
      DisplayWidth = 11
      FieldName = 'DistSigma'
      OnGetText = rxFilteredDistanceDistSigmaGetText
      DisplayFormat = '0.00000'
    end
    object rxFilteredDistanceDistID: TIntegerField
      DisplayWidth = 10
      FieldName = 'DistID'
      Visible = False
    end
    object rxFilteredDistanceBaselineID: TIntegerField
      DisplayWidth = 10
      FieldName = 'BaselineID'
      Visible = False
    end
    object rxFilteredDistancePillarFromID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PillarFromID'
      Visible = False
    end
    object rxFilteredDistancePillarToID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PillarToID'
      Visible = False
    end
  end
  object rxFilteredPillar: TRxMemoryData
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
        Name = 'PillarLatitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarLongitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarHtStdDev'
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
      end>
    BeforePost = rxFilteredPillarBeforePost
    AfterPost = rxFilteredPillarAfterPost
    BeforeDelete = rxFilteredPillarBeforeDelete
    AfterDelete = rxFilteredPillarAfterDelete
    OnNewRecord = rxFilteredPillarNewRecord
    Left = 116
    Top = 54
    object rxFilteredPillarPillarNo: TStringField
      DisplayLabel = 'Pillar~Number'
      DisplayWidth = 5
      FieldName = 'PillarNo'
      Size = 5
    end
    object rxFilteredPillarPillarHeight: TFloatField
      DisplayLabel = 'Height'
      DisplayWidth = 10
      FieldName = 'PillarHeight'
    end
    object rxFilteredPillarPillarOffset: TFloatField
      DisplayLabel = 'Offset'
      DisplayWidth = 10
      FieldName = 'PillarOffset'
    end
    object rxFilteredPillarPillarLatitude: TFloatField
      DisplayLabel = 'Latitude~ (DMS)'
      DisplayWidth = 12
      FieldName = 'PillarLatitude'
      Visible = False
      OnGetText = rxFilteredPillarPillarLatitudeGetText
      OnSetText = rxFilteredPillarPillarLatitudeSetText
    end
    object rxFilteredPillarPillarLongitude: TFloatField
      DisplayLabel = 'Longitude~ (DMS)'
      DisplayWidth = 12
      FieldName = 'PillarLongitude'
      Visible = False
      OnGetText = rxFilteredPillarPillarLongitudeGetText
      OnSetText = rxFilteredPillarPillarLongitudeSetText
    end
    object rxFilteredPillarPillarHtStdDev: TFloatField
      DisplayLabel = 'Height~Uncertainty'
      DisplayWidth = 10
      FieldName = 'PillarHtStdDev'
      Visible = False
    end
    object rxFilteredPillarPillarEllipsARadius: TFloatField
      DisplayLabel = 'Error Ellipse~Semi-Major Axis'
      DisplayWidth = 10
      FieldName = 'PillarEllipsARadius'
      Visible = False
    end
    object rxFilteredPillarPillarEllipsBRadius: TFloatField
      DisplayLabel = 'Semi_Minor Axis'
      DisplayWidth = 10
      FieldName = 'PillarEllipsBRadius'
      Visible = False
    end
    object rxFilteredPillarPillarEllipsOrient: TFloatField
      DisplayLabel = 'Error Ellipse~Orientation~(DMS)'
      DisplayWidth = 10
      FieldName = 'PillarEllipsOrient'
      Visible = False
      OnGetText = rxFilteredPillarPillarEllipsOrientGetText
      OnSetText = rxFilteredPillarPillarEllipsOrientSetText
    end
    object rxFilteredPillarPillarID: TIntegerField
      FieldName = 'PillarID'
      Visible = False
    end
    object rxFilteredPillarBaselineID: TIntegerField
      FieldName = 'BaselineID'
      Visible = False
    end
    object rxFilteredPillarPillarSeqNo: TIntegerField
      FieldName = 'PillarSeqNo'
      Visible = False
    end
  end
  object rxDistance: TRxMemoryData
    FieldDefs = <>
    Left = 194
    Top = 8
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
    Left = 115
    Top = 8
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
  object dsFilteredDistance: TDataSource
    DataSet = rxFilteredDistance
    Left = 192
    Top = 99
  end
  object dsFilteredPillar: TDataSource
    DataSet = rxFilteredPillar
    Left = 117
    Top = 99
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
    Left = 462
    Top = 8
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
      FieldName = 'NumberThermometers'
    end
    object rxJobNumberBarometers: TIntegerField
      FieldName = 'NumberBarometers'
    end
  end
  object dsEllipsoid: TwwDataSource
    DataSet = rxEllipsoid
    Left = 526
    Top = 54
  end
  object rxInstrument: TRxMemoryData
    FieldDefs = <>
    Left = 290
    Top = 8
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
      end
      item
        Name = 'ManuRefractiveIndex'
        DataType = ftFloat
      end>
    OnNewRecord = rxInstrumentModelNewRecord
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
    object rxInstrumentModelManuRefractiveIndex: TFloatField
      FieldName = 'ManuRefractiveIndex'
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
    Left = 286
    Top = 99
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
      end
      item
        Name = 'MeasDryTemp2'
        DataType = ftFloat
      end
      item
        Name = 'MeasPressure2'
        DataType = ftFloat
      end
      item
        Name = 'MeasHumidity2'
        DataType = ftFloat
      end>
    Left = 462
    Top = 54
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
    object rxJMeasureMeasDryTemp2: TFloatField
      DisplayLabel = 'Dry Temp (Prism)'
      FieldName = 'MeasDryTemp2'
    end
    object rxJMeasureMeasPressure2: TFloatField
      DisplayLabel = 'Pressure (Prism)'
      FieldName = 'MeasPressure2'
    end
    object rxJMeasureMeasHumidity2: TFloatField
      DisplayLabel = 'Humidity (Prism)'
      FieldName = 'MeasHumidity2'
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
        Name = 'MeasPressure'
        DataType = ftFloat
      end>
    Left = 462
    Top = 100
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
    object rxEDMObsMeasDryTemp: TFloatField
      FieldName = 'MeasDryTemp'
    end
    object rxEDMObsMeasHumidity: TFloatField
      FieldName = 'MeasHumidity'
    end
    object rxEDMObsMeasPressure: TFloatField
      FieldName = 'MeasPressure'
    end
  end
  object dsEDMObs: TwwDataSource
    DataSet = rxEDMObs
    Left = 518
    Top = 100
  end
  object rxStandard: TRxMemoryData
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
      end
      item
        Name = 'LUMUnits'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AlternateConstant'
        DataType = ftFloat
      end
      item
        Name = 'AlternateScale'
        DataType = ftFloat
      end>
    Left = 510
    Top = 236
    object rxStandardType: TStringField
      FieldName = 'Type'
      Required = True
      Size = 1
    end
    object rxStandardStandardConstant: TFloatField
      FieldName = 'StandardConstant'
      Required = True
      DisplayFormat = '0.00'
      MaxValue = 100.000000000000000000
      MinValue = 0.100000000000000000
    end
    object rxStandardStandardScale: TFloatField
      FieldName = 'StandardScale'
      Required = True
      DisplayFormat = '0.00'
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
    object rxStandardLUMUnits: TStringField
      FieldName = 'LUMUnits'
      Size = 1
    end
    object rxStandardAlternateConstant: TFloatField
      FieldName = 'AlternateConstant'
    end
    object rxStandardAlternateScale: TFloatField
      FieldName = 'AlternateScale'
    end
  end
  object dsStandard: TwwDataSource
    DataSet = rxStandard
    Left = 511
    Top = 280
  end
  object rxSecurity: TRxMemoryData
    FieldDefs = <>
    Left = 597
    Top = 6
    object rxSecuritySecurityID: TIntegerField
      FieldName = 'SecurityID'
    end
    object rxSecurityPassword: TStringField
      FieldName = 'Password'
      Size = 30
    end
    object rxSecurityDistributionVersion: TStringField
      DisplayWidth = 20
      FieldName = 'DistributionVersion'
    end
    object rxSecurityDistributionDate: TDateField
      FieldName = 'DistributionDate'
    end
    object rxSecurityDistributionAuthority: TStringField
      FieldName = 'DistributionAuthority'
      Size = 25
    end
    object rxSecurityisRegistered: TBooleanField
      FieldName = 'isRegistered'
    end
    object rxSecurityisFirstTimeUser: TBooleanField
      FieldName = 'isFirstTimeUser'
    end
  end
  object rxDistribution: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'DistributionVersion'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DistributionAuthority'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'DistributionDate'
        DataType = ftDate
      end>
    Left = 597
    Top = 54
    object StringField5: TStringField
      DisplayLabel = 'Distribution~Version'
      DisplayWidth = 20
      FieldName = 'DistributionVersion'
    end
    object StringField6: TStringField
      DisplayLabel = 'Distribution~Authority'
      DisplayWidth = 25
      FieldName = 'DistributionAuthority'
      Size = 32
    end
    object DateField1: TDateField
      DisplayLabel = 'Distribution~Date'
      DisplayWidth = 10
      FieldName = 'DistributionDate'
    end
  end
  object dsDistribution: TwwDataSource
    DataSet = rxDistribution
    Left = 597
    Top = 96
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
    Left = 37
    Top = 332
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
  object rxBaselineX: TRxMemoryData
    FieldDefs = <>
    Left = 126
    Top = 281
    object IntegerField17: TIntegerField
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
    object IntegerField18: TIntegerField
      FieldName = 'EllipsID'
    end
    object FloatField15: TFloatField
      FieldName = 'BaselineConfLevel'
    end
    object FloatField16: TFloatField
      FieldName = 'BaseLegalHeight'
    end
    object FloatField17: TFloatField
      FieldName = 'BaseStdICConstant'
    end
    object FloatField18: TFloatField
      FieldName = 'BaseStdICPPM'
    end
    object FloatField19: TFloatField
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
  object rxPillarX: TRxMemoryData
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
    Left = 194
    Top = 280
    object IntegerField19: TIntegerField
      FieldName = 'PillarID'
    end
    object IntegerField20: TIntegerField
      FieldName = 'BaselineID'
    end
    object IntegerField21: TIntegerField
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
  object rxDistanceX: TRxMemoryData
    FieldDefs = <>
    Left = 268
    Top = 281
    object IntegerField22: TIntegerField
      FieldName = 'DistID'
    end
    object IntegerField23: TIntegerField
      FieldName = 'BaselineID'
    end
    object IntegerField24: TIntegerField
      FieldName = 'PillarFromID'
    end
    object IntegerField25: TIntegerField
      FieldName = 'PillarToID'
    end
    object FloatField28: TFloatField
      FieldName = 'DistLegalDistance'
    end
    object FloatField29: TFloatField
      FieldName = 'DistSigma'
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
    Left = 355
    Top = 280
    object IntegerField26: TIntegerField
      FieldName = 'BaselineID'
    end
    object FloatField30: TFloatField
      FieldName = 'UncertaintyConstant'
      DisplayFormat = '0.00'
    end
    object FloatField31: TFloatField
      FieldName = 'UncertaintyScale'
      DisplayFormat = '0.00'
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
    Left = 444
    Top = 280
    object rxMethodXMethod: TStringField
      DisplayWidth = 40
      FieldName = 'Method'
      Size = 40
    end
    object rxMethodXDescription: TStringField
      DisplayWidth = 300
      FieldName = 'Description'
      Size = 350
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
    BeforeInsert = rxUncertaintyEDMBeforeInsert
    BeforeDelete = rxUncertaintyEDMBeforeDelete
    Left = 594
    Top = 146
    object rxBaselineDefaultBaselineID: TIntegerField
      DisplayWidth = 10
      FieldName = 'BaselineID'
    end
    object StringField15: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField32: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField16: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
  object rxBaselineDefaultFilter: TRxMemoryData
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
    BeforeInsert = rxUncertaintyEDMBeforeInsert
    BeforeDelete = rxUncertaintyEDMBeforeDelete
    Left = 594
    Top = 236
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'BaselineID'
      Visible = False
    end
    object StringField17: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField33: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField18: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
  object dsBaselineDefault: TDataSource
    DataSet = rxBaselineDefault
    Left = 595
    Top = 281
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
    Left = 597
    Top = 189
    object rxBaselineDefaultXBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object StringField19: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField34: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField20: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
  object rxInstrumentX: TRxMemoryData
    FieldDefs = <>
    Left = 384
    Top = 8
    object rxInstrumentXInstID: TIntegerField
      FieldName = 'InstID'
    end
    object rxInstrumentXInstType: TStringField
      FieldName = 'InstType'
      Size = 1
    end
    object rxInstrumentXModelID: TIntegerField
      FieldName = 'ModelID'
    end
    object rxInstrumentXInstSerialNo: TStringField
      DisplayLabel = 'Serial Number'
      FieldName = 'InstSerialNo'
    end
    object rxInstrumentXInstStdDevConst: TFloatField
      DisplayLabel = 'Std Dev~Constant'
      FieldName = 'InstStdDevConst'
    end
    object rxInstrumentXInstStdDevPPM: TFloatField
      DisplayLabel = 'Std Dev~PPM'
      FieldName = 'InstStdDevPPM'
    end
    object rxInstrumentXAntennaModelID: TIntegerField
      FieldName = 'AntennaModelID'
    end
    object rxInstrumentXInstAntennaSerialNo: TStringField
      FieldName = 'InstAntennaSerialNo'
      Size = 30
    end
    object rxInstrumentXInstConstant: TFloatField
      DisplayLabel = 'Constant~(m)'
      FieldName = 'InstConstant'
    end
    object rxInstrumentXInstScaleFact: TFloatField
      DisplayLabel = 'Scale~Factor'
      FieldName = 'InstScaleFact'
    end
    object rxInstrumentXInstComments: TStringField
      DisplayLabel = 'Comments'
      FieldName = 'InstComments'
      Size = 30
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
      end
      item
        Name = 'ManuRefractiveIndex'
        DataType = ftFloat
      end>
    Left = 384
    Top = 54
    object rxInstrumentModelXModelID: TIntegerField
      FieldName = 'ModelID'
    end
    object rxInstrumentModelXMakeID: TIntegerField
      FieldName = 'MakeID'
    end
    object rxInstrumentModelXModelName: TStringField
      DisplayLabel = 'Name'
      FieldName = 'ModelName'
    end
    object rxInstrumentModelXModelInstType: TStringField
      DisplayLabel = 'Type'
      FieldName = 'ModelInstType'
      Size = 1
    end
    object rxInstrumentModelXModelManufStdDevConst: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~Constant'
      FieldName = 'ModelManufStdDevConst'
    end
    object rxInstrumentModelXModelManufStdDevPPM: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~PPM'
      FieldName = 'ModelManufStdDevPPM'
    end
    object rxInstrumentModelXModelUnitLength: TFloatField
      DisplayLabel = 'Unit~Length'
      FieldName = 'ModelUnitLength'
    end
    object rxInstrumentModelXModelModFreq: TFloatField
      DisplayLabel = 'Frequency'
      FieldName = 'ModelModFreq'
    end
    object rxInstrumentModelXModelCarrierWaveLength: TFloatField
      DisplayLabel = 'Carrier~Wave~Length'
      FieldName = 'ModelCarrierWaveLength'
    end
    object rxInstrumentModelXModelComments: TStringField
      DisplayLabel = 'Comments'
      FieldName = 'ModelComments'
      Size = 30
    end
    object rxInstrumentModelXisPulseMeter: TBooleanField
      FieldName = 'isPulseMeter'
    end
    object rxInstrumentModelXManuRefractiveIndex: TFloatField
      FieldName = 'ManuRefractiveIndex'
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
    Left = 380
    Top = 99
    object rxInstrumentMakeXMakeID: TIntegerField
      FieldName = 'MakeID'
      Visible = False
    end
    object rxInstrumentMakeXMakeName: TStringField
      DisplayLabel = 'Name'
      FieldName = 'MakeName'
    end
    object rxInstrumentMakeXMakeCountry: TStringField
      DisplayLabel = 'Country'
      FieldName = 'MakeCountry'
    end
  end
  object rxBaselineDefaultFilterEDM: TRxMemoryData
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
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end>
    BeforeInsert = rxUncertaintyEDMBeforeInsert
    BeforeDelete = rxUncertaintyEDMBeforeDelete
    Left = 346
    Top = 332
    object StringField21: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField35: TFloatField
      DisplayLabel = 'Default~Uncertainty~(95%)'
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField22: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'BaselineID'
      Visible = False
    end
  end
  object rxBaselineDefaultFilterBase: TRxMemoryData
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
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end>
    BeforeInsert = rxUncertaintyEDMBeforeInsert
    BeforeDelete = rxUncertaintyEDMBeforeDelete
    Left = 482
    Top = 332
    object StringField23: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField36: TFloatField
      DisplayLabel = 'Default~Uncertainty~(95%)'
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField24: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
    object IntegerField27: TIntegerField
      DisplayWidth = 10
      FieldName = 'BaselineID'
      Visible = False
    end
  end
  object dsBaselineDefaultFilterEDM: TDataSource
    DataSet = rxBaselineDefaultFilterEDM
    Left = 347
    Top = 377
  end
  object dsBaselineDefaultFilterBase: TDataSource
    DataSet = rxBaselineDefaultFilterBase
    Left = 483
    Top = 377
  end
end
