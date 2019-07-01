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

  System.JSON,
  REST.Types,

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
  AdvMenus, Vcl.Mask;

type
  TfmMain = class(TForm)

    plMainLeft: TPanel;
    buttonSettings: TAdvGlassButton;
    Button1: TButton;
    plMainTop: TPanel;
    plMainClient: TPanel;
    StatusBar1: TStatusBar;
    plSettings: TPanel;
    gridEmployee: TAdvStringGrid;
    pageSettings: TAdvPageControl;
    tabTree: TAdvTabSheet;
    tabEmployee: TAdvTabSheet;
    plEmployeeTop: TPanel;
    AdvGlassButton2: TAdvGlassButton;
    treeNodeRoot: TAdvTreeView;
    treeNode: TAdvTreeView;
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
    plInsertPatient: TPanel;
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
    AdvGlassButton3: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    AdvGlassButton5: TAdvGlassButton;
    procedure tabEmployeeShow(Sender: TObject);
    procedure tabTreeShow(Sender: TObject);
    procedure treeNodeRootAfterSelectNode(Sender: TObject;
      ANode: TAdvTreeViewVirtualNode);

    procedure aaaBuildTree(id: String; joItems: TJSONArray;
      PNode: TAdvTreeViewNode; TTree: TAdvTreeView);
    procedure aaaSearchModifyNode(PNode: TAdvTreeViewNode);
    function aaaIsEmptyText(s, msg: String): Boolean;
    procedure aaaModifyStyle(s: ShortInt);

    procedure treeNodeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure menuInsertNodeClick(Sender: TObject);
    procedure menuInsertSubnodeClick(Sender: TObject);
    procedure menuModityClick(Sender: TObject);
    procedure treeNodeNodeDblClick(Sender: TObject;
      ANode: TAdvTreeViewVirtualNode);
    procedure buttonNodeSaveClick(Sender: TObject);
    procedure buttonNodeCancelClick(Sender: TObject);
    procedure menuDeleteClick(Sender: TObject);
    procedure buttonEmployeeInsertClick(Sender: TObject);
    procedure gridEmployeeDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure buttonNodeInsertClick(Sender: TObject);
    procedure treeNodeNodeClick(Sender: TObject;
      ANode: TAdvTreeViewVirtualNode);
    procedure buttonSettingsClick(Sender: TObject);
    procedure buttonPatientClick(Sender: TObject);
    procedure plMainTopClick(Sender: TObject);
    procedure memoNotesChange(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure buttonPatientInsertClick(Sender: TObject);
    procedure AdvGlassButton5Click(Sender: TObject);
    procedure editFNameRightButtonClick(Sender: TObject);
  private
    { Private declarations }
    insertParentId, insertContent, insertInitExam, insertEnable: TStrings;
    updateNodeId, updateContent, updateInitExam, updateEnable: TStrings;
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;
  glModifyNode: TAdvTreeViewVirtualNode; // сохраняем нод

  // glModifyClient: Boolean; // true - append, false - modify
implementation

{$R *.dfm}

uses
  uDataModule, uModifyNode;

const
  GRID_EMPLOYEE_ID = 4;
  GRID_EMPLOYEE_NAME = 1;
  GRID_EMPLOYEE_ENABLE = 2;
  GRID_EMPLOYEE_CREATED = 3;

  GRID_PATIENT_ID = 14;
  GRID_PATIENT_FNAME = 1;
  GRID_PATIENT_NAME = 2;
  GRID_PATIENT_LNAME = 3;
  GRID_PATIENT_BIRTHDAY = 4;
  GRID_PATIENT_SEX = 5;
  GRID_PATIENT_PROFF = 6;
  GRID_PATIENT_ADDRESS1 = 7;
  GRID_PATIENT_ADDRESS2 = 8;
  GRID_PATIENT_ADDRESS3 = 9;
  GRID_PATIENT_PHONE1 = 10;
  GRID_PATIENT_PHONE2 = 11;
  GRID_PATIENT_NOTES = 12;
  GRID_PATIENT_CREATED = 13;

  TREE_NODE_ROOT_ID = 1;
  TREE_NODE_ROOT_CONTENT = 0;

  TREE_NODE_ID = 3;
  TREE_NODE_PARENT_ID = 4;
  TREE_NODE_CONTENT = 0;
  TREE_NODE_INIT_EXAM = 1;
  TREE_NODE_ENABLE = 2;

  TREE_NODE_NEW_PARENT_ID = 5;
  TREE_NODE_MODIFY_ID = 6;

  TEXT_ACTIVE = 'Активный';
  TEXT_INACTIVE = 'Не активный';
  TEXT_YES = 'Да';
  TEXT_NOT = 'Нет';
  TEXT_MEN = 'Муж.';
  TEXT_WOMEN = 'Жен.';
  TEXT_NAME_TEMPLATE = 'Текст шаблона';
  TEXT_NAME_EMPLOYEE = 'Введите Фамилия И.О.';

  JSON_ERROR = 'error';
  JSON_RESPONSE = 'response';

  JSON_ID = 'id';
  JSON_PARENT_ID = 'parent_id';
  JSON_CONTENT = 'content';
  JSON_IS_INIT_EXAM = 'is_init_exam';
  JSON_IS_ENABLE = 'is_enable';

  JSON_NAME = 'name';
  JSON_CREATED = 'created';

  JSON_FNAME = 'fname';
  JSON_LNAME = 'lname';
  JSON_BIRTHDAY = 'birthday';
  JSON_SEX = 'sex';
  JSON_PROFF = 'proff';
  JSON_ADDRESS1 = 'address1';
  JSON_ADDRESS2 = 'address2';
  JSON_ADDRESS3 = 'address3';
  JSON_PHONE1 = 'phone1';
  JSON_PHONE2 = 'phone2';
  JSON_NOTES = 'notes';

  MSG_TEXT_TEMPLATE_EMPTY = 'Поле "' + TEXT_NAME_TEMPLATE +
    '" не должно быть пустым!';
  MSG_TEXT_EMPLOYEE_EMPTY = 'Поле "' + TEXT_NAME_EMPLOYEE +
    '" не должно быть пустым!';
  MSG_TEXT_SAVE_NODE_WARNING =
    'Для добавления шаблона к только что созданным узлам, необходимо сохранить предыдущие изменения';

function TfmMain.aaaIsEmptyText(s, msg: String): Boolean;
begin
  if Length(Trim(s)) = 0 then
  begin
    MessageDlg(MSG_TEXT_TEMPLATE_EMPTY, mtWarning, [mbOK], 0);
    Result := true;
  end
  else
    Result := false;
end;

{ рекрусивная процедура "рисует" treeview из json по коду id }
procedure TfmMain.aaaBuildTree(id: String; joItems: TJSONArray;
  PNode: TAdvTreeViewNode; TTree: TAdvTreeView);
var
  joItem: TJSONObject;
  CNode: TAdvTreeViewNode;
  i: Integer;
begin
  for i := 0 to joItems.Count - 1 do
  begin
    joItem := joItems.Items[i] as TJSONObject;
    if joItem.GetValue(JSON_PARENT_ID).ToString = id then
    begin
      CNode := TTree.AddNode(PNode);
      CNode.Text[TREE_NODE_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;

      if joItem.GetValue(JSON_IS_INIT_EXAM).Value = '1' then
        CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_YES
      else
        CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_NOT;

      if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
        CNode.Text[TREE_NODE_ENABLE] := TEXT_ACTIVE
      else
        CNode.Text[TREE_NODE_ENABLE] := TEXT_INACTIVE;

      CNode.Text[TREE_NODE_ID] := joItem.GetValue(JSON_ID).Value;
      CNode.Text[TREE_NODE_PARENT_ID] := joItem.GetValue(JSON_PARENT_ID).Value;
      aaaBuildTree(joItem.GetValue(JSON_ID).ToString, joItems, CNode, TTree);
    end;
  end;

end;

procedure TfmMain.aaaSearchModifyNode(PNode: TAdvTreeViewNode);
var
  i: Integer;
begin
  while PNode <> nil do
  begin
    // собираем данные добавленных узлов
    if PNode.Text[TREE_NODE_NEW_PARENT_ID] <> '' then
    begin
      insertParentId.Add(PNode.Text[TREE_NODE_NEW_PARENT_ID]);
      insertContent.Add(PNode.Text[TREE_NODE_CONTENT]);

      if PNode.Text[TREE_NODE_INIT_EXAM] = TEXT_YES then
        insertInitExam.Add('1')
      else
        insertInitExam.Add('0');

      if PNode.Text[TREE_NODE_ENABLE] = TEXT_ACTIVE then
        insertEnable.Add('1')
      else
        insertEnable.Add('0');

      PNode.Text[TREE_NODE_NEW_PARENT_ID] := '';
    end;
    // собираем данные обновленных узлов
    if PNode.Text[TREE_NODE_MODIFY_ID] <> '' then
    begin
      updateNodeId.Add(PNode.Text[TREE_NODE_MODIFY_ID]);
      updateContent.Add(PNode.Text[TREE_NODE_CONTENT]);

      if PNode.Text[TREE_NODE_INIT_EXAM] = TEXT_YES then
        updateInitExam.Add('1')
      else
        updateInitExam.Add('0');

      if PNode.Text[TREE_NODE_ENABLE] = TEXT_ACTIVE then
        updateEnable.Add('1')
      else
        updateEnable.Add('0');

      PNode.Text[TREE_NODE_MODIFY_ID] := '';
    end;

    if PNode.GetChildCount > 0 then
      aaaSearchModifyNode(PNode.GetFirstChild);

    PNode := PNode.GetNext;
  end;

end;

procedure TfmMain.AdvGlassButton5Click(Sender: TObject);
begin
  plInsertPatient.Visible:= buttonPatientInsert.Down;
  editFName.Text:= gridPatient.Cells[GRID_PATIENT_FNAME,gridPatient.SelectedRow[0]];
  editName.Text:=gridPatient.Cells[GRID_PATIENT_NAME,gridPatient.SelectedRow[0]];
  editLName.Text:= gridPatient.Cells[GRID_PATIENT_LNAME,gridPatient.SelectedRow[0]];
  editProff.Text:=gridPatient.Cells[GRID_PATIENT_PROFF,gridPatient.SelectedRow[0]];

  dateBirthday.Date:=StrToDate(gridPatient.Cells[GRID_PATIENT_BIRTHDAY,gridPatient.SelectedRow[0]]);
  fmMain.Caption:= FormatDateTime('yyyy-mm-dd',dateBirthday.Date);

  if gridPatient.Cells[GRID_PATIENT_SEX,gridPatient.SelectedRow[0]] = TEXT_MEN then
    comboSex.ItemIndex:=0
  else
    comboSex.ItemIndex:=1;

  editAddress1.Text:=gridPatient.Cells[GRID_PATIENT_ADDRESS1,gridPatient.SelectedRow[0]];
  editAddress2.Text:=gridPatient.Cells[GRID_PATIENT_ADDRESS2,gridPatient.SelectedRow[0]];
  editAddress3.Text:=gridPatient.Cells[GRID_PATIENT_ADDRESS3,gridPatient.SelectedRow[0]];
  editPhone1.Text:=gridPatient.Cells[GRID_PATIENT_PHONE1,gridPatient.SelectedRow[0]];
  editPhone2.Text:=gridPatient.Cells[GRID_PATIENT_PHONE2,gridPatient.SelectedRow[0]];
  memoNotes.Lines.Clear;
  memoNotes.Lines.Add(gridPatient.Cells[GRID_PATIENT_NOTES,gridPatient.SelectedRow[0]]);
end;

procedure TfmMain.buttonPatientInsertClick(Sender: TObject);
begin
  plInsertPatient.Visible:= buttonPatientInsert.Down;
  editFName.Clear;
  editName.Clear;
  editLName.Clear;
  editProff.Clear;
  dateBirthday.DateTime:=now;
  editAddress1.Clear;
  editAddress2.Clear;
  editPhone1.Clear;
  editPhone2.Clear;
  memoNotes.Lines.Clear;
end;

procedure TfmMain.memoNotesChange(Sender: TObject);
begin

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

procedure TfmMain.buttonEmployeeInsertClick(Sender: TObject);
begin
  with fmModifyData do
  begin
    aaaModifyStyle(1);
    // форма закрылась кнопочкой ОК
    if fmModifyData.ShowModal = mrOk then
      if aaaIsEmptyText(editField.Text, MSG_TEXT_TEMPLATE_EMPTY) = false then
      begin

      end;
  end;
end;

procedure TfmMain.buttonNodeCancelClick(Sender: TObject);
begin
  treeNodeRootAfterSelectNode(Sender, treeNodeRoot.SelectedVirtualNode);
end;

procedure TfmMain.buttonNodeInsertClick(Sender: TObject);
var
  CNode: TAdvTreeViewNode;
begin
  if treeNodeRoot.SelectedNodeCount > 0 then
    if Assigned(glModifyNode) then
      if glModifyNode.Node.Text[TREE_NODE_ID] <> '' then
      begin
        aaaModifyStyle(3);
        if fmModifyData.ShowModal = mrOk then
          with fmModifyData do
          begin
            if aaaIsEmptyText(editField.Text, MSG_TEXT_EMPLOYEE_EMPTY) = false
            then
            begin
              CNode := treeNode.AddNode(glModifyNode.Node);
              CNode.Text[TREE_NODE_CONTENT] := editField.Text;

              if checkInitExam.Checked then
                CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_YES
              else
                CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_NOT;

              if checkEnable.Checked then
                CNode.Text[TREE_NODE_ENABLE] := TEXT_ACTIVE
              else
                CNode.Text[TREE_NODE_ENABLE] := TEXT_INACTIVE;

              CNode.Text[TREE_NODE_ID] := '';
              CNode.Text[TREE_NODE_NEW_PARENT_ID] := glModifyNode.Node.Text
                [TREE_NODE_ID];

              treeNode.ExpandAll;
            end;
          end;
      end
      else
      begin
        MessageDlg(MSG_TEXT_SAVE_NODE_WARNING, mtWarning, [mbOK], 0);
      end
    else
      MessageDlg('Выберите узел для добавление шаблонов', mtInformation,
        [mbOK], 0);
end;

procedure TfmMain.buttonNodeSaveClick(Sender: TObject);
var
  OriginalJSONObject: TJSONObject;
  JSONString: String;

  error: Boolean;
  i: Integer;
begin
  buttonNodeSave.Enabled := false;
  insertParentId := TStringList.Create;
  insertContent := TStringList.Create;
  insertInitExam := TStringList.Create;
  insertEnable := TStringList.Create;

  updateNodeId := TStringList.Create;
  updateContent := TStringList.Create;
  updateInitExam := TStringList.Create;
  updateEnable := TStringList.Create;

  insertParentId.Clear;
  insertContent.Clear;
  insertInitExam.Clear;
  insertEnable.Clear;

  updateNodeId.Clear;
  updateContent.Clear;
  updateInitExam.Clear;
  updateEnable.Clear;

  if treeNode.Nodes.Items[0] <> nil then
    aaaSearchModifyNode(treeNode.Nodes.Items[0]);

  with dmDataModule do
  begin
    // Добавление записей
    for i := 0 to insertParentId.Count - 1 do
    begin
      RESTRequest1.Method := rmPOST;
      RESTRequest1.Resource := 'tree';

      RESTRequest1.Params.Clear;
      // RESTRequest1.Params.AddHeader('Connection', 'keep-alive');
      RESTRequest1.Params.AddItem(JSON_PARENT_ID,
        UTF8EncodeToShortString(insertParentId[i]), pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_CONTENT,
        UTF8EncodeToShortString(insertContent[i]), pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_IS_INIT_EXAM,
        UTF8EncodeToShortString(insertInitExam[i]), pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_IS_ENABLE,
        UTF8EncodeToShortString(insertEnable[i]), pkGETorPOST, [poDoNotEncode]);

      RESTRequest1.Execute;
      JSONString := RESTResponse1.JSONValue.ToString;
    end;

    for i := 0 to updateNodeId.Count - 1 do
    begin
      RESTRequest1.Method := rmPUT;
      RESTRequest1.Resource := 'tree/' + updateNodeId[i];

      RESTRequest1.Params.Clear;
      // RESTRequest1.Params.AddHeader('Connection', 'keep-alive');
      RESTRequest1.Params.AddItem(JSON_CONTENT,
        UTF8EncodeToShortString(updateContent[i]), pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_IS_INIT_EXAM,
        UTF8EncodeToShortString(updateInitExam[i]), pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest1.Params.AddItem(JSON_IS_ENABLE,
        UTF8EncodeToShortString(updateEnable[i]), pkGETorPOST, [poDoNotEncode]);

      RESTRequest1.Execute;
      JSONString := RESTResponse1.JSONValue.ToString;
    end;
    // OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    // ShowMessage(JSONString);

  end;

  // error := OriginalJSONObject.GetValue('error') is TJSONTrue;
  // FreeAndNil(OriginalJSONObject);
  insertParentId.Free;
  insertContent.Free;
  insertInitExam.Free;
  insertEnable.Free;

  updateNodeId.Free;
  updateContent.Free;
  updateInitExam.Free;
  updateEnable.Free;
  buttonNodeSave.Enabled := true;
  ShowMessage('Сохрание завершено');
end;

procedure TfmMain.buttonPatientClick(Sender: TObject);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;
  // jValue:TJSONValue;
  JSONString: String;
  error: Boolean;
  i: Integer;
  j: Integer;

  col: TStrings;
begin
  plPatient.Visible:= true;
  plSettings.Visible:=false;

  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'patient';
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  error := OriginalJSONObject.GetValue('error') is TJSONTrue;
  if error = false then
  begin
    joItems := OriginalJSONObject.GetValue('response') as TJSONArray;

    gridPatient.RowCount := joItems.Count + 1;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;
      //ShowMessage(joItem.ToString);
      gridPatient.Cells[GRID_PATIENT_FNAME, i + 1] :=
        joItem.GetValue(JSON_FNAME).Value;

      gridPatient.Cells[GRID_PATIENT_NAME, i + 1] :=
        joItem.GetValue(JSON_NAME).Value;

      gridPatient.Cells[GRID_PATIENT_LNAME, i + 1] :=
        joItem.GetValue(JSON_LNAME).Value;

      gridPatient.Cells[GRID_PATIENT_BIRTHDAY, i + 1] :=
        joItem.GetValue(JSON_BIRTHDAY).Value;

      if joItem.GetValue(JSON_SEX).Value = '1' then
        gridPatient.Cells[GRID_PATIENT_SEX, i + 1] := TEXT_MEN
      else
        gridPatient.Cells[GRID_PATIENT_SEX, i + 1] := TEXT_WOMEN;

      gridPatient.Cells[GRID_PATIENT_PROFF, i + 1] :=
        joItem.GetValue(JSON_PROFF).Value;

      gridPatient.Cells[GRID_PATIENT_ADDRESS1, i + 1] :=
        joItem.GetValue(JSON_ADDRESS1).Value;

      gridPatient.Cells[GRID_PATIENT_ADDRESS2, i + 1] :=
        joItem.GetValue(JSON_ADDRESS2).Value;

      gridPatient.Cells[GRID_PATIENT_ADDRESS3, i + 1] :=
        joItem.GetValue(JSON_ADDRESS3).Value;

      gridPatient.Cells[GRID_PATIENT_PHONE1, i + 1] :=
        joItem.GetValue(JSON_PHONE1).Value;

      gridPatient.Cells[GRID_PATIENT_PHONE2, i + 1] :=
        joItem.GetValue(JSON_PHONE2).Value;

      gridPatient.Cells[GRID_PATIENT_NOTES, i + 1] :=
        joItem.GetValue(JSON_NOTES).Value;

      gridPatient.Cells[GRID_PATIENT_CREATED, i + 1] :=
        joItem.GetValue(JSON_CREATED).Value;
      // скрытый столбей, содержжит id
      gridPatient.Cells[GRID_PATIENT_ID, i + 1] :=
        joItem.GetValue('id').Value;
    end;
  end;
  FreeAndNil(OriginalJSONObject);
  //gridPatient.AutoSize:=true;
  gridPatient.AutoSizeColumns(false);
  gridPatient.ColWidths[GRID_PATIENT_NOTES]:=200;
end;

procedure TfmMain.buttonSettingsClick(Sender: TObject);
begin
  plPatient.Visible:=false;
  plSettings.Visible:=true;
end;

procedure TfmMain.editFNameRightButtonClick(Sender: TObject);
begin

end;

// TODO Доделать процедуру редактирования сотрудника
procedure TfmMain.gridEmployeeDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
  //aaaModifyStyle(2);
  //fmModifyData.ShowModal;
end;

procedure TfmMain.GroupBox1Click(Sender: TObject);
begin

end;

// TODO необходимо организовать удаление нода если он неиспользовался
procedure TfmMain.menuDeleteClick(Sender: TObject);
begin
  if glModifyNode.Node.Text[TREE_NODE_ID] = '' then
  begin
    if MessageDlg('Удалить шаблон "' + glModifyNode.Node.Text[TREE_NODE_CONTENT]
      + '"?', mtConfirmation, mbOKCancel, 0) = mrOk then
      treeNode.RemoveNode(glModifyNode.Node);
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
  if treeNodeRoot.SelectedNodeCount > 0 then
  begin
    NewString := 'Введите текст шаблона';
    ClickedOK := InputQuery('Добавление нового узла', 'Текст шаблона',
      NewString);
    if ClickedOK = true then { NewString contains new input string. }
    begin
      CNode := treeNode.AddNode(nil);
      CNode.Text[TREE_NODE_CONTENT] := NewString;
      CNode.Text[TREE_NODE_ID] := '';
      CNode.Text[TREE_NODE_NEW_PARENT_ID] := treeNodeRoot.SelectedNode.Text
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
  if treeNodeRoot.SelectedNodeCount > 0 then
    if glModifyNode.Node.Text[TREE_NODE_ID] <> '' then
    begin
      NewString := 'Введите текст шаблона';
      ClickedOK := InputQuery('Добавление шаблона', 'Текст шаблона', NewString);
      if ClickedOK = true then { NewString contains new input string. }
        if aaaIsEmptyText(NewString, MSG_TEXT_TEMPLATE_EMPTY) = false then
        begin
          CNode := treeNode.AddNode(glModifyNode.Node);
          CNode.Text[TREE_NODE_CONTENT] := NewString;
          CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_NOT;
          CNode.Text[TREE_NODE_ENABLE] := TEXT_ACTIVE;
          CNode.Text[TREE_NODE_ID] := '';
          CNode.Text[TREE_NODE_NEW_PARENT_ID] := glModifyNode.Node.Text
            [TREE_NODE_ID];

          treeNode.ExpandAll;
          // CNode.CollapsedIconNames[0, false] := 'FOLDER';
          // CNode.ExpandedIconNames[0, false] := 'FOLDER_OPEN';
        end;
    end
    else
    begin
      MessageDlg
        ('Для добавления шаблона необходимо сохранить предыдущие изменения',
        mtInformation, [mbOK], 0);
    end;
end;

procedure TfmMain.menuModityClick(Sender: TObject);
var
  NewString: String;
  ClickedOK: Boolean;
begin
  NewString := glModifyNode.Node.Text[0];
  ClickedOK := InputQuery('Изменить текст шаблона', 'Текст шаблона', NewString);
  if ClickedOK = true then { NewString contains new input string. }
    if aaaIsEmptyText(NewString, MSG_TEXT_TEMPLATE_EMPTY) = false then
    begin
      glModifyNode.Node.Text[TREE_NODE_CONTENT] := NewString;
      glModifyNode.Node.Text[TREE_NODE_MODIFY_ID] := glModifyNode.Node.Text
        [TREE_NODE_ID];
    end;
end;

procedure TfmMain.plMainTopClick(Sender: TObject);
begin
  plMainTop.Caption:=gridPatient.Cells[GRID_PATIENT_ID,1];
end;

procedure TfmMain.tabEmployeeShow(Sender: TObject);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;
  // jValue:TJSONValue;
  JSONString: String;
  error: Boolean;
  i: Integer;
  j: Integer;

  col: TStrings;
begin
  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'employee';
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  error := OriginalJSONObject.GetValue('error') is TJSONTrue;
  if error = false then
  begin
    joItems := OriginalJSONObject.GetValue('response') as TJSONArray;

    gridEmployee.RowCount := joItems.Count + 1;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;

      gridEmployee.Cells[GRID_EMPLOYEE_NAME, i + 1] :=
        joItem.GetValue(JSON_NAME).Value;

      if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
        gridEmployee.Cells[GRID_EMPLOYEE_ENABLE, i + 1] := TEXT_ACTIVE
      else
        gridEmployee.Cells[GRID_EMPLOYEE_ENABLE, i + 1] := TEXT_INACTIVE;

      gridEmployee.Cells[GRID_EMPLOYEE_CREATED, i + 1] :=
        joItem.GetValue(JSON_CREATED).Value;
      // скрытый столбей, содержжит id
      gridEmployee.Cells[GRID_EMPLOYEE_ID, i + 1] :=
        joItem.GetValue(JSON_ID).Value;
    end;
  end;
  FreeAndNil(OriginalJSONObject);

  // gridEmployee.SaveToJSON();
  // Memo1.Clear;
  // Memo1.Lines.Add('col0');
  // Memo1.Lines.Add('col1');
  // Memo1.Lines.Add('col2');
  // Memo1.Lines.Add('col3');
  // Memo1.Lines.Add('col4');
  // gridEmployee.XMLEncoding:='UTF-8';
  // gridEmployee.SaveToXML('employee.xml','list','record',Memo1.Lines,false);
end;

procedure TfmMain.tabTreeShow(Sender: TObject);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;
  // jValue:TJSONValue;
  JSONString: String;
  error: Boolean;
  i: Integer;
  j: Integer;

  Node: TAdvTreeViewNode;
begin
  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'tree';
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    // jValue:=RESTResponse1.JSONValue;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  error := OriginalJSONObject.GetValue('error') is TJSONTrue;
  if error = false then
  begin
    treeNodeRoot.ClearNodes;
    treeNodeRoot.BeginUpdate;

    joItems := OriginalJSONObject.GetValue('response') as TJSONArray;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;
      Node := treeNodeRoot.Nodes.Add;
      Node.Text[TREE_NODE_ROOT_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;
      Node.Text[TREE_NODE_ROOT_ID] := joItem.GetValue(JSON_ID).Value;
    end;
    treeNodeRoot.EndUpdate;
  end;
  FreeAndNil(OriginalJSONObject);

  treeNode.ColumnsAppearance.StretchColumn := 0;
end;

procedure TfmMain.treeNodeMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    glModifyNode := nil;
    glModifyNode := treeNode.XYToNode(X, Y);
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

procedure TfmMain.treeNodeNodeClick(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
begin
  glModifyNode := ANode;
end;

procedure TfmMain.treeNodeNodeDblClick(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
begin
  with fmModifyData do
  begin
    aaaModifyStyle(4);

    editField.Text := ANode.Node.Text[TREE_NODE_CONTENT];
    if ANode.Node.Text[TREE_NODE_INIT_EXAM] = TEXT_YES then
      checkInitExam.Checked := true
    else
      checkInitExam.Checked := false;

    if ANode.Node.Text[TREE_NODE_ENABLE] = TEXT_ACTIVE then
      checkEnable.Checked := true
    else
      checkEnable.Checked := false;

    // форма закрылась кнопочкой ОК
    if fmModifyData.ShowModal = mrOk then
      if aaaIsEmptyText(editField.Text, MSG_TEXT_TEMPLATE_EMPTY) = false then
      begin
        ANode.Node.Text[TREE_NODE_CONTENT] := editField.Text;

        if checkInitExam.Checked then
          ANode.Node.Text[TREE_NODE_INIT_EXAM] := TEXT_YES
        else
          ANode.Node.Text[TREE_NODE_INIT_EXAM] := TEXT_NOT;

        if checkEnable.Checked then
          ANode.Node.Text[TREE_NODE_ENABLE] := TEXT_ACTIVE
        else
          ANode.Node.Text[TREE_NODE_ENABLE] := TEXT_INACTIVE;

        ANode.Node.Text[TREE_NODE_MODIFY_ID] := ANode.Node.Text[TREE_NODE_ID];
      end;
  end;
end;

procedure TfmMain.treeNodeRootAfterSelectNode(Sender: TObject;
  ANode: TAdvTreeViewVirtualNode);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;
  JSONString: String;
  error: Boolean;

  CNode: TAdvTreeViewNode;
  i: Integer;
  j: Integer;
begin
  treeNode.ColumnsAppearance.StretchColumn := 0;
  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'tree/' + ANode.Node.Text[TREE_NODE_ROOT_ID];
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    // jValue:=RESTResponse1.JSONValue;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  error := OriginalJSONObject.GetValue('error') is TJSONTrue;
  if error = false then
  begin
    treeNode.ClearNodes;
    treeNode.BeginUpdate;

    joItems := OriginalJSONObject.GetValue('response') as TJSONArray;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;
      if joItem.GetValue(JSON_ID).ToString = ANode.Node.Text[TREE_NODE_ROOT_ID]
      then
        aaaBuildTree(joItem.GetValue(JSON_ID).ToString, joItems, nil, treeNode);
    end;
    treeNode.ExpandAll;
    treeNode.EndUpdate;
  end;
  FreeAndNil(OriginalJSONObject);
end;





end.
