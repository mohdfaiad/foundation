object frmFundInfo: TfrmFundInfo
  Left = 301
  Top = 107
  Width = 684
  Height = 507
  BorderIcons = [biSystemMenu]
  Caption = 'frmFundInfo'
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnClientContainer: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 480
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnTop: TRzPanel
      Left = 0
      Top = 0
      Width = 676
      Height = 417
      Align = alTop
      BorderInner = fsFlat
      BorderOuter = fsGroove
      TabOrder = 0
      object Label7: TLabel
        Left = 17
        Top = 11
        Width = 100
        Height = 22
        AutoSize = False
        Caption = ' '#3594#3635#3619#3632#3648#3591#3636#3609#3649#3610#3610
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
      object Label8: TLabel
        Left = 17
        Top = 35
        Width = 100
        Height = 22
        AutoSize = False
        Caption = ' '#3626#3634#3586#3634
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
      object RzComboBox2: TRzComboBox
        Left = 120
        Top = 11
        Width = 169
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
      object edDonatorName: TRzEdit
        Left = 120
        Top = 34
        Width = 409
        Height = 24
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
    end
  end
end