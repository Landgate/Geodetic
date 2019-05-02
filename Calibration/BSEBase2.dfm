object frmBaseline: TfrmBaseline
  Left = 575
  Top = 364
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit Baseline'
  ClientHeight = 431
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcBaseline: TPageControl
    Left = 0
    Top = 0
    Width = 612
    Height = 431
    ActivePage = tsBaseline
    Align = alClient
    TabOrder = 0
    object tsBaseline: TTabSheet
      Caption = 'Makes'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 2
        Top = 4
        Width = 116
        Height = 29
        Caption = 'Baselines'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 4
        Top = 61
        Width = 31
        Height = 13
        Caption = 'Name:'
      end
      object DBStatusLabel1: TDBStatusLabel
        Left = 418
        Top = 71
        Width = 85
        Height = 13
        DatasetName = 'Edit Mode'
        Captions.Strings = (
          'Edit Mode:')
        ShowOptions = doBoth
      end
      object dbgridbaseline: TwwDBGrid
        Left = 8
        Top = 85
        Width = 465
        Height = 291
        Selected.Strings = (
          'BaselineName'#9'25'#9'Name'
          'BaselineLocation'#9'25'#9'Location'
          'BaselineCalibrationDate'#9'19'#9'Calibration Date')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dmBase.dsFilteredBaseline
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
      end
      object btnClose1: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 1
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object btnNext1: TBitBtn
        Left = 522
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 2
        OnClick = btnNext1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnHelp1: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = btnHelp1Click
        Kind = bkHelp
      end
      object wwDBEdit4: TwwDBEdit
        Left = 37
        Top = 57
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object navBaseline: TwwDBNavigator
        Left = 8
        Top = 377
        Width = 469
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dmBase.dsFilteredBaseline
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        object navBaselineFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 67
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object navBaselinePriorPage: TwwNavButton
          Left = 67
          Top = 0
          Width = 67
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object navBaselinePrior: TwwNavButton
          Left = 134
          Top = 0
          Width = 67
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object navBaselineNext: TwwNavButton
          Left = 201
          Top = 0
          Width = 67
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object navBaselineNextPage: TwwNavButton
          Left = 268
          Top = 0
          Width = 67
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object navBaselineLast: TwwNavButton
          Left = 335
          Top = 0
          Width = 67
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object navBaselineRefresh: TwwNavButton
          Left = 402
          Top = 0
          Width = 67
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwRefresh'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsRefresh
        end
      end
      object GroupBox1: TGroupBox
        Left = 246
        Top = 20
        Width = 133
        Height = 57
        Caption = 'Status'
        TabOrder = 6
        object rbtnCurrent: TRadioButton
          Left = 16
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Current'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbtnCurrentClick
        end
        object rbtnArchived: TRadioButton
          Left = 16
          Top = 36
          Width = 113
          Height = 17
          Caption = 'Archived'
          TabOrder = 1
          OnClick = rbtnArchivedClick
        end
      end
      object btnCreateNewBaseline: TBitBtn
        Left = 476
        Top = 86
        Width = 127
        Height = 25
        Caption = 'Create New &Baseline'
        TabOrder = 7
        OnClick = btnCreateNewBaselineClick
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnDeleteBaseline: TBitBtn
        Left = 477
        Top = 117
        Width = 127
        Height = 25
        Caption = '&Delete Baseline'
        TabOrder = 8
        OnClick = btnDeleteBaselineClick
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnArchiveBaseline: TBitBtn
        Left = 477
        Top = 148
        Width = 127
        Height = 25
        Caption = '&Archived Baseline'
        TabOrder = 9
        OnClick = btnArchiveBaselineClick
        Layout = blGlyphRight
        NumGlyphs = 2
      end
    end
    object tsDetails: TTabSheet
      Caption = 'Models'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblBaselineDetails: TLabel
        Left = 2
        Top = 4
        Width = 191
        Height = 29
        Caption = 'Baseline Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBaselineLocation: TLabel
        Left = 179
        Top = 43
        Width = 106
        Height = 13
        Caption = 'Baseline Location:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBaselineAuthority: TLabel
        Left = 37
        Top = 91
        Width = 107
        Height = 13
        Caption = 'Baseline Authority:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblReference: TLabel
        Left = 37
        Top = 210
        Width = 180
        Height = 13
        Caption = 'Baseline Calibration Reference:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblEllipsoid: TLabel
        Left = 193
        Top = 346
        Width = 88
        Height = 13
        Caption = 'Ellipsoid Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblConfLevel: TLabel
        Left = 227
        Top = 162
        Width = 70
        Height = 13
        Caption = 'Conf. Level:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRefHeight: TLabel
        Left = 308
        Top = 162
        Width = 105
        Height = 13
        Caption = 'Reference Height:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblHumidity: TLabel
        Left = 37
        Top = 346
        Width = 117
        Height = 13
        Caption = 'Relative Humidity %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCalibrationDate: TLabel
        Left = 37
        Top = 162
        Width = 148
        Height = 13
        Caption = 'Baseline Calibration Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBaseline: TLabel
        Left = 39
        Top = 43
        Width = 89
        Height = 13
        Caption = 'Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUsedByJob: TLabel
        Left = 39
        Top = 136
        Width = 349
        Height = 16
        Caption = 'Baseline has been used for Instrument calibrations'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAuthorityAddress: TLabel
        Left = 244
        Top = 91
        Width = 171
        Height = 13
        Caption = 'Address of Baseline Authority:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnClose2: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Close'
        TabOrder = 0
        OnClick = btnClose2Click
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
      object btnNext2: TBitBtn
        Left = 521
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 1
        OnClick = btnNext2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnBack2: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 2
        OnClick = btnBack2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object dbedtName: TwwDBEdit
        Left = 40
        Top = 57
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbedtNameChange
        OnExit = dbedtNameExit
      end
      object btnHelp2: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = btnHelp2Click
        Kind = bkHelp
      end
      object edtCalibrationRef: TEdit
        Left = 37
        Top = 226
        Width = 305
        Height = 21
        MaxLength = 50
        TabOrder = 9
        OnChange = ChangedValue
      end
      object edtConfLevel: TEdit
        Left = 227
        Top = 178
        Width = 73
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 13
        Text = '95'
        OnChange = ChangedValue
        OnExit = edtConfLevelExit
      end
      object gbStandards: TGroupBox
        Left = 252
        Top = 258
        Width = 236
        Height = 73
        Caption = 'Recommended Uncertainty Standard'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        Visible = False
        object lblConstant: TLabel
          Left = 12
          Top = 20
          Width = 55
          Height = 13
          Caption = 'Constant:'
        end
        object lblPPM: TLabel
          Left = 124
          Top = 20
          Width = 31
          Height = 13
          Caption = 'PPM:'
        end
        object edtStdICPPM: TEdit
          Left = 124
          Top = 36
          Width = 77
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0'
        end
        object bedtStdICConstant: TBtnEdit
          Left = 12
          Top = 36
          Width = 93
          Height = 21
          BtnFont.Charset = DEFAULT_CHARSET
          BtnFont.Color = clNavy
          BtnFont.Height = -11
          BtnFont.Name = 'MS Sans Serif'
          BtnFont.Style = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MinValue = -1.7E308
          MaxValue = 1.000000000000000000
          ParentFont = False
          TabOrder = 0
          Units.Strings = (
            'metres')
          UnitConversions.Strings = (
            '1.0')
          UnitIndex = 0
          DecimalPlaces = -1
        end
      end
      object edtRelHumidity: TEdit
        Left = 37
        Top = 362
        Width = 129
        Height = 21
        TabOrder = 11
        OnChange = ChangedValue
        OnExit = edtRelHumidityExit
      end
      object bedtLegalHeight: TBtnEdit
        Left = 307
        Top = 178
        Width = 103
        Height = 21
        BtnFont.Charset = DEFAULT_CHARSET
        BtnFont.Color = clBlack
        BtnFont.Height = -11
        BtnFont.Name = 'MS Sans Serif'
        BtnFont.Style = [fsBold]
        MinValue = -1.7E308
        MaxValue = 1.7E308
        TabOrder = 8
        Units.Strings = (
          'm')
        UnitConversions.Strings = (
          '1.0'
          '1.0'
          '1.0'
          '1.0')
        UnitIndex = 0
        DecimalPlaces = -1
        OnChange = bedtLegalHeightChange
      end
      object dbedtLocation: TwwDBEdit
        Left = 181
        Top = 57
        Width = 244
        Height = 21
        DataField = 'BaseLineLocation'
        DataSource = dmBase.dsFilteredBaseline
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbedtLocationChange
      end
      object dbedtAuthority: TwwDBEdit
        Left = 38
        Top = 106
        Width = 191
        Height = 21
        DataField = 'BaseLineAuthority'
        DataSource = dmBase.dsFilteredBaseline
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbedtAuthorityChange
      end
      object pickDate: TDateTimePicker
        Left = 38
        Top = 179
        Width = 182
        Height = 21
        Date = 36666.339739074100000000
        Time = 36666.339739074100000000
        DateFormat = dfLong
        TabOrder = 7
        OnChange = ChangedValue
      end
      object dblcEllipsoid: TRxDBLookupCombo
        Left = 192
        Top = 361
        Width = 175
        Height = 21
        DropDownCount = 8
        DataField = 'EllipsID'
        DataSource = dmBase.dsFilteredBaseline
        LookupField = 'EllipsID'
        LookupDisplay = 'EllipsName'
        LookupSource = dmBase.dsEllipsoid
        TabOrder = 12
        OnChange = ChangedValue
      end
      object GroupBox6: TGroupBox
        Left = 37
        Top = 258
        Width = 189
        Height = 73
        Caption = 'Computed Uncertainty (95%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        object pnlBaselineAccuracy: TPanel
          Left = 16
          Top = 28
          Width = 153
          Height = 21
          Alignment = taRightJustify
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object dbedtAuthorityAddress: TwwDBEdit
        Left = 244
        Top = 106
        Width = 273
        Height = 21
        DataField = 'AuthorityAddress'
        DataSource = dmBase.dsFilteredBaseline
        TabOrder = 15
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbedtAuthorityChange
      end
    end
    object tsDefaults: TTabSheet
      Caption = 'tsDefaults'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblUncertaintyEDM: TLabel
        Left = 3
        Top = 4
        Width = 171
        Height = 20
        Caption = 'A Priori Uncertainties'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label3: TLabel
        Left = 13
        Top = 36
        Width = 89
        Height = 13
        Caption = 'Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 22
        Top = 79
        Width = 216
        Height = 13
        Caption = 'Uncertainties are specified at 95% confidence'
      end
      object Label5: TLabel
        Left = 198
        Top = 36
        Width = 197
        Height = 13
        Caption = 'Computed Uncertainty of Baseline:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnCloseDefaults: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Close'
        TabOrder = 0
        OnClick = btnClose1Click
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
      object btnNextDefaults: TBitBtn
        Left = 521
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 1
        OnClick = btnNextDefaultsClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnBackDefaults: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 2
        OnClick = btnBackDefaultsClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnHelpDefaults: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = btnHelpDefaultsClick
        Kind = bkHelp
      end
      object wwDBEdit1: TwwDBEdit
        Left = 13
        Top = 50
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object pnlBaselineAccuracy2: TPanel
        Left = 197
        Top = 50
        Width = 192
        Height = 21
        Alignment = taRightJustify
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object pcDefaultUncertainties: TPageControl
        Left = 13
        Top = 98
        Width = 434
        Height = 320
        ActivePage = tsDefaultBaselineUncertainties
        TabOrder = 6
        object tsDefaultEDMUncertainties: TTabSheet
          Caption = ' EDM Calibrations'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgridDefaultEDMUncertainty: TwwDBGrid
            Left = 0
            Top = 0
            Width = 426
            Height = 267
            Selected.Strings = (
              'Description'#9'45'#9'Description'
              'Default'#9'10'#9'Default~Uncertainty~(95%)'
              'Unit'#9'8'#9'Unit')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dmBase.dsBaselineDefaultFilterEDM
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 3
            TitleButtons = False
            OnCalcCellColors = dbgridUncertaintyCalcCellColors
          end
          object DBNavigator1: TDBNavigator
            Left = 0
            Top = 267
            Width = 426
            Height = 25
            DataSource = dmBase.dsBaselineDefaultFilterEDM
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
            Align = alBottom
            TabOrder = 1
          end
        end
        object tsDefaultBaselineUncertainties: TTabSheet
          Caption = 'Calibration of the certified Baseline distances'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgridDefaultBaselineUncertainty: TwwDBGrid
            Left = 0
            Top = 0
            Width = 426
            Height = 267
            Selected.Strings = (
              'Description'#9'45'#9'Description'
              'Default'#9'10'#9'Default~Uncertainty~(95%)'
              'Unit'#9'8'#9'Unit')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            Color = clBtnFace
            DataSource = dmBase.dsBaselineDefaultFilterBase
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 3
            TitleButtons = False
            OnCalcCellColors = dbgridUncertaintyCalcCellColors
          end
          object DBNavigator5: TDBNavigator
            Left = 0
            Top = 267
            Width = 426
            Height = 25
            DataSource = dmBase.dsBaselineDefaultFilterBase
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 1
          end
        end
      end
    end
    object tsPillar: TTabSheet
      Caption = 'Instruments'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblPillarHeader: TLabel
        Left = 2
        Top = 4
        Width = 75
        Height = 29
        Caption = 'Pillars'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblName3: TLabel
        Left = 6
        Top = 43
        Width = 89
        Height = 13
        Caption = 'Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblHeight: TLabel
        Left = 141
        Top = 29
        Width = 104
        Height = 26
        Caption = 'Certified Baseline Height:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object lblWarning: TLabel
        Left = 3
        Top = 90
        Width = 217
        Height = 16
        Caption = 'You must enter at least 4 pillars'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBStatusLabel2: TDBStatusLabel
        Left = 516
        Top = 92
        Width = 85
        Height = 13
        DatasetName = 'Edit Mode'
        Captions.Strings = (
          'Edit Mode:')
        ShowOptions = doBoth
      end
      object btnBack3: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 0
        OnClick = btnBack3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnClose3: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Close'
        TabOrder = 1
        OnClick = btnClose3Click
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
      object btnHelp3: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 2
        OnClick = btnHelp3Click
        Kind = bkHelp
      end
      object dbedtName3: TwwDBEdit
        Left = 4
        Top = 57
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object gbInclude: TGroupBox
        Left = 258
        Top = 2
        Width = 161
        Height = 93
        Caption = 'Include'
        TabOrder = 4
        Visible = False
        object chkCoord: TCheckBox
          Left = 12
          Top = 20
          Width = 97
          Height = 17
          Caption = 'Coordinates'
          TabOrder = 0
          OnClick = PillarColumnsClick
        end
        object chkErrorEllipse: TCheckBox
          Left = 12
          Top = 44
          Width = 97
          Height = 17
          Caption = 'Error Ellipses'
          TabOrder = 1
          OnClick = PillarColumnsClick
        end
        object chkHeightUncertainty: TCheckBox
          Left = 13
          Top = 68
          Width = 125
          Height = 17
          Caption = 'Height Uncertainty'
          TabOrder = 2
          OnClick = PillarColumnsClick
        end
      end
      object dbedtHeight: TwwDBEdit
        Left = 141
        Top = 57
        Width = 100
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLegalHeight'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object btnNext3: TBitBtn
        Left = 521
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 6
        OnClick = btnNext3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object dbgridPillars: TwwDBGrid2
        Left = 0
        Top = 105
        Width = 604
        Height = 289
        DisableThemesInTitle = True
        LineStyle = gls3D
        ControlInfoInDataset = False
        Selected.Strings = (
          'PillarNo'#9'5'#9'Pillar~Number'
          'PillarHeight'#9'10'#9'Height'
          'PillarOffset'#9'10'#9'Offset')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 1
        ShowHorzScrollBar = True
        EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
        Align = alBottom
        DataSource = dmBase.dsFilteredPillar
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
        TabOrder = 7
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        UseTFields = False
        OnColExit = dbgridPillarsColExit
        OnExit = dbgridPillarsExit
        Validate = False
        ColCount = 4
      end
      object Panel1: TPanel
        Left = 0
        Top = 394
        Width = 604
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 8
        object dbnavPillars2: TwwDBNavigator
          Left = 0
          Top = 0
          Width = 604
          Height = 27
          AutosizeStyle = asSizeNavButtons
          DataSource = dmBase.dsFilteredPillar
          Flat = False
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alClient
          object dbnavPillars2First: TwwNavButton
            Left = 0
            Top = 0
            Width = 101
            Height = 27
            Hint = 'Move to first record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'dbnavPillars2First'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsFirst
          end
          object dbnavPillars2PriorPage: TwwNavButton
            Left = 101
            Top = 0
            Width = 101
            Height = 27
            Hint = 'Move backward 10 records'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'dbnavPillars2PriorPage'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsPriorPage
          end
          object dbnavPillars2Prior: TwwNavButton
            Left = 202
            Top = 0
            Width = 101
            Height = 27
            Hint = 'Move to prior record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'dbnavPillars2Prior'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsPrior
          end
          object dbnavPillars2Next: TwwNavButton
            Left = 303
            Top = 0
            Width = 101
            Height = 27
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'dbnavPillars2Next'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsNext
          end
          object dbnavPillars2NextPage: TwwNavButton
            Left = 404
            Top = 0
            Width = 100
            Height = 27
            Hint = 'Move forward 10 records'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'dbnavPillars2NextPage'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsNextPage
          end
          object dbnavPillars2Last: TwwNavButton
            Left = 504
            Top = 0
            Width = 100
            Height = 27
            Hint = 'Move to last record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'dbnavPillars2Last'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 5
            Style = nbsLast
          end
        end
        object dbnavPillars: TwwDBNavigator
          Left = 0
          Top = 0
          Width = 604
          Height = 27
          AutosizeStyle = asSizeNavButtons
          DataSource = dmBase.dsFilteredPillar
          Flat = False
          ShowHint = True
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alClient
          ParentShowHint = False
          object nbFirst: TwwNavButton
            Left = 0
            Top = 0
            Width = 51
            Height = 27
            Hint = 'Move to first record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2First'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsFirst
          end
          object nbPriorPage: TwwNavButton
            Left = 51
            Top = 0
            Width = 51
            Height = 27
            Hint = 'Move backward 10 records'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2PriorPage'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsPriorPage
          end
          object nbPrior: TwwNavButton
            Left = 102
            Top = 0
            Width = 51
            Height = 27
            Hint = 'Move to prior record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Prior'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsPrior
          end
          object nbNext: TwwNavButton
            Left = 153
            Top = 0
            Width = 51
            Height = 27
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Next'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsNext
          end
          object nbNextPage: TwwNavButton
            Left = 204
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Move forward 10 records'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2NextPage'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsNextPage
          end
          object nbLast: TwwNavButton
            Left = 254
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Move to last record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Last'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 5
            Style = nbsLast
          end
          object nbAppend: TwwNavButton
            Left = 304
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Append new record'
            ImageIndex = -1
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = '+'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = nbAppendClick
            Index = 6
            Style = nbsCustom
          end
          object nbDelete: TwwNavButton
            Left = 354
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Delete current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Delete'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 7
            Style = nbsDelete
          end
          object nbEdit: TwwNavButton
            Left = 404
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Edit current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Edit'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 8
            Style = nbsEdit
          end
          object nbPost: TwwNavButton
            Left = 454
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Post changes of current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Post'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 9
            Style = nbsPost
          end
          object nbCancel: TwwNavButton
            Left = 504
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Cancel changes made to current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Cancel'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 10
            Style = nbsCancel
          end
          object nbRefresh: TwwNavButton
            Left = 554
            Top = 0
            Width = 50
            Height = 27
            Hint = 'Refresh the contents of the dataset'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Refresh'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 11
            Style = nbsRefresh
          end
        end
      end
      object cbEditPillarNumber: TCheckBox
        Left = 432
        Top = 72
        Width = 129
        Height = 17
        Caption = 'Edit Pillar Number'
        TabOrder = 9
        OnClick = cbEditPillarNumberClick
      end
    end
    object tsSequentialDistances: TTabSheet
      Caption = 'tsSequentialDistances'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblDistancesFromPIllar1Header: TLabel
        Left = 2
        Top = 4
        Width = 222
        Height = 29
        Caption = 'Certified Distances'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblName4: TLabel
        Left = 7
        Top = 43
        Width = 89
        Height = 13
        Caption = 'Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBStatusLabel3: TDBStatusLabel
        Left = 438
        Top = 178
        Width = 85
        Height = 13
        DatasetName = 'Edit Mode'
        Captions.Strings = (
          'Edit Mode:')
        ShowOptions = doBoth
      end
      object lblNote2: TLabel
        Left = 76
        Top = 84
        Width = 381
        Height = 13
        Caption = 
          'For a new baseline the initial distances must be approximated to' +
          ' within 0.3 metres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblNote1: TLabel
        Left = 36
        Top = 84
        Width = 39
        Height = 13
        Caption = 'NOTE:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object dbnavDistance2: TwwDBNavigator
        Left = 82
        Top = 373
        Width = 307
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dmBase.dsFilteredDistance
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        Visible = False
        object wwNavButton1: TwwNavButton
          Left = 0
          Top = 0
          Width = 52
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object wwNavButton2: TwwNavButton
          Left = 52
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2PriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object wwNavButton3: TwwNavButton
          Left = 103
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object wwNavButton4: TwwNavButton
          Left = 154
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object wwNavButton5: TwwNavButton
          Left = 205
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2NextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object wwNavButton6: TwwNavButton
          Left = 256
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
      end
      object dbedtName4: TwwDBEdit
        Left = 5
        Top = 57
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbgridDistances: TwwDBGrid
        Left = 83
        Top = 105
        Width = 306
        Height = 268
        Selected.Strings = (
          'FromPillar'#9'8'#9'From~Pillar'
          'ToPillar'#9'8'#9'To~Pillar'
          'DistLegalDistance'#9'15'#9'Certified~Distance~(m)'
          'DistSigma'#9'11'#9'Uncertainty~ at 95%')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 2
        ShowHorzScrollBar = True
        DataSource = dmBase.dsFilteredDistance
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        OnColExit = dbgridDistancesColExit
      end
      object dbnavDistance: TwwDBNavigator
        Left = 82
        Top = 373
        Width = 307
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dmBase.dsFilteredDistance
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        object dbnavDistanceFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavDistancePriorPage: TwwNavButton
          Left = 31
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavDistancePrior: TwwNavButton
          Left = 62
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavDistanceNext: TwwNavButton
          Left = 93
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavDistanceNextPage: TwwNavButton
          Left = 124
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavDistanceLast: TwwNavButton
          Left = 155
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object dbnavDistanceEdit: TwwNavButton
          Left = 186
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Edit'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsEdit
        end
        object dbnavDistancePost: TwwNavButton
          Left = 217
          Top = 0
          Width = 30
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsPost
        end
        object dbnavDistanceCancel: TwwNavButton
          Left = 247
          Top = 0
          Width = 30
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsCancel
        end
        object dbnavDistanceRefresh: TwwNavButton
          Left = 277
          Top = 0
          Width = 30
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Refresh'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsRefresh
        end
      end
      object btnClose4: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Close'
        TabOrder = 3
        OnClick = btnClose4Click
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
      object btnHelp4: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 4
        OnClick = btnHelp4Click
        Kind = bkHelp
      end
      object btnBack4: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 5
        OnClick = btnBack4Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object GroupBox5: TGroupBox
        Left = 435
        Top = 99
        Width = 161
        Height = 73
        Caption = 'Distance Sequence'
        TabOrder = 6
        object rbtnFromFirstPillar: TRadioButton
          Left = 12
          Top = 44
          Width = 145
          Height = 17
          Caption = 'All Distances from Pillar 1'
          TabOrder = 0
          OnClick = rbtnFromFirstPillarClick
        end
        object rbtnSeqDistances: TRadioButton
          Left = 12
          Top = 20
          Width = 133
          Height = 17
          Caption = 'Sequential Distances'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
      end
    end
    object tsArchivedBaselineDetails: TTabSheet
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblArchivedBaselineHeader: TLabel
        Left = 2
        Top = 4
        Width = 191
        Height = 29
        Caption = 'Baseline Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedBaselineLocation: TLabel
        Left = 179
        Top = 70
        Width = 106
        Height = 13
        Caption = 'Baseline Location:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedBaselineAuthority: TLabel
        Left = 37
        Top = 118
        Width = 107
        Height = 13
        Caption = 'Baseline Authority:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedReference: TLabel
        Left = 37
        Top = 214
        Width = 180
        Height = 13
        Caption = 'Baseline Calibration Reference:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedEllipsoid: TLabel
        Left = 193
        Top = 350
        Width = 88
        Height = 13
        Caption = 'Ellipsoid Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedConfLevel: TLabel
        Left = 227
        Top = 166
        Width = 70
        Height = 13
        Caption = 'Conf. Level:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedCertHeight: TLabel
        Left = 311
        Top = 166
        Width = 73
        Height = 13
        Caption = 'Cert. Height:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedHumidity: TLabel
        Left = 37
        Top = 350
        Width = 117
        Height = 13
        Caption = 'Relative Humidity %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedCalibrationDate: TLabel
        Left = 37
        Top = 166
        Width = 148
        Height = 13
        Caption = 'Baseline Calibration Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedBaselineName: TLabel
        Left = 39
        Top = 70
        Width = 89
        Height = 13
        Caption = 'Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedBaselineNote: TLabel
        Left = 38
        Top = 40
        Width = 248
        Height = 16
        Caption = 'You can not edit archived baselines'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedBaselineAuthorityAddress: TLabel
        Left = 244
        Top = 118
        Width = 171
        Height = 13
        Caption = 'Address of Baseline Authority:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbedtArchivedBaselineName: TwwDBEdit
        Left = 37
        Top = 84
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object GroupBox2: TGroupBox
        Left = 244
        Top = 263
        Width = 189
        Height = 73
        Caption = 'Recommended Standards'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        object lblArchivedConstant: TLabel
          Left = 12
          Top = 20
          Width = 55
          Height = 13
          Caption = 'Constant:'
        end
        object lblArchivedPPM: TLabel
          Left = 100
          Top = 20
          Width = 31
          Height = 13
          Caption = 'PPM:'
        end
        object dbedtArchivedConstant: TwwDBEdit
          Left = 11
          Top = 35
          Width = 64
          Height = 21
          Color = clBtnFace
          DataField = 'BaseStdICConstant'
          DataSource = dmBase.dsFilteredBaseline
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbedtArchivedPPM: TwwDBEdit
          Left = 99
          Top = 35
          Width = 64
          Height = 21
          Color = clBtnFace
          DataField = 'BaseStdICPPM'
          DataSource = dmBase.dsFilteredBaseline
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object dbedtArchivedBaselineLocation: TwwDBEdit
        Left = 181
        Top = 84
        Width = 161
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineLocation'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtArchivedBaselineAuthority: TwwDBEdit
        Left = 38
        Top = 133
        Width = 195
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineAuthority'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtArchivedCalibrationDate: TwwDBEdit
        Left = 38
        Top = 182
        Width = 179
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineCalibrationDate'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtArchivedConfLevel: TwwDBEdit
        Left = 227
        Top = 182
        Width = 72
        Height = 21
        Color = clBtnFace
        DataField = 'BaselineConfLevel'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtArchivedCertHeight: TwwDBEdit
        Left = 308
        Top = 182
        Width = 102
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLegalHeight'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtArchivedReference: TwwDBEdit
        Left = 38
        Top = 229
        Width = 307
        Height = 21
        Color = clBtnFace
        DataField = 'BaselineCalibrationRef'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtArchivedHumidity: TwwDBEdit
        Left = 38
        Top = 365
        Width = 114
        Height = 21
        Color = clBtnFace
        DataField = 'BaseRelativeHumidity'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtArchivedEllipsoid: TwwDBEdit
        Left = 194
        Top = 365
        Width = 151
        Height = 21
        Color = clBtnFace
        DataField = 'EllipsName'
        DataSource = dmBase.dsEllipsoid
        ReadOnly = True
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object btnHelpArchivedBaseline: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 10
        OnClick = btnHelpArchivedBaselineClick
        Kind = bkHelp
      end
      object btnNextArchived2: TBitBtn
        Left = 521
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 11
        OnClick = btnNextArchived2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnBackArchived2: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 12
        OnClick = btnBackArchived2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object lblCloseArchivedBaseline: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 13
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object dbedtArchivedBaselineAuthorityAddress: TwwDBEdit
        Left = 244
        Top = 133
        Width = 273
        Height = 21
        Color = clBtnFace
        DataField = 'AuthorityAddress'
        DataSource = dmBase.dsFilteredBaseline
        TabOrder = 14
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbedtAuthorityChange
      end
      object GroupBox8: TGroupBox
        Left = 38
        Top = 263
        Width = 189
        Height = 73
        Caption = 'Computed Uncertainty (95%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        object pnlArchivedBaselineAccuracy: TPanel
          Left = 16
          Top = 28
          Width = 153
          Height = 21
          Alignment = taRightJustify
          BevelOuter = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object tsArchivedPillars: TTabSheet
      Caption = 'tsArchivedPillars'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblArchivedPillarsHeader: TLabel
        Left = 2
        Top = 4
        Width = 75
        Height = 29
        Caption = 'Pillars'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedBaseline: TLabel
        Left = 6
        Top = 32
        Width = 107
        Height = 26
        Caption = 'Archived Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object lblArchivedHeight: TLabel
        Left = 141
        Top = 31
        Width = 104
        Height = 26
        Caption = 'Certified Baseline Height:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object lblArchivedPillarsNote: TLabel
        Left = 2
        Top = 92
        Width = 248
        Height = 16
        Caption = 'You can not edit archived baselines'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgridArchivedPillars: TwwDBGrid
        Left = 0
        Top = 111
        Width = 604
        Height = 289
        Selected.Strings = (
          'PillarNo'#9'5'#9'Pillar~Number'
          'PillarHeight'#9'10'#9'Height'
          'PillarOffset'#9'10'#9'Offset')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 1
        ShowHorzScrollBar = True
        Align = alBottom
        Color = clBtnFace
        DataSource = dmBase.dsFilteredPillar
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        ExplicitTop = 132
      end
      object dbnavArchivedPillars: TwwDBNavigator
        Left = 0
        Top = 400
        Width = 604
        Height = 21
        AutosizeStyle = asSizeNavButtons
        DataSource = dmBase.dsFilteredPillar
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alBottom
        ParentShowHint = False
        ExplicitLeft = 2
        ExplicitTop = 397
        object dbnavArchivedPillarsFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 101
          Height = 21
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavArchivedPillarsPage: TwwNavButton
          Left = 101
          Top = 0
          Width = 101
          Height = 21
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavArchivedPillarsPrior: TwwNavButton
          Left = 202
          Top = 0
          Width = 101
          Height = 21
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavArchivedPillarsNext: TwwNavButton
          Left = 303
          Top = 0
          Width = 101
          Height = 21
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavArchivedPillarsNextPage: TwwNavButton
          Left = 404
          Top = 0
          Width = 100
          Height = 21
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavArchivedPillarsLast: TwwNavButton
          Left = 504
          Top = 0
          Width = 100
          Height = 21
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
      end
      object wwDBEdit14: TwwDBEdit
        Left = 4
        Top = 59
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaselineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object GroupBox3: TGroupBox
        Left = 258
        Top = 3
        Width = 161
        Height = 93
        Caption = 'Include'
        TabOrder = 3
        Visible = False
        object chkArchivedCoord: TCheckBox
          Left = 12
          Top = 20
          Width = 97
          Height = 17
          Caption = 'Coordinates'
          TabOrder = 0
          OnClick = chkArchivedCoordClick
        end
        object chkArchivedErrorEllips: TCheckBox
          Left = 12
          Top = 44
          Width = 97
          Height = 17
          Caption = 'Error Ellipses'
          TabOrder = 1
          OnClick = chkArchivedErrorEllipsClick
        end
        object chkArchivedHeightUncertainty: TCheckBox
          Left = 13
          Top = 68
          Width = 125
          Height = 17
          Caption = 'Height Uncertainty'
          TabOrder = 2
          OnClick = chkArchivedHeightUncertaintyClick
        end
      end
      object wwDBEdit15: TwwDBEdit
        Left = 141
        Top = 58
        Width = 100
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLegalHeight'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object btnHelpArchivedPillars: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 5
        OnClick = btnHelpArchivedPillarsClick
        Kind = bkHelp
      end
      object btnNextArchived3: TBitBtn
        Left = 521
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 6
        OnClick = btnNextArchived3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnBackArchived3: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 7
        OnClick = btnBackArchived3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn8: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 8
        OnClick = btnClose1Click
        Kind = bkClose
      end
    end
    object tsArchivedDistances: TTabSheet
      Caption = 'tsArchivedDistances'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label32: TLabel
        Left = 2
        Top = 4
        Width = 222
        Height = 29
        Caption = 'Certified Distances'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 7
        Top = 43
        Width = 143
        Height = 13
        Caption = 'Archived Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 84
        Top = 86
        Width = 248
        Height = 16
        Caption = 'You can not edit archived baselines'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBEdit16: TwwDBEdit
        Left = 5
        Top = 57
        Width = 144
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbgridArchivedDistances: TwwDBGrid
        Left = 84
        Top = 105
        Width = 306
        Height = 268
        Selected.Strings = (
          'FromPillar'#9'8'#9'From~Pillar'
          'ToPillar'#9'8'#9'To~Pillar'
          'DistLegalDistance'#9'15'#9'Certified~Distance~(m)'
          'DistSigma'#9'11'#9'Uncertainty~ at 95%')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 2
        ShowHorzScrollBar = True
        Color = clBtnFace
        DataSource = dmBase.dsFilteredDistance
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
      end
      object dbnavArchivedDistances: TwwDBNavigator
        Left = 84
        Top = 372
        Width = 305
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dmBase.dsFilteredDistance
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        object dbnavArchivedDistancesFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavArchivedDistancesPriorPage: TwwNavButton
          Left = 51
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavArchivedDistancesPrior: TwwNavButton
          Left = 102
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavArchivedDistancesNext: TwwNavButton
          Left = 153
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavArchivedDistancesNextPage: TwwNavButton
          Left = 204
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavArchivedDistancesLast: TwwNavButton
          Left = 255
          Top = 0
          Width = 50
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
      end
      object BitBtn11: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object btnBackArchived4: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 4
        OnClick = btnBackArchived4Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object GroupBox7: TGroupBox
        Left = 435
        Top = 99
        Width = 161
        Height = 73
        Caption = 'Distance Sequence'
        TabOrder = 5
        object rbtnArchivedFromFirstPillar: TRadioButton
          Left = 12
          Top = 44
          Width = 145
          Height = 17
          Caption = 'All Distances from Pillar 1'
          TabOrder = 0
          OnClick = rbtnArchivedFromFirstPillarClick
        end
        object rbtnSeqArchivedDistances: TRadioButton
          Left = 12
          Top = 20
          Width = 133
          Height = 17
          Caption = 'Sequential Distances'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
      end
    end
    object tsDistancesFromPillar1: TTabSheet
      Caption = 'tsFromPilllar1'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label37: TLabel
        Left = 2
        Top = 4
        Width = 222
        Height = 29
        Caption = 'Certified Distances'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 7
        Top = 43
        Width = 89
        Height = 13
        Caption = 'Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBStatusLabel4: TDBStatusLabel
        Left = 438
        Top = 178
        Width = 105
        Height = 13
        DatasetName = 'Edit Mode'
        DataSource = dsRXDistance2
        Captions.Strings = (
          'Edit Mode:')
        ShowOptions = doBoth
      end
      object lblNote3: TLabel
        Left = 36
        Top = 84
        Width = 39
        Height = 13
        Caption = 'NOTE:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblNote4: TLabel
        Left = 76
        Top = 84
        Width = 381
        Height = 13
        Caption = 
          'For a new baseline the initial distances must be approximated to' +
          ' within 0.3 metres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object wwDBEdit17: TwwDBEdit
        Left = 5
        Top = 57
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbgridDistance2: TwwDBGrid
        Left = 83
        Top = 105
        Width = 306
        Height = 268
        Selected.Strings = (
          'rxFromPillar'#9'8'#9'From~Pillar'
          'rxToPillar'#9'8'#9'To~Pillar'
          'DistLegalDistance'#9'15'#9'Certified~Distance~(m)'
          'DistSigma'#9'11'#9'Uncertainty~at 95%')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 2
        ShowHorzScrollBar = True
        DataSource = dsRXDistance2
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        OnColExit = dbgridDistance2ColExit
      end
      object dbnavDistanceA: TwwDBNavigator
        Left = 82
        Top = 374
        Width = 307
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dsRXDistance2
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        object wwNavButton7: TwwNavButton
          Left = 0
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object wwNavButton42: TwwNavButton
          Left = 31
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2PriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object wwNavButton43: TwwNavButton
          Left = 62
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object wwNavButton44: TwwNavButton
          Left = 93
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object wwNavButton45: TwwNavButton
          Left = 124
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2NextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object wwNavButton46: TwwNavButton
          Left = 155
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object wwNavButton47: TwwNavButton
          Left = 186
          Top = 0
          Width = 31
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Edit'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsEdit
        end
        object wwNavButton48: TwwNavButton
          Left = 217
          Top = 0
          Width = 30
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsPost
        end
        object wwNavButton49: TwwNavButton
          Left = 247
          Top = 0
          Width = 30
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsCancel
        end
        object wwNavButton50: TwwNavButton
          Left = 277
          Top = 0
          Width = 30
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Refresh'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsRefresh
        end
      end
      object btnHelpSeq: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = btnHelp4Click
        Kind = bkHelp
      end
      object btnCloseDistFromPillar1: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Close'
        TabOrder = 4
        OnClick = btnCloseDistFromPillar1Click
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
      object btnBackSeq: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 5
        OnClick = btnBackSeqClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object GroupBox4: TGroupBox
        Left = 435
        Top = 99
        Width = 161
        Height = 73
        Caption = 'Distance Sequence'
        TabOrder = 6
        object rbtnFromFirstPillar2: TRadioButton
          Left = 12
          Top = 44
          Width = 145
          Height = 17
          Caption = 'All Distances from Pillar 1'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rbtnSeqDistances2: TRadioButton
          Left = 12
          Top = 20
          Width = 133
          Height = 17
          Caption = 'Sequential Distances'
          TabOrder = 1
          OnClick = rbtnSeqDistances2Click
        end
      end
      object dbnavDistanceA2: TwwDBNavigator
        Left = 82
        Top = 374
        Width = 307
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dsRXDistance2
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        object dbnavDistanceA2First: TwwNavButton
          Left = 0
          Top = 0
          Width = 52
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavDistanceA2PriorPage: TwwNavButton
          Left = 52
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavDistanceA2Prior: TwwNavButton
          Left = 103
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavDistanceA2Next: TwwNavButton
          Left = 154
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavDistanceA2NextPage: TwwNavButton
          Left = 205
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavDistanceA2Last: TwwNavButton
          Left = 256
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
      end
    end
    object tsArchivedDistancesFromPillar1: TTabSheet
      Caption = 'tsArchivedDistancesFromPillar1'
      ImageIndex = 8
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblArchivedDistancesHeader: TLabel
        Left = 2
        Top = 4
        Width = 222
        Height = 29
        Caption = 'Certified Distances'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedDistancesNote: TLabel
        Left = 84
        Top = 86
        Width = 248
        Height = 16
        Caption = 'You can not edit archived baselines'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArchivedBaseline1: TLabel
        Left = 7
        Top = 43
        Width = 143
        Height = 13
        Caption = 'Archived Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gbDistanceSequence: TGroupBox
        Left = 435
        Top = 99
        Width = 161
        Height = 73
        Caption = 'Distance Sequence'
        TabOrder = 0
        object rbtnArchivedFromFirstPillar2: TRadioButton
          Left = 12
          Top = 44
          Width = 145
          Height = 17
          Caption = 'All Distances from Pillar 1'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rbtnSeqArchivedDistances2: TRadioButton
          Left = 12
          Top = 20
          Width = 133
          Height = 17
          Caption = 'Sequential Distances'
          TabOrder = 1
          OnClick = rbtnSeqArchivedDistances2Click
        end
      end
      object btnCloseArchivedDistances: TBitBtn
        Left = 438
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 1
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object btnBackArchivedDistances: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 2
        OnClick = btnBackArchived4Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object dbedtArchivedBaseline1: TwwDBEdit
        Left = 5
        Top = 57
        Width = 144
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbgridCertifiedDist: TwwDBGrid
        Left = 83
        Top = 105
        Width = 306
        Height = 268
        Selected.Strings = (
          'rxFromPillar'#9'8'#9'From~Pillar'
          'rxToPillar'#9'8'#9'To~Pillar'
          'DistLegalDistance'#9'15'#9'Certified~Distance~(m)'
          'DistSigma'#9'11'#9'Uncertainty~at 95%')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 2
        ShowHorzScrollBar = True
        Color = clBtnFace
        DataSource = dsRXDistance2
        ReadOnly = True
        TabOrder = 4
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
      end
      object dbnavCertifiedDist: TwwDBNavigator
        Left = 83
        Top = 374
        Width = 306
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dsRXDistance2
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        object dbnavCertifiedDistFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavCertifiedDistPriorPage: TwwNavButton
          Left = 51
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavCertifiedDistPrior: TwwNavButton
          Left = 102
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavCertifiedDistNext: TwwNavButton
          Left = 153
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavCertifiedDistNextPage: TwwNavButton
          Left = 204
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Next Page'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavCertifiedDistLast: TwwNavButton
          Left = 255
          Top = 0
          Width = 51
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
      end
    end
    object tsArchivedDefaults: TTabSheet
      Caption = 'tsArchivedDefaults'
      ImageIndex = 10
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label8: TLabel
        Left = 18
        Top = 80
        Width = 248
        Height = 16
        Caption = 'You can not edit archived baselines'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 3
        Top = 3
        Width = 168
        Height = 20
        Caption = 'A Priori uncertainties'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label7: TLabel
        Left = 13
        Top = 34
        Width = 143
        Height = 13
        Caption = 'Archived Baseline Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 364
        Top = 79
        Width = 216
        Height = 13
        Caption = 'Uncertainties are specified at 95% confidence'
      end
      object Label10: TLabel
        Left = 198
        Top = 34
        Width = 197
        Height = 13
        Caption = 'Computed Uncertainty of Baseline:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 438
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = btnHelpArchivedBaselineClick
        Kind = bkHelp
      end
      object btnNextArchivedDefaults: TBitBtn
        Left = 521
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 1
        OnClick = btnNextArchivedDefaultsClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object btnBackArchivedUncertainties: TBitBtn
        Left = 522
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 2
        OnClick = btnBackArchivedUncertaintiesClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnCloseUncertainties: TBitBtn
        Left = 440
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object wwDBEdit2: TwwDBEdit
        Left = 13
        Top = 48
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmBase.dsFilteredBaseline
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object pnlArchivedBaselineAccuracy2: TPanel
        Left = 197
        Top = 48
        Width = 192
        Height = 21
        Alignment = taRightJustify
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object pcArchivedDefaultUncertainties: TPageControl
        Left = 19
        Top = 98
        Width = 434
        Height = 320
        ActivePage = tsArchivedDefaultBaselineUncertainties
        TabOrder = 6
        object tsArchivedDefaultEDMUncertainties: TTabSheet
          Caption = ' EDM Calibrations'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgridDefaultUncertaintiesEDM: TwwDBGrid
            Left = 0
            Top = 0
            Width = 426
            Height = 267
            Selected.Strings = (
              'Description'#9'45'#9'Description'
              'Default'#9'10'#9'Default~Uncertainty~(95%)'
              'Unit'#9'8'#9'Unit')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            Color = clBtnFace
            DataSource = dmBase.dsBaselineDefaultFilterEDM
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 3
            TitleButtons = False
            OnCalcCellColors = dbgridUncertaintyCalcCellColors
          end
          object DBNavigator3: TDBNavigator
            Left = 0
            Top = 267
            Width = 426
            Height = 25
            DataSource = dmBase.dsBaselineDefaultFilterEDM
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 1
          end
        end
        object tsArchivedDefaultBaselineUncertainties: TTabSheet
          Caption = 'Calibration of the certified Baseline distances'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgridDefaultUncertaintiesBase: TwwDBGrid
            Left = 0
            Top = 0
            Width = 426
            Height = 267
            Selected.Strings = (
              'Description'#9'45'#9'Description'
              'Default'#9'10'#9'Default~Uncertainty~(95%)'
              'Unit'#9'8'#9'Unit')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            Color = clBtnFace
            DataSource = dmBase.dsBaselineDefaultFilterBase
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 3
            TitleButtons = False
            OnCalcCellColors = dbgridUncertaintyCalcCellColors
          end
          object DBNavigator4: TDBNavigator
            Left = 0
            Top = 267
            Width = 426
            Height = 25
            DataSource = dmBase.dsBaselineDefaultFilterBase
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 1
          end
        end
      end
    end
  end
  object RxDistance2: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'rxFromPillar'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'rxToPillar'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DistLegalDistance'
        DataType = ftFloat
      end
      item
        Name = 'DistSigma'
        DataType = ftFloat
      end
      item
        Name = 'PillarFromID'
        DataType = ftInteger
      end
      item
        Name = 'PillarToID'
        DataType = ftInteger
      end
      item
        Name = 'DistID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end>
    BeforeInsert = RxDistance2BeforeInsert
    BeforePost = RxDistance2BeforePost
    AfterPost = RxDistance2AfterPost
    BeforeDelete = RxDistance2BeforeDelete
    Left = 543
    Top = 268
    object rxDistance2rxFromPillar: TStringField
      DisplayLabel = 'From~Pillar'
      DisplayWidth = 8
      FieldName = 'rxFromPillar'
      Size = 5
    end
    object rxDistance2rxToPillar: TStringField
      DisplayLabel = 'To~Pillar'
      DisplayWidth = 8
      FieldName = 'rxToPillar'
      Size = 5
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Certified~Distance~(m)'
      DisplayWidth = 15
      FieldName = 'DistLegalDistance'
      DisplayFormat = '0.0000'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Uncertainty~at 95%'
      DisplayWidth = 11
      FieldName = 'DistSigma'
      DisplayFormat = '0.00000'
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'PillarFromID'
      Visible = False
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'PillarToID'
      Visible = False
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'DistID'
      Visible = False
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'BaseLineID'
      DisplayWidth = 10
      FieldName = 'BaselineID'
      Visible = False
    end
  end
  object dsRXDistance2: TwwDataSource
    DataSet = RxDistance2
    Left = 544
    Top = 222
  end
end
