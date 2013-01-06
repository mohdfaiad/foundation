unit DnoinquiryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, StdCtrls, Mask, RzEdit, RzTabs, RzLabel, ExtCtrls,
  RzPanel, DBXpress, DB, SqlExpr, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, RzDBEdit, FMTBcd, Provider, DBClient, RzDBLbl;

type
  TFrmDnoinquiry = class(TForm)
    PaneClient: TRzPanel;
    pnHeader: TRzPanel;
    lbHeader: TRzLabel;
    PageDI: TRzPageControl;
    TB1: TRzTabSheet;
    TB2: TRzTabSheet;
    RzPanel3: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    Conn: TSQLConnection;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzPanel6: TRzPanel;
    RzLabel1: TRzLabel;
    TxtUser: TRzDBEdit;
    RzPanel7: TRzPanel;
    Label3: TLabel;
    DtStart: TRzDateTimeEdit;
    Label1: TLabel;
    DtEnd: TRzDateTimeEdit;
    BtnSearch1: TRzBitBtn;
    RzPanel8: TRzPanel;
    BtnSearch2: TRzBitBtn;
    TxtEnd: TRzEdit;
    Label4: TLabel;
    TxtStart: TRzEdit;
    Label2: TLabel;
    dsp: TDataSetProvider;
    SQLDataSet: TSQLDataSet;
    CdsSearch: TClientDataSet;
    DsSearch: TDataSource;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzPanel9: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzPanel10: TRzPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn3: TcxGridDBColumn;
    CdsBillDetail: TClientDataSet;
    DsBillDetail: TDataSource;
    TxtJ: TRzLabel;
    TxtTotal: TRzDBLabel;
    rzTopPanel: TRzPanel;
    procedure BtnSearch1Click(Sender: TObject);
    procedure CdsSearchAfterScroll(DataSet: TDataSet);
    procedure BtnSearch2Click(Sender: TObject);
    procedure TxtStartKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DtStartKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    procedure LoadSearchData(Str:String) ;
    procedure LoadBillDetail(STr:String) ;
  public
    { Public declarations }
  end;

var
  FrmDnoinquiry: TFrmDnoinquiry;
  x:String ;
implementation

uses CommonLIB, uCiaXml;

{$R *.dfm}

{ TFrmDnoinquiry }

procedure TFrmDnoinquiry.LoadSearchData(Str:String) ;
begin
  CdsSearch.Close ;
  CdsSearch.CommandText := 'select *,  (  select SUM(btotal) from bill ' +
         'where '+ Str +'  )as btotalx from bill B '  +
         'left join donator D on b.bid = d.do_id '   +
         'left join user_account Ua on B.buserid = Ua.us_user ' +
         ' where ' + Str + ' ' +
         ' order by bno' ;
  CdsSearch.Open ;
  TFloatField(CdsSearch.FieldByName('btotalx')).DisplayFormat := '#,##0.00' ;
  TxtJ.Caption := IntToStr(CdsSearch.RecordCount) ; 
end;

procedure TFrmDnoinquiry.BtnSearch1Click(Sender: TObject);
begin
  x:= 'Y' ;
  if (DtStart.Text <> '') and (DtEnd.Text <> '') then
    begin
      LoadSearchData('bdate between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DtStart.Date)) +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd',DtEnd.Date))) ;
    end
  else
    begin
      LoadSearchData('bdate = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DtStart.Date))) ;
    end;
  if CdsSearch.RecordCount > 0 then
    begin
      cxGrid1.SetFocus ;
      LoadBillDetail(CdsSearch.fieldByName('Bno').AsString) ;
    end
  else DtStart.SetFocus ;

  x:= 'N' ;
end;

procedure TFrmDnoinquiry.LoadBillDetail(STr: String);
begin
  CdsBillDetail.Close ;
  CdsBillDetail.CommandText := 'select b.bno,o_title,bd.bdamount  from billdetail Bd '+
                               'left join bill B on bd.bdno = b.bno ' +
                               'left join object_code Oc on bd.bdobject = Oc.o_code ' +
                               'where b.bno=' + QuotedStr(Str) ;
  CdsBillDetail.Open ;
end;

procedure TFrmDnoinquiry.CdsSearchAfterScroll(DataSet: TDataSet);

begin
  if x = 'N' then
    begin
      LoadBillDetail(CdsSearch.fieldByName('Bno').AsString) ;


    end ;
end;

procedure TFrmDnoinquiry.BtnSearch2Click(Sender: TObject);
begin
  x:= 'Y' ;
  if (TxtStart.Text <> '') and (TxtEnd.Text <> '') then
    begin
      LoadSearchData('bperiod between '+ QuotedStr( TxtStart.Text) +
                                ' and '+ QuotedStr(TxtEnd.Text)) ;
    end
  else
    begin
      LoadSearchData('bperiod = '+ QuotedStr(TxtStart.Text)) ;
    end;
  if CdsSearch.RecordCount > 0 then
    begin
      cxGrid1.SetFocus ;
      LoadBillDetail(CdsSearch.fieldByName('Bno').AsString) ;
    end
  else DtStart.SetFocus ;
  x:= 'N' ;
end;

procedure TFrmDnoinquiry.TxtStartKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   BtnSearch2Click(sender)   ;
end;

procedure TFrmDnoinquiry.DtStartKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   BtnSearch1Click(sender)   ;
end;

procedure TFrmDnoinquiry.FormCreate(Sender: TObject);
begin
  SetChildTaborders(PaneClient);
  initSqlConnection(Conn);
end;

procedure TFrmDnoinquiry.FormShow(Sender: TObject);
begin
  DtStart.SetFocus ;
end;

procedure TFrmDnoinquiry.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then self.close;
end;

procedure TFrmDnoinquiry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (FormStyle = fsMDIChild) then
    Action := caFree;
end;

end.