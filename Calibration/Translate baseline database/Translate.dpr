program Translate;

uses
  Forms,
  TranslateMain in 'TranslateMain.pas' {frmTranslate},
  BseDM in 'BseDM.pas' {dmBase: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTranslate, frmTranslate);
  Application.CreateForm(TdmBase, dmBase);
  Application.Run;
end.
