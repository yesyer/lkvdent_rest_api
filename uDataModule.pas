unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Client, REST.Types,
  Data.Bind.Components,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Controls,
  uContent,
  frxClass, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, frxDBSet, frxExportPDF,
  Data.Bind.ObjectScope;

type
  TdmDataModule = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    imagesButton: TImageList;
    frxPatientInfo: TfrxUserDataSet;
    frxPatientCard: TfrxReport;
    LocalDB: TFDConnection;
    localDropTableCard: TFDQuery;
    localCreateTableCard: TFDQuery;
    localExecSQL: TFDQuery;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    localCard: TFDQuery;
    localCardDetails: TFDQuery;
    localCardid: TIntegerField;
    localCardname: TWideStringField;
    localCardcreated: TDateTimeField;
    localCardDetailsid: TIntegerField;
    localCardDetailscard_id: TIntegerField;
    localCardDetailstooth: TWideStringField;
    localCardDetailscontent: TWideStringField;
    localCardDetailsroot: TWideStringField;
    frxDBCard: TfrxDBDataset;
    frxDBCardDetails: TfrxDBDataset;
    frxReport1: TfrxReport;
    dsCard: TDataSource;
    localCardTitle: TFDQuery;
    frxDBCardTitle: TfrxDBDataset;
    localCardTitleid: TIntegerField;
    localCardTitlecontent: TWideStringField;
    localCardTitlesubroot_id: TIntegerField;
    localCardTitlesubroot: TWideStringField;
    frxPDFExport1: TfrxPDFExport;
    localCreateTableTree: TFDQuery;
    localDropTableTree: TFDQuery;
    localTree: TFDQuery;
    localTreeid: TFDAutoIncField;
    localTreeupdate_id: TIntegerField;
    localTreeparent_id: TIntegerField;
    localTreecontent: TWideStringField;
    localTreeis_init_exam: TShortintField;
    localTreeis_enable: TShortintField;
    localTreemetod: TWideStringField;
    RESTRequest2: TRESTRequest;
    procedure RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
    procedure frxPatientInfoGetValue(const VarName: string; var Value: Variant);
    procedure LocalDBAfterConnect(Sender: TObject);
    procedure LocalDBBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);

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

procedure TdmDataModule.DataModuleCreate(Sender: TObject);
begin
  try
    dmDataModule.LocalDB.Connected := false;
    dmDataModule.LocalDB.Params.Database := ExtractFileDir(ParamStr(0)) + '\data_tmp.db';
    dmDataModule.LocalDB.Connected := true;

  except
    fmMain.logger(rmPATCH, 'Локальная БД', 'Ошибка подключение к файлу: ' +
      dmDataModule.LocalDB.Params.Database);
    raise Exception.Create('Ошибка подключение локальной БД');
  end;
  fmMain.logger(rmPATCH, 'Локальная БД', dmDataModule.LocalDB.Params.Database);
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

procedure TdmDataModule.LocalDBAfterConnect(Sender: TObject);
begin
  fmMain.logger(rmPATCH, 'Локальная БД', 'Подключено');
end;

procedure TdmDataModule.LocalDBBeforeConnect(Sender: TObject);
begin
  fmMain.logger(rmPATCH, 'Локальная БД', 'Подключение...');
end;

procedure TdmDataModule.RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
begin
  // fmMain.logger(RESTRequest1.Method, RESTRequest1.Resource, 'ok');
end;

end.
