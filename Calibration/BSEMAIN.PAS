(*******************************************************************************
@FormUnit BseMain

@Description
  Main form for Baseline:
  1. Contains the menus and speed buttons for opening different functions.
  2. Opens the database tables when you start the application
  3. Save all modifications to the database tables when you close the application.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseMain;

interface

uses
  Registry, SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, BseMisc,
  ValidEdt, RxVerInf, FileCtrl, Grids, DBGrids, Wwdbigrd, Wwdbgrid,
  Printers, RxmemDS, Wwdatsrc, dbTables, Variants, HH;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    mnuFilePrintSetup: TMenuItem;
    mnuFileExit: TMenuItem;
    mnuHelpContents: TMenuItem;
    mnuHelpSearch: TMenuItem;
    mnuHelpAbout: TMenuItem;
    pnlStatusMessage: TPanel;
    PrintDialog: TPrintDialog;
    PrintSetupDialog: TPrinterSetupDialog;
    SpeedBar: TPanel;
    sbtnHelp: TSpeedButton;
    mnuEditInstruments: TMenuItem;
    mnuEdit: TMenuItem;
    mnuFile: TMenuItem;
    mnuHelp: TMenuItem;
    tmrStatusMessage: TTimer;
    mnuEditBaselines: TMenuItem;
    mnuEditEllipsoids: TMenuItem;
    mnuEditJobs: TMenuItem;
    sbtnEditJobs: TSpeedButton;
    sbtnEditInstruments: TSpeedButton;
    sbtnEditBaseline: TSpeedButton;
    sbtnEllipsoid: TSpeedButton;
    N2: TMenuItem;
    sbtnDefault: TSpeedButton;
    sbtnDistribute: TSpeedButton;
    N1: TMenuItem;
    mnuDistribute: TMenuItem;
    N4: TMenuItem;
    DisclaimerCopyRight1: TMenuItem;
    LUMAccuracyunits1: TMenuItem;
    btnLUMUnits: TSpeedButton;  { &About... }
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FilePrintSetup(Sender: TObject);
    procedure FileExit(Sender: TObject);
    procedure HelpContents(Sender: TObject);
    procedure HelpSearch(Sender: TObject);
    procedure mnuEditInstrumentsClick(Sender: TObject);
    procedure tmrStatusMessageTimer(Sender: TObject);
    procedure mnuEditBaselinesClick(Sender: TObject);
    procedure mnuEditEllipsoidsClick(Sender: TObject);
    procedure mnuEditJobsClick(Sender: TObject);
    procedure sbtnEditJobsClick(Sender: TObject);
    procedure sbtnEditInstrumentsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure sbtnEditBaselineClick(Sender: TObject);
    procedure sbtnEllipsoidClick(Sender: TObject);
    procedure mnuHelpAboutClick(Sender: TObject);
    procedure sbtnDefaultClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnDistributeClick(Sender: TObject);
    procedure DisclaimerCopyRight1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LUMAccuracyunits1Click(Sender: TObject);
  private
    hasSampleJobs: Boolean;
    FOldHelpEvent: THelpEvent;
    function OnHelp_HelpHook(Command : Word; Data : Longint; Var CallHelp : Boolean) : Boolean;
    procedure TileCanvas(aCanvas : TCanvas; aBitmap : TBitmap; sTopOffset : Integer);
    procedure CheckLogos;
    procedure CreateJobXFiles;
    procedure CreateInstrumentXFiles;
    procedure CreateBaselineXFiles;
    procedure CreateMethodXFiles;
    procedure SaveWindow;
    procedure OpenWindow;
    procedure InitAccreditation;
    procedure InitLegalTraceability;
    procedure UpdateBaseline;
    function UsedByJob(sBaselineID: Integer): Boolean;
    procedure InsertBaseline(sBaselineID: Integer);
    procedure InsertPillars( sBaselineId: Integer; sPillarID: Integer);
    procedure InsertDistances( sBaselineId: Integer; sPillarID: Integer);
    procedure DeleteBaseline;
    procedure CopyBaselines;
    procedure CopyPillars;
    procedure CopyDistances;
    procedure InitialiseCopyRight;
    procedure LoadCopyRight;
    procedure AddAuthorityDefault;
    procedure GetAboutLogo;
    procedure SetImageSize(Image: TImage);
    procedure GetDisclaimer;
    procedure SaveDisclaimer;
    procedure DownloadVADisclaimer;
    procedure UpdateInstruments;
    procedure CheckInstrumentsInJobs;
    procedure CleanInstrumentTable;
  public
    hasAgreed: Boolean;
    isWARestrictedVersion: Boolean;
    procedure UpdateBaselineAccuracyTable;
    procedure UpdateJMeasure;
  end;

var
  frmMain: TfrmMain;
  isDLI: Boolean;
  canCalibrateBaseline: Boolean;
  mHelpFile: String;
  FPopupXY: TPoint;

implementation

{$R *.DFM}

uses Bse2Job, Bse2Inst, BseBase2, Bse2Elips, BseAbout, BseDM, BseDefault,
  BSEdmMain, BseDistribute, Disclaimer, BseLUMUnits;

(*******************************************************************************
@procedure FormCreate(Sender: TObject);

@description
  Gets Helpfile.
*******************************************************************************)
procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Application.UpdateFormatSettings := False;
  Application.OnHint   := ShowHint;

  {allocate memory for the string}
  ShortDateFormat := 'd/MM/yyyy';

  // Get HTML Help file
  mHelpFile  := ExtractFilePath(Application.ExeName) + 'Baseline.chm';
  if not FileExists(mHelpFile) then
  begin
    ShowMessage('Could not locate helpfile ''Baseline.chm''');
  end;
  //++++++++++++++++++++++++++++++++++++++++++++++++++++++
  {Hook in our help}
  FOldHelpEvent := Application.OnHelp;
  Application.OnHelp := OnHelp_HelpHook;
  //++++++++++++++++++++++++++++++++++++++++++++++++++++++

  //Load the HTML Help
  LoadHtmlHelp;
  if HHCtrlHandle = 0 then
    ShowMessage('HTML Help is not installed on this PC.');

  SetCalibrationType('N');
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  //++++++++++++++++++++++++++++++++++++++++++++++++++++++
  {Unhook our help}
  Application.OnHelp := FOldHelpEvent;
  //++++++++++++++++++++++++++++++++++++++++++++++++++++++
  UnloadHtmlHelp;
end;

(*******************************************************************************
@procedure ShowHint(Sender: TObject);

@description
  Displays Hint Message at bottom of form.
*******************************************************************************)
procedure TfrmMain.ShowHint(Sender: TObject);
begin
  pnlStatusMessage.Caption := Application.Hint;
end;

(*******************************************************************************
@procedure FilePrintSetup(Sender: TObject);

@description
  Opens a dialog where you can change the Printer setup.
*******************************************************************************)
procedure TfrmMain.FilePrintSetup(Sender: TObject);
begin
  PrintSetupDialog.Execute;
end;

(*******************************************************************************
@procedure FileExit(Sender: TObject);

@description
  Prompt to confirm the program termination.
*******************************************************************************)
procedure TfrmMain.FileExit(Sender: TObject);
var
  sButton : Integer;
begin
  MessageBeep(mb_IconHand);
  sButton := Application.MessageBox(
               'This will terminate your Baseline Calibration session.' +
                      #10 + 'Do you really want to exit?',
               'Baseline',
               mb_YesNo + mb_IconQuestion);
  if (sButton = IDYes) then
    Close;
end;

(*******************************************************************************
@procedure  HelpContents(Sender: TObject);

@description
  Invokes the help finder.
*******************************************************************************)
procedure TfrmMain.HelpContents(Sender: TObject);
begin
  Application.HelpCommand(HELP_FINDER, 0);
end;

(*******************************************************************************
@procedure HelpSearch(Sender: TObject);

@description
  Invokes the help finder for a partial key search.
*******************************************************************************)
procedure TfrmMain.HelpSearch(Sender: TObject);
const
  EmptyString: PChar = '';
begin
  Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;

(*******************************************************************************
@procedure mnuEditInstrumentsClick(Sender: TObject);

@description
Opens the EDM Instrument form where you can create/delete and
edit EDM instruments, makes and models.
*******************************************************************************)
procedure TfrmMain.mnuEditInstrumentsClick(Sender: TObject);
begin
  frmInstrument.ShowModal;
end;

procedure TfrmMain.tmrStatusMessageTimer(Sender: TObject);
begin
  tmrStatusMessage.Enabled := False;
  pnlStatusMessage.Caption := '';
end;

(*******************************************************************************
@procedure mnuEditBaselinesClick(Sender: TObject);

@description
Opens the Baseline form where you can create/delete/edit and archive baselines.
*******************************************************************************)
procedure TfrmMain.mnuEditBaselinesClick(Sender: TObject);
begin
  frmBaseline.ShowModal;
end;

(*******************************************************************************
@procedure mnuEditEllipsoidsClick(Sender: TObject);

@description
Opens a form  where you can create,delete and edit the ellipsoidal parameters.
These parameters are used in the program for geometric corrections.
*******************************************************************************)
procedure TfrmMain.mnuEditEllipsoidsClick(Sender: TObject);
begin
  frmEllipsoid.ShowModal;
end;

(*******************************************************************************
@procedure mnuEditJobsClick(Sender: TObject);

@description
Opens a wizard which guides you in calibrating an EDM instrument or Baseline.
*******************************************************************************)
procedure TfrmMain.mnuEditJobsClick(Sender: TObject);
begin
  frmJob.ShowModal;
end;

(*******************************************************************************
@procedure sbtnEditJobsClick(Sender: TObject);

@description
Opens a wizard which guides you in calibrating an EDM instrument or Baseline.
*******************************************************************************)
procedure TfrmMain.sbtnEditJobsClick(Sender: TObject);
begin
  aDefault.StdDevPillarRL := 0.0002;
  aDefault.StdDevDistanceReading := 0.0002;
  frmJob.canCalibrateBaseline := Security.isRegistered;
  frmJob.isWARestrictedVersion := isWARestrictedVersion;
  frmJob.ShowModal;
end;

(*******************************************************************************
@procedure sbtnEditInstrumentsClick(Sender: TObject);

@description
Opens the EDM Instrument form where you can create/delete and
edit EDM instruments, makes and models.
*******************************************************************************)
procedure TfrmMain.sbtnEditInstrumentsClick(Sender: TObject);
begin
  frmInstrument.ShowModal;
end;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  1. Checks the security access.
  2. Downloads the Baseline Database.
*******************************************************************************)
procedure TfrmMain.FormShow(Sender: TObject);
var
  strPassword: String;
begin
  hasAgreed := False;
  hasSampleJobs := False;
  isWARestrictedVersion := False;
  sbtnEditBaseline.Enabled := False;
  sbtnEllipsoid.Enabled := False;
  sbtnDistribute.Enabled := False;
  Security.isRegistered := False;

  mnuEditBaselines.Enabled := False;
  mnuEditEllipsoids.Enabled := False;
  mnuDistribute.Enabled := False;
  // Get the version number from the Version info ,ie, Project|Options
  with TVersionInfo.Create( Application.ExeName) do
  begin
    strVersionNumber := 'Version '+FileVersion;
    strVersionNumberDate := strVersionNumber + ', ' + FormatDateTime( 'dd-mmmm-yyyy', VerFileDate);
    Free;
  end;

  rxAlias :=  ExtractFilePath(Application.ExeName)+ 'Database\';
  if not DirectoryExists(rxAlias) then
  begin
    if not CreateDir(rxAlias) then
      rxAlias := ExtractFilePath(Application.ExeName);
  end;
// Register
  isDLI := False;
  canCalibrateBaseline := False;
  with dmBase.rxSecurity do
  begin
    Active := True;
    dmBase.LoadFromTextFileToTable(dmBase.rxSecurity);
    if RecordCount > 0 then
    begin
      First;
      strPassword := FieldByName('Password').AsString;
    end;
  end;
  strPassword := Uppercase(strPassword);

  if strPassWord = 'DLI2003WARESTRICTEDVERSION' then
  begin
    isWARestrictedVersion := True;
    isDLI := True;
    if dmBase.rxSecurity.FieldByName('isFirstTimeUser').AsBoolean then
    begin
      CreateJobXFiles;         // does not overwrite existing jobs
      UpdateInstruments;
      UpdateBaseline;
      hasSampleJobs := True;
    end;
  end;
  if strPassWord = 'DLI2003WAFULLVERSION' then
  begin
    isDLI := True;
    canCalibrateBaseline := True;
  end;

  if strPassWord = 'DLI2003FULLVERSION' then
  begin
    canCalibrateBaseline := True;
    isDLI := False;
    if dmBase.rxSecurity.FieldByName('isFirstTimeUser').AsBoolean then
    begin
      CreateBaselineXFiles;      // does not overwrite existing baselines
      CreateJobXFiles;           // does not overwrite existing jobs
      UpdateInstruments;
      hasSampleJobs := True;
    end;
  end;

  if strPassWord = 'DLI2003RESTRICTEDVERSION' then
  begin
    isDLI := False;
    canCalibrateBaseline := False;
    if dmBase.rxSecurity.FieldByName('isFirstTimeUser').AsBoolean then
    begin
      UpdateInstruments;
      UpdateBaseline;
    end;
  end;

  // download new disclaimer, copyright and about information for first time user.
  // Do not overwrite existing work instructions
  if not (strPassWord = 'DLI2003FULLVERSION') then
    CreateMethodXFiles;  // does nor overwrite Work instructions for EDM calibrations

  dmBase.LoadFromTextFileToTable(dmBase.rxMethod); // Download Method Table 'rxMethod' from database file if this file exists.
  dmBase.InitMethodTable(dmBase.rxMethod, isDLI, Security.isRegistered); // default values if table rxMethod isEmpty
  dmBase.InitAccreditationTable(dmBase.rxMethod); // Appends Accreditation records with blank descriptions if no accreditation records exist.
  dmBase.InitLegalTraceabilityTable(dmBase.rxMethod); // Appends Traceability records with blank descriptions if no traceability records exist.
  InitAccreditation; // Save Default Baseline Accreditation Description if this Description is Null
  InitLegalTraceability;  // Save Default Legal Traceability Description if this Description is Null

  if (strPassWord = 'DLI2003FULLVERSION') and (dmBase.rxSecurity.FieldByName('isFirstTimeUser').AsBoolean) then
    DownloadVADisclaimer; // download the disclaimer, copyright and about information into rxMethod
                          // First time VA user only

  // Opens all database tables
  doEvent := False;
  dmBase.rxUncertaintyEDM.Active := True;
  dmBase.rxUncertaintyBaseline.Active := True;
  dmBase.LoadFromTextFileToTable(dmBase.rxWindow);
  dmBase.LoadFromTextFileToTable(dmBase.rxUncertaintyEDM);
  dmBase.LoadFromTextFileToTable(dmBase.rxUncertaintyBaseline);

  dmBase.LoadFromTextFileToTable(dmBase.rxDefault);
  dmBase.LoadFromTextFileToTable(dmBase.rxEllipsoid);
  dmBase.LoadFromTextFileToTable(dmBase.rxBaseline);
  dmBase.LoadFromTextFileToTable(dmBase.rxBaselineAccuracy);
  dmBase.LoadFromTextFileToTable(dmBase.rxDistance);
  dmBase.LoadFromTextFileToTable(dmBase.rxPillar);
  dmBase.LoadFromTextFileToTable(dmBase.rxJob);

  if not dmBase.rxSecurity.FieldByName('isFirstTimeUser').AsBoolean then
  begin
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrument);
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentModel);
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentMake);
    sNextMakeID := dmBase.SortTable(dmBase.rxInstrumentMake,'MakeID','MakeName');
    sNextModelID := dmBase.SortTable(dmBase.rxInstrumentModel,'ModelID','ModelName');
  end;

  CleanInstrumentTable;

  if hasSampleJobs and dmBase.rxSecurity.FieldByName('isFirstTimeUser').AsBoolean then
    CheckInstrumentsInJobs;

  dmBase.LoadFromTextFileToTable(dmBase.rxJMeasure);
  dmBase.LoadFromTextFileToTable(dmBase.rxEDMObs);
  dmBase.LoadFromTextFileToTable(dmBase.rxStandard);

  with dmBase.rxStandard do
  begin
    if Locate('Type','F',[]) and (FieldByName('Description').AsString <> 'LUM') then
    begin
      Edit;
      FieldByName('Description').AsString := 'LUM';
      Post;
    end;
    if Locate('Type','G',[]) and (FieldByName('Description').AsString <> 'LUM') then
    begin
      Edit;
      FieldByName('Description').AsString := 'LUM';
      Post;
    end;
    {
    loop through all records and set default for LUMUnits if empty
    }
    First;
    while not Eof do
    begin
      if FieldByName('LUMUnits').AsString='' then
      begin
        Edit;
        FieldByName('LUMUnits').AsString := '2';
        Post;
      end;
      Next;
    end;
  end;

  dmBase.LoadFromTextFileToTable(dmBase.rxDistribution);
  dmBase.LoadFromTextFileToTable(dmBase.rxBaselineDefault);
  dmBase.CleanBaselineDefaults;

  CheckLogos;

  UpDateJMeasure;

  dmBase.InitUncertaintyTables;
  doEvent := True;

  UpdateBaselineAccuracyTable;

  dmbase.rxJob.Last;
  frmAbout.lblVersion.Caption := 'Application '+strVersionNumberDate;
  frmAbout.lblVersion.Top := 165;
  frmAbout.lblDistributionVersion.Visible := False;

  if canCalibrateBaseline then
  begin
    Security.isRegistered := True;
    sbtnEditBaseline.Enabled := True;
    sbtnEllipsoid.Enabled := True;
    sbtnDistribute.Enabled := True;
    mnuDistribute.Enabled := True;
    mnuEditBaselines.Enabled := True;
    mnuEditEllipsoids.Enabled := True;
  end
  else
  begin
    if (not canCalibrateBaseline) then
    begin
      with dmBase.rxSecurity do
      begin
        if RecordCount > 0 then
        begin
          if FieldByName('DistributionVersion').isNull or
            (FieldByName('DistributionVersion').AsString = '') then
            frmAbout.lblDistributionVersion.Visible := False
          else
          begin
            frmAbout.lblDistributionVersion.Visible := True;
            strVersionNumberDate := 'Distribution Version '+FieldByName('DistributionVersion').AsString+ '.0, '
            +FormatDateTime( 'dd-mmmm-yyyy', FieldByName('DistributionDate').AsDateTime);
            frmAbout.lblDistributionVersion.Caption := strVersionNumberDate;
            frmAbout.lblVersion.Top := 148;
          end;
        end
        else
          frmAbout.lblDistributionVersion.Visible := False;
      end;
    end;
  end;

  dmBase.InitDefaultTable(dmBase.rxDefault);
  dmBase.InitStandardTable(dmBase.rxStandard);
  with dmBase.rxDefault do
  begin
    if Locate('Description','Coverage Factor',[]) then
      dCoverageFactor := FieldByName('Default').AsFloat
    else
      dCoverageFactor := 2; // VA Handbook;
  end;

  if isDLI and not Security.isRegistered then
    frmAbout.lblDescription.Caption := 'Calibration of EDM instruments against standard baselines in Western Australia.'
  else
  if isDLI and Security.isRegistered then
    frmAbout.lblDescription.Caption := 'Calibration of EDM instruments and baselines. (Landgate Version)'
  else
  if not isDLI and Security.isRegistered then
    frmAbout.lblDescription.Caption := 'Calibration of EDM instruments and baselines.'
  else
  if not isDLI and not Security.isRegistered then
    frmAbout.lblDescription.Caption := 'Calibration of EDM instruments against standard baselines.';

  frmAbout.lblAuthority.Visible := False;

  InitialiseCopyRight;    //Initialise default copyright statements if not in database
  LoadCopyRight;     //Load copyright and enquiry statements to About box
  // DLI is the Authority default
  if isDLI then
    AddAuthorityDefault;  //Initialise default software authority name if not in database

  GetAboutLogo;  // Get about logo from database
  frmAbout.ShowModal;

  if dmBase.rxSecurity.FieldByName('isFirstTimeUser').AsBoolean then
  begin
    GetDisclaimer;
    frmDisclaimer.ShowModal;
    if hasAgreed then
    begin
      with dmBase.rxSecurity do
      begin
        First;
        Edit;
        FieldByName('isFirstTimeUser').AsBoolean := False;
        Post;
      end;
    end
    else
      Close;
  end;

  with dmBase.rxDefault do
  begin
    if not Locate('Description','Reference Refractive Index',[]) then
    begin
      Append;
      FieldByName('Description').AsString := 'Reference Refractive Index';
      FieldByName('Default').AsFloat := 1.000280;
      Post;
    end;
  end;

  hasAgreed := True;
  OpenWindow;
end;

(*******************************************************************************
@procedure TileCanvas(aCanvas : TCanvas; aBitmap : TBitmap; sTopOffset : Integer);

@description
   A general purpose function which tiles a canvas with a bitmap
*******************************************************************************)
procedure TfrmMain.TileCanvas(aCanvas : TCanvas; aBitmap : TBitmap; sTopOffset : Integer);
var
  Rect : TRect;
begin
  Rect.Top := sTopOffset;
  Rect.Bottom := aBitmap.Height + sTopOffSet - 1;
  Rect.Left := 0;
  Rect.Right := aBitmap.Width - 1;
  aCanvas.CopyMode := cmSrcCopy;

  while Rect.Left < Screen.Width do
  begin
    while Rect.Top < Screen.Height do
    begin
      aCanvas.CopyRect(Rect, aBitmap.Canvas, aBitmap.Canvas.ClipRect);
      Rect.Top := Rect.Top + aBitmap.Height - 1;
      Rect.Bottom := Rect.Bottom + aBitmap.Height;
    end;

    Rect.Top := sTopOffset;
    Rect.Bottom := aBitmap.Height + sTopOffSet - 1;
    Rect.Left := Rect.Left + aBitmap.Width - 1;
    Rect.Right := Rect.Right + aBitmap.Width;
  end;
end;

(*******************************************************************************
@procedure FormPaint(Sender: TObject);

@description
  This method tiles the main window canvas with the Tape shadow bitmap.
*******************************************************************************)
procedure TfrmMain.FormPaint(Sender: TObject);
var
  bmpTile : TBitmap;
begin
  bmpTile := TBitmap.Create;
  bmpTile.LoadFromResourceName(HInstance, 'BASELINETILE');

  { Tile main window canvas with the Gesmar shadow bitmap }
  TileCanvas(Canvas, bmpTile, Speedbar.Height);
  bmpTile.Free;
end;

(*******************************************************************************
@procedure sbtnEditBaselineClick(Sender: TObject);

@description
Opens the Baseline form where you can create/delete/edit and archive baselines.
*******************************************************************************)
procedure TfrmMain.sbtnEditBaselineClick(Sender: TObject);
begin
  frmBaseline.ShowModal;
end;

(*******************************************************************************
@procedure sbtnEllipsoidClick(Sender: TObject);

@description
Opens a form  where you can create,delete and edit the ellipsoidal parameters.
These parameters are used in the program for geometric corrections.
*******************************************************************************)
procedure TfrmMain.sbtnEllipsoidClick(Sender: TObject);
begin
  frmEllipsoid.ShowModal;
end;

(*******************************************************************************
@procedure mnuHelpAboutClick(Sender: TObject);

@description
   Opens the About form.
*******************************************************************************)
procedure TfrmMain.mnuHelpAboutClick(Sender: TObject);
begin
  LoadCopyRight;
  GetAboutLogo;  // Get about logo from database
  frmAbout.ShowModal;
end;

(*******************************************************************************
@procedure sbtnEditBaselineClick(Sender: TObject);

@description
  Opens the 'Set Defaults' form where you can edit the default settings.
*******************************************************************************)
procedure TfrmMain.sbtnDefaultClick(Sender: TObject);
begin
  if (not canCalibrateBaseline) or (not isDLI) then
    frmDefaults.tsAbout.TabVisible := False;

  frmDefaults.tsAuthority1.TabVisible := canCalibrateBaseline;
  frmDefaults.canCalibrateBaseline := canCalibrateBaseline;
  frmDefaults.isWARestrictedVersion := isWARestrictedVersion;
  frmDefaults.isDLI := isDLI;
  frmDefaults.ShowModal;
end;

(*******************************************************************************
@procedure FormClose(Sender: TObject; var Action: TCloseAction);

@description
  Saves all modified tables to the Baseline Database.
*******************************************************************************)
procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmBase.SaveTableToTextFile(dmBase.rxUncertaintyEDM);
  dmBase.SaveTableToTextFile(dmBase.rxUncertaintyBaseline);
  dmBase.SaveTableToTextFile(dmBase.rxBaselineDefault);
  dmBase.SaveTableToTextFile(dmBase.rxBaselineAccuracy);
  dmBase.SaveTableToTextFile(dmBase.rxMethod);
  SaveWindow;
  dmBase.SaveTableToTextFile(dmBase.rxWindow);
  dmBase.SaveTableToTextFile(dmBase.rxDefault);
  dmBase.SaveTableToTextFile(dmBase.rxBaseline);
  dmBase.SaveTableToTextFile(dmBase.rxEllipsoid);
  dmBase.SaveTableToTextFile(dmBase.rxDistance);
  dmBase.SaveTableToTextFile(dmBase.rxPillar);
  dmBase.SaveTableToTextFile(dmBase.rxJob);
  dmBase.SaveTableToTextFile(dmBase.rxInstrument);
  dmBase.SaveTableToTextFile(dmBase.rxInstrumentModel);
  dmBase.SaveTableToTextFile(dmBase.rxInstrumentMake);
  dmBase.SaveTableToTextFile(dmBase.rxJMeasure);
  dmBase.SaveTableToTextFile(dmBase.rxEDMObs);

  with dmBase.rxStandard do
  begin
    if Locate('Type','F',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := 'LUM';
      Post;
    end;
    if Locate('Type','G',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := 'LUM';
      Post;
    end;
  end;
  dmBase.SaveTableToTextFile(dmBase.rxStandard);

  with dmBase.rxBaseline do
  begin
    if recordcount > 0 then
    begin
      Last;
      dmBase.rxSecurity.First;
      dmBase.rxSecurity.Edit;
      dmBase.rxSecurity.FieldByName('DistributionAuthority').Value := FieldByName('BaselineAuthority').Value;
      dmBase.rxSecurity.Post;
    end;
  end;
  dmBase.SaveTableToTextFile(dmBase.rxSecurity);
  dmBase.SaveTableToTextFile(dmBase.rxDistribution);
end;

(*******************************************************************************
@procedure UpdateBaselineAccuracyTable;

@description
  Updates the uncertainties of all baselines as computed from the last calibration.
*******************************************************************************)
procedure TfrmMain.UpdateBaselineAccuracyTable;
var
  dUncertaintyConstant, dUncertaintyScale: Double;
  sBaselineID :Integer;
begin
  with dmBase.rxBaseline do
  begin
    First;
    while not EOF do
    begin
      sBaselineID := FieldByName('BaselineID').AsInteger;
      if not dmBase.rxBaselineAccuracy.Locate('BaselineID',IntToStr(sBaseLineID),[]) then
      begin
        dmBase.FilterDistance(sBaselineID);
        dmBase.ComputeBaselineAccuracy(dmBase.rxFilteredDistance, dUncertaintyConstant, dUncertaintyScale);

        dmBase.rxBaselineAccuracy.Append;
        dmBase.rxBaselineAccuracy.FieldByName('BaselineID').AsInteger := sBaselineID;
        dmBase.rxBaselineAccuracy.FieldByName('UncertaintyConstant').AsFloat := dUncertaintyConstant;
        dmBase.rxBaselineAccuracy.FieldByName('UncertaintyScale').AsFloat    := dUncertaintyScale;
        dmBase.rxBaselineAccuracy.Post
      end;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure UpdateJMeasure;

@description
   Updates the Wet Temp and Humidity fields in the rxJMeasure table.
*******************************************************************************)
procedure TfrmMain.UpdateJMeasure;
begin
  with dmBase.rxJMeasure do
  begin
   First;
   while not EOF do
   begin
     if FieldByName('MeasHumidityType').AsString = 'W' then
     begin
       Edit;
       FieldByName('WetTemp').Value := FieldByName('MeasHumidity').Value;
       Post;
     end;
     if FieldByName('MeasHumidityType').AsString = 'R' then
     begin
       Edit;
       FieldByName('Humidity').Value := FieldByName('MeasHumidity').Value;
       Post;
     end;
     Next;
   end;
  end;
end;


(*******************************************************************************
@procedure sbtnDistributeClick(Sender: TObject);

@description
  A wizard guides you in distributing restricted versions of the baseline software
  and database to external users.

*******************************************************************************)
procedure TfrmMain.sbtnDistributeClick(Sender: TObject);
begin
  if not dmBase.rxBaseline.Locate('BaselineArchiveFlag','C',[]) then
  begin
    MessageDlg('You must first create a new Baseline before you can distribute this program to other users.'#10+#10+
    'Click on the ''Edit/Create Baselines'' button on the main panel.',mtWarning,[mbOK],0);
    Exit;
  end
  else
  begin
    frmDistribute.isDLI := isDLI;
    frmDistribute.ShowModal;
  end;
end;

(*******************************************************************************
@procedure CheckLogos;

@description
  Locates the logo files in the application folder.
*******************************************************************************)
procedure TfrmMain.CheckLogos;
var
  strLogoFile: String;
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Accreditation Logo',[]) then
    begin
      strLogoFile := FieldByName('Description').AsString;
      if not FileExists(strLogoFile) then
      begin
        strLogoFile := ExtractFileName(strLogoFile);
        strLogoFile := ExtractFilePath(Application.ExeName)+ strLogoFile;
        if FileExists(strLogoFile) then
        begin
          Edit;
          FieldByName('Description').AsString := strLogoFile;
          Post;
        end;
      end;
    end;
    if Locate('Method','Authority Logo',[]) then
    begin
      strLogoFile := FieldByName('Description').AsString;
      if not FileExists(strLogoFile) then
      begin
        strLogoFile := ExtractFileName(strLogoFile);
        strLogoFile := ExtractFilePath(Application.ExeName)+ strLogoFile;
        if FileExists(strLogoFile) then
        begin
          Edit;
          FieldByName('Description').AsString := strLogoFile;
          Post;
        end
        else
        begin
          strLogoFile := ExtractFilePath(Application.ExeName)+ 'Authority.bmp';
          if FileExists(strLogoFile) then
          begin
            Edit;
            FieldByName('Description').AsString := strLogoFile;
            Post;
          end;
        end;
      end;
    end;

    if Locate('Method','Quality Logo',[]) then
    begin
      strLogoFile := FieldByName('Description').AsString;
      if not FileExists(strLogoFile) then
      begin
        strLogoFile := ExtractFileName(strLogoFile);
        strLogoFile := ExtractFilePath(Application.ExeName)+ strLogoFile;
        if FileExists(strLogoFile) then
        begin
          Edit;
          FieldByName('Description').AsString := strLogoFile;
          Post;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure CreateJobXFiles;

@description
  Downloads sample jobs without overwriting existing jobs.
*******************************************************************************)
procedure TfrmMain.CreateJobXFiles;
var
  strFile1, strFile2: String;
begin
  strFile1 := rxAlias + 'rxJob.db';
  if not FileExists(strFile1) then
  begin
    strFile2 := rxAlias +'rxJobX.db';
    if FileExists(strFile2) then
    begin
      RenameFile(strFile2, strFile1);
      strFile1 := rxAlias + 'rxJMeasure.db';
      if not FileExists(strFile1) then
      begin
        strFile2 := rxAlias +'rxJMeasureX.db';
        if FileExists(strFile2) then
        begin
          RenameFile(strFile2, strFile1);
          strFile1 := rxAlias + 'rxEDMObs.db';
          if not FileExists(strFile1) then
          begin
            strFile2 := rxAlias +'rxEDMObsX.db';
            if FileExists(strFile2) then
              RenameFile(strFile2, strFile1);
          end;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure CreateInstrumentXFiles;

@description
  Downloads new instruments without overwriting existing instruments.
*******************************************************************************)
procedure TfrmMain.CreateInstrumentXFiles;
var
  strFile1, strFile2: String;
begin
  strFile1 := rxAlias + 'rxInstrumentMake.db';
  if not FileExists(strFile1) then
  begin
    strFile2 := rxAlias +'rxInstrumentMakeX.db';
    if FileExists(strFile2) then
    begin
      RenameFile(strFile2, strFile1);
      strFile1 := rxAlias + 'rxInstrumentModel.db';
      if not FileExists(strFile1) then
      begin
        strFile2 := rxAlias +'rxInstrumentModelX.db';
        if FileExists(strFile2) then
        begin
          RenameFile(strFile2, strFile1);
          strFile1 := rxAlias + 'rxInstrument.db';
          if not FileExists(strFile1) then
          begin
            strFile2 := rxAlias +'rxInstrumentX.db';
            if FileExists(strFile2) then
              RenameFile(strFile2, strFile1);
          end;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure CreateBaselineXFiles;

@description
  Updates the baselines without deleting the existing information.
*******************************************************************************)
procedure TfrmMain.CreateBaselineXFiles;
var
  strFile1, strFile2: String;
begin
  strFile1 := rxAlias + 'rxBaseline.db';
  if not FileExists(strFile1) then
  begin
    strFile2 := rxAlias +'rxBaselineX.db';
    if FileExists(strFile2) then
    begin
      RenameFile(strFile2, strFile1);
      strFile1 := rxAlias + 'rxPillar.db';
      if not FileExists(strFile1) then
      begin
        strFile2 := rxAlias +'rxPillarX.db';
        if FileExists(strFile2) then
        begin
          RenameFile(strFile2, strFile1);
          strFile1 := rxAlias + 'rxDistance.db';
          if not FileExists(strFile1) then
          begin
            strFile2 := rxAlias +'rxDistanceX.db';
            if FileExists(strFile2) then
              RenameFile(strFile2, strFile1);
          end;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure SaveWindow;

@description
  Save the current size and location of the form
*******************************************************************************)
procedure TfrmMain.SaveWindow;
var
  dDefault: Double;
begin
  if frmMain.WindowState = wsNormal then
    dDefault := 1
  else
    dDefault := 0;

  with dmBase.rxWindow do
  begin
    if Locate('Description','WindowState',[]) then
    begin
      Edit;
      FieldByName('Default').AsFloat := dDefault;
      Post;
    end
    else
    begin
      Append;
      FieldByName('Description').AsString := 'WindowState';
      FieldByName('Default').AsFloat := dDefault;
      Post;
    end;
    if dDefault = 1 then
    begin
      if Locate('Description','WindowTop',[]) then
      begin
        Edit;
        FieldByName('Default').AsFloat := frmMain.Top;
        Post;
      end
      else
      begin
        Append;
        FieldByName('Description').AsString := 'WindowTop';
        FieldByName('Default').AsFloat := frmMain.Top;
        Post;
      end;

      if Locate('Description','WindowLeft',[]) then
      begin
        Edit;
        FieldByName('Default').AsFloat := frmMain.Left;
        Post;
      end
      else
      begin
        Append;
        FieldByName('Description').AsString := 'WindowLeft';
        FieldByName('Default').AsFloat := frmMain.Left;
        Post;
      end;

      if Locate('Description','WindowWidth',[]) then
      begin
        Edit;
        FieldByName('Default').AsFloat := frmMain.Width;
        Post;
      end
      else
      begin
        Append;
        FieldByName('Description').AsString := 'WindowWidth';
        FieldByName('Default').AsFloat := frmMain.Width;
        Post;
      end;

      if Locate('Description','WindowHeight',[]) then
      begin
        Edit;
        FieldByName('Default').AsFloat := frmMain.Height;
        Post;
      end
      else
      begin
        Append;
        FieldByName('Description').AsString := 'WindowHeight';
        FieldByName('Default').AsFloat := frmMain.Height;
        Post;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure OpenWindow;

@description
  The size and location of the form will the same as the last time when you closed the program.
*******************************************************************************)
procedure TfrmMain.OpenWindow;
var
  dDefault: Double;
begin
  dDefault := 0;
  with dmBase.rxWindow do
  begin
    if Locate('Description','WindowState',[]) then
      dDefault := FieldByName('Default').AsFloat;

    if dDefault = 0 then
      frmMain.WindowState := wsMaximized
    else
      frmMain.WindowState := wsNormal;

    if dDefault = 1 then
    begin
      frmMain.Top := 10;
      frmMain.Left := 10;
      frmMain.Width := 500;
      frmMain.Height := 300;
      if Locate('Description','WindowTop',[]) then
        frmMain.Top := Round(FieldByName('Default').AsFloat);

      if Locate('Description','WindowLeft',[]) then
        frmMain.Left := Round(FieldByName('Default').AsFloat);

      if Locate('Description','WindowWidth',[]) then
        frmMain.Width := Round(FieldByName('Default').AsFloat);

      if Locate('Description','WindowHeight',[]) then
        frmMain.Height := Round(FieldByName('Default').AsFloat);
    end;
  end;
end;

(*******************************************************************************
@procedure DisclaimerCopyRight1Click(Sender: TObject);

@description
  1. DLI user can edit the disclaimer and copyright statements.
  2. Other Verifying authorities can view either view the disclaimer and copyright statements.
*******************************************************************************)
procedure TfrmMain.DisclaimerCopyRight1Click(Sender: TObject);
begin

  GetDisclaimer;

  if isDLI and canCalibrateBaseline then
  begin
    frmDisclaimer.memDisclaimer.ReadOnly := False;
    frmDisclaimer.memCopyRight.ReadOnly := False;
    frmDisclaimer.memDisclaimer.Color := clWindow;
    frmDisclaimer.memCopyRight.Color := clWindow;
  end
  else
  begin
    frmDisclaimer.memDisclaimer.Color := clBtnFace;
    frmDisclaimer.memDisclaimer.ReadOnly := True;
    frmDisclaimer.memCopyRight.Color := clBtnFace;
    frmDisclaimer.memCopyRight.ReadOnly := True;
  end;

  frmDisclaimer.ShowModal;

  if isDLI and canCalibrateBaseline then
    SaveDisclaimer;

end;

(*******************************************************************************
@procedure InitAccreditation;

@Description
  Save Default Baseline Accreditation Description if this Description is Null
*******************************************************************************)
procedure TfrmMain.InitAccreditation;
var
  doContinue: Boolean;
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Baseline Accreditation Statement',[]) then
    begin
      doContinue := False;
      if FieldByName('Description').IsNull then
        doContinue := True
      else
      if (Trim(FieldByName('Description').AsString) = '') then
        doContinue := True;

      if doContinue then
      begin
        Edit;
        if isDLI then
        begin
          FieldByName('description').AsString :=
          'The tests, calibration or measurements covered by this document have been performed '+
          'in accordance with the NATA requirements which include the requirements of '+
          'ISO/IEC 17025 and are traceable to Australian national standards for measurements. '+
          'This document shall not be produced, except in full.';
        end
        else
        begin
          FieldByName('description').AsString :=
          'The tests, calibration or measurements covered by this document have been performed '+
          'according to Accreditation requirements and are traceable to Australian national '+
          'standards for measurements. '+
          'This document shall not be produced, except in full.';
        end;
        Post;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure InitLegalTraceability;

@Description
  Save Default Traceability Description if this Description is Null
*******************************************************************************)
procedure TfrmMain.InitLegalTraceability;
var
  doContinue: Boolean;
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Legal Traceability',[]) then
    begin
      doContinue := False;
      if FieldByName('Description').IsNull then
        doContinue := True
      else
      if (Trim(FieldByName('Description').AsString) = '') then
        doContinue := True;

      if doContinue then
      begin
        Edit;
        FieldByName('description').AsString :=
                 'To obtain a regulation 13 Certificate for the purpose of legal traceability'+
                 ' to the Australian standard of length contact the Verifying Authority'+
                 ' responsible for length measurements in your State or Territory.';
        Post;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure CreateMethodXFiles;

@description
  Downloads new methods without overwriting existing methods.
*******************************************************************************)
procedure TfrmMain.CreateMethodXFiles;
var
  strFile1, strFile2: String;
  strEDMProcedure: String;
begin
  strEDMProcedure := '';
  strFile1 := rxAlias + 'rxMethod.db';
  strFile2 := rxAlias +'rxMethodX.db';

  if FileExists(strFile2) then
  begin
    if FileExists(strFile1) then
    begin
      dmBase.LoadFromTextFileToTable(dmBase.rxMethod);
      if dmBase.rxMethod.Locate('Method','EDM Instrument Calibration Procedure',[]) then
      begin
        if not ((dmBase.rxMethod.FieldByName('Description').isNull) or
                (dmBase.rxMethod.FieldByName('Description').AsString = '')) then
          strEDMProcedure := dmBase.rxMethod.FieldByName('Description').AsString;
      end;

      RenameFile(strFile2, strFile1);
      dmBase.LoadFromTextFileToTable(dmBase.rxMethod);
      if strEDMProcedure <> '' then
      begin
        if dmBase.rxMethod.Locate('Method','EDM Instrument Calibration Procedure',[]) then
        begin
          dmBase.rxMethod.Edit;
          dmBase.rxMethod.FieldByName('Description').AsString := strEDMProcedure;
          dmBase.rxMethod.Post;
        end;
      end;
    end
    else
      RenameFile(strFile2, strFile1);
  end;
end;


(*******************************************************************************
@procedure UpdateBaseline;

@description
  Downloads the new certified baseline distances. Archives the previous baseline distances.
*******************************************************************************)
procedure TfrmMain.UpdateBaseline;
var
  strFile: String;
  doUpdateBaseline: Boolean;
  hasLocatedBaseline: Boolean;
  doInsertBaseline: Boolean;
  doDeleteBaseline: Boolean;
  sBaselineID: Integer;
  strBaselineName: String;
  strBaselineDate: String;
  sPillarID: Integer;
begin
  doUpdateBaseline := False;
  strFile := rxAlias + 'rxBaseline.db';
  if FileExists(strFile) then
  begin
    strFile := rxAlias + 'rxPillar.db';
    if FileExists(strFile) then
    begin
      strFile := rxAlias + 'rxDistance.db';
      if FileExists(strFile) then
        doUpdateBaseline := True;
    end;
  end;

  dmBase.rxBaseline.Active := True;
  dmBase.rxBaselineAccuracy.Active := True;
  dmBase.rxDistance.Active := True;
  dmBase.rxPillar.Active := True;
  dmBase.rxBaselineX.Active := True;
  dmBase.rxBaselineAccuracyX.Active := True;
  dmBase.rxPillarX.Active := True;
  dmBase.rxDistanceX.Active := True;

  dmBase.LoadFromTextFileToTable(dmBase.rxBaselineX);
  dmBase.LoadFromTextFileToTable(dmBase.rxBaselineAccuracyX);
  dmBase.LoadFromTextFileToTable(dmBase.rxBaselineDefaultX);
  dmBase.LoadFromTextFileToTable(dmBase.rxPillarX);
  dmBase.LoadFromTextFileToTable(dmBase.rxDistanceX);

  // User has already got a database
  if doUpdateBaseline then
  begin
    dmBase.LoadFromTextFileToTable(dmBase.rxBaseline);
    dmBase.LoadFromTextFileToTable(dmBase.rxBaselineAccuracy);
    dmBase.LoadFromTextFileToTable(dmBase.rxBaselineDefault);
    dmBase.LoadFromTextFileToTable(dmBase.rxDistance);
    dmBase.LoadFromTextFileToTable(dmBase.rxPillar);
    dmBase.LoadFromTextFileToTable(dmBase.rxJob);
    with dmBase.rxBaselineX do
    begin
      First;
      while not EOF do
      begin
        hasLocatedBaseline := False;
        if FieldByName('BaselineArchiveFlag').AsString = 'C' then
        begin
          strBaselineName := FieldByName('BaselineName').AsString;
          strBaselineDate := FieldByName('BaselineCalibrationDate').AsString;
          dmBase.rxBaseline.First;
          while not dmBase.rxBaseline.EOF do
          begin
            doDeletebaseline := False;
            if (dmBase.rxBaseline.FieldByName('BaselineArchiveFlag').AsString = 'C') then
            begin
              // Version 5.4.0.7  Jan-2006: All versions of Baseline 'Curtin' must be archived
              if dmBase.rxBaseline.FieldByName('BaselineName').AsString = 'Curtin' then
              begin
                dmBase.rxBaseline.Edit;
                dmBase.rxBaseline.FieldByName('BaselineArchiveFlag').AsString := 'A';
                dmBase.rxBaseline.Post;
              end;
              // ---------  End of Amendment -------------
              if (dmBase.rxBaseline.FieldByName('BaselineName').AsString = strBaselineName) then
              begin
                hasLocatedBaseline := True;
                if (dmBase.rxBaseline.FieldByName('BaselineCalibrationDate').AsString <> strBaselineDate) then
                begin
                  sBaselineId := dmBase.rxBaseline.FieldByName('BaseLineId').AsInteger;
                  if UsedByJob(sBaselineID) then
                  begin
                    dmBase.rxBaseline.Edit;
                    dmBase.rxBaseline.FieldByName('BaselineArchiveFlag').AsString := 'A';
                    dmBase.rxBaseline.Post;
                  end
                  else
                    doDeleteBaseline := True;
                end;
              end;
            end;

            if doDeleteBaseline then
              DeleteBaseline
            else
              dmBase.rxBaseline.Next;
          end;

          doInsertBaseline :=  not hasLocatedbaseline;

          if doInsertBaseline then
          begin
            with dmBase.rxBaseline do
            begin
              Last;
              sBaselineID := FieldByName('BaselineID').AsInteger+1;
            end;

            with dmBase.rxPillar do
            begin
              Last;
              sPillarID := FieldByName('PillarID').AsInteger+1;
            end;

            InsertBaseline(sBaselineID);
            InsertPillars(sBaselineID, sPillarID);
            InsertDistances(sBaselineID, sPillarID);
          end;
        end;

        Next;
      end;
    end;
  end
  else
  begin
    // First time user
    CopyBaselines;
    CopyPillars;
    CopyDistances;
  end;

  dmBase.SaveTableToTextFile(dmBase.rxBaseline);
  dmBase.SaveTableToTextFile(dmBase.rxBaselineAccuracy);
  dmBase.SaveTableToTextFile(dmBase.rxDistance);
  dmBase.SaveTableToTextFile(dmBase.rxPillar);
  dmBase.SaveTableToTextFile(dmBase.rxBaselineDefault);

end;

(*******************************************************************************
@function UsedByJob : Boolean;

@description
  Checks if a baseline has been used in a calibration job.
*******************************************************************************)
function TfrmMain.UsedByJob(sBaselineID: Integer): Boolean;
var
  hasJob: Boolean;
begin
  hasJob := False;
  with dmBase.rxJob do
  begin
    First;
    while not EOF and (not hasJob) do
    begin
      hasJob :=
        (FieldByName('BaselineID').AsInteger = sbaselineID) and
        (FieldByName('JobType').AsString = 'I');

      Next;
    end;
    Result := hasJob;
  end;
end;

(*******************************************************************************
@procedure InsertBaseline;

@description
  Inserts Baseline
*******************************************************************************)
procedure TfrmMain.InsertBaseline(sBaselineID: Integer);
var
  i, j: Integer;
  strFilteredFieldName: String;
  strFieldName: String;
begin
  with dmBase.rxBaselineX do
  begin
    dmBase.rxBaseline.Append;
    for i := 0 to FieldCount - 1 do
    begin
      j := 0;
      strFilteredFieldName := Uppercase(dmBase.rxBaseline.Fields[j].FieldName);
      strFieldName := Uppercase(Fields[i].FieldName);

      while (strFilteredFieldName <> strFieldName) and
            ( j < dmBase.rxBaseline.FieldCount-1) do
      begin
        Inc(j);
        strFilteredFieldName := Uppercase(dmBase.rxBaseline.Fields[j].FieldName);
      end;

      if strFilteredFieldName = strFieldName then
        dmBase.rxBaseline.Fields[j].Value := Fields[i].Value;
    end;

    dmBase.rxBaseline.FieldByName('BaselineID').AsInteger := sBaselineID;
    dmBase.rxBaseline.Post;
  end;

  with dmBase.rxBaselineAccuracyX do
  begin
    if Locate('BaselineID',dmBase.rxBaselineX.FieldByname('BaselineID').AsString,[]) then
    begin
      dmBase.rxBaselineAccuracy.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strFilteredFieldName := Uppercase(dmBase.rxBaselineAccuracy.Fields[j].FieldName);
        strFieldName := Uppercase(Fields[i].FieldName);

        while (strFilteredFieldName <> strFieldName) and
              ( j < dmBase.rxBaselineAccuracy.FieldCount-1) do
        begin
          Inc(j);
          strFilteredFieldName := Uppercase(dmBase.rxBaselineAccuracy.Fields[j].FieldName);
        end;

        if strFilteredFieldName = strFieldName then
          dmBase.rxBaselineAccuracy.Fields[j].Value := Fields[i].Value;
      end;
      dmBase.rxBaselineAccuracy.FieldByName('BaselineID').AsInteger := sBaselineID;
      dmBase.rxBaselineAccuracy.Post;
    end;
  end;

  with dmBase.rxBaselineDefaultX do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = dmBase.rxBaselineX.FieldByname('BaselineID').AsInteger then
      begin
        dmBase.rxBaselineDefault.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredFieldName := Uppercase(dmBase.rxBaselineDefault.Fields[j].FieldName);
          strFieldName := Uppercase(Fields[i].FieldName);

          while (strFilteredFieldName <> strFieldName) and
                ( j < dmBase.rxBaselineDefault.FieldCount-1) do
          begin
            Inc(j);
            strFilteredFieldName := Uppercase(dmBase.rxBaselineDefault.Fields[j].FieldName);
          end;

          if strFilteredFieldName = strFieldName then
            dmBase.rxBaselineDefault.Fields[j].Value := Fields[i].Value;
        end;
        dmBase.rxBaselineDefault.FieldByName('BaselineID').AsInteger := sBaselineID;
        dmBase.rxBaselineDefault.Post;
      end;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure InsertPillars(sBaselineId: Integer; sPillarID: Integer);

@description
  Appends pillar records from distribution table
*******************************************************************************)
procedure TfrmMain.InsertPillars(sBaselineId: Integer; sPillarID: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
begin
  with dmBase.rxPillarX do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineId').AsInteger = dmBase.rxBaselineX.FieldByName('BaselineId').AsInteger then
      begin
        dmBase.rxPillar.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(dmBase.rxPillar.Fields[j].FieldName);
          strField := uppercase(Fields[i].FieldName);
          while (strFilteredField <> strField) and
                 ( j < dmBase.rxPillar.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(dmBase.rxPillar.Fields[j].FieldName);
          end;

          if strFilteredField = strField then
            dmBase.rxPillar.Fields[j].Value := Fields[i].Value;
        end;
        dmBase.rxPillar.FieldByName('PillarID').AsInteger := sPillarID;
        dmBase.rxPillar.FieldByName('BaselineID').AsInteger := sBaselineID;
        dmBase.rxPillar.Post;
        Inc(sPillarID);
      end;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure InsertDistances( sBaselineId: Integer; sPillarID: Integer);

@description
  Appends baseline distances from distribution table
*******************************************************************************)
procedure TfrmMain.InsertDistances( sBaselineId: Integer; sPillarID: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
 sDistanceID: Integer;
 sPillarFromID, sPillarToID: Integer;
begin
  with dmBase.rxDistance do
  begin
    Last;
    sDistanceID := FieldByName('DistID').AsInteger+1;
  end;
  with dmBase.rxDistanceX do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineId').AsInteger = dmBase.rxBaselineX.FieldByName('BaselineId').AsInteger then
      begin
        dmBase.rxDistance.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(dmBase.rxDistance.Fields[j].FieldName);
          strField := uppercase(Fields[i].FieldName);
          while (strFilteredField <> strField) and
                 ( j < dmBase.rxDistance.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(dmBase.rxDistance.Fields[j].FieldName);
          end;

          if strFilteredField = strField then
            dmBase.rxDistance.Fields[j].Value := Fields[i].Value;
        end;
        sPillarFromID := sPillarID;
        sPillarToID := sPillarID+1;
        dmBase.rxDistance.FieldByName('DistID').AsInteger := sDistanceID;
        dmBase.rxDistance.FieldByName('BaselineID').AsInteger := sBaselineID;
        dmBase.rxDistance.FieldByName('PillarFromID').AsInteger := sPillarFromID;
        dmBase.rxDistance.FieldByName('PillarToID').AsInteger := sPillarToID;
        dmBase.rxDistance.Post;
        Inc(sDistanceID);
        Inc(sPillarID);
      end;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure DeleteBaseline;

@description
  Deletes a Baseline and all associated records in other tables
*******************************************************************************)
procedure TfrmMain.DeleteBaseline;
var
  sBaselineID: Integer;
begin
  sBaselineID := dmBase.rxBaseline.FieldByName('BaselineID').AsInteger;

  dmBase.rxBaseline.Delete;

  with dmBase.rxBaselineAccuracy do
    if Locate('BaselineID',IntToStr(sBaselineID),[]) then
      dmBase.rxBaselineAccuracy.Delete;

  with dmBase.rxPillar do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
        Delete
      else
        Next;
    end;
  end;

  with dmBase.rxDistance do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
        Delete
      else
        Next;
    end;
  end;

  with dmbase.rxBaselineAccuracy do
  begin
    if Locate('BaselineID',IntToStr(sBaselineID),[]) then
      Delete;
  end;
end;


(*******************************************************************************
@procedure CopyBaseline;

@description
  Inserts Baseline
*******************************************************************************)
procedure TfrmMain.CopyBaselines;
var
  i, j: Integer;
  strFieldNameFrom, strFieldNameTo: string;
begin
  dmBase.rxBaseline.EmptyTable;
  with dmBase.rxBaselineX do
  begin
    First;
    while not EOF do
    begin
      dmBase.rxBaseline.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strFieldNameFrom := Uppercase(Fields[i].FieldName);
        strFieldNameTo := Uppercase(dmbase.rxBaseline.Fields[j].FieldName);

        while (strFieldNameFrom <> strFieldNameTo) and
              ( j < dmBase.rxBaseline.FieldCount-1) do
        begin
          Inc(j);
          strFieldNameTo := Uppercase(dmBase.rxBaseline.Fields[j].FieldName);
        end;

        if strFieldNameFrom = strFieldNameTo then
          dmBase.rxBaseline.Fields[j].Value := Fields[i].Value;
      end;
      dmBase.rxBaseline.Post;
      Next;
    end;
  end;

  dmBase.rxBaselineAccuracy.EmptyTable;
  with dmBase.rxBaselineAccuracyX do
  begin
    First;
    while not EOF do
    begin
      dmBase.rxBaselineAccuracy.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strFieldNameFrom := Uppercase(Fields[i].FieldName);
        strFieldNameTo := Uppercase(dmbase.rxBaselineAccuracy.Fields[j].FieldName);

        while (strFieldNameFrom <> strFieldNameTo) and
              ( j < dmBase.rxBaselineAccuracy.FieldCount-1) do
        begin
          Inc(j);
          strFieldNameTo := Uppercase(dmBase.rxBaselineAccuracy.Fields[j].FieldName);
        end;

        if strFieldNameFrom = strFieldNameTo then
          dmBase.rxBaselineAccuracy.Fields[j].Value := Fields[i].Value;
      end;
      dmBase.rxBaselineAccuracy.Post;
      Next;
    end;
  end;

  dmBase.rxBaselineDefault.EmptyTable;
  with dmBase.rxBaselineDefaultX do
  begin
    First;
    while not EOF do
    begin
      dmBase.rxBaselineDefault.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strFieldNameFrom := Uppercase(Fields[i].FieldName);
        strFieldNameTo := Uppercase(dmbase.rxBaselineDefault.Fields[j].FieldName);

        while (strFieldNameFrom <> strFieldNameTo) and
              ( j < dmBase.rxBaselineDefault.FieldCount-1) do
        begin
          Inc(j);
          strFieldNameTo := Uppercase(dmBase.rxBaselineDefault.Fields[j].FieldName);
        end;

        if strFieldNameFrom = strFieldNameTo then
          dmBase.rxBaselineDefault.Fields[j].Value := Fields[i].Value;
      end;
      dmBase.rxBaselineDefault.Post;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure CopyPillars;

@description
  Copy all baseline pillars from distribution table (first time user)
*******************************************************************************)
procedure TfrmMain.CopyPillars;
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
begin
  with dmBase.rxPillarX do
  begin
    First;
    while not EOF do
    begin
      dmBase.rxPillar.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strFilteredField := uppercase(dmBase.rxPillar.Fields[j].FieldName);
        strField := uppercase(Fields[i].FieldName);
        while (strFilteredField <> strField) and
               ( j < dmBase.rxPillar.FieldCount-1) do
        begin
          Inc(j);
          strFilteredField := uppercase(dmBase.rxPillar.Fields[j].FieldName);
        end;

        if strFilteredField = strField then
          dmBase.rxPillar.Fields[j].Value := Fields[i].Value;
      end;
      dmBase.rxPillar.Post;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure CopyDistances;

@description
  Copy all baseline distances from distribution table
*******************************************************************************)
procedure TfrmMain.CopyDistances;
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
begin
  with dmBase.rxDistanceX do
  begin
    First;
    while not EOF do
    begin
      dmBase.rxDistance.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strFilteredField := uppercase(dmBase.rxDistance.Fields[j].FieldName);
        strField := uppercase(Fields[i].FieldName);
        while (strFilteredField <> strField) and
               ( j < dmBase.rxDistance.FieldCount-1) do
        begin
          Inc(j);
          strFilteredField := uppercase(dmBase.rxDistance.Fields[j].FieldName);
        end;

        if strFilteredField = strField then
          dmBase.rxDistance.Fields[j].Value := Fields[i].Value;
      end;
      dmBase.rxDistance.Post;
      Next;
    end;
  end;
end;

(*******************************************************************************
@procedure LoadCopyRight;

@description
  Load Enquiry and Copyright statements from database to Aboutbox
*******************************************************************************)
procedure TfrmMain.LoadCopyRight;
var
  doContinue: Boolean;
  i: Integer;
  strEnquiry, strCopyright: string;
begin
  frmAbout.mmoEnquiries.Lines.Clear;
  frmAbout.mmoCopyrightNotice.Lines.Clear;

  with dmBase.rxMethod do
  begin
    doContinue := True;
    i := 1;
    while doContinue do
    begin
      strEnquiry := 'Enquiry '+IntToStr(i);
      Inc(i);
      if Locate('Method',strEnquiry,[]) then
        frmAbout.mmoEnquiries.Lines.Add(FieldByName('Description').AsString)
      else
        doContinue := False;
    end;

    doContinue := True;
    i := 1;
    while doContinue do
    begin
      strCopyright := 'Copyright '+IntToStr(i);
      Inc(i);
      if Locate('Method',strCopyright,[]) then
        frmAbout.mmoCopyrightNotice.Lines.Add(FieldByName('Description').AsString)
      else
        doContinue := False;
    end;
  end;
end;


procedure TfrmMain.LUMAccuracyunits1Click(Sender: TObject);
begin
  frmLUMUnits := TfrmLUMUnits.Create(Self);
  try
    frmLUMUnits.ShowModal;
  finally
    frmLUMUnits.Free;
    frmLUMUnits := nil;
  end;
end;

(*******************************************************************************
@procedure InitialiseCopyRight;

@description
  Blank copyright and enquiry statements in the database are replaced by default
  statements. The user will be able to edit these statements. These statements
  are only displayed in the About box.
*******************************************************************************)
procedure TfrmMain.InitialiseCopyRight;
begin
  with dmBase.rxMethod do
  begin
    if not Locate('Method','Enquiry 1',[]) then
    begin
      Append;
      FieldByName('Method').AsString := 'Enquiry 1';
      FieldByName('Description').AsString := 'Department of Land Information (WA)';
      Post;
      Append;
      FieldByName('Method').AsString := 'Enquiry 2';
      FieldByName('Description').AsString := 'Registration Services Branch';
      Post;
      Append;
      FieldByName('Method').AsString := 'Enquiry 3';
      FieldByName('Description').AsString := 'Phone: (08) 92737114';
      Post;
      Append;
      FieldByName('Method').AsString := 'Enquiry 4';
      FieldByName('Description').AsString := 'Fax:      (08) 92737657';
      Post;
      Append;
      FieldByName('Method').AsString := 'Enquiry 5';
      FieldByName('Description').AsString := '';
      Post;
    end;
    if not Locate('Method','Copyright 1',[]) then
    begin
      Append;
      FieldByName('Method').AsString := 'Copyright 1';
      FieldByName('Description').AsString := 'This program was developed by the';
      Post;
      Append;
      FieldByName('Method').AsString := 'Copyright 2';
      FieldByName('Description').AsString := 'Department of Land Information (Landgate).';
      Post;
      Append;
      FieldByName('Method').AsString := 'Copyright 3';
      FieldByName('Description').AsString := 'Copyright of Western Australian Government materials';
      Post;
      Append;
      FieldByName('Method').AsString := 'Copyright 4';
      FieldByName('Description').AsString := 'resides with the State of Western Australia. No part of';
      Post;
      Append;
      FieldByName('Method').AsString := 'Copyright 5';
      FieldByName('Description').AsString := 'this program may be reproduced or re-used for any';
      Post;
      Append;
      FieldByName('Method').AsString := 'Copyright 6';
      FieldByName('Description').AsString := 'purposes whatsoever without prior written permission';
      Post;
      Append;
      FieldByName('Method').AsString := 'Copyright 7';
      FieldByName('Description').AsString := 'of the State of Western Australia.';
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure AddBenchAuthorityDefault;

@Description
  Adds a default Bench Authority name to the database.
*******************************************************************************)
procedure TfrmMain.AddAuthorityDefault;
begin
  with dmBase.rxMethod do
  begin
    if not Locate('Method','Authority Abbrev',[]) then
    begin
      Append;
      FieldByName('Method').AsString := 'Authority Abbrev';
      FieldByName('Description').AsString := 'DLI';
      Post;
    end;
    if not Locate('Method','Authority',[]) then
    begin
      Append;
      FieldByName('Method').AsString := 'Authority';
      FieldByName('Description').AsString := 'Department of Land Information';
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure GetAboutLogo;

@description
  Gets the About Logo
  *******************************************************************************)
procedure TfrmMain.GetAboutLogo;
var
  strLogoAuthorityImage: string;
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Authority Logo',[]) then
    begin
      strLogoAuthorityImage := FieldByName('Description').AsString;
      if FileExists(strLogoAuthorityImage) then
      begin
        frmAbout.imageAbout.Picture.LoadFromFile(strLogoAuthorityImage);
        frmAbout.imageAbout.Height := 80;
        frmAbout.imageAbout.Width := 240;
        SetImageSize(frmAbout.imageAbout);
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure SetImageSize(Image: TImage);

@description
  Ensures that the image will fit on the screen.
*******************************************************************************)
procedure TfrmMain.SetImageSize(Image: TImage);
var
  sWidth1, sHeight1: Integer;
  sWidth2, sHeight2: Integer;
  dRatio1, dRatio2: Double;
begin
  Image.Stretch := False;

  sHeight1 := Image.Height;
  sWidth1 := Image.Width;

  sHeight2 := Image.Picture.Height;
  sWidth2 := Image.Picture.Width;

  if (sHeight2 > sHeight1) or (sWidth2 > sWidth1) then
  begin
    Image.Stretch := True;
    dRatio1 := sWidth1/sHeight1;
    dRatio2 := sWidth2/sHeight2;

    if dRatio1 <> dRatio2 then
    begin
      if dRatio2 > dRatio1 then
        Image.Height := Round(Image.Width/dRatio2)
      else
        Image.Width := Round(Image.Height*dRatio2);
    end;
  end;
end;

(*******************************************************************************
@procedure GetDisclaimer;

@Description
  Get Disclaimer and copyright statements from database.
*******************************************************************************)
procedure TfrmMain.GetDisclaimer;
var
  strMethod: string;
  sCount: Integer;
  doContinue: Boolean;
begin
  sCount := 0;
  frmDisclaimer.memDisclaimer.ReadOnly := False;
  frmDisclaimer.memCopyRight.ReadOnly := False;
  with dmBase.rxMethod  do
  begin
    doContinue := True;
    while doContinue do
    begin
      Inc(sCount);
      strMethod := 'Disclaimer '+IntToStr(sCount);
      if Locate('Method',strMethod,[]) then
      begin
        if sCount = 1 then
          frmDisclaimer.memDisclaimer.Lines.Clear;

        frmDisclaimer.memDisclaimer.Lines.Add(FieldByName('Description').AsString);
      end
      else
        doContinue := False;
    end;

    doContinue := True;
    sCount := 0;
    while doContinue do
    begin
      Inc(sCount);
      strMethod := 'Distribute_Copyright '+IntToStr(sCount);
      if Locate('Method',strMethod,[]) then
      begin
        if sCount = 1 then
          frmDisclaimer.memCopyRight.Lines.Clear;

        frmDisclaimer.memCopyRight.Lines.Add(FieldByName('Description').AsString);
      end
      else
        doContinue := False;
    end;
  end;
  frmDisclaimer.memDisclaimer.ReadOnly := True;
  frmDisclaimer.memCopyRight.ReadOnly := True;
end;

(*******************************************************************************
@procedure SaveDisclaimer;

@Description
  Save Disclaimer and copyright statements to database.
*******************************************************************************)
procedure TfrmMain.SaveDisclaimer;
var
  strMethod, strMethod1: string;
  I: Integer;
begin
  with dmBase.rxMethod  do
  begin
    First;
    while not EOF do
    begin
      strMethod := Trim(FieldByName('Method').AsString);
      strMethod1 := Copy(strMethod,1,10);
      if strMethod1 = 'Disclaimer' then
        Delete
      else
      begin
        strMethod1 := Copy(strMethod,1,20);
        if strMethod1 = 'Distribute_Copyright' then
          Delete
        else
          Next;
      end;
    end;

    for I := 0 to frmDisclaimer.memDisclaimer.Lines.Count-1 do
    begin
      strMethod := 'Disclaimer '+IntToStr(I+1);
      Append;
      FieldByName('Method').AsString := strMethod;
      FieldByName('Description').AsString := frmDisclaimer.memDisclaimer.Lines[I];
      Post;
    end;

    for I := 0 to frmDisclaimer.memCopyRight.Lines.Count-1 do
    begin
      strMethod := 'Distribute_Copyright '+IntToStr(I+1);
      Append;
      FieldByName('Method').AsString := strMethod;
      FieldByName('Description').AsString := frmDisclaimer.memCopyRight.Lines[I];
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure DownloadVADisclaimer;

@Description
  Download Disclaimer, copyright and about statements for first time VA user
*******************************************************************************)
procedure TfrmMain.DownloadVADisclaimer;
var
  strMethod: string;
  sPos: Integer;
begin
  dmBase.LoadFromTextFileToTable(dmBase.rxMethodX);

  with dmBase.rxMethodX do
  begin
    First;
    while not EOF do
    begin
      strMethod := Trim(FieldByName('Method').AsString);
      sPos := Pos(' ',strMethod);
      if sPos > 1 then
      begin
        Dec(sPos);
        strMethod := Trim(Copy(FieldByName('Method').AsString,1,sPos));
      end;
      if (strMethod = 'Disclaimer') or
         (strMethod = 'Enquiry') or
         (strMethod = 'Copyright') or
         (strMethod = 'Distribute_Copyright') then
      begin
        if not dmBase.rxMethod.Locate('Method',FieldByName('Method').AsString,[]) then
        begin
          dmBase.rxMethod.Append;
          dmBase.rxMethod.FieldByName('Method').Value := FieldByName('Method').Value;
          dmBase.rxMethod.FieldByName('Description').Value := FieldByName('Description').Value;
          dmBase.rxMethod.Post;
        end
        else
        begin
          dmBase.rxMethod.Edit;
          dmBase.rxMethod.FieldByName('Description').Value := FieldByName('Description').Value;
          dmBase.rxMethod.Post;
        end;
      end;
      Next;
    end;
  end;
end;

procedure TfrmMain.UpdateInstruments;
var
  sNextInstrumentID: Integer;
begin
  dmBase.LoadFromTextFileToTable(dmBase.rxInstrument);
  dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentModel);
  dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentMake);

  if dmBase.rxInstrumentMake.IsEmpty or dmBase.rxInstrumentModel.isEmpty then
  begin
    CreateInstrumentXFiles;
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrument);
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentModel);
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentMake);
  end
  else
  begin
    sNextMakeID := dmBase.SortTable(dmBase.rxInstrumentMake,'MakeID','MakeName');
    sNextModelID := dmBase.SortTable(dmBase.rxInstrumentModel,'ModelID','ModelName');
    sNextInstrumentID := dmBase.SortTable(dmBase.rxInstrument,'InstID','InstSerialNo');

    dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentMakeX);
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentModelX);
    dmBase.LoadFromTextFileToTable(dmBase.rxInstrumentX);

    with dmBase.rxInstrumentMakeX do
    begin
      First;
      while not EOF do
      begin
        // append new makes, models a
        if not dmBase.rxInstrumentMake.Locate('MakeName', FieldByName('MakeName').AsString,[]) then
        begin
          dmBase.rxInstrumentMake.Append;
          dmBase.rxInstrumentMake.FieldByName('MakeID').AsInteger := sNextMakeID;
          dmBase.rxInstrumentMake.FieldByName('MakeName').Value := FieldByName('MakeName').Value;
          dmBase.rxInstrumentMake.FieldByName('MakeCountry').Value := FieldByName('MakeCountry').Value;
          dmBase.rxInstrumentMake.Post;

          dmBase.rxInstrumentModelX.First;
          while not dmBase.rxInstrumentModelX.EOF do
          begin
            if dmBase.rxInstrumentModelX.FieldByName('MakeID').AsInteger = FieldByName('MakeID').AsInteger then
            begin
              dmBase.rxInstrumentModel.Append;
              dmBase.rxInstrumentModel.FieldByName('MakeID').AsInteger := sNextMakeID;
              dmBase.rxInstrumentModel.FieldByName('ModelID').AsInteger := sNextModelID;
              dmBase.rxInstrumentModel.FieldByName('ModelName').Value := dmBase.rxInstrumentModelX.FieldByName('ModelName').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelInstType').Value := dmBase.rxInstrumentModelX.FieldByName('ModelInstType').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelUnitLength').Value := dmBase.rxInstrumentModelX.FieldByName('ModelUnitLength').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelModFreq').Value := dmBase.rxInstrumentModelX.FieldByName('ModelModFreq').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelCarrierWavelength').Value := dmBase.rxInstrumentModelX.FieldByName('ModelCarrierWavelength').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelComments').Value := dmBase.rxInstrumentModelX.FieldByName('ModelComments').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelManufStdDevConst').Value := dmBase.rxInstrumentModelX.FieldByName('ModelManufStdDevConst').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelManufStdDevPPM').Value := dmBase.rxInstrumentModelX.FieldByName('ModelManufStdDevPPM').Value;
              dmBase.rxInstrumentModel.FieldByName('ManuRefractiveIndex').Value := dmBase.rxInstrumentModelX.FieldByName('ManuRefractiveIndex').Value;
              dmBase.rxInstrumentModel.FieldByName('isPulseMeter').Value := dmBase.rxInstrumentModelX.FieldByName('isPulseMeter').Value;
              dmBase.rxInstrumentModel.Post;

              dmBase.rxInstrumentX.First;
              while not dmBase.rxInstrumentX.EOF do
              begin
                if dmBase.rxInstrumentX.FieldByName('ModelID').AsInteger = dmBase.rxInstrumentModelX.FieldByName('ModelID').AsInteger then
                begin
                  dmBase.rxInstrument.Append;
                  dmBase.rxInstrument.FieldByName('InstID').AsInteger := sNextInstrumentID;
                  dmBase.rxInstrument.FieldByName('ModelID').AsInteger := sNextModelID;
                  dmBase.rxInstrument.FieldByName('InstType').Value := dmBase.rxInstrumentX.FieldByName('InstType').Value;
                  dmBase.rxInstrument.FieldByName('InstSerialNo').Value := dmBase.rxInstrumentX.FieldByName('InstSerialNo').Value;
                  dmBase.rxInstrument.FieldByName('InstStdDevConst').Value := dmBase.rxInstrumentX.FieldByName('InstStdDevConst').Value;
                  dmBase.rxInstrument.FieldByName('InstStdDevPPM').Value := dmBase.rxInstrumentX.FieldByName('InstStdDevPPM').Value;
                  dmBase.rxInstrument.FieldByName('AntennaModelID').Value := dmBase.rxInstrumentX.FieldByName('AntennaModelID').Value;
                  dmBase.rxInstrument.FieldByName('InstAntennaSerialNo').Value := dmBase.rxInstrumentX.FieldByName('InstAntennaSerialNo').Value;
                  dmBase.rxInstrument.FieldByName('InstConstant').Value := dmBase.rxInstrumentX.FieldByName('InstConstant').Value;
                  dmBase.rxInstrument.FieldByName('InstScaleFact').Value := dmBase.rxInstrumentX.FieldByName('InstScaleFact').Value;
                  dmBase.rxInstrument.FieldByName('InstComments').Value := dmBase.rxInstrumentX.FieldByName('InstComments').Value;
                  dmBase.rxInstrument.Post;
                  Inc(sNextInstrumentID);
                end;
                dmBase.rxInstrumentX.Next;
              end;
              Inc(sNextModelID);
            end;
            dmBase.rxInstrumentModelX.Next;
          end;
          Inc(sNextMakeID);
        end
        else
        begin
          while not dmBase.rxInstrumentModelX.EOF do
          begin
            if dmBase.rxInstrumentModelX.FieldByName('MakeID').AsInteger = FieldByName('MakeID').AsInteger then
            begin
              if dmBase.rxInstrumentModel.Locate(
                'ModelName;MakeID',
                VarArrayOf([dmBase.rxInstrumentModelX.FieldByName('ModelName').AsString,
                            dmBase.rxInstrumentMake.FieldByName('MakeID').AsInteger]),[]) then
                dmBase.rxInstrumentModel.Edit
              else
              begin
                dmBase.rxInstrumentModel.Append;
                dmBase.rxInstrumentModel.FieldByName('MakeID').Value := dmBase.rxInstrumentMake.FieldByName('MakeID').Value;
                dmBase.rxInstrumentModel.FieldByName('ModelID').AsInteger := sNextModelID;
                dmBase.rxInstrumentModel.FieldByName('ModelName').Value := dmBase.rxInstrumentModelX.FieldByName('ModelName').Value;
              end;
              dmBase.rxInstrumentModel.FieldByName('ModelInstType').Value := dmBase.rxInstrumentModelX.FieldByName('ModelInstType').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelUnitLength').Value := dmBase.rxInstrumentModelX.FieldByName('ModelUnitLength').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelModFreq').Value := dmBase.rxInstrumentModelX.FieldByName('ModelModFreq').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelCarrierWavelength').Value := dmBase.rxInstrumentModelX.FieldByName('ModelCarrierWavelength').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelComments').Value := dmBase.rxInstrumentModelX.FieldByName('ModelComments').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelManufStdDevConst').Value := dmBase.rxInstrumentModelX.FieldByName('ModelManufStdDevConst').Value;
              dmBase.rxInstrumentModel.FieldByName('ModelManufStdDevPPM').Value := dmBase.rxInstrumentModelX.FieldByName('ModelManufStdDevPPM').Value;
              dmBase.rxInstrumentModel.FieldByName('ManuRefractiveIndex').Value := dmBase.rxInstrumentModelX.FieldByName('ManuRefractiveIndex').Value;
              dmBase.rxInstrumentModel.FieldByName('isPulseMeter').Value := dmBase.rxInstrumentModelX.FieldByName('isPulseMeter').Value;
              dmBase.rxInstrumentModel.Post;
            end;
            dmBase.rxInstrumentModelX.Next;
          end;
        end;
        Next;
      end;
    end;
  end;
  sNextMakeID := dmBase.SortTable(dmBase.rxInstrumentMake,'MakeID','MakeName');
  sNextModelID := dmBase.SortTable(dmBase.rxInstrumentModel,'ModelID','ModelName');
  dmBase.SortTable(dmBase.rxInstrument,'InstID','InstSerialNo');
end;

procedure TfrmMain.CheckInstrumentsInJobs;
var
  doContinue: Boolean;
begin
  with dmBase.rxJob do
  begin
    First;
    while not EOF do
    begin
      if not dmBase.rxInstrument.Locate('InstID', FieldByName('InstID2').AsInteger,[]) then
      begin
        if dmBase.rxInstrument.Locate('InstType','P',[]) then
        begin
          Edit;
          FieldByName('InstID2').Value :=  dmBase.rxInstrument.FieldByname('InstID').Value;
          Post;
        end;
      end;
      if not dmBase.rxInstrument.Locate('InstID', FieldByName('InstID1').AsInteger,[]) then
      begin
        dmBase.rxInstrumentModel.First;
        doContinue := True;
        while (not dmBase.rxInstrumentModel.EOF) and doContinue do
        begin
          if dmBase.rxInstrumentModel.FieldByName('ModelInstType').AsString = 'E' then
          begin
            if (not dmBase.rxInstrumentModel.FieldByName('ModelUnitLength').isNull) and
               (not dmBase.rxInstrumentModel.FieldByName('ModelModFreq').isNull) and
               (not dmBase.rxInstrumentModel.FieldByName('ModelCarrierWaveLength').isNull) then
            begin
              if dmBase.rxInstrument.Locate('ModelID', dmBase.rxInstrumentModel.FieldByName('ModelID').AsInteger,[]) then
              begin
                Edit;
                FieldByName('InstID1').Value :=  dmBase.rxInstrument.FieldByname('InstID').Value;
                Post;
                doContinue := False;
              end;
            end;
          end;
          dmBase.rxInstrumentModel.Next;
        end;
      end;
      Next;
    end;
  end;
end;

procedure TfrmMain.CleanInstrumentTable;
begin
  with dmBase.rxInstrumentModel do
  begin
    First;
    while not EOF do
    begin
      if dmBase.rxInstrumentMake.Locate('MakeID', FieldByName('MakeID').AsInteger,[]) then
        Next
      else
        Delete;
    end;
  end;
  with dmBase.rxInstrument do
  begin
    First;
    while not EOF do
    begin
      if dmBase.rxInstrumentModel.Locate('ModelID', FieldByName('ModelID').AsInteger,[]) then
        Next
      else
        Delete;
    end;
  end;
end;

(******************************************************************************
@method
  OnHelp_HelpHook(Command : Word; Data : Longint; Var CallHelp : Boolean) : Boolean;

@description
  Sets up the HTML Help.
*******************************************************************************)
function TfrmMain.OnHelp_HelpHook(Command : Word; Data : Longint; Var CallHelp : Boolean) : Boolean;
begin
   {Your code here...}
   CallHelp := false;

   case Command of
     HELP_CONTENTS:  // SAME AS HELP_INDEX
        //Show Table of contents & home page
        HtmlHelp(0,PChar(mHelpFile), HH_DISPLAY_TOC, 0);
     HELP_FINDER:
        //Show Table of contents & home page
        HtmlHelp(0,PChar(mHelpFile), HH_DISPLAY_TOC, 0);
     Help_PartialKey:
      // Show Index & home page
       HtmlHelp(0,PChar(mHelpFile), HH_DISPLAY_INDEX, 0);
     Help_Context:
       //Display topic using Help Context number  (Help button)
       HtmlHelp(0,PChar(mHelpFile), HH_HELP_CONTEXT, Data);
     HELP_SETPOPUP_POS: //call #1 of F1 Popup (Whats This) help
       FPopupXY := SmallPointToPoint(TSmallPoint(Data));           //data = x,y pos for popup
     Help_ContextPopup: //call #2 of F1 Popup (Whats This) help
       HtmlHelp(0,PChar(mHelpFile), HH_HELP_CONTEXT, Data);
     Help_KEY:  //Keyword
       CallHelp := TRUE;
   else
      CallHelp := TRUE; //Default handling - WinHelp
   end;
   result := TRUE;
end;

end.

