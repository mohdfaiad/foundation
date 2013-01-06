unit OrganizationManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxLookAndFeelPainters, DBClient, Provider, jvuib, DB, jvuibdataset, ImgList,
  ComCtrls, ToolWin, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  StdCtrls, cxButtons, ExtCtrls, cxGraphics, cxLookAndFeels, Menus;

{$I CRG_WM_MSG.INC}

type
  PCurrentOrgItem = ^TCurrentOrgItem;
  TCurrentOrgItem = record
    Parent_ID: Integer;
    OrgItem: TTreeNode;

    Prior: PCurrentOrgItem;
  end;

  TfrmOrganization = class(TForm)
    pnOrgItemList: TPanel;
    tvOrganization: TTreeView;
    Splitter1: TSplitter;
    pnOrgItemEditor: TPanel;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    imgButton: TImageList;
    tbBar: TToolBar;
    btnRefresh: TToolButton;
    btnAddHeader: TToolButton;
    ToolButton3: TToolButton;
    btnAddDetail: TToolButton;
    btnDelete: TToolButton;
    ToolButton11: TToolButton;
    imgOrgList: TImageList;
    dscOrgItem: TDataSource;
    pnEditor: TPanel;
    btnEdit: TcxButton;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    pnEditorData: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeNAME: TcxDBTextEdit;
    dbeTAX_ID: TcxDBTextEdit;
    dbeOFFICE_NO: TcxDBTextEdit;
    dbeAVENUE: TcxDBTextEdit;
    dbeROAD: TcxDBTextEdit;
    pnBottom: TPanel;
    lbRecord: TLabel;
    cxButton1: TcxButton;
    Label6: TLabel;
    Label7: TLabel;
    dbeDISTRICT: TcxDBTextEdit;
    dbeAMPHUR: TcxDBTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    dbePROVINCE: TcxDBTextEdit;
    dbePOST_CODE: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    dbeTEL_NO: TcxDBTextEdit;
    dbeFAX_NO: TcxDBTextEdit;
    dbeBUILDING: TcxDBTextEdit;
    dbeRECORD_ID: TcxDBTextEdit;
    Label13: TLabel;
    trnsDefault: TJvUIBTransaction;
    dsOrgData: TJvUIBDataSet;
    dsOrgDataRECORD_ID: TIntegerField;
    dsOrgDataPARENT_ID: TIntegerField;
    dsOrgDataNAME: TStringField;
    dsOrgItemX: TJvUIBDataSet;
    dsOrgUpdate: TJvUIBQuery;
    dspOrgItem: TDataSetProvider;
    cdsOrgItem: TClientDataSet;
    cdsOrgItemRECORD_ID: TIntegerField;
    cdsOrgItemPARENT_ID: TIntegerField;
    cdsOrgItemNAME: TStringField;
    cdsOrgItemTAX_ID: TStringField;
    cdsOrgItemOFFICE_NO: TStringField;
    cdsOrgItemBUILDING: TStringField;
    cdsOrgItemAVENUE: TStringField;
    cdsOrgItemROAD: TStringField;
    cdsOrgItemDISTRICT: TStringField;
    cdsOrgItemAMPHUR: TStringField;
    cdsOrgItemPROVINCE: TStringField;
    cdsOrgItemPOST_CODE: TStringField;
    cdsOrgItemTEL_NO: TStringField;
    cdsOrgItemFAX_NO: TStringField;
    lbHint: TLabel;
    cdsOrgItemHAS_ADDRESS: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnAddHeaderClick(Sender: TObject);
    procedure btnAddDetailClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbeNAMEKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tvOrganizationChange(Sender: TObject; Node: TTreeNode);
    procedure cxButton1Click(Sender: TObject);
    procedure cdsOrgItemAfterPost(DataSet: TDataSet);
  private
    FMenuLanguage: String;
    FCurrentOrgItem: PCurrentOrgItem;

    FIsAddItem: Boolean;

    function GetNode(const _Text: String): TTreeNode;
    procedure AddNewItem(const _ParentID: Integer = -1);

    procedure LanguageChaged(var Message: TMessage); message WM_LANGUAGE_CHANGED;
  public
    procedure UnloadOrganization();
    procedure LoadOrganization();
  end;

var
  frmOrganization: TfrmOrganization;

implementation

uses crgsec, fbconnection, crgextfunc, fshow, crglangmgr;

{$R *.dfm}

const
  _SQL_UPDATE_ORG_ =
    'EXECUTE PROCEDURE SP_INSERT_UPDATE_ORG (' +
    '  :RECORD_ID,' +
    '  :PARENT_ID,' +
    '  :NAME,' +
    '  :TAX_ID,' +
    '  :OFFICE_NO,' +
    '  :BUILDING,' +
    '  :AVENUE,' +
    '  :ROAD,' +
    '  :DISTRICT,' +
    '  :AMPHUR,' +
    '  :PROVINCE,' +
    '  :POST_CODE,' +
    '  :TEL_NO,' +
    '  :FAX_NO)';

  _SQL_DELETE_ORG_ =
    'DELETE FROM TB_ORGANIZATION ' +
    'WHERE ' +
    '  (RECORD_ID = :RECORD_ID)';

//**************************** Org Loader Engine ****************************//
function FindPriorItem(_CurrentOrgItem: PCurrentOrgItem;
  Parant_ID: Integer): PCurrentOrgItem;
begin
  Result := _CurrentOrgItem;

  while ((Result <> nil) and (Result^.Parent_ID <> Parant_ID)) do
    Result := Result^.Prior;
end;

function GotoPriorItem(_CurrentOrgItem: PCurrentOrgItem;
  Parant_ID: Integer): PCurrentOrgItem;
begin
  Result := _CurrentOrgItem;

  while ((Result <> nil) and (Result^.Parent_ID <> Parant_ID) ) do
  begin
    _CurrentOrgItem := Result;
    Result := Result^.Prior;
    Dispose(_CurrentOrgItem);
  end;
end;

function CreateNextItem(_CurrentOrgItem: PCurrentOrgItem;
  _Parent_ID: Integer; _OrgItem: TTreeNode): PCurrentOrgItem;
begin
  if ((_CurrentOrgItem <> nil) and (_CurrentOrgItem^.Parent_ID = _Parent_ID)) then
  begin
    Result := _CurrentOrgItem;
    Exit;
  end;

  if (FindPriorItem(_CurrentOrgItem, _Parent_ID) = nil) then
  begin
    New(Result);

    Result^.Parent_ID := _Parent_ID;
    Result^.OrgItem := _OrgItem;
    Result^.Prior := _CurrentOrgItem;
  end else
    Result := GotoPriorItem(_CurrentOrgItem, _Parent_ID);
end;

procedure FreeAllItem(_CurrentOrgItem: PCurrentOrgItem);
var
  _C: PCurrentOrgItem;
begin
  _C := _CurrentOrgItem;

  if (_C = nil) then
    Exit;

  if (_C^.Prior <> nil) then
  begin
    while (_C^.Prior <> nil) do
    begin
      _CurrentOrgItem := _C.Prior;
      Dispose(_C);
      _C := _CurrentOrgItem;
    end;
  end;

  Dispose(_CurrentOrgItem);
end;

function TfrmOrganization.GetNode(const _Text: String): TTreeNode;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to (tvOrganization.Items.Count - 1) do
  begin
    if (tvOrganization.Items[i].Text = _Text) then
    begin
      Result := tvOrganization.Items[i];
      Break;
    end;
  end;
end;

procedure TfrmOrganization.UnloadOrganization();
var
  _P: Integer;
  _T: TTreeNode;
begin
  _P := tvOrganization.Items.Count - 1;
  while (_P >= 1) do
  begin
    _T := tvOrganization.Items[_P];
    Dispose(_T.Data);
    tvOrganization.Items.Delete(_T);
    Dec(_P);
  end;

  while (imgOrgList.Count > 4) do
    imgOrgList.Delete(3);
end;

procedure TfrmOrganization.LoadOrganization();
const
  PULL_DOWN_ID = -1;
var
  _Parent_ID: Integer;
  _Item: TTreeNode;
  _PRC: PInteger;
begin
  UnloadOrganization();

  try
    dsOrgData.Params.ByNameAsString['LANGUAGE'] := FMenuLanguage;
    dsOrgData.Open();

    _Item := tvOrganization.Items[0];
    FCurrentOrgItem := nil;

    dsOrgData.Last();


    dsOrgData.First();
    while (not (dsOrgData.Eof)) do
    begin
      _Parent_ID := dsOrgDataPARENT_ID.AsInteger;

      FCurrentOrgItem := CreateNextItem(FCurrentOrgItem, _Parent_ID, _Item);

      _Item := tvOrganization.Items.AddChild(
        FCurrentOrgItem.OrgItem,
        dsOrgDataNAME.Value);

      New(_PRC);
      _PRC^ := dsOrgDataRECORD_ID.AsInteger;
      _Item.Data := _PRC;

      if (_Parent_ID = PULL_DOWN_ID) then
      begin
        _Item.ImageIndex := 1;
        _Item.SelectedIndex := 1;
      end else
      begin
        _Item.ImageIndex := 2;
        _Item.SelectedIndex := 2;
      end;

      dsOrgData.Next();
    end;
  finally
    FreeAllItem(FCurrentOrgItem);
    dsOrgData.Close();
  end;
end;

//****************************************************************************//

procedure TfrmOrganization.LanguageChaged(var Message: TMessage);
begin
  FMenuLanguage := GetMenuLanguage();
  LoadComponents('orgman.dll', Name, FMenuLanguage, Self, trnsDefault);
//  SaveComponents('orgman.dll', Name, _Language, Self, trnsDefault);

  if (FMenuLanguage = 'ENG') then
    tvOrganization.Items[0].Text := 'Organizations'
  else
  if (FMenuLanguage = 'THA') then
    tvOrganization.Items[0].Text := '˹��§ҹ';

  btnRefreshClick(btnRefresh);
end;

procedure TfrmOrganization.FormCreate(Sender: TObject);
var
  _PRC: PInteger;
begin
  Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;

  New(_PRC);
  _PRC^ := -1;
  tvOrganization.Items[0].Data := _PRC;
  
  WindowState := wsMaximized;
end;

procedure TfrmOrganization.FormShow(Sender: TObject);
begin
  PostMessage(Self.Handle, WM_LANGUAGE_CHANGED, 0, 0);
  ShowFormEx(Self);
end;

procedure TfrmOrganization.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmOrganization.btnRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  try
    LoadOrganization();

    tvOrganization.Items[0].Expand(True);
    if (tvOrganization.Items[0].Count <> 0) then
      tvOrganization.Selected := tvOrganization.Items[0].Item[0];
  finally
    dsOrgData.Close();

    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmOrganization.AddNewItem(const _ParentID: Integer);
begin
  trnsDefault.StartTransaction();

  cdsOrgItem.Close();
  dsOrgItemX.Params.ByNameAsInteger['RECORD_ID'] := -1;
  cdsOrgItem.Open();
  cdsOrgItem.Append();
  cdsOrgItemRECORD_ID.Clear();
  cdsOrgItemPARENT_ID.AsInteger := _ParentID;

  pnOrgItemList.Enabled := False;
  tbBar.Enabled := False;

  pnEditorData.Enabled := True;

  btnEdit.Enabled := False;
  btnSave.Enabled := True;
  btnCancel.Enabled := True;

  pnEditor.Show();

  FIsAddItem := True;
end;

procedure TfrmOrganization.btnAddHeaderClick(Sender: TObject);
var
  _T: TTreeNode;
begin
  _T := tvOrganization.Items.AddChild(tvOrganization.Items[0], '<New Pull-Down>');
  _T.ImageIndex := 1;
  _T.SelectedIndex := 1;

  tvOrganization.Selected := _T;

  AddNewItem();
end;

procedure TfrmOrganization.btnAddDetailClick(Sender: TObject);
var
  _T: TTreeNode;
  _RCID: Integer;
begin
  if (tvOrganization.Selected = tvOrganization.Items[0]) then
    Exit;

  _T := tvOrganization.Items.AddChild(tvOrganization.Selected, '<New Org-Item>');
  _T.ImageIndex := 2;
  _T.SelectedIndex := 2;

  _RCID := Integer(tvOrganization.Selected.Data^);
  tvOrganization.Selected := _T;
  AddNewItem(_RCID);
end;

procedure TfrmOrganization.btnDeleteClick(Sender: TObject);
var
  _T: TTreeNode;
  _iM: Integer;
begin
  _T := tvOrganization.Selected;
  if (_T = tvOrganization.Items[0]) then
    Exit;

  _iM :=
    Application.MessageBox(
      PChar('Do you want to delete Org item "' + _T.Text + '"?'),
      'Confirm Delete', MB_YESNO or MB_ICONQUESTION);

  if (_iM = idNo) then
    Exit;

  if (_T.Data <> nil) then
  begin
    dsOrgUpdate.SQL.Text := _SQL_DELETE_ORG_;
    dsOrgUpdate.Params.ByNameAsInteger['RECORD_ID'] := Integer(_T.Data^);
    dsOrgUpdate.ExecSQL();
    dsOrgUpdate.Close(etmCommit);

    _T.Delete();
  end else
  begin
    pnEditor.Hide();
  end;
end;

procedure TfrmOrganization.dbeNAMEKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmOrganization.btnEditClick(Sender: TObject);
begin
  trnsDefault.StartTransaction();

  pnOrgItemList.Enabled := False;
  tbBar.Enabled := False;

  pnEditorData.Enabled := True;

  btnEdit.Enabled := False;
  btnSave.Enabled := True;
  btnCancel.Enabled := True;

  cdsOrgItem.Edit();
  FIsAddItem := False;
end;

procedure TfrmOrganization.btnSaveClick(Sender: TObject);
var
  _Node: TTreeNode;
  _S: String;
begin
  _S := cdsOrgItemNAME.Value;

  cdsOrgItem.Post();

  pnOrgItemList.Enabled := True;
  tbBar.Enabled := True;

  pnEditorData.Enabled := False;

  btnEdit.Enabled := True;
  btnSave.Enabled := False;
  btnCancel.Enabled := False;

  LoadOrganization();
  tvOrganization.Items[0].Expand(True);
  
  _Node := GetNode(_S);
  if (_Node <> nil) then
    tvOrganization.Selected := _Node;

  tvOrganization.SetFocus();
end;

procedure TfrmOrganization.btnCancelClick(Sender: TObject);
begin
  cdsOrgItem.Cancel();

  pnOrgItemList.Enabled := True;
  tbBar.Enabled := True;
  
  pnEditorData.Enabled := False;

  btnEdit.Enabled := True;
  btnSave.Enabled := False;
  btnCancel.Enabled := False;

  tvOrganization.SetFocus();
  if (FIsAddItem) then
    tvOrganization.Selected.Delete();
end;

procedure TfrmOrganization.tvOrganizationChange(Sender: TObject; Node: TTreeNode);
var
  _T: TTreeNode;
begin
  cdsOrgItem.Close();

  _T := tvOrganization.Selected;

  if (Integer(_T.Data^) <> -1) then
  begin
    dsOrgItemX.Params.ByNameAsInteger['RECORD_ID'] := Integer(_T.Data^);
    dsOrgItemX.Params.ByNameAsString['LANGUAGE'] := FMenuLanguage;
    cdsOrgItem.Open();
    pnEditor.Show();
  end else
  begin
    pnEditor.Hide();
  end;
end;

procedure TfrmOrganization.cxButton1Click(Sender: TObject);
begin
  Close();
end;

procedure TfrmOrganization.cdsOrgItemAfterPost(DataSet: TDataSet);
begin
  dsOrgUpdate.SQL.Text := _SQL_UPDATE_ORG_;
  dsOrgUpdate.Params.ByNameAsInteger['RECORD_ID'] := cdsOrgItemRECORD_ID.AsInteger;
  dsOrgUpdate.Params.ByNameAsInteger['PARENT_ID'] := cdsOrgItemPARENT_ID.AsInteger;
  dsOrgUpdate.Params.ByNameAsString['NAME'] := cdsOrgItemNAME.AsString;
  dsOrgUpdate.Params.ByNameAsString['TAX_ID'] := cdsOrgItemTAX_ID.AsString;
  dsOrgUpdate.Params.ByNameAsString['OFFICE_NO'] := cdsOrgItemOFFICE_NO.AsString;
  dsOrgUpdate.Params.ByNameAsString['BUILDING'] := cdsOrgItemBUILDING.AsString;
  dsOrgUpdate.Params.ByNameAsString['AVENUE'] := cdsOrgItemAVENUE.AsString;
  dsOrgUpdate.Params.ByNameAsString['ROAD'] := cdsOrgItemROAD.AsString;
  dsOrgUpdate.Params.ByNameAsString['DISTRICT'] := cdsOrgItemDISTRICT.AsString;
  dsOrgUpdate.Params.ByNameAsString['AMPHUR'] := cdsOrgItemAMPHUR.AsString;
  dsOrgUpdate.Params.ByNameAsString['PROVINCE'] := cdsOrgItemPROVINCE.AsString;
  dsOrgUpdate.Params.ByNameAsString['POST_CODE'] := cdsOrgItemPOST_CODE.AsString;
  dsOrgUpdate.Params.ByNameAsString['TEL_NO'] := cdsOrgItemTEL_NO.AsString;
  dsOrgUpdate.Params.ByNameAsString['FAX_NO'] := cdsOrgItemFAX_NO.AsString;
  dsOrgUpdate.ExecSQL();
  dsOrgUpdate.Close(etmCommit);
end;

end.