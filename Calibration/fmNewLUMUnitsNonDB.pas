unit fmNewLUMUnitsNonDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, wwdbedit;

type
  TFrameNewLumUnitsNonDB = class(TFrame)
    pnlNewLUMUnits: TPanel;
    imgLUMEDMUnits: TImage;
  private
    { Private declarations }
    fConstantFormat,
      fScaleFormat,
      fConstant,
      fScale: string;

    procedure SetConstant(AConstant: single);
    procedure SetScale(AScale: single);
    procedure SetConstantFormat(AFormat: string);
    procedure SetScaleFormat(AFormat: string);
    procedure SetPanelDescription;
  public
    { Public declarations }
    property Constant: single write SetConstant;
    property Scale: single write SetScale;
    property ConstantFormat: string write SetConstantFormat;
    property ScaleFormat: string write SetScaleFormat;
  end;

implementation

{$R *.dfm}

procedure TFrameNewLumUnitsNonDB.SetConstant(AConstant: single);
begin
  fConstant := Format(fConstantFormat,[AConstant]);
  SetPanelDescription;
end;

procedure TFrameNewLumUnitsNonDB.SetScale(AScale: single);
begin
  fScale := Format(fScaleFormat,[AScale]);
  SetPanelDescription;
end;

procedure TFrameNewLumUnitsNonDB.SetPanelDescription;
begin
  if (TrimLeft(fConstant) = '0.00') and (TrimLeft(fScale) = '0.00') then
  begin
    pnlNewLUMUnits.Caption := '  ±(' + TrimLeft(fConstant) + ' + ' + fScale;
    imgLUMEDMUnits.Left := 75 + Length(pnlNewLUMUnits.Caption);
  end
  else
  begin
    pnlNewLUMUnits.Caption := '                  ±(' + TrimLeft(fConstant) + ' + ' + fScale;
    imgLUMEDMUnits.Left := 100 + Length(pnlNewLUMUnits.Caption);
  end;
end;

procedure TFrameNewLumUnitsNonDB.SetConstantFormat(AFormat: string);
begin
  fConstantFormat := AFormat;
  if fConstantFormat = '' then
    fConstantFormat := '%8.2f';
end;

procedure TFrameNewLumUnitsNonDB.SetScaleFormat(AFormat: string);
begin
  fScaleFormat := AFormat;
  if fScaleFormat = '' then
    fScaleFormat := '%8.2f';
end;

end.
