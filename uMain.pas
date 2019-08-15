{ константы в таблице tb_tree, особенно важно для id 6-10




  id, parent_id, content, is_init_exam, is_enable

  1 	NULL 	Жалобы 	                                  0 	1

  2 	NULL 	Объективные данные 	                      0 	1
  3 	NULL 	Диагноз 	                                0 	1
  4 	NULL 	Лечение 	                                0 	1
  5 	NULL 	Рекомендации 	                            0 	1
  6 	NULL 	Предварительный осмотр 	                  1 	1
  7 	6 	  Диагноз 	                                0 	1
  8 	6 	  Жалобы 	                                  0 	1
  9 	6 	  Перенесенные и сопутствующие заболевания 	0 	1
  10 	6 	  Развитие настоящего заболевания 	        0 	1
  11 	NULL 	Резерв 1 	                                0 	0
  12 	NULL 	Резерв 2 	                                0 	0 }

unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  Vcl.Forms,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.Classes,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Graphics,
  Vcl.Mask,
  System.Types,

  uContent,

  System.JSON,
  REST.Types,
  REST.Client,

  AdvGlassButton,
  AdvUtil,
  AdvObj,
  BaseGrid,
  AdvGrid,
  Vcl.Grids,
  AdvPageControl,
  AdvTreeViewBase,
  AdvTreeViewData,
  AdvCustomTreeView,
  AdvTreeView,
  Vcl.Menus,
  AdvMenus,
  AdvDateTimePicker,
  AdvGlowButton,
  ColListb;

type
  TfmMain = class(TForm)

    plMainLeft: TPanel;
    buttonSettings: TAdvGlassButton;
    plMainTop: TPanel;
    plMainClient: TPanel;
    StatusBar1: TStatusBar;
    plSettings: TPanel;
    gridEmployee: TAdvStringGrid;
    pageSettings: TAdvPageControl;
    tabTree: TAdvTabSheet;
    tabEmployee: TAdvTabSheet;
    plEmployeeTop: TPanel;
    buttonEmployeeModify: TAdvGlassButton;
    treeNodeRootSetting: TAdvTreeView;
    treeNodeSetting: TAdvTreeView;
    treeMenu: TAdvPopupMenu;
    menuInsertSubnode: TMenuItem;
    menuModity: TMenuItem;
    menuDelete: TMenuItem;
    menuInsertNode: TMenuItem;
    menuSeparator: TMenuItem;
    plTemplateTop: TPanel;
    buttonNodeSave: TAdvGlassButton;
    AdvGlassButton4: TAdvGlassButton;
    buttonNodeCancel: TAdvGlassButton;
    buttonEmployeeInsert: TAdvGlassButton;
    buttonNodeInsert: TAdvGlassButton;
    plPatient: TPanel;
    buttonPatient: TAdvGlassButton;
    plPatientModifed: TPanel;
    gridPatient: TAdvStringGrid;
    editFName: TButtonedEdit;
    GroupBox1: TGroupBox;
    editName: TButtonedEdit;
    editLName: TButtonedEdit;
    editProff: TButtonedEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    comboSex: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    dateBirthday: TDateTimePicker;
    GroupBox2: TGroupBox;
    editAddress1: TButtonedEdit;
    editAddress2: TButtonedEdit;
    editAddress3: TButtonedEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    editPhone1: TMaskEdit;
    Label10: TLabel;
    Label11: TLabel;
    editPhone2: TMaskEdit;
    memoNotes: TMemo;
    Label12: TLabel;
    Panel2: TPanel;
    buttonPatientInsert: TAdvGlassButton;
    ScrollBox1: TScrollBox;
    plPatientInsertTop: TPanel;
    buttonPatientSave: TAdvGlassButton;
    buttonPatientCancel: TAdvGlassButton;
    buttonPatientModify: TAdvGlassButton;
    pageMain: TAdvPageControl;
    tabApplication: TAdvTabSheet;
    tabLog: TAdvTabSheet;
    plPatientCardList: TPanel;
    gridCardList: TAdvStringGrid;
    Panel1: TPanel;
    buttonPatientCardListBack: TAdvGlassButton;
    buttonPatientCardModify: TAdvGlassButton;
    buttonClose: TAdvGlassButton;
    buttonPatientCardList: TAdvGlassButton;
    buttonPatientCardInsert: TAdvGlassButton;
    plPatientCardModify: TPanel;
    plCardModifyMainTop: TPanel;
    gridCard: TAdvStringGrid;
    treeNodeCard: TAdvTreeView;
    plTooths: TPanel;
    btnToothTmp: TAdvGlassButton;
    plCardModifyMainClient: TPanel;
    Panel5: TPanel;
    treeNodeRootCard: TAdvTreeView;
    buttonPatientCardModifyBack: TAdvGlassButton;
    buttonPatientCardSave: TAdvGlassButton;
    AdvGlassButton6: TAdvGlassButton;
    Splitter1: TSplitter;
    comboEmployee: TComboBox;
    labelName: TLabel;
    dateCard: TDateTimePicker;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    loggerLostBox: TColumnListBox;
    comboEmployeeID: TComboBox;
    comboEmployeeOrign: TComboBox;
    buttonPrint: TAdvGlassButton;
    plLoading: TPanel;
    ProgressBar1: TProgressBar;
    Panel3: TPanel;
    buttonClear: TAdvGlassButton;
    buttonFilterClear: TAdvGlassButton;
    Memo1: TMemo;
    procedure tabEmployeeShow(Sender: TObject);
    procedure tabTreeShow(Sender: TObject);
    procedure treeNodeRootSettingAfterSelectNode(Sender: TObject;
      ANode: TAdvTreeViewVirtualNode);

    function aaaIsEmptyText(s, msg: String): Boolean;
    procedure aaaModifyStyle(s: ShortInt);
    procedure aaaPatientFieldClear;
    procedure aaaPatientFilter;
    procedure aaaToothButtonCheck(ATooth: String);
    procedure aaaToothButtonUncheck(ARow: Integer);
    procedure aaaToothButtonUncheckAll;
    procedure aaaToothButtonsSet;
    procedure logger(metod: TRESTRequestMethod; text, response: String);

    procedure treeNodeSettingMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure menuInsertNodeClick(Sender: TObject);
    procedure menuInsertSubnodeClick(Sender: TObject);
    procedure menuModityClick(Sender: TObject);
    procedure treeNodeSettingNodeDblClick(Sender: TObject;
      ANode: TAdvTreeViewVirtualNode);
    procedure buttonNodeSaveClick(Sender: TObject);
    procedure buttonNodeCancelClick(Sender: TObject);
    procedure menuDeleteClick(Sender: TObject);
    procedure buttonEmployeeInsertClick(Sender: TObject);
    procedure gridEmployeeDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure buttonNodeInsertClick(Sender: TObject);
    procedure treeNodeSettingNodeClick(Sender: TObject; ANode: TAdvTreeViewVirtualNode);
    procedure buttonSettingsClick(Sender: TObject);
    procedure buttonPatientClick(Sender: TObject);
    procedure plMainTopClick(Sender: TObject);
    procedure buttonPatientInsertClick(Sender: TObject);
    procedure buttonPatientModifyClick(Sender: TObject);
    procedure editFNameRightButtonClick(Sender: TObject);
    procedure buttonPatientSaveClick(Sender: TObject);
    procedure buttonPatientCancelClick(Sender: TObject);
    procedure editFNameChange(Sender: TObject);
    procedure buttonPatientCardListClick(Sender: TObject);
    procedure buttonEmployeeModifyClick(Sender: TObject);
    procedure buttonPatientCardListBackClick(Sender: TObject);
    procedure buttonPatientCardInsertClick(Sender: TObject);
    procedure buttonPatientCardModifyBackClick(Sender: TObject);
    procedure treeNodeRootCardAfterSelectNode(Sender: TObject;
      ANode: TAdvTreeViewVirtualNode);
    procedure treeNodeCardNodeDblClick(Sender: TObject; ANode: TAdvTreeViewVirtualNode);
    procedure gridCardDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormShow(Sender: TObject);
    procedure buttonPatientCardSaveClick(Sender: TObject);
    procedure buttonPatientCardModifyClick(Sender: TObject);
    procedure comboEmployeeChange(Sender: TObject);
    procedure buttonCloseClick(Sender: TObject);
    procedure buttonPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buttonClearClick(Sender: TObject);
    procedure gridPatientDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure editNameChange(Sender: TObject);
    procedure editNameRightButtonClick(Sender: TObject);
    procedure editLNameRightButtonClick(Sender: TObject);
    procedure editProffRightButtonClick(Sender: TObject);
    procedure buttonFilterClearClick(Sender: TObject);
    procedure editAddress1RightButtonClick(Sender: TObject);
    procedure editAddress2RightButtonClick(Sender: TObject);
    procedure editAddress3RightButtonClick(Sender: TObject);
  private
    { Private declarations }
    // insertParentId, insertContent, insertInitExam, insertEnable: TStrings;
    // updateNodeId, updateContent, updateInitExam, updateEnable: TStrings;
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;
  glModifyNode: TAdvTreeViewVirtualNode; // сохраняем нод
  glFlagInsertCard: Boolean; // флаг, добавить/редактировть карточку true/false
  // ADiagnosis, AZhaloby, APISZ, ARNZ: TStrings;
  ACardTreeDelete: TStrings;

  // ACardList, ACardTree: TStrings;

  // glModifyClient: Boolean; // true - append, false - modify
implementation

{$R *.dfm}

uses
  uDataModule, uModifyNode;

procedure TfmMain.logger(metod: TRESTRequestMethod; text, response: String);
begin
  with loggerLostBox.ListBoxItems.Add do
  begin
    Strings.Add(DateTimeToStr(now));
    case metod of
      rmGET:
        Strings.Add('GET');
      rmPOST:
        Strings.Add('POST');
      rmPUT:
        Strings.Add('PUT');
      rmDELETE:
        Strings.Add('DELETE');
      rmPATCH:
        Strings.Add('(нет)');
    end;
    Strings.Add(text);
    Strings.Add(response);
  end;
end;

function TfmMain.aaaIsEmptyText(s, msg: String): Boolean;
begin
  if Length(Trim(s)) = 0 then
  begin
    MessageDlg(msg, mtWarning, [mbOK], 0);
    Result := true;
  end
  else
    Result := false;
end;

// 1: Добавить сотрудниа
// 2: Изменить сотрудника
// 3: Добавить шаблон
// 4: Редактирование шаблона
// подготовка формы к отображению, данные формы заполняються из вызываемой процедуры
procedure TfmMain.aaaModifyStyle(s: ShortInt);
begin
  with fmModifyData do
  begin
    if (s = 1) or (s = 2) then
    begin
      Caption := 'Добавление сотрудника';
      labelText.Caption := TEXT_NAME_EMPLOYEE;
      editField.Clear;
      editField.MaxLength := MAX_LENGHT_EMPLOYEE_NAME;
      checkEnable.Checked := true;
      checkInitExam.Visible := false;
    end;
    if s = 2 then
    begin
      Caption := 'Изменить данные сотрудника';
    end;

    if (s = 3) or (s = 4) then
    begin
      Caption := 'Добавить шаблон';
      labelText.Caption := TEXT_NAME_TEMPLATE;
      editField.Clear;
      editField.MaxLength := MAX_LENGHT_TREE_CONTENT;
      checkEnable.Checked := true;
      checkInitExam.Checked := false;
      checkInitExam.Visible := true;
    end;

    if s = 4 then
    begin
      Caption := 'Изменить шаблон';
    end;
  end;
end;

// очищаем все поля на форме добавления пациента
procedure TfmMain.aaaPatientFieldClear;
begin
  editFName.Clear;
  editName.Clear;
  editLName.Clear;
  editProff.Clear;
  dateBirthday.DateTime := now;
  editAddress1.Clear;
  editAddress2.Clear;
  editAddress3.Clear;
  editPhone1.Clear;
  editPhone2.Clear;
  memoNotes.Lines.Clear;
end;

procedure TfmMain.aaaPatientFilter;
begin
  gridPatient.FilterActive := false;
  gridPatient.Filter.Clear;
  with gridPatient.Filter.Add do
  begin
    Condition := editFName.text + '*';
    Column := GRID_PATIENT_FNAME;
    Operation := foNone;
  end;

  with gridPatient.Filter.Add do
  begin
    Condition := editName.text + '*';
    Column := GRID_PATIENT_NAME;
    Operation := foAND;
  end;

  gridPatient.FilterActive := true;

  if gridPatient.RowSelect[1] = false then
    gridPatient.FilterActive := false;
end;

procedure TfmMain.aaaToothButtonCheck(ATooth: String);
var
  b: Integer;
  sTooth, sTooths: String;
begin
  // запоминаем строку ввида 48:47:46:
  sTooths := ATooth;
  // повторяем до тех пор пока количество символов больше 0
  while Length(sTooths) <> 0 do
  begin
    // выдергиваем первую пару цифр 48
    sTooth := Copy(sTooths, 1, AnsiPos(':', sTooths) - 1);
    for b := 0 to plTooths.ComponentCount - 1 do
      if plTooths.Components[b] is TAdvGlassButton then
        if (plTooths.Components[b] as TAdvGlassButton).GroupIndex = StrToInt(sTooth) then
        begin
          (plTooths.Components[b] as TAdvGlassButton).Tag :=
            (plTooths.Components[b] as TAdvGlassButton).Tag + 1;
          // проверка на 1 чтоб при последующих совпадений не присваивать почем зря
          if (plTooths.Components[b] as TAdvGlassButton).Tag = 1 then
          begin
            (plTooths.Components[b] as TAdvGlassButton).Picture :=
              btnToothTmp.PictureDisabled;
            // необязательно, т.к. форму мы кнопки мы только что нормализовали
            // (pnTooths.Components[i] as TAdvGlassButton).Down:= false;
          end;
        end;
    // удаляем обработанные коды зубов, удалиться 48:, останеться 47:46:
    Delete(sTooths, 1, AnsiPos(':', sTooths));
    // a:= AnsiPos(':',trvCardContentRoot.SelectedNode.Text[2]);
  end;
end;

{ нормализуем кнопки зубов в нормальный вид при отмене выбора в окне
  добавления/изменения карточки пациента, учитываем то что 1 зуб может быть
  выбран несколько раз }
procedure TfmMain.aaaToothButtonUncheck(ARow: Integer);
var
  i: Integer;
  sTooth, sTooths: String;
begin
  // if trvCardContentRoot.SelectedNode.Text[2] <> '' then
  // begin
  sTooths := gridCard.Cells[GRID_CARD_TOOTH, ARow];
  while Length(sTooths) <> 0 do
  begin
    // запоминаем строку ввида 48:47:46:
    sTooth := Copy(sTooths, 1, AnsiPos(':', sTooths) - 1);
    // повторяем до тех пор пока количество символов больше 0
    for i := 0 to plTooths.ComponentCount - 1 do
      if plTooths.Components[i] is TAdvGlassButton then
        if (plTooths.Components[i] as TAdvGlassButton).GroupIndex = StrToInt(sTooth) then
        begin
          (plTooths.Components[i] as TAdvGlassButton).Tag :=
            (plTooths.Components[i] as TAdvGlassButton).Tag - 1;
          if (plTooths.Components[i] as TAdvGlassButton).Tag = 0 then
          begin
            (plTooths.Components[i] as TAdvGlassButton).Picture := btnToothTmp.Picture;
            (plTooths.Components[i] as TAdvGlassButton).Down := false;
          end;
        end;
    Delete(sTooths, 1, AnsiPos(':', sTooths));
    // a:= AnsiPos(':',trvCardContentRoot.SelectedNode.Text[2]);
  end;
  // end;
end;

procedure TfmMain.aaaToothButtonUncheckAll;
var
  i: Integer;
begin
  // нормализуем кнопки
  for i := 0 to plTooths.ComponentCount - 1 do
    if plTooths.Components[i] is TAdvGlassButton then
    begin
      (plTooths.Components[i] as TAdvGlassButton).Tag := 0;
      (plTooths.Components[i] as TAdvGlassButton).Picture := btnToothTmp.Picture;
      (plTooths.Components[i] as TAdvGlassButton).Down := false;
    end;
end;

{ рисуем кнопки "зубы" }
procedure TfmMain.aaaToothButtonsSet;
{ name - номер кнопки, добавляеть к имени и в GroupIndex
  top, left - координаты, сверху, слева относительно контейнера
  blGlyph - константа расположения изображения, blGlyphTop = 1, blGlyphBottom =3 }
  procedure SetToothButton(Name, Top, Left: Integer; blGlyph: TButtonLayout);
  var
    btnTooth: TAdvGlassButton;
  begin
    btnTooth := TAdvGlassButton.Create(plTooths);
    btnTooth.Parent := plTooths;
    btnTooth.Top := Top;
    btnTooth.Left := Left;
    btnTooth.Height := 20;
    btnTooth.Width := 38;
    btnTooth.ShowCaption := true;
    btnTooth.ShowHint := true;
    btnTooth.Hint := IntToStr(Name);
    btnTooth.Name := 'btnTooth' + IntToStr(Name);
    btnTooth.Caption := IntToStr(Name);

    btnTooth.GroupIndex := Name;
    // btnTooth.Tag:=0; // это мы не указываем явно при создании т.к. 0 значение по умолчанию
    btnTooth.AllowAllUp := true;

    btnTooth.BackColor := clSilver;
    btnTooth.CornerRadius := 2;
    btnTooth.ForeColor := clWhite;
    btnTooth.GlowColor := clWhite;
    btnTooth.InnerBorderColor := clNone;
    btnTooth.OuterBorderColor := clGray;
    btnTooth.Layout := blGlyphLeft;
    btnTooth.ShineColor := clWhite;
    btnTooth.Picture := btnToothTmp.Picture;
    btnTooth.PictureDown := btnToothTmp.PictureDown;
  end;

const
  CONST_LEFT = 8;
  CONST_WIDTH = 38 + 4;
var
  i, Left: Integer;
begin
  Left := CONST_LEFT;
  for i := 18 downto 11 do
  begin
    SetToothButton(i, 6, Left, blGlyphBottom);
    Left := Left + CONST_WIDTH;
  end;
  Left := Left + 8;
  for i := 21 to 28 do
  begin
    SetToothButton(i, 6, Left, blGlyphBottom);
    Left := Left + CONST_WIDTH;
  end;

  Left := CONST_LEFT;
  for i := 48 downto 41 do
  begin
    SetToothButton(i, 30, Left, blGlyphTop);
    Left := Left + CONST_WIDTH;
  end;
  Left := Left + 8;
  for i := 31 to 38 do
  begin
    SetToothButton(i, 30, Left, blGlyphTop);
    Left := Left + CONST_WIDTH;
  end;
end;

procedure TfmMain.buttonPatientModifyClick(Sender: TObject);
var
  fmt: TFormatSettings;
begin
  if (gridPatient.Cells[GRID_PATIENT_FNAME, gridPatient.SelectedRow[0]] = '') or
    (gridPatient.Cells[GRID_PATIENT_NAME, gridPatient.SelectedRow[0]] = '') then
  begin
    MessageDlg('Выберите строку для редактирования', mtInformation, [mbOK], 0);
    if buttonPatientInsert.Down = false then
      plPatientModifed.Visible := false;
    buttonPatientModify.Down := false;
    Exit;
  end;

  plPatientModifed.Visible := buttonPatientModify.Down;

  if buttonPatientInsert.Down = true then
    buttonPatientInsert.Down := false;

  buttonPatientSave.Caption := 'Изменить';
  aaaPatientFieldClear;
  editFName.text := gridPatient.Cells[GRID_PATIENT_FNAME, gridPatient.SelectedRow[0]];
  editName.text := gridPatient.Cells[GRID_PATIENT_NAME, gridPatient.SelectedRow[0]];
  editLName.text := gridPatient.Cells[GRID_PATIENT_LNAME, gridPatient.SelectedRow[0]];
  editProff.text := gridPatient.Cells[GRID_PATIENT_PROFF, gridPatient.SelectedRow[0]];

  // заглушка, вслучии если поле содержит нулевую дату/время
  if (gridPatient.Cells[GRID_PATIENT_BIRTHDAY, gridPatient.SelectedRow[0]] = '0000-00-00')
    or (gridPatient.Cells[GRID_PATIENT_BIRTHDAY, gridPatient.SelectedRow[0]] = '') then
  begin
    dateBirthday.Date := now;
    // dateBirthday.Font.Color:=clRed;
  end
  else
  // иначе переворачивает формат даты/времени и показываем
  begin
    GetLocaleFormatSettings(0, fmt);
    fmt.ShortDateFormat := 'yyyy-MM-dd';
    fmt.DateSeparator := '-';
    dateBirthday.Date := StrToDate(gridPatient.Cells[GRID_PATIENT_BIRTHDAY,
      gridPatient.SelectedRow[0]], fmt);
  end;

  if gridPatient.Cells[GRID_PATIENT_SEX, gridPatient.SelectedRow[0]] = TEXT_MEN then
    comboSex.ItemIndex := 1
  else
    comboSex.ItemIndex := 0;

  editAddress1.text := gridPatient.Cells[GRID_PATIENT_ADDRESS1,
    gridPatient.SelectedRow[0]];
  editAddress2.text := gridPatient.Cells[GRID_PATIENT_ADDRESS2,
    gridPatient.SelectedRow[0]];
  editAddress3.text := gridPatient.Cells[GRID_PATIENT_ADDRESS3,
    gridPatient.SelectedRow[0]];
  editPhone1.text := gridPatient.Cells[GRID_PATIENT_PHONE1, gridPatient.SelectedRow[0]];
  editPhone2.text := gridPatient.Cells[GRID_PATIENT_PHONE2, gridPatient.SelectedRow[0]];
  memoNotes.Lines.Add(gridPatient.Cells[GRID_PATIENT_NOTES, gridPatient.SelectedRow[0]]);

  if gridPatient.FilterActive = true then
    gridPatient.FilterActive := false;
end;

procedure TfmMain.buttonPatientSaveClick(Sender: TObject);
var
  OriginalJSONObject: TJSONObject;
  JSONString: String;

  status: String;
  fmt: TFormatSettings;
begin
  // TODO проверка на валидность
  if (Length(Trim(editFName.text)) = 0) or (Length(Trim(editName.text)) = 0) or
    (Length(Trim(editAddress1.text)) = 0) then
  begin
    MessageDlg('Поля отмеченные звездочкой (*) должны быть заполнены', mtWarning,
      [mbOK], 0);
    Exit;
  end;

  if gridPatient.FilterActive = true then
    gridPatient.FilterActive := false;

  with dmDataModule do
  begin
    if buttonPatientInsert.Down then

    begin
      // Добавление записей
      RESTRequest1.Method := rmPOST;
      RESTRequest1.Resource := 'patient';

      RESTRequest1.Params.Clear;
      // RESTRequest1.Params.AddHeader('Connection', 'keep-alive');
      RESTRequest1.Params.AddItem(JSON_FNAME, UTF8EncodeToShortString(Trim(editFName.text)
        ), pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_NAME, UTF8EncodeToShortString(Trim(editName.text)),
        pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_LNAME, UTF8EncodeToShortString(Trim(editLName.text)
        ), pkGETorPOST, [poDoNotEncode]);

      GetLocaleFormatSettings(0, fmt);
      fmt.ShortDateFormat := 'yyyy-MM-dd';
      fmt.DateSeparator := '-';
      fmMain.Caption := DateToStr(dateBirthday.Date, fmt);
      RESTRequest1.Params.AddItem(JSON_BIRTHDAY,
        UTF8EncodeToShortString(DateToStr(dateBirthday.Date, fmt)), pkGETorPOST,
        [poDoNotEncode]);

      RESTRequest1.Params.AddItem(JSON_SEX,
        UTF8EncodeToShortString(IntToStr(comboSex.ItemIndex)), pkGETorPOST,
        [poDoNotEncode]);

      RESTRequest1.Params.AddItem(JSON_PROFF, UTF8EncodeToShortString(Trim(editProff.text)
        ), pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_ADDRESS1,
        UTF8EncodeToShortString(Trim(editAddress1.text)), pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_ADDRESS2,
        UTF8EncodeToShortString(Trim(editAddress2.text)), pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_ADDRESS3,
        UTF8EncodeToShortString(Trim(editAddress3.text)), pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_PHONE1,
        UTF8EncodeToShortString(Trim(editPhone1.text)), pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_PHONE2,
        UTF8EncodeToShortString(Trim(editPhone2.text)), pkGETorPOST, [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_NOTES,
        UTF8EncodeToShortString(Trim(memoNotes.Lines.text)), pkGETorPOST,
        [poDoNotEncode]);

      RESTRequest1.Execute;
    end;

    if buttonPatientModify.Down then
    begin
      // Редактирование записи
      RESTRequest1.Method := rmPUT;
      RESTRequest1.Resource := 'patient/' + gridPatient.Cells[GRID_PATIENT_ID,
        gridPatient.SelectedRow[0]];

      RESTRequest1.Params.Clear;
      if editFName.Modified then
        RESTRequest1.Params.AddItem(JSON_FNAME,
          UTF8EncodeToShortString(Trim(editFName.text)), pkGETorPOST, [poDoNotEncode]);
      if editName.Modified then
        RESTRequest1.Params.AddItem(JSON_NAME, UTF8EncodeToShortString(Trim(editName.text)
          ), pkGETorPOST, [poDoNotEncode]);
      if editLName.Modified then
        RESTRequest1.Params.AddItem(JSON_LNAME,
          UTF8EncodeToShortString(Trim(editLName.text)), pkGETorPOST, [poDoNotEncode]);

      // оставляем это поле без проверки
      GetLocaleFormatSettings(0, fmt);
      fmt.ShortDateFormat := 'yyyy-MM-dd';
      fmt.DateSeparator := '-';
      fmMain.Caption := DateToStr(dateBirthday.Date, fmt);
      RESTRequest1.Params.AddItem(JSON_BIRTHDAY,
        UTF8EncodeToShortString(DateToStr(dateBirthday.Date, fmt)), pkGETorPOST,
        [poDoNotEncode]);

      // оставляем это поле без проверки
      RESTRequest1.Params.AddItem(JSON_SEX,
        UTF8EncodeToShortString(IntToStr(comboSex.ItemIndex)), pkGETorPOST,
        [poDoNotEncode]);

      if editProff.Modified then
        RESTRequest1.Params.AddItem(JSON_PROFF,
          UTF8EncodeToShortString(Trim(editProff.text)), pkGETorPOST, [poDoNotEncode]);
      if editAddress1.Modified then
        RESTRequest1.Params.AddItem(JSON_ADDRESS1,
          UTF8EncodeToShortString(Trim(editAddress1.text)), pkGETorPOST, [poDoNotEncode]);
      if editAddress2.Modified then
        RESTRequest1.Params.AddItem(JSON_ADDRESS2,
          UTF8EncodeToShortString(Trim(editAddress2.text)), pkGETorPOST, [poDoNotEncode]);
      if editAddress3.Modified then
        RESTRequest1.Params.AddItem(JSON_ADDRESS3,
          UTF8EncodeToShortString(Trim(editAddress3.text)), pkGETorPOST, [poDoNotEncode]);
      if editPhone1.Modified then
        RESTRequest1.Params.AddItem(JSON_PHONE1,
          UTF8EncodeToShortString(Trim(editPhone1.text)), pkGETorPOST, [poDoNotEncode]);
      if editPhone2.Modified then
        RESTRequest1.Params.AddItem(JSON_PHONE2,
          UTF8EncodeToShortString(Trim(editPhone2.text)), pkGETorPOST, [poDoNotEncode]);

      // оставляем это поле без проверки
      RESTRequest1.Params.AddItem(JSON_NOTES,
        UTF8EncodeToShortString(Trim(memoNotes.Lines.text)), pkGETorPOST,
        [poDoNotEncode]);

      RESTRequest1.Execute;

    end;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;

    status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
    if status = STATUS_OK then
    begin
      ShowMessage('Сохранение прошло успешно');
      buttonPatientInsert.Down := false;
      buttonPatientModify.Down := false;
      plPatientModifed.Visible := false;
      patientRefresh(gridPatient);
    end
    else
      ShowMessage('Ошибка при сохранении: ' + OriginalJSONObject.GetValue
        (JSON_RESPONSE).Value);

  end;
  FreeAndNil(OriginalJSONObject);
end;

procedure TfmMain.buttonPrintClick(Sender: TObject);
begin
  fieldsPatientReport(gridPatient.Cells[GRID_PATIENT_ID, gridPatient.SelectedRow[0]]);

  dmDataModule.frxPatientCard.ShowReport;
end;

procedure TfmMain.buttonPatientInsertClick(Sender: TObject);
begin
  plPatientModifed.Visible := buttonPatientInsert.Down;
  if buttonPatientModify.Down = true then
    buttonPatientModify.Down := false;
  buttonPatientSave.Caption := 'Добавить';
  aaaPatientFieldClear;
end;

procedure TfmMain.buttonPatientCardListBackClick(Sender: TObject);
begin
  patientRefresh(gridPatient);
  plSettings.Visible := false;
  plPatient.Visible := true;
  plPatientCardList.Visible := false;
  plPatientCardModify.Visible := false;
end;

procedure TfmMain.buttonPatientCardListClick(Sender: TObject);
// var
// s: String;
begin
  plPatient.Visible := false;
  plSettings.Visible := false;
  plPatientCardList.Visible := true;
  Application.ProcessMessages;
  // s := gridPatient.Cells[GRID_PATIENT_ID, gridPatient.SelectedRow[0]];
  // logger('patient_id', gridPatient.Cells[GRID_PATIENT_ID, gridPatient.SelectedRow[0]]);
  patientCard(gridCardList, gridPatient.Cells[GRID_PATIENT_ID,
    gridPatient.SelectedRow[0]]);

  // gridPatient.AutoSize:=true;
  { gridCards.AutoSizeColumns(false);
    if gridCards.ColWidths[GRID_CARD_NAME] < 150 then
    gridCards.ColWidths[GRID_CARD_NAME] := 150;
    if gridCards.ColWidths[GRID_CARD_NOTES] < 150 then
    gridCards.ColWidths[GRID_CARD_NOTES] := 150;
    if gridCards.ColWidths[GRID_CARD_EMPLOYEE_NAME] < 150 then
    gridCards.ColWidths[GRID_CARD_EMPLOYEE_NAME] := 150;
    // gridPatient.ColWidths[GRID_PATIENT_NOTES]:=200;
    gridCards.ColWidths[GRID_CARD_CREATED] := 130; }
end;

procedure TfmMain.buttonPatientCardModifyBackClick(Sender: TObject);
begin
  patientCard(gridCardList, gridPatient.Cells[GRID_PATIENT_ID,
    gridPatient.SelectedRow[0]]);

  plSettings.Visible := false;
  plPatient.Visible := false;
  plPatientCardList.Visible := true;
  plPatientCardModify.Visible := false;
end;

procedure TfmMain.buttonPatientCardModifyClick(Sender: TObject);
var
  i: Integer;
  fmt: TFormatSettings;
begin
  { TODO верефикация, сохранить карточку, сохранить изменения карточки }
  if gridCardList.Cells[GRID_CARD_LIST_CREATED, gridCardList.SelectedRow[0]] = '' then
  begin
    Exit;
  end;
  glFlagInsertCard := false;
  if gridCardList.SelectedRow[0] = 1 then
    treeNodeRootContent(treeNodeRootCard, '1')
  else
    treeNodeRootContent(treeNodeRootCard, '0');

  if treeNodeRootCard.Nodes[0] <> nil then
  begin
    treeNodeRootCard.SelectNode(treeNodeRootCard.Nodes[0]);
    treeNodeContent(treeNodeCard, treeNodeRootCard.Nodes[0]);
  end
  else
    treeNodeCard.ClearNodes;

  gridCard.Clear;
  gridCard.RowCount := 2;
  employeeList(gridEmployee, comboEmployee, comboEmployeeID, comboEmployeeOrign);
  aaaToothButtonUncheckAll;

  if gridCardList.SelectedRow[0] = 1 then
    patientCardView(gridCard, gridCardList.Cells[GRID_CARD_LIST_ID,
      gridCardList.SelectedRow[0]], '1')
  else
    patientCardView(gridCard, gridCardList.Cells[GRID_CARD_LIST_ID,
      gridCardList.SelectedRow[0]], '0');

  for i := 0 to comboEmployee.Items.Count - 1 do
    if comboEmployee.Items[i] = gridCardList.Cells[GRID_CARD_LIST_EMPLOYEE_NAME,
      gridCardList.SelectedRow[0]] then
    begin
      comboEmployee.ItemIndex := i;
      comboEmployeeID.ItemIndex := i;
      comboEmployeeOrign.ItemIndex := i;
    end;

  // выводим дату создания
  GetLocaleFormatSettings(0, fmt);
  fmt.ShortDateFormat := 'yyyy-MM-dd HH:mm:ss';
  fmt.DateSeparator := '-';
  dateCard.DateTime := StrToDateTime(gridCardList.Cells[GRID_CARD_LIST_CREATED,
    gridCardList.SelectedRow[0]], fmt);

  labelName.Caption := gridCardList.Cells[GRID_CARD_LIST_NAME,
    gridCardList.SelectedRow[0]];

  ACardTreeDelete.Clear;

  plSettings.Visible := false;
  plPatient.Visible := false;
  plPatientCardList.Visible := false;
  plPatientCardModify.Visible := true;
end;

procedure TfmMain.buttonPatientCardSaveClick(Sender: TObject);
begin
  { TODO верефикация, сохранить карточку, сохранить изменения карточки }
  // if gridCardList.Cells[GRID_CARD_LIST_ID, gridPatient.SelectedRow[0]] = '' then
  if glFlagInsertCard = true then
    if gridCardList.Cells[GRID_CARD_LIST_ID, gridPatient.SelectedRow[0]] = '' then
      patientCardInsertSave(gridCard, gridPatient.Cells[GRID_PATIENT_ID,
        gridPatient.SelectedRow[0]], comboEmployeeID.text, '1')
    else
      // bug не сохраняет первую запись
      patientCardInsertSave(gridCard, gridPatient.Cells[GRID_PATIENT_ID,
        gridPatient.SelectedRow[0]], comboEmployeeID.text, '0')
  else if comboEmployee.ItemIndex <> comboEmployeeOrign.ItemIndex then
    patientCardModifySave(gridCard, comboEmployeeID.text,
      gridCardList.Cells[GRID_CARD_LIST_ID, gridCardList.SelectedRow[0]])
  else
    patientCardModifySave(gridCard, '', gridCardList.Cells[GRID_CARD_LIST_ID,
      gridCardList.SelectedRow[0]]);

  patientCard(gridCardList, gridPatient.Cells[GRID_PATIENT_ID,
    gridPatient.SelectedRow[0]]);

  plSettings.Visible := false;
  plPatient.Visible := false;
  plPatientCardList.Visible := true;
  plPatientCardModify.Visible := false;
end;

procedure TfmMain.buttonClearClick(Sender: TObject);
begin
  loggerLostBox.ListBoxItems.Clear;
end;

procedure TfmMain.buttonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.buttonEmployeeInsertClick(Sender: TObject);
begin
  with fmModifyData do
  begin
    aaaModifyStyle(1);
    // форма закрылась кнопочкой ОК
    if fmModifyData.ShowModal = mrOk then
      if aaaIsEmptyText(editField.text, MSG_TEXT_EMPLOYEE_EMPTY) = false then
      begin
        // 0 - т.к. данный параметер не учитываетья при true
        employeeModify(true, editField.text, fmModifyData.checkEnable.Checked, '0');
        employeeList(gridEmployee, comboEmployee, comboEmployeeID, comboEmployeeOrign);
      end;
  end;
end;

procedure TfmMain.buttonEmployeeModifyClick(Sender: TObject);
begin
  if gridEmployee.Cells[GRID_EMPLOYEE_ID, gridEmployee.SelectedRow[0]] = '1' then
  begin
    MessageDlg('Данную запись нельзя изменить/удалить!', mtError, [mbOK], 0);
    Exit;
  end;

  with fmModifyData do
  begin
    aaaModifyStyle(2);
    fmModifyData.editField.text := gridEmployee.Cells[GRID_EMPLOYEE_NAME,
      gridEmployee.SelectedRow[0]];
    if gridEmployee.Cells[GRID_EMPLOYEE_ENABLE, gridEmployee.SelectedRow[0]] = TEXT_ACTIVE
    then
      fmModifyData.checkEnable.Checked := true
    else
      fmModifyData.checkEnable.Checked := false;
    // форма закрылась кнопочкой ОК
    if fmModifyData.ShowModal = mrOk then
      if aaaIsEmptyText(editField.text, MSG_TEXT_TEMPLATE_EMPTY) = false then
      begin
        employeeModify(false, editField.text, fmModifyData.checkEnable.Checked,
          gridEmployee.Cells[GRID_EMPLOYEE_ID, gridEmployee.SelectedRow[0]]);
        employeeList(gridEmployee, comboEmployee, comboEmployeeID, comboEmployeeOrign);
      end;
  end;
end;

procedure TfmMain.buttonFilterClearClick(Sender: TObject);
begin
  gridPatient.FilterActive := false;
end;

procedure TfmMain.buttonNodeCancelClick(Sender: TObject);
begin
  // treeNodeRootSettingAfterSelectNode(Sender, treeNodeRootSetting.SelectedVirtualNode);
  treeNodeContent(treeNodeSetting, treeNodeRootSetting.SelectedVirtualNode.Node, true);
end;

procedure TfmMain.buttonNodeInsertClick(Sender: TObject);
var
  CNode: TAdvTreeViewNode;
begin
  if treeNodeRootSetting.SelectedNodeCount > 0 then
    if Assigned(glModifyNode) then
      if glModifyNode.Node.text[TREE_NODE_ID] <> '' then
      begin
        aaaModifyStyle(3);
        if fmModifyData.ShowModal = mrOk then
          with fmModifyData do
          begin
            if aaaIsEmptyText(editField.text, MSG_TEXT_EMPLOYEE_EMPTY) = false then
            begin
              CNode := treeNodeSetting.AddNode(glModifyNode.Node);
              CNode.text[TREE_NODE_CONTENT] := editField.text;

              { if checkInitExam.Checked then
                CNode.text[TREE_NODE_INIT_EXAM] := TEXT_YES
                else
                CNode.text[TREE_NODE_INIT_EXAM] := TEXT_NOT; }

              if checkEnable.Checked then
                CNode.text[TREE_NODE_ENABLE] := TEXT_ACTIVE
              else
                CNode.text[TREE_NODE_ENABLE] := TEXT_INACTIVE;

              CNode.text[TREE_NODE_ID] := '';
              CNode.text[TREE_NODE_NEW_PARENT_ID] := glModifyNode.Node.text[TREE_NODE_ID];

              treeNodeSetting.ExpandAll;
            end;
          end;
      end
      else
      begin
        MessageDlg(MSG_TEXT_SAVE_NODE_WARNING, mtWarning, [mbOK], 0);
      end
    else
      MessageDlg(MSG_TEXT_SELECT_ROOT_TEMPLATE, mtInformation, [mbOK], 0);
end;

// TODO успешно/ошибка при сохранении записи
procedure TfmMain.buttonNodeSaveClick(Sender: TObject);
begin
  buttonNodeSave.Enabled := false;

  if treeNodeSetting.Nodes.Items[0] <> nil then
    treeNodeSave(treeNodeSetting.Nodes.Items[0]);

  buttonNodeSave.Enabled := true;
  ShowMessage('Сохрание завершено');
end;

procedure TfmMain.buttonPatientCancelClick(Sender: TObject);
begin
  buttonPatientInsert.Down := false;
  buttonPatientModify.Down := false;
  plPatientModifed.Visible := false;
  if gridPatient.FilterActive = true then
    gridPatient.FilterActive := false;
end;

procedure TfmMain.buttonPatientCardInsertClick(Sender: TObject);
begin
  // if MessageDlg(MSG_TEXT_INSERT_CARD, mtConfirmation, mbOKCancel, 0) = mrOk then
  // begin
  glFlagInsertCard := true;
  if (gridCardList.Cells[GRID_CARD_LIST_INITEXAM, gridCardList.SelectedRow[0]] = '') then
    treeNodeRootContent(treeNodeRootCard, '1')
  else
    treeNodeRootContent(treeNodeRootCard, '0');

  gridCard.Clear;
  gridCard.RowCount := 2;
  employeeList(gridEmployee, comboEmployee, comboEmployeeID, comboEmployeeOrign);
  aaaToothButtonUncheckAll;

  // DateTimePicker1.Date:=StrToDateTime(gridCardList.Cells[GRID_CARD_LIST_CREATED,gridCardList.SelectedRow[0]]);
  dateCard.DateTime := now;
  labelName.Caption := gridCardList.Cells[GRID_CARD_LIST_NAME,
    gridCardList.SelectedRow[0]];
  comboEmployeeChange(Sender);

  plSettings.Visible := false;
  plPatient.Visible := false;
  plPatientCardList.Visible := false;
  plPatientCardModify.Visible := true;
  // end;
  // treeNodeContent(treeNodeCard);
end;

procedure TfmMain.buttonPatientClick(Sender: TObject);
begin
  plSettings.Visible := false;
  gridPatient.FilterActive := false;
  plPatient.Visible := true;
  plPatientCardList.Visible := false;
  plPatientCardModify.Visible := false;

  plPatientModifed.Visible := false;

  // plLoading.Visible:=true;
  // fmMain.Enabled:=false;
  Application.ProcessMessages;
  patientRefresh(gridPatient);
  // fmMain.Enabled:=true;
  // plLoading.Visible:=false;
end;

procedure TfmMain.buttonSettingsClick(Sender: TObject);
begin
  plSettings.Visible := true;
  plPatient.Visible := false;
  plPatientCardList.Visible := false;
  plPatientCardModify.Visible := false;
end;

procedure TfmMain.comboEmployeeChange(Sender: TObject);
begin
  comboEmployeeID.ItemIndex := comboEmployee.ItemIndex;
end;

procedure TfmMain.editAddress1RightButtonClick(Sender: TObject);
begin
  editAddress1.Clear;
  editAddress1.SetFocus;
end;

procedure TfmMain.editAddress2RightButtonClick(Sender: TObject);
begin
  editAddress2.Clear;
  editAddress2.SetFocus;
end;

procedure TfmMain.editAddress3RightButtonClick(Sender: TObject);
begin
  editAddress3.Clear;
  editAddress3.SetFocus;
end;

procedure TfmMain.editFNameChange(Sender: TObject);
begin
  aaaPatientFilter;
end;

procedure TfmMain.editFNameRightButtonClick(Sender: TObject);
begin
  editFName.Clear;
  editFName.SetFocus;
end;

procedure TfmMain.editLNameRightButtonClick(Sender: TObject);
begin
  editLName.Clear;
  editLName.SetFocus;
end;

procedure TfmMain.editNameChange(Sender: TObject);
begin
  aaaPatientFilter;
end;

procedure TfmMain.editNameRightButtonClick(Sender: TObject);
begin
  editName.Clear;
  editName.SetFocus;
end;

procedure TfmMain.editProffRightButtonClick(Sender: TObject);
begin
  editProff.Clear;
  editProff.SetFocus;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACardTreeDelete.Free;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin


  ACardTreeDelete := TStringList.Create;
  treeNodeRootSetting.NodesAppearance.HeightMode := tnhmVariable;
  treeNodeSetting.NodesAppearance.HeightMode := tnhmVariable;

  treeNodeRootCard.NodesAppearance.HeightMode := tnhmVariable;
  treeNodeCard.NodesAppearance.HeightMode := tnhmVariable;

  plSettings.Visible := false;
  //gridPatient.FilterActive := false;
  plPatient.Visible := true;
  plPatientCardList.Visible := false;
  plPatientCardModify.Visible := false;

  plPatientModifed.Visible := false;

  // RequestParams := TRESTRequestParameterList.Create(fmMain);
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  aaaToothButtonsSet;
  patientRefresh(gridPatient);
end;

// TODO Доделать процедуру редактирования сотрудника
procedure TfmMain.gridCardDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if (ARow > 0) and (ACol > 0) then
  begin
    aaaToothButtonUncheck(ARow);
    // 1 - константа, количество удаляемых строк
    if gridCard.Cells[GRID_CARD_ID, ARow] <> '' then
      ACardTreeDelete.Add(gridCard.Cells[GRID_CARD_ID, ARow]);
    gridCard.RemoveRows(ARow, 1);
  end;
end;

procedure TfmMain.gridEmployeeDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  // aaaModifyStyle(2);
  // fmModifyData.ShowModal;
end;

procedure TfmMain.gridPatientDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if plPatientModifed.Visible = true then
    case ACol of
      GRID_PATIENT_FNAME:
        editFName.text := gridPatient.Cells[ACol, ARow];
      GRID_PATIENT_NAME:
        editName.text := gridPatient.Cells[ACol, ARow];
      GRID_PATIENT_LNAME:
        editLName.text := gridPatient.Cells[ACol, ARow];
      GRID_PATIENT_ADDRESS1:
        editAddress1.text := gridPatient.Cells[ACol, ARow];
      GRID_PATIENT_ADDRESS2:
        editAddress2.text := gridPatient.Cells[ACol, ARow];
    end;
end;

// TODO необходимо организовать удаление нода если он неиспользовался
procedure TfmMain.menuDeleteClick(Sender: TObject);
begin
  if glModifyNode.Node.text[TREE_NODE_ID] = '' then
  begin
    if MessageDlg('Удалить шаблон "' + glModifyNode.Node.text[TREE_NODE_CONTENT] + '"?',
      mtConfirmation, mbOKCancel, 0) = mrOk then
      treeNodeSetting.RemoveNode(glModifyNode.Node);
  end
  else
    MessageDlg('Нельзя удалить действующие шаблоны', mtInformation, [mbOK], 0);
end;

procedure TfmMain.menuInsertNodeClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
  CNode: TAdvTreeViewNode;
begin
  if treeNodeRootSetting.SelectedNodeCount > 0 then
  begin
    NewString := 'Введите текст шаблона';
    ClickedOK := InputQuery('Добавление нового узла', 'Текст шаблона', NewString);
    if ClickedOK = true then { NewString contains new input string. }
    begin
      CNode := treeNodeSetting.AddNode(nil);
      CNode.text[TREE_NODE_CONTENT] := NewString;
      CNode.text[TREE_NODE_ENABLE] := TEXT_ACTIVE;
      CNode.text[TREE_NODE_ID] := '';
      CNode.text[TREE_NODE_NEW_PARENT_ID] := treeNodeRootSetting.SelectedNode.text
        [TREE_NODE_ROOT_ID];
      // CNode.CollapsedIconNames[0, false] := 'FOLDER';
      // CNode.ExpandedIconNames[0, false]  := 'FOLDER_OPEN';
    end;
  end;
end;

procedure TfmMain.menuInsertSubnodeClick(Sender: TObject);
var
  NewString: string;
  ClickedOK: Boolean;
  CNode: TAdvTreeViewNode;
begin
  if treeNodeRootSetting.SelectedNodeCount > 0 then
    if glModifyNode.Node.text[TREE_NODE_ID] <> '' then
    begin
      NewString := 'Введите текст шаблона';
      ClickedOK := InputQuery('Добавление шаблона', 'Текст шаблона', NewString);
      if ClickedOK = true then { NewString contains new input string. }
        if aaaIsEmptyText(NewString, MSG_TEXT_TEMPLATE_EMPTY) = false then
        begin
          CNode := treeNodeSetting.AddNode(glModifyNode.Node);
          CNode.text[TREE_NODE_CONTENT] := NewString;
          // CNode.text[TREE_NODE_INIT_EXAM] := TEXT_NOT;
          CNode.text[TREE_NODE_ENABLE] := TEXT_ACTIVE;
          CNode.text[TREE_NODE_ID] := '';
          CNode.text[TREE_NODE_NEW_PARENT_ID] := glModifyNode.Node.text[TREE_NODE_ID];

          treeNodeSetting.ExpandAll;
          // CNode.CollapsedIconNames[0, false] := 'FOLDER';
          // CNode.ExpandedIconNames[0, false] := 'FOLDER_OPEN';
        end;
    end
    else
    begin
      MessageDlg('Для добавления шаблона необходимо сохранить предыдущие изменения',
        mtInformation, [mbOK], 0);
    end;
end;

procedure TfmMain.menuModityClick(Sender: TObject);
var
  NewString: String;
  ClickedOK: Boolean;
begin
  NewString := glModifyNode.Node.text[0];
  ClickedOK := InputQuery('Изменить текст шаблона', 'Текст шаблона', NewString);
  if ClickedOK = true then { NewString contains new input string. }
    if aaaIsEmptyText(NewString, MSG_TEXT_TEMPLATE_EMPTY) = false then
    begin
      glModifyNode.Node.text[TREE_NODE_CONTENT] := NewString;
      glModifyNode.Node.text[TREE_NODE_MODIFY_ID] := glModifyNode.Node.text[TREE_NODE_ID];
    end;
end;

procedure TfmMain.plMainTopClick(Sender: TObject);
var
  fmt: TFormatSettings;
begin
  { GetLocaleFormatSettings(0, fmt);
    fmt.ShortDateFormat := 'yyyy-MM-dd';
    fmt.DateSeparator := '-';
    fmMain.Caption := DateToStr(dateBirthday.Date, fmt);

    aaaToothButtonsSet; }
  // dmDataModule.LocalDB.Connected:= true;

end;

procedure TfmMain.tabEmployeeShow(Sender: TObject);
begin
  // fmMain.Caption:=IntToStr(StrToInt(fmMain.Caption)+1);
  employeeList(gridEmployee, comboEmployee, comboEmployeeID, comboEmployeeOrign);
end;

procedure TfmMain.tabTreeShow(Sender: TObject);
begin
  // 2-признак того чтобы вывести ВСЕ корневые узлы (кроме зарезервированных)
  treeNodeRootContent(treeNodeRootSetting, '2');
  if treeNodeRootSetting.Nodes[0] <> nil then
    treeNodeContent(treeNodeSetting, treeNodeRootSetting.Nodes[0], true);
  treeNodeSetting.ColumnsAppearance.StretchColumn := 0;
end;

procedure TfmMain.treeNodeSettingMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    glModifyNode := nil;
    glModifyNode := treeNodeSetting.XYToNode(X, Y);
    if Assigned(glModifyNode) = true then
    begin
      menuInsertSubnode.Enabled := true;
      menuModity.Enabled := true;
      menuDelete.Enabled := true;
      treeMenu.PopupAtCursor;
    end
    else
    begin
      menuInsertSubnode.Enabled := false;
      menuModity.Enabled := false;
      menuDelete.Enabled := false;
      treeMenu.PopupAtCursor;
    end;
  end;
end;

procedure TfmMain.treeNodeSettingNodeClick(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
begin
  glModifyNode := ANode;
end;

procedure TfmMain.treeNodeSettingNodeDblClick(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
begin
  with fmModifyData do
  begin
    aaaModifyStyle(4);

    editField.text := ANode.Node.text[TREE_NODE_CONTENT];
    { if ANode.Node.text[TREE_NODE_INIT_EXAM] = TEXT_YES then
      checkInitExam.Checked := true
      else
      checkInitExam.Checked := false; }

    if ANode.Node.text[TREE_NODE_ENABLE] = TEXT_ACTIVE then
      checkEnable.Checked := true
    else
      checkEnable.Checked := false;

    // форма закрылась кнопочкой ОК
    if fmModifyData.ShowModal = mrOk then
      if aaaIsEmptyText(editField.text, MSG_TEXT_TEMPLATE_EMPTY) = false then
      begin
        ANode.Node.text[TREE_NODE_CONTENT] := editField.text;

        { if checkInitExam.Checked then
          ANode.Node.text[TREE_NODE_INIT_EXAM] := TEXT_YES
          else
          ANode.Node.text[TREE_NODE_INIT_EXAM] := TEXT_NOT; }

        if checkEnable.Checked then
          ANode.Node.text[TREE_NODE_ENABLE] := TEXT_ACTIVE
        else
          ANode.Node.text[TREE_NODE_ENABLE] := TEXT_INACTIVE;

        ANode.Node.text[TREE_NODE_MODIFY_ID] := ANode.Node.text[TREE_NODE_ID];
      end;
  end;
end;

procedure TfmMain.treeNodeCardNodeDblClick(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
var
  PNode: TAdvTreeViewVirtualNode;
  sTooths: String;
  i: SmallInt;
begin
  if ANode.GetChildCount = 0 then
  begin
    sTooths := '';
    { перебираем все кнопки, если нашли "вдавленную" помечаем её картинкой из
      кнопки шаблона и "выдавливаем") т.е. показываем пользователю что она была
      ранее выбрана, сохраняя при этом коды зубов разделенных :, вносим данные в
      поле Tag +1 (изначально Tag = 0), это нужно для того что бы отследить сколь
      раз выбиралась это кнопка }
    for i := 0 to plTooths.ComponentCount - 1 do
      if plTooths.Components[i] is TAdvGlassButton then
        if (plTooths.Components[i] as TAdvGlassButton).Down = true then
        begin
          sTooths := sTooths + IntToStr((plTooths.Components[i] as TAdvGlassButton)
            .GroupIndex) + ':';
          (plTooths.Components[i] as TAdvGlassButton).Picture :=
            btnToothTmp.PictureDisabled;
          (plTooths.Components[i] as TAdvGlassButton).Down := false;
          (plTooths.Components[i] as TAdvGlassButton).Tag :=
            (plTooths.Components[i] as TAdvGlassButton).Tag + 1;
        end;

    if gridCard.Cells[GRID_CARD_ROOTNODE, gridCard.RowCount - 1] <> '' then
      gridCard.RowCount := gridCard.RowCount + 1;

    if treeNodeRootCard.Nodes.Count <= MAX_ROOT_NODE_INIT_EXAM then
    begin
      PNode := ANode.GetParent;
      repeat
        gridCard.Cells[GRID_CARD_ROOTNODE, gridCard.RowCount - 1] := PNode.Node.text[0];
        PNode := PNode.GetParent;
      until PNode = nil;
    end
    // treeNodeRootCard.SelectedNode.text[TREE_NODE_ROOT_CONTENT]
    else
      gridCard.Cells[GRID_CARD_ROOTNODE, gridCard.RowCount - 1] :=
        treeNodeRootCard.SelectedNode.text[TREE_NODE_ROOT_CONTENT];

    gridCard.Cells[GRID_CARD_TOOTH, gridCard.RowCount - 1] := sTooths;

    gridCard.Cells[GRID_CARD_CONTENT, gridCard.RowCount - 1] :=
      ANode.Node.text[TREE_NODE_ROOT_CONTENT];

    gridCard.Cells[GRID_CARD_TREE_ID, gridCard.RowCount - 1] :=
      ANode.Node.text[TREE_NODE_ID];

    gridCard.ScrollInView(1, gridCard.RowCount - 1);
  end;
end;

procedure TfmMain.treeNodeRootCardAfterSelectNode(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
begin
  treeNodeContent(treeNodeCard, ANode.Node);
end;

procedure TfmMain.treeNodeRootSettingAfterSelectNode(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
begin
  treeNodeContent(treeNodeSetting, ANode.Node, true);
end;

end.
