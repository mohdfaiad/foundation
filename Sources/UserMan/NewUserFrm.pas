unit NewUserFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzEdit, RzDBEdit, StdCtrls, Mask, ExtCtrls, RzPanel,
  RzCmboBx,UserListFrm;

type
  TfrmNewUser = class(TForm)
    PaneUser: TRzPanel;
    pnAllClients: TRzPanel;
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    RzPanel3: TRzPanel;
    BtnSave: TRzBitBtn;
    BtnCancel: TRzBitBtn;
    rzTopPanel: TRzPanel;
    cmbRoles: TRzComboBox;
    Label2: TLabel;
    edUserCode: TRzEdit;
    edFullName: TRzEdit;
    edUserName: TRzEdit;
    edPassword: TRzEdit;
    Label4: TLabel;
    edConfirmPassword: TRzEdit;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FIsOK: boolean;
    FUserName: string;
    FUserRole: string;
    FFullName: string;
    FPassword: string;
    FUserCode: string;
    FMainForm: TFrmUserList;
    procedure SetIsOK(const Value: boolean);
    procedure SetFullName(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetUserCode(const Value: string);
    procedure SetUserName(const Value: string);
    procedure SetUserRole(const Value: string);
    procedure SetMainForm(const Value: TFrmUserList);
    { Private declarations }
  public
    { Public declarations }
    property IsOK: boolean read FIsOK write SetIsOK;
    property UserCode :string read FUserCode write SetUserCode;
    property FullName : string read FFullName write SetFullName;
    property UserName : string read FUserName write SetUserName;
    property Password : string read FPassword write SetPassword;
    property UserRole : string read FUserRole write SetUserRole;
    property MainForm : TFrmUserList read FMainForm write SetMainForm;
  end;

var
  frmNewUser: TfrmNewUser;

implementation

uses CommonLIB, CommonUtils;

{$R *.dfm}

procedure TfrmNewUser.BtnCancelClick(Sender: TObject);
begin
  IsOK:=false;
  close;
end;

procedure TfrmNewUser.BtnSaveClick(Sender: TObject);
begin
  if trim(edPassword.Text)=trim(edConfirmPassword.Text) then
  begin
    UserCode := edUserCode.Text;
    UserName := edUserName.Text;
    FullName := edFullName.Text;
    Password := trim(edPassword.Text);
    UserRole := TString(cmbRoles.Items.Objects[cmbRoles.ItemIndex]).Str;

    IsOK:=true;
    close;
  end else
   ShowMessage('Password not match!!.');
end;

procedure TfrmNewUser.SetIsOK(const Value: boolean);
begin
  FIsOK := Value;
end;

procedure TfrmNewUser.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then close;
end;

procedure TfrmNewUser.FormShow(Sender: TObject);
begin
  loadCmbList(cmbRoles,FMainForm.cdsRoles,'select  * from Roles','RoleId','RoleName','2');
  IsOK := false;
end;

procedure TfrmNewUser.SetFullName(const Value: string);
begin
  FFullName := Value;
end;

procedure TfrmNewUser.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TfrmNewUser.SetUserCode(const Value: string);
begin
  FUserCode := Value;
end;

procedure TfrmNewUser.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

procedure TfrmNewUser.SetUserRole(const Value: string);
begin
  FUserRole := Value;
end;

procedure TfrmNewUser.SetMainForm(const Value: TFrmUserList);
begin
  FMainForm := Value;
end;

procedure TfrmNewUser.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnAllClients);
end;

end.


