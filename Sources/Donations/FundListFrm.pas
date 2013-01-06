unit FundListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, RzEdit, RzCmboBx, RzPanel, ExtCtrls,ReceiveFrm, CommonLIB,
  RzButton;

type
  TfrmFundList = class(TForm)
    pnClientContainer: TPanel;
    pnTop: TRzPanel;
    Label7: TLabel;
    cmbSearchType: TRzComboBox;
    edSearchText: TRzEdit;
    ListView: TListView;
    Label1: TLabel;
    btnSearch: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListViewDblClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    FFundGroupCode: string;
    FSelectCode: string;
    FMainForm: TfrmReceive;
    procedure SetFundGroupCode(const Value: string);
    procedure SetSelectCode(const Value: string);
    procedure SetMainForm(const Value: TfrmReceive);
    procedure fillListview();
    { Private declarations }
  public
    { Public declarations }
    property MainForm : TfrmReceive read FMainForm write SetMainForm;
    property FundGroupCode : string read FFundGroupCode write SetFundGroupCode;
    property SelectCode : string  read FSelectCode write SetSelectCode;
  end;

var
  frmFundList: TfrmFundList;

implementation


{$R *.dfm}

{ TfrmFundList }

procedure TfrmFundList.SetFundGroupCode(const Value: string);
begin
  FFundGroupCode := Value;
end;

procedure TfrmFundList.FormShow(Sender: TObject);

begin

  cmbSearchType.Items.Clear;
  cmbSearchType.Items.AddObject('����',TString.Create('fd_code'));
  cmbSearchType.Items.AddObject('���ͧ͡�ع',TString.Create('fd_title'));
  cmbSearchType.ItemIndex:=1;

  edSearchText.SetFocus;
  edSearchText.SelectAll;

  fillListview;
end;

procedure TfrmFundList.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then close;
  if key = vk_return then
  begin
      if ListView.Selected<> nil then
       if ListView.Focused then
        begin
          ListViewDblClick(sender);
        end;

      if edSearchText.Focused then
        begin
          btnSearchClick(nil);
        end;




  end;


  if key = vk_down then
    if (( not ListView.Focused) and (not cmbSearchType.Focused)) then
    begin
        ListView.SetFocus;
    end;

end;

procedure TfrmFundList.SetSelectCode(const Value: string);
begin
  FSelectCode := Value;
end;

procedure TfrmFundList.SetMainForm(const Value: TfrmReceive);
begin
  FMainForm := Value;
end;

procedure TfrmFundList.ListViewDblClick(Sender: TObject);
begin
    FSelectCode:=TString(ListView.Selected.Data).Str;
    close;
end;

procedure TfrmFundList.btnSearchClick(Sender: TObject);
begin
    FMainForm.cdsFundList.Close;
    FMainForm.cdsFundList.CommandText:='select * from found_code where (fd_codetype = '''+self.FundGroupCode+''') and '+trim(TString(cmbSearchType.Items.Objects[cmbSearchType.ItemIndex]).Str)+' like '''+edSearchText.Text+'%'' and (isnull(upper(fd_status) ,'''') <> ''C'') order by fd_code';
    FMainForm.cdsFundList.Open;
    fillListview;
end;

procedure TfrmFundList.fillListview;
var
  item : TListItem;
begin
 if FMainForm.cdsFundList.Active then
   with  FMainForm.cdsFundList do
   begin
      self.Caption:='�ͧ�ع ( �ӹǹ '+inttostr(recordcount)+' ��¡�� )';
      ListView.Items.Clear;
      first;
      while not FMainForm.cdsFundList.Eof do
      begin
         item := ListView.Items.Add;
         item.Caption:= fieldbyname('fd_code').AsString;
         item.SubItems.Add(fieldbyname('fd_title').AsString) ;
         item.Data := TString.Create(fieldbyname('fd_code').AsString);
        if not FMainForm.cdsFundList.Eof then next;
      end;
   end;
end;

end.