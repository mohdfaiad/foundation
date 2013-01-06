unit MainAccForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxLookAndFeelPainters, jvuib, Grids, DBGrids, cxCheckBox, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, ExtCtrls;

{$I CRG_WM_MSG.INC}

type
  TfrmMainAcc = class(TForm)
    trnsDefault: TJvUIBTransaction;
    pnMain: TPanel;
    Panel1: TPanel;
    lbSearchText: TLabel;
    edSearchText: TcxTextEdit;
    btnSearch: TcxButton;
    cbFilter: TcxCheckBox;
    dbgList: TDBGrid;
    Panel2: TPanel;
    lbRecord: TLabel;
    btnClose: TcxButton;
    btnNew: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    bvTopLine: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    procedure LanguageChaged(var Message: TMessage); message WM_LANGUAGE_CHANGED;
  public
    { Public declarations }
  end;

var
  frmMainAcc: TfrmMainAcc;

implementation

uses fbconnection, fshow, ComponentTextMgr, AccountInfoForm;

{$R *.dfm}
procedure TfrmMainAcc.LanguageChaged(var Message: TMessage);
var
  _MenusLanguage: String;
begin
  _MenusLanguage := GetMenuLanguage();
  SetScreenText('cif_acc.dll', Name, _MenusLanguage, Self, trnsDefault);
end;

procedure TfrmMainAcc.FormCreate(Sender: TObject);
begin
  Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;

  WindowState := wsMaximized;
end;

procedure TfrmMainAcc.FormShow(Sender: TObject);
var
  _MenusLanguage: String;
begin
  _MenusLanguage := GetMenuLanguage();

  //SetScreenText('cif_acc.dll', Name, _MenusLanguage, Self, trnsDefault);

  ShowFormEx(Self);
end;

procedure TfrmMainAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMainAcc.FormResize(Sender: TObject);
begin
  dbgList.Columns[3].Width :=
    dbgList.Width - 30 -
    (dbgList.Columns[0].Width +
     dbgList.Columns[1].Width +
     dbgList.Columns[2].Width +
     dbgList.Columns[4].Width);
end;

procedure TfrmMainAcc.btnNewClick(Sender: TObject);
begin
  frmAccInfo := TfrmAccInfo.Create(pnMain);
  frmAccInfo.Parent := Self;
  frmAccInfo.trnsDefault := trnsDefault;
  frmAccInfo.Show();

  pnMain.Hide();
end;

procedure TfrmMainAcc.btnEditClick(Sender: TObject);
begin
  //
end;

procedure TfrmMainAcc.btnDeleteClick(Sender: TObject);
begin
  //
end;

procedure TfrmMainAcc.btnCloseClick(Sender: TObject);
begin
  Close();
end;

end.