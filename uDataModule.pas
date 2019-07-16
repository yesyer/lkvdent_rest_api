unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.ImageList, Vcl.ImgList,
  Vcl.Controls;

type
  TdmDataModule = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    imagesButton: TImageList;
    procedure RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDataModule: TdmDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uMain;

{$R *.dfm}

procedure TdmDataModule.RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
begin
  fmMain.logger(RESTRequest1.Resource,'ok');
end;

end.
