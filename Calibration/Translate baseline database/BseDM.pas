unit BseDM;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, Wwdatsrc, SysUtils, FileCtrl, stdctrls;

const
// Security
  NORMAL_CHARS =  'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 abcdefghijklmnopqrstuvwxyz.|(),;"!@#$%^&*()_-+={}[]\<>?/:';
  ENCRYPT_CHARS = '962XRLD7YJS1AHBQ5NCO3M08EKGIWUPTVZ4F qwertyuiopasdfghjklzxcvbnm|.(),;"!@#$%^&*()_-=+{}[]\<>?/:';

type
  TdmBase = class(TDataModule)
    rxUncertaintyEDM: TRxMemoryData;
    rxUncertaintyEDMDescription: TStringField;
    rxUncertaintyEDMDefault: TFloatField;
    rxUncertaintyEDMUnit: TStringField;
    rxUncertaintyBaseline: TRxMemoryData;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    rxBaselineAccuracy: TRxMemoryData;
    rxBaselineAccuracyBaselineID: TIntegerField;
    rxBaselineAccuracyConstant: TFloatField;
    rxBaselineAccuracyScale: TFloatField;
    rxMethod: TRxMemoryData;
    rxDefault: TRxMemoryData;
    rxDefaultDescription: TStringField;
    rxDefaultDefault: TFloatField;
    rxMethodMethod: TStringField;
    rxMethodDescription: TStringField;
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
    rxEllipsoid: TRxMemoryData;
    rxEllipsoidEllipsID: TIntegerField;
    rxEllipsoidEllipsName: TStringField;
    rxEllipsoidEllipsARadius: TFloatField;
    rxEllipsoidEllipsInvFlat: TFloatField;
    rxDistance: TRxMemoryData;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    rxPillar: TRxMemoryData;
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
    rxInstrument: TRxMemoryData;
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
    rxInstrumentMakeMakeName: TStringField;
    rxInstrumentMakeMakeCountry: TStringField;
    rxInstrumentMakeMakeID: TIntegerField;
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
    rxEDMObs: TRxMemoryData;
    rxEDMObsEDMObsID: TIntegerField;
    rxEDMObsMeasID: TIntegerField;
    rxEDMObsEDMObsDistance: TFloatField;
    rxJMeasureWetTemp: TFloatField;
    rxJMeasureHumidity: TFloatField;
    rxStandard: TRxMemoryData;
    rxStandardAuthority: TStringField;
    rxStandardDescription: TStringField;
    rxStandardStandardConstant: TFloatField;
    rxStandardStandardScale: TFloatField;
    rxStandardType: TStringField;
    rxInstrumentModelisPulseMeter: TBooleanField;
    rxDistribution: TRxMemoryData;
    StringField5: TStringField;
    DateField1: TDateField;
    StringField6: TStringField;
    rxWindow: TRxMemoryData;
    StringField4: TStringField;
    FloatField14: TFloatField;
    rxJobJobInst1OwnerAddress: TStringField;
    rxBaselineAuthorityAddress: TStringField;
    rxWebBaseline: TRxMemoryData;
    IntegerField1: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    rxWebDistance: TRxMemoryData;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    rxWebPillar: TRxMemoryData;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField14: TStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    rxWebJob: TRxMemoryData;
    IntegerField17: TIntegerField;
    StringField15: TStringField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    IntegerField20: TIntegerField;
    StringField24: TStringField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    rxWebJMeasure: TRxMemoryData;
    IntegerField21: TIntegerField;
    StringField28: TStringField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    StringField29: TStringField;
    FloatField38: TFloatField;
    StringField30: TStringField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    rxWebEDMObs: TRxMemoryData;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    FloatField41: TFloatField;
    rxMethodX: TRxMemoryData;
    StringField31: TStringField;
    StringField32: TStringField;
    rxBaselineDefault: TRxMemoryData;
    rxBaselineDefaultBaselineID: TIntegerField;
    StringField33: TStringField;
    FloatField42: TFloatField;
    StringField34: TStringField;
    rxBaselineDefaultX: TRxMemoryData;
    IntegerField27: TIntegerField;
    StringField35: TStringField;
    FloatField43: TFloatField;
    StringField36: TStringField;
    rxBaselineAccuracyX: TRxMemoryData;
    IntegerField28: TIntegerField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    rxInstrumentMakeX: TRxMemoryData;
    IntegerField29: TIntegerField;
    StringField37: TStringField;
    StringField38: TStringField;
    rxInstrumentModelX: TRxMemoryData;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    StringField39: TStringField;
    StringField40: TStringField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    StringField41: TStringField;
    BooleanField1: TBooleanField;
    rxInstrumentX: TRxMemoryData;
    IntegerField32: TIntegerField;
    StringField42: TStringField;
    IntegerField33: TIntegerField;
    StringField43: TStringField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    IntegerField34: TIntegerField;
    StringField44: TStringField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    StringField45: TStringField;
    rxBaselineX: TRxMemoryData;
    IntegerField35: TIntegerField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    IntegerField36: TIntegerField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    StringField51: TStringField;
    StringField52: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetReadAndWrite(Table: TDataSet);
    function Decrypt(password:string):string;
  public
    { Public declarations }
    rxAlias: string;
    function Translate(Table: TRXMemoryData; var TranslateDetails: string) : Boolean;
  end;

var
  dmBase: TdmBase;
  doEvent: Boolean;
  RxAlias: String;
  dRejectionCriterion: Double;

implementation

{$R *.DFM}

procedure TdmBase.DataModuleCreate(Sender: TObject);
begin
  rxUncertaintyEDM.Active := True;
  rxUncertaintyBaseline.Active := True;
  rxBaselineAccuracy.Active := True;
  rxBaselineAccuracyX.Active := True;
  rxBaselineDefault.Active := True;
  rxBaselineDefaultX.Active := True;
  rxMethod.Active := True;
  rxMethodX.Active := True;
  rxDefault.Active := True;
  rxBaseline.Active := True;
  rxBaselineX.Active := True;
  rxEllipsoid.Active := True;
  rxDistance.Active := True;
  rxPillar.Active := True;
  rxJob.Active := True;
  rxInstrument.Active := True;
  rxInstrumentModel.Active := True;
  rxInstrumentMake.Active := True;
  rxInstrumentModelX.Active := True;
  rxInstrumentMakeX.Active := True;
  rxInstrumentX.Active := True;
  rxJMeasure.Active := True;
  rxEDMObs.Active := True;
  rxStandard.Active := True;
  rxDistribution.Active := True;
  rxWindow.Active := True;

  rxWebBaseline.Active := True;
  rxWebDistance.Active := True;
  rxWebPillar.Active := True;
  rxWebJob.Active := True;
  rxWebJMeasure.Active := True;
  rxWebEDMObs.Active := True;

end;

function TdmBase.Translate(Table: TRXMemoryData; var TranslateDetails: string) : Boolean;
var
 i: Integer;
 strLine: String;
 Lines: TStringList;
 TextFileName: String;
 TextFileName2: String;
 Attributes: Word;
 doEncryption: Boolean;
begin
  Result := False;
  try
    doEncryption := False;
    TextFileName := rxAlias +'\'+Table.Name+'.db';
    TextFileName2 := rxAlias + '\'+Table.Name+'.txt';
    Lines:= TStringList.Create;
    try
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
            Lines.Delete(0);
          end;

          for i := 0 to Lines.Count-1 do
          begin
            strLine := Lines[i];
            if doEncryption then
              strLine := Decrypt(strLine);

            Lines[i] := strLine;
          end; {if}

          Lines.SaveToFile(TextFileName2);

          Result := True;
          TranslateDetails := TextFileName + ' translated to: ' + TextFileName2;
        end; {if}
      end;
    finally
      Lines.Free;
    end;
  except
    on E:Exception do
    begin
      TranslateDetails := 'Exception raised translating: '+Table.Name+#13+E.Message;
      MessageDlg(TranslateDetails,mtError,[mbOK],0);
    end;
  end;
end;

procedure TdmBase.SetReadAndWrite(Table: TDataSet);
var
  j: Integer;
begin
  for j:= 0 to Table.FieldCount - 1 do
  begin
    Table.Fields[j].ReadOnly := False;
  end;
end;

function TdmBase.Decrypt(password:string):string;
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
