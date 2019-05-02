unit fmOldLUMUnitsNonDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, StdCtrls, Mask, wwdbedit;

type
  TFrameOldLUMUnitsNonDB = class(TFrame)
    pnlOldLUMUnits: TPanel;
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
  public
    { Public declarations }
    property Constant: single write SetConstant;
    property Scale: single write SetScale;
    property ConstantFormat: string write SetConstantFormat;
    property ScaleFormat: string write SetScaleFormat;
  end;

implementation

{$R *.dfm}

procedure TFrameOldLUMUnitsNonDB.SetConstant(AConstant: single);
begin
  fConstant := Format(fConstantFormat,[AConstant]);
  pnlOldLUMUnits.Caption := '±(' + TrimLeft(fConstant) + ' mm + ' + fScale + ' ppm)';
end;

procedure TFrameOldLUMUnitsNonDB.SetScale(AScale: single);
begin
  fScale := Format(fScaleFormat,[AScale]);
  pnlOldLUMUnits.Caption := '±(' + TrimLeft(fConstant) + ' mm + ' + fScale + ' ppm)';
end;

procedure TFrameOldLUMUnitsNonDB.SetConstantFormat(AFormat: string);
begin
  fConstantFormat := AFormat;
  if fConstantFormat = '' then
    fConstantFormat := '%8.2f';
end;

procedure TFrameOldLUMUnitsNonDB.SetScaleFormat(AFormat: string);
begin
  fScaleFormat := AFormat;
  if fScaleFormat = '' then
    fScaleFormat := '%8.2f';
end;

end.
