{*******************************************************************************
@formunit GESProgress

@description
   This form displays the progress bar.

@history

@(C) Copyright Department of Land Information, Western Australia, 2005.
     All rights reserved.

*******************************************************************************}
unit BSEProgress;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls;

type
{*******************************************************************************
@form
  TfrmProgress1

@description
   This form displays the progress bar.

*******************************************************************************}
  TfrmProgress = class(TForm)
    lblMessage: TLabel;
    pbarProgress: TProgressBar;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgress: TfrmProgress;

implementation

{$R *.DFM}

end.
