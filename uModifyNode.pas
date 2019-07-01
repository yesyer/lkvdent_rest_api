unit uModifyNode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfmModifyData = class(TForm)
    checkInitExam: TCheckBox;
    checkEnable: TCheckBox;
    labelText: TLabel;
    buttonOk: TButton;
    buttonCancel: TButton;
    Panel1: TPanel;
    editField: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmModifyData: TfmModifyData;

implementation

{$R *.dfm}

procedure TfmModifyData.FormShow(Sender: TObject);
begin
  editField.SetFocus;
end;

end.
