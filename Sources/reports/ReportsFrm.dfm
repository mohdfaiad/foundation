object frmReports: TfrmReports
  Left = 289
  Top = 145
  Width = 870
  Height = 500
  Caption = 'frmReports'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
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
    TabOrder = 1
    object btnFundSummaryReport: TRzBitBtn
      Left = 3
      Top = 42
      Width = 126
      Height = 27
      Caption = #3619#3634#3618#3591#3634#3609#3626#3619#3640#3611#3585#3629#3591#3607#3640#3609
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnFundSummaryReportClick
    end
    object pnHeader: TRzPanel
      Left = 0
      Top = 0
      Width = 862
      Height = 28
      Align = alTop
      BorderOuter = fsNone
      Color = 5832793
      TabOrder = 1
      object lbHeader: TRzLabel
        Left = 8
        Top = 6
        Width = 118
        Height = 16
        Caption = ' '#3619#3634#3618#3591#3634#3609' (Reports)'
        Font.Charset = THAI_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RzBitBtn1: TRzBitBtn
      Left = 131
      Top = 42
      Width = 286
      Height = 27
      Caption = #3626#3619#3640#3611#3619#3634#3618#3648#3604#3639#3629#3609#3626#3617#3607#3610#3607#3640#3609#3651#3609#3617#3641#3621#3609#3636#3608#3631' Soft '#3651#3610#3648#3626#3619#3655#3592
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 3
      Top = 74
      Width = 286
      Height = 27
      Caption = #3626#3619#3640#3611#3619#3634#3618#3648#3604#3639#3629#3609#3626#3617#3607#3610#3607#3640#3609#3651#3609#3617#3641#3621#3609#3636#3608#3631' Soft '#3607#3640#3609
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = RzBitBtn2Click
    end
    object RzBitBtn3: TRzBitBtn
      Left = 291
      Top = 74
      Width = 286
      Height = 27
      Caption = #3607#3640#3609#3612#3641#3657#3610#3619#3636#3592#3634#3588#3651#3609#3617#3641#3621#3609#3636#3608#3650#3619#3591#3614#3618#3634#3610#3634#3621#3619#3634#3594#3623#3636#3606#3637
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = RzBitBtn3Click
    end
    object RzBitBtn4: TRzBitBtn
      Left = 3
      Top = 122
      Width = 286
      Height = 27
      Caption = #3619#3634#3618#3585#3634#3619#3619#3633#3610#3648#3591#3636#3609#3610#3619#3636#3592#3634#3588#3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = RzBitBtn4Click
    end
    object RzBitBtn5: TRzBitBtn
      Left = 291
      Top = 122
      Width = 142
      Height = 27
      Caption = #3619#3634#3618#3591#3634#3609#3612#3641#3657#3610#3619#3636#3592#3634#3588
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = RzBitBtn5Click
    end
    object RzBitBtn6: TRzBitBtn
      Left = 435
      Top = 122
      Width = 142
      Height = 27
      Caption = #3619#3634#3618#3591#3634#3609#3612#3641#3657#3610#3619#3636#3592#3634#3588#3607#3633#3657#3591#3627#3617#3604
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = RzBitBtn6Click
    end
    object RzBitBtn7: TRzBitBtn
      Left = 3
      Top = 154
      Width = 286
      Height = 27
      Caption = #3619#3634#3618#3591#3634#3609#3612#3641#3657#3610#3619#3636#3592#3634#3588' '#3649#3621#3632#3614#3636#3617#3614#3660#3626#3605#3636#3585#3648#3585#3629#3619#3660
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = RzBitBtn7Click
    end
    object RzBitBtn8: TRzBitBtn
      Left = 3
      Top = 194
      Width = 198
      Height = 27
      Caption = #3619#3634#3618#3591#3634#3609#3612#3641#3657#3610#3619#3636#3592#3634#3588#3607#3633#3657#3591#3627#3617#3604' ( 2 cols )'
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = RzBitBtn8Click
    end
    object RzBitBtn9: TRzBitBtn
      Left = 203
      Top = 194
      Width = 214
      Height = 27
      Caption = #3619#3634#3618#3591#3634#3609#3612#3641#3657#3610#3619#3636#3592#3634#3588#3648#3611#3655#3609#3594#3656#3623#3591' ( 2 cols )'
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = RzBitBtn9Click
    end
    object RzBitBtn10: TRzBitBtn
      Left = 3
      Top = 226
      Width = 286
      Height = 27
      Caption = #3619#3634#3618#3591#3634#3609#3649#3626#3604#3591#3623#3633#3605#3606#3640#3611#3619#3632#3626#3591#3588#3660#3586#3629#3591#3612#3640#3657#3610#3619#3636#3592#3634#3588#3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      Color = 16753994
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      ParentFont = False
      TabOrder = 11
      TabStop = False
      OnClick = RzBitBtn10Click
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
      'HostName=.'
      'DataBase=fddb_temp'
      'DriverName=DevartSQLServer'
      'User_Name=sa'
      'Password=123456'
      'LongStrings=True'
      'EnableBCD=True'
      'FetchAll=True')
    VendorLib = 'sqloledb.dll'
    Left = 104
    Top = 138
  end
  object SQLDataSet: TSQLDataSet
    CommandText = 'select top 1 * from MttReceiveHdr'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conn
    Left = 160
    Top = 138
  end
  object dsp: TDataSetProvider
    DataSet = SQLDataSet
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 208
    Top = 138
  end
  object cdsReport: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 440
    Top = 194
  end
  object frxReport: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41228.660536458300000000
    ReportOptions.LastChange = 41228.775143738400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 202
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDataset5'
        RowCount = 0
        object frxDataset5DocDate: TfrxMemoView
          Width = 93.732283464566900000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[frxDataset5."DocDate" #ddd] [frxDataset5."DocDate" #dmmm] [Year' +
              'Of(<frxDataset5."DocDate">) + 543]')
          ParentFont = False
        end
        object frxDataset5Descrip: TfrxMemoView
          Left = 93.606370000000000000
          Width = 292.535433070866000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Descrip'
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDataset5."Descrip"]')
          ParentFont = False
        end
        object frxDataset5Amount: TfrxMemoView
          Left = 437.669291338583000000
          Width = 139.842519685039000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[IIF(<frxDataset5."Flag">='#39'D'#39',<frxDataset5."Amount">,'#39#39') #n%2.2n' +
              ']')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 577.511811023622000000
          Width = 139.842519685039000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[IIF(<frxDataset5."Flag">='#39'C'#39',<frxDataset5."Amount">,'#39#39') #n%2.2n' +
              ']')
          ParentFont = False
        end
        object frxDataset5Period: TfrxMemoView
          Left = 386.267716540000000000
          Width = 51.401574803149600000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Period'
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset5."Period"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 60.472480000000000000
        Width = 718.110700000000000000
        Condition = 'frxDataset5."BatchNo"'
        KeepTogether = True
        object Memo6: TfrxMemoView
          Width = 93.732283464566900000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #3648#3608#3591#3648#3608#3601#3648#3608#153' '#3648#3609#8364#3648#3608#8221#3648#3608#3607#3648#3608#3597#3648#3608#153' '#3648#3608#155#3648#3608#3605)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 93.606370000000000000
          Width = 292.535433070866000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #3648#3608#3587#3648#3608#3602#3648#3608#3586#3648#3608#129#3648#3608#3602#3648#3608#3587)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 437.669291338583000000
          Width = 139.842519685039000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #3648#3609#8364#3648#3608#8221#3648#3608#154#3648#3608#3604#3648#3608#8226)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 577.511811023622000000
          Width = 139.842519685039000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #3648#3609#8364#3648#3608#132#3648#3608#3587#3648#3608#8221#3648#3608#3604#3648#3608#8226)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 386.267716540000000000
          Width = 51.401574803149600000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #3648#3609#8364#3648#3608#3589#3648#3608#130#3648#3608#3597#3648#3609#137#3648#3608#3602#3648#3608#135#3648#3608#3597#3648#3608#3604#3648#3608#135)
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 34.015770000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 93.732283464566900000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 93.606370000000000000
          Width = 292.535433070000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 437.669291340000000000
          Width = 139.842519690000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDataset5."Flag">='#39'D'#39',<frxDataset5."Amount">,0),Mast' +
              'erData1) #n%2.2n]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 577.511811020000000000
          Width = 139.842519690000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDataset5."Flag">='#39'C'#39',<frxDataset5."Amount">,0),Mast' +
              'erData1) #n%2.2n]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 386.267716540000000000
          Width = 51.401574800000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 438.425480000000000000
          Width = 139.842519690000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 578.267999680000000000
          Width = 139.842519690000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDataset5."FndCode"'
        KeepTogether = True
        object frxDataset5fd_title: TfrxMemoView
          Left = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fd_title'
          DataSetName = 'frxDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset5."fd_title"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Top = 200.315090000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxDataset5: TfrxDBDataset
    UserName = 'frxDataset5'
    CloseDataSource = False
    DataSet = cdsReport
    BCDToCurrency = False
    Left = 328
    Top = 282
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 648
    Top = 258
  end
  object frxDataset1: TfrxDBDataset
    UserName = 'frxDataset1'
    CloseDataSource = False
    DataSet = cdsReport
    BCDToCurrency = False
    Left = 328
    Top = 338
  end
end