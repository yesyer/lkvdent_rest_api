unit uContent;

interface

uses
  System.SysUtils,
  System.JSON,
  REST.Types,
  AdvTreeView,
  AdvTreeViewData,
  AdvGrid;

const
  STATUS_OK = '200';
  STATUS_NO_CONTENT = '204';

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

  GRID_CARD_LIST_ID = 5;
  GRID_CARD_LIST_PATIENT_ID = 6;
  GRID_CARD_LIST_NAME = 2;
  GRID_CARD_LIST_NOTES = 4;
  GRID_CARD_LIST_EMPLOYEE_NAME = 3;
  GRID_CARD_LIST_CREATED = 1;

  GRID_CARD_ID = 4;
  GRID_CARD_CARD_ID = 5;
  GRID_CARD_TREE_ID = 6;
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

  JSON_PATIENT_ID = 'patient_id';
  JSON_EMNAME = 'em_name';

  MSG_TEXT_TEMPLATE_EMPTY = 'Поле "' + TEXT_NAME_TEMPLATE + '" не должно быть пустым!';
  MSG_TEXT_EMPLOYEE_EMPTY = 'Поле "' + TEXT_NAME_EMPLOYEE + '" не должно быть пустым!';
  MSG_TEXT_SELECT_ROOT_TEMPLATE = 'Выберите корневой узел для добавление шаблонов';
  MSG_TEXT_SAVE_NODE_WARNING =
    'Для добавления шаблона к только что созданным узлам, необходимо сохранить предыдущие изменения';

procedure treeNodeRootContent(treeView: TAdvTreeView; all: Boolean = false);
//procedure treeNodeBuild(treeView: TAdvTreeView; id: String; joItems: TJSONArray;
//  ANode: TAdvTreeViewNode; all: Boolean);
procedure treeNodeContent(treeView: TAdvTreeView; ANode: TAdvTreeViewNode;
  all: Boolean = false);

procedure patientCard(stringGrid: TAdvStringGrid; patient_id: String);
procedure patientRefresh(stringGrid: TAdvStringGrid);

implementation

uses uDataModule, uMain;

{ заполняет данными указанный корневой treeView
  treeView - TAdvTreeView для которого заполняется контент
  all = false - заполнять только автивные элементы
  all = true - заполнять все элементы }
procedure treeNodeRootContent(treeView: TAdvTreeView; all: Boolean = false);
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

      if (joItem.GetValue(JSON_IS_ENABLE).Value = '0') and (all = true) then
      begin
        Node := treeView.Nodes.Add;
        Node.Text[TREE_NODE_ROOT_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;
        Node.Text[TREE_NODE_ROOT_ID] := joItem.GetValue(JSON_ID).Value;
      end;

      if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
      begin
        Node := treeView.Nodes.Add;
        Node.Text[TREE_NODE_ROOT_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;
        Node.Text[TREE_NODE_ROOT_ID] := joItem.GetValue(JSON_ID).Value;
      end;
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

procedure patientCard(stringGrid: TAdvStringGrid; patient_id: String);
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

  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'card/' + patient_id;
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
        stringGrid.Cells[GRID_CARD_LIST_NAME, i + 1] := joItem.GetValue(JSON_NAME).Value;
        stringGrid.Cells[GRID_CARD_LIST_NOTES, i + 1] := joItem.GetValue(JSON_NOTES).Value;
        stringGrid.Cells[GRID_CARD_LIST_EMPLOYEE_NAME, i + 1] :=
          joItem.GetValue(JSON_EMNAME).Value;
        stringGrid.Cells[GRID_CARD_LIST_CREATED, i + 1] := joItem.GetValue(JSON_CREATED).Value;
        stringGrid.Cells[GRID_CARD_LIST_ID, i + 1] := joItem.GetValue(JSON_ID).Value;
        stringGrid.Cells[GRID_CARD_LIST_PATIENT_ID, i + 1] :=
          joItem.GetValue(JSON_PATIENT_ID).Value;
      end;
    end;
  end;
  if status = STATUS_NO_CONTENT then
  begin
    stringGrid.RowCount:=2;
  end;

  stringGrid.EndUpdate;
  FreeAndNil(OriginalJSONObject);
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

end.
