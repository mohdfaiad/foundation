unit HeaderDataEditorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DB, cxLookAndFeelPainters, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMemo, cxMaskEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  ExtCtrls, StdCtrls, cxButtons, cxCheckBox, MainMiscDataForm, DBCtrls,
  cxGraphics, cxLookAndFeels, Menus;

{$I CRG_WM_MSG.INC}

type
  TfrmHeaderDataEditor = class(TForm)
    Panel2: TPanel;
    btnCancel: TcxButton;
    btnSave: TcxButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    dbeCODE: TcxDBTextEdit;
    dbeDECSCRIPTION: TcxDBTextEdit;
    dbeFCODE_LABEL: TcxDBTextEdit;
    dcbFCODE_USED: TcxDBCheckBox;
    dbeFDESC_LABEL: TcxDBTextEdit;
    dcbFDESC_USED: TcxDBCheckBox;
    dbeFMONEY_LABEL: TcxDBTextEdit;
    dcbFMONEY_USED: TcxDBCheckBox;
    dbeFDATE_LABEL: TcxDBTextEdit;
    dcbFDATE_USED: TcxDBCheckBox;
    dbeFDOUBLE_LABEL: TcxDBTextEdit;
    dcbFTEXT_EX_USED: TcxDBCheckBox;
    dbeFTEXT_EX_LABEL: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dlbIS_SYS_LABEL: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeCODEKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FMainForm: TfrmMainMiscData;

    procedure LanguageChaged(var Message: TMessage); message WM_LANGUAGE_CHANGED;
  public
    property MainForm: TfrmMainMiscData read FMainForm write FMainForm;
  end;

var
  frmHeaderDataEditor: TfrmHeaderDataEditor;

implementation

uses fbconnection, fshow, crglangmgr;

{$R *.dfm}

procedure TfrmHeaderDataEditor.LanguageChaged(var Message: TMessage);
var
  _Language: String;
begin
  _Language := GetMenuLanguage();
  LoadComponents('misceditor.dll', Name, _Language, Self, FMainForm.trnsDefault);
//  SaveComponents('misceditor.dll', Name, 'ENG', Self, FMainForm.trnsDefault);
end;

procedure TfrmHeaderDataEditor.FormCreate(Sender: TObject);
begin
  Left := ((Owner as TForm).Width - Width) div 2;
  Top := ((Owner as TForm).Height - Height) div 2;
end;

procedure TfrmHeaderDataEditor.FormShow(Sender: TObject);
begin
  PostMessage(Self.Handle, WM_LANGUAGE_CHANGED, 0, 0);

  BringToFront();

  dbeCODE.Properties.ReadOnly :=
    (FMainForm.cdsMiscHeaderDataIS_SYSTEM.Value <> 0);
  if (dbeCODE.Properties.ReadOnly) then
    dbeCODE.Style.Color := clSilver;

  ShowFormEx(Self);
end;

procedure TfrmHeaderDataEditor.btnSaveClick(Sender: TObject);
begin
  if (FMainForm.cdsMiscHeaderData.State in [dsEdit, dsInsert]) then
    FMainForm.cdsMiscHeaderData.Post();

  Close();
end;

procedure TfrmHeaderDataEditor.btnCancelClick(Sender: TObject);
begin
  if (FMainForm.cdsMiscHeaderData.State in [dsEdit, dsInsert]) then
  begin
    FMainForm.cdsMiscHeaderData.Cancel();
    FMainForm.trnsDefault.RollBack();
  end;
  
  Close();
end;

procedure TfrmHeaderDataEditor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmHeaderDataEditor.dbeCODEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfrmHeaderDataEditor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (ssCtrl in Shift) then
    if (Char(Lo(Key)) = 'R') then
    begin
      Key := 0;
      
      if (FMainForm.cdsMiscHeaderDataIS_SYSTEM.Value = 1) then
        FMainForm.cdsMiscHeaderDataIS_SYSTEM.Value := 0
      else
        FMainForm.cdsMiscHeaderDataIS_SYSTEM.Value := 1;

      dbeCODE.Properties.ReadOnly :=
        (FMainForm.cdsMiscHeaderDataIS_SYSTEM.Value <> 0);
      if (dbeCODE.Properties.ReadOnly) then
        dbeCODE.Style.Color := clSilver
      else
        dbeCODE.Style.Color := clWindow;
    end;
end;

end.