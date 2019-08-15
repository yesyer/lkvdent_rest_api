unit uContent;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,
  syncobjs,
  Vcl.StdCtrls,
  Vcl.Forms,
  REST.Types,
  REST.Client,
  AdvTreeView,
  AdvTreeViewData,
  AdvGrid,
  AdvGlassButton;

const
  // оставил в виде константы максимальное количество корневых узлов при
  // первичном осмотре
  MAX_ROOT_NODE_INIT_EXAM = 1;
  // максимальнок количество символов в поле tb_tree.content
  MAX_LENGHT_TREE_CONTENT = 1000;
  MAX_LENGHT_EMPLOYEE_NAME = 40;

  SQL_INSERT_CARD = 'INSERT INTO local_Card (id, name, created) VALUES';
  SQL_INSERT_CARD_DETAILS =
    'INSERT INTO local_CardDetails (id, card_id, tooth, content, root) VALUES';
  SQL_INSERT_CARD_TITLE =
    'INSERT INTO local_CardTitle (id, content, subroot_id, subroot) VALUES';
  SQL_INSERT_TREE =
    'INSERT INTO local_Tree (id, update_id, parent_id, content, is_init_exam, is_enable, metod) VALUES';

  SQL_MEDOT_POST = 'POST';
  SQL_MEDOT_PUT = 'PUT';

  SQL_SELECT_TREE_WHERE = 'SELECT * FROM local_Tree WHERE metod LIKE ';

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
  // TREE_NODE_INIT_EXAM = 1;
  TREE_NODE_ENABLE = 2;

  TREE_NODE_NEW_PARENT_ID = 5;
  TREE_NODE_MODIFY_ID = 6;

  TEXT_ACTIVE = 'Активный';
  TEXT_INACTIVE = 'Не активный';
  // TEXT_YES = 'Да';
  // TEXT_NOT = 'Нет';
  TEXT_MEN = 'Муж.';
  TEXT_WOMEN = 'Жен.';
  TEXT_NAME_TEMPLATE = 'Текст шаблона';
  TEXT_NAME_EMPLOYEE = 'Введите Фамилия И.О.';

  JSON_STATUS = 'status';
  JSON_SUB_RESPONSE1 = 'sub-response1';
  JSON_SUB_RESPONSE2 = 'sub-response2';
  JSON_RESPONSE = 'response';

  JSON_ID = 'id';
  JSON_PARENT_ID = 'parent_id';
  JSON_CONTENT = 'content';
  JSON_IS_INIT_EXAM = 'is_init_exam';
  JSON_IS_ENABLE = 'is_enable';
  JSON_ROOT = 'root';
  JSON_SUBROOT_ID = 'subroot_id';
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

  TITLE_D = '7';
  TITLE_Z = '8';
  TITLE_P = '9';
  TITLE_R = '10';

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
  patientId, employeeId, initExam: String);
procedure patientCardModifySave(stringGrid: TAdvStringGrid; employeeId: String;
  updateCardId: String);

procedure patientCardView(stringGrid: TAdvStringGrid; cardId, initExam: String);
procedure patientRefresh(stringGrid: TAdvStringGrid);

procedure employeeList(gridEmployee: TAdvStringGrid; comboEmployee, comboEmployeeId,
  comboEmployeeOrign: TComboBox);
procedure employeeModify(style: Boolean; AName: String; isEnable: Boolean; id: String);

{ procedure fieldsPatientTitle(patientId: String; var arrayDiagnosis, arrayZhaloby,
  arrayPISZ, arrayRNZ: TStrings); }
procedure fieldsPatientReport(patientId: String);

procedure treeNodeSave(PNode: TAdvTreeViewNode);

{ var
  FCS: TCriticalSection; }

implementation

uses uDataModule, uMain, uTRESTRequest;

// var
// arrayDiagnosis :TStrings;

function RESTRequest(AMethod: TRESTRequestMethod; AResource: String;
  AParams: TRESTRequestParameterList = nil): String;
var
  executeThread: TRESTExecutionThread;
  thread: TThread;
  s: String;
begin
  with dmDataModule do
  begin
    RESTRequest1.ClearBody;
    RESTRequest1.Params.Clear;

    RESTRequest1.Method := AMethod;
    RESTRequest1.Resource := AResource;

    // RESTClient1.
    if AParams <> nil then
      RESTRequest1.Params := AParams;

    fmMain.plLoading.Visible := true;

    fmMain.logger(AMethod, AResource, RESTClient1.BaseURL);
    // RESTRequest1.Execute;
    thread := TRESTRequest.Create(true);
    thread.FreeOnTerminate := false;
    thread.Start;
    // RESTRequest1.Execute;
    while thread.Finished <> true do
    begin
      sleep(10);
      Application.ProcessMessages;
    end;

    thread.Free;
    fmMain.plLoading.Visible := false;
    s := '';
    // executeThread.Free;
    if (RESTResponse1.StatusCode <> 200) then
    begin
      fmMain.logger(AMethod, AResource, Format('Ошибка сервера %d "%s"',
        [RESTResponse1.StatusCode, RESTResponse1.StatusText]));
      raise Exception.CreateFmt('Ошибка сервера %d "%s"',
        [RESTResponse1.StatusCode, RESTResponse1.StatusText]);
    end;

    s := RESTResponse1.JSONValue.ToString;
    fmMain.logger(AMethod, AResource, s);
    s := '';
    Result := RESTResponse1.JSONValue.ToString;
  end;
end;

procedure fieldsPatientReport(patientId: String);
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
    if LocalDB.Connected = false then
      LocalDB.Connected := true;

    localCard.Close;
    localCardDetails.Close;
    localCardTitle.Close;

    localDropTableCard.ExecSQL;
    localCreateTableCard.ExecSQL;

    JSONString := RESTRequest(rmGET, 'report/' + patientId);
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
    fmMain.Memo1.Lines.Clear;
    status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
    if status = STATUS_OK then
    begin

      joItems := OriginalJSONObject.GetValue(JSON_SUB_RESPONSE1) as TJSONArray;
      localExecSQL.SQL.Clear;
      localExecSQL.SQL.Add(SQL_INSERT_CARD_TITLE);
      for i := 0 to joItems.Count - 1 do
      begin
        joItem := joItems.Items[i] as TJSONObject;
        if i = joItems.Count - 1 then
          localExecSQL.SQL.Add('(' + joItem.GetValue(JSON_ID).Value + ', ''' +
            joItem.GetValue(JSON_CONTENT).Value + ''', ''' +
            joItem.GetValue(JSON_SUBROOT_ID).Value + ''', ''' +
            joItem.GetValue(JSON_SUBROOT).Value + ''');')
        else
          localExecSQL.SQL.Add('(' + joItem.GetValue(JSON_ID).Value + ', ''' +
            joItem.GetValue(JSON_CONTENT).Value + ''', ''' +
            joItem.GetValue(JSON_SUBROOT_ID).Value + ''', ''' +
            joItem.GetValue(JSON_SUBROOT).Value + '''),')
      end;
      localExecSQL.ExecSQL;
      fmMain.Memo1.Lines := localExecSQL.SQL;

      joItems := OriginalJSONObject.GetValue(JSON_SUB_RESPONSE2) as TJSONArray;
      localExecSQL.SQL.Clear;
      if joItems.Count > 0 then
      begin
        localExecSQL.SQL.Add(SQL_INSERT_CARD);
        for i := 0 to joItems.Count - 1 do
        begin
          joItem := joItems.Items[i] as TJSONObject;
          if i = joItems.Count - 1 then
            localExecSQL.SQL.Add('(' + joItem.GetValue(JSON_ID).Value + ', ''' +
              joItem.GetValue(JSON_NAME).Value + ''', ''' + joItem.GetValue(JSON_CREATED)
              .Value + ''');')
          else
            localExecSQL.SQL.Add('(' + joItem.GetValue(JSON_ID).Value + ', ''' +
              joItem.GetValue(JSON_NAME).Value + ''', ''' + joItem.GetValue(JSON_CREATED)
              .Value + '''),');
        end;
        localExecSQL.ExecSQL;
        fmMain.Memo1.Lines.Add('');
        fmMain.Memo1.Lines.AddStrings(localExecSQL.SQL);
      end;

      joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
      localExecSQL.SQL.Clear;
      if joItems.Count > 0 then
      begin
        localExecSQL.SQL.Add(SQL_INSERT_CARD_DETAILS);
        for i := 0 to joItems.Count - 1 do
        begin
          joItem := joItems.Items[i] as TJSONObject;
          if i = joItems.Count - 1 then
            localExecSQL.SQL.Add('(' + IntToStr(i + 1) + ', ' +
              joItem.GetValue(JSON_CARD_ID).Value + ', ''' + joItem.GetValue(JSON_TOOTH)
              .Value + ''', ''' + joItem.GetValue(JSON_CONTENT).Value + ''', ''' +
              joItem.GetValue(JSON_ROOT).Value + ''');')
          else
            localExecSQL.SQL.Add('(' + IntToStr(i + 1) + ', ' +
              joItem.GetValue(JSON_CARD_ID).Value + ', ''' + joItem.GetValue(JSON_TOOTH)
              .Value + ''', ''' + joItem.GetValue(JSON_CONTENT).Value + ''', ''' +
              joItem.GetValue(JSON_ROOT).Value + '''),')
        end;
        localExecSQL.ExecSQL;
        fmMain.Memo1.Lines.Add('');
        fmMain.Memo1.Lines.AddStrings(localExecSQL.SQL);
      end;

      localCard.Open;
      localCardDetails.Open;
      localCardTitle.Open;
    end;
  end; //
  FreeAndNil(OriginalJSONObject);
end;

procedure fieldsPatientTitle(patientId: String; var arrayDiagnosis, arrayZhaloby,
  arrayPISZ, arrayRNZ: TStrings);
var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;
  JSONString: String;
  status: String;

  i: Integer;
begin
  arrayDiagnosis.Clear;
  arrayZhaloby.Clear;
  arrayPISZ.Clear;
  arrayRNZ.Clear;

  with dmDataModule do
  begin
    RESTRequest1.Method := rmGET;
    RESTRequest1.Resource := 'report-title/' + patientId; // report-title
    RESTRequest1.Params.Clear;
    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
    OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  end;

  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;

    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;

      if joItem.GetValue(JSON_SUBROOT_ID).Value = TITLE_D then
        arrayDiagnosis.Add(joItem.GetValue(JSON_CONTENT).Value);

      if joItem.GetValue(JSON_SUBROOT_ID).Value = TITLE_Z then
        arrayZhaloby.Add(joItem.GetValue(JSON_CONTENT).Value);

      if joItem.GetValue(JSON_SUBROOT_ID).Value = TITLE_P then
        arrayPISZ.Add(joItem.GetValue(JSON_CONTENT).Value);

      if joItem.GetValue(JSON_SUBROOT_ID).Value = TITLE_R then
        arrayRNZ.Add(joItem.GetValue(JSON_CONTENT).Value);
    end;
  end;
  FreeAndNil(OriginalJSONObject);
end;

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
  JSONString := RESTRequest(rmGET, 'tree');
  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;

  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    treeView.BeginUpdate;
    treeView.ClearNodes;

    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;

      // initExam = '2' - вызывем из меню справочники
      if initExam = '2' then
      begin
        if joItem.GetValue(JSON_IS_ENABLE).Value = '1' then
        begin
          Node := treeView.Nodes.Add;
          Node.Text[TREE_NODE_ROOT_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;
          Node.Text[TREE_NODE_ROOT_ID] := joItem.GetValue(JSON_ID).Value;
        end
      end
      else if (joItem.GetValue(JSON_IS_ENABLE).Value = '1') and
        (joItem.GetValue(JSON_IS_INIT_EXAM).Value = initExam) then
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
    if joItem.GetValue(JSON_PARENT_ID).Value = id then
    begin
      if (joItem.GetValue(JSON_IS_ENABLE).Value = '0') and (all = true) then
      begin
        CNode := treeView.AddNode(ANode);
        CNode.Text[TREE_NODE_CONTENT] := joItem.GetValue(JSON_CONTENT).Value;

        { if joItem.GetValue(JSON_IS_INIT_EXAM).Value = '1' then
          CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_YES
          else
          CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_NOT; }

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

        { if joItem.GetValue(JSON_IS_INIT_EXAM).Value = '1' then
          CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_YES
          else
          CNode.Text[TREE_NODE_INIT_EXAM] := TEXT_NOT; }

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
  status: String;

  i: Integer;
begin
  treeView.BeginUpdate;
  treeView.ColumnsAppearance.StretchColumn := 0;

  JSONString := RESTRequest(rmGET, 'tree/' + ANode.Text[TREE_NODE_ROOT_ID]);
  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;

  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
    treeView.ClearNodes;

    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;
      if joItem.GetValue(JSON_ID).Value = ANode.Text[TREE_NODE_ROOT_ID] then
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

  JSONString := RESTRequest(rmGET, 'card/' + patientId);
  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;

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
  patientId, employeeId, initExam: String);
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
    RESTRequest1.Params.AddItem(JSON_EMPLOYEE_ID, UTF8EncodeToShortString(employeeId),
      pkGETorPOST, [poDoNotEncode]);
    RESTRequest1.Params.AddItem(JSON_IS_INIT_EXAM, UTF8EncodeToShortString(initExam),
      pkGETorPOST, [poDoNotEncode]);

    RESTRequest1.Execute;
    JSONString := RESTResponse1.JSONValue.ToString;
    // fmMain.logger(LOG_POST + ' card', JSONString);
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
        // fmMain.logger(LOG_POST + ' cardtree', JSONString);
      end;

    end;
    FreeAndNil(OriginalJSONObject);
    // FreeAndNil(joItem);
  end;
end;

procedure patientCardModifySave(stringGrid: TAdvStringGrid; employeeId: String;
  updateCardId: String);
var
  OriginalJSONObject: TJSONObject;
  // joItem: TJSONObject;

  JSONString: String;
  status: String;
  init: Boolean;
  i: Integer;
begin
  init := false;
  with dmDataModule do
  begin
    if employeeId <> '' then
    begin
      RESTRequest1.Method := rmPUT;
      RESTRequest1.Resource := 'card/' + updateCardId;
      RESTRequest1.Params.Clear;

      RESTRequest1.Params.AddItem(JSON_EMPLOYEE_ID, UTF8EncodeToShortString(employeeId),
        pkGETorPOST, [poDoNotEncode]);

      RESTRequest1.Execute;
      JSONString := RESTResponse1.JSONValue.ToString;
      OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
      init := true;

      status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
      if status = STATUS_OK then
      begin
        // все хорошо
      end;
    end;

    for i := 0 to ACardTreeDelete.Count - 1 do
    begin
      RESTRequest1.Method := rmDELETE;
      RESTRequest1.Resource := 'cardtree/' + ACardTreeDelete[i];
      RESTRequest1.Params.Clear;

      RESTRequest1.Execute;
      // JSONString := RESTResponse1.JSONValue.ToString;
      // OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
      // status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
      // if status = STATUS_OK then
      // все хорошо
    end;

    for i := 1 to stringGrid.RowCount - 1 do
    begin
      if stringGrid.Cells[GRID_CARD_ID, i] = '' then
      begin
        RESTRequest1.Method := rmPOST;
        RESTRequest1.Resource := 'cardtree';
        RESTRequest1.Params.Clear;

        RESTRequest1.Params.AddItem(JSON_CARD_ID, UTF8EncodeToShortString(updateCardId),
          pkGETorPOST, [poDoNotEncode]);

        RESTRequest1.Params.AddItem(JSON_TREE_ID,
          UTF8EncodeToShortString(stringGrid.Cells[GRID_CARD_TREE_ID, i]), pkGETorPOST,
          [poDoNotEncode]);

        RESTRequest1.Params.AddItem(JSON_TOOTH,
          UTF8EncodeToShortString(stringGrid.Cells[GRID_CARD_TOOTH, i]), pkGETorPOST,
          [poDoNotEncode]);

        RESTRequest1.Execute;

        JSONString := RESTResponse1.JSONValue.ToString;
        OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
        init := true;

        status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
        if status = STATUS_OK then
          // все хорошо
      end;

      // JSONString := RESTResponse1.JSONValue.ToString;
      // fmMain.logger(LOG_POST + ' cardtree', JSONString);
    end;

    if init = true then
      FreeAndNil(OriginalJSONObject);
    // FreeAndNil(joItem);
  end;

end;

{ procedure treeContent(treeId, initExam: String; var content, root: String);
  var
  OriginalJSONObject: TJSONObject;
  joItems: TJSONArray;
  joItem: TJSONObject;

  JSONString: String;
  status: String;
  i: Integer;
  begin
  // SetLength(result, 2);
  with dmDataModule do
  begin
  RESTRequest1.Method := rmGET;
  RESTRequest1.Resource := 'tree-one/' + treeId;
  RESTRequest1.Params.Clear;
  RESTRequest1.Execute;
  JSONString := RESTResponse1.JSONValue.ToString;

  end;
  JSONString := RESTRequest(rmGET,)
  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin
  joItem := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONObject;
  // joItem := joItems.Items[0] as TJSONObject;
  content := joItem.GetValue(JSON_CONTENT).Value;

  if initExam = '1' then
  root := joItem.GetValue(JSON_SUBROOT).Value
  else
  root := joItem.GetValue(JSON_ROOT).Value
  end;
  FreeAndNil(OriginalJSONObject);
  end; }

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

  JSONString := RESTRequest(rmGET, 'cardtree/' + cardId);

  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  status := OriginalJSONObject.GetValue(JSON_STATUS).Value;
  if status = STATUS_OK then
  begin

    joItems := OriginalJSONObject.GetValue(JSON_RESPONSE) as TJSONArray;
    stringGrid.RowCount := joItems.Count + 1;

    for i := 0 to joItems.Count - 1 do
    begin
      joItem := joItems.Items[i] as TJSONObject;

      if initExam = '1' then
        stringGrid.Cells[GRID_CARD_ROOTNODE, i + 1] := joItem.GetValue(JSON_SUBROOT).Value
      else
        stringGrid.Cells[GRID_CARD_ROOTNODE, i + 1] := joItem.GetValue(JSON_ROOT).Value;

      stringGrid.Cells[GRID_CARD_CONTENT, i + 1] := joItem.GetValue(JSON_CONTENT).Value;
      if joItem.GetValue(JSON_TOOTH).Value <> '' then
      begin
        stringGrid.Cells[GRID_CARD_TOOTH, i + 1] := joItem.GetValue(JSON_TOOTH).Value;
        fmMain.aaaToothButtonCheck(joItem.GetValue(JSON_TOOTH).Value);
      end;

      // stringGrid.Cells[GRID_CARD_CARD_ID, i + 1] := joItem.GetValue(JSON_CARD_ID).Value;
      stringGrid.Cells[GRID_CARD_TREE_ID, i + 1] := joItem.GetValue(JSON_TREE_ID).Value;
      stringGrid.Cells[GRID_CARD_ID, i + 1] := joItem.GetValue(JSON_ID).Value;
    end;

  end;
  FreeAndNil(OriginalJSONObject);
  // FreeAndNil(joItem);

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
  JSONString := RESTRequest(rmGET, 'patient');
  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;

  stringGrid.BeginUpdate;
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
  JSONString := RESTRequest(rmGET, 'employee');
  OriginalJSONObject := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;

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
  // OriginalJSONObject: TJSONObject;
  // joItems: TJSONArray;
  // joItem: TJSONObject;

  JSONString: String;
  // status: String;
  // i: Integer;
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

{ рекрусивная процедура проходится по нашим шаблоном и ищем измененные и добавленные
  узлы, храним их в локальной бд }
procedure treeSearchModifyNode(ANode: TAdvTreeViewNode);
begin
  while ANode <> nil do
    with dmDataModule do
    begin
      if ANode.Text[TREE_NODE_NEW_PARENT_ID] <> '' then
      begin
        localExecSQL.SQL.Clear;
        localExecSQL.SQL.Add(SQL_INSERT_TREE);
        if ANode.Text[TREE_NODE_ENABLE] = TEXT_ACTIVE then
          localExecSQL.SQL.Add(Format('(null, null, %s, "%s", 0, 1, "%s");',
            [ANode.Text[TREE_NODE_NEW_PARENT_ID], ANode.Text[TREE_NODE_CONTENT],
            SQL_MEDOT_POST]))
        else
          localExecSQL.SQL.Add(Format('(null, null, %s, "%s", 0, 0, "%s");',
            [ANode.Text[TREE_NODE_NEW_PARENT_ID], ANode.Text[TREE_NODE_CONTENT],
            SQL_MEDOT_POST]));
        // fmMain.Caption:= localExecSQL.SQL.Text;
        localExecSQL.ExecSQL;
        ANode.Text[TREE_NODE_NEW_PARENT_ID] := '';
      end;
      // собираем данные обновленных узлов
      if ANode.Text[TREE_NODE_MODIFY_ID] <> '' then
      begin
        localExecSQL.SQL.Clear;
        localExecSQL.SQL.Add(SQL_INSERT_TREE);
        if ANode.Text[TREE_NODE_ENABLE] = TEXT_ACTIVE then
          localExecSQL.SQL.Add(Format('(null, %s, null, "%s", 0, 1, "%s");',
            [ANode.Text[TREE_NODE_MODIFY_ID], ANode.Text[TREE_NODE_CONTENT],
            SQL_MEDOT_PUT]))
        else
          localExecSQL.SQL.Add(Format('(null, %s, null, "%s", 0, 0, "%s");',
            [ANode.Text[TREE_NODE_MODIFY_ID], ANode.Text[TREE_NODE_CONTENT],
            SQL_MEDOT_PUT]));

        localExecSQL.ExecSQL;
        ANode.Text[TREE_NODE_MODIFY_ID] := '';
      end;

      if ANode.GetChildCount > 0 then
        treeSearchModifyNode(ANode.GetFirstChild);

      // if ANode. then

      ANode := ANode.GetNext;
    end;

end;

procedure treeNodeSave(PNode: TAdvTreeViewNode);
var
  i, Count: Integer;
  // RequestParams: TRESTRequestParameterList;

  JSONString, s: String;

  // UnicodeStr: UnicodeString;
  // UTF8Str: RawByteString;

  UTF8Str: AnsiString;
  UnicodeStr: WideString;
  TempString: RawByteString;
  ResultString: WideString;
begin
  with dmDataModule do
  begin
    if LocalDB.Connected = false then
      LocalDB.Connected := true;

    localTree.Close;
    localDropTableTree.ExecSQL;
    localCreateTableTree.ExecSQL;
    // собираем данные добавленных/измененных узлов
    treeSearchModifyNode(PNode);

    localTree.SQL.Clear;
    localTree.SQL.Add(SQL_SELECT_TREE_WHERE + '''' + SQL_MEDOT_POST + '''');
    localTree.Open;

    // возможна ошибка
    localTree.Last;
    Count := localTree.RecordCount;
    localTree.First;
    // RequestParams := TRESTRequestParameterList.Create(fmMain);
    { for i := 0 to Count - 1 do
      begin

      RequestParams.Clear;
      s := IntToStr(localTreeparent_id.Value);
      RequestParams.AddItem(JSON_PARENT_ID, UTF8EncodeToShortString(s), pkGETorPOST,
      [poDoNotEncode]);
      s := localTreecontent.Value;
      RequestParams.AddItem(JSON_CONTENT, UTF8EncodeToShortString(s), pkGETorPOST,
      [poDoNotEncode]);
      s := IntToStr(localTreeis_enable.Value);
      RequestParams.AddItem(JSON_IS_ENABLE, UTF8EncodeToShortString(s), pkGETorPOST,
      [poDoNotEncode]);
      JSONString := RESTRequest(rmPOST, 'tree', RequestParams);
      localTree.Next;
      end; }
    for i := 0 to Count - 1 do
    begin
      RESTRequest2.Params.Clear;
      s := localTreecontent.Value;

      UnicodeStr := s;
      TempString := UTF8Encode(UnicodeStr);
      SetLength(UTF8Str, Length(TempString));
      Move(TempString[1], UTF8Str[1], Length(UTF8Str));
      ResultString := UTF8Str;

      RESTRequest2.Params.AddItem(JSON_PARENT_ID,
        UTF8EncodeToShortString(IntToStr(localTreeparent_id.Value)), pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest2.Params.AddItem(JSON_CONTENT, ResultString, pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest2.Params.AddItem(JSON_IS_ENABLE,
        UTF8EncodeToShortString(IntToStr(localTreeis_enable.Value)), pkGETorPOST,
        [poDoNotEncode]);
      JSONString := RESTRequest(rmPOST, 'tree', RESTRequest2.Params);
      localTree.Next;
    end;

    localTree.Close;
    localTree.SQL.Clear;
    localTree.SQL.Add(SQL_SELECT_TREE_WHERE + '''' + SQL_MEDOT_PUT + '''');
    localTree.Open;

    // возможна ошибка
    localTree.Last;
    Count := localTree.RecordCount;
    localTree.First;

    for i := 0 to Count - 1 do
    begin
      RESTRequest2.Params.Clear;
      s := localTreecontent.Value;

      UnicodeStr := s;
      TempString := UTF8Encode(UnicodeStr);
      SetLength(UTF8Str, Length(TempString));
      Move(TempString[1], UTF8Str[1], Length(UTF8Str));
      ResultString := UTF8Str;

      RESTRequest2.Params.AddItem(JSON_CONTENT, ResultString, pkGETorPOST,
        [poDoNotEncode]);
      RESTRequest2.Params.AddItem(JSON_IS_ENABLE,
        UTF8EncodeToShortString(IntToStr(localTreeis_enable.Value)), pkGETorPOST,
        [poDoNotEncode]);
      JSONString := RESTRequest(rmPUT, 'tree/' + IntToStr(localTreeupdate_id.Value),
        RESTRequest2.Params);
      localTree.Next;
    end;
  end;
end;

end.
