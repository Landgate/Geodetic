unit fmOldLUMUnits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, StdCtrls, Mask, wwdbedit;

type
  TFrameOldLUMUnits = class(TFrame)
    dbedtLUMEDMConstant: TwwDBEdit;
    pnlLumUnits1: TPanel;
    dbedtLUMEDMPPM: TwwDBEdit;
    pnlLumUnits2: TPanel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetDisplayMode;
    procedure SetReadonly(AReadOnly: boolean);
  end;

implementation

{$R *.dfm}

procedure TFrameOldLUMUnits.SetDisplayMode;
begin
  dbedtLUMEDMConstant.DataField := '';
  dbedtLUMEDMConstant.DataSource := nil;
  dbedtLUMEDMConstant.Enabled := False;
  dbedtLUMEDMConstant.ReadOnly := True;
  dbedtLUMEDMConstant.Color := clBtnFace;

  dbedtLUMEDMPPM.DataField := '';
  dbedtLUMEDMPPM.DataSource := nil;
  dbedtLUMEDMPPM.Enabled := False;
  dbedtLUMEDMPPM.ReadOnly := True;
  dbedtLUMEDMPPM.Color := clBtnFace;
end;

procedure TFrameOldLUMUnits.SetReadonly(AReadOnly: boolean);
begin
  dbedtLUMEDMConstant.ReadOnly := AReadOnly;
  dbedtLUMEDMPPM.ReadOnly := AReadOnly;
  if not AReadOnly then
  begin
    dbedtLUMEDMConstant.Color := clWindow;
    dbedtLUMEDMPPM.Color := clWindow;
  end
  else
  begin
    dbedtLUMEDMConstant.Color := clBtnFace;
    dbedtLUMEDMPPM.Color := clBtnFace;
  end;
end;

end.
