unit BseLUMUnits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, fmNewLUMUnits, fmOldLUMUnits,
  fmNewLUMUnitsNonDB, fmOldLUMUnitsNonDB;

type
  TfrmLUMUnits = class(TForm)
    rbBaselineUnitsMmPlusPpm: TRadioButton;
    rbLUMBaselineUnitsMm: TRadioButton;
    pnlBottom: TPanel;
    btnOK: TBitBtn;
    lblDescription: TLabel;
    lblWarning: TLabel;
    Label1: TLabel;
    FrameOldLUMUnitsNonDB1: TFrameOldLUMUnitsNonDB;
    FrameNewLumUnitsNonDB1: TFrameNewLumUnitsNonDB;
    procedure rbBaselineUnitsMmPlusPpmClick(Sender: TObject);
    procedure rbLUMBaselineUnitsMmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrameOldLUMUnitsNonDB1pnlOldLUMUnitsClick(Sender: TObject);
    procedure FrameNewLumUnitsNonDB1pnlNewLUMUnitsClick(Sender: TObject);
  private
    { Private declarations }
    FStartLumUnits,
      FLumUnits: string;
    InFormShow: boolean;

    procedure SetLUMUnits;
  public
    { Public declarations }
  end;

var
  frmLUMUnits: TfrmLUMUnits;

implementation

{$R *.dfm}

uses
  BseDM;

procedure TfrmLUMUnits.btnOKClick(Sender: TObject);
begin
  if FStartLumUnits <> FLUMUnits then
    if MessageDlg('Do you want to save changes?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      SetLUMUnits;      
end;

procedure TfrmLUMUnits.FormCreate(Sender: TObject);
begin
  FLumUnits := '2';
  FStartLumUnits := '2';
end;

procedure TfrmLUMUnits.FormShow(Sender: TObject);
begin
  InFormShow := True;
  try
    FrameOldLUMUnitsNonDB1.ConstantFormat := '';
    FrameOldLUMUnitsNonDB1.Constant := 0;
    FrameOldLUMUnitsNonDB1.ScaleFormat := '';
    FrameOldLUMUnitsNonDB1.Scale := 0;
    FrameNewLumUnitsNonDB1.ConstantFormat := '';
    FrameNewLumUnitsNonDB1.Constant := 0;
    FrameNewLumUnitsNonDB1.ScaleFormat := '';
    FrameNewLumUnitsNonDB1.Scale := 0;

    with dmBase.rxStandard do
    begin
      if not active then
        Open;

      First;
      if not Eof then
      begin
        FStartLumUnits := FieldByName('LUMUnits').AsString;
        if FStartLumUnits = '' then
          FStartLumUnits := '2'
        else
          FLumUnits := FStartLumUnits;

        if (FStartLumUnits = '1') and not rbBaselineUnitsMmPlusPpm.Checked then
        begin
          rbLUMBaselineUnitsMm.Checked := False;
          if not rbBaselineUnitsMmPlusPpm.Checked then
            rbBaselineUnitsMmPlusPpm.Checked := True
        end
        else        
        if (FStartLumUnits = '2') and not rbLUMBaselineUnitsMm.Checked then
        begin
          rbBaselineUnitsMmPlusPpm.Checked := False;
          if not rbLUMBaselineUnitsMm.Checked then
            rbLUMBaselineUnitsMm.Checked := True;
        end;          
      end;
    end;      
  finally
    InFormShow := False;
  end;
end;

procedure TfrmLUMUnits.FrameNewLumUnitsNonDB1pnlNewLUMUnitsClick(
  Sender: TObject);
begin
  if not rbLUMBaselineUnitsMm.Checked then
    rbLUMBaselineUnitsMm.Checked := True;
end;

procedure TfrmLUMUnits.FrameOldLUMUnitsNonDB1pnlOldLUMUnitsClick(
  Sender: TObject);
begin
  if not rbBaselineUnitsMmPlusPpm.Checked then
    rbBaselineUnitsMmPlusPpm.Checked := True;
end;

procedure TfrmLUMUnits.rbBaselineUnitsMmPlusPpmClick(Sender: TObject);
begin
  if not InFormShow then
    FLumUnits := '1';
end;

procedure TfrmLUMUnits.rbLUMBaselineUnitsMmClick(Sender: TObject);
begin
  if not InFormShow then
    FLumUnits := '2';
end;
(*******************************************************************************
@procedure SetLUMUnits

@description
  Switch the LUM units,make fields readonly and set the LUMUnits database field
*******************************************************************************)
procedure TfrmLUMUnits.SetLUMUnits;
begin
  with dmBase.rxStandard do
  begin
    if not active then
      Open
    else
      First;

    while not Eof do
    begin
      Edit;      
      FieldByName('LUMUnits').AsString := FLumUnits;
      Post;
      
      Next;
    end;
  end;
end;

end.
