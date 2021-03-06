library donations;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  Windows,
  Forms,
  JvUIB,
  ReceiveFrm in 'ReceiveFrm.pas' {frmReceive},
  uCiaXml in '..\LIB\uCiaXml.pas',
  CommonLIB in '..\LIB\CommonLIB.pas',
  DonatorProfileFrm in 'DonatorProfileFrm.pas' {frmDonatorProfile},
  FundInfoFrm in 'FundInfoFrm.pas' {frmFundInfo},
  FundListFrm in 'FundListFrm.pas' {frmFundList},
  ObjectiveFrm in 'ObjectiveFrm.pas' {frmObjective},
  OvjectiveAFrm in 'OvjectiveAFrm.pas' {frmOvjectiveA},
  SearchFrm in 'SearchFrm.pas' {frmSearch},
  SelectAccCodeFrm in 'SelectAccCodeFrm.pas' {frmSelectAccCode},
  SelectBankFrm in 'SelectBankFrm.pas' {frmSelectBank},
  EditItemFrm in 'EditItemFrm.pas' {frmEditItem},
  CommonUtils in '..\LIB\CommonUtils.pas',
  BillingInfoFrm in 'BillingInfoFrm.pas' {frmBillingInfo},
  ConfirmBillNoFrm in 'ConfirmBillNoFrm.pas' {frmConfirmBillNo},
  SearchProjectFrm in 'SearchProjectFrm.pas' {frmSearchProject},
  SelectPrivinceFrm in 'SelectPrivinceFrm.pas' {frmSelectPrivince},
  SelectTambonFrm in 'SelectTambonFrm.pas' {frmSelectTambon},
  SelectAmphurFrm in 'SelectAmphurFrm.pas' {frmSelectAmphur},
  SearchLocationFrm in 'SearchLocationFrm.pas' {frmSearchLocation},
  SelectBookBankFrm in 'SelectBookBankFrm.pas' {frmSelectBookBank};

{$R *.res}

type
  TShowWindowType = (swNone, swModal, swNormal);

function Execute(_MainApp: TApplication; _DBConn: TJvUIBDataBase;
  _Type: TShowWindowType; _Parameter: TDLLParameter): TForm; stdcall;
begin
  //Application.Initialize;
  Result := TfrmReceive.Create(_MainApp);

  if initSqlConnection(TfrmReceive(Result).Conn)
  then
  begin
    //TfrmAppInfo(Result).trnsDefault.DataBase := _DBConn;
    if (_Type = swModal) then
    begin
      Result.FormStyle := fsNormal;
      Result.WindowState := wsNormal;
      Result.WindowState:=wsMaximized;

      Result.ShowModal;
      FreeAndNil(Result);
    end else
    begin

      TfrmReceive(Result).currUserID:=_Parameter.UserID;
      TfrmReceive(Result).BranchCode:=_Parameter.Branch;


      Result.FormStyle := fsMDIChild;
      Result.Show();
    end;
  end;
end;

exports
  Execute;

end.

