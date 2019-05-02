(*******************************************************************************
@FormUnit Bse2Inst

@Description
 In this application you can create/delete and edit EDM instruments, makes and models.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit Bse2Inst;

interface

uses
  BseMisc,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, wwdblook, wwSpeedButton, wwDBNavigator, wwclearpanel,
  Grids, Wwdbigrd, Wwdbgrid, BtnEdit, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  Db, Wwdatsrc, DBCtrls, DBGrids, RxMemDS, Variants, Wwkeycb;

type
  TfrmInstrument = class(TForm)
    pcInstrument: TPageControl;
    tsMake: TTabSheet;
    dbgridMake: TwwDBGrid;
    tsModel: TTabSheet;
    dbgridModel: TwwDBGrid;
    dbnavModel: TwwDBNavigator;
    dbnavModelFirst: TwwNavButton;
    dbnavModelPriorPage: TwwNavButton;
    dbnavModelPrior: TwwNavButton;
    dbnavModelNext: TwwNavButton;
    dbnavModelNextPage: TwwNavButton;
    dbnavModelLast: TwwNavButton;
    dbnavModelInsert: TwwNavButton;
    dbnavModelDelete: TwwNavButton;
    dbnavModelEdit: TwwNavButton;
    dbnavModelPost: TwwNavButton;
    dbnavModelCancel: TwwNavButton;
    dbnavModelRefresh: TwwNavButton;
    tsInstrument: TTabSheet;
    dbgridInstrument: TwwDBGrid;
    dbnavInstrument: TwwDBNavigator;
    dbnavInstrumentFirst: TwwNavButton;
    dbnavInstrumentPriorPage: TwwNavButton;
    dbnavInstrumentPrior: TwwNavButton;
    dbnavInstrumentNext: TwwNavButton;
    dbnavInstrumentNextPage: TwwNavButton;
    dbnavInstrumentLast: TwwNavButton;
    dbnavInstrumentInsert: TwwNavButton;
    dbnavInstrumentDelete: TwwNavButton;
    dbnavInstrumentEdit: TwwNavButton;
    dbnavInstrumentPost: TwwNavButton;
    dbnavInstrumentCancel: TwwNavButton;
    dbnavInstrumentRefresh: TwwNavButton;
    Label2: TLabel;
    dbnavMake: TwwDBNavigator;
    dbnavMakeFirst: TwwNavButton;
    dbnavMakePriorPage: TwwNavButton;
    dbnavMakePrior: TwwNavButton;
    dbnavMakeNext: TwwNavButton;
    dbnavMakeNextPage: TwwNavButton;
    dbnavMakeLast: TwwNavButton;
    dbnavMakeInsert: TwwNavButton;
    dbnavMakeDelete: TwwNavButton;
    dbnavMakeEdit: TwwNavButton;
    dbnavMakePost: TwwNavButton;
    dbnavMakeCancel: TwwNavButton;
    dbnavMakeRefresh: TwwNavButton;
    Label3: TLabel;
    Label6: TLabel;
    btnClose2: TBitBtn;
    btnClose1: TBitBtn;
    btnNext1: TBitBtn;
    btnNext2: TBitBtn;
    btnBack2: TBitBtn;
    btnBack3: TBitBtn;
    btnHelp1: TBitBtn;
    wwDBEdit1: TwwDBEdit;
    cbType: TComboBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit3: TwwDBEdit;
    edtType: TEdit;
    Label10: TLabel;
    btnHelp2: TBitBtn;
    btnClose3: TBitBtn;
    btnHelp3: TBitBtn;
    dsInstrument: TwwDataSource;
    dsInstrumentModel: TwwDataSource;
    Label1: TLabel;
    dsInstrumentMake: TwwDataSource;
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
    rxInstrumentModelisPulseMeter: TBooleanField;
    rxInstrumentModelManuRefractiveIndex: TFloatField;
    searchInstrumentMake: TwwIncrementalSearch;
    procedure btnClose1Click(Sender: TObject);
    procedure btnNext1Click(Sender: TObject);
    procedure btnNext2Click(Sender: TObject);
    procedure btnBack3Click(Sender: TObject);
    procedure btnBack2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgridModelColExit(Sender: TObject);
    procedure dbgridModelExit(Sender: TObject);
    procedure dbgridInstrumentColExit(Sender: TObject);
    procedure dbgridMakeColExit(Sender: TObject);
    procedure dbgridMakeExit(Sender: TObject);
    procedure dbgridInstrumentExit(Sender: TObject);
    procedure btnHelp1Click(Sender: TObject);
    procedure btnHelp2Click(Sender: TObject);
    procedure btnHelp3Click(Sender: TObject);
    procedure rxInstrumentNewRecord(DataSet: TDataSet);
    procedure rxInstrumentBeforePost(DataSet: TDataSet);
    procedure rxInstrumentBeforeEdit(DataSet: TDataSet);
    procedure rxInstrumentBeforeDelete(DataSet: TDataSet);
    procedure rxInstrumentModelNewRecord(DataSet: TDataSet);
    procedure rxInstrumentModelBeforePost(DataSet: TDataSet);
    procedure rxInstrumentModelBeforeEdit(DataSet: TDataSet);
    procedure rxInstrumentModelBeforeDelete(DataSet: TDataSet);
    procedure rxInstrumentModelAfterPost(DataSet: TDataSet);
    procedure rxInstrumentModelAfterDelete(DataSet: TDataSet);
    procedure rxInstrumentMakeNewRecord(DataSet: TDataSet);
    procedure rxInstrumentMakeBeforePost(DataSet: TDataSet);
    procedure rxInstrumentMakeBeforeEdit(DataSet: TDataSet);
    procedure rxInstrumentMakeBeforeDelete(DataSet: TDataSet);
    procedure rxInstrumentMakeAfterPost(DataSet: TDataSet);
    procedure rxInstrumentMakeAfterDelete(DataSet: TDataSet);
    procedure dbgridMakeRowChanged(Sender: TObject);
    procedure searchInstrumentMakeEnter(Sender: TObject);
    procedure searchInstrumentMakeExit(Sender: TObject);
  private
    { Private declarations }
    function HasValidInstrumentMakeFields : Boolean;
    function HasValidInstrumentModelFields : Boolean;
    function HasValidInstrumentFields : Boolean;
    procedure ShowErrors(ErrorList : TStringList);
    procedure SetTypeChange;
    function IsMakeNameDuplicated : Boolean;
    function IsInstrumentModelDuplicated : Boolean;
    function IsInstrumentDuplicated : Boolean;
    function IsMakeUsedInJob(sMakeID : Integer) : Boolean;
    function IsModelUsedInJob(sModelID : Integer) : Boolean;
    function IsInstrumentUsedInJob(sInstrumentID : Integer) : Boolean;
    procedure UpdateInstrument;
    procedure UpdateModel;
    procedure UpdateMake;
    procedure DeleteModel(sModelId: Integer);
    procedure FilterInstrument( strInstType: String; sModelId: Integer);
    procedure FilterModel(strModelType: String; sMakeId: Integer);
  public
    { Public declarations }
    sMakeId : Integer;
    sModelId : Integer;
    ErrorList : TStringList;
    isNewRecord : Boolean;
    doEvents, doEvents2 : Boolean;
    strPreviousModelName : String;
    strPreviousMakeName  : String;
    strPreviousSerialNumber : String;
    sNextInstrumentId: Integer;
  end;

var
  frmInstrument: TfrmInstrument;

implementation

{$R *.DFM}
uses BSEdmMain, BseDM;

(*******************************************************************************
@procedure btnClose1Click(Sender: TObject);

@description
  Closes the Instrument application and opens the Main page.
*******************************************************************************)
procedure TfrmInstrument.btnClose1Click(Sender: TObject);
begin
  Close;
end;


(*******************************************************************************
@procedure btnNext1Click(Sender: TObject);

@description
  Opens the next page of the wizard where you can select,
  delete, amend or create an Instrument model.
*******************************************************************************)
procedure TfrmInstrument.btnNext1Click(Sender: TObject);
begin
  pcInstrument.ActivePage := tsModel;

  SetTypeChange;
  if rxInstrumentModel.isEmpty then
  begin
    btnNext2.Enabled := False;
  end
  else
  begin
    btnNext2.Enabled := True;
  end;
end;

(*******************************************************************************
@procedure btnNext2Click(Sender: TObject);

@description
  Opens the next page of the wizard where you can view,
  delete, amend or create an Instrument.
*******************************************************************************)
procedure TfrmInstrument.btnNext2Click(Sender: TObject);
begin
  sModelId := rxInstrumentModel.FieldByName('ModelID').AsInteger;
  if cbType.Text = 'EDM' then
  begin
    with rxInstrument do
    begin
      FilterInstrument('E',sModelID);
      FieldByName('InstConstant').Visible := False;
      FieldByName('InstStdDevConst').Visible := True;
      FieldByName('InstStdDevPPM').Visible := True;
    end;
  end;
  if cbType.Text = 'Prism' then
  begin
    with rxInstrument do
    begin
      FilterInstrument('P',sModelID);
      FieldByName('InstConstant').Visible := True;
      FieldByName('InstStdDevConst').Visible := False;
      FieldByName('InstStdDevPPM').Visible := False;
    end;
  end;
  pcInstrument.ActivePage := tsInstrument;
end;

(*******************************************************************************
@procedure btnBack3Click(Sender: TObject);

@description
  Returns to the previous page of the wizard where you can select,
  delete, amend or create an Instrument model.
*******************************************************************************)
procedure TfrmInstrument.btnBack3Click(Sender: TObject);
begin
  pcInstrument.ActivePage := tsModel;
  dbgridModel.SetFocus;
  doEvents := False;
  dbgridModel.SetActiveField('ModelName');
  doEvents := True;
end;

(*******************************************************************************
@procedure btnBack2Click(Sender: TObject);

@description
  Returns to the previous page of the wizard where you can select,
  delete, amend or create an Instrument make.
*******************************************************************************)
procedure TfrmInstrument.btnBack2Click(Sender: TObject);
begin
  pcInstrument.ActivePage := tsMake;
  dbgridMake.SetFocus;
  doEvents := False;
  dbgridMake.SetActiveField('MakeName');
  doEvents := True;
end;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  1. Initialises the settings.
  2. Displays the first page of the wizard where you can select,
  delete, amend or create an Instrument make.
*******************************************************************************)
procedure TfrmInstrument.FormShow(Sender: TObject);
begin
  rxInstrument.Active := True;
  rxInstrumentModel.Active := True;
  rxInstrumentMake.Active := True;
  isNewRecord := False;
  ErrorList := tStringList.Create;

  doEvents := False;
  doEvents2 := True;
  sNextInstrumentId := dmBase.GetLastId(dmBase.rxInstrument,'InstID');
//  sNextModelId := dmBase.GetLastId(dmBase.rxInstrumentModel,'ModelID');
//  sNextMakeId := dmBase.GetLastId(dmBase.rxInstrumentMake,'MakeID');
  rxInstrument.EmptyTable;
  rxInstrument.LoadFromDataSet(dmBase.rxInstrument,0,lmAppend);
  rxInstrumentModel.EmptyTable;
  rxInstrumentModel.LoadFromDataSet(dmBase.rxInstrumentModel,0,lmAppend);
  rxInstrumentMake.EmptyTable;
  rxInstrumentMake.LoadFromDataSet(dmBase.rxInstrumentMake,0,lmAppend);

  pcInstrument.ActivePage := tsMake;
  dbgridMake.SetFocus;

  dbgridMake.SetActiveField('MakeName');

  if rxInstrumentMake.isEmpty then
  begin
    btnNext1.Enabled := False;
  end
  else
  begin
    btnNext1.Enabled := True;
  end;
  searchInstrumentMake.Text := rxInstrumentMake.FieldByName('MakeName').AsString;
  doEvents := True;

end;

(*******************************************************************************
@procedure cbTypeChange(Sender: TObject);

@description
  Either EDM instruments or Prisms are displayed
*******************************************************************************)
procedure TfrmInstrument.cbTypeChange(Sender: TObject);
begin
  SetTypeChange;
end;

(*******************************************************************************
@procedure SetTypeChange;

@description
  Either EDM instruments or Prisms are displayed
*******************************************************************************)
procedure TfrmInstrument.SetTypeChange;
begin
  sMakeId := rxInstrumentMake.FieldByName('makeId').AsInteger;
  if cbType.Text = 'EDM' then
  begin
    edtType.Text := 'EDM';
    with rxInstrumentModel do
    begin
      FilterModel('E',sMakeId);
      FieldByName('ModelUnitLength').Visible := True;
      FieldByName('ModelCarrierWaveLength').Visible := True;
      FieldByName('ModelModFreq').Visible := True;
      FieldByName('ModelManufStdDevConst').Visible := True;
      FieldByName('ModelManufStdDevPPM').Visible := True;
      FieldByName('ManuRefractiveIndex').Visible := True;
      FieldByName('isPulseMeter').Visible := True;
    end;
    FilterInstrument('E',-1);
  end;

  if cbType.Text = 'Prism' then
  begin
    edtType.Text := 'Prism';
    with rxInstrumentModel do
    begin
      FilterModel('P',sMakeId);
      FieldByName('ModelUnitLength').Visible := False;
      FieldByName('ModelCarrierWaveLength').Visible := False;
      FieldByName('ModelModFreq').Visible := False;
      FieldByName('ModelManufStdDevConst').Visible := False;
      FieldByName('ModelManufStdDevPPM').Visible := False;
      FieldByName('ManuRefractiveIndex').Visible := False;
      FieldByName('isPulseMeter').Visible := False;
    end;
    FilterInstrument('P',-1);
  end;
  btnNext2.Enabled := ( not rxInstrumentModel.IsEmpty);
end;

(*******************************************************************************
@function HasValidInstrumentMakeFields : Boolean;

@description
  1. Validates the Instrument Make.
  2. Returns TRUE if the instrument make is validated.
*******************************************************************************)
function TfrmInstrument.HasValidInstrumentMakeFields : Boolean;
var
  isValid : Boolean;
  isNameDuplicated : Boolean;
begin
  isValid := True;
  isNameDuplicated := False;
  ErrorList.Clear;
  with rxInstrumentmake do
  begin
    if (FieldByName('MakeName').isNull) or
       (Trim(FieldByName('MakeName').AsString)='') then
    begin
      ErrorList.Add('You must enter an instrument make.');
      dbgridMake.SetFocus;
      doEvents := False;
        dbgridMake.SetActiveField('MakeName');
      doEvents := True;
      isValid := False;
    end
    else
    begin
      if IsMakeNameDuplicated then
      begin
        dbgridMake.SetFocus;
        doEvents := False;
          dbgridMake.SetActiveField('MakeName');
        doEvents := True;
        isValid := False;
        isNameDuplicated := True;
      end;
    end;

    if isValid and (FieldByName('MakeCountry').isNull) then
    begin
      ErrorList.Add('You must enter a country of origin.');
      dbgridMake.SetFocus;
      doEvents := False;
        dbgridMake.SetActiveField('MakeCountry');
      doEvents := True;
      isValid := False;
    end;
  end;
  if not isNameDuplicated then
  begin
    ShowErrors(ErrorList);
  end;
  Result := isValid;
end;

(*******************************************************************************
@function HasValidInstrumentModelFields : Boolean;

@description
  1. Validates the Instrument Model.
  2. Returns TRUE if the instrument model is validated.
*******************************************************************************)
function TfrmInstrument.HasValidInstrumentModelFields : Boolean;
var
  isNameDuplicated : Boolean;
begin
  isNameDuplicated := False;
  ErrorList.Clear;
  with rxInstrumentModel do
  begin
    if (FieldByName('ModelName').isNull) or (Trim(FieldByName('ModelName').AsString)='') then
    begin
      ErrorList.Add('Model Name is required');
      dbgridModel.SetFocus;
      doEvents := False;
      dbgridModel.SetActiveField('ModelName');
      doEvents := True;
    end
    else
    begin
      if IsInstrumentModelDuplicated then
      begin
        dbgridModel.SetFocus;
        doEvents := False;
          dbgridModel.SetActiveField('ModelName');
        doEvents := True;
        isNameDuplicated := True;
      end;
    end;

    if (not isNameDuplicated) then
    begin
      if (FieldByName('ModelInstType').AsString = 'P') then
      begin
        Result := True;
      end
      else
      begin
        {
        if FieldByName('ModelManufStdDevPPM').isNull then
        begin
          FieldByName('ModelManufStdDevPPM').AsFloat := 0;
        end;
        }
        if not FieldByName('isPulseMeter').AsBoolean then
        begin
          {
          if (FieldByName('ModelUnitLength').isNull) or (Trim(FieldByName('ModelUnitLength').AsString)='') or
             (FieldByName('ModelUnitLength').AsInteger <= 0) then
          begin
            ErrorList.Add('Model Unit Length is required');
            dbgridModel.SetFocus;
            doEvents := False;
              dbgridModel.SetActiveField('ModelUnitLength');
            doEvents := True;
          end;

          if (FieldByName('ModelModFreq').isNull) or (Trim(FieldByName('ModelModFreq').AsString)='') or
             (FieldByName('ModelModFreq').AsInteger <= 0) then
          begin
            ErrorList.Add('Frequency is required');
            dbgridModel.SetFocus;
            doEvents := False;
              dbgridModel.SetActiveField('ModelModFreq');
            doEvents := True;
          end;
          if (FieldByName('ModelCarrierWaveLength').isNull) or (Trim(FieldByName('ModelCarrierWaveLength').AsString)='') or
             (FieldByName('ModelCarrierWaveLength').AsInteger <= 0) then
          begin
            ErrorList.Add('Carrier Wave Length is required');
            dbgridModel.SetFocus;
            doEvents := False;
              dbgridModel.SetActiveField('ModelCarrierWaveLength');
            doEvents := True;
          end;
          }
        end;
        if (not FieldByName('ManuRefractiveIndex').isNull) then
        begin
          if (FieldByName('ManuRefractiveIndex').AsFloat < 1.0002) or
             (FieldByName('ManuRefractiveIndex').AsFloat > 1.0004) then
           begin
             ErrorList.Add('Refractive Index must be between 1.0002 and 1.0004');
             dbgridModel.SetFocus;
             doEvents := False;
               dbgridModel.SetActiveField('ManuRefractiveIndex');
             doEvents := True;
           end;
        end;

        ShowErrors(ErrorList);

        Result := (ErrorList.Count=0);
      end;
    end
    else
    begin
      Result := False;
    end;
  end;
end;

(*******************************************************************************
@function HasValidInstrumentFields : Boolean;

@description
  1. Validates the Instrument.
  2. Returns TRUE if the instrument is validated.
*******************************************************************************)
function TfrmInstrument.HasValidInstrumentFields : Boolean;
begin
  ErrorList.Clear;
  with rxInstrument do
  begin
    if FieldByName('InstSerialNo').IsNull then
    begin
      ErrorList.Add('You must enter a serial number.');
      dbgridInstrument.SetFocus;
      doEvents := False;
      dbgridInstrument.SetActiveField('InstSerialNo');
      doEvents := True;
    end;
    {
    if FieldByName('InstStdDevConst').isNull then
    begin
      ErrorList.Add('The standard deviation of the constant must have a value.');
      dbgridInstrument.SetFocus;
      doEvents := False;
        dbgridInstrument.SetActiveField('InstStdDevConst');
      doEvents := True;
    end
    else
    begin
      if FieldByName('InstStdDevConst').AsFloat <= 0.0001  then
      begin
        ErrorList.Add('The standard deviation of the constant must be equal or greater than 0.0001 metres.');
        dbgridInstrument.SetFocus;
        doEvents := false;
          dbgridInstrument.SetActiveField('InstStdDevConst');
        doEvents := True;
      end;
    end;
    }
    if FieldByName('InstConstant').isNull then FieldByName('InstConst').AsFloat := 0;
    if FieldByName('InstScaleFact').isNull then FieldByName('InstScaleFact').AsFloat := 0;
//    if FieldByName('InstStdDevPPM').isNull then FieldByName('InstStdDevPPM').AsFloat := 0;
  end;
  ShowErrors(ErrorList);

  Result := (ErrorList.Count=0);
end;

(*******************************************************************************
@procedure ShowErrors(ErrorList : TStringList);

@description
  Displays the validation errors.
*******************************************************************************)
procedure TfrmInstrument.ShowErrors(ErrorList : TStringList);
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
@procedure FormClose(Sender: TObject;

@description
  Frees the Error list prior to closing.
*******************************************************************************)
procedure TfrmInstrument.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ErrorList.Free;
end;

(*******************************************************************************
@procedure dbgridModelColExit(Sender: TObject);

@description
  Validates the instrument model when you move to another grid column.
*******************************************************************************)
procedure TfrmInstrument.dbgridModelColExit(Sender: TObject);
begin
  if (not isNewRecord) and (doEvents) then
  begin
    if dbgridModel.GetActiveField = rxInstrumentModel.FieldByName('ModelName') then
    begin
      ErrorList.Clear;
      with rxInstrumentModel do
      begin
        if (FieldByName('ModelName').isNull) or (Trim(FieldByName('ModelName').AsString)='') then
        begin
          ErrorList.Add('Model Name is required');
          dbgridModel.SetFocus;
          doEvents := False;
            dbgridModel.SetActiveField('ModelName');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end
        else
        begin
          if isInstrumentModelDuplicated then
          begin
            dbgridModel.SetFocus;
            doEvents := False;
              dbgridModel.SetActiveField('ModelName');
            doEvents := True;
            Abort;
          end;
          btnNext2.Enabled := True;
        end;
      end;
    end;
    {
    if dbgridModel.GetActiveField = rxInstrumentModel.FieldByName('ModelUnitLength') then
    begin
      ErrorList.Clear;
      with rxInstrumentModel do
      begin
        if (FieldByName('ModelUnitLength').isNull) or (Trim(FieldByName('ModelUnitLength').AsString)='') or
           (FieldByName('ModelUnitLength').AsInteger <= 0) then
        begin
          ErrorList.Add('Model Unit Length is required');
          dbgridModel.SetFocus;
          doEvents := False;
            dbgridModel.SetActiveField('ModelUnitLength');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end;
      end;
    end;
    if dbgridModel.GetActiveField = rxInstrumentModel.FieldByName('ModelModFreq') then
    begin
      ErrorList.Clear;
      with rxInstrumentModel do
      begin
        if (FieldByName('ModelModFreq').isNull) or (Trim(FieldByName('ModelModFreq').AsString)='') or
           (FieldByName('ModelModFreq').AsInteger <= 0) then
        begin
          ErrorList.Add('Frequency is required');
          dbgridModel.SetFocus;
          doEvents := False;
            dbgridModel.SetActiveField('ModelModFreq');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end;
      end;
    end;
    if dbgridModel.GetActiveField = rxInstrumentModel.FieldByName('ModelCarrierWaveLength') then
    begin
      ErrorList.Clear;
      with rxInstrumentModel do
      begin
        if (FieldByName('ModelCarrierWaveLength').isNull) or (Trim(FieldByName('ModelCarrierWaveLength').AsString)='') or
           (FieldByName('ModelCarrierWaveLength').AsInteger <= 0) then
        begin
          ErrorList.Add('Carrier Wave Length is required');
          dbgridModel.SetFocus;
          doEvents := False;
            dbgridModel.SetActiveField('ModelCarrierWaveLength');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end;
      end;
    end;
    }
  end;
end;

(*******************************************************************************
@procedure dbgridModelExit(Sender: TObject);

@description
  Validates the instrument model when you exit the database grid.
*******************************************************************************)
procedure TfrmInstrument.dbgridModelExit(Sender: TObject);
begin
  with rxInstrumentModel do
  begin
    if (State = dsInsert) or (State = dsEdit) then
    begin
      if not HasValidInstrumentModelFields then
      begin
        Abort;
      end
      else
      begin
        if IsInstrumentModelDuplicated then
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
end;

(*******************************************************************************
@procedure dbgridInstrumentColExit(Sender: TObject);

@description
  Validates the instrument when you move ti another column in the grid.
*******************************************************************************)
procedure TfrmInstrument.dbgridInstrumentColExit(Sender: TObject);
begin
  if (not isNewRecord) and (doEvents) then
  begin
    if dbgridInstrument.GetActiveField = rxInstrument.FieldByName('InstSerialNo') then
    begin
      ErrorList.Clear;
      with rxInstrument do
      begin
        if FieldByName('InstSerialNo').IsNull then
        begin
          ErrorList.Add('You must enter a serial number.');
          dbgridInstrument.SetFocus;
          doEvents := False;
            dbgridInstrument.SetActiveField('InstSerialNo');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end
        else
        begin
          if isInstrumentDuplicated then
          begin
            Abort;
          end;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@function IsMakeNameDuplicated : Boolean;

@description
  1. This function checks if an existing make name is renamed with a duplicated make name
  2. Returns TRUE if Make Name is duplicated
*******************************************************************************)
function TfrmInstrument.IsMakeNameDuplicated : Boolean;
var
  strMakeName : String;
begin
  Result := False;
  strMakeName := rxInstrumentMake.FieldByname('MakeName').AsString;

  if (rxInstrumentMake.State = dsInsert) or (rxInstrumentMake.State = dsEdit) then
  begin
    with dmBase.rxInstrumentMake do
    begin
      if Locate('MakeName', strMakeName, [loCaseInsensitive]) then
      begin
        Result := True;
        if Result and (rxInstrumentMake.State = dsEdit) and
        (strMakeName=strPreviousMakeName) then
        begin
          Result := False;
        end;
      end;
    end;

    if Result then
    begin
      MessageDlg('You can not duplicate an Instrument Make Name.'+#10+
                 'Please enter another Instrument Make Name.',mtError,[mbOK],0);
      dbgridMake.SetFocus;
      doEvents := False;
        dbgridMake.SetActiveField('MakeName');
      doEvents := True;
    end;
  end;
end;

(*******************************************************************************
@procedure dbgridMakeColExit(Sender: TObject);

@description
  Validates the instrument make when you move to another column in the database grid.
*******************************************************************************)
procedure TfrmInstrument.dbgridMakeColExit(Sender: TObject);
begin
  if (not isNewRecord) and (doEvents) then
  begin
    if dbgridMake.GetActiveField = rxInstrumentMake.FieldByName('MakeName') then
    begin
      if (rxInstrumentMake.FieldByName('MakeName').isNull) or
         (Trim(rxInstrumentMake.FieldByName('MakeName').AsString)='') then
      begin
        ErrorList.Clear;
        ErrorList.Add('You must enter an instrument make.');
        ShowErrors(ErrorList);
        dbgridMake.SetFocus;
        doEvents := False;
        dbgridMake.SetActiveField('MakeName');
        doEvents := True;
        Abort;
      end
      else
      begin
        if IsMakeNameDuplicated then
        begin
          dbgridMake.SetFocus;
          doEvents := False;
            dbgridMake.SetActiveField('MakeName');
          doEvents := True;
          Abort;
        end;
      end;
    end;
    if dbgridMake.GetActiveField = rxInstrumentMake.FieldByName('MakeCountry') then
    begin
      ErrorList.Clear;
      with rxInstrumentMake do
      begin
        if (FieldByName('MakeCountry').isNull) or (Trim(FieldByName('MakeCountry').AsString)='') then
        begin
          ErrorList.Add('You must enter a country of origin');
          ShowErrors(ErrorList);
          dbgridMake.SetFocus;
          doEvents := False;
            dbgridMake.SetActiveField('MakeCountry');
          doEvents := True;
          Abort;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure dbgridMakeExit(Sender: TObject);

@description
  Validates the instrument make when you exit the database grid.
*******************************************************************************)
procedure TfrmInstrument.dbgridMakeExit(Sender: TObject);
begin
  if doEvents then
    begin
    with rxInstrumentMake do
    begin
      if (State = dsInsert) or (State = dsEdit) then
      begin
        if not HasValidInstrumentMakeFields then
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
end;

(*******************************************************************************
@function IsInstrumentModelDuplicated : Boolean;

@description
  1. This function checks if an existing model name is renamed with a duplicated model name.
  2. Returns TRUE if MOdel Name is duplicated.
*******************************************************************************)
function TfrmInstrument.IsInstrumentModelDuplicated : Boolean;
var
  sMakeId : Integer;
  strInstrumentType : String;
  strModelName : String;
begin
  Result := False;
  if (rxInstrumentModel.State = dsInsert) or (rxInstrumentModel.State = dsEdit) then
  begin
    sMakeID := rxInstrumentMake.FieldByName('MakeID').AsInteger;
    strModelName := rxInstrumentModel.FieldByname('ModelName').AsString;
    if cbType.Text = 'EDM' then
    begin
      strInstrumentType := 'E';
    end
    else if cbType.Text = 'Prism' then
    begin
      strInstrumentType := 'P';
    end
    else
    begin
      strInstrumentType := 'E';
    end;

    with dmbase.rxInstrumentModel do
    begin
      if Locate('MakeID;ModelName',VarArrayOf([IntToStr(sMakeID),strModelName]), [loCaseInsensitive]) then
      begin
        Result := True;
        if Result and (rxInstrumentModel.State = dsEdit) and
        (strModelName=strPreviousModelName) then
        begin
          Result := False;
        end;
      end;
    end;

    if Result then
    begin
      MessageDlg('You can not duplicate an Instrument Model Name'+#10+
                 'with the same Instrument Make Name.'+#10+
                 'Please enter another Instrument Model Name.',mtError,[mbOK],0);
        dbgridModel.SetFocus;
        doEvents := False;
          dbgridModel.SetActiveField('ModelName');
        doEvents := True;
    end;
  end;
end;

(*******************************************************************************
@function IsInstrumentDuplicated : Boolean;

@description
  This function checks if an existing serial number is renamed
  with a duplicated serial number
*******************************************************************************)
function TfrmInstrument.IsInstrumentDuplicated : Boolean;
var
  sModelId : Integer;
  strSerialNumber : String;
begin
  if (rxInstrument.State = dsInsert) or (rxInstrument.State = dsEdit) then
  begin
    sModelID := rxInstrumentModel.FieldByName('ModelID').AsInteger;
    strSerialNumber := rxInstrument.FieldByName('InstSerialNo').AsString;

    with dmBase.rxInstrument do
    begin
      if Locate('ModelID;InstSerialNo',VarArrayOf([IntToStr(sModelID),strSerialNumber]), [loCaseInsensitive]) then
      begin
        Result := True;
        if Result and (rxInstrument.State = dsEdit) and
        (strSerialNumber=strPreviousSerialNumber) then
        begin
          Result := False;
        end;
      end;
    end;
    if Result then
    begin
      MessageDlg('You can not duplicate an Instrument Serial Number'+#10+
                 'with the same Instrument Model Name.'+#10+
                 'Please enter another Instrument Serial Number.',mtError,[mbOK],0);
        dbgridInstrument.SetFocus;
        doEvents := False;
          dbgridInstrument.SetActiveField('InstSerialNo');
        doEvents := True;
    end;
  end;
end;

(*******************************************************************************
@procedure dbgridInstrumentExit(Sender: TObject);

@description
  Validate the instrument when you exit the database grid.
*******************************************************************************)
procedure TfrmInstrument.dbgridInstrumentExit(Sender: TObject);
begin
  with rxInstrument do
  begin
    if (State = dsInsert) or (State = dsEdit) then
    begin
      if not HasValidInstrumentFields then
      begin
        Abort;
      end
      else
      begin
        if IsInstrumentDuplicated then
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
end;

(*******************************************************************************
@procedure btnHelp1Click(Sender: TObject);

@description
  Displays the Help for the "Instrument Makes" page
*******************************************************************************)
procedure TfrmInstrument.btnHelp1Click(Sender: TObject);
begin
  Application.HelpContext(2100);
end;

(*******************************************************************************
@procedure btnHelp2Click(Sender: TObject);

@description
  Displays the Help for the "Instrument Models" page
*******************************************************************************)
procedure TfrmInstrument.btnHelp2Click(Sender: TObject);
begin
  Application.HelpContext(2200);
end;

(*******************************************************************************
@procedure btnHelp3Click(Sender: TObject);

@description
  Displays the Help for the "Instruments" page
*******************************************************************************)
procedure TfrmInstrument.btnHelp3Click(Sender: TObject);
begin
  Application.HelpContext(2300);
end;

(*******************************************************************************
@function IsMakeUsedInJob(sMakeID : Integer) : Boolean;

@description
  1. Checks if an instrument make has been used in a calibration job.
  2. You will not be able to delete this Make if this is TRUE.
*******************************************************************************)
function TfrmInstrument.IsMakeUsedInJob(sMakeID : Integer) : Boolean;
var
  isFound : Boolean;
  sModelId, sInstrumentID: Integer;
begin
  isFound := False;

  with dmbase.rxInstrumentModel do
  begin
    First;
    while (not EOF) and (not isFound) do
    begin
      if FieldByName('makeId').AsInteger = sMakeId then
      begin
         sModelId := FieldByName('ModelID').AsInteger;
         dmBase.rxInstrument.First;
         while (not dmBase.rxInstrument.EOF) and (not isFound) do
         begin
           if dmBase.rxInstrument.FieldByName('ModelID').AsInteger = sModelId then
           begin
             sInstrumentId := dmBase.rxInstrument.FieldByName('InstID').AsInteger;
             isFound := dmBase.rxJob.Locate('InstId1',IntToStr(sInstrumentId),[]);
             if not isFound then
             begin
               isFound := dmBase.rxJob.Locate('InstId2',IntToStr(sInstrumentId),[]);
             end;
           end;
           dmBase.rxInstrument.Next;
         end;
      end;
      Next;
    end;
  end;
  Result := isFound;
end;

(*******************************************************************************
@function IsModelUsedInJob(sMakeID : Integer) : Boolean;

@description
  1. Checks if an instrument model has been used in a calibration job.
  2. You will not be able to delete this Model if this is TRUE.
*******************************************************************************)
function TfrmInstrument.IsModelUsedInJob(sModelID : Integer) : Boolean;
var
  isFound : Boolean;
  strInstrumentId: String;
begin
  isFound := False;
  with dmBase.rxInstrument do
  begin
    First;
    while (not EOF) and (not isFound) do
    begin
      if FieldByName('ModelID').AsInteger = sModelID then
      begin
        strInstrumentId := FieldByName('InstId').AsString;
        if dmBase.rxJob.Locate('InstId1',strInstrumentId,[]) then
        begin
          isFound := True;
        end;
        if dmBase.rxJob.Locate('InstId2',strInstrumentId,[]) then
        begin
          isFound := True;
        end;
      end;
      Next;
    end;
  end;
  Result := isFound;
end;

(*******************************************************************************
@function IsInstrumentUsedInJob(sMakeID : Integer) : Boolean;

@description
  1. Checks if an instrumen has been used in a calibration job.
  2. You will not be able to delete this instrument if this is TRUE.
*******************************************************************************)
function TfrmInstrument.IsInstrumentUsedInJob(sInstrumentID : Integer) : Boolean;
var
  isFound : Boolean;
  strInstrumentId: String;
begin
  isFound := False;
  strInstrumentId := IntToStr(sInstrumentID);
  if dmBase.rxJob.Locate('InstId1',strInstrumentId,[]) then
  begin
    isFound := True;
  end;
  if dmBase.rxJob.Locate('InstId2',strInstrumentId,[]) then
  begin
    isFound := True;
  end;
  Result := isFound;
end;

(*******************************************************************************
@procedure rxInstrumentNewRecord(DataSet: TDataSet);

@description
  Set default values for a new instrument record.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentNewRecord(DataSet: TDataSet);
begin
  if doEvents then
  begin
    with rxInstrument do
    begin
      if cbType.Text = 'EDM' then
      begin
        FieldByName('InstType').AsString := 'E';
      end;
      if cbType.Text = 'Prism' then
      begin
        FieldByName('InstType').AsString := 'P';
      end;
      FieldByName('ModelId').Value := rxInstrumentModel.FieldByName('ModelId').Value;
      FieldByName('InstId').AsInteger := sNextInstrumentId;
      FieldByName('InstConstant').AsFloat := 0;
      FieldByName('InstScaleFact').AsFloat := 0;
      FieldByName('InstStdDevConst').AsFloat := 0.0001;
      FieldByName('InstStdDevPPM').AsFloat := 0;
    end;
    dbgridInstrument.SetFocus;
    isNewRecord := True;
    dbgridInstrument.SetActiveField('InstSerialNo');
    isNewRecord := false;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentBeforePost(DataSet: TDataSet);

@description
  Validates an instrument before posting.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentBeforePost(DataSet: TDataSet);
var
  doContinue: Boolean;
begin
  if doEvents then
  begin
    doContinue := True;
    if not HasValidInstrumentFields then
    begin
      doContinue := false;
      Abort;
    end;
    if isInstrumentDuplicated then
    begin
      doContinue := False;
      Abort;
    end;

    if doContinue then
    begin
      if rxInstrument.State = dsInsert then
      begin
        Inc(sNextInstrumentId);
        UpdateInstrument;
      end;
      if rxInstrument.State = dsEdit then
      begin
        UpdateInstrument;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentBeforeEdit(DataSet: TDataSet);

@description
  Gets the current serial number of the instrument.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentBeforeEdit(DataSet: TDataSet);
begin
  if doEvents then
  begin
    strPreviousSerialNumber := rxInstrument.FieldByName('InstSerialNo').AsString;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentBeforeDelete(DataSet: TDataSet);

@description
  Deletes the selected instrument.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentBeforeDelete(DataSet: TDataSet);
var
  strSerialNumber : String;
  sInstrumentID : Integer;
  doContinue: Boolean;
begin
  if doEvents then
  begin
    doContinue := True;
    with rxInstrument do
    begin
      strSerialNumber := FieldByName('InstSerialNo').AsString;
      sInstrumentID := FieldByName('InstID').AsInteger;
    end;

    if MessageDlg('Instrument with serial number '''+strSerialNumber+
    ''' will be deleted.'+#10+' Are you sure you want delete this instrument?',MtWarning,[mbYes,mbNo],0) = mrNo then
    begin
      doContinue := False;
      Abort;
    end;

    if IsInstrumentUsedInJob(sInstrumentID) then
    begin
      MessageDlg('You can not delete instruments which have been used in jobs.',MtWarning,[mbOK],0);
      doContinue := False;
      Abort;
    end;
    if doContinue then
    begin
      if dmbase.rxInstrument.Locate('InstID',IntToStr(sInstrumentID),[]) then
      begin
        dmbase.rxInstrument.Delete;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure UpdateInstrument;

@description
  Updates the selected instrument.
*******************************************************************************)
procedure TfrmInstrument.UpdateInstrument;
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  with dmBase.rxInstrument do
  begin
    if Locate('InstId',rxInstrument.FieldByName('InstId').AsString,[]) then
    begin
       Edit;
    end
    else
    begin
      Append;
    end;
    for i := 0 to rxInstrument.FieldCount - 1 do
    begin
      j := 0;
      strToField := uppercase(Fields[j].FieldName);
      strFromField := uppercase(rxInstrument.Fields[i].FieldName);
      while (strToField <> strFromField) and
             ( j < FieldCount-1) do
      begin
        Inc(j);
        strToField := uppercase(Fields[j].FieldName);
      end;
      Fields[j].Value := rxInstrument.Fields[i].Value;
    end;
    Post;
  end;
end;

(*******************************************************************************
@procedure UpdateModel;

@description
  Updates the selected instrument model.
*******************************************************************************)
procedure TfrmInstrument.UpdateModel;
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  with dmBase.rxInstrumentModel do
  begin
    if Locate('ModelID',rxInstrumentModel.FieldByName('ModelID').AsString,[]) then
    begin
       Edit;
    end
    else
    begin
      Append;
    end;
    for i := 0 to rxInstrumentModel.FieldCount - 1 do
    begin
      j := 0;
      strToField := uppercase(Fields[j].FieldName);
      strFromField := uppercase(rxInstrumentModel.Fields[i].FieldName);
      while (strToField <> strFromField) and
             ( j < FieldCount-1) do
      begin
        Inc(j);
        strToField := uppercase(Fields[j].FieldName);
      end;
      Fields[j].Value := rxInstrumentModel.Fields[i].Value;
    end;
    Post;
  end;
end;

(*******************************************************************************
@procedure UpdateMake;

@description
  Updates the selected instrument make.
*******************************************************************************)
procedure TfrmInstrument.UpdateMake;
var
  i, j: Integer;
  strFromField, strToField: String;
begin
  with dmBase.rxInstrumentMake do
  begin
    if Locate('MakeID',rxInstrumentMake.FieldByName('MakeID').AsString,[]) then
    begin
       Edit;
    end
    else
    begin
      Append;
    end;
    for i := 0 to rxInstrumentMake.FieldCount - 1 do
    begin
      j := 0;
      strToField := uppercase(Fields[j].FieldName);
      strFromField := uppercase(rxInstrumentMake.Fields[i].FieldName);
      while (strToField <> strFromField) and
             ( j < FieldCount-1) do
      begin
        Inc(j);
        strToField := uppercase(Fields[j].FieldName);
      end;
      Fields[j].Value := rxInstrumentMake.Fields[i].Value;
    end;
    Post;
  end;
end;

(*******************************************************************************
@procedure FilterInstrument( strInstType: String; sModelID: Integer);

@description
  Only displays the instruments of a given Type (EDM instrument or Prism) and Model.
*******************************************************************************)
procedure TfrmInstrument.FilterInstrument(
 strInstType: String;
 sModelID: Integer);
var
  i,j: Integer;
  strToField, strFromField: String;
  doContinue: Boolean;
begin
  doEvents := False;
  rxInstrument.EmptyTable;
  with dmBase.rxInstrument do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('InstType').AsString = strInstType then
      begin
        doContinue := True;
        if sModelID <> -1 then
        begin
          doContinue := False;
          if FieldByName('ModelID').AsInteger = sModelId then
          begin
            doContinue := True;
          end;
        end;
        if doContinue then
        begin
          rxInstrument.Append;
          for i := 0 to FieldCount - 1 do
          begin
            j := 0;
            strToField   := uppercase(rxInstrument.Fields[j].FieldName);
            strFromField := uppercase(Fields[i].FieldName);
            while (strToField <> strFromField) and
                   ( j < rxInstrument.FieldCount-1) do
            begin
              Inc(j);
              strToField := uppercase(rxInstrument.Fields[j].FieldName);
            end;
            rxInstrument.Fields[j].Value := Fields[i].Value;
          end;
          rxInstrument.Post;
        end;
      end;
      Next;
    end;
  end;
  doEvents := True;
end;

(*******************************************************************************
@procedure rxInstrumentModelNewRecord(DataSet: TDataSet);

@description
  Initialises a new instrument model record.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentModelNewRecord(DataSet: TDataSet);
begin
  if doEvents then
  begin
    with rxInstrumentModel do
    begin
      if cbType.Text = 'EDM' then
      begin
        FieldByName('ModelInstType').AsString := 'E';
      end;
      if cbType.Text = 'Prism' then
      begin
        FieldByName('ModelInstType').AsString := 'P';
      end;
      FieldByName('MakeId').Value := rxInstrumentMake.FieldByName('MakeId').Value;
      FieldByName('ModelId').AsInteger := sNextModelId;
    end;
    dbgridModel.SetFocus;
    isNewRecord := True;
    dbgridModel.SetActiveField('ModelName');
    isNewRecord := False;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentModelBeforePost(DataSet: TDataSet);

@description
  1. Validates the instrument model.
  2. The validated instrument model will be saved in the main database.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentModelBeforePost(DataSet: TDataSet);
var
  doContinue: Boolean;
begin
  if doEvents then
  begin
    doContinue := True;
    if not HasValidInstrumentModelFields then
    begin
      doContinue := False;
      Abort;
    end;
    if isInstrumentModelDuplicated then
    begin
      doContinue := False;
      Abort;
    end;
    if doContinue then
    begin
      if rxInstrumentModel.State = dsInsert then
      begin
        Inc(sNextModelId);
        UpdateModel;
      end;
      if rxInstrumentModel.State = dsEdit then
      begin
        UpdateModel;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentModelBeforeEdit(DataSet: TDataSet);

@description
   Ensures that the Model Name will not be duplicated.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentModelBeforeEdit(DataSet: TDataSet);
begin
  if doEvents then
  begin
    strPreviousModelName := rxInstrumentModel.FieldByName('ModelName').AsString;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentModelBeforeDelete(DataSet: TDataSet);

@description
  1. Deletes the selected instrument model and all its associated data.
  2. You can not delete instrument models which have been used in jobs.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentModelBeforeDelete(DataSet: TDataSet);
var
  strInstrumentModel : String;
begin
  if doEvents then
  begin
    with rxInstrumentModel do
    begin
      strInstrumentModel := FieldByName('ModelName').AsString;
      sModelId := FieldByName('ModelId').AsInteger;
    end;

    if MessageDlg('All data associated with instrument model '''+strInstrumentModel+
    ''' will be deleted.'+#10+' Are you sure you want delete this instrument model?',MtWarning,[mbYes,mbNo],0) = mrYes then
    begin

      if IsModelUsedInJob(sModelID) then
      begin
        MessageDlg('You can not delete instruments which have been used in jobs.',MtWarning,[mbOK],0);
        Abort;
      end;

      DeleteModel(sModelId);

      MessageDlg('Instrument model '''+strInstrumentModel+ ''' has been deleted.',MtInformation,[mbOK],0);
    end
    else
    begin
      Abort;
    end;
  end;
end;

(*******************************************************************************
@procedure DeleteModel(sModelId: Integer);

@description
  Deletes the selected instrument model and all its associated data.
*******************************************************************************)
procedure TfrmInstrument.DeleteModel(sModelId: Integer);
var
  doEvents2: Boolean;
begin
  doEvents2 := doEvents;
  doEvents := False;
  with dmBase.rxInstrument do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('ModelId').AsInteger = sModelId then
      begin
        Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;
  with rxInstrument do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('ModelId').AsInteger = sModelId then
      begin
        Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;
  with dmBase.rxInstrumentModel do
  begin
    if Locate('ModelID',sModelID,[]) then
    begin
      Delete;
    end;
  end;

  doEvents := doEvents2;
end;

(*******************************************************************************
@procedure rxInstrumentModelAfterPost(DataSet: TDataSet);

@description
  Enables the Next button.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentModelAfterPost(DataSet: TDataSet);
begin
  if doEvents then
  begin
    btnNext2.Enabled := True;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentModelAfterDelete(DataSet: TDataSet);

@description
  Disables the Next button.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentModelAfterDelete(DataSet: TDataSet);
begin
  if doEvents then
  begin
    if rxInstrumentModel.IsEmpty then
    begin
      btnNext2.Enabled := False;
    end
    else
    begin
      btnNext2.Enabled := True;
    end;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentMakeNewRecord(DataSet: TDataSet);

@description
  Initialises the new Instrument Make record.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentMakeNewRecord(DataSet: TDataSet);
begin
  if doEvents then
  begin
    with rxInstrumentMake do
    begin
      FieldByName('MakeId').Value := sNextMakeId;
    end;
    dbgridMake.SetFocus;
    isNewRecord := True;
    dbgridMake.SetActiveField('MakeName');
    isNewRecord := False;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentMakeBeforePost(DataSet: TDataSet);

@description
   1. Validates the Instrument Make.
   2. Stores the validated Instrument Make in the database.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentMakeBeforePost(DataSet: TDataSet);
var
  doContinue: Boolean;
begin
  if doEvents then
  begin
    doContinue := True;
    if not HasValidInstrumentMakeFields then
    begin
      Abort;
      doContinue := False;
    end
    else
    begin
      if IsMakeNameDuplicated then
      begin
        doContinue := False;
        Abort;
      end;
    end;
    if doContinue then
    begin
      if rxInstrumentMake.State = dsInsert then
      begin
        Inc(sNextMakeId);
        UpdateMake;
      end;
      if rxInstrumentMake.State = dsEdit then
      begin
        UpdateMake;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentMakeBeforeEdit(DataSet: TDataSet);

@description
   Ensures that the Make Name will not be duplicated.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentMakeBeforeEdit(DataSet: TDataSet);
begin
  if doEvents then
  begin
    strPreviousMakeName := rxInstrumentMake.FieldByName('MakeName').AsString;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentMakeBeforeDelete(DataSet: TDataSet);

@description
  1. Deletes the selected instrument make and all its associated data.
  2. You can not delete instrument makes which have been used in jobs.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentMakeBeforeDelete(DataSet: TDataSet);
var
  strInstrumentMake : String;
  sMakeId : Integer;
begin
  if doEvents then
  begin
    doEvents := False;
    with rxInstrumentMake do
    begin
      strInstrumentmake := FieldByName('MakeName').AsString;
      sMakeId := FieldByName('MakeId').AsInteger;
    end;

    if MessageDlg('All data associated with instrument make '''+strInstrumentMake+
    ''' will be deleted.'+#10+' Are you sure you want delete this instrument make?',MtWarning,[mbYes,mbNo],0) = mrYes then
    begin

      if IsMakeUsedInJob(sMakeID) then
      begin
        MessageDlg('You can not delete instruments which have been used in jobs.',MtWarning,[mbOK],0);
        Abort;
      end;

      with dmBase.rxInstrumentModel do
      begin
        First;
        while not EOF do
        begin
          if FieldByName('MakeID').AsInteger = sMakeID then
          begin
            sModelId := FieldByName('ModelId').AsInteger;
            DeleteModel(sModelId);
            if rxInstrumentModel.Locate('ModelID',IntToStr(sModelId),[]) then  // Delete record from filtered table
            begin
              rxInstrumentModel.Delete;
            end;
            Delete;
          end
          else
          begin
            Next;
          end;
        end;
      end;

      if dmBase.rxInstrumentMake.Locate('MakeID',IntToStr(sMakeID),[]) then
      begin
        dmBase.rxInstrumentMake.Delete;
      end;
      MessageDlg('Instrument make '''+strInstrumentMake+ ''' has been deleted.',MtInformation,[mbOK],0);
    end
    else
    begin
      Abort;
    end;
    doEvents := True;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentMakeAfterPost(DataSet: TDataSet);

@description
  Enables the Next button.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentMakeAfterPost(DataSet: TDataSet);
begin
  if doEvents then
  begin
     btnNext1.Enabled := True;
  end;
end;

(*******************************************************************************
@procedure rxInstrumentMakeAfterDelete(DataSet: TDataSet);

@description
  Disables the Next button if there are no instrument makes.
*******************************************************************************)
procedure TfrmInstrument.rxInstrumentMakeAfterDelete(DataSet: TDataSet);
begin
  if doEvents then
  begin
    if rxInstrumentMake.isEmpty then
    begin
      btnNext1.Enabled := False;
    end
    else
    begin
      btnNext1.Enabled := True;
    end;
  end;
end;

(*******************************************************************************
@procedure FilterModel( strModelType: String; sMakeId: Integer);

@description
  Only displays a model with a select instrument Make and Model type.
*******************************************************************************)
procedure TfrmInstrument.FilterModel(
 strModelType: String;
 sMakeId: Integer);
var
  i,j: Integer;
  strToField, strFromField: String;
begin
  doEvents := False;
  rxInstrumentModel.EmptyTable;
  with dmBase.rxInstrumentModel do
  begin
    First;
    while not EOF do
    begin
      if (FieldByName('ModelInstType').AsString = strModelType) and
         (FieldByName('MakeID').AsInteger = sMakeId) then
      begin
        rxInstrumentModel.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strToField := uppercase(rxInstrumentModel.Fields[j].FieldName);
          strFromField := uppercase(Fields[i].FieldName);
          while (strToField <> strFromField) and
                 ( j < rxInstrumentModel.FieldCount-1) do
          begin
            Inc(j);
            strToField := uppercase(rxInstrumentModel.Fields[j].FieldName);
          end;
          rxInstrumentModel.Fields[j].Value := Fields[i].Value;
        end;
        rxInstrumentModel.Post;
      end;
      Next;
    end;
  end;
  doEvents := True;
end;

procedure TfrmInstrument.dbgridMakeRowChanged(Sender: TObject);
begin
  if doEvents2 then
  begin
    searchInstrumentMake.Text := rxInstrumentMake.FieldByName('MakeName').AsString;
  end;
end;

procedure TfrmInstrument.searchInstrumentMakeEnter(Sender: TObject);
begin
  doEvents2 := False;
end;

procedure TfrmInstrument.searchInstrumentMakeExit(Sender: TObject);
begin
  doEvents2 := True;
end;

end.
