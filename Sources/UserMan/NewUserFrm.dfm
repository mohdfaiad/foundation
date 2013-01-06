object frmNewUser: TfrmNewUser
  Left = 412
  Top = 222
  Width = 602
  Height = 230
  BorderIcons = [biSystemMenu]
  Caption = 'New User'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PaneUser: TRzPanel
    Left = 0
    Top = 4
    Width = 594
    Height = 198
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    object pnAllClients: TRzPanel
      Left = 0
      Top = 0
      Width = 594
      Height = 169
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 0
      object Label9: TLabel
        Left = 1
        Top = 2
        Width = 116
        Height = 24
        AutoSize = False
        Caption = ' '#3619#3627#3633#3626
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
      object Label1: TLabel
        Left = 1
        Top = 27
        Width = 116
        Height = 24
        AutoSize = False
        Caption = ' '#3594#3639#3656#3629'-'#3626#3585#3640#3621
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
        Left = 1
        Top = 52
        Width = 116
        Height = 24
        AutoSize = False
        Caption = ' Username'
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
      object Label6: TLabel
        Left = 289
        Top = 4
        Width = 74
        Height = 24
        AutoSize = False
        Caption = ' '#3585#3621#3640#3656#3617#3612#3641#3657#3651#3594#3657#3591#3634#3609
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
      object Label2: TLabel
        Left = 1
        Top = 77
        Width = 116
        Height = 24
        AutoSize = False
        Caption = ' Password'
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
      object Label4: TLabel
        Left = 1
        Top = 102
        Width = 116
        Height = 24
        AutoSize = False
        Caption = ' Confirm Password'
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
      object cmbRoles: TRzComboBox
        Left = 365
        Top = 6
        Width = 186
        Height = 21
        Ctl3D = False
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
      end
      object edUserCode: TRzEdit
        Left = 119
        Top = 3
        Width = 166
        Height = 24
        AutoSize = False
        FrameVisible = True
        TabOrder = 1
      end
      object edFullName: TRzEdit
        Left = 119
        Top = 27
        Width = 166
        Height = 24
        AutoSize = False
        FrameVisible = True
        TabOrder = 2
      end
      object edUserName: TRzEdit
        Left = 119
        Top = 52
        Width = 166
        Height = 24
        AutoSize = False
        FrameVisible = True
        TabOrder = 3
      end
      object edPassword: TRzEdit
        Left = 119
        Top = 76
        Width = 166
        Height = 24
        AutoSize = False
        FrameVisible = True
        PasswordChar = '*'
        TabOrder = 4
      end
      object edConfirmPassword: TRzEdit
        Left = 119
        Top = 101
        Width = 166
        Height = 24
        AutoSize = False
        FrameVisible = True
        PasswordChar = '*'
        TabOrder = 5
      end
    end
    object RzPanel3: TRzPanel
      Left = 0
      Top = 159
      Width = 594
      Height = 39
      Align = alBottom
      BorderOuter = fsNone
      Color = 11579568
      TabOrder = 1
      DesignSize = (
        594
        39)
      object BtnSave: TRzBitBtn
        Left = 377
        Top = 7
        Width = 102
        Height = 27
        Anchors = [akTop, akRight]
        Caption = 'F5-'#3610#3633#3609#3607#3638#3585
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
        OnClick = BtnSaveClick
      end
      object BtnCancel: TRzBitBtn
        Left = 481
        Top = 7
        Width = 101
        Height = 27
        Anchors = [akTop, akRight]
        Caption = #3618#3585#3648#3621#3636#3585
        Color = 16753994
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnClick = BtnCancelClick
      end
    end
  end
  object rzTopPanel: TRzPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 4
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    TabOrder = 1
    VisualStyle = vsGradient
  end
end