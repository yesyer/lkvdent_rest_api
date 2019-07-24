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
    frxPatientPISZ: TfrxUserDataSet;
    frxPatientInfo: TfrxUserDataSet;
    frxPatientCard: TfrxReport;
    frxPatientDiagnosis: TfrxUserDataSet;
    frxPatientZhaloby: TfrxUserDataSet;
    frxUserDataSet1: TfrxUserDataSet;
    frxCardList: TfrxUserDataSet;
    frxTree: TfrxUserDataSet;
    procedure RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
    procedure frxPatientInfoGetValue(const VarName: string; var Value: Variant);
    procedure frxPatientDiagnosisGetValue(const VarName: string; var Value: Variant);
    procedure frxPatientDiagnosisNext(Sender: TObject);
    procedure frxPatientDiagnosisFirst(Sender: TObject);
    procedure frxPatientDiagnosisCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frxPatientZhalobyCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frxPatientZhalobyFirst(Sender: TObject);
    procedure frxPatientZhalobyGetValue(const VarName: string; var Value: Variant);
    procedure frxPatientZhalobyNext(Sender: TObject);
    procedure frxPatientPISZCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frxPatientPISZFirst(Sender: TObject);
    procedure frxPatientPISZGetValue(const VarName: string; var Value: Variant);
    procedure frxPatientPISZNext(Sender: TObject);
    procedure frxUserDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frxUserDataSet1First(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure frxUserDataSet1Next(Sender: TObject);

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

var
  intD, intZ, intP, intR: SmallInt;

{$R *.dfm}

procedure TdmDataModule.frxPatientDiagnosisCheckEOF(Sender: TObject; var Eof: Boolean);
begin
  if intD = arrayDiagnosis.Count then
    Eof := true
  else
    Eof := false;
end;

procedure TdmDataModule.frxPatientDiagnosisFirst(Sender: TObject);
begin
  intD := 0;
end;

procedure TdmDataModule.frxPatientDiagnosisGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'content' then
    Value := arrayDiagnosis[intD];
end;

procedure TdmDataModule.frxPatientDiagnosisNext(Sender: TObject);
begin
  Inc(intD);
end;

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
      Value := gridPatient.Cells[GRID_PATIENT_ADDRESS1, gridPatient.SelectedRow[0]] + ' '
        + gridPatient.Cells[GRID_PATIENT_ADDRESS2, gridPatient.SelectedRow[0]] + ' ' +
        gridPatient.Cells[GRID_PATIENT_ADDRESS3, gridPatient.SelectedRow[0]];
    if VarName = 'proff' then
      Value := gridPatient.Cells[GRID_PATIENT_PROFF, gridPatient.SelectedRow[0]];
  end;
end;

procedure TdmDataModule.frxPatientPISZCheckEOF(Sender: TObject; var Eof: Boolean);
begin
  if intP = arrayPISZ.Count then
    Eof := true
  else
    Eof := false;
end;

procedure TdmDataModule.frxPatientPISZFirst(Sender: TObject);
begin
  intP := 0;
end;

procedure TdmDataModule.frxPatientPISZGetValue(const VarName: string; var Value: Variant);
begin
  if VarName = 'content' then
    Value := arrayPISZ[intP];
end;

procedure TdmDataModule.frxPatientPISZNext(Sender: TObject);
begin
  Inc(intP);
end;

procedure TdmDataModule.frxPatientZhalobyCheckEOF(Sender: TObject; var Eof: Boolean);
begin
  if intZ = arrayZhaloby.Count then
    Eof := true
  else
    Eof := false;
end;

procedure TdmDataModule.frxPatientZhalobyFirst(Sender: TObject);
begin
  intZ := 0;
end;

procedure TdmDataModule.frxPatientZhalobyGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'content' then
    Value := arrayZhaloby[intZ];
end;

procedure TdmDataModule.frxPatientZhalobyNext(Sender: TObject);
begin
  Inc(intZ);
end;

procedure TdmDataModule.frxUserDataSet1CheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  if intR = arrayRNZ.Count then
    Eof := true
  else
    Eof := false;
end;

procedure TdmDataModule.frxUserDataSet1First(Sender: TObject);
begin
  intR:= 0;
end;

procedure TdmDataModule.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'field' then
    Value := arrayRNZ[intR];
end;

procedure TdmDataModule.frxUserDataSet1Next(Sender: TObject);
begin
  Inc(intR);
end;

procedure TdmDataModule.RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
begin
  fmMain.logger(RESTRequest1.Resource, 'ok');
end;

end.
