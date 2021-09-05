program BaselineDLI;

uses
  Forms,
  BSEMAIN in 'BSEMAIN.PAS' {frmMain},
  BseDM in 'BseDM.pas' {dmBase: TDataModule},
  BSEdmMain in 'BSEdmMain.pas' {dmMain: TDataModule},
  Bseabout in 'Bseabout.pas' {frmAbout},
  Bse2Job in 'Bse2Job.pas' {frmJob},
  Bse2Inst in 'Bse2Inst.pas' {frmInstrument},
  BSEBase2 in 'BSEBase2.pas' {frmBaseline},
  BSEMISC in 'BSEMISC.PAS',
  Bsecalib in 'Bsecalib.pas',
  BseDefault in 'BseDefault.pas' {frmDefaults},
  BseDistribute in 'BseDistribute.pas' {frmDistribute},
  BSEProgress in 'BSEProgress.pas' {frmProgress},
  BseReportSummary in 'BseReportSummary.pas' {frmReportSummary},
  BseReport1A in 'BseReport1A.pas' {frmReport1A},
  BseBaselineCertificate in 'BseBaselineCertificate.pas' {frmBaselineCertificate},
  BseBaselineCertificate2 in 'BseBaselineCertificate2.pas' {frmBaselineCertificate2},
  Disclaimer in 'Disclaimer.pas' {frmDisclaimer},
  fmNewLUMUnitsNonDB in 'fmNewLUMUnitsNonDB.pas' {FrameNewLumUnitsNonDB: TFrame},
  fmOldLUMUnitsNonDB in 'fmOldLUMUnitsNonDB.pas' {FrameOldLUMUnitsNonDB: TFrame},
  BseLUMUnits in 'BseLUMUnits.pas' {frmLUMUnits},
  fmLUMUnitsNonDB in 'fmLUMUnitsNonDB.pas' {FrameLUMUnitsNonDB: TFrame},
  fmNewLUMUnits in 'fmNewLUMUnits.pas' {FrameNewLumUnits: TFrame},
  fmOldLUMUnits in 'fmOldLUMUnits.pas' {FrameOldLUMUnits: TFrame},
  fmLUMUnits in 'fmLUMUnits.pas' {FrameLUMUnits: TFrame},
  Bse2elips in 'Bse2elips.pas' {frmEllipsoid};

{$R *.res}
{$MAXSTACKSIZE 4194304}

begin
  Application.Initialize;
  Application.Title := 'Baseline Calibration';
  Application.HelpFile := 'baseline.chm';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmJob, frmJob);
  Application.CreateForm(TfrmInstrument, frmInstrument);
  Application.CreateForm(TfrmBaseline, frmBaseline);
  Application.CreateForm(TfrmDefaults, frmDefaults);
  Application.CreateForm(TfrmDistribute, frmDistribute);
  Application.CreateForm(TfrmProgress, frmProgress);
  Application.CreateForm(TfrmReportSummary, frmReportSummary);
  Application.CreateForm(TfrmReport1A, frmReport1A);
  Application.CreateForm(TfrmBaselineCertificate, frmBaselineCertificate);
  Application.CreateForm(TfrmBaselineCertificate2, frmBaselineCertificate2);
  Application.CreateForm(TfrmDisclaimer, frmDisclaimer);
  Application.CreateForm(TfrmEllipsoid, frmEllipsoid);
  Application.Run;
end.
