program prjLKVDent;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fmMain},
  uDataModule in 'uDataModule.pas' {dmDataModule: TDataModule},
  uModifyNode in 'uModifyNode.pas' {fmModifyData},
  uContent in 'uContent.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmDataModule, dmDataModule);
  Application.CreateForm(TfmModifyData, fmModifyData);
  Application.Run;
end.
