object frmSelectPrivince: TfrmSelectPrivince
  Left = 385
  Top = 108
  Width = 635
  Height = 474
  Caption = 'frmSelectPrivince'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnClientContainer: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 446
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnTop: TRzPanel
      Left = 0
      Top = 0
      Width = 627
      Height = 81
      Align = alTop
      BorderInner = fsFlat
      BorderOuter = fsGroove
      TabOrder = 1
      DesignSize = (
        624
        78)
      object Label7: TLabel
        Left = 9
        Top = 11
        Width = 104
        Height = 22
        AutoSize = False
        Caption = ' '#3588#3657#3609#3627#3634#3592#3634#3585
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
        Left = 9
        Top = 35
        Width = 104
        Height = 22
        AutoSize = False
        Caption = ' '#3586#3657#3629#3588#3623#3634#3617#3588#3657#3609#3627#3634
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
      object cmbSearchType: TRzComboBox
        Left = 116
        Top = 12
        Width = 141
        Height = 21
        Ctl3D = False
        FocusColor = 16766975
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
        Items.Strings = (
          'AAA'
          'BBB'
          'CCC')
      end
      object edSearchText: TRzEdit
        Left = 116
        Top = 35
        Width = 427
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        Color = 15794175
        Ctl3D = False
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 16766975
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object btnSearch: TRzBitBtn
        Left = 544
        Top = 33
        Width = 77
        Height = 27
        Anchors = [akTop, akRight]
        Caption = #3588#3657#3609#3627#3634
        Color = 16747546
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
    end
    object ListView: TListView
      Left = 0
      Top = 81
      Width = 627
      Height = 365
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clInfoBk
      Columns = <
        item
          Caption = #3619#3627#3633#3626
          Width = 80
        end
        item
          Caption = #3594#3639#3656#3629#3585#3629#3591#3607#3640#3609
          Width = 400
        end>
      ColumnClick = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FlatScrollBars = True
      GridLines = True
      Items.Data = {
        4D0000000300000000000000FFFFFFFFFFFFFFFF000000000000000002616100
        000000FFFFFFFFFFFFFFFF000000000000000002626200000000FFFFFFFFFFFF
        FFFF0000000000000000026363}
      RowSelect = True
      ParentFont = False
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
end