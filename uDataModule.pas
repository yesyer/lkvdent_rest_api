unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Controls,
  uContent,
  frxClass;

type
  TdmDataModule = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    imagesButton: TImageList;
    frxPatientPerenesennyeISoputstvuyushchieZabolevaniya: TfrxUserDataSet;
    frxPatientInfo: TfrxUserDataSet;
    frxPatientCard: TfrxReport;
    frxPatientDiagnosis: TfrxUserDataSet;
    frxPatientRazvitieNastoyashchegoZabolevaniya: TfrxUserDataSet;
    frxPatientZhaloby: TfrxUserDataSet;
    procedure RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
    procedure frxPatientInfoGetValue(const VarName: string; var Value: Variant);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDataModule: TdmDataModule;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses uMain;

{$R *.dfm}

procedure TdmDataModule.frxPatientInfoGetValue(const VarName: string; var Value: Variant);
begin
  with fmMain do
  begin
    if VarName = 'fullname' then
      Value := gridPatient.Cells[GRID_PATIENT_FNAME, gridPatient.SelectedRow[0]] + ' ' +
        gridPatient.Cells[GRID_PATIENT_NAME, gridPatient.SelectedRow[0]] + ' ' +
        gridPatient.Cells[GRID_PATIENT_LNAME, gridPatient.SelectedRow[0]];
    if VarName = 'birthday' then
      Value := gridPatient.Cells[GRID_PATIENT_BIRTHDAY, gridPatient.SelectedRow[0]];
    if VarName = 'sex' then
      Value := gridPatient.Cells[GRID_PATIENT_SEX, gridPatient.SelectedRow[0]];
    if VarName = 'address' then
      Value := gridPatient.Cells[GRID_PATIENT_ADDRESS1, gridPatient.SelectedRow[0]]+ ' ' +
        gridPatient.Cells[GRID_PATIENT_ADDRESS2, gridPatient.SelectedRow[0]] + ' ' +
        gridPatient.Cells[GRID_PATIENT_ADDRESS3, gridPatient.SelectedRow[0]];
    if VarName = 'proff' then
      Value := gridPatient.Cells[GRID_PATIENT_PROFF, gridPatient.SelectedRow[0]];
  end;
end;

procedure TdmDataModule.RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
begin
  fmMain.logger(RESTRequest1.Resource, 'ok');
end;

end.
