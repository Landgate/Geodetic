unit fmLUMUnits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmNewLUMUnits, fmOldLUMUnits, ExtCtrls;

type
  TFrameLUMUnits = class(TFrame)
    pnlOldLUMUnits: TPanel;
    pnlNewLUMUnits: TPanel;
    FrameOldLUMUnits1: TFrameOldLUMUnits;
    FrameNewLumUnits1: TFrameNewLumUnits;
  private
    { Private declarations }
    procedure SetLUMUnits(LUMUnits: string);
  public
    { Public declarations }
    procedure SetReadonly(AReadOnly: boolean);

    property LUMUnits: string write SetLUMUnits;
  end;

implementation

{$R *.dfm}

procedure TFrameLUMUnits.SetLUMUnits(LUMUnits: string);
begin
    if LUMUnits = '1' then
    begin
      pnlNewLUMUnits.Visible := false;
      pnlNewLUMUnits.Align := alBottom;
      pnlOldLUMUnits.Visible := true;
      pnlOldLUMUnits.Align := alTop;
    end
    else
    if LUMUnits = '2' then
    begin
      pnlOldLUMUnits.Visible := false;
      pnlOldLUMUnits.Align := alBottom;
      pnlNewLUMUnits.Visible := true;
      pnlNewLUMUnits.Align := alTop;
    end;

    Height := 25;
end;

procedure TFrameLUMUnits.SetReadonly(AReadOnly: boolean);
begin
  FrameOldLUMUnits1.SetReadOnly(AReadOnly);
  FrameNewLumUnits1.SetReadOnly(AReadOnly);
end;

end.
