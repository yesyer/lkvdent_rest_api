unit uContent;

interface

uses
  System.SysUtils,
  System.JSON,
  Vcl.StdCtrls,
  REST.Types,
  AdvTreeView,
  AdvTreeViewData,
  AdvGrid;

const
  STATUS_OK = '200';
  STATUS_NO_CONTENT = '204';

  LOG_GET = 'GET';
  LOG_POST = 'POST';
  LOG_PUT = 'PUT';

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

  GRID_CARD_LIST_ID = 7;
  GRID_CARD_LIST_PATIENT_ID = 8;
  GRID_CARD_LIST_NAME = 3;
  GRID_CARD_LIST_NOTES = 6;
  GRID_CARD_LIST_EMPLOYEE_NAME = 4;
  GRID_CARD_LIST_CREATED = 1;
  GRID_CARD_LIST_UPDATED = 2;
  GRID_CARD_LIST_RECORD = 5;
  GRID_CARD_LIST_INITEXAM = 9;
  GRID_CARD_LIST_COLUMN: array [0 .. 6] of String = ('', 'Дата создания',
    'Дата изменения', 'Фамилия И.О.', 'Врач', 'Кол-во записей', 'Примичание');
  GRID_CARD_LIST_COLUMN_COUNT = 6;

  GRID_CARD_ID = 6;
  GRID_CARD_CARD_ID = 4;
  GRID_CARD_TREE_ID = 5;
  GRID_CARD_ROOTNODE = 1;
  GRID_CARD_TOOTH = 2;
  GRID_CARD_CONTENT = 3;

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

  JSON_STATUS = 'status';
  JSON_RESPONSE = 'response';

  JSON_ID = 'id';
  JSON_PARENT_ID = 'parent_id';
  JSON_CONTENT = 'content';
  JSON_IS_INIT_EXAM = 'is_init_exam';
  JSON_IS_ENABLE = 'is_enable';
  JSON_ROOT = 'root';
  JSON_SUBROOT = 'subroot';

  JSON_NAME = 'name';
  JSON_CREATED = 'created';
  JSON_UPDATED = 'updated';

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

  JSON_PATIENT_ID = 'patient_id';
  JSON_EMNAME = 'em_name';
  JSON_RECORD = 'record';

  JSON_EMPLOYEE_ID = 'employee_id';

  JSON_CARD_ID = 'card_id';
  JSON_TREE_ID = 'tree_id';
  JSON_TOOTH = 'tooth';

  MSG_TEXT_TEMPLATE_EMPTY = 'Поле "' + TEXT_NAME_TEMPLATE + '" не должно быть пустым!';
  MSG_TEXT_EMPLOYEE_EMPTY = 'Поле "' + TEXT_NAME_EMPLOYEE + '" не должно быть пустым!';
  MSG_TEXT_SELECT_ROOT_TEMPLATE = 'Выберите корневой узел для добавление шаблонов';
  MSG_TEXT_SAVE_NODE_WARNING =
    'Для добавления шаблона к только что созданным узлам, необходимо сохранить предыдущие изменения';
  MSG_TEXT_INSERT_CARD =
    'Вы действительно хотите создть запись в медкарте пациента и перейти к заполнению';

  // COLUMN_HEADERS_CARD_LIST : array[1..3] of String = ('Дата/время','Фамилия И.О.','Врач');

procedure treeNodeRootContent(treeView: TAdvTreeView; initExam: String = '0');
// procedure treeNodeBuild(treeView: TAdvTreeView; id: String; joItems: TJSONArray;
// ANode: TAdvTreeViewNode; all: Boolean);
procedure treeNodeContent(treeView: TAdvTreeView; ANode: TAdvTreeViewNode;
  all: Boolean = false);

procedure patientCard(stringGrid: TAdvStringGrid; patientId: String);
procedure patientCardInsertSave(stringGrid: TAdvStringGrid;
  patientId, employee_id, init_exam: String);
procedure patientCardView(stringGrid: TAdvStringGrid; cardId, initExam: String);
procedure patientRefresh(stringGrid: TAdvStringGrid);
procedure employeeList(gridEmployee: TAdvStringGrid; comboEmployee, comboEmployeeId,
  comboEmployeeOrign: TComboBox);
procedure employeeModify(style: Boolean; AName: String; isEnable: Boolean; id: String);

implementation

uses uDataModule, uMain;

{ заполняет данными указанный корневой treeView
  treeView - TAdvTreeView для которого заполняется контент
  all = false - заполнять только автивные элементы
  all = true - заполнять все элементы }
procedure treeNodeRootContent(treeView: TAdvTreeView; initExam: String = '0');
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;

  Node: TAdvTreeViewNode;
begin
  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'tree';
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;

    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    treeView.BeginUpdate;
    treeView.ClearNodes;

    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;

      if (joItem.GetValue(JSON_IS_ENABLE).Value = '1') and
        (joItem.GetValue(JSON_IS_INIT_EXAM).Value = initExam) then
      begin
        Node := treeView.Nodes.Add;
        Node.Text[TREE_NODE_ROOT_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;
        Node.Text[TREE_NODE_ROOT_ID] := joItem.GetValue(JSON_ID).Value;
      end;

      { if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
        begin
        Node := treeView.Nodes.Add;
        Node.Text[TREE_NODE_ROOT_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;
        Node.Text[TREE_NODE_ROOT_ID] := joItem.GetValue(JSON_ID).Value;
        end; }
    end;
    treeView.EndUpdate;
  end;
  FreeAndNil(OriginalJSONObject);
end;

{ рекрусивная процедура "рисует" treeview из json по коду id }
procedure treeNodeBuild(treeView: TAdvTreeView; id: String; joItems: TJSONArray;
  ANode: TAdvTreeViewNode; all: Boolean);
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
      if (joItem.GetValue(JSON_IS_ENABLE).Value = '0') and (all = true) then
      begin
        CNode := treeView.AddNode(ANode);
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
        treeNodeBuild(treeView, joItem.GetValue(JSON_ID).ToString, joItems, CNode, all);
      end;

      if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
      begin
        CNode := treeView.AddNode(ANode);
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
        treeNodeBuild(treeView, joItem.GetValue(JSON_ID).ToString, joItems, CNode, all);
      end;
    end;
  end;

end;

{ заполняет дерево шаблонов относительно ID выбранного узла, использует
  рекрусивную процедуру treeNodeBuild }
procedure treeNodeContent(treeView: TAdvTreeView; ANode: TAdvTreeViewNode;
  all: Boolean = false);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;
  JSONString: String;
  status: Boolean;

  i: Integer;
begin
  treeView.BeginUpdate;
  treeView.ColumnsAppearance.StretchColumn := 0;
  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'tree/' + ANode.Text[TREE_NODE_ROOT_ID];
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  status := OriginalJSONObject.GetValue(JSON_STATUS) is TJSONTrue;
  if status = false then
  begin
    treeView.ClearNodes;

    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;
      if joItem.GetValue(JSON_ID).ToString = ANode.Text[TREE_NODE_ROOT_ID] then
        treeNodeBuild(treeView, joItem.GetValue(JSON_ID).ToString, joItems, nil, all);
    end;
  end;
  treeView.ExpandAll;
  treeView.EndUpdate;
  FreeAndNil(OriginalJSONObject);
end;

// -----------------------------------------------------------------------------
{ заполняем таблицу в зависимости от выбранного пациента }
procedure patientCard(stringGrid: TAdvStringGrid; patientId: String);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;
begin
  stringGrid.BeginUpdate;
  stringGrid.Clear;
  stringGrid.ColumnHeaders.Clear;
  for i := 0 to GRID_CARD_LIST_COLUMN_COUNT do
    stringGrid.ColumnHeaders.Add(GRID_CARD_LIST_COLUMN[i]);
  // stringGrid.ColumnHeader.cos.a;

  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'card/' + patientId;
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;

    fmMain.logger(LOG_GET, JSONString);

    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;

    if joItems.Count <> 0 then
    begin
      stringGrid.RowCount := joItems.Count + 1;
      for i := 0 to joItems.Count - 1 do
      begin
        joItem := joItems.Items[i] as TJSONObject;

        stringGrid.Cells[GRID_CARD_LIST_CREATED, i + 1] :=
          joItem.GetValue(JSON_CREATED).Value;

        stringGrid.Cells[GRID_CARD_LIST_UPDATED, i + 1] :=
          joItem.GetValue(JSON_UPDATED).Value;

        stringGrid.Cells[GRID_CARD_LIST_NAME, i + 1] := joItem.GetValue(JSON_NAME).Value;
        stringGrid.Cells[GRID_CARD_LIST_EMPLOYEE_NAME, i + 1] :=
          joItem.GetValue(JSON_EMNAME).Value;

        stringGrid.Cells[GRID_CARD_LIST_RECORD, i + 1] :=
          joItem.GetValue(JSON_RECORD).Value;

        stringGrid.Cells[GRID_CARD_LIST_NOTES, i + 1] :=
          joItem.GetValue(JSON_NOTES).Value;

        stringGrid.Cells[GRID_CARD_LIST_ID, i + 1] := joItem.GetValue(JSON_ID).Value;

        stringGrid.Cells[GRID_CARD_LIST_PATIENT_ID, i + 1] :=
          joItem.GetValue(JSON_PATIENT_ID).Value;

        stringGrid.Cells[GRID_CARD_LIST_INITEXAM, i + 1] :=
          joItem.GetValue(JSON_IS_INIT_EXAM).Value;
      end;
    end;
  end;
  if status = STATUS_NO_CONTENT then
  begin
    stringGrid.RowCount := 2;
  end;

  stringGrid.EndUpdate;
  FreeAndNil(OriginalJSONObject);
end;

procedure patientCardInsertSave(stringGrid: TAdvStringGrid;
  patientId, employee_id, init_exam: String);
var
  OriginalJSONObject: TJSONObject;
  // joItems: TJSONString;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  cardId: String;
  i: Integer;
begin
  with dmDataModule do
  begin
    RESTRequest1.Method := rmPOST;
    RESTRequest1.Resource := 'card';
    RESTRequest1.Params.Clear;

    RESTRequest1.Params.AddItem(JSON_PATIENT_ID, UTF8EncodeToShortString(patientId),
      pkGETorPOST, [poDoNotEncode]);
    // для обеспечения целосности данных присваеваем 1 запись "(нет)"
    RESTRequest1.Params.AddItem(JSON_EMPLOYEE_ID, UTF8EncodeToShortString(employee_id),
      pkGETorPOST, [poDoNotEncode]);
    RESTRequest1.Params.AddItem(JSON_IS_INIT_EXAM, UTF8EncodeToShortString(init_exam),
      pkGETorPOST, [poDoNotEncode]);

    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
    fmMain.logger(LOG_POST + ' card', JSONString);
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;

    status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
    if status = STATUS_OK then
    begin
      joItem := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONObject;
      cardId := joItem.GetValue(JSON_ID).Value;

      // joItem := joItems.GetValue(JSON_ID) as TJSONString;

      for i := 1 to stringGrid.RowCount - 1 do
      begin
        RESTRequest1.Method := rmPOST;
        RESTRequest1.Resource := 'cardtree';
        RESTRequest1.Params.Clear;

        RESTRequest1.Params.AddItem(JSON_CARD_ID, UTF8EncodeToShortString(cardId),
          pkGETorPOST, [poDoNotEncode]);

        RESTRequest1.Params.AddItem(JSON_TREE_ID,
          UTF8EncodeToShortString(stringGrid.Cells[GRID_CARD_TREE_ID, i]), pkGETorPOST,
          [poDoNotEncode]);

        RESTRequest1.Params.AddItem(JSON_TOOTH,
          UTF8EncodeToShortString(stringGrid.Cells[GRID_CARD_TOOTH, i]), pkGETorPOST,
          [poDoNotEncode]);

        RESTRequest1.Execute;

        JSONString := RESTResponse1.JSONValue.ToString;
        fmMain.logger(LOG_POST + ' cardtree', JSONString);
      end;

    end;
    FreeAndNil(OriginalJSONObject);
    // FreeAndNil(joItem);
  end;

end;

function treeContent(treeId, initExam: String): TArray<String>;
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;
begin
  SetLength(result, 2);
  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'tree-one/' + treeId;
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
  end;

  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    joItem := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONObject;
    // joItem := joItems.Items[0] as TJSONObject;
    result[0] := joItem.GetValue(JSON_CONTENT).Value;

    if initExam = '1' then
      result[1] := joItem.GetValue(JSON_SUBROOT).Value
    else
      result[1] := joItem.GetValue(JSON_ROOT).Value
  end;
  FreeAndNil(OriginalJSONObject);
end;

procedure patientCardView(stringGrid: TAdvStringGrid; cardId, initExam: String);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;
begin
  stringGrid.Clear;
  stringGrid.RowCount := 2;

  with dmDataModule do
  begin

    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'cardtree/' + cardId;
    RESTRequest1.Params.Clear;

    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;

    fmMain.logger(LOG_GET + 'cardtree/' + cardId, JSONString);

    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
    if status = STATUS_OK then
    begin

      joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
      stringGrid.RowCount := joItems.Count + 1;

      for i := 0 to joItems.Count - 1 do
      begin
        joItem := joItems.Items[i] as TJSONObject;

        stringGrid.Cells[GRID_CARD_ROOTNODE, i + 1] :=
          treeContent(joItem.GetValue(JSON_TREE_ID).Value, initExam)[1];
        stringGrid.Cells[GRID_CARD_CONTENT, i + 1] :=
          treeContent(joItem.GetValue(JSON_TREE_ID).Value, initExam)[0];
        stringGrid.Cells[GRID_CARD_TOOTH, i + 1] := joItem.GetValue(JSON_TOOTH).Value;
        { gridCard.Cells[GRID_CARD_ROOTNODE, gridCard.RowCount - 1] :=
          treeNodeRootCard.SelectedNode.text[TREE_NODE_ROOT_CONTENT];

          gridCard.Cells[GRID_CARD_TOOTH, gridCard.RowCount - 1] := sTooths;

          gridCard.Cells[GRID_CARD_CONTENT, gridCard.RowCount - 1] :=
          ANode.Node.text[TREE_NODE_ROOT_CONTENT];

          gridCard.Cells[GRID_CARD_TREE_ID, gridCard.RowCount - 1] :=
          ANode.Node.text[TREE_NODE_ID]; }
      end;

    end;
    FreeAndNil(OriginalJSONObject);
    // FreeAndNil(joItem);
  end;

end;

procedure patientRefresh(stringGrid: TAdvStringGrid);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;
begin
  stringGrid.BeginUpdate;
  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'patient';
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
    if joItems.Count <> 0 then
    begin
      stringGrid.RowCount := joItems.Count + 1;
      for i := 0 to joItems.Count - 1 do
      begin
        joItem := joItems.Items[i] as TJSONObject;
        stringGrid.Cells[GRID_PATIENT_FNAME, i + 1] := joItem.GetValue(JSON_FNAME).Value;
        stringGrid.Cells[GRID_PATIENT_NAME, i + 1] := joItem.GetValue(JSON_NAME).Value;
        stringGrid.Cells[GRID_PATIENT_LNAME, i + 1] := joItem.GetValue(JSON_LNAME).Value;
        stringGrid.Cells[GRID_PATIENT_BIRTHDAY, i + 1] :=
          joItem.GetValue(JSON_BIRTHDAY).Value;
        if joItem.GetValue(JSON_SEX).Value = '1' then
          stringGrid.Cells[GRID_PATIENT_SEX, i + 1] := TEXT_MEN
        else
          stringGrid.Cells[GRID_PATIENT_SEX, i + 1] := TEXT_WOMEN;
        stringGrid.Cells[GRID_PATIENT_PROFF, i + 1] := joItem.GetValue(JSON_PROFF).Value;
        stringGrid.Cells[GRID_PATIENT_ADDRESS1, i + 1] :=
          joItem.GetValue(JSON_ADDRESS1).Value;
        stringGrid.Cells[GRID_PATIENT_ADDRESS2, i + 1] :=
          joItem.GetValue(JSON_ADDRESS2).Value;
        stringGrid.Cells[GRID_PATIENT_ADDRESS3, i + 1] :=
          joItem.GetValue(JSON_ADDRESS3).Value;
        stringGrid.Cells[GRID_PATIENT_PHONE1, i + 1] :=
          joItem.GetValue(JSON_PHONE1).Value;
        stringGrid.Cells[GRID_PATIENT_PHONE2, i + 1] :=
          joItem.GetValue(JSON_PHONE2).Value;
        stringGrid.Cells[GRID_PATIENT_NOTES, i + 1] := joItem.GetValue(JSON_NOTES).Value;
        stringGrid.Cells[GRID_PATIENT_CREATED, i + 1] :=
          joItem.GetValue(JSON_CREATED).Value;
        // скрытый столбей, содержжит id
        stringGrid.Cells[GRID_PATIENT_ID, i + 1] := joItem.GetValue(JSON_ID).Value;
      end;
    end;
  end;
  FreeAndNil(OriginalJSONObject);
  stringGrid.EndUpdate;
end;

procedure employeeList(gridEmployee: TAdvStringGrid; comboEmployee, comboEmployeeId,
  comboEmployeeOrign: TComboBox);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;
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
  gridEmployee.Clear;
  comboEmployee.Clear;
  comboEmployeeOrign.Clear;
  comboEmployeeId.Clear;

  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
    gridEmployee.RowCount := joItems.Count + 1;

    for i := 0 to joItems.Count - 1 do
    begin

      joItem := joItems.Items[i] as TJSONObject;

      gridEmployee.Cells[GRID_EMPLOYEE_NAME, i + 1] := joItem.GetValue(JSON_NAME).Value;

      if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
        gridEmployee.Cells[GRID_EMPLOYEE_ENABLE, i + 1] := TEXT_ACTIVE
      else
        gridEmployee.Cells[GRID_EMPLOYEE_ENABLE, i + 1] := TEXT_INACTIVE;

      gridEmployee.Cells[GRID_EMPLOYEE_CREATED, i + 1] :=
        joItem.GetValue(JSON_CREATED).Value;
      // скрытый столбей, содержжит id
      gridEmployee.Cells[GRID_EMPLOYEE_ID, i + 1] := joItem.GetValue(JSON_ID).Value;

      if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
      begin
        comboEmployee.Items.Add(joItem.GetValue(JSON_NAME).Value);
        comboEmployeeOrign.Items.Add(joItem.GetValue(JSON_NAME).Value);
        comboEmployeeId.Items.Add(joItem.GetValue(JSON_ID).Value);
      end;

      // if joItem.GetValue(JSON_ID).Value = '1' then
      // comboEmployee.Items.Add(joItem.GetValue(JSON_NAME).Value);
    end;
    comboEmployee.ItemIndex := 0;
    comboEmployeeOrign.ItemIndex := 0;
    comboEmployeeId.ItemIndex := 0;
  end;

  if status = STATUS_NO_CONTENT then
  begin
    gridEmployee.RowCount := 2;
  end;

  FreeAndNil(OriginalJSONObject);
end;

// style
// true добавить запись
// false изменить запись
procedure employeeModify(style: Boolean; AName: String; isEnable: Boolean; id: String);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;
begin
  if style = true then
    with dmDataModule do
    begin
      RESTRequest1.Method := rmPOST;
      RESTRequest1.Resource := 'employee';
      RESTRequest1.Params.Clear;

      RESTRequest1.Params.AddItem(JSON_NAME, UTF8EncodeToShortString(Trim(AName)),
        pkGETorPOST, [poDoNotEncode]);

      if isEnable = true then
        RESTRequest1.Params.AddItem(JSON_IS_ENABLE, UTF8EncodeToShortString('1'),
          pkGETorPOST, [poDoNotEncode])
      else
        RESTRequest1.Params.AddItem(JSON_IS_ENABLE, UTF8EncodeToShortString('0'),
          pkGETorPOST, [poDoNotEncode]);

      RESTRequest1.Execute;
      JSONString := RESTResponse1.JSONValue.ToString;
      // OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    end
  else
    with dmDataModule do
    begin
      RESTRequest1.Method := rmPUT;
      RESTRequest1.Resource := 'employee/' + id;
      RESTRequest1.Params.Clear;

      RESTRequest1.Params.AddItem(JSON_NAME, UTF8EncodeToShortString(Trim(AName)),
        pkGETorPOST, [poDoNotEncode]);

      if isEnable = true then
        RESTRequest1.Params.AddItem(JSON_IS_ENABLE, UTF8EncodeToShortString('1'),
          pkGETorPOST, [poDoNotEncode])
      else
        RESTRequest1.Params.AddItem(JSON_IS_ENABLE, UTF8EncodeToShortString('0'),
          pkGETorPOST, [poDoNotEncode]);

      RESTRequest1.Execute;
      JSONString := RESTResponse1.JSONValue.ToString;
      // OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    end
end;

end.
