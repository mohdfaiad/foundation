object frmSetting: TfrmSetting
  Left = 332
  Top = 194
  Width = 870
  Height = 500
  Caption = 'frmSetting'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object xTopPanel: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    Visible = False
  end
  object pnClientContainer: TPanel
    Left = 0
    Top = 34
    Width = 862
    Height = 438
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object pnHeader: TRzPanel
      Left = 0
      Top = 0
      Width = 862
      Height = 30
      Align = alTop
      BorderOuter = fsNone
      Color = 5832793
      TabOrder = 0
      object lbHeader: TRzLabel
        Left = 8
        Top = 7
        Width = 186
        Height = 16
        Caption = #3605#3633#3657#3591#3588#3656#3634#3619#3632#3610#3610' ( System Setting )'
        Font.Charset = THAI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 30
      Width = 862
      Height = 408
      ActivePage = TabSettingReceive
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 1
      object TabSettingReceive: TTabSheet
        Caption = #3619#3633#3610#3610#3619#3636#3592#3634#3588
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 854
          Height = 376
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = #3592#3640#3604#3619#3633#3610#3610#3619#3636#3592#3634#3588
            object pnAllLocation: TRzPanel
              Left = 0
              Top = 0
              Width = 846
              Height = 347
              Align = alClient
              BorderOuter = fsGroove
              TabOrder = 0
              object Label4: TLabel
                Left = 6
                Top = 213
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Code'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Label1: TLabel
                Left = 6
                Top = 238
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Description'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Label2: TLabel
                Left = 6
                Top = 263
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Bill No'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Label3: TLabel
                Left = 6
                Top = 288
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Peroid No'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Label5: TLabel
                Left = 6
                Top = 313
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Status'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object grdLocation: TcxGrid
                Left = 2
                Top = 2
                Width = 842
                Height = 175
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView1: TcxGridDBTableView
                  DataController.DataSource = dsRcvLocation
                  DataController.Filter.Criteria = {FFFFFFFF0000000000}
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView1CustomDrawColumnHeader
                  object cxGridDBTableView1MTTCDE: TcxGridDBColumn
                    Caption = 'Code'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    DataBinding.FieldName = 'MTTCDE'
                  end
                  object cxGridDBTableView1MTTDES: TcxGridDBColumn
                    Caption = 'Description'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 390
                    DataBinding.FieldName = 'MTTDES'
                  end
                  object cxGridDBTableView1BILLNO: TcxGridDBColumn
                    Caption = 'Bill No.'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 143
                    DataBinding.FieldName = 'BILLNO'
                  end
                  object cxGridDBTableView1PEROIDNO: TcxGridDBColumn
                    Caption = 'Peroid No.'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 111
                    DataBinding.FieldName = 'PEROIDNO'
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBTableView1
                end
              end
              object btnAddNew: TRzBitBtn
                Left = 3
                Top = 179
                Width = 76
                Height = 27
                Caption = #3648#3614#3636#3656#3617#3651#3627#3617#3656
                Color = 16758122
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HotTrack = True
                ParentFont = False
                TabOrder = 1
                TabStop = False
                OnClick = btnAddNewClick
              end
              object btnEdit: TRzBitBtn
                Left = 79
                Top = 179
                Width = 82
                Height = 27
                Caption = #3649#3585#3657#3652#3586
                Color = 16758122
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HotTrack = True
                ParentFont = False
                TabOrder = 2
                TabStop = False
                OnClick = btnEditClick
              end
              object edLocCode: TRzEdit
                Left = 109
                Top = 213
                Width = 100
                Height = 24
                AutoSize = False
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FocusColor = 16766975
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object edLocDesc: TRzEdit
                Left = 109
                Top = 238
                Width = 231
                Height = 24
                AutoSize = False
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 16766975
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
              end
              object edLocBillNo: TRzEdit
                Left = 109
                Top = 263
                Width = 231
                Height = 24
                AutoSize = False
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 16766975
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
              end
              object edLocPeroidNo: TRzEdit
                Left = 109
                Top = 288
                Width = 231
                Height = 24
                AutoSize = False
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 16766975
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
              end
              object btnSave: TRzBitBtn
                Left = 167
                Top = 179
                Width = 114
                Height = 27
                Caption = #3610#3633#3609#3607#3638#3585
                Color = 16758122
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HotTrack = True
                ParentFont = False
                TabOrder = 7
                TabStop = False
                OnClick = btnSaveClick
              end
              object cmbStatus: TRzComboBox
                Left = 109
                Top = 313
                Width = 169
                Height = 22
                Style = csDropDownList
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                FocusColor = 16766975
                FrameVisible = True
                ItemHeight = 14
                ParentCtl3D = False
                TabOrder = 8
                Items.Strings = (
                  'AAA'
                  'BBB'
                  'CCC')
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3619#3633#3610#3610#3619#3636#3592#3634#3588
            ImageIndex = 1
            object pnAllReceiveType: TRzPanel
              Left = 0
              Top = 0
              Width = 846
              Height = 347
              Align = alClient
              BorderOuter = fsGroove
              TabOrder = 0
              object Label6: TLabel
                Left = 6
                Top = 213
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Code'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Label7: TLabel
                Left = 6
                Top = 238
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Description'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Label10: TLabel
                Left = 6
                Top = 263
                Width = 100
                Height = 24
                AutoSize = False
                Caption = ' Status'
                Color = clSilver
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object grdPayType: TcxGrid
                Left = 2
                Top = 2
                Width = 842
                Height = 175
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGridDBTableView2: TcxGridDBTableView
                  DataController.DataSource = dsPayType
                  DataController.Filter.Criteria = {FFFFFFFF0000000000}
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OnCustomDrawColumnHeader = cxGridDBTableView1CustomDrawColumnHeader
                  object cxGridDBTableView2pt_code: TcxGridDBColumn
                    Caption = 'Code'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Width = 80
                    DataBinding.FieldName = 'pt_code'
                  end
                  object cxGridDBTableView2pt_title: TcxGridDBColumn
                    Caption = 'Description'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Width = 232
                    DataBinding.FieldName = 'pt_title'
                  end
                  object cxGridDBTableView2pt_abbr: TcxGridDBColumn
                    Caption = 'Abbr'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Width = 172
                    DataBinding.FieldName = 'pt_abbr'
                  end
                  object cxGridDBTableView2pt_status: TcxGridDBColumn
                    Caption = 'Status'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Width = 233
                    DataBinding.FieldName = 'pt_status'
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = cxGridDBTableView2
                end
              end
              object RzBitBtn1: TRzBitBtn
                Left = 3
                Top = 179
                Width = 76
                Height = 27
                Caption = #3648#3614#3636#3656#3617#3651#3627#3617#3656
                Color = 16758122
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HotTrack = True
                ParentFont = False
                TabOrder = 1
                TabStop = False
              end
              object RzBitBtn2: TRzBitBtn
                Left = 79
                Top = 179
                Width = 82
                Height = 27
                Caption = #3649#3585#3657#3652#3586
                Color = 16758122
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HotTrack = True
                ParentFont = False
                TabOrder = 2
                TabStop = False
              end
              object edTypCode: TRzEdit
                Left = 109
                Top = 213
                Width = 100
                Height = 24
                AutoSize = False
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FocusColor = 16766975
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object edTypeName: TRzEdit
                Left = 109
                Top = 238
                Width = 231
                Height = 24
                AutoSize = False
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 16766975
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
              end
              object RzBitBtn3: TRzBitBtn
                Left = 167
                Top = 179
                Width = 114
                Height = 27
                Caption = #3610#3633#3609#3607#3638#3585
                Color = 16758122
                Enabled = False
                Font.Charset = THAI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                HotTrack = True
                ParentFont = False
                TabOrder = 5
                TabStop = False
              end
              object cmbTypeStatus: TRzComboBox
                Left = 109
                Top = 263
                Width = 169
                Height = 22
                Style = csDropDownList
                Ctl3D = False
                DisabledColor = clGray
                Enabled = False
                FocusColor = 16766975
                FrameVisible = True
                ItemHeight = 14
                ParentCtl3D = False
                TabOrder = 6
                Items.Strings = (
                  'AAA'
                  'BBB'
                  'CCC')
              end
            end
          end
        end
      end
    end
  end
  object rzTopPanel: TRzPanel
    Left = 0
    Top = 30
    Width = 862
    Height = 4
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    TabOrder = 2
    VisualStyle = vsGradient
  end
  object Conn: TSQLConnection
    ConnectionName = 'Devart SQL Server'
    DriverName = 'DevartSQLServer'
    GetDriverFunc = 'getSQLDriverSQLServer'
    LibraryName = 'dbexpsda.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=127.0.0.1'
      'DataBase=fddb'
      'DriverName=DevartSQLServer'
      'User_Name=sa'
      'Password=123456'
      'LongStrings=True'
      'EnableBCD=True'
      'FetchAll=True')
    VendorLib = 'sqloledb.dll'
    Connected = True
    Left = 42
    Top = 201
  end
  object SQLDataSet: TSQLDataSet
    CommandText = 'select * from paytype'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conn
    Left = 42
    Top = 249
  end
  object dsp: TDataSetProvider
    DataSet = SQLDataSet
    Options = [poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 42
    Top = 297
  end
  object cdsRcvLocation: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.MTTACT,a.MTTCDE,a.MTTDES,a.MTTNM1 as BILLNO,b.MTTNM1 as' +
      ' PEROIDNO from (  select * from MTTCDE where MTTGRP='#39'FRONT'#39'  ) a' +
      '  left join (  select * from MTTCDE where MTTGRP='#39'PEROID'#39'  ) b  ' +
      'on a.MTTCDE=b.MTTCDE'
    Params = <>
    ProviderName = 'dsp'
    AfterScroll = cdsRcvLocationAfterScroll
    Left = 40
    Top = 345
  end
  object dsRcvLocation: TDataSource
    DataSet = cdsRcvLocation
    Left = 42
    Top = 393
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 400
    Top = 329
  end
  object cdsPayType: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from paytype'
    Params = <>
    ProviderName = 'dsp'
    AfterScroll = cdsPayTypeAfterScroll
    Left = 528
    Top = 345
  end
  object dsPayType: TDataSource
    DataSet = cdsPayType
    Left = 530
    Top = 393
  end
end