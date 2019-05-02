(*******************************************************************************
@FormUnit Bseabout

@Description
  About box displays the following information:
  1. Copyright statement
  2. Enquiry details.
  3. Application and Distribution Version.
  4. May contain authority logo

  All this information can be changed by an authorised DLI employee in the Set Defaults sub-application

@(C) Copyright Department of Land Information in Western Australia 2002-2005.
     All Rights Reserved.
*******************************************************************************)
unit Bseabout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RxGIF, Buttons, jpeg;

type
  TfrmAbout = class(TForm)
    btnClose: TButton;
    StaticText3: TStaticText;
    StaticText6: TStaticText;
    mmoEnquiries: TMemo;
    mmoCopyrightNotice: TMemo;
    Bevel1: TBevel;
    Label1: TLabel;
    lblVersion: TLabel;
    lblDescription: TLabel;
    Bevel2: TBevel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    imageAbout: TImage;
    lblDistributionVersion: TLabel;
    lblAuthority: TLabel;
    StaticText1: TStaticText;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.DFM}

(*******************************************************************************
@procedure btnCloseClick(Sender: TObject);

@description
   CLoses About box and opens the Main panel.
*******************************************************************************)
procedure TfrmAbout.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
