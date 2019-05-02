(*******************************************************************************
@FormUnit BseDistribute;

@Description
  A wizard guides you in distributing restricted versions of the baseline software
  and database to external users.

@(C) Copyright Department of Land Information in Western Australia 2002-2006.
     All Rights Reserved.
*******************************************************************************)
unit BseDistribute;

interface
            
uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, ValidEdt, Wwdatsrc, SysUtils, FileCtrl, stdctrls, Mask,
  wwdbedit, ComCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, wwclearpanel, Variants, CheckLst;

type
  TfrmDistribute = class(TForm)
    pcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    pnlButtons1: TPanel;
    lblPage1: TLabel;
    btnNext1: TBitBtn;
    btnClose1: TBitBtn;
    btnHelp1: TBitBtn;
    lblHeader1: TLabel;
    memDescription: TMemo;
    pnlButtons3: TPanel;
    lblPage3: TLabel;
    btnNext3: TBitBtn;
    btnClose3: TBitBtn;
    btnHelp3: TBitBtn;
    lblHeader3: TLabel;
    gbFiles: TGroupBox;
    edtDistributionFolder: TEdit;
    lblFolder: TLabel;
    memDistributionFiles: TMemo;
    lblFiles: TLabel;
    gbDatabasefiles: TGroupBox;
    lblDatabasefolder: TLabel;
    lblDatabasefiles: TLabel;
    edtDistributionDBFolder: TEdit;
    memDistributionDBFiles: TMemo;
    lblMessage3: TLabel;
    TabSheet4: TTabSheet;
    Memo1: TMemo;
    pnl_Page4: TPanel;
    lblPage4: TLabel;
    btnClose4: TBitBtn;
    btnHelp4: TBitBtn;
    Memo4: TMemo;
    Memo5: TMemo;
    edtDistributionFolder2: TEdit;
    lblDistributionFolder: TLabel;
    lblWinzipInstructions: TLabel;
    lblRecommendation: TLabel;
    lblUnzipInstructions: TLabel;
    lblHeader4: TLabel;
    edtDistributionDBFolder2: TEdit;
    lblDistributionDatabasefolder: TLabel;
    rxSecurity: TRxMemoryData;
    rxSecuritySecurityID: TIntegerField;
    rxSecurityPassword: TStringField;
    rxSecurityDistributionDate: TDateField;
    rxSecurityDistributionAuthority: TStringField;
    dsSecurity: TDataSource;
    pickDate: TDateTimePicker;
    lblDistributionDate: TLabel;
    lblDistributionAuthority: TLabel;
    lblDistributionVersion: TLabel;
    rxSecurityisRegistered: TBooleanField;
    rxSecurityisFirstTimeUser: TBooleanField;
    TabSheet5: TTabSheet;
    lblHeader5: TLabel;
    dbgridHistory: TwwDBGrid;
    lblHistory: TLabel;
    pnlHistory_Buttons: TPanel;
    btnCloseHistory: TBitBtn;
    btnHistory1: TButton;
    btnHistory4: TButton;
    btnBack: TBitBtn;
    lblWarning: TLabel;
    gbDistributeTo: TGroupBox;
    rbtnWAUsers: TRadioButton;
    rbtnVAUsers: TRadioButton;
    pnlVersion: TPanel;
    edtAuthority: TEdit;
    rxWebBaseline: TRxMemoryData;
    rxWebBaselineBaselineID: TIntegerField;
    rxWebBaselineBaselineName: TStringField;
    rxWebBaselineBaselineLocation: TStringField;
    rxWebBaselineBaselineAuthority: TStringField;
    rxWebBaselineBaselineCalibrationDate: TStringField;
    rxWebBaselineBaselineCalibrationRef: TStringField;
    rxWebBaselineEllipsID: TIntegerField;
    rxWebBaselineBaselineConfLevel: TFloatField;
    rxWebBaselineBaseLegalHeight: TFloatField;
    rxWebBaselineBaseStdICConstant: TFloatField;
    rxWebBaselineBaseStdICPPM: TFloatField;
    rxWebBaselineBaseRelativeHumidity: TFloatField;
    rxWebBaselineBaselineArchiveFlag: TStringField;
    rxWebPillar: TRxMemoryData;
    rxWebPillarPillarID: TIntegerField;
    rxWebPillarBaselineID: TIntegerField;
    rxWebPillarPillarSqNo: TIntegerField;
    rxWebPillarPillarNo: TStringField;
    rxWebPillarPillarHeight: TFloatField;
    rxWebPillarPillarOffset: TFloatField;
    rxWebPillarPillarLatitude: TFloatField;
    rxWebPillarPillarLongitude: TFloatField;
    rxWebPillarPillarEllipsARadius: TFloatField;
    rxWebPillarPillarEllipsBRadius: TFloatField;
    rxWebPillarPillarEllipsOrient: TFloatField;
    rxWebPillarPillarStdDev: TFloatField;
    rxWebDistance: TRxMemoryData;
    rxWebDistanceDistID: TIntegerField;
    rxWebDistanceBaselineID: TIntegerField;
    rxWebDistancePillarFromID: TIntegerField;
    rxWebDistancePillarToID: TIntegerField;
    rxWebDistanceDistLegalDistance: TFloatField;
    rxWebDistanceDistSigma: TFloatField;
    rxWebBaselineAccuracy: TRxMemoryData;
    rxWebBaselineAccuracyBaselineID: TIntegerField;
    rxWebBaselineAccuracyConstant: TFloatField;
    rxWebBaselineAccuracyScale: TFloatField;
    dbnavHistory: TwwDBNavigator;
    dbnavHistoryFirst: TwwNavButton;
    dbnavHistoryPriorPage: TwwNavButton;
    dbnavHistoryPrior: TwwNavButton;
    dbnavHistoryNext: TwwNavButton;
    dbnavHistoryNextPage: TwwNavButton;
    dbnavHistoryLast: TwwNavButton;
    dbnavHistoryDelete: TwwNavButton;
    btnHelpHistory: TBitBtn;
    rxSecurityDistributionVersion: TStringField;
    rxCleanInstrument: TRxMemoryData;
    rxCleanInstrumentInstID: TIntegerField;
    rxCleanInstrumentInstType: TStringField;
    rxCleanInstrumentModelID: TIntegerField;
    rxCleanInstrumentInstSerialNo: TStringField;
    rxCleanInstrumentInstStdDevConst: TFloatField;
    rxCleanInstrumentInstStdDevPPM: TFloatField;
    rxCleanInstrumentAntennaModelID: TIntegerField;
    rxCleanInstrumentAntennaSerialNo: TStringField;
    rxCleanInstrumentInstConstant: TFloatField;
    rxCleanInstrumentInstScaleFact: TFloatField;
    rxCleanInstrumentInstComments: TStringField;
    rxWebJob: TRxMemoryData;
    rxWebJobJobId: TIntegerField;
    rxWebJobJobDescription: TStringField;
    rxWebJobInstID1: TIntegerField;
    rxWebJobInstID2: TIntegerField;
    rxWebJobJobInst1Owner: TStringField;
    rxWebJobJobInst2Owner: TStringField;
    rxWebJobJobProcessingSoftware: TStringField;
    rxWebJobJobStartCalibrationDate: TStringField;
    rxWebJobJobStartCalibrationTime: TStringField;
    rxWebJobJobEndCalibrationDate: TStringField;
    rxWebJobJobEndCalibrationTime: TStringField;
    rxWebJobJobObserverName: TStringField;
    rxWebJobBaselineID: TIntegerField;
    rxWebJobJobWeatherConditions: TStringField;
    rxWebJobJobTempCorr: TFloatField;
    rxWebJobJobPressureCorr: TFloatField;
    rxWebJobJobStdDevTemp: TFloatField;
    rxWebJobJobStdDevPressure: TFloatField;
    rxWebJobJobInstCentringStdDev: TFloatField;
    rxWebJobJobInstLevellingStdDev: TFloatField;
    rxWebJobJobType: TStringField;
    rxWebJobJobComments: TStringField;
    rxWAUserMethod: TRxMemoryData;
    rxWAUserMethodMethod: TStringField;
    rxWAUserMethodDescription: TStringField;
    chkIncludeLogos: TCheckBox;
    rxWebBaselineAuthorityAddress: TStringField;
    tsDisclaimer: TTabSheet;
    pcLegal: TPageControl;
    tsDisclaimerStatement: TTabSheet;
    Panel5: TPanel;
    memDisclaimer: TMemo;
    TabSheet7: TTabSheet;
    memCopyRight: TMemo;
    pnlButtons2: TPanel;
    lblPageDisclaimer: TLabel;
    btnNext2: TBitBtn;
    btnClose2: TBitBtn;
    btnHelp2: TBitBtn;
    rxVAMethod: TRxMemoryData;
    rxVAMethodMethod: TStringField;
    rxVAMethodDescription: TStringField;
    rxWebBaselineDefault: TRxMemoryData;
    rxWebBaselineDefaultBaselineID: TIntegerField;
    StringField15: TStringField;
    FloatField32: TFloatField;
    StringField16: TStringField;
    procedure btnNext1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNext3Click(Sender: TObject);
    procedure btnNext2Click(Sender: TObject);
    procedure pickDateCloseUp(Sender: TObject);
    procedure btnHistory1Click(Sender: TObject);
    procedure btnHistory4Click(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnHelp4Click(Sender: TObject);
    procedure btnHelp1Click(Sender: TObject);
    procedure btnHelp3Click(Sender: TObject);
    procedure btnHelpHistoryClick(Sender: TObject);
    procedure rbtnVAUsersClick(Sender: TObject);
    procedure rbtnWAUsersClick(Sender: TObject);
    procedure btnHelp2Click(Sender: TObject);
  private
    { Private declarations }
    function DistributeFile(strOldFileName: String;
    strNewFileName: String; var strError: String): Boolean;
    procedure SetPassword;
    function CopyWABaselines(strDistributionTo: String): Boolean;
    procedure CopyWASampleJobs(strDistributionTo: String);
    procedure CopyFromFullDatabase(strDistributionTo: String);
    procedure FilterPillar( sBaselineId: Integer);
    procedure FilterDistance( sBaselineId: Integer);
    procedure UpdateWebTables2;
    procedure CreateCleanInstrumentTable;
    function IsInstrumentUsedInSampleJobs(sInstrumentID: Integer) : Boolean;
    procedure CreateWAUserMethodTable;
    procedure UpdateWebTables;
    procedure DeleteWebRecords(sBaselineID: Integer);
    procedure UpdateWebTablesExcludeCurrent;
    procedure GetDisclaimer;
    procedure SaveDisclaimer;
    procedure DistributeBaseline;
  public
    { Public declarations }
    isDLI: Boolean;
    strVersion: String;
    strAuthority: String;
  end;

var
  frmDistribute: TfrmDistribute;
  LastTabSheet: TTabSheet;

implementation

{$R *.DFM}
uses BseDM, BseMisc, BSEProgress;

(*******************************************************************************
@procedure btnNext1Click(Sender: TObject);

@description
  1. Validates the Authority Name.
  2. DLI: Display the disclaimer page, where you can edit the disclaimer
     and copyright statements.
  3. Other Verifying Authority: Distribute the software and database.
     Display the distributed files.
*******************************************************************************)
procedure TfrmDistribute.btnNext1Click(Sender: TObject);
begin
  if edtAuthority.Text = '' then
  begin
    MessageDlg('You must enter the Authority distributing the EDM Calibration software',mtWarning,[mbOK],0);
    Exit;
  end;

  if isDLI then
  begin
    GetDisclaimer;

    pcLegal.ActivePage := tsDisclaimerStatement;
    pcMain.ActivePage := tsDisclaimer;
  end
  else
  begin
    DistributeBaseline;
    pcMain.ActivePage := Tabsheet3;
  end;
end;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  1. Initialises the settings.
  2. Displays the first page of the wizard
*******************************************************************************)
procedure TfrmDistribute.FormShow(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  rxWAUserMethod.Active := True;
  rxWebJob.Active := True;
  rxWebBaselineDefault.Active := True;
  rxCleanInstrument.Active := True;
  rbtnWAUsers.Checked := True;
  memDescription.Visible := True;

  if isDLI then
  begin
    gbDistributeTo.Visible := True;
    chkIncludeLogos.Visible := True;
    lblPage1.Caption := 'Page 1 of 4';
    lblPage3.Caption := 'Page 3 of 4';
    lblPage4.Caption := 'Page 4 of 4';
  end
  else
  begin
    gbDistributeTo.Visible := False;
    chkIncludeLogos.Visible := False;
    lblPage1.Caption := 'Page 1 of 3';
    lblPage3.Caption := 'Page 2 of 3';
    lblPage4.Caption := 'Page 3 of 3';
  end;

  edtAuthority.Text := '';
  with dmBase.rxDistribution do
  begin
    if RecordCount > 0 then
    begin
      Last;
      edtAuthority.Text := FieldByName('DistributionAuthority').AsString;
    end;
  end;

  dmBase.rxBaseline.Last;
  pickDate.Date := Date;
  DecodeDate(Date, Year, Month, Day);
  strVersion := IntToStr(Year)+'.'+IntToStr(Month)+'.'+IntToStr(Day);
  pnlVersion.caption := strVersion;

  pcMain.ActivePage := TabSheet1;
end;

(*******************************************************************************
@procedure btnNext3Click(Sender: TObject);

@description
  Opens next page of the wizard where you can view the instructions on how to distribute the files
*******************************************************************************)
procedure TfrmDistribute.btnNext3Click(Sender: TObject);
begin
  pcMain.ActivePage := TabSheet4;
end;

(*******************************************************************************
@procedure btnNext3Click(Sender: TObject);

@description
  1. Saves the disclaimer and copyright statements.
  2. Creates the distribution files.
  3. Opens next page of the wizard where you can view a list of the distribution files.
*******************************************************************************)
procedure TfrmDistribute.btnNext2Click(Sender: TObject);
begin
  SaveDisclaimer;
  DistributeBaseline;
  pcMain.ActivePage := Tabsheet3;
end;

(*******************************************************************************
@procedure DistributeBaseline;

@description
  Creates the distribution files.
*******************************************************************************)
procedure TfrmDistribute.DistributeBaseline;
var
  strApplicationFolder: String;
  strDistributionFolder: String;
  strApplicationDBFolder: String;
  strDistributionDBFolder: String;
  strFile: String;
  strOldFileName: String;
  strNewFileName: String;
  hasError: Boolean;
  strError: String;
  strAuthorityLogoFile: String;
  strAccreditationLogoFile: String;
  strQualityLogoFile: String;
  strDistributionTo: String;
begin
  memDistributionDBFiles.Lines.Clear;
  memDistributionFiles.Lines.Clear;

  Screen.Cursor := crHourGlass;
  frmProgress.pbarProgress.Min := 0;
  frmProgress.pbarProgress.Max := 100;
  frmProgress.pbarProgress.Visible := True;
  frmProgress.pbarProgress.Position := 0;
  frmProgress.lblMessage.Caption := 'Distributing baseline software and database tables.....';
  frmProgress.Show;
  Application.ProcessMessages;

  dmBase.SaveTableToTextFile(dmBase.rxUncertaintyEDM);
  dmBase.SaveTableToTextFile(dmBase.rxUncertaintyBaseline);
  dmBase.SaveTableToTextFile(dmBase.rxBaselineAccuracy);
  dmBase.SaveTableToTextFile(dmBase.rxMethod);
  dmBase.SaveTableToTextFile(dmBase.rxBaselineDefault);
  frmProgress.pbarProgress.Position := 5;
  Application.ProcessMessages;
  dmBase.SaveTableToTextFile(dmBase.rxDefault);
  dmBase.SaveTableToTextFile(dmBase.rxBaseline);
  dmBase.SaveTableToTextFile(dmBase.rxEllipsoid);
  dmBase.SaveTableToTextFile(dmBase.rxDistance);
  frmProgress.pbarProgress.Position := 10;
  Application.ProcessMessages;
  dmBase.SaveTableToTextFile(dmBase.rxPillar);
  dmBase.SaveTableToTextFile(dmBase.rxJob);
  dmBase.SaveTableToTextFile(dmBase.rxInstrument);
  dmBase.SaveTableToTextFile(dmBase.rxInstrumentModel);
  frmProgress.pbarProgress.Position := 15;
  Application.ProcessMessages;
  dmBase.SaveTableToTextFile(dmBase.rxInstrumentMake);
  dmBase.SaveTableToTextFile(dmBase.rxJMeasure);
  dmBase.SaveTableToTextFile(dmBase.rxEDMObs);
  dmBase.SaveTableToTextFile(dmBase.rxStandard);
  frmProgress.pbarProgress.Position := 20;
  Application.ProcessMessages;

  if isDLI then
  begin
    CreateCleanInstrumentTable;
    dmBase.SaveTableToTextFile(rxCleanInstrument);
  end;

  strAuthority := edtAuthority.Text;

  SetPassword;
  strDistributionTo := 'VARestrictedVersion';
  if gbDistributeTo.Visible then
  begin
    if rbtnVAUsers.Checked then
    begin
      strDistributionTo := 'VAFullVersion';
    end
    else
    begin
      strDistributionTo := 'WARestrictedVersion';
    end;
  end;

  strAuthorityLogoFile := '';
  strAccreditationLogoFile := '';
  strQualityLogoFile := '';
  hasError := False;
  strApplicationFolder := ExtractFilePath( Application.ExeName);
  strFile := Application.ExeName;
  strFile := strApplicationFolder+ 'BASELINE.HLP';
  strFile := strApplicationFolder+ 'BASELINE.CNT';
  strApplicationDBFolder := strApplicationFolder+'Database\';

  if strDistributionTo = 'VAFullVersion' then
  begin
    strDistributionFolder := strApplicationFolder+'DistributionVA\';
    strDistributionDBFolder := strApplicationFolder+'DistributionVA\Database\';
  end
  else
  begin
    strDistributionFolder := strApplicationFolder+'Distribution\';
    strDistributionDBFolder := strApplicationFolder+'Distribution\Database\';
  end;

  if not DirectoryExists(strDistributionFolder) then
  begin
    if not CreateDir(strDistributionFolder) then
    begin
      hasError := True;
      strError := 'Could not create the Distribution Folders'+#10+
                  'You must create the following folders before you can distribute the software'+#10+
                  strDistributionFolder+#10+
                  strDistributionDBFolder;
    end;
  end;

  frmProgress.pbarProgress.Position := 25;
  Application.ProcessMessages;

  if not hasError then
  begin
    if not DirectoryExists(strDistributionDBFolder) then
    begin
      if not CreateDir(strDistributionDBFolder) then
      begin
        hasError := True;
        strError := 'Could not create the Database Distribution Folder'+#10+
                    'You must create the following folder before you can distribute the software'+#10+
                    strDistributionDBFolder;
      end;
    end;
  end;

  if hasError then
  begin
    MessageDlg(strError,mtWarning,[mbOK],0);
    Exit;
  end;

  frmProgress.pbarProgress.Position := 30;
  Application.ProcessMessages;

  if not hasError then
  begin
    strError := 'The following files could not be copied into Distribution Folder'+#10+#10;
    if isDLI then
    begin
      strOldFileName := strApplicationFolder+'BaselineDLI.exe';
    end
    else
    begin
      strOldFileName := strApplicationFolder+'Baseline.exe';
    end;

    if strDistributionTo = 'VAFullVersion' then
    begin
      strNewFileName := strDistributionFolder+'Baseline.exe';
      memDistributionFiles.Lines.Append('Baseline.exe');
    end;
    if strDistributionTo = 'VARestrictedVersion' then
    begin
      strNewFileName := strDistributionFolder+'EDMCalibration.exe';
      memDistributionFiles.Lines.Append('EDMCalibration.exe');
    end;
    if strDistributionTo = 'WARestrictedVersion' then
    begin
      strNewFileName := strDistributionFolder+'BaselineWA.exe';
      memDistributionFiles.Lines.Append('BaselineWA.exe');
    end;

    if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
    begin
      hasError := True;
      strError := strError +strOldFileName+#10
    end;
    frmProgress.pbarProgress.Position := 40;
    Application.ProcessMessages;


    strOldFileName := strApplicationFolder+'Baseline.hlp';
    strNewFileName := strDistributionFolder+'Baseline.hlp';
    if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
    begin
      hasError := True;
      strError := strError +strOldFileName+#10
    end;
    frmProgress.pbarProgress.Position := 50;
    Application.ProcessMessages;

    strOldFileName := strApplicationFolder+'Baseline.cnt';
    strNewFileName := strDistributionFolder+'Baseline.cnt';
    if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
    begin
      hasError := True;
      strError := strError +strOldFileName+#10
    end;
    frmProgress.pbarProgress.Position := 55;
    Application.ProcessMessages;

    strOldFileName := strApplicationFolder+'Baseline.chm';
    strNewFileName := strDistributionFolder+'Baseline.chm';
    if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
    begin
      hasError := True;
      strError := strError +strOldFileName+#10
    end;
    frmProgress.pbarProgress.Position := 60;
    Application.ProcessMessages;

    if (strDistributionTo <> 'VAFullVersion') and chkIncludeLogos.Checked then
    begin
      with dmBase.rxMethod do
      begin
        if Locate('Method','Authority Logo',[]) then
        begin
          strOldFileName := FieldByName('Description').AsString;
          if strOldFileName <> '' then
          begin
            if FileExists(strOldFileName) then
            begin
              strNewFileName := ExtractFileName(strOldFileName);
              strAuthorityLogoFile := strNewFileName;
              strNewFileName := strDistributionFolder+strNewFileName;
              if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
              begin
                hasError := True;
                strError := strError +strOldFileName+#10
              end;
            end;
          end;
        end;
      end;
    end;
  end;

  frmProgress.pbarProgress.Position := 80;
  Application.ProcessMessages;

  if hasError then
  begin
    strError := strError+#10+'You must copy these files into the Distribution Folder '+strDistributionFolder;
    MessageDlg(strError,mtWarning,[mbOK],0);
    Exit;
  end;

  if not hasError then
  begin
    strError := 'The following database files could not be copied into Distribution Database Folder'+#10+#10;
    if strDistributionTo = 'VAFullVersion' then
    begin
      // Distributed to VA Authoritied by DLI
      if CopyWABaselines(strDistributionTo) then
      begin
        CopyWASampleJobs(strDistributionTo);
      end
      else
      begin
        CopyFromFullDatabase(strDistributionTo);
      end;
    end
    else
    begin
      // Distributed to user by DLI
      if strDistributionTo = 'WARestrictedVersion' then
      begin
        if CopyWABaselines(strDistributionTo) then
        begin
          CopyWASampleJobs(strDistributionTo);
        end
        else
        begin
          CopyFromFullDatabase(strDistributionTo);
        end;
      end
      else
      begin
        // Distributed to users by VA authority
        strOldFileName := strApplicationDBFolder+'rxBaseline.db';
        strNewFileName := strDistributionDBFolder+'rxBaselineX.db';
        if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

        strOldFileName := strApplicationDBFolder +'rxBaselineAccuracy.db';
        strNewFileName := strDistributionDBFolder+'rxBaselineAccuracyX.db';
        if FileExists(strOldFileName) then
        begin
          if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;
        end;

        strOldFileName := strApplicationDBFolder +'rxBaselineDefault.db';
        strNewFileName := strDistributionDBFolder+'rxBaselineDefaultX.db';
        if FileExists(strOldFileName) then
        begin
          if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;
        end;

        strOldFileName := strApplicationDBFolder+'rxPillar.db';
        strNewFileName := strDistributionDBFolder+'rxPillarX.db';
        if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

        strOldFileName := strApplicationDBFolder+'rxDistance.db';
        strNewFileName := strDistributionDBFolder+'rxDistanceX.db';
        if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;
      end;
    end;

    frmProgress.pbarProgress.Position := 90;

    if isDLI then
    begin
      strOldFileName := strApplicationDBFolder+'rxCleanInstrument.db';
      if not FileExists(strOldFileName) then
      begin
        strOldFileName := strApplicationDBFolder+'rxInstrument.db';
      end;
    end
    else
    begin
      strOldFileName := strApplicationDBFolder+'rxInstrument.db';
    end;

    strNewFileName := strDistributionDBFolder+'rxInstrumentX.db';
    if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

    strOldFileName := strApplicationDBFolder+'rxInstrumentMake.db';
    strNewFileName := strDistributionDBFolder+'rxInstrumentMakeX.db';

    if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

    strOldFileName := strApplicationDBFolder+'rxInstrumentModel.db';
    strNewFileName := strDistributionDBFolder+'rxInstrumentModelX.db';
    if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

    strOldFileName := strApplicationDBFolder+'rxEllipsoid.db';
    strNewFileName := strDistributionDBFolder+'rxEllipsoid.db';
    if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

    strOldFileName := strApplicationDBFolder+'rxUncertaintyBaseline.db';
    strNewFileName := strDistributionDBFolder+'rxUncertaintyBaseline.db';
    if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

    strOldFileName := strApplicationDBFolder+'rxUncertaintyEDM.db';
    strNewFileName := strDistributionDBFolder+'rxUncertaintyEDM.db';
    if not DistributeFile(strOldFileName, strNewFileName, strError) then hasError := True;

    dmBase.SaveTableToTextFile2(strDistributionDBFolder, rxSecurity);

    if strDistributionTo = 'VAFullVersion' then
    begin
      strOldFileName := strApplicationDBFolder+'rxMethod.db';
      if FileExists(strOldFileName) then
      begin
        strNewFileName := strDistributionDBFolder+'rxMethodX.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          memDistributionDBFiles.Lines.Append('rxMethodX.db');
        end
        else
        begin
          hasError := True;
        end;
      end;
      strOldFileName := strApplicationDBFolder+'rxStandard.db';
      if FileExists(strOldFileName) then
      begin
        strNewFileName := strDistributionDBFolder+'rxStandard.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          memDistributionDBFiles.Lines.Append('rxStandard.db');
        end
        else
        begin
          hasError := True;
        end;
      end;
    end
    else
    begin
      strOldFileName := strApplicationDBFolder+'rxDefault.db';
      if FileExists(strOldFileName) then
      begin
        strNewFileName := strDistributionDBFolder+'rxDefault.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          memDistributionDBFiles.Lines.Append('rxDefault.db');
        end
        else
        begin
          hasError := True;
        end;
      end;

      if strDistributionTo = 'WARestrictedVersion' then
      begin
        CreateWAUserMethodTable;
        dmBase.SaveTableToTextFile(rxWAUserMethod);
        strOldFileName := strApplicationDBFolder+'rxWAUserMethod.db';
        if FileExists(strOldFileName) then
        begin
          strNewFileName := strDistributionDBFolder+'rxMethodX.db';
          if DistributeFile(strOldFileName, strNewFileName, strError) then
          begin
            memDistributionDBFiles.Lines.Append('rxMethodX.db');
          end
          else
          begin
            hasError := True;
          end;
        end;
      end
      else
      begin
        strOldFileName := strApplicationDBFolder+'rxMethod.db';
        if FileExists(strOldFileName) then
        begin
          strNewFileName := strDistributionDBFolder+'rxMethodX.db';
          if DistributeFile(strOldFileName, strNewFileName, strError) then
          begin
            memDistributionDBFiles.Lines.Append('rxMethodX.db');
          end
          else
          begin
            hasError := True;
          end;
        end;
      end;

      strOldFileName := strApplicationDBFolder+'rxStandard.db';
      if FileExists(strOldFileName) then
      begin
        strNewFileName := strDistributionDBFolder+'rxStandard.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          memDistributionDBFiles.Lines.Append('rxStandard.db');
        end
        else
        begin
          hasError := True;
        end;
      end;

      frmProgress.pbarProgress.Position := 95;
      {
      strOldFileName := strApplicationDBFolder+'rxUncertaintyBaseline.db';
      if FileExists(strOldFileName) then
      begin
        strNewFileName := strDistributionDBFolder+'rxUncertaintyBaseline.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          memDistributionDBFiles.Lines.Append('rxUncertaintyBaseline.db');
        end
        else
        begin
          hasError := True;
        end;
      end;

      strOldFileName := strApplicationDBFolder+'rxUncertaintyEDM.db';
      if FileExists(strOldFileName) then
      begin
        strNewFileName := strDistributionDBFolder+'rxUncertaintyEDM.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          memDistributionDBFiles.Lines.Append('rxUncertaintyEDM.db');
        end
        else
        begin
          hasError := True;
        end;
      end;
      }
    end;
  end;
  frmProgress.pbarProgress.Position := 100;
  if hasError then
  begin
    Screen.Cursor := crDefault;
    strError := strError+#10+'You must copy these database files into the Distribution Database Folder '+strDistributionDBFolder;
    MessageDlg(strError,mtWarning,[mbOK],0);
    Exit;
  end;

  edtDistributionFolder.Text := strDistributionFolder;
  edtDistributionFolder2.Text := strDistributionFolder;

  memDistributionFiles.Lines.Append('Baseline.hlp');
  memDistributionFiles.Lines.Append('Baseline.cnt');
  memDistributionFiles.Lines.Append('Baseline.chm');

  if not (strAuthorityLogoFile = '') then memDistributionFiles.Lines.Append(strAuthorityLogoFile);
  if not (strAccreditationLogoFile = '') then memDistributionFiles.Lines.Append(strAccreditationLogoFile);
  if not (strQualityLogoFile = '') then memDistributionFiles.Lines.Append(strQualityLogoFile);

  edtDistributionDBFolder.Text := strDistributionDBFolder;
  edtDistributionDBFolder2.Text := strDistributionDBFolder;
  memDistributionDBFiles.Lines.Append('rxBaselineX.db');
  memDistributionDBFiles.Lines.Append('rxBaselineAccuracyX.db');
  memDistributionDBFiles.Lines.Append('rxBaselineDefault.db');
  memDistributionDBFiles.Lines.Append('rxDistanceX.db');
  memDistributionDBFiles.Lines.Append('rxPillarX.db');

  memDistributionDBFiles.Lines.Append('rxEllipsoid.db');
  memDistributionDBFiles.Lines.Append('rxInstrumentX.db');
  memDistributionDBFiles.Lines.Append('rxInstrumentMakeX.db');
  memDistributionDBFiles.Lines.Append('rxInstrumentModelX.db');

  memDistributionDBFiles.Lines.Append('rxUncertaintyBaseline.db');
  memDistributionDBFiles.Lines.Append('rxUncertaintyEDM.db');

  if strDistributionTo <> 'VARestrictedVersion' then
  begin
    memDistributionDBFiles.Lines.Append('rxJobX.db');
    memDistributionDBFiles.Lines.Append('rxJMeasureX.db');
    memDistributionDBFiles.Lines.Append('rxEDMObsX.db');
  end;

  memDistributionDBFiles.Lines.Append('rxSecurity.db');

  with dmBase.rxSecurity do
  begin
    First;
    Edit;
    FieldByName('DistributionVersion').AsString := strVersion;
    FieldByName('DistributionAuthority').AsString := strAuthority;
    Post;
  end;

  with dmBase.rxDistribution do
  begin
    if Locate('DistributionVersion',strVersion,[]) then
    begin
      Edit;
      FieldbyName('DistributionAuthority').AsString := strAuthority;
      Post;
    end
    else
    begin
      Append;
      FieldbyName('DistributionVersion').AsString := strVersion;
      FieldbyName('DistributionAuthority').AsString := strAuthority;
      FieldbyName('DistributionDate').AsDateTime := pickDate.Date;
      Post;
    end;
  end;
  Screen.Cursor := crDefault;
  frmProgress.Close;
end;

(*******************************************************************************
@procedure pickDateCloseUp(Sender: TObject);

@description
  Stores the distribution date.
*******************************************************************************)
procedure TfrmDistribute.pickDateCloseUp(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(pickDate.Date, Year, Month, Day);
  strVersion := IntToStr(Year)+'.'+IntToStr(Month)+'.'+IntToStr(Day);
  pnlVersion.caption := strVersion;
  with rxSecurity do
  begin
    Active := True;
    First;
    Edit;
    FieldByName('DistributionDate').AsDateTime := pickDate.Date;
    Post;
  end;
end;

(*******************************************************************************
@function DistributeFile( strOldFileName: String; strNewFileName: String;
  var strError: String): Boolean;

@description
  Creates one distribution file.
*******************************************************************************)
function TfrmDistribute.DistributeFile(
  strOldFileName: String;
  strNewFileName: String;
  var strError: String): Boolean;
var
 Attributes: Word;
 hasCopied: Boolean;
begin
  if FileExists(strNewFileName) then
  begin
    Attributes := FileGetAttr(strNewFileName);
    Attributes := Attributes and not faReadOnly;
    Attributes := Attributes and not faHidden;
    FileSetAttr(strNewFileName, Attributes);
  end;
  if CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
  begin
    hasCopied := True;
  end
  else
  begin
    hasCopied := False;
    strError := strError +strOldFileName+#10
  end;
  Result := hasCopied;
end;

(*******************************************************************************
@procedure btnHistory1Click(Sender: TObject);

@description
  Opens the "History of distributed versions" page.
*******************************************************************************)
procedure TfrmDistribute.btnHistory1Click(Sender: TObject);
begin
  LastTabSheet := TabSheet1;
  lblWarning.Visible := False;
  if dmBase.rxDistribution.isEmpty then
  begin
    lblWarning.Visible := True;
  end;
  pcMain.ActivePage := TabSheet5;
end;

(*******************************************************************************
@procedure btnHistory4Click(Sender: TObject);

@description
  Opens the "History of distributed versions" page.
*******************************************************************************)
procedure TfrmDistribute.btnHistory4Click(Sender: TObject);
begin
  LastTabSheet := TabSheet3;
  lblWarning.Visible := False;
  pcMain.ActivePage := TabSheet5;
end;

(*******************************************************************************
@procedure btnBackClick(Sender: TObject);

@description
  Trurns to the previous page of the wizard.
*******************************************************************************)
procedure TfrmDistribute.btnBackClick(Sender: TObject);
begin
  pcMain.ActivePage := LastTabSheet;
end;

(*******************************************************************************
@procedure btnHelp4Click(Sender: TObject););

@Description
  Get Help for the "Recommendation and Instructions" page.
*******************************************************************************)
procedure TfrmDistribute.btnHelp4Click(Sender: TObject);
begin
  Application.HelpContext(6300);
end;

(*******************************************************************************
@procedure btnHelp1Click(Sender: TObject);

@Description
  Get Help for the first page of the wizard.
*******************************************************************************)
procedure TfrmDistribute.btnHelp1Click(Sender: TObject);
begin
  Application.HelpContext(6100);
end;

(*******************************************************************************
@procedure btnHelp1Click(Sender: TObject);

@Description
  Get Help for the third page of the wizard.
*******************************************************************************)
procedure TfrmDistribute.btnHelp3Click(Sender: TObject);
begin
  Application.HelpContext(6200);
end;

(*******************************************************************************
@procedure SetPassword;

@Description
  Set a password for the users. There are 4 different types of passwords:
  1. Password for DLI users (Administrators).
  2. Passwords for Verifying Authorities
  3. Passwords for WA users.
  4. Passwords for the users of the versions, which have been distributed by the Verifying Authorities
*******************************************************************************)
procedure TfrmDistribute.SetPassword;
var
  strPassword: String;
begin
  strPassWord := 'DLI2003RestrictedVersion';
  if gbDistributeTo.Visible then
  begin
    if rbtnVAUsers.Checked then
    begin
      strPassWord := 'DLI2003FullVersion';
    end
    else
    begin
      strPassWord := 'DLI2003WARestrictedVersion';
    end;
  end;
  rxSecurity.Active := True;
  rxSecurity.EmptyTable;
  rxSecurity.Append;
  rxSecurity.FieldbyName('SecurityID').AsInteger := 1;
  rxSecurity.FieldbyName('Password').AsString := strPassWord;
  rxSecurity.FieldbyName('DistributionVersion').AsString := strVersion;
  rxSecurity.FieldbyName('DistributionAuthority').AsString := strAuthority;
  rxSecurity.FieldbyName('DistributionDate').AsDateTime := pickDate.Date;
  rxSecurity.FieldbyName('isRegistered').AsBoolean := False;
  rxSecurity.FieldbyName('isFirstTimeUser').AsBoolean := True;
  rxSecurity.Post;
end;

(*******************************************************************************
@procedure CopyWABaselines(strDistributionTo: String): Boolean;

@Description
  Distribute the latest calibrated baselines in WA.
*******************************************************************************)
function TfrmDistribute.CopyWABaselines(strDistributionTo: String): Boolean;
var
  strApplicationFolder: String;
  strExportDBFolder: String;
  strApplicationDBFolder: String;
  strDistributionDBFolder: String;
  strOldFileName: String;
  strNewFileName: String;
  hasUpgradeTables: Boolean;
  strError: String;
  hasError: Boolean;
begin
  Result := True;
  hasError := False;
  strError := 'The following files could not be copied into Distribution Database Folder'+#10+#10;
  hasUpgradeTables := False;
  strApplicationFolder := ExtractFilePath( Application.ExeName);
  strApplicationDBFolder := strApplicationFolder+'Database\';
  strExportDBFolder := strApplicationDBFolder+'Export\';
  if strDistributionTo = 'VAFullVersion' then
  begin
    strDistributionDBFolder := strApplicationFolder+'DistributionVA\Database\';
  end
  else
  begin
    strDistributionDBFolder := strApplicationFolder+'Distribution\Database\';
  end;

  if DirectoryExists(strExportDBFolder) then
  begin
    strOldFileName := strExportDBFolder+'rxWebBaseline.db';
    if FileExists(strOldFileName) then
    begin
      strOldFileName := strExportDBFolder+'rxWebPillar.db';
      if FileExists(strOldFileName) then
      begin
        strOldFileName := strExportDBFolder+'rxWebDistance.db';
        if FileExists(strOldFileName) then
        begin
          hasUpgradeTables := True;
        end;
      end
    end;
  end;

  if hasUpgradeTables then
  begin
    rxWebBaseline.Active := True;
    rxWebBaselineAccuracy.Active := True;
    rxWebBaselineDefault.Active := True;
    rxWebPillar.Active := True;
    rxWebDistance.Active := True;
    dmBase.LoadFromTextFileToTable2(strExportDBFolder, rxWebBaseline);
    dmBase.LoadFromTextFileToTable2(strExportDBFolder, rxWebBaselineAccuracy);
    dmBase.LoadFromTextFileToTable2(strExportDBFolder, rxWebBaselineDefault);
    dmBase.LoadFromTextFileToTable2(strExportDBFolder, rxWebPillar);
    dmBase.LoadFromTextFileToTable2(strExportDBFolder, rxWebDistance);

    if strDistributionTo = 'VAFullVersion' then
    begin
      UpdateWebTablesExcludeCurrent;
    end
    else
    begin
      UpdateWebTables;
    end;

    dmBase.SaveTableToTextFile2(strExportDBFolder, rxWebBaseline);
    dmBase.SaveTableToTextFile2(strExportDBFolder, rxWebBaselineAccuracy);
    dmBase.SaveTableToTextFile2(strExportDBFolder, rxWebBaselineDefault);
    dmBase.SaveTableToTextFile2(strExportDBFolder, rxWebPillar);
    dmBase.SaveTableToTextFile2(strExportDBFolder, rxWebDistance);

    strOldFileName := strExportDBFolder+'rxWebBaseline.db';
    strNewFileName := strDistributionDBFolder+'rxBaselineX.db';
    if FileExists(strOldFileName) then
    begin
      if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
      begin
        hasError := True;
        strError := strError +strOldFileName+#10
      end;
    end;

    strOldFileName := strExportDBFolder+'rxWebBaselineAccuracy.db';
    strNewFileName := strDistributionDBFolder+'rxBaselineAccuracyX.db';
    if FileExists(strOldFileName) then
    begin
      if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
      begin
        hasError := True;
        strError := strError +strOldFileName+#10
      end;
    end;

    strOldFileName := strExportDBFolder+'rxWebBaselineDefault.db';
    strNewFileName := strDistributionDBFolder+'rxBaselineDefaultX.db';
    if FileExists(strOldFileName) then
    begin
      if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
      begin
        hasError := True;
        strError := strError +strOldFileName+#10
      end;
    end;

    strOldFileName := strExportDBFolder+'rxWebPillar.db';
    strNewFileName := strDistributionDBFolder+'rxPillarX.db';
    if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
    begin
      hasError := True;
      strError := strError +strOldFileName+#10
    end;

    strOldFileName := strExportDBFolder+'rxWebDistance.db';
    strNewFileName := strDistributionDBFolder+'rxDistanceX.db';
    if not CopyFile(PChar(strOldFileName), PChar(strNewFileName),False) then
    begin
      hasError := True;
      strError := strError +strOldFileName+#10
    end;
    if hasError then
    begin
      strError := strError+#10+'You must copy these files into the Distribution Folder '+strDistributionDBFolder;
      MessageDlg(strError,mtWarning,[mbOK],0);
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;
end;

(*******************************************************************************
@procedure FilterPillar( sBaselineId: Integer);

@Description
  Gets the pillars of a selected baseline.
*******************************************************************************)
procedure TfrmDistribute.FilterPillar( sBaselineId: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
 doEvents2: Boolean;
begin
  doEvents2 := dmBase.doEvents;
  dmBase.doEvents := False;
  dmBase.rxFilteredPillar.EmptyTable;
  with dmBase.rxPillar do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineId').AsInteger = sBaselineID then
      begin
        dmBase.rxFilteredPillar.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(dmBase.rxFilteredPillar.Fields[j].FieldName);
          strField := uppercase(Fields[i].FieldName);
          while (strFilteredField <> strField) and
                 ( j < dmBase.rxFilteredPillar.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(dmBase.rxFilteredPillar.Fields[j].FieldName);
          end;
          dmBase.rxFilteredPillar.Fields[j].Value := Fields[i].Value;
        end;
        dmBase.rxFilteredPillar.Post;
      end;
      Next;
    end;
  end;
  dmBase.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure FilterDistance( sBaselineId: Integer);

@Description
  Gets the legal distances between the pillars of a selected baseline.
*******************************************************************************)
procedure TfrmDistribute.FilterDistance( sBaselineId: Integer);
var
 i,j : Integer;
 strFilteredField: String;
 strField: String;
 doEvents2: Boolean;
begin
  doEvents2 := dmBase.doEvents;
  dmBase.doEvents := False;
  dmBase.rxFilteredDistance.EmptyTable;
  with dmBase.rxDistance do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineId').AsInteger = sBaselineID then
      begin
        dmBase.rxFilteredDistance.Append;
        for i := 0 to FieldCount - 1 do
        begin
          j := 0;
          strFilteredField := uppercase(dmBase.rxFilteredDistance.Fields[j].FieldName);
          strField := uppercase(Fields[i].FieldName);
          while (strFilteredField <> strField) and
                (j < dmBase.rxFilteredDistance.FieldCount-1) do
          begin
            Inc(j);
            strFilteredField := uppercase(dmBase.rxFilteredDistance.Fields[j].FieldName);
          end;
          dmBase.rxFilteredDistance.Fields[j].Value := Fields[i].Value;
        end;
        dmBase.rxFilteredDistance.Post;
      end;
      Next;
    end;
  end;
  dmBase.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure UpdateWebTables2;

@Description
  Ensures that the distributed baselines contain the latest calibrated values.
*******************************************************************************)
procedure TfrmDistribute.UpdateWebTables2;
var
  sNextBaselineID: Integer;
  sNextPillarID: Integer;
  sNextDistanceID: Integer;
  sFirstPillarID: Integer;
  i, j: Integer;
  strField, strWebField: string;
  doEvents2: Boolean;
begin
  doEvents2 := dmBase.doEvents;
  dmbase.doEvents := false;
  rxWebBaseline.Last;
  sNextBaselineID := rxWebBaseline.FieldByname('BaselineID').AsInteger;
  rxWebPillar.Last;
  sNextPillarID := rxWebPillar.FieldByname('PillarID').AsInteger;
  rxWebDistance.Last;
  sNextDistanceID := rxWebDistance.FieldByname('DistID').AsInteger;
  sFirstPillarID := sNextPillarID;

  with rxWebBaseline do
  begin
    Append;
    for i := 0 to FieldCount - 1 do
    begin
      Fields[i].Value := dmBase.rxBaseline.Fields[i].Value;
    end;
    Inc(sNextBaselineID);
    FieldByName('BaselineID').AsInteger := sNextBaselineID;
    Post;
  end;

  with rxWebBaselineAccuracy do
  begin
    if dmBase.rxBaselineAccuracy.Locate('BaselineID',dmBase.rxBaseline.FieldByname('BaselineID').AsString,[]) then
    begin
      Append;
      for i := 0 to FieldCount - 1 do
      begin
        Fields[i].Value := dmBase.rxBaselineAccuracy.Fields[i].Value;
      end;
      FieldByName('BaselineID').AsInteger := sNextBaselineID;
      Post;
    end;
  end;

  FilterPillar( dmBase.rxBaseline.FieldByName('BaselineId').AsInteger);
  FilterDistance( dmBase.rxBaseline.FieldByName('BaselineId').AsInteger);

  with dmBase.rxFilteredPillar do
  begin
    First;
    while not EOF do
    begin
      rxWebPillar.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strWebField := uppercase(rxWebPillar.Fields[j].FieldName);
        strField := uppercase(Fields[i].FieldName);
        while (strWebField <> strField) and
               ( j < rxWebPillar.FieldCount-1) do
        begin
          Inc(j);
          strWebField := uppercase(rxWebPillar.Fields[j].FieldName);
        end;
        if strWebField = strField then
        begin
          rxWebPillar.Fields[j].Value := Fields[i].Value;
        end;
      end;
      Inc(sNextPillarID);
      rxWebPillar.FieldByName('PillarID').AsInteger := sNextPillarID;
      rxWebPillar.FieldByName('BaselineID').AsInteger := sNextBaselineID;
      rxWebPillar.Post;
      Next;
    end;
  end;

  sNextPillarID := sFirstPillarID;
  with dmBase.rxFilteredDistance do
  begin
    First;
    while not EOF do
    begin
      rxWebDistance.Append;
      for i := 0 to FieldCount - 1 do
      begin
        j := 0;
        strWebField := uppercase(rxWebDistance.Fields[j].FieldName);
        strField := uppercase(Fields[i].FieldName);
        while (strWebField <> strField) and
               ( j < rxWebDistance.FieldCount-1) do
        begin
          Inc(j);
          strWebField := uppercase(rxWebDistance.Fields[j].FieldName);
        end;
        if strWebField = strField then
        begin
          rxWebDistance.Fields[j].Value := Fields[i].Value;
        end;
      end;
      Inc(sNextDistanceID);
      Inc(sNextPillarID);
      rxWebDistance.FieldByName('DistID').AsInteger := sNextDistanceID;
      rxWebDistance.FieldByName('PillarFromID').AsInteger := sNextPillarID;
      rxWebDistance.FieldByName('PillarToID').AsInteger := sNextPillarID + 1;
      rxWebDistance.FieldByName('BaselineID').AsInteger := sNextBaselineID;
      rxWebDistance.Post;
      Next;
    end;
  end;
  dmBase.doEvents := doEvents2;
end;

(*******************************************************************************
@procedure CopyWASampleJobs(strDistributionTo: String);

@Description
  Create sample jobs for distribution to WA and VA users.
*******************************************************************************)
procedure TfrmDistribute.CopyWASampleJobs(strDistributionTo: String);
var
  strApplicationFolder: String;
  strExportDBFolder: String;
  strDistributionDBFolder: String;
  strOldFileName: String;
  strNewFileName: String;
  strError: String;
begin
  strApplicationFolder := ExtractFilePath( Application.ExeName);
  strExportDBFolder := strApplicationFolder+'Database\Export\';
  if strDistributionTo = 'VAFullVersion' then
  begin
    strDistributionDBFolder := strApplicationFolder+'DistributionVA\Database\';
  end
  else
  begin
    strDistributionDBFolder := strApplicationFolder+'Distribution\Database\';
  end;
  if DirectoryExists(strExportDBFolder) then
  begin
    strOldFileName := strExportDBFolder+'rxWebJob.db';
    strNewFileName := strDistributionDBFolder+'rxJobX.db';
    if DistributeFile(strOldFileName, strNewFileName, strError) then
    begin
      strOldFileName := strExportDBFolder+'rxWebJMeasure.db';
      strNewFileName := strDistributionDBFolder+'rxJMeasureX.db';
      if DistributeFile(strOldFileName, strNewFileName, strError) then
      begin
        strOldFileName := strExportDBFolder+'rxWebEDMObs.db';
        strNewFileName := strDistributionDBFolder+'rxEDMObsX.db';
        DistributeFile(strOldFileName, strNewFileName, strError);
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure CopyFromFullDatabase(strDistributionTo: String);

@Description
  Creates a copy of all baselines and jobs for distribution. This routine should
  never be revoked.
*******************************************************************************)
procedure TfrmDistribute.CopyFromFullDatabase(strDistributionTo: String);
var
  strApplicationDBFolder: String;
  strApplicationFolder: String;
  strDistributionDBFolder: String;
  strOldFileName: String;
  strNewFileName: String;
  strError: String;
begin
  strApplicationFolder := ExtractFilePath( Application.ExeName);
  strApplicationDBFolder := strApplicationFolder+'Database\';
  if strDistributionTo = 'VAFullVersion' then
  begin
    strDistributionDBFolder := strApplicationFolder+'DistributionVA\Database\';
  end
  else
  begin
    strDistributionDBFolder := strApplicationFolder+'Distribution\Database\';
  end;

{
  strOldFileName := strApplicationDBFolder+'rxBaseline.db';
  strNewFileName := strDistributionDBFolder+'rxBaseline.db';
  if strDistributionTo = 'VAFullVersion' then strNewFileName := strDistributionDBFolder+'rxBaselineX.db';
  if DistributeFile(strOldFileName, strNewFileName, strError) then
  begin
    strOldFileName := strApplicationDBFolder+'rxPillar.db';
    strNewFileName := strDistributionDBFolder+'rxPillar.db';
    if strDistributionTo = 'VAFullVersion' then strNewFileName := strDistributionDBFolder+'rxPillarX.db';
    if DistributeFile(strOldFileName, strNewFileName, strError) then
    begin
      strOldFileName := strApplicationDBFolder+'rxDistance.db';
      strNewFileName := strDistributionDBFolder+'rxDistance.db';
      if strDistributionTo = 'VAFullVersion' then strNewFileName := strDistributionDBFolder+'rxDistanceX.db';
      if DistributeFile(strOldFileName, strNewFileName, strError) then
      begin
        strOldFileName := strApplicationDBFolder+'rxJob.db';
        strNewFileName := strDistributionDBFolder+'rxJobX.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          strOldFileName := strApplicationDBFolder+'rxJMeasure.db';
          strNewFileName := strDistributionDBFolder+'rxJMeasureX.db';
          if DistributeFile(strOldFileName, strNewFileName, strError) then
          begin
            strOldFileName := strApplicationDBFolder+'rxEDMObs.db';
            strNewFileName := strDistributionDBFolder+'rxEDMObsX.db';
            DistributeFile(strOldFileName, strNewFileName, strError);
//          if DistributeFile(strOldFileName, strNewFileName, strError) then
//          begin
//            strOldFileName := strApplicationDBFolder+'rxBaselineAccuracy.db';
//            strNewFileName := strDistributionDBFolder+'rxBaselineAccuracyX.db';
//            if DistributeFile(strOldFileName, strNewFileName, strError) then
//            begin
//              strOldFileName := strApplicationDBFolder+'rxBaselineDefault.db';
//              strNewFileName := strDistributionDBFolder+'rxBaselineDefaultX.db';
//              DistributeFile(strOldFileName, strNewFileName, strError);
//            end
//          end;
          end;
        end;
      end;
    end;
  end;
}
  strError := '';
  strOldFileName := strApplicationDBFolder+'rxBaseline.db';
  strNewFileName := strDistributionDBFolder+'rxBaselineX.db';
  if DistributeFile(strOldFileName, strNewFileName, strError) then
  begin
    strOldFileName := strApplicationDBFolder+'rxPillar.db';
    strNewFileName := strDistributionDBFolder+'rxPillarX.db';
    if DistributeFile(strOldFileName, strNewFileName, strError) then
    begin
      strOldFileName := strApplicationDBFolder+'rxDistance.db';
      strNewFileName := strDistributionDBFolder+'rxDistanceX.db';
      if DistributeFile(strOldFileName, strNewFileName, strError) then
      begin
        strOldFileName := strApplicationDBFolder+'rxBaselineAccuracy.db';
        strNewFileName := strDistributionDBFolder+'rxBaselineAccuracyX.db';
        if DistributeFile(strOldFileName, strNewFileName, strError) then
        begin
          strOldFileName := strApplicationDBFolder+'rxBaselineDefault.db';
          strNewFileName := strDistributionDBFolder+'rxBaselineDefaultX.db';
          if DistributeFile(strOldFileName, strNewFileName, strError) then
          begin
            strOldFileName := strApplicationDBFolder+'rxJob.db';
            strNewFileName := strDistributionDBFolder+'rxJobX.db';
            if DistributeFile(strOldFileName, strNewFileName, strError) then
            begin
              strOldFileName := strApplicationDBFolder+'rxJMeasure.db';
              strNewFileName := strDistributionDBFolder+'rxJMeasureX.db';
              if DistributeFile(strOldFileName, strNewFileName, strError) then
              begin
                strOldFileName := strApplicationDBFolder+'rxEDMObs.db';
                strNewFileName := strDistributionDBFolder+'rxEDMObsX.db';
                DistributeFile(strOldFileName, strNewFileName, strError);
              end;
            end
          end;
        end
      end;
    end;
  end;
  if strError <> '' then
  begin
    MessageDlg(strError,mtError, [mbOK], 0);
  end;
end;

(*******************************************************************************
@procedure btnHelpHistoryClick(Sender: TObject););

@Description
  Get Help for the "History of distribution" page.
*******************************************************************************)
procedure TfrmDistribute.btnHelpHistoryClick(Sender: TObject);
begin
  Application.HelpContext(6500);
end;

(*******************************************************************************
@procedure CreateCleanInstrumentTable;

@Description
  Only includes instruments, which have been used in the sample jobs.
*******************************************************************************)
procedure TfrmDistribute.CreateCleanInstrumentTable;
var
  sInstrumentID: Integer;
  strApplicationFolder: String;
  strApplicationDBFolder: String;
  strExportDBFolder: String;
  i: Integer;
begin

  strApplicationFolder := ExtractFilePath( Application.ExeName);
  strApplicationDBFolder := strApplicationFolder+'Database\';
  strExportDBFolder := strApplicationDBFolder+'Export\';
  dmBase.LoadFromTextFileToTable2(strExportDBFolder, rxWebJob);
  rxCleanInstrument.EmptyTable;
  if rxWebJob.RecordCount > 0 then
  begin
    with dmBase.rxInstrument do
    begin
      if RecordCount > 0 then
      begin
        First;
        while not EOF do
        begin
          sInstrumentID := FieldByName('InstID').AsInteger;
          if IsInstrumentUsedInSampleJobs(sInstrumentID) then
          begin
            rxCleanInstrument.Append;
            for i:= 0 to dmBase.rxInstrument.FieldCount - 1 do
            begin
              rxCleanInstrument.Fields[i].Value := Fields[i].Value
            end;
            rxCleanInstrument.Post;
          end;
          Next;
        end;
      end;
    end;
  end;
end;

(*******************************************************************************
@function IsInstrumentUsedInSampleJobs(sInstrumentID : Integer) : Boolean;

@Description
  Returns TRUE if the selected instrument has been used in sample jobs.
*******************************************************************************)
function TfrmDistribute.IsInstrumentUsedInSampleJobs(sInstrumentID : Integer) : Boolean;
var
  isFound : Boolean;
  strInstrumentId: String;
begin
  isFound := False;
  strInstrumentId := IntToStr(sInstrumentID);
  if rxWebJob.Locate('InstId1',strInstrumentId,[]) then
  begin
    isFound := True;
  end;
  if rxWebJob.Locate('InstId2',strInstrumentId,[]) then
  begin
    isFound := True;
  end;
  Result := isFound;
end;

(*******************************************************************************
@procedure CreateWAUserMethodTable;

@Description
  Include valid method descriptions for WA users.
*******************************************************************************)
procedure TfrmDistribute.CreateWAUserMethodTable;
begin
  rxWAUserMethod.EmptyTable;
  with dmBase.rxMethod do
  begin
    if RecordCount > 0 then
    begin
      First;
      while not EOF do
      begin
        rxWAUserMethod.Append;
        rxWAUserMethod.FieldByName('Method').Value := FieldByName('Method').Value;
        if FieldByName('Method').AsString = 'EDM Instrument Calibration Procedure' then
        begin
          rxWAUserMethod.FieldByName('Description').Clear;
        end
        else
        begin
          rxWAUserMethod.FieldByName('Description').Value := FieldByName('Description').Value;
        end;

        if not chkIncludeLogos.Checked then
        begin
          if FieldByName('Method').AsString = 'Accreditation Logo' then
          begin
            rxWAUserMethod.FieldByName('Description').Clear;
          end;
          if FieldByName('Method').AsString = 'Quality Logo' then
          begin
            rxWAUserMethod.FieldByName('Description').Clear;
          end;
          if FieldByName('Method').AsString = 'Authority Logo' then
          begin
            rxWAUserMethod.FieldByName('Description').Clear;
          end;
        end;
        rxWAUserMethod.Post;
        Next;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure rbtnVAsersClick(Sender: TObject);

@Description
  VA users can include or exclude logos in the reports
*******************************************************************************)
procedure TfrmDistribute.rbtnVAUsersClick(Sender: TObject);
begin
  chkIncludeLogos.Checked := False;
  chkIncludeLogos.Visible := False;
  memDescription.Visible := False;
end;

(*******************************************************************************
@procedure rbtnWAUsersClick(Sender: TObject);

@Description
  WA users can not include or exclude logos in the reports
*******************************************************************************)
procedure TfrmDistribute.rbtnWAUsersClick(Sender: TObject);
begin
  chkIncludeLogos.Visible := True;
  chkIncludeLogos.Checked := False;
  memDescription.Visible := True;
end;

(*******************************************************************************
@procedure UpdateWebTables;

@Description
  1. Include baselines, which have been used by sample jobs.
  2. Include all baselines, which are current.
*******************************************************************************)
procedure TfrmDistribute.UpdateWebTables;
var
  sBaselineID: Integer;
  i: Integer;
begin
  // Only include baselines, which have been used by sample jobs, Delete all others
  rxWebBaselineAccuracy.First;
  with rxWebBaseline do
  begin
    First;
    while not EOF do
    begin
      sBaselineID := FieldByName('BaselineID').AsInteger;
      if rxWebJob.Locate('BaselineID',IntToStr(sBaselineID),[]) then
      begin
        Edit;
        FieldByName('BaselineArchiveFlag').AsString := 'A';
        Post;
        rxWebBaselineAccuracy.Edit;
        rxWebBaselineAccuracy.FieldByName('BaselineID').AsInteger := sBaselineID;
        rxWebBaselineAccuracy.Post;
        rxWebBaselineAccuracy.Next;
        Next;
      end
      else
      begin
        Delete;
        DeleteWebRecords(sBaselineID);
      end;
    end;
  end;

// to ensure that WebBaselineAccuracy is cynchronised with WebBaseline
  with rxWebBaselineAccuracy do
  begin
    First;
    sbaselineID := 0;
    while (not EOF) do
    begin
      if sBaselineID < 2 then
      begin
        Inc(sBaselineID);
        rxWebBaselineAccuracy.Edit;
        rxWebBaselineAccuracy.FieldByName('BaselineID').AsInteger := sBaselineID;
        if sBaselineID = 1 then
        begin
          rxWebBaselineAccuracy.FieldByName('UncertaintyConstant').AsFloat := 0.13;   //  Kalgoorlie
          rxWebBaselineAccuracy.FieldByName('UncertaintyScale').AsFloat := 1.60;
        end
        else
        begin
          rxWebBaselineAccuracy.FieldByName('UncertaintyConstant').AsFloat := 0.13;    // Curtin
          rxWebBaselineAccuracy.FieldByName('UncertaintyScale').AsFloat := 1.65;
        end;
        rxWebBaselineAccuracy.Post;
        Next;
      end
      else
      begin
        Delete;
      end;
    end;
  end;

// ********************************************************************

  // Include all baselines, which are Current
  with dmBase.rxBaseline do
  begin
    First;
    while not EOF do
    begin
      sBaselineID := FieldByName('BaselineID').AsInteger;
      if (FieldByName('BaselineArchiveFlag').AsString = 'C') then
      begin
         UpdateWebTables2;
        {
        if rxWebBaseline.Locate('BaselineID',IntToStr(sBaselineID),[]) then
        begin
          rxWebBaseline.Edit;
          rxWebBaseline.FieldByName('BaselineArchiveFlag').AsString := 'C';
          rxWebBaseline.Post;
        end
        else
        begin
          UpdateWebTables2;
        end;
        }
      end;
      Next;
    end;
  end;


// Update Baseline defaults
  rxWebBaselineDefault.EmptyTable;
  rxWebBaseline.First;
  while not rxWebBaseline.EOF do
  begin
    sBaselineID := rxWebBaseline.FieldByName('BaselineID').AsInteger;
    with dmbase.rxBaselineDefault do
    begin
      First;
      while not EOF do
      begin
        if FieldByName('BaselineID').AsInteger = sBaselineID then
        begin
          rxWebBaselineDefault.Append;
          for i := 0 to FieldCount - 1 do
          begin
            rxWebBaselineDefault.Fields[i].Value := Fields[i].Value;
          end;
          rxWebBaselineDefault.Post;
        end;
        Next;
      end;
    end;
    rxWebBaseline.Next;
  end;
end;

(*******************************************************************************
@procedure UpdateWebTablesExcludeCurrent;

@Description
  Only include baselines, which have been used by sample jobs, Delete all others
*******************************************************************************)
procedure TfrmDistribute.UpdateWebTablesExcludeCurrent;
var
  sBaselineID: Integer;
begin
  // Only include baselines, which have been used by sample jobs, Delete all others
  with rxWebBaseline do
  begin
    First;
    while not EOF do
    begin
      sBaselineID := FieldByName('BaselineID').AsInteger;
      if rxWebJob.Locate('BaselineID',IntToStr(sBaselineID),[]) then
      begin
        Edit;
        FieldByName('BaselineArchiveFlag').AsString := 'A';
        Post;
        Next;
      end
      else
      begin
        Delete;
        DeleteWebRecords(sBaselineID);
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure DeleteWebRecords(sBaselineID: Integer);

@Description
  Delete web table records associated with a specified baseline.
*******************************************************************************)
procedure TfrmDistribute.DeleteWebRecords(sBaselineID: Integer);
begin
  with rxWebBaselineAccuracy do
  begin
    if Locate('BaselineID',IntToStr(sBaselineID),[]) then
    begin
      Delete;
    end;
  end;

  with rxWebBaselineDefault do
  begin
    if Locate('BaselineID',IntToStr(sBaselineID),[]) then
    begin
      Delete;
    end;
  end;

  with rxWebPillar do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;

  with rxWebDistance do
  begin
    First;
    while not EOF do
    begin
      if FieldByName('BaselineID').AsInteger = sBaselineID then
      begin
        Delete;
      end
      else
      begin
        Next;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure SaveDisclaimer;

@Description
  Save Disclaimer and copyright statements to database.
*******************************************************************************)
procedure TfrmDistribute.SaveDisclaimer;
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
      begin
        Delete;
      end
      else
      begin
        strMethod1 := Copy(strMethod,1,20);
        if strMethod1 = 'Distribute_Copyright' then
        begin
          Delete;
        end
        else
        begin
          Next;
        end;  
      end;
    end;

    for I := 0 to memDisclaimer.Lines.Count-1 do
    begin
      strMethod := 'Disclaimer '+IntToStr(I+1);
      Append;
      FieldByName('Method').AsString := strMethod;
      FieldByName('Description').AsString := memDisclaimer.Lines[I];
      Post;
    end;

    for I := 0 to memCopyRight.Lines.Count-1 do
    begin
      strMethod := 'Distribute_Copyright '+IntToStr(I+1);
      Append;
      FieldByName('Method').AsString := strMethod;
      FieldByName('Description').AsString := memCopyRight.Lines[I];
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure GetDisclaimer;

@Description
  Get Disclaimer and copyright statements from database.
*******************************************************************************)
procedure TfrmDistribute.GetDisclaimer;
var
  strMethod: string;
  sCount: Integer;
  doContinue: Boolean;
begin
  sCount := 0;
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
        begin
          memDisclaimer.Lines.Clear;
        end;
        memDisclaimer.Lines.Add(FieldByName('Description').AsString);
      end
      else
      begin
        doContinue := False;
      end;
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
        begin
          memCopyRight.Lines.Clear;
        end;
        memCopyRight.Lines.Add(FieldByName('Description').AsString);
      end
      else
      begin
        doContinue := False;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure btnHelp2Click(Sender: TObject);

@Description
  Get Help for the Disclaimer and copyright statements page.
*******************************************************************************)
procedure TfrmDistribute.btnHelp2Click(Sender: TObject);
begin
  Application.HelpContext(6150);
end;

end.
