object frmCustomerList: TfrmCustomerList
  Left = 0
  Top = 0
  Width = 800
  Height = 600
  TabOrder = 0
  OnResize = FrameResize
  DesignSize = (
    800
    600)
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = 8421440
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      800
      30)
    object lbSearchText: TLabel
      Left = 8
      Top = 8
      Width = 117
      Height = 14
      Caption = 'Enter Text to Search'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edSearchText: TcxTextEdit
      Left = 136
      Top = 4
      Width = 582
      Height = 22
      Hint = 'Search Text|Enter text to perform a search'
      Anchors = [akLeft, akTop, akRight]
      ParentShowHint = False
      Properties.OnChange = edSearchTextPropertiesChange
      ShowHint = False
      TabOrder = 0
      OnKeyPress = edSearchTextKeyPress
    end
    object btnSearch: TcxButton
      Left = 717
      Top = 5
      Width = 30
      Height = 20
      Hint = 'Search|Click to perform a searchs'
      Anchors = [akTop, akRight]
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = btnSearchClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object cbFilter: TcxCheckBox
      Left = 746
      Top = 4
      Width = 49
      Height = 22
      TabStop = False
      Anchors = [akTop, akRight]
      Properties.DisplayUnchecked = 'False'
      Properties.OnChange = cbFilterPropertiesChange
      TabOrder = 2
    end
  end
  object dbgList: TDBGrid
    Left = 2
    Top = 31
    Width = 796
    Height = 568
    Anchors = [akLeft, akTop, akRight, akBottom]
    Ctl3D = False
    DataSource = dscCustomer
    Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgListDblClick
    OnKeyPress = dbgListKeyPress
    OnTitleClick = dbgListTitleClick
    Columns = <
      item
        Alignment = taCenter
        Color = 16250871
        Expanded = False
        FieldName = 'CODE'
        Title.Alignment = taCenter
        Title.Caption = 'Customer Code'
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FULL_NAME'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 350
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 16250871
        Expanded = False
        FieldName = 'CUSTOMER_DESC'
        Title.Alignment = taCenter
        Title.Caption = 'Type'
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'STATUS_DESC'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = THAI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end>
  end
  object trnsDefault: TJvUIBTransaction
    Left = 592
    Top = 440
  end
  object dsCustomer: TJvUIBDataSet
    Transaction = trnsDefault
    SQL.Strings = (
      'SELECT'
      '  RECORD_ID,'
      '  STATUS_DESC,'
      '  CODE,'
      '  FULL_NAME,'
      '  CUSTOMER_TYPE,'
      '  CUSTOMER_DESC'
      'FROM'
      '  SP_GET_PERSONAL_ALL_LIST(:LANGUAGE)')
    Left = 592
    Top = 482
  end
  object dspCustomer: TDataSetProvider
    DataSet = dsCustomer
    Left = 640
    Top = 482
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    PacketRecords = 200
    Params = <>
    ProviderName = 'dspCustomer'
    Left = 688
    Top = 482
    object cdsCustomerRECORD_ID: TIntegerField
      FieldName = 'RECORD_ID'
    end
    object cdsCustomerSTATUS_DESC: TStringField
      FieldName = 'STATUS_DESC'
    end
    object cdsCustomerCODE: TStringField
      FieldName = 'CODE'
    end
    object cdsCustomerFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 141
    end
    object cdsCustomerCUSTOMER_TYPE: TSmallintField
      FieldName = 'CUSTOMER_TYPE'
    end
    object cdsCustomerCUSTOMER_DESC: TStringField
      FieldName = 'CUSTOMER_DESC'
    end
  end
  object dscCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 736
    Top = 482
  end
end