unit LicensedForm;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ComCtrls, StdCtrls, cxLookAndFeelPainters, cxButtons, ExtCtrls,
  cxRadioGroup, cxGraphics, cxLookAndFeels, Menus;

type
  TfrmLicensed = class(TForm)
    reLicensedData: TRichEdit;
    btnPrint: TcxButton;
    btnClose: TcxButton;
    Bevel1: TBevel;
    rbAccept: TcxRadioButton;
    rbNotAccept: TcxRadioButton;
    Label1: TLabel;
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ShowLicensedBox(_app_title: String); stdcall;
  function IsAcceptAgreement(): Boolean; stdcall;
  procedure SetRegLicense(IsRead: Boolean); stdcall;

var
  frmLicensed: TfrmLicensed;

implementation

uses Registry, fshow;

{$R *.dfm}

const
  _LKR = 'Software\The CRG Software\Application Loader\License';

procedure ShowLicensedBox(_app_title: String); stdcall;
begin
  with TfrmLicensed.Create(Application) do
  try
    if (IsAcceptAgreement()) then
    begin
      rbAccept.Hide();
      rbNotAccept.Hide();

      reLicensedData.Height := reLicensedData.Height + rbAccept.Height + 5;
    end;

    Caption := _app_title + ' - ' + Caption;
    ShowModal();
  finally
    Free();
  end;
end;

function IsAcceptAgreement(): Boolean; stdcall;
begin
  Result := False;
  with TRegistry.Create() do
  try
    RootKey := HKEY_CURRENT_USER;
    if (OpenKey(_LKR, False)) then
    try
      Result := ReadBool('Accepted');
    finally
      CloseKey();
    end;
  finally
    Free();
  end;
end;

procedure SetRegLicense(IsRead: Boolean); stdcall;
begin
  with TRegistry.Create() do
  try
    RootKey := HKEY_CURRENT_USER;
    if (OpenKey(_LKR, True)) then
    try
      WriteBool('Accepted', IsRead);
    finally
      CloseKey();
    end;
  finally
    Free();
  end;
end;

procedure TfrmLicensed.btnPrintClick(Sender: TObject);
begin
  reLicensedData.Print('CRG Public License');
end;

procedure TfrmLicensed.FormCreate(Sender: TObject);
begin
  Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;
end;

procedure TfrmLicensed.btnCloseClick(Sender: TObject);
begin
  if (rbAccept.Visible) then
    SetRegLicense(rbAccept.Checked);

  Close();
end;

procedure TfrmLicensed.FormShow(Sender: TObject);
begin
  ShowFormEx(Self);
end;

end.