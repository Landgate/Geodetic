unit fmNewLUMUnits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, wwdbedit;

type
  TFrameNewLumUnits = class(TFrame)
    LUMEDMAltConstant: TwwDBEdit;
    lblLumUnits1: TLabel;
    LUMEDMAltScale: TwwDBEdit;
    lblOpenBracket: TLabel;
    imgLUMEDMUnits: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetDisplayMode;
    procedure SetReadonly(AReadOnly: boolean);
  end;

implementation

{$R *.dfm}

procedure TFrameNewLumUnits.SetDisplayMode;
begin
  LUMEDMAltConstant.DataField := '';
  LUMEDMAltConstant.DataSource := nil;
  LUMEDMAltConstant.Enabled := False;
  LUMEDMAltConstant.ReadOnly := True;
  LUMEDMAltConstant.Color := clBtnFace;

  LUMEDMAltScale.DataField := '';
  LUMEDMAltScale.DataSource := nil;
  LUMEDMAltScale.Enabled := False;
  LUMEDMAltScale.ReadOnly := True;
  LUMEDMAltScale.Color := clBtnFace;
end;

procedure TFrameNewLumUnits.SetReadonly(AReadOnly: boolean);
begin
  LUMEDMAltConstant.ReadOnly := AReadOnly;
  LUMEDMAltScale.ReadOnly := AReadOnly;
  if not AReadOnly then
  begin
    LUMEDMAltConstant.Color := clWindow;
    LUMEDMAltScale.Color := clWindow;
  end
  else
  begin
    LUMEDMAltConstant.Color := clBtnFace;
    LUMEDMAltScale.Color := clBtnFace;
  end;
end;

end.
