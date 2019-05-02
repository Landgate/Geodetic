(*******************************************************************************
@FormUnit Bse2elips

@Description
  This sub application allows you to create and maintain ellipsoid definitions.
  These are required because the pillars of a baseline may each have geographical
  coordinates computed on some ellipsoid.  The ellipsoid records in the data
  base define the ellipsoid parameters which were used to computed the pillar coordinates.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit Bse2elips;

interface

uses
  BseMisc,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  Grids, Wwdbigrd, Wwdbgrid, WwDBGrd2, RxMemDS;

type
  TfrmEllipsoid = class(TForm)
    Label4: TLabel;
    dbgrdEllipsoids: TwwDBGrid2;
    dbnavEllipsoids: TDBNavigator;
    btnClose1: TBitBtn;
    btnHelp4: TBitBtn;
    dsEllipsoid: TwwDataSource;
    rxEllipsoid: TRxMemoryData;
    rxEllipsoidEllipsID: TIntegerField;
    rxEllipsoidEllipsName: TStringField;
    rxEllipsoidEllipsARadius: TFloatField;
    rxEllipsoidEllipsInvFlat: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrdEllipsoidsColExit(Sender: TObject);
    procedure dbgrdEllipsoidsExit(Sender: TObject);
    procedure btnClose1Click(Sender: TObject);
    procedure dsEllipsoidStateChange(Sender: TObject);
    procedure btnHelp4Click(Sender: TObject);
    procedure rxEllipsoidBeforePost(DataSet: TDataSet);
    procedure rxEllipsoidNewRecord(DataSet: TDataSet);
    procedure rxEllipsoidBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ShowErrors(ErrorList : TStringList);
    function HasValidEllipsoidFields : Boolean;
    function IsEllipsoidDuplicated : Boolean;
    function DoBaselinesContainEllipsoid : Boolean;
  public
    { Public declarations }
    ErrorList : TStringList;
    doEvents : Boolean;
    sNextEllipsId: Integer;
  end;

var
  frmEllipsoid: TfrmEllipsoid;

implementation

{$R *.DFM}
uses BseDM;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  Initialises the settings. Download the ellipsoids from the database
*******************************************************************************)
procedure TfrmEllipsoid.FormShow(Sender: TObject);
begin
  ErrorList := tStringList.Create;
  dbgrdEllipsoids.SetFocus;

  doEvents := False;
  sNextEllipsId := dmBase.GetLastId(dmBase.rxEllipsoid,'EllipsId');
  rxEllipsoid.Active := True;
  rxEllipsoid.EmptyTable;
  rxEllipsoid.LoadFromDataSet(dmBase.rxEllipsoid,0,lmAppend);
  dbgrdEllipsoids.SetActiveField('EllipsName');
  doEvents := True;
end;

(*******************************************************************************
@procedure FormClose(Sender: TObject);

@description
  Saves any changes to the ellipsoidal paranmeters.
*******************************************************************************)
procedure TfrmEllipsoid.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  doContinue: Boolean;
begin
  doContinue := True;
  with rxEllipsoid do
  begin
    if (State = dsInsert) or (State = dsEdit) then
    begin
      if not HasValidEllipsoidFields then
      begin
        doContinue := False;
        Action := caNone;
      end
      else
      begin
        if IsEllipsoidDuplicated then
        begin
          doContinue := False;
          Action := caNone;
        end
        else
        begin
          Post;
          ErrorList.Free;
        end;
      end;
    end
    else
    begin
      ErrorList.Free;
    end;
  end;
  if doContinue then
  begin
    dmBase.rxEllipsoid.EmptyTable;
    dmBase.rxEllipsoid.LoadFromDataSet(rxEllipsoid,0,lmAppend);
  end;
end;

(*******************************************************************************
@procedure dbgrdEllipsoidsColExit(Sender: TObject);

@description
  Validates the ellipsoidal parameters.
*******************************************************************************)
procedure TfrmEllipsoid.dbgrdEllipsoidsColExit(Sender: TObject);
var
 dMinInvFlat : Double;
 dMaxInvFlat : Double;
 dMinARadius : Double;
 dMaxARadius : Double;
begin
  dMinInvFlat := 1.0;
  dMaxInvFlat := 400;
  dMinARadius := 6000000;
  dMaxARadius := 7000000;

  if doEvents then
  begin
    if dbgrdEllipsoids.GetActiveField = rxEllipsoid.FieldByName('EllipsName') then
    begin
      ErrorList.Clear;
      with rxEllipsoid do
      begin
        if (FieldByName('EllipsName').isNull) or (Trim(FieldByName('EllipsName').AsString)='') then
        begin
          ErrorList.Add('Ellipsoid Name is required');
          dbgrdEllipsoids.SetFocus;
          doEvents := False;
          dbgrdEllipsoids.SetActiveField('EllipsName');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end;
        if IsEllipsoidDuplicated then Abort;
      end;
    end;
    if dbgrdEllipsoids.GetActiveField = rxEllipsoid.FieldByName('EllipsARadius') then
    begin
      ErrorList.Clear;
      with rxEllipsoid do
      begin
        if (FieldByName('EllipsARadius').isNull) or (Trim(FieldByName('EllipsARadius').AsString)='') then
        begin
          ErrorList.Add('Equatorial Radius must have a value');
          dbgrdEllipsoids.SetFocus;
          doEvents := False;
          dbgrdEllipsoids.SetActiveField('EllipsARadius');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end
        else if (FieldByName( 'EllipsARadius').AsFloat < dMinARadius)or
           (FieldByname( 'EllipsARadius').AsFloat > dMaxARadius) then
         begin
            ErrorList.Add('Major semi-axis must lie between '+
                     FloatToStr(dMinARadius)+' and '+FloatToStr(dMaxARadius));
          dbgrdEllipsoids.SetFocus;
          doEvents := False;
          dbgrdEllipsoids.SetActiveField('EllipsARadius');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end;
      end;
    end;
    if dbgrdEllipsoids.GetActiveField = rxEllipsoid.FieldByName('EllipsInvFlat') then
    begin
      ErrorList.Clear;
      with rxEllipsoid do
      begin
        if (FieldByName('EllipsInvFlat').isNull) or (Trim(FieldByName('EllipsInvFlat').AsString)='') then
        begin
          ErrorList.Add('Inverse Flattening must have a value');
          dbgrdEllipsoids.SetFocus;
          doEvents := False;
          dbgrdEllipsoids.SetActiveField('EllipsInvFlat');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end
        else if (FieldByName( 'EllipsInvFlat').AsFloat < dMinInvFlat) or
                (FieldByname( 'EllipsInvFlat').AsFloat > dMaxInvFlat) then
        begin
          ErrorList.Add('Inverse flattening must lie between '+
                     FloatToStr(dMinInvFlat)+' and '+FloatToStr(dMaxInvFlat));
          dbgrdEllipsoids.SetFocus;
          doEvents := False;
          dbgrdEllipsoids.SetActiveField('EllipsInvFlat');
          doEvents := True;
          ShowErrors(ErrorList);
          Abort;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure dbgrdEllipsoidsColExit(Sender: TObject);

@description
  1. Validates the ellipsoidal parameters.
  2. Checks if the ellipsoid name has been duplicated
*******************************************************************************)
procedure TfrmEllipsoid.dbgrdEllipsoidsExit(Sender: TObject);
begin
  with rxEllipsoid do
  begin
    if (State = dsInsert) or (State = dsEdit) then
    begin
      if not HasValidEllipsoidFields then
      begin
        Abort;
      end
      else
      begin
        if IsEllipsoidDuplicated then
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
@procedure HasValidEllipsoidFields : Boolean;

@description
  1. Validates the values in the ellipsoidal fields.
  2. Returns TRUE if the fields can be validated.
*******************************************************************************)
function TfrmEllipsoid.HasValidEllipsoidFields : Boolean;
var
 dMinInvFlat : Double;
 dMaxInvFlat : Double;
 dMinARadius : Double;
 dMaxARadius : Double;
begin
  dMinInvFlat := 1.0;
  dMaxInvFlat := 400;
  dMinARadius := 6000000;
  dMaxARadius := 7000000;

  ErrorList.Clear;

  with rxEllipsoid do
  begin
    if (FieldByName( 'EllipsARadius').AsFloat < dMinARadius)or
       (FieldByname( 'EllipsARadius').AsFloat > dMaxARadius) then
    begin
      ErrorList.Add('Major semi-axis must lie between '+
                     FloatToStr(dMinARadius)+' and '+FloatToStr(dMaxARadius));
      dbgrdEllipsoids.SetFocus;
      doEvents := False;
      dbgrdEllipsoids.SetActiveField('EllipsARadius');
      doEvents := True;

    end;
    if (FieldByName( 'EllipsInvFlat').AsFloat < dMinInvFlat) or
       (FieldByname( 'EllipsInvFlat').AsFloat > dMaxInvFlat) then
    begin
      ErrorList.Add('Inverse flattening must lie between '+
                     FloatToStr(dMinInvFlat)+' and '+FloatToStr(dMaxInvFlat));
      dbgrdEllipsoids.SetFocus;
      doEvents := False;
      dbgrdEllipsoids.SetActiveField('EllipsInvFlat');
      doEvents := True;
    end;
    if FieldByName( 'EllipsName').IsNull then
    begin
      ErrorList.Add('An Ellipsoidal Name is required');
      dbgrdEllipsoids.SetFocus;
      doEvents := False;
      dbgrdEllipsoids.SetActiveField('EllipsName');
      doEvents := True;
    end;
  end;

  Result := (ErrorList.Count = 0);

  if ErrorList.Count > 0 then
  begin
    ShowErrors(ErrorList);
    Abort;
  end;
end;

(*******************************************************************************
@procedure ShowErrors(ErrorList : TStringList);

@description
  Displays error message.
*******************************************************************************)
procedure TfrmEllipsoid.ShowErrors(ErrorList : TStringList);
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
@procedure btnClose1Click(Sender: TObject);

@description
  Closes application.
*******************************************************************************)
procedure TfrmEllipsoid.btnClose1Click(Sender: TObject);
begin
  Close;
end;

(*******************************************************************************
@function IsEllipsoidDuplicated : Boolean

@description
  Checks if you duplicate an ellipsoid name.
*******************************************************************************)
function TfrmEllipsoid.IsEllipsoidDuplicated : Boolean;
var
  strName : String;
begin
  Result := False;
  strName := rxEllipsoid.FieldByname('EllipsName').AsString;

  if (rxEllipsoid.State = dsInsert) or (rxEllipsoid.State = dsEdit) then
  begin
    with dmBase.rxEllipsoid do
    begin
      if Locate('EllipsName', strName, [loCaseInsensitive]) then
      begin
        Result := True;
      end;
    end;
    if Result then
    begin
      MessageDlg('You can not duplicate an Ellipsoid Name.'+#10+
                 'Please enter another Ellipsoid Name.',mtError,[mbOK],0);
      dbgrdEllipsoids.SetFocus;
      dbgrdEllipsoids.SetActiveField('EllipsName');
    end;
  end;
end;

(*******************************************************************************
@function DoBaselinesContainEllipsoid  : Boolean;

@description
  This function checks if baselines contain this ellipsoid
*******************************************************************************)
function TfrmEllipsoid.DoBaselinesContainEllipsoid : Boolean;
var
  sEllipsId : Integer;
begin
  Result := False;
  sEllipsId := rxEllipsoid.FieldByname('EllipsID').AsInteger;

  with dmBase.rxBaseline do
  begin
    if Locate('EllipsId',IntToStr(sEllipsId),[]) then
    begin
      Result := True;
    end;
  end;

  if Result then
  begin
    MessageDlg('You can not delete an ellipsoid, which is used by an existing baseline.',mtWarning,[mbOK],0);
  end;
end;

(*******************************************************************************
@procedure dsEllipsoidStateChange(Sender: TObject);

@description
  You can only append new records. Not insert them in the middle of a database grid.
*******************************************************************************)
procedure TfrmEllipsoid.dsEllipsoidStateChange(Sender: TObject);
begin
  if (rxEllipsoid.State = dsInsert) and ( not rxEllipsoid.EOF) then
  begin
    rxEllipsoid.Last;
    rxEllipsoid.Append;
  end;
end;

(*******************************************************************************
@procedure btnHelp4Click(Sender: TObject);

@description
  Displays the Help for the Ellipsoidal Parameter's application.
*******************************************************************************)
procedure TfrmEllipsoid.btnHelp4Click(Sender: TObject);
begin
  Application.HelpContext(4100);
end;

(*******************************************************************************
@procedure rxEllipsoidBeforePost(DataSet: TDataSet);

@description
  Validates the ellipsoidal fields.
*******************************************************************************)
procedure TfrmEllipsoid.rxEllipsoidBeforePost(DataSet: TDataSet);
begin
  if doEvents then
  begin
    if not HasValidEllipsoidFields then
    begin
      Abort;
    end
    else
    begin
      if rxEllipsoid.State = dsInsert then
      begin
        Inc(sNextEllipsId);
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure rxEllipsoidNewRecord(DataSet: TDataSet);

@description
  Initialises a new ellipsoidal record.
*******************************************************************************)
procedure TfrmEllipsoid.rxEllipsoidNewRecord(DataSet: TDataSet);
begin
  if doEvents then
  begin
    with rxEllipsoid do
    begin
      FieldByName('EllipsId').AsInteger := sNextEllipsId;
    end;
    doEvents := False;
    dbgrdEllipsoids.SetActiveField('EllipsName');
    doEvents := True;
  end;
end;

(*******************************************************************************
@procedure rxEllipsoidBeforeDelete(DataSet: TDataSet);

@description
  You can not delete ellipsoids, which have been used by Baselines,
*******************************************************************************)
procedure TfrmEllipsoid.rxEllipsoidBeforeDelete(DataSet: TDataSet);
begin
  if DoBaselinesContainEllipsoid then
  begin
    Abort;
  end;
end;

end.
