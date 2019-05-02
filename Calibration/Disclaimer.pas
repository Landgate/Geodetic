(*******************************************************************************
@FormUnit Disclaimer;

@Description
  First time user of the new version must agree to the disclaimer and copyright notices.

@(C) Copyright Department of Land Information in Western Australia 2002-2006.
     All Rights Reserved.
*******************************************************************************)
unit Disclaimer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TfrmDisclaimer = class(TForm)
    pnlButtons: TPanel;
    btnNotAgreed: TBitBtn;
    btnAgreed: TBitBtn;
    Panel3: TPanel;
    pnlHeader: TPanel;
    pcLegal: TPageControl;
    TabSheet1: TTabSheet;
    pnlDisclaimer: TPanel;
    memDisclaimer: TMemo;
    TabSheet2: TTabSheet;
    memCopyRight: TMemo;
    procedure btnAgreedClick(Sender: TObject);
    procedure btnNotAgreedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDisclaimer: TfrmDisclaimer;

implementation

{$R *.DFM}
uses BseMain;

(*******************************************************************************
@procedure btnAgreedClick(Sender: TObject);

@description
  User agrees with the disclaimer and copyright statements.
  The baseline application will continue.
*******************************************************************************)
procedure TfrmDisclaimer.btnAgreedClick(Sender: TObject);
begin
  frmMain.hasAgreed := True;
  Close;
end;

(*******************************************************************************
@procedure btnNotAgreedClick(Sender: TObject);

@description
  User does not agree with the disclaimer and copyright statements.
  The baseline application will close.
*******************************************************************************)
procedure TfrmDisclaimer.btnNotAgreedClick(Sender: TObject);
begin
  frmMain.hasAgreed := False;
  Close;
end;

(*******************************************************************************
@procedure FormShow(Sender: TObject);

@description
  1. Initialises the form.
  2. Displays the disclaimer statement.
*******************************************************************************)
procedure TfrmDisclaimer.FormShow(Sender: TObject);
begin
  pcLegal.ActivePage := Tabsheet1;
  if frmMain.hasAgreed then
  begin
    btnAgreed.Caption := 'Close';
    btnNotAgreed.Visible := False;
    pnlHeader.Visible := False;
  end;

end;

end.
