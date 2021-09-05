(*******************************************************************************
@FormUnit BseDefault;

@Description
 In this application you can create/delete and edit default settings.

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit BseDefault;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, ExtCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  ComCtrls, Buttons, Mask, DBGrids, wwdbedit, wwSpeedButton, wwDBNavigator,
  wwclearpanel, fmLUMUnits;

type
  TfrmDefaults = class(TForm)
    pcMain: TPageControl;
    tsEDMUncertainty: TTabSheet;
    lblUncertaintyEDM: TLabel;
    dbgridUncertainty1: TwwDBGrid;
    dbnavUncertainty1: TDBNavigator;
    btnClose: TBitBtn;
    btnHelp1: TBitBtn;
    tsUncertaintyBaseline: TTabSheet;
    dbgridUncertainty2: TwwDBGrid;
    dbnavUncertainty2: TDBNavigator;
    lblUncertaintyBaseline: TLabel;
    tsProcedures: TTabSheet;
    pcProcedures: TPageControl;
    tsBaselineProcedure: TTabSheet;
    tsEDMCalibration: TTabSheet;
    lblEDMProcedure: TLabel;
    dbedtEDMProcedure: TDBEdit;
    lbl_EDMProcedureDescription: TLabel;
    lblProcedure: TLabel;
    lblBaselineProcedure: TLabel;
    dbedtBaselineProcedure: TDBEdit;
    lblBaselineProcedureDescription: TLabel;
    tsTraceability: TTabSheet;
    lblTraceability: TLabel;
    tsMiscellaneous: TTabSheet;
    lblMiscellaneous: TLabel;
    dbgridMisc: TwwDBGrid;
    pcTraceability: TPageControl;
    tsBaselineTraceability: TTabSheet;
    lbl_tsBaselineTraceability_Procedure: TLabel;
    lbl_tsBaselineTraceability_Description: TLabel;
    DBEdit3: TDBEdit;
    tsEDMTraceability: TTabSheet;
    lbl_tsEDMTraceability_Procedure: TLabel;
    lbl_tsEDMTraceability_Description: TLabel;
    dbedt_tsEDMTraceability_Procedure: TDBEdit;
    dbmemTraceabilityEDM: TDBMemo;
    dbmemTraceability: TDBMemo;
    tsStandards: TTabSheet;
    lblStandards1: TLabel;
    lblStandardsAuthority: TLabel;
    lblTraceabilityStatement: TLabel;
    lblStandards2: TLabel;
    lblConfidenceLevel: TLabel;
    dbedtStandardsAuthority: TwwDBEdit;
    dbmemStandard: TDBMemo;
    tsAccreditation: TTabSheet;
    lblAccreditation: TLabel;
    OpenDialog1: TOpenDialog;
    pcAccreditation: TPageControl;
    tsStatement: TTabSheet;
    tsLogo: TTabSheet;
    ImageAccreditation: TImage;
    lblAccreditationLogo: TLabel;
    btnLogo: TButton;
    btnDeleteLogo: TButton;
    memAccreditationLogoTitle: TMemo;
    tsAuthority: TTabSheet;
    lblAccreditationAuthority: TLabel;
    dbedtAccreditationAuthority: TDBEdit;
    dbmemBaselineAccreditationStatement: TDBMemo;
    tsLegalTraceability: TTabSheet;
    lbl_tsLegalTraceability_Procedure: TLabel;
    lbl_tsLegalTraceability_Description: TLabel;
    dbedt_tsLegalTraceability_Procedure: TDBEdit;
    memLegalTraceability: TDBMemo;
    memEDMProcedure: TMemo;
    memBaselineProcedure: TMemo;
    tsAuthority1: TTabSheet;
    lblTestingAuthority: TLabel;
    lblTestingAuthorityAbbrev: TLabel;
    lblTestingAuthorityFullName: TLabel;
    edtAuthorityAbbrev: TEdit;
    edtAuthorityFullName: TEdit;
    GroupBox1: TGroupBox;
    ImageAuthority: TImage;
    btnLogoAuthority: TButton;
    btnDeleteAuthorityLogo: TButton;
    tsAbout: TTabSheet;
    Label1: TLabel;
    lblCopyRight: TLabel;
    Label2: TLabel;
    memEnquiry: TMemo;
    memCopyright: TMemo;
    Label3: TLabel;
    tsReport: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtCopyright: TEdit;
    edtProgramOwner: TEdit;
    tsAccreditationLUM: TTabSheet;
    Label7: TLabel;
    tsLUM: TTabSheet;
    Label8: TLabel;
    pcLUM: TPageControl;
    tsLUMBaseline: TTabSheet;
    tsLUMEDM: TTabSheet;
    Panel4: TPanel;
    Panel7: TPanel;
    chkBaselineLUM1: TCheckBox;
    chkEDMLUM1: TCheckBox;
    FrameLUMUnits1: TFrameLUMUnits;
    FrameLUMUnits2: TFrameLUMUnits;
    FrameLUMUnits3: TFrameLUMUnits;
    FrameLUMUnits4: TFrameLUMUnits;
    Label9: TLabel;
    procedure dbgridUncertainty1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgridUncertainty2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnHelp1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure dbgridMiscCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure pcTraceabilityChange(Sender: TObject);
    procedure dbmemStandardExit(Sender: TObject);
    procedure btnLogoClick(Sender: TObject);
    procedure btnDeleteLogoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcAccreditationChange(Sender: TObject);
    procedure pcProceduresChange(Sender: TObject);
    procedure btnLogoAuthorityClick(Sender: TObject);
    procedure btnDeleteAuthorityLogoClick(Sender: TObject);
    procedure memEnquiryChange(Sender: TObject);
    procedure StandardPost(Sender: TObject);
    procedure edtCopyrightChange(Sender: TObject);
    procedure edtProgramOwnerChange(Sender: TObject);
    procedure pcLUMChange(Sender: TObject);
    procedure chkBaselineLUM1Click(Sender: TObject);
    procedure chkEDMLUM1Click(Sender: TObject);
    procedure tsStandardsShow(Sender: TObject);
    procedure tsAccreditationLUMShow(Sender: TObject);
//    procedure cbAddInstrumentUncertaintyEDMClick(Sender: TObject);
//    procedure cbAddInstrumentUncertaintyBASEClick(Sender: TObject);
  private
    { Private declarations }
    changedAbout: Boolean;
    doEvents: Boolean;
    procedure GetLogo;
    procedure SetImageSize(Image: TImage);
    procedure UpdateLogo;
    procedure SaveCopyRight;
    procedure LoadCopyRight;
    procedure SaveSoftwareAuthority(strAuthority: string; strAuthorityAbbrev: string);
    procedure InitAuthority;
    procedure ShowLum;
  public
    { Public declarations }
    canCalibrateBaseline: Boolean;
    isDLI: Boolean;
    isWARestrictedVersion: Boolean;
    strLogoFolder: String;
    strAccreditationLogo: String;
    strLogoAuthorityFolder: string;
    strLogoAuthorityImage: string;
    changedCopyrightReport: Boolean;
    changedProgramOwner: Boolean;
  end;

var
  frmDefaults: TfrmDefaults;

implementation

{$R *.DFM}
uses BseDM, BseCalib;

(*******************************************************************************
@procedure dbgridUncertainty1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);

@Description
  Highlights the Unit field in the database grid.
*******************************************************************************)
procedure TfrmDefaults.dbgridUncertainty1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName = 'Unit' then
  begin
    ABrush.Color := clBtnFace;
    if Highlight then ABrush.Color := clMenuHighlight;
  end;
end;

(*******************************************************************************
@procedure dbgridUncertainty2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);

@Description
  Highlights the Unit field in the database grid.
*******************************************************************************)
procedure TfrmDefaults.dbgridUncertainty2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName = 'Unit' then
  begin
    ABrush.Color := clBtnFace;
    if Highlight then ABrush.Color := clMenuHighlight;
  end;
end;

(*******************************************************************************
@procedure btnHelp1Click(Sender: TObject);

@description
  Displays the Help for each page
*******************************************************************************)
procedure TfrmDefaults.btnHelp1Click(Sender: TObject);
begin
  if pcMain.ActivePage = tsProcedures then
  begin
    Application.HelpContext(5110);
  end
  else if pcMain.ActivePage = tsTraceability then
  begin
    Application.HelpContext(5120);
  end
  else if pcMain.ActivePage = tsAccreditation then
  begin
    Application.HelpContext(5121);
  end
  else if pcMain.ActivePage = tsStandards then
  begin
    Application.HelpContext(5122);
  end
  else if pcMain.ActivePage = tsUncertaintyBaseline then
  begin
    Application.HelpContext(5123);
  end
  else if pcMain.ActivePage = tsEDMUncertainty then
  begin
    Application.HelpContext(5124);
  end
  else if pcMain.ActivePage = tsLUM then
  begin
    Application.HelpContext(5125);
  end
  else if pcMain.ActivePage = tsAbout then
  begin
    Application.HelpContext(5126);
  end
  else if pcMain.ActivePage = tsReport then
  begin
    Application.HelpContext(5127);
  end
  else if pcMain.ActivePage = tsMiscellaneous then
  begin
    Application.HelpContext(5130);
  end;
end;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  1. Initialises the settings.
  2. Loads the default values, logos, copyrights, standards and procedures
*******************************************************************************)
procedure TfrmDefaults.FormShow(Sender: TObject);
begin
  doEvents := True;
  dbgridMisc.ReadOnly := True;
  dbgridMisc.Color := clBtnFace;

  LoadCopyRight; // Load copyright and Enquiry statements
  changedAbout := False;

  strLogoFolder := ExtractFilePath(Application.ExeName);
  strLogoAuthorityFolder := strLogoFolder;
  GetLogo;

  // Get Authority Logo
  if (ImageAuthority.Picture.Bitmap.Empty) or
     (ImageAuthority.Picture = nil) or (strLogoAuthorityImage = '') then
  begin
    ImageAuthority.Picture := nil;
    strLogoAuthorityImage := '';
    btnDeleteAuthorityLogo.Enabled := False;
    btnLogoAuthority.Caption := 'Create Logo';
  end;

  InitAuthority;

  dmBase.GetMethodDescription(memBaselineProcedure,'Baseline Calibration Procedure');
  dmBase.GetMethodDescription(memEDMProcedure,'EDM Instrument Calibration Procedure');

  dmBase.rxMethod.First; // In case the Locate functions can not find the given method


  if isDLI and canCalibrateBaseline then
  begin
    tsReport.TabVisible := True;
    edtCopyright.Color := clWindow;
    edtProgramOwner.Color := clWindow;
    edtCopyright.ReadOnly := False;
    edtProgramOwner.ReadOnly := False;

    strCopyRight := GetCopyRightReport;
    edtCopyRight.Text := strCopyRight;
    strProgramOwner := GetProgramOwner;
    edtProgramOwner.Text := strProgramOwner;

    changedCopyrightReport := False;
    changedProgramOwner := False;
  end
  else
  begin
    tsReport.TabVisible := False;
    edtCopyright.Color := clBtnFace;
    edtProgramOwner.Color := clBtnFace;
    edtCopyright.ReadOnly := True;
    edtProgramOwner.ReadOnly := True;
  end;

  if canCalibrateBaseline then
  begin
    tsEDMTraceability.TabVisible := True;
    dbgridUncertainty1.ReadOnly := False;
    dbgridUncertainty1.Color := clWindow;
    dbnavUNcertainty1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbPost,nbCancel,nbRefresh];
    dbgridUncertainty2.ReadOnly := False;
    dbgridUncertainty2.Color := clWindow;
    dbnavUNcertainty2.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbEdit,nbPost,nbCancel,nbRefresh];
    memBaselineProcedure.ReadOnly := False;
    memBaselineProcedure.Color := clWindow;
    dbmemTraceability.ReadOnly := False;
    dbmemTraceability.Color := clWindow;
    dbmemTraceabilityEDM.ReadOnly := False;
    dbmemTraceabilityEDM.Color := clWindow;
    memLegalTraceability.ReadOnly := False;
    memLegalTraceability.Color := clWindow;
    dbmemStandard.ReadOnly := False;
    dbmemStandard.Color := clWindow;
    dbedtStandardsAuthority.ReadOnly := False;
    dbedtStandardsAuthority.Color := clWindow;
    FrameLUMUnits3.SetReadonly(False);
    memAccreditationLogoTitle.Color := clWindow;
    memAccreditationLogoTitle.ReadOnly := False;
    dbedtAccreditationAuthority.Color := clWindow;
    dbedtAccreditationAuthority.ReadOnly := False;
    dbmemBaselineAccreditationStatement.Color := clWindow;
    dbmemBaselineAccreditationStatement.ReadOnly := False;
    btnLogo.Visible := True;
    btnDeleteLogo.Visible := True;
    frmDefaults.tsTraceability.TabVisible := True;
    frmDefaults.tsAuthority1.TabVisible := True;
    frmDefaults.tsAccreditation.TabVisible := True;
    frmDefaults.tsStandards.TabVisible := True;
    frmDefaults.tsMiscellaneous.TabVisible := True;
    pcMain.ActivePage := tsEDMUncertainty;
    pcProcedures.ActivePage := tsBaselineProcedure;
    dmBase.rxMethod.Locate('Method','Baseline Calibration Procedure',[]);
  end
  else
  begin
    tsEDMTraceability.TabVisible := False;
    dbgridUncertainty1.ReadOnly := False;
    dbgridUncertainty1.Color := clBtnFace;
    dbnavUNcertainty1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
    dbgridUncertainty2.ReadOnly := True;
    dbgridUncertainty2.Color := clBtnFace;
    dbnavUNcertainty2.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
    memBaselineProcedure.ReadOnly := True;
    memBaselineProcedure.Color := clBtnFace;
    dbmemTraceability.ReadOnly := True;
    dbmemTraceability.Color := clBtnFace;
    dbmemTraceabilityEDM.ReadOnly := True;
    dbmemTraceabilityEDM.Color := clBtnFace;
    memLegalTraceability.ReadOnly := True;
    memLegalTraceability.Color := clBtnFace;
    dbmemStandard.ReadOnly := True;
    dbmemStandard.Color := clBtnFace;
    dbedtStandardsAuthority.ReadOnly := True;
    dbedtStandardsAuthority.Color := clBtnFace;
    FrameLUMUnits3.SetReadonly(True);
    memAccreditationLogoTitle.Color := clBtnFace;
    memAccreditationLogoTitle.ReadOnly := True;
    dbedtAccreditationAuthority.Color := clBtnFace;
    dbedtAccreditationAuthority.ReadOnly := True;
    dbmemBaselineAccreditationStatement.Color := clBtnFace;
    dbmembaselineAccreditationStatement.ReadOnly := True;
    btnLogo.Visible := False;
    btnDeleteLogo.Visible := False;

    tsAbout.TabVisible := False;
    tsReport.TabVisible := False;
    tsTraceability.TabVisible := False;
    tsAuthority1.TabVisible := False;
    tsAccreditation.TabVisible := False;
    tsStandards.TabVisible := False;
    tsMiscellaneous.TabVisible := False;
    tsUncertaintyBaseline.TabVisible := False;
    tsEDMUncertainty.TabVisible := False;
    tsLUM.TabVisible := False;

    pcMain.ActivePage := tsProcedures;
    pcProcedures.ActivePage := tsEDMCalibration;
    dmBase.rxMethod.Locate('Method','EDM Instrument Calibration Procedure',[]);
    memEDMProcedure.SetFocus;
  end;

  with dmBase.rxStandard do
    if not active then
      Open;
end;

(*******************************************************************************
@procedure pcMainChange(Sender: TObject);

@Description
  Displays the information on each active page.
*******************************************************************************)
procedure TfrmDefaults.pcMainChange(Sender: TObject);
begin
  dmBase.rxMethod.First;
  if pcMain.ActivePage = tsProcedures then
  begin
    pcProcedures.ActivePage := tsBaselineProcedure;
    dmBase.rxMethod.Locate('Method','Baseline Calibration Procedure',[]);
  end
  else
  if pcMain.ActivePage = tsTraceability then
  begin
    pcTraceability.ActivePage := tsBaselineTraceability;
    dmBase.rxMethod.Locate('Method','Baseline Traceability',[]);
  end
  else
  if pcMain.ActivePage = tsAccreditation then
  begin
    pcAccreditation.ActivePage := tsAuthority;
    dmBase.rxMethod.Locate('Method','Accreditation Authority',[]);
    if (ImageAccreditation.Picture.Bitmap.Empty) or
       (ImageAccreditation.Picture = nil) or (strAccreditationLogo = '') then
    begin
      ImageAccreditation.Picture := nil;
      strAccreditationLogo := '';
      btnDeleteLogo.Enabled := False;
      btnLogo.Caption := 'Create Logo';
    end;
    OpenDialog1.InitialDir := strLogoFolder;
  end
  else
  if pcMain.ActivePage = tsAuthority1 then
  begin
    dmBase.rxMethod.Locate('Method','Authority Logo',[]);
    if (ImageAuthority.Picture.Bitmap.Empty) or
       (ImageAuthority.Picture = nil) or (strLogoAuthorityImage = '') then
    begin
      ImageAuthority.Picture := nil;
      strLogoAuthorityImage := '';
      btnDeleteAuthorityLogo.Enabled := False;
      btnLogoAuthority.Caption := 'Create Logo';
    end;
    OpenDialog1.InitialDir := strLogoAuthorityFolder;
  end
  else
  if pcMain.ActivePage = tsLUM then
  begin
    doEvents := False;
    try
      pcLUM.ActivePage := tsLUMBaseline;
      dmBase.rxStandard.Locate('Type','F',[]);
      chkBaselineLUM1.Checked :=
        dmBase.rxStandard.FieldByName('Description').AsString = 'LUM';
      ShowLum;      
    finally
      doEvents := True;
    end;
  end;
  
  if pcMain.ActivePage = tsStandards then
    dmBase.rxStandard.Locate('Type','E',[]);
end;

(*******************************************************************************
@procedure dbgridMiscCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);

@Description
  Highlights the description field in the database grid.
*******************************************************************************)
procedure TfrmDefaults.dbgridMiscCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if Field.FieldName = 'Description' then
  begin
    ABrush.Color := clBtnFace;
    if Highlight then ABrush.Color := clMenuHighlight;
  end;
end;


(*******************************************************************************
@procedure pcTraceabilityChange(Sender: TObject);

@Description
  Displays the traceability statements.
*******************************************************************************)
procedure TfrmDefaults.pcTraceabilityChange(Sender: TObject);
begin
  if pcTraceability.ActivePage = tsBaselineTraceability then
    dmBase.rxMethod.Locate('Method','Baseline Traceability',[])
  else
  if pcTraceability.ActivePage = tsEDMTraceability then
    dmBase.rxMethod.Locate('Method','EDM Instrument Traceability',[])
  else
  if pcTraceability.ActivePage = tsLegalTraceability then
    dmBase.rxMethod.Locate('Method','Legal Traceability',[]);
end;


(*******************************************************************************
@procedure pcAccreditationChange(Sender:   TObject);

@Description
  Displays either the Accreditation authority or Statement.
*******************************************************************************)
procedure TfrmDefaults.dbmemStandardExit(Sender: TObject);
begin
  if dmBase.rxStandard.State = dsEdit then
    dmBase.rxStandard.Post;
end;

(*******************************************************************************
@procedure pcAccreditationChange(Sender:   TObject);

@Description
  Posts any changes to the Standard.
*******************************************************************************)
procedure TfrmDefaults.StandardPost(Sender: TObject);
begin
  if dmBase.rxStandard.State = dsEdit then
    dmBase.rxStandard.Post;
end;

procedure TfrmDefaults.tsAccreditationLUMShow(Sender: TObject);
begin
  with dmBase.rxStandard do
  begin
    if not active then
      Open;

    FrameLUMUnits4.LUMUnits := FieldByName('LUMUnits').AsString;
  end;
end;

procedure TfrmDefaults.tsStandardsShow(Sender: TObject);
begin
  with dmBase.rxStandard do
  begin
    if not active then
      Open;

    FrameLUMUnits3.LUMUnits := FieldByName('LUMUnits').AsString;
  end;
end;

(*******************************************************************************
@procedure btnLogoClick(Sender: TObject);

@description
  Select another Accreditation logo
*******************************************************************************)
procedure TfrmDefaults.btnLogoClick(Sender: TObject);
begin
  OpenDialog1.InitialDir := strLogoFolder;
  if OpenDialog1.Execute then
  begin
    ImageAccreditation.Height := 80;
    ImageAccreditation.Width := 240;
    strLogoFolder := ExtractFilePath(OpenDialog1.FileName);
    ImageAccreditation.Picture.LoadFromFile(OpenDialog1.FileName);
    SetImageSize(ImageAccreditation);
    strAccreditationLogo := OpenDialog1.FileName;
    btnDeleteLogo.Enabled := True;
    btnLogo.Caption := 'Change Logo';
  end;
end;

(*******************************************************************************
@procedure GetLogo;

@description
  Gets the software authority and accreditation authority logos from the database
*******************************************************************************)
procedure TfrmDefaults.GetLogo;
begin
  strAccreditationLogo := '';
  ImageAccreditation.Picture := nil;
  ImageAuthority.Picture := nil;
  with dmBase.rxMethod do
  begin
    if Locate('Method','Accreditation Logo',[]) then
    begin
      strAccreditationLogo := FieldByName('Description').AsString;
      if FileExists(strAccreditationLogo) then
      begin
        strLogoFolder := ExtractFilePath(strAccreditationLogo);
        ImageAccreditation.Picture.LoadFromFile(strAccreditationLogo);
        ImageAccreditation.Height := 80;
        ImageAccreditation.Width := 240;
        SetImageSize(ImageAccreditation);
      end
      else
      begin
        strAccreditationLogo := '';
      end;
    end;

    if Locate('Method','Authority Logo',[]) then
    begin
      strLogoAuthorityImage := FieldByName('Description').AsString;
      if FileExists(strLogoAuthorityImage) then
      begin
        strLogoAuthorityFolder := ExtractFilePath(strLogoAuthorityImage);
        ImageAuthority.Picture.LoadFromFile(strLogoAuthorityImage);
        ImageAuthority.Height := 80;
        ImageAuthority.Width := 240;
        SetImageSize(ImageAuthority);
      end
      else
      begin
        strLogoAuthorityImage := '';
      end;
    end;
  end;
  dmBase.GetMethodDescription(memAccreditationLogoTitle,'Accreditation Logo Title');
end;

(*******************************************************************************
@procedure btnDeleteLogoClick(Sender: TObject);

@description
  Delete the Accreditation logo
*******************************************************************************)
procedure TfrmDefaults.btnDeleteLogoClick(Sender: TObject);
begin
  ImageAccreditation.Picture := nil;
  strAccreditationLogo := '';
  btnDeleteLogo.Enabled := False;
  btnLogo.Caption := 'Create Logo';
end;

(*******************************************************************************
@procedure UpdateLogo;

@description
  Updates the Authority and Accreditation logos
*******************************************************************************)
procedure TfrmDefaults.UpdateLogo;
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Accreditation Logo',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := strAccreditationLogo;
      Post;
    end;
    if Locate('Method','Authority Logo',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := strLogoAuthorityImage;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure FormClose(Sender: TObject; var Action: TCloseAction);

@description
  1. Save the copyright and enquiry statements
  2. Save the accreditation and authority logos
  3. Save the Authority Name
  4. Save the procedure statements
*******************************************************************************)
procedure TfrmDefaults.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SaveCopyRight; // Save Enquiry and Copyright statements
  UpdateLogo;    // Save logo
  SaveSoftwareAuthority(edtAuthorityFullName.Text, edtAuthorityAbbrev.Text);

  if canCalibrateBaseline then
  begin
    dmBase.UpdateMethodDescription(memAccreditationLogoTitle,'Accreditation Logo Title');
    dmBase.UpdateMethodDescription(memBaselineProcedure,'Baseline Calibration Procedure')
  end;

  dmBase.UpdateMethodDescription(memEDMProcedure,'EDM Instrument Calibration Procedure');

  if isDLI and canCalibrateBaseline then
  begin
    SaveCopyRightReport(edtCopyright.Text);
    SaveProgramOwner(edtProgramOwner.Text);
  end;
  dmBase.rxStandard.Locate('Type','E',[]); // Reset Standards
end;

(*******************************************************************************
@procedure SetImageSize(Image: TImage);

@description
  Ensures that the image will fit on the screen.
*******************************************************************************)
procedure TfrmDefaults.SetImageSize(Image: TImage);
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
      begin
        Image.Height := Round(Image.Width/dRatio2);
      end
      else
      begin
        Image.Width := Round(Image.Height*dRatio2);
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure pcAccreditationChange(Sender:   TObject);

@Description
  Displays either the Accreditation authority or Statement.
*******************************************************************************)
procedure TfrmDefaults.pcAccreditationChange(Sender:   TObject);
begin
  if pcAccreditation.ActivePage = tsAuthority then
  begin
    dmBase.rxMethod.Locate('Method','Accreditation Authority',[]);
  end;
  if pcAccreditation.ActivePage = tsStatement then
  begin
    dmBase.rxMethod.Locate('Method','Baseline Accreditation Statement',[]);
  end;
end;

(*******************************************************************************
@procedure pcProceduresChange(Sender: TObject);

@Description
  Displays either the Baseline or EDMI procedure.
*******************************************************************************)
procedure TfrmDefaults.pcProceduresChange(Sender: TObject);
begin
  if pcProcedures.ActivePage = tsBaselineProcedure then
  begin
    dmBase.rxMethod.Locate('Method','Baseline Calibration Procedure',[]);
  end
  else
  begin
    dmBase.rxMethod.Locate('Method','EDM Instrument Calibration Procedure',[]);
  end;
end;

(*******************************************************************************
@procedure btnLogoAuthorityClick(Sender: TObject);

@description
  Changes the Authority Logo and resets the caption on the 'Change Logo' button.
*******************************************************************************)
procedure TfrmDefaults.btnLogoAuthorityClick(Sender: TObject);
begin
  OpenDialog1.InitialDir := strLogoAuthorityFolder;
  if OpenDialog1.Execute then
  begin
    ImageAuthority.Height := 80;
    ImageAuthority.Width := 240;
    strLogoAuthorityFolder := ExtractFilePath(OpenDialog1.FileName);
    ImageAuthority.Picture.LoadFromFile(OpenDialog1.FileName);
    SetImageSize(ImageAuthority);
    strLogoAuthorityImage := OpenDialog1.FileName;
    btnDeleteAuthorityLogo.Enabled := True;
    btnLogoAuthority.Caption := 'Change Logo';
  end;
end;

(*******************************************************************************
@procedure btnDeleteAuthorityLogoClick(Sender: TObject);

@description
  Deletes the Authority Logo and resets the caption on the 'Change Logo' button.
*******************************************************************************)
procedure TfrmDefaults.btnDeleteAuthorityLogoClick(Sender: TObject);
begin
  ImageAuthority.Picture := nil;
  strLogoAuthorityImage := '';
  btnDeleteAuthorityLogo.Enabled := False;
  btnLogoAuthority.Caption := 'Create Logo';
  with dmBase.rxMethod do
  begin
    if Locate('Method','Authority Logo',[]) then
    begin
      Edit;
      FieldByName('Description').Clear;
      Post;
    end
  end;
end;

(*******************************************************************************
@procedure SaveCopyRight;

@description
  Saves the Enquiry and Copyright statements.
*******************************************************************************)
procedure TfrmDefaults.SaveCopyRight;
var
  doContinue: Boolean;
  i, j: Integer;
begin
  if changedAbout then
  begin
    // Delete all enquiry and copyright statements from database
    with dmBase.rxMethod do
    begin
      doContinue := True;
      while doContinue do
      begin
        if Locate('Method','Enquiry',[lopartialKey]) then
        begin
          Delete;
        end
        else
        begin
          doContinue := False;
        end;
      end;

      doContinue := True;
      while doContinue do
      begin
        if Locate('Method','Copyright',[lopartialKey]) then
        begin
          Delete;
        end
        else
        begin
          doContinue := False;
        end;
      end;
    end;

    // Store new Enquiry and copyright statements to database
    with dmBase.rxMethod do
    begin
      for i := 0 to memEnquiry.Lines.Count-1 do
      begin
        j := i+1;
        Append;
        FieldByName('Method').AsString := 'Enquiry '+IntToStr(j);
        FieldByName('Description').AsString := memEnquiry.Lines[i];
        Post;
      end;

      for i := 0 to memCopyright.Lines.Count-1 do
      begin
        j := i+1;
        Append;
        FieldByName('Method').AsString := 'Copyright '+IntToStr(j);
        FieldByName('Description').AsString := memCopyright.Lines[i];
        Post;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure memEnquiryChange(Sender: TObject);

@description
  Sets flag to indicate that the Enquiry and Copyright statements have to be saved
  to the database when this form is closed.
*******************************************************************************)
procedure TfrmDefaults.memEnquiryChange(Sender: TObject);
begin
  changedAbout := True;
end;

(*******************************************************************************
@procedure LoadCopyRight;

@description
  Load Enquiry and Copyright statements from database
*******************************************************************************)
procedure TfrmDefaults.LoadCopyRight;
var
  doContinue: Boolean;
  i: Integer;
  strEnquiry, strCopyright: string;
begin
  memEnquiry.Lines.Clear;
  memCopyright.Lines.Clear;

  with dmBase.rxMethod do
  begin
    doContinue := True;
    i := 1;
    while doContinue do
    begin
      strEnquiry := 'Enquiry '+IntToStr(i);
      Inc(i);
      if Locate('Method',strEnquiry,[]) then
      begin
        memEnquiry.Lines.Add(FieldByName('Description').AsString);
      end
      else
      begin
        doContinue := False;
      end;
    end;

    doContinue := True;
    i := 1;
    while doContinue do
    begin
      strCopyright := 'Copyright '+IntToStr(i);
      Inc(i);
      if Locate('Method',strCopyright,[]) then
      begin
        memCopyright.Lines.Add(FieldByName('Description').AsString);
      end
      else
      begin
        doContinue := False;
      end;
    end;
  end;
end;

(*******************************************************************************
@procedure SaveSoftwareAuthority( strAuthority: string; strAuthorityAbbrev: string);

@Description
  Saves the Bench Authority Name.
*******************************************************************************)
procedure TfrmDefaults.SaveSoftwareAuthority(
  strAuthority: string;
  strAuthorityAbbrev: string);
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Authority Abbrev',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := strAuthorityAbbrev;
      Post;
    end
    else
    begin
      Append;
      FieldByName('Method').AsString := 'Authority Abbrev';
      FieldByName('Description').AsString := strAuthorityAbbrev;
      Post;
    end;
    if Locate('Method','Authority',[]) then
    begin
      Edit;
      FieldByName('Description').AsString := strAuthority;
      Post;
    end
    else
    begin
      Append;
      FieldByName('Method').AsString := 'Authority';
      FieldByName('Description').AsString := strAuthority;
      Post;
    end;
  end;
end;

(*******************************************************************************
@procedure InitAuthority;

@description
  Displays the initial authority name on the form.
*******************************************************************************)
procedure TfrmDefaults.InitAuthority;
begin
  with dmBase.rxMethod do
  begin
    if Locate('Method','Authority Abbrev',[]) then
    begin
      edtAuthorityAbbrev.Text := FieldByName('Description').AsString;
    end;
    if Locate('Method','Authority',[]) then
    begin
      edtAuthorityFullName.Text := FieldByName('Description').AsString;
    end;
  end;
end;

procedure TfrmDefaults.edtCopyrightChange(Sender: TObject);
begin
  changedCopyrightReport := True;
end;

procedure TfrmDefaults.edtProgramOwnerChange(Sender: TObject);
begin
  changedProgramOwner := True;
end;

procedure TfrmDefaults.pcLUMChange(Sender: TObject);
begin
  doEvents := False;
  try
    ShowLum;
  finally
    doEvents := True;
  end;
end;

procedure TfrmDefaults.ShowLum;
begin
  with dmBase.rxStandard do
  begin
    if pcLUM.ActivePage = tsLUMBaseline then
    begin
      Locate('Type','F',[]);
      chkBaselineLUM1.Checked := FieldByName('Description').AsString = 'LUM';
      FrameLUMUnits2.LUMUnits := FieldByName('LumUnits').AsString;
    end
    else if pcLUM.ActivePage = tsLUMEDM then
    begin
      Locate('Type','G',[]);
      chkEDMLUM1.Checked := FieldByName('Description').AsString = 'LUM';
      FrameLUMUnits1.LUMUnits := FieldByName('LumUnits').AsString;
    end;
  end;
end;

procedure TfrmDefaults.chkBaselineLUM1Click(Sender: TObject);
begin
  if doEvents then
  begin
    with dmBase.rxStandard do
    begin
      Edit;
      if chkBaselineLUM1.Checked then
      begin
        FieldByName('Description').AsString := 'LUM';
      end
      else
      begin
        FieldByName('Description').AsString := 'Actual uncertainty';
      end;
      Post;
    end;
  end;

end;

procedure TfrmDefaults.chkEDMLUM1Click(Sender: TObject);
begin
  if doEvents then
  begin
    with dmBase.rxStandard do
    begin
      Edit;
      if chkEDMLUM1.Checked then
      begin
        FieldByName('Description').AsString := 'LUM';
      end
      else
      begin
        FieldByName('Description').AsString := 'Actual uncertainty';
      end;
      Post;
    end;
  end;
end;

end.

