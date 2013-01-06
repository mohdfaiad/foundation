object frmDonatorProfile: TfrmDonatorProfile
  Left = 312
  Top = 111
  BorderStyle = bsToolWindow
  Caption = 'DonatorProfile'
  ClientHeight = 557
  ClientWidth = 806
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
    Width = 806
    Height = 557
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel3: TBevel
      Left = 0
      Top = 105
      Width = 806
      Height = 421
      Align = alClient
      Shape = bsFrame
    end
    object Bevel2: TBevel
      Left = 0
      Top = 105
      Width = 806
      Height = 421
      Align = alClient
      Shape = bsFrame
    end
    object RzPanel1: TRzPanel
      Left = 0
      Top = 526
      Width = 806
      Height = 31
      Align = alBottom
      BorderOuter = fsNone
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        806
        31)
      object btnOK: TRzBitBtn
        Left = 386
        Top = 3
        Width = 80
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = 'F5-'#3619#3633#3610#3610#3619#3636#3592#3634#3588
        Color = 16765695
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 0
        OnClick = btnOKClick
      end
      object RzBitBtn2: TRzBitBtn
        Left = 467
        Top = 3
        Width = 153
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = 'F7-'#3648#3614#3636#3656#3617#3611#3619#3632#3623#3633#3605#3636#3612#3641#3657#3610#3619#3636#3592#3634#3588#3651#3627#3617#3656
        Color = 16761992
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 1
      end
      object btnEditProfile: TRzBitBtn
        Left = 621
        Top = 3
        Width = 102
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = 'F6-'#3649#3585#3657#3652#3586#3611#3619#3632#3623#3633#3605#3636
        Color = 16761992
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 2
        OnClick = btnEditProfileClick
      end
      object btnClose: TRzBitBtn
        Left = 723
        Top = 3
        Width = 81
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = 'ESC-'#3629#3629#3585
        Color = 16761992
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 3
        OnClick = btnCloseClick
      end
    end
    object pgDonator: TPageControl
      Left = 2
      Top = 109
      Width = 801
      Height = 413
      ActivePage = tabDonatorInfo
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 1
      TabStop = False
      object tabDonatorInfo: TTabSheet
        Caption = #3611#3619#3632#3623#3633#3605#3636#3612#3641#3657#3610#3619#3636#3592#3634#3588
        Enabled = False
        DesignSize = (
          793
          379)
        object Label1: TLabel
          Left = 247
          Top = 26
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3594#3639#3656#3629
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
          Left = 3
          Top = 26
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3588#3635#3609#3635#3627#3609#3657#3634
          Color = 11579568
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
          Left = 3
          Top = 50
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3623#3633#3609#3648#3585#3636#3604
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
        object Label4: TLabel
          Left = 3
          Top = 74
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3648#3610#3629#3619#3660#3617#3639#3629#3606#3639#3629
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
          Left = 247
          Top = 50
          Width = 100
          Height = 22
          AutoSize = False
          Caption = '  EMail'
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
        object Label6: TLabel
          Left = 247
          Top = 74
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3612#3641#3657#3605#3636#3604#3605#3656#3629
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
          Left = 489
          Top = 26
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3609#3634#3617#3626#3585#3640#3621
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
          Left = 489
          Top = 50
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3648#3610#3629#3619#3660#3610#3657#3634#3609
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
        object Label9: TLabel
          Left = 489
          Top = 74
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3629#3634#3594#3637#3614
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
          Left = 247
          Top = 123
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3627#3617#3641#3656
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
        object Label11: TLabel
          Left = 3
          Top = 123
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3610#3657#3634#3609#3648#3621#3586#3607#3637#3656
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
        object Label12: TLabel
          Left = 3
          Top = 147
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3606#3609#3609
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
        object Label14: TLabel
          Left = 247
          Top = 147
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3605#3635#3610#3621'/'#3649#3586#3623#3591
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
        object Label15: TLabel
          Left = 3
          Top = 171
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3592#3633#3591#3627#3623#3633#3604
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
        object Label16: TLabel
          Left = 489
          Top = 123
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3605#3619#3629#3585'/'#3595#3629#3618
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
        object Label17: TLabel
          Left = 489
          Top = 147
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3629#3635#3648#3616#3629'/'#3648#3586#3605
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
        object Label18: TLabel
          Left = 247
          Top = 171
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
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
        object lbHead1: TLabel
          Tag = 100
          Left = 0
          Top = 0
          Width = 789
          Height = 20
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = '       '#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3607#3633#3656#3623#3652#3611
          Color = clTeal
          Font.Charset = THAI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label28: TLabel
          Tag = 100
          Left = 0
          Top = 99
          Width = 789
          Height = 20
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = '       '#3607#3637#3656#3629#3618#3641#3656#3611#3633#3592#3592#3640#3610#3633#3609
          Color = clTeal
          Font.Charset = THAI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label29: TLabel
          Tag = 100
          Left = 0
          Top = 220
          Width = 789
          Height = 20
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = '       '#3607#3637#3656#3629#3618#3641#3656#3607#3637#3656#3592#3633#3604#3626#3656#3591#3648#3629#3585#3626#3634#3619
          Color = clTeal
          Font.Charset = THAI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label33: TLabel
          Left = 3
          Top = 195
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3627#3617#3634#3618#3648#3627#3605#3640
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
        object Label19: TLabel
          Left = 247
          Top = 244
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3627#3617#3641#3656
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
        object Label20: TLabel
          Left = 3
          Top = 244
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3610#3657#3634#3609#3648#3621#3586#3607#3637#3656
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
        object Label21: TLabel
          Left = 3
          Top = 268
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3606#3609#3609
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
        object Label23: TLabel
          Left = 247
          Top = 268
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3605#3635#3610#3621'/'#3649#3586#3623#3591
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
        object Label24: TLabel
          Left = 3
          Top = 292
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3592#3633#3591#3627#3623#3633#3604
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
        object Label25: TLabel
          Left = 489
          Top = 244
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3605#3619#3629#3585'/'#3595#3629#3618
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
        object Label26: TLabel
          Left = 489
          Top = 268
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3629#3635#3648#3616#3629'/'#3648#3586#3605
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
        object Label27: TLabel
          Left = 247
          Top = 292
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
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
        object Label30: TLabel
          Left = 3
          Top = 316
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3627#3617#3634#3618#3648#3627#3605#3640
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
        object RzComboBox1: TRzComboBox
          Left = 104
          Top = 27
          Width = 141
          Height = 24
          Color = 15395562
          Ctl3D = False
          FocusColor = 16766975
          FrameVisible = True
          ItemHeight = 16
          ParentCtl3D = False
          TabOrder = 0
        end
        object RzDBEdit1: TRzDBEdit
          Left = 347
          Top = 27
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_name'
          Color = 15395562
          TabOrder = 1
        end
        object RzDBEdit2: TRzDBEdit
          Left = 591
          Top = 27
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_lname'
          Color = 15395562
          TabOrder = 2
        end
        object RzDBEdit3: TRzDBEdit
          Left = 347
          Top = 51
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_email'
          Color = 15395562
          TabOrder = 3
        end
        object RzDBEdit4: TRzDBEdit
          Left = 591
          Top = 51
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_phone'
          Color = 15395562
          TabOrder = 4
        end
        object RzDBEdit5: TRzDBEdit
          Left = 347
          Top = 74
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_contact'
          Color = 15395562
          TabOrder = 5
        end
        object RzDBEdit6: TRzDBEdit
          Left = 591
          Top = 74
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_occupat'
          Color = 15395562
          TabOrder = 6
        end
        object RzDBEdit7: TRzDBEdit
          Left = 104
          Top = 74
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_mobile'
          Color = 15395562
          TabOrder = 7
        end
        object RzMaskEdit1: TRzMaskEdit
          Left = 104
          Top = 51
          Width = 141
          Height = 22
          Color = 15395562
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object RzDBEdit8: TRzDBEdit
          Left = 104
          Top = 122
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_addr1'
          Color = 15395562
          TabOrder = 9
        end
        object RzDBEdit9: TRzDBEdit
          Left = 347
          Top = 122
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_mu1'
          Color = 15395562
          TabOrder = 10
        end
        object RzDBEdit10: TRzDBEdit
          Left = 347
          Top = 146
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_tambon1'
          Color = 15395562
          TabOrder = 11
        end
        object RzDBEdit15: TRzDBEdit
          Left = 104
          Top = 170
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_province1'
          Color = 15395562
          TabOrder = 12
        end
        object RzDBEdit12: TRzDBEdit
          Left = 591
          Top = 146
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_amphor1'
          Color = 15395562
          TabOrder = 13
        end
        object RzDBEdit13: TRzDBEdit
          Left = 347
          Top = 170
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_zipcode1'
          Color = 15395562
          TabOrder = 14
        end
        object RzDBEdit14: TRzDBEdit
          Left = 104
          Top = 194
          Width = 385
          Height = 24
          DataSource = dsDonator
          DataField = 'do_remark1'
          Color = 15395562
          TabOrder = 15
        end
        object RzDBEdit16: TRzDBEdit
          Left = 104
          Top = 146
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_street1'
          Color = 15395562
          TabOrder = 16
        end
        object RzDBEdit17: TRzDBEdit
          Left = 591
          Top = 122
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_soi1'
          Color = 15395562
          TabOrder = 17
        end
        object RzDBEdit18: TRzDBEdit
          Left = 104
          Top = 242
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_addr2'
          Color = 15395562
          TabOrder = 18
        end
        object RzDBEdit19: TRzDBEdit
          Left = 104
          Top = 266
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_street2'
          Color = 15395562
          TabOrder = 19
        end
        object RzDBEdit21: TRzDBEdit
          Left = 104
          Top = 314
          Width = 385
          Height = 24
          DataSource = dsDonator
          DataField = 'do_remark2'
          Color = 15395562
          TabOrder = 20
        end
        object RzDBEdit22: TRzDBEdit
          Left = 347
          Top = 242
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_mu2'
          Color = 15395562
          TabOrder = 21
        end
        object RzDBEdit23: TRzDBEdit
          Left = 347
          Top = 266
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_tambon2'
          Color = 15395562
          TabOrder = 22
        end
        object RzDBEdit24: TRzDBEdit
          Left = 104
          Top = 290
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_province2'
          Color = 15395562
          TabOrder = 23
        end
        object RzDBEdit25: TRzDBEdit
          Left = 591
          Top = 242
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_soi2'
          Color = 15395562
          TabOrder = 24
        end
        object RzDBEdit26: TRzDBEdit
          Left = 591
          Top = 266
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_amphor2'
          Color = 15395562
          TabOrder = 25
        end
        object RzDBEdit27: TRzDBEdit
          Left = 347
          Top = 290
          Width = 142
          Height = 24
          DataSource = dsDonator
          DataField = 'do_zipcode2'
          Color = 15395562
          TabOrder = 26
        end
      end
      object tabDonatorHistory: TTabSheet
        Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3610#3619#3636#3592#3634#3588
        ImageIndex = 1
        OnShow = tabDonatorHistoryShow
        object Splitter1: TSplitter
          Left = 0
          Top = 206
          Width = 793
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 793
          Height = 24
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          Visible = False
        end
        object Panel2: TPanel
          Left = 0
          Top = 338
          Width = 793
          Height = 41
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object cxGridBillDetails: TcxGrid
          Left = 0
          Top = 209
          Width = 793
          Height = 129
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object cxGridBillDetailsDBTableView1: TcxGridDBTableView
            DataController.DataSource = dsDonatorHistoryDtl
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridBillDetailsDBTableView1item: TcxGridDBColumn
              Caption = #3621#3635#3604#3633#3610
              DataBinding.FieldName = 'item'
            end
            object cxGridBillDetailsDBTableView1bdno: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
              DataBinding.FieldName = 'bdno'
            end
            object cxGridBillDetailsDBTableView1bdobject: TcxGridDBColumn
              Caption = #3623#3633#3605#3606#3640#3611#3619#3632#3626#3591#3588#3660
              DataBinding.FieldName = 'bdobject'
            end
            object cxGridBillDetailsDBTableView1bdfound: TcxGridDBColumn
              Caption = #3585#3629#3591#3607#3640#3609
              DataBinding.FieldName = 'bdfound'
            end
            object cxGridBillDetailsDBTableView1bdamount: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3604#3591#3636#3609
              DataBinding.FieldName = 'bdamount'
            end
            object cxGridBillDetailsDBTableView1bdbankbook: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656#3610#3633#3597#3594#3637
              DataBinding.FieldName = 'bdbankbook'
            end
            object cxGridBillDetailsDBTableView1bdacccode: TcxGridDBColumn
              Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
              DataBinding.FieldName = 'bdacccode'
            end
            object cxGridBillDetailsDBTableView1bdfoundtype: TcxGridDBColumn
              DataBinding.FieldName = 'bdfoundtype'
            end
            object cxGridBillDetailsDBTableView1bdpaytype: TcxGridDBColumn
              DataBinding.FieldName = 'bdpaytype'
            end
            object cxGridBillDetailsDBTableView1bdflag: TcxGridDBColumn
              DataBinding.FieldName = 'bdflag'
            end
          end
          object cxGridBillDetailsLevel1: TcxGridLevel
            GridView = cxGridBillDetailsDBTableView1
          end
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 24
          Width = 793
          Height = 182
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 3
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            DataController.DataSource = dsDonatorHistoryHdr
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1bdate: TcxGridDBColumn
              Caption = #3623#3633#3609#3607#3637#3656#3619#3633#3610#3610#3619#3636#3592#3634#3588
              DataBinding.FieldName = 'bdate'
            end
            object cxGridDBTableView1bno: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
              DataBinding.FieldName = 'bno'
            end
            object cxGridDBTableView1btotal: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              DataBinding.FieldName = 'btotal'
            end
            object cxGridDBTableView1bpaytype: TcxGridDBColumn
              Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3594#3635#3619#3632
              Width = 111
              DataBinding.FieldName = 'bpaytype'
            end
            object cxGridDBTableView1bbank: TcxGridDBColumn
              Caption = #3608#3609#3634#3588#3634#3619
              DataBinding.FieldName = 'bbank'
            end
            object cxGridDBTableView1bbankname: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3608#3609#3634#3588#3634#3619
              DataBinding.FieldName = 'bbankname'
            end
            object cxGridDBTableView1bbrance: TcxGridDBColumn
              Caption = #3626#3634#3586#3634
              DataBinding.FieldName = 'bbrance'
            end
            object cxGridDBTableView1brefno: TcxGridDBColumn
              Caption = #3648#3621#3586#3607#3637#3656#3629#3657#3634#3591#3629#3636#3591
              DataBinding.FieldName = 'brefno'
            end
            object cxGridDBTableView1bperiod: TcxGridDBColumn
              DataBinding.FieldName = 'bperiod'
            end
            object cxGridDBTableView1brefdate: TcxGridDBColumn
              DataBinding.FieldName = 'brefdate'
            end
            object cxGridDBTableView1buserid: TcxGridDBColumn
              DataBinding.FieldName = 'buserid'
            end
            object cxGridDBTableView1bfrom: TcxGridDBColumn
              DataBinding.FieldName = 'bfrom'
            end
            object cxGridDBTableView1bryid: TcxGridDBColumn
              DataBinding.FieldName = 'bryid'
            end
            object cxGridDBTableView1bloc: TcxGridDBColumn
              DataBinding.FieldName = 'bloc'
            end
            object cxGridDBTableView1bspiid: TcxGridDBColumn
              DataBinding.FieldName = 'bspiid'
            end
            object cxGridDBTableView1bentry: TcxGridDBColumn
              DataBinding.FieldName = 'bentry'
            end
            object cxGridDBTableView1bcomid: TcxGridDBColumn
              DataBinding.FieldName = 'bcomid'
            end
            object cxGridDBTableView1bcancelid: TcxGridDBColumn
              DataBinding.FieldName = 'bcancelid'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3619#3633#3610#3648#3588#3619#3639#3656#3629#3591#3619#3634#3594#3629#3636#3626#3619#3636#3618#3634#3616#3619#3603#3660
        ImageIndex = 2
        object Splitter2: TSplitter
          Left = 0
          Top = 206
          Width = 793
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 793
          Height = 24
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          Visible = False
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 24
          Width = 793
          Height = 182
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView2: TcxGridDBTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'No.'
              Width = 47
              DataBinding.FieldName = 'item'
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #3623#3633#3605#3606#3640#3611#3619#3632#3626#3591#3588#3660
              Width = 125
              DataBinding.FieldName = 'bdobject'
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = #3585#3629#3591#3607#3640#3609
              SortOrder = soAscending
              Width = 256
              DataBinding.FieldName = 'bdfound'
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 151
              DataBinding.FieldName = 'bdamount'
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637#3608#3609#3634#3588#3634#3619
              Width = 178
              DataBinding.FieldName = 'bdbankbook'
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = #3627#3617#3634#3618#3648#3621#3586#3610#3633#3597#3594#3637
              Width = 122
              DataBinding.FieldName = 'bdacccode'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 209
          Width = 793
          Height = 129
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView3: TcxGridDBTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'No.'
              SortOrder = soAscending
              Width = 47
              DataBinding.FieldName = 'item'
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #3623#3633#3605#3606#3640#3611#3619#3632#3626#3591#3588#3660
              Width = 125
              DataBinding.FieldName = 'bdobject'
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = #3585#3629#3591#3607#3640#3609
              SortOrder = soAscending
              Width = 256
              DataBinding.FieldName = 'bdfound'
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 151
              DataBinding.FieldName = 'bdamount'
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637#3608#3609#3634#3588#3634#3619
              Width = 178
              DataBinding.FieldName = 'bdbankbook'
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = #3627#3617#3634#3618#3648#3621#3586#3610#3633#3597#3594#3637
              Width = 122
              DataBinding.FieldName = 'bdacccode'
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 338
          Width = 793
          Height = 41
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 3
        end
      end
      object TabSheet4: TTabSheet
        Caption = #3611#3619#3632#3623#3633#3605#3636#3610#3633#3605#3619#3612#3641#3657#3617#3637#3629#3640#3611#3585#3634#3619#3588#3640#3603
        ImageIndex = 3
        object Splitter3: TSplitter
          Left = 0
          Top = 206
          Width = 793
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 793
          Height = 24
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          Visible = False
        end
        object cxGrid4: TcxGrid
          Left = 0
          Top = 24
          Width = 793
          Height = 182
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView4: TcxGridDBTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'No.'
              Width = 47
              DataBinding.FieldName = 'item'
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = #3623#3633#3605#3606#3640#3611#3619#3632#3626#3591#3588#3660
              Width = 125
              DataBinding.FieldName = 'bdobject'
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = #3585#3629#3591#3607#3640#3609
              SortOrder = soAscending
              Width = 256
              DataBinding.FieldName = 'bdfound'
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 151
              DataBinding.FieldName = 'bdamount'
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637#3608#3609#3634#3588#3634#3619
              Width = 178
              DataBinding.FieldName = 'bdbankbook'
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = #3627#3617#3634#3618#3648#3621#3586#3610#3633#3597#3594#3637
              Width = 122
              DataBinding.FieldName = 'bdacccode'
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object cxGrid5: TcxGrid
          Left = 0
          Top = 209
          Width = 793
          Height = 129
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView5: TcxGridDBTableView
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn25: TcxGridDBColumn
              Caption = 'No.'
              SortOrder = soAscending
              Width = 47
              DataBinding.FieldName = 'item'
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = #3623#3633#3605#3606#3640#3611#3619#3632#3626#3591#3588#3660
              Width = 125
              DataBinding.FieldName = 'bdobject'
            end
            object cxGridDBColumn27: TcxGridDBColumn
              Caption = #3585#3629#3591#3607#3640#3609
              SortOrder = soAscending
              Width = 256
              DataBinding.FieldName = 'bdfound'
            end
            object cxGridDBColumn28: TcxGridDBColumn
              Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 151
              DataBinding.FieldName = 'bdamount'
            end
            object cxGridDBColumn29: TcxGridDBColumn
              Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637#3608#3609#3634#3588#3634#3619
              Width = 178
              DataBinding.FieldName = 'bdbankbook'
            end
            object cxGridDBColumn30: TcxGridDBColumn
              Caption = #3627#3617#3634#3618#3648#3621#3586#3610#3633#3597#3594#3637
              Width = 122
              DataBinding.FieldName = 'bdacccode'
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBTableView5
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 338
          Width = 793
          Height = 41
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 3
        end
      end
    end
    object PageControl2: TPageControl
      Left = 0
      Top = 0
      Width = 806
      Height = 105
      ActivePage = TabSheet5
      Align = alTop
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 2
      object TabSheet5: TTabSheet
        Caption = 'Text Search'
        object Label39: TLabel
          Left = 3
          Top = 2
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3594#3639#3656#3629#3612#3641#3657#3610#3619#3636#3592#3634#3588
          Color = 11579568
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label40: TLabel
          Left = 346
          Top = 1
          Width = 100
          Height = 22
          AutoSize = False
          Caption = ' '#3609#3634#3617#3626#3585#3640#3621#3612#3641#3657#3610#3619#3636#3592#3634#3588
          Color = 11579568
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object lbDonatorName: TLabel
          Left = 3
          Top = 26
          Width = 443
          Height = 27
          AutoSize = False
          Caption = ' '#3594#3639#3656#3629#3612#3641#3657#3610#3619#3636#3592#3634#3588
          Color = 7237230
          Font.Charset = THAI_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object lbDonatorLName: TLabel
          Left = 448
          Top = 26
          Width = 236
          Height = 27
          AutoSize = False
          Caption = ' '#3594#3639#3656#3629#3612#3641#3657#3610#3619#3636#3592#3634#3588
          Color = 7237230
          Font.Charset = THAI_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object edSearchName: TRzEdit
          Left = 106
          Top = 1
          Width = 236
          Height = 22
          Ctl3D = False
          FocusColor = 16766975
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = edSearchNameKeyDown
        end
        object edSearchLName: TRzEdit
          Left = 449
          Top = 1
          Width = 236
          Height = 22
          Ctl3D = False
          FocusColor = 16766975
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = edSearchNameKeyDown
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Grid Search'
        ImageIndex = 1
      end
    end
  end
  object cdsSearch: TDataSource
    DataSet = frmReceive.cdsSearch
    Left = 454
    Top = 299
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 454
    Top = 219
  end
  object dsDonator: TDataSource
    DataSet = frmReceive.cdsDonator
    Left = 134
    Top = 219
  end
  object dsDonatorHistoryHdr: TDataSource
    DataSet = frmReceive.cdsDonatorHistoryHdr
    Left = 270
    Top = 203
  end
  object dsDonatorHistoryDtl: TDataSource
    DataSet = frmReceive.cdsDonatorHistoryDtl
    Left = 262
    Top = 259
  end
end