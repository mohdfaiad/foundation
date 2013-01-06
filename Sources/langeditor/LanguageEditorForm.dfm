object frmLanguageEditor: TfrmLanguageEditor
  Left = 361
  Top = 98
  Width = 800
  Height = 600
  ActiveControl = cxgData
  Caption = 'Language Editor for Bilingual System'
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel2: TBevel
    Left = 0
    Top = 0
    Width = 792
    Height = 2
    Align = alTop
    Shape = bsTopLine
  end
  object Panel2: TPanel
    Left = 0
    Top = 533
    Width = 792
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clAppWorkSpace
    TabOrder = 2
    DesignSize = (
      792
      40)
    object lbRecord: TLabel
      Left = 10
      Top = 8
      Width = 4
      Height = 14
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnClose: TcxButton
      Left = 704
      Top = 8
      Width = 79
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Close'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCloseClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object btnRefresh: TcxButton
      Left = 622
      Top = 8
      Width = 79
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Refresh'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnRefreshClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDD00000000000DDDDD0FFFFFFFFF0DDDDD0FFFFFFFFF7D
        DD9D0FFFFFF99999DDD90FFFFFF9999DDDD90FFFFFF9990DDDD90FFFFFF99F9D
        DD9D0FFFFFF9FF0999DD0FFFFFFFFF0DDDDD0FFFFFF0000DDDDD0FFFFFF0F0DD
        DDDD0FFFFFF00DDDDDDD00000000DDDDDDDDDDDDDDDDDDDDDDDD}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 2
    Width = 792
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Color = 8421440
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 4
      Height = 14
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbLanguage: TLabel
      Left = 14
      Top = 6
      Width = 115
      Height = 22
      AutoSize = False
      Caption = ' Language'
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object lbAppName: TLabel
      Left = 419
      Top = 6
      Width = 115
      Height = 22
      AutoSize = False
      Caption = ' Application Name'
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object lbScreenName: TLabel
      Left = 14
      Top = 33
      Width = 115
      Height = 22
      AutoSize = False
      Caption = ' Screen Name'
      Color = clSilver
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object cbLanguage: TcxComboBox
      Left = 133
      Top = 5
      Width = 239
      Height = 24
      ParentFont = False
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      Properties.OnChange = cbLanguagePropertiesChange
      ShowHint = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      TabOrder = 0
    end
    object cbAppName: TcxComboBox
      Left = 538
      Top = 5
      Width = 239
      Height = 24
      ParentFont = False
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      Properties.OnChange = cbAppNamePropertiesChange
      ShowHint = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      TabOrder = 1
    end
    object cbScreenName: TcxComboBox
      Left = 133
      Top = 32
      Width = 239
      Height = 24
      ParentFont = False
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      Properties.OnChange = cbScreenNamePropertiesChange
      ShowHint = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  object cxgData: TcxGrid
    Left = 0
    Top = 63
    Width = 792
    Height = 470
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnResize = cxgDataResize
    object cxgDataDBTableView1: TcxGridDBTableView
      DataController.DataSource = dscData
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object fcNAME: TcxGridDBColumn
        Caption = 'Component Name'
        HeaderAlignmentHorz = taCenter
        MinWidth = 135
        Options.Editing = False
        Options.Filtering = False
        Width = 140
        DataBinding.FieldName = 'NAME'
      end
      object fcTEXT: TcxGridDBColumn
        Caption = 'Component Text'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Properties.BlobPaintStyle = bpsText
        Properties.ImmediatePopup = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 265
        Options.Filtering = False
        Width = 265
        DataBinding.FieldName = 'TEXT'
      end
      object fcHINT: TcxGridDBColumn
        Caption = 'Component Hint'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Properties.BlobPaintStyle = bpsText
        Properties.ImmediatePopup = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 260
        Options.Filtering = False
        Width = 265
        DataBinding.FieldName = 'HINT'
      end
      object fcENABLED: TcxGridDBColumn
        Caption = 'Enabled'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Filtering = False
        Width = 50
        DataBinding.FieldName = 'ENABLED'
      end
      object fcVISIBLED: TcxGridDBColumn
        Caption = 'Visibled'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayUnchecked = 'False'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Filtering = False
        Width = 50
        DataBinding.FieldName = 'VISIBLED'
      end
    end
    object cxgDataLevel1: TcxGridLevel
      GridView = cxgDataDBTableView1
    end
  end
  object trnsDefault: TJvUIBTransaction
    Left = 80
    Top = 208
  end
  object dsTemp: TJvUIBDataSet
    Transaction = trnsDefault
    Left = 128
    Top = 208
  end
  object dsData: TJvUIBDataSet
    Transaction = trnsDefault
    SQL.Strings = (
      'SELECT'
      '  NAME, TEXT, HINT, VISIBLED, ENABLED'
      'FROM'
      '  SP_GET_COMPONENTS_LIST('
      '   :LANGUAGE, :APPLICATION_NAME, :SCREEN_NAME)')
    Left = 81
    Top = 256
  end
  object dspData: TDataSetProvider
    DataSet = dsData
    Left = 128
    Top = 256
  end
  object cdsData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspData'
    BeforeClose = cdsDataBeforeClose
    AfterPost = cdsDataAfterPost
    Left = 176
    Top = 256
    object cdsDataNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object cdsDataTEXT: TMemoField
      FieldName = 'TEXT'
      BlobType = ftMemo
      Size = 8
    end
    object cdsDataHINT: TMemoField
      FieldName = 'HINT'
      BlobType = ftMemo
      Size = 8
    end
    object cdsDataVISIBLED: TSmallintField
      FieldName = 'VISIBLED'
    end
    object cdsDataENABLED: TSmallintField
      FieldName = 'ENABLED'
    end
  end
  object dscData: TDataSource
    DataSet = cdsData
    Left = 224
    Top = 256
  end
  object dsUpdate: TJvUIBQuery
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_UPDATE_COMP_EX('
      '  :LANGUAGE, :APPLICATION_NAME, :SCREEN_NAME,'
      '  :NAME, :TEXT, :HINT, :VISIBLED, :ENABLED)')
    Transaction = trnsDefault
    Left = 176
    Top = 208
  end
end