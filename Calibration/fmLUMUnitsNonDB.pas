unit fmLUMUnitsNonDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmNewLUMUnits, fmOldLUMUnits, ExtCtrls, fmNewLUMUnitsNonDB,
  fmOldLUMUnitsNonDB;

type
  TFrameLUMUnitsNonDB = class(TFrame)
    FrameOldLUMUnits1: TFrameOldLUMUnitsNonDB;
    FrameNewLumUnits1: TFrameNewLumUnitsNonDB;
  private
    { Private declarations }
    fLUMUnits: string;

    procedure SetLUMUnits(LUMUnits: string);
    procedure SetConstant(AConstant: single);
    procedure SetScale(AScale: single);
    procedure SetConstantFormat(AFormat: string);
    procedure SetScaleFormat(AFormat: string);
  public
    { Public declarations }
    procedure SetHeight(AHeight: integer);

    property LUMUnits: string write SetLUMUnits;
    property Constant: single write SetConstant;
    property Scale: single write SetScale;
    property ConstantFormat: string write SetConstantFormat;
    property ScaleFormat: string write SetScaleFormat;    
  end;

implementation

{$R *.dfm}

procedure TFrameLUMUnitsNonDB.SetLUMUnits(LUMUnits: string);
begin
  fLUMUnits := LUMUnits;
  if fLUMUnits = '1' then
  begin
    FrameNewLumUnits1.Visible := false;
    FrameNewLumUnits1.Align := alBottom;
    FrameOldLUMUnits1.Align := alTop;
    FrameOldLUMUnits1.Visible := True;
  end
  else
  if fLUMUnits = '2' then
  begin
    FrameOldLUMUnits1.Visible := false;
    FrameOldLUMUnits1.Align := alBottom;
    FrameNewLumUnits1.Align := alTop;
    FrameNewLumUnits1.Visible := True;
  end;
end;

procedure TFrameLUMUnitsNonDB.SetConstant(AConstant: single);
begin
  if fLUMUnits = '1' then
    FrameOldLUMUnits1.Constant := AConstant
  else
  if fLUMUnits = '2' then
    FrameNewLumUnits1.Constant := AConstant;
end;

procedure TFrameLUMUnitsNonDB.SetScale(AScale: single);
begin
  if fLUMUnits = '1' then
    FrameOldLUMUnits1.Scale := AScale
  else
  if fLUMUnits = '2' then
    FrameNewLumUnits1.Scale := AScale;
end;

procedure TFrameLUMUnitsNonDB.SetConstantFormat(AFormat: string);
begin
  if fLUMUnits = '1' then
    FrameOldLUMUnits1.ConstantFormat := AFormat
  else
  if fLUMUnits = '2' then
    FrameNewLumUnits1.ConstantFormat := AFormat;
end;

procedure TFrameLUMUnitsNonDB.SetScaleFormat(AFormat: string);
begin
  if fLUMUnits = '1' then
    FrameOldLUMUnits1.ScaleFormat := AFormat
  else
  if fLUMUnits = '2' then
    FrameNewLumUnits1.ScaleFormat := AFormat;
end;

procedure TFrameLUMUnitsNonDB.SetHeight(AHeight: integer);
begin
  Height := AHeight;
end;

end.
