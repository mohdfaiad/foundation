unit FundInfoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzCmboBx, RzPanel, ExtCtrls,ReceiveFrm,
  DB, RzButton, RzDBEdit, RzDBCmbo, RzLabel;

type
  TfrmFundInfo = class(TForm)
    pnClientContainer: TPanel;
    pnTop: TRzPanel;
    dsFundInfo: TDataSource;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    edFundName: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    btnSave: TRzBitBtn;
    btnCancel: TRzBitBtn;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzDBEdit10: TRzDBEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FMainForm: TfrmReceive;
    FCodetype: string;
    FObjectiveCode: string;

    maxno : integer;
    procedure SetMainForm(const Value: TfrmReceive);
    procedure SetCodetype(const Value: string);
    procedure SetObjectiveCode(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property MainForm : TfrmReceive read FMainForm write SetMainForm;
    property ObjectiveCode : string read FObjectiveCode write SetObjectiveCode;
    property Codetype : string read FCodetype write SetCodetype;
  end;

var
  frmFundInfo: TfrmFundInfo;

implementation

uses DBClient, CommonLIB, CommonUtils;

{$R *.dfm}

procedure TfrmFundInfo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then close;
  if key = vk_f5 then btnSaveClick(sender);
end;

procedure TfrmFundInfo.SetMainForm(const Value: TfrmReceive);
begin
  FMainForm := Value;
end;



procedure TfrmFundInfo.FormShow(Sender: TObject);
begin
      with FMainForm.cdsFundInfo do
      begin
        close;
        CommandText:='select top 1 * from found_code where fd_codetype='''+FCodetype+''' order by fd_code';
        open;
        EmptyDataSet;
        Append;

        maxno := strtoint(getFoundNo(FMainForm.cdsObjInfo,FObjectiveCode,FCodetype));

        FMainForm.cdsFundInfo.FieldByName('fd_code').AsString :=getFoundNo(FMainForm.cdsObjInfo,FObjectiveCode,FCodetype);
        FMainForm.cdsFundInfo.FieldByName('fd_codetype').AsString:=FCodetype;

      end;

  edFundName.SetFocus;      
end;

procedure TfrmFundInfo.SetCodetype(const Value: string);
begin
  FCodetype := Value;
end;

procedure TfrmFundInfo.FormCreate(Sender: TObject);
begin
  SetChildTaborders(pnClientContainer);
end;

procedure TfrmFundInfo.SetObjectiveCode(const Value: string);
begin
  FObjectiveCode := Value;
end;

procedure TfrmFundInfo.btnSaveClick(Sender: TObject);
begin
 if Application.MessageBox(pchar('�׹�ѹ�ѹ�֡�ͧ�ع����'),pchar('Confirm'),MB_YESNO or MB_ICONINFORMATION)=mryes then
   if FMainForm.cdsFundInfo.State in [dsinsert,dsedit] then
   begin
     FMainForm.cdsFundInfo.Post;
     FMainForm.cdsFundInfo.ApplyUpdates(0);
     setFoundNo(FMainForm.cdsObjInfo,FObjectiveCode,maxno);

   end;

 self.close;

end;

procedure TfrmFundInfo.btnCancelClick(Sender: TObject);
begin
  self.close;
end;

end.

