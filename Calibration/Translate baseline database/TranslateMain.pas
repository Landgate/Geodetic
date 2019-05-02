unit TranslateMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, ComCtrls;

type
  TfrmTranslate = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DirectoryEdit1: TDirectoryEdit;
    Label1: TLabel;
    btnTranslate: TButton;
    mmoTranslateResults: TMemo;
    btnClose: TButton;
    procedure btnTranslateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTranslate: TfrmTranslate;

implementation

{$R *.dfm}
uses BseDM;

procedure TfrmTranslate.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTranslate.btnTranslateClick(Sender: TObject);
var
  TranslateDetails: string;

  procedure LogTranslateDetails;
  begin
    if TranslateDetails <> '' then
      mmoTranslateResults.Lines.Add(TranslateDetails);
  end;

begin
  dmBase.rxAlias := DirectoryEdit1.Text;
  mmoTranslateResults.Clear;
  if dmBase.rxAlias <> '' then
  begin
    dmBase.Translate(dmBase.rxUncertaintyEDM, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxUncertaintyBaseline, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxMethod, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxMethodX, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxDefault, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxBaseline, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxBaselineX, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxEllipsoid, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxDistance, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxPillar, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxJob, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxInstrument, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxInstrumentModel, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxInstrumentMake, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxInstrumentX, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxInstrumentModelX, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxInstrumentMakeX, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxJMeasure, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxEDMObs, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxStandard, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxDistribution, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxWebBaseline, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxWebDistance, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxWebPillar, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxWebJob, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxWebEDMObs, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxWebJMeasure, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxBaselineAccuracy, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxBaselineAccuracyX, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxBaselineDefaultX, TranslateDetails);
    LogTranslateDetails;
    dmBase.Translate(dmBase.rxBaselineDefault, TranslateDetails);
    LogTranslateDetails;
    ShowMessage('Translation completed.'+#10+#10+'The text files are in folder '+dmBase.rxAlias);
  end
  else
    MessageDlg('Output folder not configured',mtInformation,[mbOK],0);
end;

procedure TfrmTranslate.FormShow(Sender: TObject);
begin
  DirectoryEdit1.InitialDir := ExtractFilePath( Application.ExeName);
  DirectoryEdit1.DoClick;
end;

end.
