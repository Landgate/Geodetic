object frmJob: TfrmJob
  Left = 502
  Top = 249
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calibration'
  ClientHeight = 484
  ClientWidth = 740
  Color = clBtnFace
  Constraints.MinHeight = 490
  Constraints.MinWidth = 746
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
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 740
    Height = 484
    ActivePage = tsBaseline
    Align = alClient
    TabOrder = 0
    object tsJob: TTabSheet
      Caption = 'tsJob'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHeader1: TLabel
        Left = 6
        Top = 4
        Width = 125
        Height = 29
        Caption = 'Select Job'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlJobBottom: TPanel
        Left = 10
        Top = 110
        Width = 515
        Height = 283
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        object lblObserver: TLabel
          Left = 13
          Top = 95
          Width = 77
          Height = 13
          Caption = 'Observer Name:'
        end
        object lblJobComments: TLabel
          Left = 13
          Top = 178
          Width = 72
          Height = 13
          Caption = 'Job Comments:'
        end
        object grpCalType: TGroupBox
          Left = 13
          Top = 11
          Width = 137
          Height = 70
          Caption = 'Calibration Type'
          TabOrder = 4
          object rbtnInstrument: TRadioButton
            Left = 10
            Top = 20
            Width = 81
            Height = 17
            Caption = 'Instrument'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rbtnInstrumentClick
          end
          object rbtnBaseline: TRadioButton
            Left = 10
            Top = 42
            Width = 97
            Height = 17
            Caption = 'Baseline'
            TabOrder = 1
            OnClick = rbtnBaselineClick
          end
        end
        object edtObserverName: TEdit
          Left = 13
          Top = 111
          Width = 161
          Height = 21
          MaxLength = 25
          TabOrder = 0
        end
        object edtJobComments: TEdit
          Left = 88
          Top = 175
          Width = 402
          Height = 21
          TabOrder = 3
        end
        object grpStartDate: TGroupBox
          Left = 202
          Top = 12
          Width = 296
          Height = 71
          Caption = 'Observation Date'
          TabOrder = 1
          object lblDateStart: TLabel
            Left = 12
            Top = 20
            Width = 26
            Height = 13
            Caption = 'Date:'
          end
          object lblTimeStart: TLabel
            Left = 200
            Top = 20
            Width = 26
            Height = 13
            Caption = 'Time:'
          end
          object pickStartDate: TDateTimePicker
            Left = 12
            Top = 36
            Width = 182
            Height = 21
            Date = 36666.291666666700000000
            Time = 36666.291666666700000000
            DateFormat = dfLong
            TabOrder = 0
            OnCloseUp = pickStartDateCloseUp
            OnExit = pickStartDateExit
          end
          object pickStartTime: TDateTimePicker
            Left = 201
            Top = 35
            Width = 87
            Height = 21
            Date = 36666.339733796300000000
            Time = 36666.339733796300000000
            Kind = dtkTime
            TabOrder = 1
            OnExit = pickStartTimeExit
          end
        end
        object grpEndDate: TGroupBox
          Left = 202
          Top = 94
          Width = 297
          Height = 71
          Caption = 'Computation Date'
          TabOrder = 2
          object lblDateEnd: TLabel
            Left = 12
            Top = 20
            Width = 26
            Height = 13
            Caption = 'Date:'
          end
          object lblTimeEnd: TLabel
            Left = 200
            Top = 20
            Width = 26
            Height = 13
            Caption = 'Time:'
          end
          object pickEndDate: TDateTimePicker
            Left = 12
            Top = 36
            Width = 181
            Height = 21
            Date = 36666.375000000000000000
            Time = 36666.375000000000000000
            DateFormat = dfLong
            TabOrder = 0
            OnCloseUp = pickEndDateCloseUp
            OnExit = pickEndDateExit
          end
          object pickEndTime: TDateTimePicker
            Left = 201
            Top = 35
            Width = 87
            Height = 21
            Date = 36666.375000000000000000
            Time = 36666.375000000000000000
            Kind = dtkTime
            TabOrder = 1
            OnExit = pickEndTimeExit
          end
        end
      end
      object pcExistingOrNew: TPageControl
        Left = 193
        Top = 38
        Width = 233
        Height = 68
        ActivePage = tsExistingJob
        TabOrder = 1
        object tsExistingJob: TTabSheet
          HelpContext = 12003
          Caption = 'tsExistingJob'
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblSelectJob: TLabel
            Left = 25
            Top = 4
            Width = 149
            Height = 16
            Caption = 'Select an existing job'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rxdblcJob: TRxDBLookupCombo
            Left = 9
            Top = 25
            Width = 209
            Height = 21
            DropDownCount = 8
            LookupField = 'JobId'
            LookupDisplay = 'JobDescription'
            LookupSource = dmMain.dsJob
            TabOrder = 0
            OnCloseUp = rxdblcJobCloseUp
            OnExit = rxdblcJobExit
          end
        end
        object tsNewJob: TTabSheet
          HelpContext = 12002
          Caption = 'tsNewJob'
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblEnterNewJob: TLabel
            Left = 8
            Top = 8
            Width = 146
            Height = 16
            Caption = 'Enter New Job Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtNewJobName: TEdit
            Left = 8
            Top = 28
            Width = 190
            Height = 21
            MaxLength = 30
            TabOrder = 0
            OnChange = edtNewJobNameChange
            OnClick = EditClick
            OnExit = edtNewJobNameExit
          end
        end
      end
      object gbJob: TGroupBox
        Left = 13
        Top = 36
        Width = 157
        Height = 71
        HelpContext = 12001
        Caption = 'Job'
        TabOrder = 0
        object rbtnExisting: TRadioButton
          Left = 24
          Top = 33
          Width = 125
          Height = 34
          HelpContext = 11018
          Caption = 'Existing '
          TabOrder = 0
          OnClick = rbtnExistingClick
        end
        object rbtnNew: TRadioButton
          Left = 24
          Top = 12
          Width = 125
          Height = 25
          HelpContext = 11017
          Caption = 'New'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = rbtnNewClick
        end
      end
      object pnlButtons1: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 2
        object lblPage1: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 1'
        end
        object btnNext1: TBitBtn
          Left = 10
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 0
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
        object btnDelete: TBitBtn
          Left = 10
          Top = 91
          Width = 75
          Height = 25
          Caption = '    &Delete'
          TabOrder = 1
          OnClick = btnDeleteClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888888888888888889988888888
            9988887F88888888778888999888888999888877F88888877F88888999888899
            988888877F888877F8888888999889998888888877F8877F8888888889999998
            88888888877F77F888888888889999888888888888777F888888888888999988
            8888888888777F88888888888999999888888888877F77F88888888899988999
            8888888877F8877F8888888999888899988888877F888877F888889998888889
            99888877F88888877F888899888888889988887F888888887788888888888888
            8888888888888888888888888888888888888888888888888888}
          NumGlyphs = 2
        end
        object btnClose1: TBitBtn
          Left = 10
          Top = 164
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelp1: TBitBtn
          Left = 10
          Top = 127
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = btnHelp1Click
          Kind = bkHelp
        end
      end
    end
    object tsBaseline: TTabSheet
      Caption = 'tsBaseline'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblBaseline: TLabel
        Left = 8
        Top = 1
        Width = 184
        Height = 29
        Caption = 'Select Baseline'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBaselineName: TLabel
        Left = 5
        Top = 29
        Width = 74
        Height = 13
        Caption = 'Baseline Name:'
      end
      object lblRefHeight: TLabel
        Left = 5
        Top = 205
        Width = 100
        Height = 13
        Caption = 'Reference Elevation:'
      end
      object lblRefHeightUnit: TLabel
        Left = 104
        Top = 224
        Width = 31
        Height = 13
        Caption = 'metres'
      end
      object lblBaseCalibrationDate: TLabel
        Left = 6
        Top = 162
        Width = 78
        Height = 13
        Caption = 'Calibration Date:'
      end
      object lblUncertainty: TLabel
        Left = 5
        Top = 112
        Width = 86
        Height = 13
        Caption = 'Uncertainty (95%):'
      end
      object lblAuthority: TLabel
        Left = 205
        Top = 29
        Width = 87
        Height = 13
        Caption = 'Baseline Authority:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblAuthorityAddress: TLabel
        Left = 5
        Top = 72
        Width = 128
        Height = 13
        Caption = 'Baseline Authority Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbedtBaseline: TwwDBEdit
        Left = 6
        Top = 45
        Width = 173
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineName'
        DataSource = dmMain.dsBaseline
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object rxdblcBaseline: TRxDBLookupCombo
        Left = 6
        Top = 44
        Width = 173
        Height = 21
        DropDownCount = 8
        LookupField = 'BaseLineID'
        LookupDisplay = 'BaseLineName'
        LookupSource = dmMain.dsBaseline
        TabOrder = 3
        OnCloseUp = rxdblcBaselineCloseUp
        OnExit = rxdblcBaselineExit
      end
      object pnlButtons2: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPage2: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 2'
        end
        object btnBack2: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 0
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
        object btnNextBaseline: TBitBtn
          Left = 11
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNextBaselineClick
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
        object btnCloseBaseline: TBitBtn
          Left = 11
          Top = 126
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelpBaseline: TBitBtn
          Left = 11
          Top = 91
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = btnHelpBaselineClick
          Kind = bkHelp
        end
      end
      object pcBaseline: TPageControl
        Left = 319
        Top = 166
        Width = 314
        Height = 306
        ActivePage = tsBaselineInterval
        TabOrder = 1
        object tsBaselineInterval: TTabSheet
          Caption = 'Baseline Intervals'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbnavCertDist: TwwDBNavigator
            Left = 0
            Top = 253
            Width = 306
            Height = 25
            AutosizeStyle = asSizeNavButtons
            DataSource = dmBase.dsFilteredDistance
            Flat = False
            ShowHint = True
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alBottom
            ParentShowHint = False
            object dbnavCertDistFirst: TwwNavButton
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
            object dbnavCertDistPriorPage: TwwNavButton
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
            object dbnavCertDistPrior: TwwNavButton
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
            object dbnavCertDistNext: TwwNavButton
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
            object dbnavCertDistNextPage: TwwNavButton
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
            object dbnavCertDistLast: TwwNavButton
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
          object dbgridCertifiedDistance: TwwDBGrid
            Left = 0
            Top = 0
            Width = 306
            Height = 253
            Selected.Strings = (
              'FromPillar'#9'8'#9'From~Pillar'
              'ToPillar'#9'8'#9'To~Pillar'
              'DistLegalDistance'#9'15'#9'Certified~Distance~(m)'
              'DistSigma'#9'11'#9'Uncertainty~ at 95%')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
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
        end
        object TabSheet2: TTabSheet
          Caption = 'Baseline Pillars'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgridPillar: TwwDBGrid
            Left = 0
            Top = 0
            Width = 306
            Height = 253
            Selected.Strings = (
              'PillarNo'#9'5'#9'Pillar~Number'
              'PillarHeight'#9'10'#9'Pillar~Height'
              'PillarOffset'#9'10'#9'Pillar~Offset~(metres)'
              'PillarHtStdDev'#9'10'#9'Uncertainty~95%~Pillar Height')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            Color = clBtnFace
            DataSource = dmMain.dsPillar
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
          end
          object dbnavPillars: TwwDBNavigator
            Left = 0
            Top = 253
            Width = 306
            Height = 25
            AutosizeStyle = asSizeNavButtons
            DataSource = dmMain.dsPillar
            Flat = False
            ShowHint = True
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alBottom
            ParentShowHint = False
            object dbnavPillarsFirst: TwwNavButton
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
            object dbnavPillarsPriorPage: TwwNavButton
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
            object dbnavPillarsPrior: TwwNavButton
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
            object dbnavPillarsNext: TwwNavButton
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
            object dbnavPillarsNextPage: TwwNavButton
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
            object dbnavPillarsLast: TwwNavButton
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
      end
      object dbedtRefHeight: TwwDBEdit
        Left = 5
        Top = 220
        Width = 97
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLegalHeight'
        DataSource = dmMain.dsBaseline
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtCalibrationDate: TwwDBEdit
        Left = 6
        Top = 176
        Width = 97
        Height = 21
        Color = clBtnFace
        DataField = 'BaseLineCalibrationDate'
        DataSource = dmMain.dsBaseline
        ReadOnly = True
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object pnlUncertainty: TPanel
        Left = 5
        Top = 128
        Width = 412
        Height = 23
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 6
        inline FrameLUMUnitsNonDB1: TFrameLUMUnitsNonDB
          Left = 1
          Top = 1
          Width = 410
          Height = 22
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 410
          ExplicitHeight = 22
          inherited FrameOldLUMUnits1: TFrameOldLUMUnitsNonDB
            Width = 410
            ExplicitWidth = 410
            inherited pnlOldLUMUnits: TPanel
              Width = 410
              ExplicitWidth = 410
            end
          end
          inherited FrameNewLumUnits1: TFrameNewLumUnitsNonDB
            Width = 410
            ExplicitTop = 22
            ExplicitWidth = 410
            inherited pnlNewLUMUnits: TPanel
              Width = 410
              ExplicitWidth = 410
              ExplicitHeight = 22
            end
          end
        end
      end
      object dbedtAuthority: TwwDBEdit
        Left = 205
        Top = 44
        Width = 210
        Height = 21
        Color = clBtnFace
        DataField = 'BaselineAuthority'
        DataSource = dmMain.dsBaseline
        ReadOnly = True
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtAuthorityAddress: TwwDBEdit
        Left = 5
        Top = 88
        Width = 412
        Height = 21
        Color = clBtnFace
        DataField = 'AuthorityAddress'
        DataSource = dmMain.dsBaseline
        ReadOnly = True
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object tsProcedure: TTabSheet
      Caption = 'tsProcedure'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblProcedureHeader: TLabel
        Left = 6
        Top = 4
        Width = 123
        Height = 29
        Caption = 'Procedure'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblJob3: TLabel
        Left = 5
        Top = 43
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lblBaseline3: TLabel
        Left = 240
        Top = 43
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object pnlButtons3: TPanel
        Left = 646
        Top = 0
        Width = 86
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPageProcedure: TLabel
          Left = 41
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 3'
        end
        object btnNextProcedure: TBitBtn
          Left = 6
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 0
          OnClick = btnNextProcedureClick
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
        object btnCloseProcedure: TBitBtn
          Left = 6
          Top = 141
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = btnCloseProcedureClick
          Kind = bkClose
        end
        object btnHelpProcedure: TBitBtn
          Left = 6
          Top = 104
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnHelpProcedureClick
          Kind = bkHelp
        end
        object btnBackProcedure: TBitBtn
          Left = 6
          Top = 58
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 3
          OnClick = btnBackProcedureClick
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
      end
      object pnlJobProcedure: TPanel
        Left = 28
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object pnlBaselineProcedure: TPanel
        Left = 286
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object pcAccreditation: TPageControl
        Left = 0
        Top = 86
        Width = 541
        Height = 347
        ActivePage = tsAccreditation
        TabOrder = 3
        object tsAccreditation: TTabSheet
          Caption = 'tsAccreditation'
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label96: TLabel
            Left = 1
            Top = 61
            Width = 123
            Height = 16
            Caption = 'Work Instructions:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTraceability: TLabel
            Left = 1
            Top = 164
            Width = 88
            Height = 16
            Caption = 'Traceability:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTestingAuthority: TLabel
            Left = 1
            Top = 8
            Width = 121
            Height = 16
            Caption = 'Testing Authority:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtAuthority: TEdit
            Left = 1
            Top = 26
            Width = 152
            Height = 21
            TabOrder = 0
            Text = 'DLI'
            OnChange = edtAuthorityChange
          end
          object memProcedure: TMemo
            Left = 1
            Top = 79
            Width = 532
            Height = 64
            Lines.Strings = (
              '')
            TabOrder = 1
            OnChange = memProcedureChange
          end
          object memTraceability: TMemo
            Left = 1
            Top = 180
            Width = 532
            Height = 67
            TabOrder = 2
            OnChange = memTraceabilityChange
          end
        end
        object tsBaselineAccreditation: TTabSheet
          Caption = 'tsBaselineAccreditation'
          ImageIndex = 1
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label121: TLabel
            Left = 0
            Top = 10
            Width = 153
            Height = 16
            Caption = 'Baseline Traceability:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 0
            Top = 98
            Width = 131
            Height = 16
            Caption = 'Legal Traceability:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object memBaselineTraceability: TMemo
            Left = 0
            Top = 29
            Width = 532
            Height = 67
            Lines.Strings = (
              'memBaselineTraceability')
            TabOrder = 0
          end
          object memLegalTraceability: TMemo
            Left = 0
            Top = 116
            Width = 532
            Height = 67
            TabOrder = 1
          end
          object memPrint: TMemo
            Left = 3
            Top = 216
            Width = 531
            Height = 89
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              
                '1234567890123456789012345678901234567890123456789012345678901234' +
                '5678901234'
              '5'
              
                'The calibration of the EDM instrument has been carried out accor' +
                'ding to '
              'Work Instructions '#39'200/02/1550'#39)
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object tsAccreditationPage: TTabSheet
      Caption = 'tsAccreditationPage'
      ImageIndex = 13
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblAccreditationHeader: TLabel
        Left = 6
        Top = 4
        Width = 153
        Height = 29
        Caption = 'Accreditation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblJob4: TLabel
        Left = 5
        Top = 43
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lblBaseline4: TLabel
        Left = 240
        Top = 43
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object lblAccreditationAuthority: TLabel
        Left = 28
        Top = 93
        Width = 160
        Height = 16
        Caption = 'Accreditation Authority:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAccreditationDate: TLabel
        Left = 226
        Top = 93
        Width = 133
        Height = 16
        Caption = 'Accreditation Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAccreditationStatement: TLabel
        Left = 28
        Top = 326
        Width = 169
        Height = 16
        Caption = 'Accreditation Statement:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlButtons4: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPageAccreditation: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 4'
        end
        object btnNextAccreditation: TBitBtn
          Left = 10
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 0
          OnClick = btnNextAccreditationClick
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
        object btnAccreditationClose: TBitBtn
          Left = 10
          Top = 141
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = btnCloseProcedureClick
          Kind = bkClose
        end
        object btnAccreditationHelp: TBitBtn
          Left = 10
          Top = 104
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnAccreditationHelpClick
          Kind = bkHelp
        end
        object btnBackAccreditation: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 3
          OnClick = btnBackAccreditationClick
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
      end
      object pnlJobProcedure2: TPanel
        Left = 28
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object pnlBaselineProcedure2: TPanel
        Left = 286
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object gbAccreditation: TGroupBox
        Left = 28
        Top = 137
        Width = 276
        Height = 180
        Caption = 'Accreditation Logo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object lblLogoTitle: TLabel
          Left = 8
          Top = 138
          Width = 27
          Height = 26
          Caption = 'Logo Title:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object btnLogoAccreditation: TButton
          Left = 34
          Top = 105
          Width = 75
          Height = 25
          Caption = 'Change Logo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnLogo1Click
        end
        object btnDeleteLogoAccreditation: TButton
          Left = 130
          Top = 104
          Width = 75
          Height = 25
          Caption = 'Delete Logo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnDeleteLogo2Click
        end
        object Panel24: TPanel
          Left = 8
          Top = 17
          Width = 229
          Height = 79
          BevelOuter = bvLowered
          TabOrder = 2
          object ImageAccreditation1: TImage
            Left = 1
            Top = 1
            Width = 227
            Height = 77
            Align = alClient
            Picture.Data = {
              07544269746D61705E230000424D5E2300000000000036000000280000003C00
              000032000000010018000000000028230000C20E0000C20E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8
              DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC
              C4C8000040000040000040000040000040000040000040000040000040000040
              000040000040000040000040000040DCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C800004000004000004000004000
              0040000040000040000040000040000040000040000040000040000040000040
              000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4
              C800004000004000004000004000004000004000004000004000004000004000
              0040000040000040000040000040000040000040000040000040000040000040
              DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4
              C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4
              C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DC
              C4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8
              DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF0000400000400000400000400000400000400000400000400000
              4000004000004000004000004000004000004000004000004000004000004000
              0040000040000040000040000040000040000040000040000040000040000040
              DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
              0000400000400000400000400000400000400000400000400000400000400000
              4000004000004000004000004000004000004000004000004000004000004000
              0040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C8
              DCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4
              C8FFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040000040
              0000400000400000400000400000400000400000400000400000400000400000
              40000040000040000040000040000040000040000040000040000040000040DC
              C4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8
              DCC4C8DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFF0000400000
              40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF000040000040000040000040000040000040000040000040000040000040
              0000400000400000400000400000400000400000400000400000400000400000
              40000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF000040000040000040000040000040000040000040000040000040
              000040000040DCC4C8FFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
              0040000040000040000040000040000040000040000040000040000040000040
              0000400000400000400000400000400000400000400000400000400000400000
              40DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000
              0040000040000040000040000040000040000040000040DCC4C8FFFFFFFFFFFF
              FFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFF
              FFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040
              DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8000040000040000040
              000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000040000040DCC4C8DCC4C8FFFFFF000040000040DCC4C8FF
              FFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4
              C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDCC4C8000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFFFFFFF0000400000
              40000040DCC4C8000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF00
              0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800004000004000004000
              0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
              000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040DCC4C80000400000
              40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
              000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFF
              FFFFFFFFFFFF000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFF
              FFFFFFFFDCC4C8000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C80000400000400000
              40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF000040000040
              000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C80000400000400000
              40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DC
              C4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFF
              FFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
              0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8000040000040
              000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040
              000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
              FFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              40000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFDCC4C8DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C800004000004000
              0040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C800004000
              0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4
              C8FFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8
              DCC4C8DCC4C8000040000040000040DCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFF
              FFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFDCC4C80000400000
              40000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040
              000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C80000400000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
              000040000040DCC4C8DCC4C8000040000040000040000040DCC4C8FFFFFFDCC4
              C8DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DC
              C4C8FFFFFF000040000040000040000040000040000040000040000040000040
              DCC4C8FFFFFFFFFFFFDCC4C8000040000040000040000040000040000040DCC4
              C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040000040
              000040000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFF
              FFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFF00004000004000
              0040000040000040000040000040000040000040DCC4C8FFFFFFDCC4C8000040
              000040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF000040000040000040000040000040000040000040DCC4C8FFFFFFFFFFFF
              FFFFFFFFFFFF000040000040000040000040DCC4C8DCC4C8DCC4C80000400000
              40000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDCC4C8000040000040000040000040000040000040000040
              000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
              0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040
              000040000040000040000040000040000040000040000040DCC4C8FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800004000
              0040000040000040DCC4C8FFFFFF000040000040000040000040DCC4C8FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF000040000040000040000040000040DCC4C8FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040
              000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFF
              FFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C80000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFF000040000040000040
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C80000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF00004000004000004000
              0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDCC4C8DCC4C8000040000040000040000040DCC4C8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000
              0040DCC4C8FFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFF
              FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040
              000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C800004000
              0040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8
              000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8DCC4C8
              DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4
              C8FFFFFF000040000040000040EBDDDF000040000040000040DCC4C8FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040000040DCC4C8
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4
              C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0040000040000040000040DCC4C8FFFFFF000040000040000040DCC4C8FFFFFF
              FFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFF0000400000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800
              0040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FF
              FFFFFFFFFF000040000040000040DCC4C8FFFFFFDCC4C8000040000040000040
              000040E6D6D8FFFFFFFFFFFFFFFFFF000040000040000040000040000040DCC4
              C8FFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
              000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFF00004000004000
              0040DCC4C8FFFFFF000040000040000040000040000040E6D6D8FFFFFFFFFFFF
              FFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFDCC4
              C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000400000
              40DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040DCC4C8DCC4C800004000
              0040000040000040000040E6D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4
              C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFF
              FF000040000040000040DCC4C8000040000040DCC4C8DCC4C8000040000040E6
              D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8
              DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
              0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFF0000400000400000400000
              40000040000040DCC4C8FFFFFF000040000040E6D6D8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8
              FFFFFFFFFFFFFFFFFF000040000040000040000040000040000040DCC4C8FFFF
              FF000040000040E6D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC
              C4C8000040000040000040000040DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8
              DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C80000
              40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFF000040
              000040000040000040000040DCC4C8FFFFFFFFFFFF000040000040E6D6D8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800004000004000004000004000
              0040000040000040000040000040000040000040000040000040000040000040
              000040000040000040000040000040000040000040000040000040000040DCC4
              C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0040000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8
              FFFFFFFFFFFFFFFFFF000040000040E6D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFDCC4C800004000004000004000004000004000004000004000004000004000
              0040000040000040000040000040000040000040000040000040000040000040
              000040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFF
              FFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFF000040000040
              000040000040FFFFFFFFFFFFFFFFFFDCC4C8DCC4C80000400000400000400000
              4000004000004000004000004000004000004000004000004000004000004000
              0040000040000040000040000040000040000040000040000040000040000040
              000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000040000040D5BBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0000400000400000400000400000400000400000400000400000400000
              4000004000004000004000004000004000004000004000004000004000004000
              0040000040000040000040000040000040000040000040000040DCC4C8FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000400000
              40DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DC
              C4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8000040000040000040000040
              DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000400000400000400000400000400000
              4000004000004000004000004000004000004000004000004000004000004000
              0040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0000400000400000400000400000400000400000400000400000400000
              4000004000004000004000004000004000004000004000004000004000004000
              0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
          end
        end
        object memAccreditationLogoTitle: TMemo
          Left = 33
          Top = 138
          Width = 231
          Height = 34
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Lines.Strings = (
            'NATA Accredited Laboratory'
            'Number 58682')
          ParentFont = False
          TabOrder = 3
          OnChange = memTraceabilityChange
        end
      end
      object edtAccreditationAuthority: TEdit
        Left = 28
        Top = 110
        Width = 152
        Height = 21
        TabOrder = 4
        Text = 'NATA'
        OnChange = edtAccreditationAuthorityChange
      end
      object pickAccreditationDate: TDateTimePicker
        Left = 226
        Top = 109
        Width = 152
        Height = 21
        Date = 0.380094942098367000
        Time = 0.380094942098367000
        TabOrder = 5
        OnClick = pickAccreditationDateClick
        OnCloseUp = pickAccreditationDateCloseUp
        OnChange = pickAccreditationDateChange
      end
      object edtHideDate: TEdit
        Left = 227
        Top = 109
        Width = 134
        Height = 21
        ReadOnly = True
        TabOrder = 6
      end
      object memAccreditationStatement: TMemo
        Left = 27
        Top = 341
        Width = 427
        Height = 67
        Lines.Strings = (
          ''
          ' ')
        TabOrder = 7
        OnChange = memTraceabilityChange
      end
      object chkAccreditation: TCheckBox
        Left = 29
        Top = 72
        Width = 97
        Height = 17
        Caption = 'Accreditation'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
    end
    object tsLeastUncertainty: TTabSheet
      Caption = 'tsLeastUncertainty'
      ImageIndex = 14
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblLeastUncertainty: TLabel
        Left = 2
        Top = 4
        Width = 473
        Height = 29
        Caption = 'Least Uncertainty of Measurement (LUM)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 232
        Top = 200
        Width = 32
        Height = 13
        Caption = 'Label1'
      end
      object pnlButtonsLeastUncertainty: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblLeastUncertaintyPage: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 5'
        end
        object btnBackLeastUncertainty: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 0
          OnClick = btnBackLeastUncertaintyClick
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
        object btnNextLeastUncertainty: TBitBtn
          Left = 11
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNextLeastUncertaintyClick
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
        object btnCloseLeastUncertainty: TBitBtn
          Left = 11
          Top = 126
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelpLeastUncertainty: TBitBtn
          Left = 11
          Top = 91
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = btnHelpLeastUncertaintyClick
          Kind = bkHelp
        end
      end
      object pcLUM: TPageControl
        Left = 34
        Top = 74
        Width = 481
        Height = 258
        ActivePage = tsLUMEDM
        TabOrder = 1
        OnChanging = pcLUMChanging
        object tsLUMBaseline: TTabSheet
          Caption = 'Baseline Calibration'
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label7: TLabel
            Left = 30
            Top = 156
            Width = 33
            Height = 13
            Caption = 'NOTE:'
          end
          object chkBaselineLUM1: TCheckBox
            Left = 31
            Top = 108
            Width = 393
            Height = 41
            Caption = 
              'Replace the actual computed uncertainties of the baselines dista' +
              'nces on the certificate and report with the LUM if the LUM is la' +
              'rger.'
            Checked = True
            State = cbChecked
            TabOrder = 1
            WordWrap = True
            OnClick = chkBaselineLUM1Click
          end
          object Memo7: TMemo
            Left = 32
            Top = 172
            Width = 407
            Height = 69
            Color = clBtnFace
            Lines.Strings = (
              
                'The actual computed uncertainties of the certified baseline dist' +
                'ances will always be '
              
                'stored in the database even if they are lower than the LUM. If t' +
                'he baseline '
              
                'calibrations regularly achieves better than the current LUM, the' +
                'n at the next '
              
                'accreditation assessment, the LUM should be revised to the impro' +
                'ved figure.')
            ReadOnly = True
            TabOrder = 2
          end
          object gbBaselineLUMUnits: TGroupBox
            Left = 31
            Top = 8
            Width = 408
            Height = 87
            Caption = 'Least Uncertainty of Measurement at a confidencel level of 95%:'
            TabOrder = 0
            inline FrameLUMUnits2: TFrameLUMUnits
              Left = 16
              Top = 16
              Width = 352
              Height = 50
              TabOrder = 0
              ExplicitLeft = 16
              ExplicitTop = 16
              inherited pnlNewLUMUnits: TPanel
                inherited FrameNewLumUnits1: TFrameNewLumUnits
                  inherited lblLumUnits1: TLabel
                    Width = 6
                    ExplicitWidth = 6
                  end
                end
              end
            end
          end
        end
        object tsLUMEDM: TTabSheet
          Caption = 'EDM Instrument Calibration'
          ImageIndex = 1
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object chkEDMLUM1: TCheckBox
            Left = 28
            Top = 150
            Width = 381
            Height = 41
            Caption = 
              'Replace the actual computed uncertainty of the EDM Instrument co' +
              'rrection with the LUM if the LUM is larger.'
            Checked = True
            State = cbChecked
            TabOrder = 1
            WordWrap = True
            OnClick = chkEDMLUM1Click
          end
          object gbLumUnits: TGroupBox
            Left = 20
            Top = 30
            Width = 429
            Height = 88
            Caption = 'Least Uncertainty of Measurement at a confidencel level of 95%:'
            TabOrder = 0
            inline FrameLUMUnits1: TFrameLUMUnits
              Left = 8
              Top = 16
              Width = 352
              Height = 50
              TabOrder = 0
              ExplicitLeft = 8
              ExplicitTop = 16
              inherited pnlNewLUMUnits: TPanel
                inherited FrameNewLumUnits1: TFrameNewLumUnits
                  inherited lblLumUnits1: TLabel
                    Width = 6
                    ExplicitWidth = 6
                  end
                end
              end
            end
          end
        end
      end
    end
    object tsEDM: TTabSheet
      Caption = 'tsEDM'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblInstrumentType: TLabel
        Left = 21
        Top = 92
        Width = 96
        Height = 13
        Caption = 'Instrument Type:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAtInstrument: TLabel
        Left = 317
        Top = 141
        Width = 84
        Height = 13
        Caption = 'Serial Number:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblInstrumentOwner: TLabel
        Left = 21
        Top = 191
        Width = 104
        Height = 13
        Caption = 'Instrument Owner:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblInstrumentMake: TLabel
        Left = 21
        Top = 141
        Width = 99
        Height = 13
        Caption = 'Instrument Make:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAtInstrumentModel: TLabel
        Left = 169
        Top = 141
        Width = 102
        Height = 13
        Caption = 'Instrument Model:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblEDMHEader: TLabel
        Left = 6
        Top = 4
        Width = 122
        Height = 29
        Caption = 'Instrument'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblJobEDM: TLabel
        Left = 5
        Top = 43
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lblBaselineEDM: TLabel
        Left = 240
        Top = 43
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object lblOwnerAddress2: TLabel
        Left = 267
        Top = 191
        Width = 99
        Height = 13
        Caption = 'Owner'#39's Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 21
        Top = 250
        Width = 129
        Height = 13
        Caption = 'Unit Wave Length (m):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 182
        Top = 250
        Width = 157
        Height = 13
        Caption = 'Modulation Frequency (Hz):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 21
        Top = 294
        Width = 150
        Height = 13
        Caption = 'Carrier Wave Length (nm):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 182
        Top = 294
        Width = 211
        Height = 13
        Caption = 'Manufacturer'#39's Ref Refractive Index:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtInst1Owner: TEdit
        Left = 21
        Top = 206
        Width = 236
        Height = 21
        MaxLength = 38
        TabOrder = 4
      end
      object pnlButtonsEDM: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPageEDM: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 6'
        end
        object btnBack3: TBitBtn
          Left = 11
          Top = 57
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
        object btnNext3: TBitBtn
          Left = 11
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
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
        object btnNewMake: TBitBtn
          Left = 11
          Top = 95
          Width = 75
          Height = 25
          Caption = 'New &Make'
          TabOrder = 2
          OnClick = btnNewMakeClick
        end
        object btnNewModel: TBitBtn
          Left = 11
          Top = 121
          Width = 75
          Height = 25
          Caption = 'New M&odel'
          TabOrder = 3
          OnClick = btnNewModelClick
        end
        object btnNewInstrument: TBitBtn
          Left = 11
          Top = 147
          Width = 75
          Height = 25
          Caption = 'New &Serial #'
          TabOrder = 4
          OnClick = btnNewInstrumentClick
        end
        object btnCloseEDM: TBitBtn
          Left = 10
          Top = 225
          Width = 75
          Height = 25
          TabOrder = 5
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelpEDM: TBitBtn
          Left = 11
          Top = 187
          Width = 75
          Height = 25
          TabOrder = 6
          OnClick = btnHelpEDMClick
          Kind = bkHelp
        end
      end
      object cmbInstrumentType: TComboBox
        Left = 21
        Top = 108
        Width = 140
        Height = 21
        ItemHeight = 13
        TabOrder = 7
        Text = 'EDM'
        Items.Strings = (
          'EDM'
          'Prism')
      end
      object pnlEDM: TPanel
        Left = 21
        Top = 108
        Width = 140
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = ' EDM'
        TabOrder = 12
      end
      object pnlJob3: TPanel
        Left = 28
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 13
      end
      object pnlBaseline3: TPanel
        Left = 286
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 14
      end
      object rxdblcAtInstrumentMake: TRxDBLookupCombo
        Left = 21
        Top = 157
        Width = 139
        Height = 21
        DropDownCount = 8
        LookupField = 'MakeID'
        LookupDisplay = 'MakeName'
        LookupSource = dmMain.dsAtInstrumentMake
        TabOrder = 1
        OnCloseUp = rxdblcAtInstrumentMakeCloseUp
        OnExit = rxdblcAtInstrumentMakeExit
      end
      object rxdblcAtInstrumentModel: TRxDBLookupCombo
        Left = 169
        Top = 156
        Width = 139
        Height = 22
        DropDownCount = 8
        LookupField = 'ModelID'
        LookupDisplay = 'ModelName'
        LookupSource = dmMain.dsAtInstrumentModel
        TabOrder = 2
        OnCloseUp = rxdblcAtInstrumentModelCloseUp
        OnExit = rxdblcAtInstrumentModelExit
      end
      object rxdblcAtInstrument: TRxDBLookupCombo
        Left = 317
        Top = 156
        Width = 139
        Height = 22
        DropDownCount = 8
        LookupField = 'InstID'
        LookupDisplay = 'InstSerialNo'
        LookupSource = dmMain.dsAtInstrument
        TabOrder = 3
        OnCloseUp = rxdblcAtInstrumentCloseUp
        OnExit = rxdblcAtInstrumentCloseUp
      end
      object dbchkIsPulse: TDBCheckBox
        Left = 185
        Top = 111
        Width = 137
        Height = 17
        Caption = 'Pulse Distance Meter'
        DataField = 'isPulseMeter'
        DataSource = dmMain.dsAtInstrumentModel
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object edtInst1OwnerAddress: TEdit
        Left = 267
        Top = 206
        Width = 248
        Height = 21
        MaxLength = 40
        TabOrder = 5
      end
      object dbedtUnitWaveLength: TwwDBEdit
        Left = 21
        Top = 264
        Width = 121
        Height = 21
        DataField = 'ModelUnitLength'
        DataSource = dmMain.dsAtInstrumentModel
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtCarrierWaveLength: TwwDBEdit
        Left = 21
        Top = 309
        Width = 121
        Height = 21
        DataField = 'ModelCarrierWaveLength'
        DataSource = dmMain.dsAtInstrumentModel
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtFrequency: TwwDBEdit
        Left = 183
        Top = 264
        Width = 121
        Height = 21
        DataField = 'ModelModFreq'
        DataSource = dmMain.dsAtInstrumentModel
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbedtRefractiveIndex: TwwDBEdit
        Left = 183
        Top = 309
        Width = 121
        Height = 21
        DataField = 'ManuRefractiveIndex'
        DataSource = dmMain.dsAtInstrumentModel
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object tsPrism: TTabSheet
      Caption = 'tsPrism'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl_tsPrism_InstType: TLabel
        Left = 28
        Top = 83
        Width = 96
        Height = 13
        Caption = 'Instrument Type:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblToInstrument: TLabel
        Left = 324
        Top = 132
        Width = 84
        Height = 13
        Caption = 'Serial Number:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrismOwner: TLabel
        Left = 28
        Top = 182
        Width = 104
        Height = 13
        Caption = 'Instrument Owner:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblToInstrumentMake: TLabel
        Left = 28
        Top = 132
        Width = 99
        Height = 13
        Caption = 'Instrument Make:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblToInstrumentModel: TLabel
        Left = 176
        Top = 132
        Width = 102
        Height = 13
        Caption = 'Instrument Model:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrismHeader: TLabel
        Left = 6
        Top = 4
        Width = 68
        Height = 29
        Caption = 'Prism'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_tsPrism_Job: TLabel
        Left = 5
        Top = 43
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lbl_tsPrism_Baselinr: TLabel
        Left = 240
        Top = 43
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object edtInst2Owner: TEdit
        Left = 28
        Top = 197
        Width = 236
        Height = 21
        MaxLength = 38
        TabOrder = 0
      end
      object pnlButtonsPrism: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 1
        object lblPagePrism: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 7'
        end
        object btnBack4: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 0
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
        object btnNext4: TBitBtn
          Left = 11
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNext4Click
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
        object btnNewPrismMake: TBitBtn
          Left = 11
          Top = 95
          Width = 75
          Height = 25
          Caption = 'New &Make'
          TabOrder = 2
          OnClick = btnNewPrismMakeClick
        end
        object btnNewPrismModel: TBitBtn
          Left = 11
          Top = 121
          Width = 75
          Height = 25
          Caption = 'New M&odel'
          TabOrder = 3
          OnClick = btnNewPrismModelClick
        end
        object btnNewPrism: TBitBtn
          Left = 11
          Top = 147
          Width = 75
          Height = 25
          Caption = 'New &Serial #'
          TabOrder = 4
          OnClick = btnNewPrismClick
        end
        object btnClose4: TBitBtn
          Left = 11
          Top = 219
          Width = 75
          Height = 25
          TabOrder = 5
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelp4: TBitBtn
          Left = 11
          Top = 183
          Width = 75
          Height = 25
          TabOrder = 6
          OnClick = btnHelp4Click
          Kind = bkHelp
        end
      end
      object pnlPrismType: TPanel
        Left = 28
        Top = 100
        Width = 140
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Prism'
        TabOrder = 2
      end
      object pnlBaseline4: TPanel
        Left = 286
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 3
      end
      object pnlJob4: TPanel
        Left = 28
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object rxdblcToInstrumentMake: TRxDBLookupCombo
        Left = 27
        Top = 148
        Width = 139
        Height = 21
        DropDownCount = 8
        LookupField = 'MakeID'
        LookupDisplay = 'MakeName'
        LookupSource = dmMain.dsToInstrumentMake
        TabOrder = 5
        OnCloseUp = rxdblcToInstrumentMakeCloseUp
        OnExit = rxdblcToInstrumentMakeExit
      end
      object rxdblcToInstrumentModel: TRxDBLookupCombo
        Left = 175
        Top = 147
        Width = 139
        Height = 22
        DropDownCount = 8
        LookupField = 'ModelID'
        LookupDisplay = 'ModelName'
        LookupSource = dmMain.dsToInstrumentModel
        TabOrder = 6
        OnCloseUp = rxdblcToInstrumentModelCloseUp
        OnExit = rxdblcToInstrumentModelExit
      end
      object rxdblcToInstrument: TRxDBLookupCombo
        Left = 323
        Top = 146
        Width = 139
        Height = 22
        DropDownCount = 8
        LookupField = 'InstID'
        LookupDisplay = 'InstSerialNo'
        LookupSource = dmMain.dsToInstrument
        TabOrder = 7
        OnCloseUp = rxdblcToInstrumentCloseUp
        OnExit = rxdblcToInstrumentCloseUp
      end
      object gbPrismConstant: TGroupBox
        Left = 28
        Top = 236
        Width = 253
        Height = 137
        Caption = 'Prism Constant'
        TabOrder = 8
        object Label16: TLabel
          Left = 23
          Top = 98
          Width = 73
          Height = 13
          Caption = 'Prism Constant:'
        end
        object Label39: TLabel
          Left = 205
          Top = 100
          Width = 31
          Height = 13
          Caption = 'metres'
        end
        object rbtnPrismConstantInEDM: TRadioButton
          Left = 20
          Top = 28
          Width = 197
          Height = 17
          Caption = 'Prism Constant entered in EDM'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rbtnNoPrismConstantInEDM: TRadioButton
          Left = 20
          Top = 60
          Width = 193
          Height = 17
          Caption = 'Prism Constant not entered in EDM'
          TabOrder = 1
        end
        object dbedtPrismConstant: TwwDBEdit
          Left = 99
          Top = 95
          Width = 101
          Height = 21
          Color = clBtnFace
          DataField = 'InstConstant'
          DataSource = dmMain.dsToInstrument
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object tsAddInstrument: TTabSheet
      Caption = 'tsAddInstrument'
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pcInstrument: TPageControl
        Left = 0
        Top = 0
        Width = 732
        Height = 474
        ActivePage = tsInstrument
        Align = alClient
        TabOrder = 0
        object tsInstrumentMake: TTabSheet
          Caption = 'tsInstrumentMake'
          ImageIndex = 2
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblMake: TLabel
            Left = 56
            Top = 96
            Width = 36
            Height = 13
            Caption = 'Make:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCountry: TLabel
            Left = 56
            Top = 144
            Width = 100
            Height = 13
            Caption = 'Country of Origin:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblMakeHeader: TLabel
            Left = 2
            Top = 4
            Width = 305
            Height = 29
            Caption = 'Add New Instrument Make'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblType: TLabel
            Left = 256
            Top = 95
            Width = 33
            Height = 13
            Caption = 'Type:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_tsInstrumentMake_Job: TLabel
            Left = 5
            Top = 43
            Width = 20
            Height = 13
            Caption = 'Job:'
          end
          object lbl_tsInstrumentMake_Baseline: TLabel
            Left = 240
            Top = 43
            Width = 43
            Height = 13
            Caption = 'Baseline:'
          end
          object edtInstrumentMake: TEdit
            Left = 56
            Top = 112
            Width = 185
            Height = 21
            TabOrder = 0
            OnChange = EditClick
            OnClick = EditClick
            OnExit = edtInstrumentMakeExit
          end
          object edtCountry: TEdit
            Left = 56
            Top = 160
            Width = 181
            Height = 21
            TabOrder = 1
          end
          object edtType2: TEdit
            Left = 256
            Top = 111
            Width = 113
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 2
            Text = 'EDM'
          end
          object pnlButtonsInstMake: TPanel
            Left = 631
            Top = 0
            Width = 93
            Height = 464
            Align = alRight
            TabOrder = 3
            object btnInstrumentNext2: TBitBtn
              Left = 12
              Top = 18
              Width = 75
              Height = 25
              Caption = '&Next'
              TabOrder = 0
              OnClick = btnInstrumentNext2Click
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
            object btnInstrumentBack2: TBitBtn
              Left = 12
              Top = 43
              Width = 75
              Height = 25
              Caption = '&Back'
              TabOrder = 1
              OnClick = btnInstrumentBack2Click
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
            object btnCloseMake: TBitBtn
              Left = 12
              Top = 118
              Width = 75
              Height = 25
              TabOrder = 2
              OnClick = btnClose1Click
              Kind = bkClose
            end
            object btnHelpMake: TBitBtn
              Left = 12
              Top = 81
              Width = 75
              Height = 25
              TabOrder = 3
              OnClick = btnHelpMakeClick
              Kind = bkHelp
            end
          end
          object pnlJobInst1: TPanel
            Left = 28
            Top = 39
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 4
          end
          object pnlBaselineInst1: TPanel
            Left = 286
            Top = 39
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 5
          end
        end
        object tsInstrumentModel: TTabSheet
          Caption = 'Model'
          ImageIndex = 1
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label37: TLabel
            Left = 8
            Top = 81
            Width = 39
            Height = 13
            Caption = 'Model:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblModelStdDevConst: TLabel
            Left = 8
            Top = 171
            Width = 105
            Height = 13
            Caption = 'Std Dev Constant:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblModelStdDevPPM: TLabel
            Left = 176
            Top = 171
            Width = 144
            Height = 13
            Caption = 'Std Dev parts per million:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblWaveLength: TLabel
            Left = 8
            Top = 219
            Width = 108
            Height = 13
            Caption = 'Unit Wave Length:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblModFreq: TLabel
            Left = 176
            Top = 219
            Width = 130
            Height = 13
            Caption = 'Modulation Frequency:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 8
            Top = 125
            Width = 62
            Height = 13
            Caption = 'Comments:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCarrierWaveLength: TLabel
            Left = 8
            Top = 263
            Width = 122
            Height = 13
            Caption = 'Carrier Wave Length:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblModelHeader: TLabel
            Left = 0
            Top = 0
            Width = 315
            Height = 29
            Caption = 'Add New Instrument Model'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 157
            Top = 81
            Width = 36
            Height = 13
            Caption = 'Make:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 354
            Top = 81
            Width = 33
            Height = 13
            Caption = 'Type:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label59: TLabel
            Left = 5
            Top = 43
            Width = 20
            Height = 13
            Caption = 'Job:'
          end
          object Label63: TLabel
            Left = 240
            Top = 43
            Width = 43
            Height = 13
            Caption = 'Baseline:'
          end
          object lblRefractiveIndex: TLabel
            Left = 176
            Top = 263
            Width = 250
            Height = 13
            Caption = 'Manufacturer'#39's Reference Refractive Index:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object bedtModelStdDevConst: TBtnEdit
            Left = 8
            Top = 187
            Width = 151
            Height = 21
            BtnFont.Charset = DEFAULT_CHARSET
            BtnFont.Color = clBlack
            BtnFont.Height = -11
            BtnFont.Name = 'MS Sans Serif'
            BtnFont.Style = [fsBold]
            MinValue = -1.7E308
            MaxValue = 1.7E308
            TabOrder = 1
            Units.Strings = (
              ' m ')
            UnitConversions.Strings = (
              '1.0')
            UnitIndex = 0
            DecimalPlaces = -1
          end
          object edtModelStdDevPPM: TEdit
            Left = 176
            Top = 187
            Width = 157
            Height = 21
            TabOrder = 2
            Text = '0'
            OnChange = edtModelStdDevPPMChange
          end
          object bedtWaveLength: TBtnEdit
            Left = 8
            Top = 235
            Width = 150
            Height = 21
            BtnFont.Charset = DEFAULT_CHARSET
            BtnFont.Color = clBlack
            BtnFont.Height = -11
            BtnFont.Name = 'MS Sans Serif'
            BtnFont.Style = [fsBold]
            MinValue = -1.7E308
            MaxValue = 1.7E308
            TabOrder = 3
            Units.Strings = (
              ' m '
              '')
            UnitConversions.Strings = (
              '1.0'
              '')
            UnitIndex = 0
            DecimalPlaces = -1
            OnExit = bedtWaveLengthExit
          end
          object bedtModFreq: TBtnEdit
            Left = 176
            Top = 235
            Width = 157
            Height = 21
            BtnFont.Charset = DEFAULT_CHARSET
            BtnFont.Color = clBlack
            BtnFont.Height = -11
            BtnFont.Name = 'MS Sans Serif'
            BtnFont.Style = [fsBold]
            MinValue = -1.7E308
            MaxValue = 1.7E308
            TabOrder = 4
            Units.Strings = (
              'Hz'
              'cps')
            UnitConversions.Strings = (
              '1.0'
              '1.0')
            UnitIndex = 0
            DecimalPlaces = -1
            OnExit = bedtModFreqExit
          end
          object edtModelComments: TEdit
            Left = 8
            Top = 142
            Width = 289
            Height = 21
            MaxLength = 30
            TabOrder = 6
          end
          object bedtCarrierWaveLength: TBtnEdit
            Left = 8
            Top = 279
            Width = 149
            Height = 21
            BtnFont.Charset = DEFAULT_CHARSET
            BtnFont.Color = clBlack
            BtnFont.Height = -11
            BtnFont.Name = 'MS Sans Serif'
            BtnFont.Style = [fsBold]
            MinValue = -1.7E308
            MaxValue = 1.7E308
            TabOrder = 5
            Units.Strings = (
              'nm')
            UnitConversions.Strings = (
              '1.0')
            UnitIndex = 0
            DecimalPlaces = -1
            OnExit = bedtCarrierWaveLengthExit
          end
          object edtModelName: TEdit
            Left = 8
            Top = 97
            Width = 137
            Height = 21
            TabOrder = 0
            OnChange = EditClick
            OnClick = EditClick
            OnExit = edtModelNameExit
          end
          object edtMake3: TEdit
            Left = 157
            Top = 97
            Width = 185
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 7
          end
          object edtType3: TEdit
            Left = 354
            Top = 97
            Width = 113
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 8
            Text = 'EDM'
          end
          object Panel11: TPanel
            Left = 631
            Top = 0
            Width = 93
            Height = 464
            Align = alRight
            TabOrder = 9
            object btnInstrumentNext3: TBitBtn
              Left = 10
              Top = 18
              Width = 75
              Height = 25
              Caption = '&Next'
              TabOrder = 0
              OnClick = btnInstrumentNext3Click
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
            object btnInstrumentBack3: TBitBtn
              Left = 10
              Top = 45
              Width = 75
              Height = 25
              Caption = '&Back'
              TabOrder = 1
              OnClick = btnInstrumentBack3Click
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
            object btnCloseModel: TBitBtn
              Left = 10
              Top = 119
              Width = 75
              Height = 25
              TabOrder = 2
              OnClick = btnClose1Click
              Kind = bkClose
            end
            object btnHelpModel: TBitBtn
              Left = 10
              Top = 81
              Width = 75
              Height = 25
              TabOrder = 3
              OnClick = btnHelpModelClick
              Kind = bkHelp
            end
          end
          object pnlJobInst2: TPanel
            Left = 28
            Top = 39
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 10
          end
          object pnlBaselineInst2: TPanel
            Left = 286
            Top = 39
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 11
          end
          object chkNewPulse: TCheckBox
            Left = 16
            Top = 320
            Width = 129
            Height = 17
            Caption = 'Pulse Distance Meter'
            TabOrder = 12
          end
          object edtRefractiveIndex: TEdit
            Left = 176
            Top = 280
            Width = 153
            Height = 21
            TabOrder = 13
            OnChange = edtRefractiveIndexChange
          end
        end
        object tsInstrument: TTabSheet
          Caption = 'Instrument'
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblSerialNumber: TLabel
            Left = 9
            Top = 77
            Width = 57
            Height = 13
            Caption = 'Serial No:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblInstrumentHeader: TLabel
            Left = 0
            Top = 0
            Width = 235
            Height = 29
            Caption = 'Add New Instrument'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblInstMake: TLabel
            Left = 157
            Top = 121
            Width = 36
            Height = 13
            Caption = 'Make:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblInstModel: TLabel
            Left = 9
            Top = 121
            Width = 39
            Height = 13
            Caption = 'Model:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblInstType: TLabel
            Left = 354
            Top = 118
            Width = 33
            Height = 13
            Caption = 'Type:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_tsInstrument_Job: TLabel
            Left = 5
            Top = 43
            Width = 20
            Height = 13
            Caption = 'Job:'
          end
          object lbl_tsInstrument_Baseline: TLabel
            Left = 240
            Top = 43
            Width = 43
            Height = 13
            Caption = 'Baseline:'
          end
          object lblInstComments: TLabel
            Left = 9
            Top = 215
            Width = 62
            Height = 13
            Caption = 'Comments:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblInstOwner: TLabel
            Left = 9
            Top = 167
            Width = 104
            Height = 13
            Caption = 'Instrument Owner:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblOwnerAddress: TLabel
            Left = 261
            Top = 167
            Width = 99
            Height = 13
            Caption = 'Owner'#39's Address:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnlConstants: TPanel
            Left = 360
            Top = 308
            Width = 133
            Height = 101
            BevelOuter = bvNone
            TabOrder = 9
            Visible = False
            object lblInstConst: TLabel
              Left = 1
              Top = 11
              Width = 55
              Height = 13
              Caption = 'Constant:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object lblInstScaleFact: TLabel
              Left = 1
              Top = 55
              Width = 72
              Height = 13
              Caption = 'Scale (ppm):'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object bedtInstConst2: TBtnEdit
              Left = 1
              Top = 27
              Width = 108
              Height = 21
              BtnFont.Charset = DEFAULT_CHARSET
              BtnFont.Color = clWindowText
              BtnFont.Height = -11
              BtnFont.Name = 'MS Sans Serif'
              BtnFont.Style = []
              MinValue = -1.7E308
              MaxValue = 1.7E308
              TabOrder = 0
              Units.Strings = (
                'metres')
              UnitConversions.Strings = (
                '1.0')
              UnitIndex = 0
              DecimalPlaces = -1
              Visible = False
            end
            object edtInstScaleFact: TEdit
              Left = 2
              Top = 71
              Width = 108
              Height = 21
              TabOrder = 1
              Text = '0'
              Visible = False
            end
          end
          object edtInstrumentSerialNumber: TEdit
            Left = 9
            Top = 93
            Width = 121
            Height = 21
            TabOrder = 0
            OnChange = EditClick
            OnClick = EditClick
            OnExit = edtInstrumentSerialNumberExit
          end
          object edtInstComments: TEdit
            Left = 9
            Top = 229
            Width = 298
            Height = 21
            TabOrder = 2
          end
          object edtMake4: TEdit
            Left = 157
            Top = 137
            Width = 185
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 3
          end
          object edtModel4: TEdit
            Left = 9
            Top = 137
            Width = 137
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 4
          end
          object edtType4: TEdit
            Left = 354
            Top = 137
            Width = 113
            Height = 21
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 5
            Text = 'EDM'
          end
          object pnlButtonsInstrument: TPanel
            Left = 631
            Top = 0
            Width = 93
            Height = 464
            Align = alRight
            TabOrder = 6
            object btnInstrumentBack4: TBitBtn
              Left = 10
              Top = 44
              Width = 75
              Height = 25
              Caption = '&Back'
              TabOrder = 0
              OnClick = btnInstrumentBack4Click
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
            object btnInstrumentNext4: TBitBtn
              Left = 10
              Top = 18
              Width = 75
              Height = 25
              Caption = '&Next'
              TabOrder = 1
              OnClick = btnInstrumentNext4Click
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
            object btnCloseInstrument: TBitBtn
              Left = 10
              Top = 114
              Width = 75
              Height = 25
              TabOrder = 2
              OnClick = btnClose1Click
              Kind = bkClose
            end
            object btnHelpNewInstrument: TBitBtn
              Left = 10
              Top = 79
              Width = 75
              Height = 25
              TabOrder = 3
              OnClick = btnHelpNewInstrumentClick
              Kind = bkHelp
            end
          end
          object pnlJobInst3: TPanel
            Left = 28
            Top = 39
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 7
          end
          object pnlBaselineInst3: TPanel
            Left = 286
            Top = 39
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 8
          end
          object edtInstrumentOwner: TEdit
            Left = 9
            Top = 182
            Width = 236
            Height = 21
            MaxLength = 38
            TabOrder = 1
          end
          object pcStdDev: TPageControl
            Left = 12
            Top = 267
            Width = 259
            Height = 149
            ActivePage = tsEDMStdDev
            TabOrder = 10
            object tsPrismConstant: TTabSheet
              Caption = 'tsPrismConstant'
              TabVisible = False
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object gbNewPrism: TGroupBox
                Left = -1
                Top = 1
                Width = 253
                Height = 137
                Caption = 'Prism Constant'
                TabOrder = 0
                object lblPrismConstant: TLabel
                  Left = 23
                  Top = 98
                  Width = 73
                  Height = 13
                  Caption = 'Prism Constant:'
                end
                object rbtnPrismConstantInEDM2: TRadioButton
                  Left = 20
                  Top = 28
                  Width = 197
                  Height = 17
                  Caption = 'Prism Constant entered in EDM'
                  Checked = True
                  TabOrder = 0
                  TabStop = True
                end
                object rbtnNoPrismConstantInEDM2: TRadioButton
                  Left = 20
                  Top = 60
                  Width = 193
                  Height = 17
                  Caption = 'Prism Constant not entered in EDM'
                  TabOrder = 1
                end
                object bedtInstConst: TBtnEdit
                  Left = 101
                  Top = 95
                  Width = 108
                  Height = 21
                  BtnFont.Charset = DEFAULT_CHARSET
                  BtnFont.Color = clWindowText
                  BtnFont.Height = -11
                  BtnFont.Name = 'MS Sans Serif'
                  BtnFont.Style = []
                  MinValue = -1.7E308
                  MaxValue = 1.7E308
                  TabOrder = 2
                  Units.Strings = (
                    'metres')
                  UnitConversions.Strings = (
                    '1.0')
                  UnitIndex = 0
                  DecimalPlaces = -1
                end
              end
            end
            object tsEDMStdDev: TTabSheet
              Caption = 'tsEDMStdDev'
              ImageIndex = 1
              TabVisible = False
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object gbStdDevEDM: TGroupBox
                Left = -1
                Top = 0
                Width = 253
                Height = 137
                Caption = 'Std Deviations'
                TabOrder = 0
                object lblInstStdDevConst: TLabel
                  Left = 16
                  Top = 31
                  Width = 87
                  Height = 13
                  Caption = 'Std Dev Constant:'
                end
                object lblInstStdDevPPM: TLabel
                  Left = 10
                  Top = 75
                  Width = 96
                  Height = 13
                  Caption = 'Std Deviation (ppm):'
                end
                object bedtInstStdDevConst: TBtnEdit
                  Left = 109
                  Top = 31
                  Width = 108
                  Height = 21
                  BtnFont.Charset = DEFAULT_CHARSET
                  BtnFont.Color = clWindowText
                  BtnFont.Height = -11
                  BtnFont.Name = 'MS Sans Serif'
                  BtnFont.Style = []
                  MinValue = -1.7E308
                  MaxValue = 1.7E308
                  TabOrder = 0
                  Units.Strings = (
                    'metres')
                  UnitConversions.Strings = (
                    '1.0')
                  UnitIndex = 0
                  Value = 0.001000000000000000
                  DecimalPlaces = -1
                end
                object edtInstStdDevPPM: TEdit
                  Left = 111
                  Top = 71
                  Width = 108
                  Height = 21
                  TabOrder = 1
                  Text = '0'
                end
              end
            end
          end
          object edtInstrumentOwnerAddress: TEdit
            Left = 260
            Top = 182
            Width = 248
            Height = 21
            MaxLength = 40
            TabOrder = 11
          end
        end
      end
    end
    object tsUncertainty: TTabSheet
      Caption = 'tsUncertainty'
      ImageIndex = 6
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblUncertaintyHeader: TLabel
        Left = 6
        Top = 4
        Width = 219
        Height = 29
        Caption = 'Enter uncertainties'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlUncertainyButtons: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPageUncertainty: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 8'
        end
        object btnbackUncertainty: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 0
          OnClick = btnbackUncertaintyClick
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
        object btnNextUncertainty: TBitBtn
          Left = 11
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNextUncertaintyClick
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
        object btnCloseUncertainty: TBitBtn
          Left = 11
          Top = 126
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelpUncertainty: TBitBtn
          Left = 11
          Top = 91
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = btnHelpUncertaintyClick
          Kind = bkHelp
        end
      end
      object grpStdDev: TGroupBox
        Left = 224
        Top = 185
        Width = 291
        Height = 70
        Caption = 'Uncertainty of Centring (95%)'
        TabOrder = 5
        object lblUncertaintyCentringEDM: TLabel
          Left = 18
          Top = 22
          Width = 55
          Height = 13
          Caption = 'Instrument: '
        end
        object lblUncertaintyCentringPrism: TLabel
          Left = 22
          Top = 48
          Width = 46
          Height = 13
          Caption = 'Reflector:'
        end
        object lblUncertaintyCentringEDMUnit: TLabel
          Left = 134
          Top = 25
          Width = 16
          Height = 13
          Caption = 'mm'
        end
        object lblUncertaintyCentringPrismUnit: TLabel
          Left = 134
          Top = 48
          Width = 16
          Height = 13
          Caption = 'mm'
        end
        object dbedtUncertaintyCentringEDM: TwwDBEdit
          Left = 73
          Top = 18
          Width = 55
          Height = 21
          DataField = 'InstrumentCentring'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbedtUncertaintyCentringPrism: TwwDBEdit
          Left = 73
          Top = 43
          Width = 55
          Height = 21
          DataField = 'ReflectorCentring'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object gbUncertaintyHeightDiff: TGroupBox
        Left = 8
        Top = 120
        Width = 203
        Height = 101
        Caption = 'Uncertainty of height difference (95%)'
        TabOrder = 1
        object lblUncertaintyEDMHeight: TLabel
          Left = 31
          Top = 22
          Width = 86
          Height = 13
          Caption = 'Instrument Height:'
        end
        object lblUncertaintyPrismHeight: TLabel
          Left = 37
          Top = 46
          Width = 80
          Height = 13
          Caption = 'Reflector Height:'
        end
        object lblUncertaintyPillarHeightDiff: TLabel
          Left = 6
          Top = 70
          Width = 111
          Height = 13
          Caption = 'Pillar Height Difference:'
        end
        object lblUncertaintyEDMHeightUnit: TLabel
          Left = 181
          Top = 23
          Width = 16
          Height = 13
          Caption = 'mm'
        end
        object lblUncertaintyPrismHeightUnit: TLabel
          Left = 181
          Top = 47
          Width = 16
          Height = 13
          Caption = 'mm'
        end
        object lblUncertaintyPillarHeightDiffUnit: TLabel
          Left = 181
          Top = 71
          Width = 16
          Height = 13
          Caption = 'mm'
        end
        object dbedtUncertaintyEDMHeight: TwwDBEdit
          Left = 122
          Top = 18
          Width = 55
          Height = 21
          DataField = 'InstrumentHeight'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbedtUncertaintyPrismHeight: TwwDBEdit
          Left = 122
          Top = 42
          Width = 55
          Height = 21
          DataField = 'ReflectorHeight'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbedtUncertaintyPillarHeightDiff: TwwDBEdit
          Left = 122
          Top = 66
          Width = 55
          Height = 21
          DataField = 'PillarHeightDiff'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object gbUncertaintyMetsUncertainty: TGroupBox
        Left = 8
        Top = 234
        Width = 203
        Height = 116
        Caption = 'Meteorological uncertainties (95%)'
        TabOrder = 2
        object lblUncertaintyTemp: TLabel
          Left = 21
          Top = 23
          Width = 63
          Height = 13
          Caption = 'Temperature:'
        end
        object lblUncertaintyPressure: TLabel
          Left = 40
          Top = 47
          Width = 44
          Height = 13
          Caption = 'Pressure:'
        end
        object lblUncertaintyHumidity: TLabel
          Left = 41
          Top = 71
          Width = 43
          Height = 13
          Caption = 'Humidity:'
        end
        object lbltsUncertaintyTempUnit: TLabel
          Left = 144
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Celsius'
        end
        object lblUncertaintyPressureUnit: TLabel
          Left = 144
          Top = 48
          Width = 19
          Height = 13
          Caption = 'hPa'
        end
        object lblUncertaintyHumidityUnit: TLabel
          Left = 144
          Top = 72
          Width = 8
          Height = 13
          Caption = '%'
        end
        object dbedtUncertaintyTemp: TwwDBEdit
          Left = 87
          Top = 20
          Width = 55
          Height = 21
          DataField = 'Temperature'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbedtUncertaintyPressure: TwwDBEdit
          Left = 87
          Top = 44
          Width = 55
          Height = 21
          DataField = 'Pressure'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbedtUncertaintyHumidity: TwwDBEdit
          Left = 87
          Top = 68
          Width = 55
          Height = 21
          DataField = 'Humidity'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object gbUncertaintyPillarOffset: TGroupBox
        Left = 224
        Top = 121
        Width = 291
        Height = 54
        Caption = 'Uncertainty of pillar offsets (95%)'
        TabOrder = 4
        object lblUncertaintyOffsetUnit: TLabel
          Left = 127
          Top = 26
          Width = 16
          Height = 13
          Caption = 'mm'
        end
        object dbedtUncertaintyOffset: TwwDBEdit
          Left = 66
          Top = 22
          Width = 55
          Height = 21
          DataField = 'PillarOffset'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object gbStandardUncertainty: TGroupBox
        Left = 8
        Top = 57
        Width = 507
        Height = 50
        Caption = 'Uncertainty of Baseline interval (95%)'
        TabOrder = 7
        object pnlBaselineAccuracy: TPanel
          Left = 9
          Top = 17
          Width = 489
          Height = 23
          Alignment = taLeftJustify
          BevelOuter = bvLowered
          TabOrder = 0
          inline FrameLUMUnitsNonDB2: TFrameLUMUnitsNonDB
            Left = 1
            Top = 1
            Width = 487
            Height = 44
            Align = alTop
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 487
            inherited FrameOldLUMUnits1: TFrameOldLUMUnitsNonDB
              Width = 487
              ExplicitWidth = 487
              inherited pnlOldLUMUnits: TPanel
                Width = 487
                ExplicitWidth = 487
              end
            end
            inherited FrameNewLumUnits1: TFrameNewLumUnitsNonDB
              Width = 487
              ExplicitTop = 22
              ExplicitWidth = 487
              inherited pnlNewLUMUnits: TPanel
                Width = 487
                ExplicitWidth = 487
                ExplicitHeight = 22
              end
            end
          end
        end
      end
      object gbRejection: TGroupBox
        Left = 8
        Top = 362
        Width = 203
        Height = 60
        Caption = 'Rejection Criterion'
        TabOrder = 3
        object Label93: TLabel
          Left = 125
          Top = 25
          Width = 39
          Height = 13
          Caption = 'Std Dev'
        end
        object dbedtRejectionCriterion: TwwDBEdit
          Left = 66
          Top = 22
          Width = 55
          Height = 21
          DataField = 'RejectionCriterion'
          DataSource = dmBase.dsJobUncertainty
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object gbSpecifications: TGroupBox
        Left = 224
        Top = 266
        Width = 291
        Height = 156
        Caption = 'Manufacturer'#39's Specifications of E.D.M. instrument'
        TabOrder = 6
        Visible = False
        object cbManufacturerSpecs: TCheckBox
          Left = 19
          Top = 117
          Width = 241
          Height = 17
          Caption = 'Include manufacturer'#39's specifications'
          TabOrder = 0
        end
        object pnlSpecifications: TPanel
          Left = 74
          Top = 78
          Width = 129
          Height = 21
          Alignment = taLeftJustify
          BevelOuter = bvLowered
          Caption = ' 0.86 mm + 0.73 ppm'
          TabOrder = 1
        end
        object memSpecCaution: TMemo
          Left = 11
          Top = 26
          Width = 278
          Height = 39
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'Caution: The manufacturer'#39's specifications may be '
            'unsuitable to be included in the computation of the '
            'calibration uncertainty.')
          TabOrder = 2
        end
      end
    end
    object tsStandards: TTabSheet
      Caption = 'tsStandards'
      ImageIndex = 12
      TabVisible = False
      OnShow = tsStandardsShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblMinimumStandardHeader: TLabel
        Left = 6
        Top = 4
        Width = 362
        Height = 29
        Caption = 'Minimum Uncertainty Standard '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblStandardsAuthority: TLabel
        Left = 11
        Top = 160
        Width = 95
        Height = 13
        Caption = 'Standards Authority:'
      end
      object lblTraceabilityStatement: TLabel
        Left = 11
        Top = 192
        Width = 103
        Height = 13
        Caption = 'Traceability statement'
      end
      object lnlButtons_: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPageStandards: TLabel
          Left = 48
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Page 9'
        end
        object btnBackStandard: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 0
          OnClick = btnBackStandardClick
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
        object btnNextStandard: TBitBtn
          Left = 11
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNextStandardClick
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
        object btbCloseStandard: TBitBtn
          Left = 11
          Top = 126
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelpStandard: TBitBtn
          Left = 11
          Top = 91
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = btnHelpStandardClick
          Kind = bkHelp
        end
      end
      object pnlMinimumStandard: TPanel
        Left = 11
        Top = 77
        Width = 476
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 
          'Minimum uncertainty standard for the calibration of an EDM instr' +
          'ument at a confidencel level of 95%:'
        TabOrder = 1
      end
      object dbedtStandardsAuthority: TwwDBEdit
        Left = 109
        Top = 157
        Width = 245
        Height = 21
        DataField = 'Authority'
        DataSource = dmBase.dsStandard
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = StandardExit
      end
      object dbmemStandard: TDBMemo
        Left = 11
        Top = 206
        Width = 507
        Height = 89
        DataField = 'Description'
        DataSource = dmBase.dsStandard
        TabOrder = 3
        OnExit = StandardExit
      end
      inline FrameLUMUnits3: TFrameLUMUnits
        Left = 16
        Top = 101
        Width = 352
        Height = 50
        TabOrder = 4
        ExplicitLeft = 16
        ExplicitTop = 101
        inherited pnlNewLUMUnits: TPanel
          inherited FrameNewLumUnits1: TFrameNewLumUnits
            inherited lblLumUnits1: TLabel
              Width = 6
              ExplicitWidth = 6
            end
          end
        end
      end
    end
    object tsMets: TTabSheet
      Caption = 'tsMets'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl_WeatherConditions: TLabel
        Left = 22
        Top = 72
        Width = 96
        Height = 13
        Caption = 'Weather Conditions:'
      end
      object Label3: TLabel
        Left = 6
        Top = 4
        Width = 147
        Height = 29
        Caption = 'Meteorology'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_tsMets_Job: TLabel
        Left = 5
        Top = 43
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lbl_tsMets_Baseline: TLabel
        Left = 240
        Top = 43
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object lblMetsDialSetMessage: TLabel
        Left = 112
        Top = 121
        Width = 283
        Height = 13
        Caption = '(Tick this box if Mets have been dialed into EDM instrument)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnlMets: TPanel
        Left = 15
        Top = 152
        Width = 613
        Height = 313
        BevelOuter = bvNone
        TabOrder = 3
        object lblNumberMetSets: TLabel
          Left = 249
          Top = 8
          Width = 97
          Height = 13
          Caption = 'Number of Met Sets:'
        end
        object lblDownloadWarning: TLabel
          Left = 320
          Top = 285
          Width = 322
          Height = 13
          Caption = 'WARNING: The Mets in the text file must be meaned and corrected.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lblSuggestion: TLabel
          Left = 8
          Top = 279
          Width = 300
          Height = 26
          Caption = 
            'SUGGESTION: If two thermometers and/or two barometers are used y' +
            'ou can seperate the serial numbers by a comma.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object grpCorrections: TGroupBox
          Left = 251
          Top = 33
          Width = 326
          Height = 112
          Caption = 'Corrections to Mets Instruments'
          TabOrder = 1
          object lblTempCorr: TLabel
            Left = 57
            Top = 20
            Width = 105
            Height = 13
            Caption = 'Temperature(Celsius): '
          end
          object lblPressureCor: TLabel
            Left = 190
            Top = 20
            Width = 118
            Height = 13
            Caption = 'Pressure (Hectapascals):'
          end
          object lblThermometer1: TLabel
            Left = 42
            Top = 41
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Thermometer:'
          end
          object lblThermometer2: TLabel
            Left = 8
            Top = 71
            Width = 99
            Height = 13
            Caption = 'Thermometer (Prism):'
            Visible = False
          end
          object lblBarometer1: TLabel
            Left = 201
            Top = 41
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Barometer:'
          end
          object lblBarometer2: TLabel
            Left = 167
            Top = 71
            Width = 85
            Height = 13
            Alignment = taRightJustify
            Caption = 'Barometer (Prism):'
            Visible = False
          end
          object dbedtThermometer1: TDBEdit
            Left = 108
            Top = 37
            Width = 50
            Height = 21
            DataField = 'ThermometerCorr1'
            DataSource = dmMain.dsMets
            TabOrder = 0
            OnChange = ChangedMetsClick
          end
          object dbedtBarometer1: TDBEdit
            Left = 255
            Top = 37
            Width = 50
            Height = 21
            DataField = 'BarometerCorr1'
            DataSource = dmMain.dsMets
            TabOrder = 1
            OnChange = ChangedMetsClick
          end
          object dbedtThermometer2: TDBEdit
            Left = 108
            Top = 67
            Width = 50
            Height = 21
            DataField = 'ThermometerCorr2'
            DataSource = dmMain.dsMets
            TabOrder = 2
            Visible = False
            OnChange = ChangedMetsClick
          end
          object dbedtBarometer2: TDBEdit
            Left = 255
            Top = 67
            Width = 50
            Height = 21
            DataField = 'BarometerCorr2'
            DataSource = dmMain.dsMets
            TabOrder = 3
            Visible = False
            OnChange = ChangedMetsClick
          end
        end
        object GroupBox2: TGroupBox
          Left = 10
          Top = 19
          Width = 199
          Height = 118
          Caption = 'Humidity Options'
          TabOrder = 0
          object rbtnWetTemp: TRadioButton
            Left = 9
            Top = 28
            Width = 113
            Height = 17
            Caption = 'Wet Temp '
            TabOrder = 0
            OnClick = ChangedMetsClick
          end
          object rbtnHumidity: TRadioButton
            Left = 9
            Top = 56
            Width = 124
            Height = 17
            Caption = 'Relative Humidity (%)'
            TabOrder = 1
            OnClick = ChangedMetsClick
          end
          object rbtnDefaultHumidity: TRadioButton
            Left = 9
            Top = 84
            Width = 113
            Height = 17
            Caption = 'Default RH (50%)'
            Checked = True
            TabOrder = 2
            TabStop = True
            OnClick = ChangedMetsClick
          end
        end
        object gbSerialNumbers: TGroupBox
          Left = 9
          Top = 151
          Width = 226
          Height = 126
          Caption = 'Serial Numbers (Optional)'
          TabOrder = 2
          object lblThermometer1Number: TLabel
            Left = 37
            Top = 24
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Thermometer:'
          end
          object lblThermometer2Number: TLabel
            Left = 3
            Top = 48
            Width = 99
            Height = 13
            Alignment = taRightJustify
            Caption = 'Thermometer (Prism):'
            Visible = False
          end
          object lblBarometer1Number: TLabel
            Left = 51
            Top = 73
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Barometer:'
          end
          object lblBarometer2Number: TLabel
            Left = 17
            Top = 98
            Width = 85
            Height = 13
            Alignment = taRightJustify
            Caption = 'Barometer (Prism):'
            Visible = False
          end
          object dbedtThermometerSerialNumber1: TDBEdit
            Left = 104
            Top = 21
            Width = 116
            Height = 21
            DataField = 'Thermometer1'
            DataSource = dmMain.dsMets
            TabOrder = 0
          end
          object dbedtThermometerSerialNumber2: TDBEdit
            Left = 104
            Top = 45
            Width = 116
            Height = 21
            DataField = 'Thermometer2'
            DataSource = dmMain.dsMets
            TabOrder = 1
          end
          object dbedtBarometerSerialNumber1: TDBEdit
            Left = 104
            Top = 69
            Width = 116
            Height = 21
            DataField = 'Barometer1'
            DataSource = dmMain.dsMets
            TabOrder = 2
          end
          object dbedtBarometerSerialNumber2: TDBEdit
            Left = 104
            Top = 94
            Width = 116
            Height = 21
            DataField = 'Barometer2'
            DataSource = dmMain.dsMets
            TabOrder = 3
          end
        end
        object vedtNumberMetSets: TValidEdit
          Left = 351
          Top = 4
          Width = 25
          Height = 21
          TabOrder = 3
          Text = '1'
          OnChange = vedtNumberMetSetsChange
          OnExit = vedtNumberMetSetsExit
          Value = 1.000000000000000000
          FieldType = vftInteger
          Hemisphere = hsNone
          PositiveNorth = True
          PositiveEast = True
          DecimalPlaces = 0
          DMSFormat = dfAbbreviated
          MinValue = 1.000000000000000000
          MaxValue = 2.000000000000000000
          DateFormat = 'd/m/yyyy'
          TimeFormat = 'h:mm:ss'
        end
        object gbRefractiveIndex: TGroupBox
          Left = 250
          Top = 151
          Width = 239
          Height = 126
          Caption = 'Reference Refractive Index'
          TabOrder = 4
          Visible = False
          object rbtnComputeRefractiveIndex: TRadioButton
            Left = 9
            Top = 20
            Width = 104
            Height = 17
            Caption = 'Computed '
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rbtnComputeRefractiveIndexClick
          end
          object rbtnManuRefractiveIndex: TRadioButton
            Left = 9
            Top = 50
            Width = 124
            Height = 17
            Caption = 'Use Manufacturer'#39's '
            TabOrder = 1
            OnClick = rbtnComputeRefractiveIndexClick
          end
          object rbtnDefaultRefractiveIndex: TRadioButton
            Left = 9
            Top = 80
            Width = 113
            Height = 17
            Caption = 'Use Default'
            TabOrder = 2
            OnClick = rbtnComputeRefractiveIndexClick
          end
          object dbedtManuRefractiveIndex: TDBEdit
            Left = 143
            Top = 50
            Width = 82
            Height = 21
            Color = clBtnFace
            DataField = 'ManuRefractiveIndex'
            DataSource = dmMain.dsAtInstrumentModel
            ReadOnly = True
            TabOrder = 3
            OnClick = dbedtManuRefractiveIndexClick
          end
          object dbedtDefaultRefractiveIndex: TDBEdit
            Left = 143
            Top = 80
            Width = 82
            Height = 21
            Color = clBtnFace
            DataField = 'Default'
            DataSource = dmBase.dsDefault
            ReadOnly = True
            TabOrder = 4
            OnClick = dbedtDefaultRefractiveIndexClick
          end
          object pnlComputedRefractiveIndex: TPanel
            Left = 143
            Top = 20
            Width = 82
            Height = 21
            Alignment = taRightJustify
            BevelOuter = bvLowered
            TabOrder = 5
            OnClick = pnlComputedRefractiveIndexClick
          end
        end
      end
      object edtWeather: TEdit
        Left = 22
        Top = 88
        Width = 249
        Height = 21
        MaxLength = 30
        TabOrder = 0
      end
      object pnl_tsMets_Buttons: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 2
        object lblPageMets: TLabel
          Left = 48
          Top = 8
          Width = 40
          Height = 13
          Caption = 'Page 10'
        end
        object btnBackMets: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 0
          OnClick = btnBackMetsClick
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
        object btnNextMets: TBitBtn
          Left = 11
          Top = 27
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNextMetsClick
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
        object btnClose2: TBitBtn
          Left = 11
          Top = 126
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelp2: TBitBtn
          Left = 11
          Top = 91
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = btnHelp2Click
          Kind = bkHelp
        end
      end
      object chkMetsDial: TCheckBox
        Left = 24
        Top = 120
        Width = 89
        Height = 17
        Caption = 'Mets Dial Set '
        TabOrder = 1
        OnClick = chkMetsDialClick
      end
      object pnlJob2: TPanel
        Left = 28
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object pnlBaseline2: TPanel
        Left = 286
        Top = 39
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 5
      end
      object dbchkPulse: TDBCheckBox
        Left = 441
        Top = 120
        Width = 137
        Height = 17
        Caption = 'Pulse Distance Meter'
        DataField = 'isPulseMeter'
        DataSource = dmMain.dsAtInstrumentModel
        Enabled = False
        ReadOnly = True
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        Visible = False
      end
      object gbPulse: TGroupBox
        Left = 24
        Top = 164
        Width = 290
        Height = 125
        Caption = 'Pulse Distance Meter'
        TabOrder = 7
        object Memo1: TMemo
          Left = 5
          Top = 24
          Width = 282
          Height = 79
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'For Pulse Meters the Atmospheric Correction must be '
            'carried out internally within the instrument.'
            ''
            'Therefore when you calibrate a Pulse Distance Meter you '
            'should enter the meteorological observations (Temperature, '
            'Pressure and Humidity) into the instrument.')
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gbNoFrequency: TGroupBox
        Left = 24
        Top = 151
        Width = 341
        Height = 138
        Caption = 'Instrument has no modulation frequency'
        TabOrder = 8
        Visible = False
        object Memo2: TMemo
          Left = 7
          Top = 21
          Width = 322
          Height = 113
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'No modulation frequency and carrier wavelength has been entered '
            'for this instrument. If you want to compute the Atmospheric '
            'Correction you must first enter the modulation frequency and '
            'modulation frequency for this instrument.'
            ''
            
              'Alternatively the Atmospheric Correction can be carried out inte' +
              'rnally '
            'within the instrument. In this case you should have dialed the '
            
              'meteorological observations (Temperature, Pressure and Humidity)' +
              ' '
            'into the EDM instrument.'
            '')
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object tsObs: TTabSheet
      Caption = 'tsObs'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnl_tsObs_Buttons: TPanel
        Left = 636
        Top = 0
        Width = 96
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPageObs: TLabel
          Left = 48
          Top = 8
          Width = 40
          Height = 13
          Caption = 'Page 11'
        end
        object btnBackObs: TBitBtn
          Left = 9
          Top = 56
          Width = 80
          Height = 25
          Caption = '&Back'
          TabOrder = 0
          OnClick = btnBackObsClick
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
        object btnNextObs: TBitBtn
          Left = 9
          Top = 30
          Width = 80
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNextObsClick
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
        object btnClose5: TBitBtn
          Left = 9
          Top = 289
          Width = 80
          Height = 25
          Caption = '&Close'
          TabOrder = 2
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
        object btnHelp5: TBitBtn
          Left = 9
          Top = 262
          Width = 80
          Height = 25
          TabOrder = 3
          OnClick = btnHelp5Click
          Kind = bkHelp
        end
        object btnExportFile: TBitBtn
          Left = 9
          Top = 220
          Width = 80
          Height = 25
          Caption = '&Save to File'
          TabOrder = 4
          OnClick = btnExportFileClick
        end
        object btnDeleteObs: TBitBtn
          Left = 9
          Top = 177
          Width = 80
          Height = 25
          Caption = 'Delete &All'
          TabOrder = 5
          OnClick = btnDeleteObsClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
            305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
            005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
            B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
            B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
            B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
            B0557777FF577777F7F500000E055550805577777F7555575755500000555555
            05555777775555557F5555000555555505555577755555557555}
          NumGlyphs = 2
        end
        object btnEdit: TBitBtn
          Left = 9
          Top = 125
          Width = 80
          Height = 25
          Caption = '&Edit'
          TabOrder = 6
          OnClick = btnEditClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object btnInsert: TBitBtn
          Left = 9
          Top = 99
          Width = 80
          Height = 25
          Caption = '&Insert'
          TabOrder = 7
          OnClick = btnInsertClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object btnDeleteRecord: TBitBtn
          Left = 9
          Top = 151
          Width = 80
          Height = 25
          Caption = '&Delete Record'
          TabOrder = 8
          OnClick = btnDeleteRecordClick
          NumGlyphs = 2
        end
      end
      object pnl_tsObs_Client: TPanel
        Left = 0
        Top = 0
        Width = 636
        Height = 474
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object gbObs: TGroupBox
          Left = 0
          Top = 275
          Width = 636
          Height = 199
          Align = alBottom
          Caption = 'Observations between two pillars'
          TabOrder = 0
          object lblCertHorzDistance: TLabel
            Left = 9
            Top = 175
            Width = 167
            Height = 13
            Caption = 'Certified Horizontal Distance:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbgridDistances: TwwDBGrid
            Left = 358
            Top = 15
            Width = 115
            Height = 149
            Selected.Strings = (
              'EDMObsDistance'#9'12'#9'Observations~(metres)')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Color = clBtnFace
            DataSource = dmMain.dsFilteredEDMObs
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
          object DBNavigator1: TDBNavigator
            Left = 359
            Top = 164
            Width = 108
            Height = 25
            HelpContext = 200
            DataSource = dmMain.dsFilteredEDMObs
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object GroupBox3: TGroupBox
            Left = 8
            Top = 22
            Width = 169
            Height = 142
            Caption = 'At Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object lblAtPillarNo: TLabel
              Left = 11
              Top = 18
              Width = 25
              Height = 13
              Caption = 'Pillar:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dbedtAtPillar: TwwDBEdit
              Left = 39
              Top = 15
              Width = 65
              Height = 21
              Color = clBtnFace
              DataField = 'AtPillarNo'
              DataSource = dmMain.dsJMeasure
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
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
            object gbEDM: TGroupBox
              Left = 4
              Top = 48
              Width = 157
              Height = 89
              Caption = 'Instrument'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object lblEDMSerial: TLabel
                Left = 6
                Top = 20
                Width = 69
                Height = 13
                Caption = 'Serial Number:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblEDMMake: TLabel
                Left = 8
                Top = 43
                Width = 32
                Height = 13
                Caption = 'Model:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblEDMModel: TLabel
                Left = 10
                Top = 66
                Width = 30
                Height = 13
                Caption = 'Make:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object dbedtEDMSerial: TwwDBEdit
                Left = 78
                Top = 16
                Width = 71
                Height = 21
                Color = clBtnFace
                DataField = 'InstSerialNo'
                DataSource = dmMain.dsAtInstrument
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
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
              object dbedtEDMModel: TwwDBEdit
                Left = 43
                Top = 39
                Width = 106
                Height = 21
                Color = clBtnFace
                DataField = 'ModelName'
                DataSource = dmMain.dsAtInstrumentModel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
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
              object dbedtEDMMale: TwwDBEdit
                Left = 43
                Top = 62
                Width = 106
                Height = 21
                Color = clBtnFace
                DataField = 'MakeName'
                DataSource = dmMain.dsAtInstrumentMake
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
            end
          end
          object GroupBox5: TGroupBox
            Left = 182
            Top = 22
            Width = 169
            Height = 142
            Caption = 'To Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object lblToPillarNo: TLabel
              Left = 12
              Top = 18
              Width = 25
              Height = 13
              Caption = 'Pillar:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object gbPrism: TGroupBox
              Left = 8
              Top = 49
              Width = 157
              Height = 89
              Caption = 'Prism'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object lblPrismSerial: TLabel
                Left = 6
                Top = 20
                Width = 69
                Height = 13
                Caption = 'Serial Number:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblPrismModel: TLabel
                Left = 8
                Top = 43
                Width = 32
                Height = 13
                Caption = 'Model:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblPrismMake: TLabel
                Left = 10
                Top = 66
                Width = 30
                Height = 13
                Caption = 'Make:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object dbedtPrismSerial: TwwDBEdit
                Left = 78
                Top = 16
                Width = 71
                Height = 21
                Color = clBtnFace
                DataField = 'InstSerialNo'
                DataSource = dmMain.dsToInstrument
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
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
              object dbedtPrismModel: TwwDBEdit
                Left = 43
                Top = 39
                Width = 106
                Height = 21
                Color = clBtnFace
                DataField = 'ModelName'
                DataSource = dmMain.dsToInstrumentModel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
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
              object dbedtPrismMake: TwwDBEdit
                Left = 43
                Top = 62
                Width = 106
                Height = 21
                Color = clBtnFace
                DataField = 'MakeName'
                DataSource = dmMain.dsToInstrumentMake
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
                UnboundDataType = wwDefault
                WantReturns = False
                WordWrap = False
              end
            end
            object dbedtToPillar: TwwDBEdit
              Left = 41
              Top = 16
              Width = 64
              Height = 21
              Color = clBtnFace
              DataField = 'ToPillarNo'
              DataSource = dmMain.dsJMeasure
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
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
          object pnlCertifiedDistance: TPanel
            Left = 182
            Top = 171
            Width = 136
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 1
          end
        end
        object pnl_tsObs_Top: TPanel
          Left = 0
          Top = 0
          Width = 636
          Height = 80
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label52: TLabel
            Left = 6
            Top = 0
            Width = 257
            Height = 29
            Caption = 'Observation Summary'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_tsObs_Job: TLabel
            Left = 5
            Top = 38
            Width = 20
            Height = 13
            Caption = 'Job:'
          end
          object lbl_tsObs_Baseline: TLabel
            Left = 240
            Top = 38
            Width = 43
            Height = 13
            Caption = 'Baseline:'
          end
          object Label29: TLabel
            Left = 8
            Top = 65
            Width = 90
            Height = 13
            Caption = 'Baseline Distances'
          end
          object pnlJob5: TPanel
            Left = 28
            Top = 34
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 0
          end
          object pnlBaseline5: TPanel
            Left = 286
            Top = 34
            Width = 197
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 1
          end
        end
        object Panel23: TPanel
          Left = 0
          Top = 80
          Width = 636
          Height = 195
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object dbnavObs: TDBNavigator
            Left = 0
            Top = 170
            Width = 636
            Height = 25
            HelpContext = 200
            DataSource = dmMain.dsJMeasure
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object dbgridObs: TwwDBGrid
            Left = 0
            Top = 0
            Width = 636
            Height = 170
            Selected.Strings = (
              'AtPillarNo'#9'5'#9'At~Pillar'
              'ToPillarNo'#9'5'#9'To~Pillar'
              'MeasAtHeight'#9'11'#9'Height above~At Pillar(m)'
              'MeasToHeight'#9'11'#9'Height above~To Pillar (m)'
              'MeasDryTemp'#9'8'#9'Dry Temp ~EDM~(Celcius)'
              'MeasDryTemp2'#9'8'#9'Dry Temp ~Prism~(Celcius)'
              'MeasPressure'#9'10'#9'Pressure~EDM~(Hectapascals)'
              'MeasPressure2'#9'10'#9'Pressure~Prism~(Hectapascals)'
              'MeasHumidity'#9'10'#9'Humidity~EDM~ (%)'
              'MeasHumidity2'#9'10'#9'Humidity~Prism~(%)')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            OnRowChanged = dbgridObsRowChanged
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
            Align = alClient
            Color = clBtnFace
            DataSource = dmMain.dsJMeasure
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
            OnCalcCellColors = dbgridObsCalcCellColors
          end
        end
      end
    end
    object tsReports: TTabSheet
      Caption = 'tsReports'
      ImageIndex = 9
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblReportsHeader: TLabel
        Left = 6
        Top = 0
        Width = 270
        Height = 29
        Caption = 'Print / Preview Reports'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_tsReports_Job: TLabel
        Left = 5
        Top = 38
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lbl_tsReports_Baseline: TLabel
        Left = 240
        Top = 38
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object pnl_tsReports_Buttons: TPanel
        Left = 618
        Top = 0
        Width = 114
        Height = 474
        Align = alRight
        TabOrder = 0
        object lblPageReports: TLabel
          Left = 64
          Top = 8
          Width = 40
          Height = 13
          Caption = 'Page 12'
        end
        object btnHelp: TBitBtn
          Left = 5
          Top = 341
          Width = 105
          Height = 25
          HelpContext = 1020
          Caption = '  &Help'
          TabOrder = 1
          OnClick = btnHelpClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
            33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
            FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
            FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
            FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
            FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
            FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
            3333333773FFFF77333333333FBFBF3333333333377777333333}
          NumGlyphs = 2
        end
        object lstSelReport: TListBox
          Left = 129
          Top = 220
          Width = 93
          Height = 124
          ExtendedSelect = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'Input Statistics'
            'Certified Distances'
            'Meteorology'
            'Detailed Obs'
            'Dist Reductions'
            'A Priori Std Dev'
            'A Priori Miscloses'
            'Calibration Results'
            'Summary')
          MultiSelect = True
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object btnBackReports: TBitBtn
          Left = 5
          Top = 56
          Width = 105
          Height = 25
          Caption = '&Back'
          TabOrder = 2
          OnClick = btnBackReportsClick
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
        object btnUpdateBaseline: TBitBtn
          Left = 5
          Top = 247
          Width = 105
          Height = 25
          Caption = '&Update Baseline'
          TabOrder = 3
          OnClick = btnUpdateBaselineClick
        end
        object btnPreviewReports: TBitBtn
          Left = 5
          Top = 113
          Width = 105
          Height = 25
          Caption = 'Preview &Reports'
          TabOrder = 4
          OnClick = btnPreviewReportsClick
        end
        object btnPreviewCertificate: TBitBtn
          Left = 5
          Top = 87
          Width = 105
          Height = 25
          Caption = 'Preview &Certificate'
          TabOrder = 5
          OnClick = btnPreviewCertificateClick
        end
        object btnPrintCertificate: TBitBtn
          Left = 5
          Top = 149
          Width = 105
          Height = 25
          Caption = '&Print Certificate'
          TabOrder = 6
          OnClick = btnPrintCertificateClick
        end
        object btnPrintReport: TBitBtn
          Left = 5
          Top = 175
          Width = 105
          Height = 25
          Caption = 'Print Reports'
          TabOrder = 7
          OnClick = btnPrintReportClick
        end
        object btnSaveToFile: TBitBtn
          Left = 5
          Top = 211
          Width = 105
          Height = 25
          Caption = 'Reports to &text file'
          TabOrder = 8
          OnClick = btnSaveToFileClick
        end
        object btnClose: TBitBtn
          Left = 5
          Top = 311
          Width = 105
          Height = 25
          Caption = '&Close'
          TabOrder = 9
          OnClick = btnCloseClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
        object btnFirstPage: TBitBtn
          Left = 5
          Top = 28
          Width = 105
          Height = 25
          Caption = '&First Page'
          TabOrder = 10
          OnClick = btnFirstPageClick
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
      end
      object gbNumberPrints: TGroupBox
        Left = 50
        Top = 342
        Width = 168
        Height = 49
        Caption = 'Number of printed Certificates'
        TabOrder = 1
        object Label99: TLabel
          Left = 7
          Top = 21
          Width = 35
          Height = 13
          Caption = 'Copies:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtCopies: TEdit
          Left = 52
          Top = 18
          Width = 33
          Height = 21
          TabOrder = 0
          Text = '1'
        end
      end
      object pnlJob6: TPanel
        Left = 28
        Top = 34
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object pnlBaseline6: TPanel
        Left = 286
        Top = 34
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 3
      end
      object gbLogos: TGroupBox
        Left = 50
        Top = 104
        Width = 417
        Height = 235
        Caption = 'Logos in certificate and reports'
        TabOrder = 4
        object pcLogo: TPageControl
          Left = 31
          Top = 44
          Width = 358
          Height = 184
          ActivePage = tsAuthority
          TabOrder = 0
          object tsAuthority: TTabSheet
            Caption = 'Authority Logo'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object ImageAuthority: TImage
              Left = 40
              Top = 8
              Width = 240
              Height = 80
              Picture.Data = {
                07544269746D61704A850000424D4A850000000000003600000028000000DE00
                000033000000010018000000000014850000C30E0000C30E0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EBD8DCC88CD9C280E4D4A6F9F6ECFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFDFCFBF9F4F6F2E5E7DAB3DCC7
                8BD6BE76D4BA71E4D4A7EDE3C8E6D8AFD5BB72C09B2EC7A544EBDFBDFEFDFBFE
                FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFEFDFAF7EEF0E8D0E1CF9CC9A84BC4A13DC6A442B68A09B48600B58703
                CEB05BF7F2E5FEFEFEF9FAFCFCFDFEF6F1E4D0B362BE9623D9C281F5EFDFFEFD
                FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F3E8DA
                B2D2B76ABE9726B58703B48703BF9828BC941FB48600B48600BD9623E9DBB6FE
                FEFEE6E0CDA4B8D6A9C5F4DEE8FAF9F6EFDBC588C09B2ECAAA4DE2D09CF5EFDE
                FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCEFE7CDD3B96DBC941EB48601
                B58704B98F15C39E36CAAB4FD1B565D6BC74D9C382E3D2A4F9F5ECFEFDFBB7A0
                574372B73174E55C90EABDD2F6F9F6F1E6D7ACC6A33EB98E12C9A94BE3D4A5F8
                F5EBFDFBF9FCFBF7FBF8F2FDFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFBF9F4E3D2A2C29D33B98E12C8A647DAC485E9DBB5F1
                E8D1F5F0E0F7F2E5F8F4EAF9F6EDFAF8F0FCFAF6FEFEFEF9F6EEA88D323970C6
                266DE4266DE4407EE7A4C1F3F4F6F9F5EFE0DDC88DC29D34BD9420C4A039C7A5
                44C8A748D1B668F5EEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FEFEFEF9F5EBDCC78CCDAF5BE2D09FF4EDDBF5EEDDF0E7CDE9DCB8E1D09DF0E8
                D0D2B76BC9A94CC5A13AC19C31D8C180FDFCF9F5EFDF9F883A3070DD286EE427
                6DE4266DE42D72E56D9CEDC2D6F7E5EEFCF3F7FDF6F7F7F5F3EEF5F4F1EBE7D9
                E0D1A7F9F5EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF6EE
                E4C9E8DAB5E9DCB9E0CE99D4B96EC6A33FBC941FB68908B68B0BE5D7ADB58907
                B48600B48600B68A08D8C17EFEFEFDEADEBB8583633173E63073E62E72E62C70
                E5296FE4276EE43678E66496EC85ACEF94B7F299BAF296B8F28DB2F0BDD2F7F8
                FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F4E9EFE5CBCEB0
                5CC0992AB78B0CB48601B48600B48600B48600C09A2CE1CF9DB48600B48600B4
                8600B98F14E6D8AFFFFFFED9C283617FA73878E93777E83576E73374E73073E6
                2D71E52A6FE5276DE4266DE4286EE4296FE4286EE4286EE44A85E8BED3F6FCFD
                FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCF9EBDFBECAAB4FD3BA71B58805B48600
                B48600B48600B48600B48600B48600CBAC52D9C280B48600B48600B48600C29D
                32F8F5EBF9F6EDB8A468497EDA3F7DEA3D7CEA3B7AEA3A79E93777E83475E731
                73E62D71E5296EE4266DE4266DE4266DE4266DE4266DE44682E8DBE6FAFEFEFE
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFEFDFCE0CD98B98E13C29E34C5A13CB48601B48600B48600B4
                8600B48600B48600B48600D5BC73D2B76AB48600B48600B48602E0CD98FEFEFE
                E4D6B182919B4983E94682EC4480EC427FEC407EEB3E7CEA3B7AE93878E83475
                E73073E62C70E5276DE4266DE4266DE4266DE4266DE4598FEAE7EEFCFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFEEE4C8BA9118B48600CDAE58BE9624B48600B48600B48600B48600B486
                00B48600B48600DBC68ACEB05DB48600B48600C09B2EF8F4EAF9F6EDBEB59462
                8AC84E87EE4C87ED4A85ED4984ED4682EC4380EB407EEB3D7CEA3A79E93676E8
                3174E62D71E5286EE4266DE4266DE4266DE42D71E48CB1F1F5F8FDFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F6EECB
                AD54B48600B68908CEB25FBD9520B48600B48600B48600B48600B48600B48600
                B48600DAC385C7A545B48600B68A0AE1CE9AFDFDFBE7DEC58D9AA1588DE8548C
                F0528BF0508AEF4F89EE4C86ED4984ED4682EC4380EB3F7CEB3B7AEA3777E832
                74E62C71E5286EE4266DE4266DE4266DE44581E7C2D5F7FEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDE2D09FB98F15B486
                00BA9018CFB260BB921AB48600B48600B48600B48600B48600B48601B58704BB
                9118B98E12B78B0CCDAF58F6F1E3F9F6EFBCB8A16C92CE5C92F25B91F25990F1
                578FF1558DF1528BEF4F89EE4C86ED4884ED4581EC407EEB3C7BEA3778E83274
                E62C71E5276EE4266DE4266DE4286EE477A3EDECF2FCFEFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F7EFEFF7F6F6FBFFFFFFFFFFFFFAFAFC
                EFEFF7EFEFF7FDFDFEFFFFFFFFFFFFF4F4F9FDFDFEFFFFFFFFFFFFF4F4F9EFEF
                F7F3F3F9FFFFFFF4F4F9FCFCFDFFFFFFFFFFFFF4F4F9FCFCFDFFFFFFF7F7FBF9
                F9FCFEFEFEF2F2F9FFFFFFF4F4F9FCFCFDFBFBFDF6F6FAFFFFFFF1F1F8EFEFF7
                F5F5FAFFFFFFFEFEFEF2F2F8FFFFFFFFFFFFF2F2F8FFFFFFF8F8FBEFEFF7FCFC
                FDFFFFFFFFFFFFFFFFFFFEFEFEEFEFF7EFEFF7F8F8FBFFFFFFFBFBFDF5F5FAFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F8FFFFFFFFFFFFF2F2F8FEFEFE
                FFFFFFF5F5FAEFEFF7EFEFF7F4F4F9FFFFFFF2F2F8EFEFF7F4F4F9FFFFFFFFFF
                FFFCFCFDEFEFF7F7F7FBFFFFFFEFEFF7EFEFF7EFEFF7FAFAFCF0F0F7F4F4F9FF
                FFFFFFFFFFF0F0F7F4F4F9FFFFFFF3F3F9F1F1F8FFFFFFFFFFFFFFFFFFF0F0F7
                F4F4F9FFFFFFFFFFFFF0F0F7F3F3F9FFFFFFF3F3F9EFEFF7EFEFF7EFEFF7FAFA
                FCF0F0F7EFEFF7F6F6FAFFFFFFFDFDFEEFEFF7F6F6FAF4F4F9F0F0F7FFFFFFFF
                FFFFFFFFFFF1F1F8EFEFF7EFEFF7F9F9FCFFFFFFFAFAFCEFEFF7EFEFF7F0F0F7
                FFFFFFF7F7FBEFEFF7EFEFF7F3F3F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0E2CAA94CB48600B48600BF9726
                CEB05AB98E12B48600B58702B88D0FBE9623C4A038CBAC51D6BD76E0CD98E9DD
                B8F1E9D4FAF7F0FEFEFEE0DAC48497AB6398F36398F46297F46096F45F94F35C
                92F25990F2558DF1528BEF4E88EE4A84ED4581EC417EEB3D7BEA3777E83274E6
                2C70E5276DE4266DE4266DE43879E6C0D4F7FDFEFEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFCFCFE74F4FA74343A17E7EBFEAEAF4F9F9FC9898CC4343A143
                43A1B3B3D9FFFFFFDEDEEE6A6AB4B1B1D8FFFFFFDFDFEF6B6BB54343A16363B1
                DADAEC5555AADBDBEDFFFFFFFFFFFF5757ABDADAECFFFFFF8B8BC5A5A5D2F3F3
                F93E3E9FFFFFFF5B5BADD6D6EAC2C2E06F6FB7D4D4E95757AB4343A17777BBE5
                E5F2F8F8FB38389CFFFFFFFFFFFF323299F0F0F78989C44343A1DBDBEDFFFFFF
                FFFFFFFFFFFFC8C8E34343A14343A18B8BC5F1F1F8CDCDE66363B1FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFCACAE4313198FFFFFFFFFFFF38389CC2C2E0E6E6F250
                50A833339938389C4444A1E1E1F07070B738389C4242A1E0E0F0FFFFFFA2A2D0
                17178BAAAAD4CCCCE51313894343A11E1E8F8A8AC50B0B855555AAFFFFFFFFFF
                FF1111885353A9FFFFFF4646A31F1F8FFFFFFFFFFFFFFFFFFF15158A4F4FA7FF
                FFFFFFFFFF17178B4E4EA7DCDCEE37379B3C3C9E2F2F97000080B1B1D85656AB
                2F2F975B5BADEAEAF4B3B3D91313899E9ECE5050A8131389FFFFFFFFFFFFD1D1
                E81C1C8E313198000080AAAAD4FAFAFC8A8AC41F1F8F16168B0E0E87EDEDF666
                66B22C2C950909843F3F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFFEFEFDE7D8AFBB921AB48600B48600B98F14BF9827B9
                8F14C5A23CD3B86AE0CC95EBDFBDF7F2E4FDFDFBFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF8F5EBA8A9996D9CEA699DF5699DF5699CF5669AF56499F46297F45F95
                F35B92F2578FF1538CF04F89EE4A85ED4681EC407EEB3C7AEA3677E83073E62A
                70E4266DE4266DE4266DE480A9EFF7F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C3C3E17C7CBDF1F1F8FFFFFF8080C0B0B0D7E8E8F34949A4FFFFFFFFFFFF3232
                99FFFFFF8484C2ACACD5323299FFFFFF8686C2ABABD5FFFFFFDADAECB6B6DA55
                55AADBDBEDFFFFFFFFFFFF5757ABDADAECFFFFFF8B8BC5A5A5D2F3F3F93E3E9F
                FFFFFF5B5BADD6D6EAC2C2E06F6FB75C5CAED4D4E9FFFFFFC4C4E1CCCCE5F8F8
                FB38389CFFFFFFFFFFFF323299C7C7E36969B4FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF323299FFFFFFFFFFFF6666B2CBCBE5CDCDE66363B1FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF37379B18188CB5B5DABABADC1E1E8F2B2B95A0A0D0000080C3C3
                E1E8E8F37777BBC3C3E1FFFFFF7777BB0000808D8DC6FFFFFF0B0B855858ACFF
                FFFF4040A0242492FFFFFFB5B5DA7777BB0707835555AAFFFFFFFFFFFF111188
                5353A9FFFFFF4646A31F1F8FFFFFFFFFFFFFFFFFFF7575BA2A2A958787C38787
                C319198CA0A0D07E7EBE000080E6E6F2B3B3D9000080B1B1D8F3F3F96060AF00
                0080AFAFD71C1C8E4848A4FFFFFF5050A8131389FFFFFFFFFFFF5353A9121289
                BABADC000080AAAAD4EFEFF70000807575BA5656AA0E0E87BEBEDE000080A6A6
                D22525923F3F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFBF9F2D6BE77B48702B48600B48601BB921AD0B463E5D6A8F2EB
                D5FBF8F1FEFDFBFBF9F2F3EBD2EADDB1E3D094F5EFD9F3ECD6FEFEFDFDFCFAD2
                C9A97DA1D770A3F870A3F870A3F86EA2F76CA0F76A9EF6689CF56498F46096F3
                5D93F35890F1538CF04F89EE4A85ED4581EC3F7DEB3A79E93576E72E72E5286E
                E4266DE4266DE4417EE7EAF1FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FBFB2
                B2D8FFFFFFFFFFFF8080C0B0B0D7E8E8F34949A4FFFFFFFFFFFF323299FFFFFF
                8484C2ACACD5323299FFFFFF8686C237379B5353A95353A9A3A3D15555AADBDB
                EDFFFFFFFFFFFF5757ABDADAECFFFFFF8B8BC5A5A5D2F3F3F93E3E9FFFFFFF5B
                5BADD6D6EAC2C2E06F6FB75C5CAE4545A25353A95353A9BEBEDFF8F8FB38389C
                FFFFFFFFFFFF323299C7C7E36969B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232
                99FFFFFFFFFFFF6666B2CBCBE5CDCDE66363B1FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF37379B0000806060B06B6BB50000802B2B95A0A0D000008040409F5353A9
                5353A9B3B3D97C7CBD0303813D3D9ED9D9ECFFFFFF0B0B855858ACFFFFFF4040
                A00C0C855353A95353A95353A90505825555AAFFFFFFFFFFFF1111885353A9FF
                FFFF4646A31F1F8FFFFFFFFFFFFFFFFFFFE2E2F00000805757AB3131981B1B8D
                FFFFFF7E7EBE000080E6E6F2B3B3D9000080B1B1D85D5DAE0000805353A9E5E5
                F21C1C8E4848A4FFFFFF5050A8131389FFFFFFFFFFFFC6C6E31B1B8D3C3C9E00
                0080AAAAD4EFEFF70000807575BA5656AA0E0E87E9E9F45D5DAE36369B0C0C86
                3F3F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                FFFFF5F0E0C4A13CB48702B98E13D5BC73F1E9D1F9F6ECF9F6E9EEE3BFDEC982
                D1B44EC8A426C59F17C39D11C29A0CE9DBA9FCFAF6FEFDFCE6DEC598ACC278A9
                F779AAFA78AAFA77A9FA75A7F973A5F870A3F86DA1F76A9EF6669AF46297F45D
                94F35990F1538CF04E88EE4984ED4380EB3E7CEA3878E83374E72B70E5266DE4
                266DE4276DE4BFD4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FBFB2B2D8EBEB
                F5333399232391B6B6DBEAEAF45151A8EBEBF5EBEBF53F3F9FC0C0DF7B7BBDF4
                F4F9D4D4E95C5CAE8F8FC78E8EC7CBCBE59A9ACC8080C05555AA37379BEBEBF5
                F4F4F95757ABC9C9E4EBEBF58989C4ACACD5F3F3F939399CEBEBF55454A9C5C5
                E2B7B7DB7A7ABC6969B4ACACD6CBCBE57C7CBEA7A7D3F8F8FB34349AEBEBF5EB
                EBF53E3E9FB8B8DB6161B0EBEBF5FBFBFDFFFFFFFFFFFFFFFFFF4242A0EBEBF5
                EBEBF56A6AB4CFCFE7BDBDDE5C5CADEBEBF5FAFAFCFFFFFFFFFFFF7C7CBE0606
                83B3B3D95959AC6363B1ADADD60B0B851B1B8D0808849C9CCDA9A9D407078397
                97CB4B4BA5202090D6D6EAF6F6FAEFEFF70B0B855151A8F6F6FA4F4FA71E1E8F
                CBCBE55D5DAE0E0E870101804E4EA77E7EBFC3C3E114148A5A5AADEBEBF54040
                A02F2F97FFFFFFFFFFFFFFFFFFE4E4F10D0D868282C04949A42B2B95FFFFFF7E
                7EBE000080E6E6F2B3B3D9000080B1B1D82A2A953B3B9DDADAEDEBEBF51A1A8D
                4343A1F4F4F95050A8121289B3B3D98A8AC4FFFFFFD1D1E89494C9090984B0B0
                D8EFEFF70000806C6CB54F4FA70E0E87FFFFFFE7E7F3CBCBE51E1E8F4E4EA6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFEEE5
                C9BB921CCBAA4FECE1C1F6F0DFF0E7C8E6D7A4C9A732BF9502C09600C19800C2
                9900C39A00C39B00C49C02EADCA8FEFEFDF4EDDBB8B39584A9E17EAEFC7FAEFC
                7FAEFC7FAEFC7EADFB7CACFB78A9FA74A6F96FA2F86B9FF6679BF56398F45D93
                F3588FF1528BF04D87EE4783EC417EEB3C7AEA3677E82E72E6286EE4266DE426
                6DE486ACF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FBFB2B2D8FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFCACAE44747A34747A3E9E9F4CBCBE59F9FCFFFFFFFF1F1
                F87979BCFFFFFF8383C14747A37878BBFFFFFF8585C2DADAEC4747A39B9BCD86
                86C34747A34747A39A9ACCFFFFFFF6F6FA4747A34747A34747A34747A37373B9
                FFFFFFFFFFFF6565B24747A39696CAFFFFFFFAFAFC4747A34747A34747A3DADA
                EC38389B1D1D8E4747A3DCDCEDFFFFFFFFFFFFFFFFFFFEFEFE4747A34747A3B5
                B5DAFFFFFF3A3A9C1C1C8D4747A3D8D8EBFFFFFFFFFFFF6A6AB4000080CCCCE5
                000080000080C6C6E20606835E5EAE9696CA4747A34747A38A8AC4FFFFFFFFFF
                FF4E4EA74747A3ADADD67474B903038118188CACACD5FFFFFF5151A84747A347
                47A3CFCFE75353A94747A34747A3CECEE66B6BB5C2C2E04747A34747A3F1F1F8
                FFFFFFFFFFFFFFFFFFFFFFFFAFAFD75D5DAE34349AE7E7F3FFFFFFA2A2D04747
                A3EDEDF6C8C8E34747A3C7C7E3EDEDF64747A34747A34747A308088414148AA0
                A0CF8181C04747A34747A39E9ECFFFFFFF5E5EAF4747A39D9DCEFFFFFFEFEFF7
                0000802020904747A35151A8FFFFFFABABD54747A35050A8FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE8DBB5D6BE79
                F0E7CEE6D6A5CEAF4ACBA93ADAC372C6A019C29900C39B00C59D00C69F00C6A0
                00C7A000CAA50EF0E7BFFEFEFDE5D6AAA39E7685ADEB82B1FC83B1FC83B1FC83
                B1FC82B0FC80AFFC7EAEFB7BABFB75A7F970A3F86B9FF6679BF56297F35C92F2
                568EF1508AEF4B85ED4481EB3E7CEA3978E93274E62B70E5266DE4266DE45A90
                EAFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCDE8181C0F2F2F8FFFFFFC2C2E0D9
                D9ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7E3
                6969B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFCDCDE66363B1FFFFFFFFFFFFFFFFFFCFCFE736369B6060B0E4E4F24C4CA647
                47A3E1E1F06969B4303098CACAE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF0B0B855858ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFAFAFD7000080000080E7E7F3FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C1C8E4848A4FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF700008075
                75BAADADD68A8AC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF5EFDFEFE6CAD5BB6AC0
                9919BC9100C6A01EDFCA7DCBA923C59E00C7A000C8A200C9A400CAA500CBA600
                CFAD16F3EBC7FDFDFBE0CD99A695538AAEE287B3FD87B3FD87B3FD87B3FD85B2
                FC84B2FC82B0FC7FAEFC7CABFB75A7F96FA2F86A9EF66599F45F95F35991F253
                8CF04D87EE4783EC417EEB3B7AEA3575E72D71E5276EE4266DE44481E7F2F6FD
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7E35959AC4F4FA77F7FBFE6E6F2FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF6D0D0E7FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF7
                8989C44F4FA7DADAECFFFFFF9C9CCE000080C7C7E3FFFFFF9E9ECE9393C9FFFF
                FFD3D3E90000809191C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFB3B3D9CBCBE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFAFAFD7000080000080E7E7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8DBC6C6E2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF70000807575BA5656
                AA0E0E87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7F2E4CFB156BB9006BC9200BF96
                00C59F0EE3D08BD1B230C9A300CBA600CDA800CEAA02CFAC05CFAC09D0AE10EF
                E3AFFEFEFDE8DBB4B7932997A6AC8BB6FB8BB7FD8BB7FD8BB7FD89B5FD87B4FD
                85B2FC82B0FC7FAEFB7BABFB74A6F96EA1F7689CF56397F45D93F2568EF15089
                EE4A85ED4380EB3E7CEA3777E83073E6296EE4266DE43A7AE6E2EBFBFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5F2E3E3F1F0F0F8FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F9E3
                E3F1F9F9FCFFFFFFF4F4F9E3E3F1F8F8FCFFFFFFF4F4F9F3F3F9FFFFFFFAFAFC
                E3E3F1F3F3F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F6F6FAE3E3F1E3E3F1FCFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEE3E3F1F0F0F7ECECF5E4E4F1
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFE6D7ABBE9614BC9100BF9500C29A00C59E02
                E3CF80DABF4CCDA801CFAC08D1AE15D2B125D3B232D4B338D4B438E3CE7EFEFD
                FAF8F4E8D1B666B0902E96AEC690BAFC90BAFE8FBAFE8DB8FE8BB6FD88B4FD86
                B3FD82B0FC7FAEFB79AAFA72A4F86B9FF66599F45F95F35990F2528CF04C87ED
                4582EC3F7EEB3979E93274E62A70E5266DE43778E6D7E3FAFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFD4BA6AC7A42FBE9400C19800C49D00C7A100DCC45BE4
                D179D1AE14D2B129D4B43CD6B748D7B950D8BA53D8BA54DFC773FDFCF9FEFDFC
                F1E8D1CBAB50AD92399DABB395BBF592BDFF91BBFE8EB9FE8BB6FD88B4FD84B2
                FC80AFFC7CACFB75A6F96DA1F7679BF56197F45B92F2538DF04D88EE4783EC41
                7EEB3A7AE93375E72C71E5266DE43778E6D4E2FAFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF999932FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFD4B963CEAF45C09600C39B00C6A000CAA500D6B82FEEE2ACD4B5
                38D6B647D8BA54DABD5EDBBF66DCC16ADCC16BDEC472EDDFB2F0E4BEFCFAF4F3
                EDDACDB05DB08F27A5A27E99B9E594BDFE91BBFE8DB9FE8AB6FD86B3FC82B0FC
                7FADFB77A8FA70A3F7699DF66398F45D93F3558DF04F89EF4984EC427FEC3B7A
                E93475E72D71E5276DE43778E6D8E4FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF999932FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                FFFFDAC276D3B551C49D09C59E00C9A300CDA900D1AF16F1E6BBDEC56CD9BC5C
                DCC069DEC474E1C77DE2CA83E3CC86E3CC87E4CE8CE5D191F2E8C9FDFDF9F9F6
                EDE1CF9DC09E38B19332A1A79A96B6E290B8F58BB7FC87B4FD83B1FC80AEFC7A
                AAFA71A4F86A9EF66498F45E94F3568EF15089EF4984ED4280EC3C7BEA3676E8
                2E72E6276EE43B7BE6E3ECFBFFFFFFFFFFFFFFFFFFFFFFFFC5C58B95952B9999
                33999933C5C58AFAFAF6FFFFFFFBFBF6C6C68D999933999933B2B265F7F7F0FF
                FFFF919123999933999933D4D4A9FDFDFBFFFFFFF8F8F2B7B76E9E9E3ED6D6AE
                C0C081FFFFFFA2A245FFFFFFFFFFFFFFFFFFFEFEFDDBDBB8999933999933EAEA
                D5A7A74EFFFFFFFFFFFFA2A245FFFFFFFFFFFFB6B66EEBEBD7FBFBF8CCCC9999
                9933999933ACAC59F6F6EEFFFFFFA2A245FFFFFFFFFFFFFFFFFFA2A245FFFFFF
                FFFFFFF6F6EEABAB57999933C1C183FFFFFFFFFFFFFFFFFFF9F9F4BEBE7C9999
                33999933BABA76F9F9F3FFFFFFEBEBD7B6B66DFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFA7A74E8B8B178B8B178B8B178B8B179B9B36CDCD9C9393279999338C8C19
                B3B366C0C0818B8B17F7F7F0FFFFFFC1C1838B8B17F5F5EBCFCFA08B8B178B8B
                178B8B178B8B17C7C790FFFFFFFFFFFFFFFFFFFFFFFFADAD5A989830DBDBB78B
                8B17DCDCBAFFFFFFDCDCBA8B8B17DBDBB8F4F4E98B8B17C4C488FFFFFFFDFDFC
                D4D4A98B8B178B8B17E6E6CDFFFFFFFFFFFFB1B163949428FFFFFFFFFFFFFFFF
                FF9B9B36AAAA54FFFFFFB2B266929224FFFFFFCACA958B8B17EDEDDBD8D8B092
                92249999338E8E1CA7A74FFFFFFFF6F6ED9C9C388B8B17BDBD7BFFFFFF9F9F3E
                A5A54CFFFFFFF6F6ED9D9D3C8B8B17B6B66CF9F9F4FDFDFC8B8B17BBBB76FFFF
                FFFEFEFD8B8B17BABA75FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE0CC
                8AD2B54DCDAC29C7A000CBA600CFAC08D2B129E5D18AE5D18FDDC26EE2CA82E7
                D399ECDCAFF1E5C3F5EED7F9F5E7FDFBF5FEFEFDFFFFFFFFFFFFFFFFFEFFFEFE
                F5F0E0DCC78BC4A23FB4983DA39E7895ACC289B3F784B1FC80AEFC7BABFB71A4
                F86B9FF66599F45E95F3578FF1508AEF4A84ED4380EC3D7BEA3676E82F72E627
                6EE44682E8F4F8FEFFFFFFFFFFFFFFFFFFFFFFFFBFBF7FD8D8B2FFFFFFFFFFFF
                C0C080D7D7B0FFFFFFDADAB5BDBD7BFFFFFFFFFFFFE6E6CDD1D1A3FFFFFF9999
                32FFFFFFFFFFFFC4C489D3D3A8FFFFFFC4C488D4D4A9F9F9F49D9D3ABABA74FF
                FFFF999932FFFFFFFFFFFFFFFFFFF9F9F39F9F3EFFFFFFFFFFFFFAFAF59E9E3C
                FFFFFFFFFFFF999932FFFFFFFFFFFFAFAF5FE9E9D3E2E2C6B5B56BFFFFFFFFFF
                FFECECD9CBCB98FFFFFF999932FFFFFFFFFFFFFFFFFF999932FFFFFFFFFFFFB2
                B266E5E5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECE9CCACA94FFFFFFFFFFFF
                CECE9EC9C993FFFFFFE9E9D3AEAE5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E
                3C86860CA7A74FA7A74FA7A74FA1A143808000C5C58BFFFFFF86860DABAB57BA
                BA74808000F7F7EFFFFFFFBBBB77808000E5E5CC808000949429A7A74FA2A245
                808000C2C284FFFFFFFFFFFFFFFFFFFFFFFFA4A4498D8D1BD7D7B0808000D9D9
                B3FFFFFFD9D9B3808000D8D8B1F3F3E7808000BEBE7CFFFFFFD4D4A98B8B16A7
                A74FA7A74F8B8B17E2E2C5FFFFFFA9A953898912FFFFFFFFFFFFFFFFFF919122
                A1A143FFFFFFAAAA5687870EFFFFFFC5C58B808000E5E5CC808000B8B872FFFF
                FF9393279E9E3DFFFFFFADAD5B818102A7A74FCDCD9BFFFFFF95952B9C9C39EE
                EEDDA0A042A0A041A7A74F97972EB5B56CF6F6ED808000B4B468FFFFFFFEFEFD
                808000B3B367FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE8DAA8D1B346
                D5B949C9A302CDA801D0AE16D4B43CDABD5DE2CB83EBDBABF3E9CDF9F4E6FDFC
                F9FEFEFCFDFCF9FCF9F2FCFAF3FCF9F1F5ECD4F2E8C9EFE3BAEDDFB1EFE3B5F7
                F1D8F4EDDAE2D19ECAAB50B0923599A19A85B0F680AEFC7BABFB71A4F86B9FF6
                6599F45F95F3578FF1508AEF4A84ED4380EC3D7BEA3676E82F72E6276EE46093
                EBFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF7FD8D8B2FFFFFFFFFFFFE0E0C1BE
                BE7EF7F7F0DADAB59D9D3CBDBD7BBDBD7BBDBD7BDDDDBAFFFFFF999932FFFFFF
                FFFFFFFFFFFF999932FFFFFFC4C488D4D4A9FFFFFFDDDDBCBABA74FFFFFF9999
                32FFFFFFFFFFFFFFFFFFF9F9F39F9F3EFFFFFFFFFFFFFAFAF59E9E3CFFFFFFFF
                FFFF999932FFFFFFFFFFFFAFAF5FE9E9D3E2E2C6999934BDBD7BBDBD7BBDBD7B
                D8D8B2FFFFFF999932FFFFFFFFFFFFFFFFFF999932FFFFFFFFFFFFB2B266E5E5
                CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECE9CCACA94FFFFFFFFFFFFCECE9EC9
                C993FFFFFFE9E9D3AEAE5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E3C939327
                FFFFFFFFFFFFFFFFFFF5F5ECAAAA55A1A143BDBD7B838306ABAB57BABA748080
                00F7F7EFFFFFFFBBBB77808000E5E5CC808000C2C286FFFFFFEFEFDF808000C2
                C284FFFFFFFFFFFFFFFFFFFFFFFFA4A4498D8D1BD7D7B0808000D9D9B3FFFFFF
                D9D9B3808000D8D8B1F3F3E7808000BEBE7CFFFFFF8E8E1CA4A448FFFFFFFFFF
                FF8F8F1EA3A346FFFFFFA9A953898912FFFFFFFFFFFFFFFFFF919122A1A143FF
                FFFFAAAA5687870EFFFFFFC5C58B808000E9E9D3B1B1629B9B37BDBD7B898913
                9E9E3DFFFFFFADAD5B848408FFFFFFFFFFFFFFFFFF95952B9C9C39C8C8928080
                00E8E8D1FFFFFFCACA94808000E5E5CC808000B4B468FFFFFFFEFEFD808000B3
                B367FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF2EACBD0B03BDBC363CE
                AB12CEAB04D2B125DABE58EADAA5F8F1DFFCFAF4FDFBF6F9F5E9F7F0DDF5EDD7
                F4EBD1F2E7C9F5ECD2F8F2E0E8D59DE3CB85DDC26ED9BC59D7BA49D9BE41E8D7
                8AFAF6EAF5EFDFD6BD77B08D2393A2A880AEFB7AABFA71A4F86B9FF66499F45E
                95F3578FF15089EF4A84ED4380EC3D7BEA3676E82E72E6276EE48DB2F0FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFBFBF7FD8D8B2FFFFFFFFFFFFFFFFFFA7A74EF1F1
                E3DADAB5ACAC59DBDBB7DBDBB7C1C183BCBC7AFFFFFF999932FFFFFFFFFFFFFF
                FFFF999932FFFFFFEEEEDDB6B66DA3A3479A9A34BABA74FFFFFF999932FFFFFF
                FFFFFFFFFFFFF9F9F39F9F3EFFFFFFFFFFFFFAFAF59E9E3CFFFFFFFFFFFF9999
                32FFFFFFFFFFFFAFAF5FE9E9D3E2E2C6A6A64DDBDBB7DBDBB7C7C78FB4B469FF
                FFFF999932FFFFFFFFFFFFFFFFFF999932FFFFFFFFFFFFB2B266E5E5CBFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFCECE9CCACA94FFFFFFFFFFFFCECE9EC9C993FFFF
                FFE9E9D3AEAE5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E3C939327FFFFFFFF
                FFFFFFFFFFFFFFFFF2F2E6DBDBB7DBDBB7848409ABAB57BABA74808000F7F7EF
                FFFFFFBBBB77808000E5E5CC808000C2C286FFFFFFEFEFDF808000C2C284FFFF
                FFFFFFFFFFFFFFFFFFFFA4A4498D8D1BD7D7B0808000D9D9B3FFFFFFD9D9B380
                8000D8D8B1F3F3E7808000BEBE7CFFFFFF8E8E1CA4A448FFFFFFFFFFFF8F8F1E
                A3A346FFFFFFA9A953898912FFFFFFFFFFFFFFFFFF919122A1A143FFFFFFAAAA
                5687870EFFFFFFC5C58B808000ECECD9F6F6EDDBDBB7DBDBB78E8E1C9E9E3DFF
                FFFFADAD5B848408FFFFFFFFFFFFFFFFFF95952B9C9C39C8C892808000E8E8D1
                FFFFFFCACA94808000E5E5CC808000B4B468FFFFFFFEFEFD808000B3B367FFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7F3E1D3B646DFC973D4B62FD2B1
                14E2CD76F6EFD6FAF6EBF7F1DEF8F1E0EEDFB5EEE0B8F2E7C7F4EBD2F5ECD4F3
                E9CCF3E8CAF8F3E3EAD9A5E2CB85DDC26FD9BB59D5B540D1AF17CFAD0EE4D281
                FEFEFCFCFAF5CEB15DA5914B84AAE478A9FA70A3F86A9EF66398F45D94F3568E
                F14F89EF4984EC427FEC3B7AE93576E72E71E5296FE4C7D9F8FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFBFBF7FD8D8B2FFFFFFFFFFFFFFFFFFA7A74EF1F1E3DEDEBE
                BEBE7CEFEFDFEFEFDFD4D4A9C5C58AFFFFFF97972FEFEFDFEFEFDFB5B56CE9E9
                D4FFFFFFF7F7F0E8E8D2E5E5CBCFCF9EC2C285FFFFFF939327AFAF5EEFEFDFF9
                F9F3ECECD99B9B36EFEFDFF9F9F3FAFAF586860CBEBE7EEFEFDF9F9F40ADAD5A
                EFEFDFB3B367EBEBD8E6E6CDB7B770EFEFDFEFEFDFDADAB5BDBD7CFFFFFF9898
                30ABAB57EFEFDFEFEFDFA2A245FFFFFFF8F8F2ACAC59D8D8B1F2F2E5FFFFFFFF
                FFFFFFFFFFFFFFFFD4D4A8C7C78FEFEFDFEFEFDFCBCB96CFCFA0FFFFFFDCDCB9
                A9A952EFEFDFFBFBF7FFFFFFFFFFFFFFFFFF9E9E3C939327FFFFFFFFFFFFFFFF
                FFFFFFFFD6D6AD898913898913828205B5B56CBABA7480800089891289891384
                84098B8B17E9E9D28A8A1585850A898913888811808000C2C284FFFFFFFFFFFF
                FFFFFFFFFFFFA4A4498D8D1BD7D7B080800086860D89891386860D87870FDDDD
                BB95952A808000848409DADAB6EDEDDC8E8E1C89891389891397972EF7F7F0FF
                FFFFA9A953808001898913C0C081FFFFFF9292248E8E1C8989138383068D8D1A
                89891385850A8A8A14EEEEDEE1E1C4898913898913828204AAAA55CBCB978383
                07808000898913BCBC79B5B56A8181039C9C39FAFAF6B5B56C8A8A158989138C
                8C18CECE9DFBFBF8808000848408898913898913838306BCBC7AFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFCFAF4E1CC7CD2B335D6B937E8D88BF7F1DB
                EEE1B6E3CD89E3CD8AF3E8CBF1E6C6EFE2BCF4EBD2F9F3E4FAF5E8F6EFDBF3E9
                CCF8F2E3EDDFB4E3CC89DEC473DABC5DD5B645D1B01DCFAD0CE6D68BF4EDD3F9
                F6E9EEE3C6AB8F3289A4C475A7F96EA2F7689CF66298F45C93F2548DF04E88EE
                4883EC427FEB3B7AE93375E72C71E54B85E8EEF3FDFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFBFBF7FD8D8B2FFFFFFFFFFFFEAEAD5B7B76EF5F5ECFFFFFFD5D5ABA9
                A953A9A953C1C183FFFFFFFFFFFFB3B368A9A953A9A953E2E2C6FFFFFFFFFFFF
                D7D7AFA9A953A9A953BFBF80FFFFFFFFFFFFBABA75E9E9D3A9A953E0E0C2B4B4
                698A8A14A9A953E0E0C1FBFBF8BDBD7CD9D9B4A9A953F0F0E2EBEBD7A9A953DF
                DFBEFFFFFFFFFFFFDBDBB6A9A953A9A953BCBC78FFFFFFFFFFFFBABA75EDEDDB
                A9A953A9A953EEEEDDFFFFFFDCDCBA909021A1A142BABA74FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFCDCD9AA9A953A9A953C9C994FFFFFFFFFFFFA4A4498F8F1EA9
                A953EBEBD7FFFFFFFFFFFFFFFFFF9E9E3C939327FFFFFFFFFFFFFFFFFFFFFFFF
                E1E1C3A9A953A9A953B5B56CFFFFFFD0D0A1A9A953A9A953A9A953A9A953E8E8
                D1FFFFFFE2E2C6A9A953A9A953A4A449808000C2C284FFFFFFFFFFFFFFFFFFFF
                FFFFA4A4498D8D1BE4E4CAA9A953A9A953A9A953A9A953D4D4A8FFFFFFAEAE5D
                808000949428E4E4C9FFFFFFE6E6CEA9A953A9A953F4F4EAFFFFFFFFFFFFC5C5
                8BA9A953A9A953D1D1A3FFFFFFBABA75E8E8D1A9A953A9A953EEEEDDA9A953A9
                A953E1E1C3FFFFFFE9E9D4A9A953A9A953ADAD5AFFFFFFD9D9B38E8E1E818102
                A9A953CECE9DC9C992A9A953BCBC7AFFFFFFFFFFFFB8B872A9A953CDCD9AFFFF
                FFFDFDFCA9A953A9A953A9A953A9A953BABA76FFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFFEFEFDEDE1B3D0AF28E4D17FF4ECCBE1CA76DABD5CDC
                C16AE2CA82EDDEB2F5EED7F1E5C3F5ECD3F9F4E7FBF6ECF7F0DCF3E8C9F7F0DD
                F0E4C0E4CD8ADEC473DABD5DD5B645D1B01DD1AF11EBDC9FE2CE83ECDFAEF6F0
                E0B99733909B9674A5F56CA0F7669AF46096F35A91F2538CF04C87ED4682EC40
                7EEB3A79E93274E72D71E58EB2F1F8FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                BFBF7FD8D8B2FFFFFFFFFFFFC0C080D7D7B0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F39F9F3E
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFB2B266E5E5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9D3AEAE5EFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF9E9E3C939327FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFEFDF808000C2C284FFFFFFFFFFFFFFFFFFFFFFFFA4A4
                498D8D1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3E7808000BE
                BE7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAD5B848408FFFFFFFF
                FFFFFFFFFFC7C78ECACA96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF9F5E5E8D99CF3EAC5EEE2AFD5B73FD7B951DCC067E0C8
                7EE7D399F5ECD3F4EACEF3E8CAF6EED8F7EFDBF5EBD1F0E3C0F4EAD0F2E8CAE4
                CE8BDDC370D9BC5BD5B542D1AF19D1B017EDE1ACD9C05FDFC97AF9F5EBD0B465
                A08F4D779FDB6A9EF66399F45E94F3588FF1518AEF4B85ED4481EC3E7DEB3878
                E93173E64581E8C9DBF8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF7F97
                972FA1A143A1A143BFBF7EF4F4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBE5E5CBFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFEAEAD6F8F8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F3C7C78FA1A143E9E9D3FFFFFF
                FFFFFFFFFFFF9E9E3C939327FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEFEFDF808000C2C284FFFFFFFFFFFFFFFFFFFFFFFFA4A4498D8D1B
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF8C2C284909021A1A1
                43A9A953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9D3DEDEBDFFFFFFFFFFFFFFFF
                FF95952B9C9C39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFEFEFEFDFCF9E2CD73DFC65BE4CE80D7B94FDABE61DFC577E3CD8A
                ECDCAEF8F1DFF0E3BFF1E5C3F1E5C4F0E3BFEDDDB1EFE1BAF3EACEE4CF8DDCC1
                6AD8BA54D4B43AD0AE10D2B21EEEE3B5D2B543CDAD36FAF8EEEBDFBDBD992D95
                916D6D98DE6096F25B92F2548DF14E88EE4983EC427FEB3C7BEA3576E73375E6
                87AEF0F2F6FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF7F7F7EFF7F7
                EFF7F7EFFBFBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF9F7F7EFFDFDFBFFFFFFFFFFFFFF
                FFFFF8F8F2F8F8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF1F1E4919123CACA95FFFFFFFFFFFFFFFFFFFFFFFFF9F9F3F7F7F0FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFAC5C58B9191239B9B36
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F1
                F8F8F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFEFDFCDFC867D0B013E4D079DFC66ED9BC5ADDC26EE1C87EE4CE8EF0
                E4C0F4EBD1ECDDB1ECDCAFEBDBABE9D6A0E8D69FF0E5C3E4CE8BDABE61D6B74B
                D3B22CCFAC07D1B11EE6D594CAA722C09704E8D9AAFCFAF6E3D2A3C09B30988C
                566592DD578FF1528BF04C86ED4581EC407DEB3A7AE93475E7558CEAD0DFF9FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF4ECCDD1B01BD7B930E6D287DCC063DABE62DEC372E1C980E5D090F2E9
                CCEEE0B9E8D49BE7D398E5CF90E2CB86E4CF8EDFC575D9BC5AD7B94AD4B52CD1
                B015CEAC1ACFAF30C49E0CBF9604C9A634EEE3C3FCFAF5E9DCB8B48F217B8B97
                548CF04E88EE4983EC427FEB3D7BEA3777E83A7AE7A1BFF3F9FBFEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
                FEFDE8D890CFAD0BD9BE41E8D694D9BC5ADBBE62DDC370E0C67AE6D295EDDDB1
                E4CE8DE3CC87E6D297ECDCACF0E3BEF3E9CCF5EDD4F5EED3F4EDCCF4ECC8F3EA
                C8F2E9C6F0E5C0ECDFB5E5D4A2E5D6A8F2EAD5FCFAF6CBAE589787475C89D34B
                85ED4581EC3F7DEB3A79E93476E7729FEEF0F5FDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9
                EEE3CF74D0AE0FD9BD40E7D592DBBE5EDABC5CDBBF65DEC472E4CE8CEEDFB5F8
                F3E2FCF9F1FBF8EDFAF6E9FBF9EFFAF6E5F7F2D8F7F1D8F6F0D8FBF9F1F7F3E2
                F6F1DFF7F2E3F9F5EAFCFAF6FDFCFAFEFEFEEFE6CBB7932683856F4F82DB417E
                EB3C7AEA3878E85B90EBE6EEFCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F4E2
                E1CB68D0AE0ED8BC3DE2CD7ADBC05FDABD5BEAD8A2F7F1DCF7F0DBF8F3E2ECDD
                AAE2CD7FDDC361E3CE79E2CD6CCDAA04CAA604C8A206EBDDACCBA931C5A021C8
                A536D7BD73EADCB8E5D5A8F0E6CDFAF8F0DFCC96B491277F8270547DC0487BD1
                6693E1CEDDF9FDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8F4DFE1
                CB6ACEAC08D6B72BDBC04CE8D796F5EDD0E6D48FDDC364E0C972E4D084D6B83C
                D1AF17D1B015E6D486CBA709C6A000C8A413E7D7A1BF9503BB8F00BD9414D3B8
                6AC39E35B78C0EC29D34E2D1A1F9F6ECE0CE99C3A54BA6975FAAACA2D5DCE4FA
                FBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF7EAE3CF
                75CEAB0AD7BA34F3EAC4E7D486D5B62BD1AF17D1B016D9BD3BE0CA66D2B21CCB
                A600D8BD4BD4B741C49C00D0B240D7BD65BC9000BE9614D4B96AC09A2CB48601
                B48602C29E35D4BB75DDC88EF5EFDFF4EEDCF1E9D2F8F3E8FDFDFBFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF6EDE0AB
                E2CD76EEE3B2D1B11ED9BE44D5B72ECFAD11CCA906D0AF1FDAC057D0B02BCBA7
                1AD6BB57C49D10DAC370C39C1EC29B21CEAF56BE9623B78B0DBD9420CAAB51C4
                A13CB68A0BB78C0FC39F37E0CD99FCFBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFAF7EBFB
                F9F1DCC55FCDA915CEAC1ED1B231CEAD22CBA717CBA81CD2B443CDAD35D0B246
                CEAF45D8BF6FC6A232CAAA4AC29C30BC9420C29E36C4A13DBB911BB68B0DBE97
                29D0B465E8DAB4FCFAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F4
                E3E5D48FD3B541C9A519CBA823CBA929CAA727C8A526CEAE44D3B65EE0CC90DF
                CB92CDAF59C39E38C09A30C09B32BB911CB88C12BD9626CFB363E4D4A7F6F2E4
                FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFBF5
                F6F1DDEBDEAFD7BD61C8A528C29B13C29B18C7A333CAA945D0B35FD1B466C5A2
                43BF992EBC9424BE9627C8A74ADDC88FEEE4C7F7F3E7FEFDFCFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE
                FEFEFEFEFCFDFBF7F7F2E5EFE6CCE3D29CE1CE95E0CC95DBC586E5D5ABE6D8B0
                F0E7CFFAF7F0FEFDFCFEFEFDFEFEFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            end
            object btnLogo2: TButton
              Left = 42
              Top = 92
              Width = 75
              Height = 25
              Caption = 'Change Logo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = btnLogo2Click
            end
            object btnDeleteLogo1: TButton
              Left = 130
              Top = 92
              Width = 75
              Height = 25
              Caption = 'Delete Logo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btnDeleteLogo1Click
            end
          end
          object tsAccreditation2: TTabSheet
            Caption = 'Accreditation Logo'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object ImageAccreditation2: TImage
              Left = 40
              Top = 2
              Width = 229
              Height = 77
              Picture.Data = {
                07544269746D61705E230000424D5E2300000000000036000000280000003C00
                000032000000010018000000000028230000C20E0000C20E0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8
                DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC
                C4C8000040000040000040000040000040000040000040000040000040000040
                000040000040000040000040000040DCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C800004000004000004000004000
                0040000040000040000040000040000040000040000040000040000040000040
                000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4
                C800004000004000004000004000004000004000004000004000004000004000
                0040000040000040000040000040000040000040000040000040000040000040
                DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4
                C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4
                C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DC
                C4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8
                DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0000400000400000400000400000400000400000400000400000
                4000004000004000004000004000004000004000004000004000004000004000
                0040000040000040000040000040000040000040000040000040000040000040
                DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
                0000400000400000400000400000400000400000400000400000400000400000
                4000004000004000004000004000004000004000004000004000004000004000
                0040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C8
                DCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4
                C8FFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040000040
                0000400000400000400000400000400000400000400000400000400000400000
                40000040000040000040000040000040000040000040000040000040000040DC
                C4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8
                DCC4C8DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFF0000400000
                40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF000040000040000040000040000040000040000040000040000040000040
                0000400000400000400000400000400000400000400000400000400000400000
                40000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF000040000040000040000040000040000040000040000040000040
                000040000040DCC4C8FFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
                0040000040000040000040000040000040000040000040000040000040000040
                0000400000400000400000400000400000400000400000400000400000400000
                40DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000
                0040000040000040000040000040000040000040000040DCC4C8FFFFFFFFFFFF
                FFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFF
                FFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040
                DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8000040000040000040
                000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000040000040DCC4C8DCC4C8FFFFFF000040000040DCC4C8FF
                FFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4
                C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFDCC4C8000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFFFFFFF0000400000
                40000040DCC4C8000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF00
                0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800004000004000004000
                0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
                000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040DCC4C80000400000
                40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
                000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFF
                FFFFFFFFFFFF000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFF
                FFFFFFFFDCC4C8000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C80000400000400000
                40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF000040000040
                000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C80000400000400000
                40000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DC
                C4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFF
                FFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
                0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8000040000040
                000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040
                000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
                FFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                40000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFDCC4C8DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C800004000004000
                0040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C800004000
                0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4
                C8FFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8
                DCC4C8DCC4C8000040000040000040DCC4C8DCC4C8DCC4C8DCC4C8FFFFFFFFFF
                FFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFDCC4C80000400000
                40000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040
                000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFDCC4C80000400000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
                000040000040DCC4C8DCC4C8000040000040000040000040DCC4C8FFFFFFDCC4
                C8DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DC
                C4C8FFFFFF000040000040000040000040000040000040000040000040000040
                DCC4C8FFFFFFFFFFFFDCC4C8000040000040000040000040000040000040DCC4
                C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040000040
                000040000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFF
                FFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FFFFFF00004000004000
                0040000040000040000040000040000040000040DCC4C8FFFFFFDCC4C8000040
                000040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF000040000040000040000040000040000040000040DCC4C8FFFFFFFFFFFF
                FFFFFFFFFFFF000040000040000040000040DCC4C8DCC4C8DCC4C80000400000
                40000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFDCC4C8000040000040000040000040000040000040000040
                000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
                0040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040
                000040000040000040000040000040000040000040000040DCC4C8FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800004000
                0040000040000040DCC4C8FFFFFF000040000040000040000040DCC4C8FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000040000040000040000040000040DCC4C8FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040000040
                000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFF
                FFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C80000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFF000040000040000040
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C80000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFF00004000004000004000
                0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFDCC4C8DCC4C8000040000040000040000040DCC4C8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000
                0040DCC4C8FFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FFFF
                FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040
                000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C800004000
                0040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8DCC4C8
                000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8DCC4C8
                DCC4C8DCC4C8DCC4C8FFFFFFFFFFFFFFFFFFDCC4C8DCC4C8DCC4C8DCC4C8DCC4
                C8FFFFFF000040000040000040EBDDDF000040000040000040DCC4C8FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040000040DCC4C8
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4
                C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0040000040000040000040DCC4C8FFFFFF000040000040000040DCC4C8FFFFFF
                FFFFFFDCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFF0000400000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800
                0040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040DCC4C8FF
                FFFFFFFFFF000040000040000040DCC4C8FFFFFFDCC4C8000040000040000040
                000040E6D6D8FFFFFFFFFFFFFFFFFF000040000040000040000040000040DCC4
                C8FFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040
                000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFF00004000004000
                0040DCC4C8FFFFFF000040000040000040000040000040E6D6D8FFFFFFFFFFFF
                FFFFFFFFFFFF000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFDCC4
                C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000400000
                40DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040DCC4C8DCC4C800004000
                0040000040000040000040E6D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4
                C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFF
                FF000040000040000040DCC4C8000040000040DCC4C8DCC4C8000040000040E6
                D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8
                DCC4C8000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00004000004000004000
                0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFF0000400000400000400000
                40000040000040DCC4C8FFFFFF000040000040E6D6D8FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C8000040000040000040000040DCC4C8
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8
                FFFFFFFFFFFFFFFFFF000040000040000040000040000040000040DCC4C8FFFF
                FF000040000040E6D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC
                C4C8000040000040000040000040DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8
                DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C80000
                40000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFFFFFFFFFFFF000040
                000040000040000040000040DCC4C8FFFFFFFFFFFF000040000040E6D6D8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC4C800004000004000004000004000
                0040000040000040000040000040000040000040000040000040000040000040
                000040000040000040000040000040000040000040000040000040000040DCC4
                C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0040000040DCC4C8FFFFFFFFFFFFFFFFFF000040000040000040000040DCC4C8
                FFFFFFFFFFFFFFFFFF000040000040E6D6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFDCC4C800004000004000004000004000004000004000004000004000004000
                0040000040000040000040000040000040000040000040000040000040000040
                000040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000040000040DCC4C8FFFFFFFF
                FFFFFFFFFF000040000040000040000040DCC4C8FFFFFFFFFFFF000040000040
                000040000040FFFFFFFFFFFFFFFFFFDCC4C8DCC4C80000400000400000400000
                4000004000004000004000004000004000004000004000004000004000004000
                0040000040000040000040000040000040000040000040000040000040000040
                000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000040000040D5BBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0000400000400000400000400000400000400000400000400000400000
                4000004000004000004000004000004000004000004000004000004000004000
                0040000040000040000040000040000040000040000040000040DCC4C8FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000400000
                40DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DC
                C4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8DCC4C8000040000040000040000040
                DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000400000400000400000400000400000
                4000004000004000004000004000004000004000004000004000004000004000
                0040000040000040000040000040000040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0000400000400000400000400000400000400000400000400000400000
                4000004000004000004000004000004000004000004000004000004000004000
                0040DCC4C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF}
            end
            object lblLogo: TLabel
              Left = 2
              Top = 122
              Width = 50
              Height = 13
              Caption = 'Logo Title:'
            end
            object btnLogo1: TButton
              Left = 42
              Top = 85
              Width = 75
              Height = 25
              Caption = 'Change Logo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = btnLogo1Click
            end
            object btnDeleteLogo2: TButton
              Left = 130
              Top = 84
              Width = 75
              Height = 25
              Caption = 'Delete Logo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btnDeleteLogo2Click
            end
            object memAccreditationLogoTitle2: TMemo
              Left = 52
              Top = 120
              Width = 288
              Height = 34
              Lines.Strings = (
                'NATA Accredited Laboratory'
                'Number 58682')
              TabOrder = 2
            end
          end
        end
        object chkIncludeLogos: TCheckBox
          Left = 33
          Top = 22
          Width = 209
          Height = 17
          Caption = 'Include logos in reports and certificate'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chkIncludeLogosClick
        end
        object cbLetterHead: TCheckBox
          Left = 250
          Top = 22
          Width = 145
          Height = 17
          Caption = 'Certificate on Letter Head'
          TabOrder = 2
        end
      end
      object gbCertification: TGroupBox
        Left = 225
        Top = 342
        Width = 242
        Height = 76
        Caption = 'Certification Dates'
        TabOrder = 5
        object lblCertDateStart: TLabel
          Left = 16
          Top = 24
          Width = 25
          Height = 13
          Caption = 'Start:'
        end
        object lblCertDateExpiry: TLabel
          Left = 11
          Top = 52
          Width = 31
          Height = 13
          Caption = 'Expiry:'
        end
        object dtStartCertification: TDateTimePicker
          Left = 45
          Top = 20
          Width = 186
          Height = 21
          Date = 37855.484638518500000000
          Time = 37855.484638518500000000
          TabOrder = 0
        end
        object dtEndCertification: TDateTimePicker
          Left = 45
          Top = 48
          Width = 186
          Height = 21
          Date = 37855.484638518500000000
          Time = 37855.484638518500000000
          TabOrder = 1
        end
      end
    end
    object tsDistObs: TTabSheet
      Caption = 'tsDistObs'
      ImageIndex = 10
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHeaderObs: TLabel
        Left = 6
        Top = 0
        Width = 274
        Height = 29
        Caption = 'Enter new observations'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_tsDistObs_Job: TLabel
        Left = 5
        Top = 38
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lbl_tsDistObs_Baseline: TLabel
        Left = 240
        Top = 38
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object pnl_tsDistObs_Buttons: TPanel
        Left = 636
        Top = 0
        Width = 96
        Height = 474
        Align = alRight
        TabOrder = 0
        object btn_tsDistObs_Close: TBitBtn
          Left = 14
          Top = 352
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
        object btnHelp7: TBitBtn
          Left = 14
          Top = 316
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = btnHelp7Click
          Kind = bkHelp
        end
        object btnCancel: TBitBtn
          Left = 12
          Top = 48
          Width = 75
          Height = 25
          Caption = '&Cancel'
          TabOrder = 2
          OnClick = btnCancelClick
        end
        object btnSave: TBitBtn
          Left = 12
          Top = 16
          Width = 75
          Height = 25
          Caption = '&Save'
          TabOrder = 3
          OnClick = btnSaveClick
        end
      end
      object pnlJob7: TPanel
        Left = 28
        Top = 34
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object pnlBaseline7: TPanel
        Left = 286
        Top = 34
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object pcObservations: TPageControl
        Left = 24
        Top = 80
        Width = 466
        Height = 321
        ActivePage = tsObservations2
        TabOrder = 3
        object tsNewObservations: TTabSheet
          Caption = 'tsNewObservations'
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblAtPillar: TLabel
            Left = 8
            Top = 27
            Width = 35
            Height = 13
            Caption = 'At Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblToPillar: TLabel
            Left = 53
            Top = 27
            Width = 38
            Height = 13
            Caption = 'To Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblAtHeight: TLabel
            Left = 100
            Top = 16
            Width = 67
            Height = 26
            Alignment = taCenter
            Caption = 'Height above '#13#10'At Pillar (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblToHeight: TLabel
            Left = 172
            Top = 16
            Width = 67
            Height = 26
            Alignment = taCenter
            Caption = 'Height above '#13#10'To Pillar (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblDryTemp: TLabel
            Left = 37
            Top = 76
            Width = 49
            Height = 26
            Alignment = taCenter
            Caption = 'Dry Temp '#13#10'Celsius'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblHumidity: TLabel
            Left = 106
            Top = 76
            Width = 53
            Height = 26
            Alignment = taCenter
            Caption = 'Wet Temp '#13#10'Celsius'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblPressure: TLabel
            Left = 176
            Top = 76
            Width = 41
            Height = 26
            Alignment = taCenter
            Caption = 'Pressure'#13#10'hPa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblCertifiedDist: TLabel
            Left = 10
            Top = 172
            Width = 109
            Height = 26
            Alignment = taCenter
            Caption = 'Certified Horizontal'#13#10'Distance (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object lblTolerance: TLabel
            Left = 166
            Top = 186
            Width = 79
            Height = 13
            Caption = 'Tolerance (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblSlopeDistances: TLabel
            Left = 301
            Top = 10
            Width = 79
            Height = 26
            Caption = 'Observed Slope Distances (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblLegalSlopeDistance: TLabel
            Left = 10
            Top = 149
            Width = 133
            Height = 52
            Caption = 
              'Slope Distance (m) between tops of pillars (derived from certifi' +
              'ed horizontal distance)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object cbAtPillar: TComboBox
            Left = 7
            Top = 42
            Width = 37
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            Text = '1'
            OnChange = cbAtPillarChange
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12')
          end
          object cbToPillar: TComboBox
            Left = 53
            Top = 43
            Width = 37
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 1
            Text = '2'
            OnChange = cbToPillarChange
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12')
          end
          object edtAtHeight: TValidEdit
            Left = 98
            Top = 43
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0'
            OnChange = CheckDistValueChange
            OnExit = edtAtHeightExit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 3
            DMSFormat = dfAbbreviated
            MinValue = -10.000000000000000000
            MaxValue = 10.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object edtToHeight: TValidEdit
            Left = 170
            Top = 43
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0'
            OnChange = CheckDistValueChange
            OnExit = edtToHeightExit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 3
            DMSFormat = dfAbbreviated
            MinValue = -10.000000000000000000
            MaxValue = 10.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object edtDryTemp: TValidEdit
            Left = 35
            Top = 103
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '0'
            OnChange = CheckDistValueChange
            OnExit = edtDryTempExit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 1
            DMSFormat = dfAbbreviated
            MinValue = -20.000000000000000000
            MaxValue = 50.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object edtHumidity: TValidEdit
            Left = 104
            Top = 103
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = '0'
            OnChange = CheckDistValueChange
            OnExit = edtHumidityExit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 1
            DMSFormat = dfAbbreviated
            MinValue = -2147483648.000000000000000000
            MaxValue = 2147483647.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object dbgridDistObs: TDBGrid
            Left = 300
            Top = 36
            Width = 100
            Height = 165
            DataSource = dsDistObs
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnExit = dbgridDistObsExit
            Columns = <
              item
                DropDownRows = 0
                Expanded = False
                FieldName = 'Distance'
                Title.Caption = 'Distance (m)'
                Visible = True
              end>
          end
          object edtPressure: TValidEdit
            Left = 174
            Top = 103
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = '0'
            OnChange = CheckDistValueChange
            OnExit = edtPressureExit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 1
            DMSFormat = dfAbbreviated
            MinValue = 800.000000000000000000
            MaxValue = 1200.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object pnlCertifiedDist: TPanel
            Left = 10
            Top = 202
            Width = 136
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 9
          end
          object edtTolerance: TValidEdit
            Left = 167
            Top = 202
            Width = 68
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Text = '0'
            OnExit = edtToleranceExit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 3
            DMSFormat = dfAbbreviated
            MinValue = 0.050000000000000000
            MaxValue = 5.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object dbnavDistObs: TDBNavigator
            Left = 301
            Top = 200
            Width = 100
            Height = 25
            DataSource = dsDistObs
            VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
            TabOrder = 10
          end
        end
        object tsEditObservations: TTabSheet
          Caption = 'tsEditObservations'
          ImageIndex = 1
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblAtPillar2: TLabel
            Left = 8
            Top = 27
            Width = 35
            Height = 13
            Caption = 'At Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblToPillar2: TLabel
            Left = 53
            Top = 27
            Width = 38
            Height = 13
            Caption = 'To Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblAtHeight2: TLabel
            Left = 100
            Top = 16
            Width = 67
            Height = 26
            Alignment = taCenter
            Caption = 'Height above '#13#10'At Pillar (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblToHeight2: TLabel
            Left = 172
            Top = 16
            Width = 67
            Height = 26
            Alignment = taCenter
            Caption = 'Height above '#13#10'To Pillar (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblDryTemp2: TLabel
            Left = 12
            Top = 76
            Width = 49
            Height = 26
            Alignment = taCenter
            Caption = 'Dry Temp '#13#10'Celsius'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblHumidity2: TLabel
            Left = 81
            Top = 76
            Width = 33
            Height = 39
            Alignment = taCenter
            Caption = 'Wet Temp '#13#10'Celsius'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblDistObs2: TLabel
            Left = 265
            Top = 10
            Width = 79
            Height = 26
            Caption = 'Observed Slope Distances (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblPressure2: TLabel
            Left = 151
            Top = 76
            Width = 41
            Height = 26
            Alignment = taCenter
            Caption = 'Pressure'#13#10'hPa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblCertifiedDist2: TLabel
            Left = 10
            Top = 157
            Width = 109
            Height = 26
            Alignment = taCenter
            Caption = 'Certified Horizontal'#13#10'Distance (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object lblTolerance2: TLabel
            Left = 166
            Top = 171
            Width = 79
            Height = 13
            Caption = 'Tolerance (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblLegalSlopeDistance2: TLabel
            Left = 10
            Top = 133
            Width = 133
            Height = 52
            Caption = 
              'Slope Distance (m) between tops of pillars (derived from certifi' +
              'ed horizontal distance)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object edtAtHeight2: TValidEdit
            Left = 98
            Top = 43
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0'
            OnChange = edtAtHeight2Change
            OnExit = edtAtHeight2Exit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 3
            DMSFormat = dfAbbreviated
            MinValue = -1.7E308
            MaxValue = 1.7E308
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object edtToHeight2: TValidEdit
            Left = 170
            Top = 43
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0'
            OnChange = edtToHeight2Change
            OnExit = edtToHeight2Exit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 3
            DMSFormat = dfAbbreviated
            MinValue = -1.7E308
            MaxValue = 1.7E308
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object edtDryTemp2: TValidEdit
            Left = 10
            Top = 103
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0'
            OnChange = edtDryTemp2Change
            OnExit = edtDryTemp2Exit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 1
            DMSFormat = dfAbbreviated
            MinValue = -20.000000000000000000
            MaxValue = 50.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object edtHumidity2: TValidEdit
            Left = 79
            Top = 103
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0'
            OnChange = edtHumidity2Change
            OnExit = edtHumidity2Exit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 1
            DMSFormat = dfAbbreviated
            MinValue = -20.000000000000000000
            MaxValue = 50.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object dbgridObs2: TDBGrid
            Left = 264
            Top = 36
            Width = 100
            Height = 165
            DataSource = dsDistObs
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnExit = dbgridObs2Exit
          end
          object edtPressure2: TValidEdit
            Left = 149
            Top = 103
            Width = 61
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '0'
            OnChange = edtPressure2Change
            OnExit = edtPressure2Exit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 1
            DMSFormat = dfAbbreviated
            MinValue = 800.000000000000000000
            MaxValue = 1200.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object pnlCertifiedDist2: TPanel
            Left = 11
            Top = 187
            Width = 136
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 9
          end
          object pnlAtPillar: TPanel
            Left = 7
            Top = 42
            Width = 36
            Height = 21
            BevelOuter = bvLowered
            Caption = '1'
            TabOrder = 7
          end
          object pnlToPillar: TPanel
            Left = 55
            Top = 42
            Width = 36
            Height = 21
            BevelOuter = bvLowered
            Caption = '2'
            TabOrder = 8
          end
          object edtTolerance2: TValidEdit
            Left = 167
            Top = 187
            Width = 68
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = '0'
            OnExit = edtTolerance2Exit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 3
            DMSFormat = dfAbbreviated
            MinValue = 0.050000000000000000
            MaxValue = 5.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object DBNavigator3: TDBNavigator
            Left = 265
            Top = 200
            Width = 100
            Height = 25
            DataSource = dsDistObs
            VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
            TabOrder = 10
          end
        end
        object tsObservations2: TTabSheet
          Caption = 'tsObservations2'
          ImageIndex = 2
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblSlopeDistances3: TLabel
            Left = 346
            Top = 6
            Width = 79
            Height = 26
            Caption = 'Observed Slope Distances (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object lblCertifiedDist3: TLabel
            Left = 6
            Top = 238
            Width = 109
            Height = 26
            Alignment = taCenter
            Caption = 'Certified Horizontal'#13#10'Distance (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object lblTolerance3: TLabel
            Left = 155
            Top = 252
            Width = 79
            Height = 13
            Caption = 'Tolerance (m)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblLegalSlopeDistance3: TLabel
            Left = 6
            Top = 214
            Width = 133
            Height = 52
            Caption = 
              'Slope Distance (m) between tops of pillars (derived from certifi' +
              'ed horizontal distance)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object gbAtPillar: TGroupBox
            Left = 6
            Top = 5
            Width = 150
            Height = 202
            Caption = 'At Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object lblAtPillar3: TLabel
              Left = 16
              Top = 25
              Width = 42
              Height = 13
              Caption = 'Pillar No:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object lblAtDryTemp: TLabel
              Left = 22
              Top = 94
              Width = 49
              Height = 26
              Alignment = taCenter
              Caption = 'Dry Temp '#13#10'Celsius'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
            end
            object lblAtHumidity: TLabel
              Left = 14
              Top = 132
              Width = 53
              Height = 26
              Alignment = taCenter
              Caption = 'Wet Temp '#13#10'Celsius'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
            end
            object lblAtPressure: TLabel
              Left = 30
              Top = 171
              Width = 41
              Height = 26
              Alignment = taCenter
              Caption = 'Pressure'#13#10'hPa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
            end
            object lblAtHeight3: TLabel
              Left = 4
              Top = 56
              Width = 67
              Height = 26
              Alignment = taCenter
              Caption = 'Height above '#13#10'At Pillar (m)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              WordWrap = True
            end
            object cbAtPillar2: TComboBox
              Left = 60
              Top = 21
              Width = 37
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = '1'
              OnChange = cbAtPillar2Change
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12')
            end
            object edtAtDryTemp: TValidEdit
              Left = 74
              Top = 96
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtAtDryTempExit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 1
              DMSFormat = dfAbbreviated
              MinValue = -20.000000000000000000
              MaxValue = 50.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object edtAtHumidity: TValidEdit
              Left = 74
              Top = 133
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtAtHumidityExit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 1
              DMSFormat = dfAbbreviated
              MinValue = -20.000000000000000000
              MaxValue = 50.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object edtAtPressure: TValidEdit
              Left = 74
              Top = 171
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtAtPressureExit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 1
              DMSFormat = dfAbbreviated
              MinValue = 800.000000000000000000
              MaxValue = 1200.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object edtAtHeight3: TValidEdit
              Left = 74
              Top = 59
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtAtHeight3Exit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 3
              DMSFormat = dfAbbreviated
              MinValue = -10.000000000000000000
              MaxValue = 10.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object pnlAtPillar2: TPanel
              Left = 60
              Top = 21
              Width = 36
              Height = 21
              BevelOuter = bvLowered
              Caption = '1'
              TabOrder = 5
            end
          end
          object dbgridDistObs3: TDBGrid
            Left = 345
            Top = 32
            Width = 100
            Height = 173
            DataSource = dsDistObs
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnExit = dbgridDistObsExit
            Columns = <
              item
                DropDownRows = 0
                Expanded = False
                FieldName = 'Distance'
                Title.Caption = 'Distance (m)'
                Visible = True
              end>
          end
          object dbnavDistObs3: TDBNavigator
            Left = 346
            Top = 205
            Width = 100
            Height = 25
            DataSource = dsDistObs
            VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
            TabOrder = 2
          end
          object pnlCertifiedDist3: TPanel
            Left = 6
            Top = 268
            Width = 136
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 3
          end
          object edtTolerance4: TValidEdit
            Left = 156
            Top = 268
            Width = 68
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '0'
            OnExit = edtTolerance4Exit
            FieldType = vftFloat
            Hemisphere = hsNone
            PositiveNorth = True
            PositiveEast = True
            DecimalPlaces = 3
            DMSFormat = dfAbbreviated
            MinValue = 0.050000000000000000
            MaxValue = 5.000000000000000000
            DateFormat = 'd/m/yyyy'
            TimeFormat = 'h:mm:ss'
          end
          object gbToPillar: TGroupBox
            Left = 174
            Top = 5
            Width = 150
            Height = 202
            Caption = 'To Pillar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object lblToPillar3: TLabel
              Left = 16
              Top = 25
              Width = 42
              Height = 13
              Caption = 'Pillar No:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblToDryTemp: TLabel
              Left = 22
              Top = 94
              Width = 49
              Height = 26
              Alignment = taCenter
              Caption = 'Dry Temp '#13#10'Celsius'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object lblToHumidity: TLabel
              Left = 16
              Top = 132
              Width = 53
              Height = 26
              Alignment = taCenter
              Caption = 'Wet Temp '#13#10'Celsius'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object lblToPressure: TLabel
              Left = 30
              Top = 171
              Width = 41
              Height = 26
              Alignment = taCenter
              Caption = 'Pressure'#13#10'hPa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object lblToHeight3: TLabel
              Left = 4
              Top = 56
              Width = 67
              Height = 26
              Alignment = taCenter
              Caption = 'Height above '#13#10'At Pillar (m)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object cbToPillar2: TComboBox
              Left = 60
              Top = 21
              Width = 37
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 0
              Text = '2'
              OnChange = cbToPillar2Change
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12')
            end
            object edtToDryTemp: TValidEdit
              Left = 74
              Top = 96
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtToDryTempExit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 1
              DMSFormat = dfAbbreviated
              MinValue = -20.000000000000000000
              MaxValue = 50.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object edtToHumidity: TValidEdit
              Left = 74
              Top = 133
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtToHumidityExit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 1
              DMSFormat = dfAbbreviated
              MinValue = -20.000000000000000000
              MaxValue = 50.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object edtToPressure: TValidEdit
              Left = 74
              Top = 171
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtToPressureExit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 1
              DMSFormat = dfAbbreviated
              MinValue = 800.000000000000000000
              MaxValue = 1200.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object edtToHeight3: TValidEdit
              Left = 74
              Top = 59
              Width = 61
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = '0'
              OnChange = CheckDistValueChange3
              OnExit = edtToHeight3Exit
              FieldType = vftFloat
              Hemisphere = hsNone
              PositiveNorth = True
              PositiveEast = True
              DecimalPlaces = 3
              DMSFormat = dfAbbreviated
              MinValue = -10.000000000000000000
              MaxValue = 10.000000000000000000
              DateFormat = 'd/m/yyyy'
              TimeFormat = 'h:mm:ss'
            end
            object pnlToPillar2: TPanel
              Left = 60
              Top = 21
              Width = 36
              Height = 21
              BevelOuter = bvLowered
              Caption = '2'
              TabOrder = 5
            end
          end
        end
      end
      object memInstructions: TMemo
        Left = 24
        Top = 410
        Width = 489
        Height = 21
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Enter observed distances between two selected pillars and click ' +
            'on the Save button.')
        ParentFont = False
        TabOrder = 4
      end
      object memMetInstructions: TMemo
        Left = 24
        Top = 434
        Width = 489
        Height = 21
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'The Mets values must be actual observations, which will be meane' +
            'd and corrected.')
        ParentFont = False
        TabOrder = 5
      end
    end
    object tsSelectEntryType: TTabSheet
      Caption = 'tsSelectEntryType'
      ImageIndex = 11
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblHeaderMethod: TLabel
        Left = 6
        Top = 0
        Width = 330
        Height = 29
        Caption = 'Observation capture method'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_tsSelectEntryType_Job: TLabel
        Left = 5
        Top = 38
        Width = 20
        Height = 13
        Caption = 'Job:'
      end
      object lbl_tsSelectEntryType_Baseline: TLabel
        Left = 240
        Top = 38
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object lblEntryMethodTolerance: TLabel
        Left = 84
        Top = 229
        Width = 79
        Height = 13
        Caption = 'Tolerance (m)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 80
        Top = 272
        Width = 307
        Height = 39
        Caption = 
          'Observed distances must be within the specified tolerance of the' +
          ' certified slope distances. The certified slope distances are th' +
          'e distances between the tops of the baseline pillars.'
        WordWrap = True
      end
      object pnlJob8: TPanel
        Left = 28
        Top = 34
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 0
      end
      object pnlBaseline8: TPanel
        Left = 286
        Top = 34
        Width = 197
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object pnl_tsSelectEntryType_Buttons: TPanel
        Left = 639
        Top = 0
        Width = 93
        Height = 474
        Align = alRight
        TabOrder = 2
        object lblPageSelectEntryType: TLabel
          Left = 48
          Top = 8
          Width = 35
          Height = 13
          Caption = 'Page #'
        end
        object btnBackEntryType: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 0
          OnClick = btnBackEntryTypeClick
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
        object btnNextEntryType: TBitBtn
          Left = 11
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 1
          OnClick = btnNextEntryTypeClick
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
        object btn_tsSelectEntryType_Close: TBitBtn
          Left = 11
          Top = 126
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnClose1Click
          Kind = bkClose
        end
        object btnHelp8: TBitBtn
          Left = 11
          Top = 91
          Width = 75
          Height = 25
          TabOrder = 3
          OnClick = btnHelp8Click
          Kind = bkHelp
        end
      end
      object gbCaptureMethod: TGroupBox
        Left = 76
        Top = 120
        Width = 373
        Height = 89
        Caption = 'Capture method'
        TabOrder = 3
        object rbtnEnter: TRadioButton
          Left = 28
          Top = 26
          Width = 201
          Height = 17
          Caption = 'Manually enter new observations'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbtnDownloadClick
        end
        object rbtnDownload: TRadioButton
          Left = 28
          Top = 54
          Width = 237
          Height = 17
          Caption = 'Download observations from a text file'
          TabOrder = 1
          OnClick = rbtnDownloadClick
        end
      end
      object edtTolerance3: TValidEdit
        Left = 81
        Top = 245
        Width = 68
        Height = 21
        TabOrder = 4
        Text = '0'
        OnExit = edtTolerance3Exit
        FieldType = vftFloat
        Hemisphere = hsNone
        PositiveNorth = True
        PositiveEast = True
        DecimalPlaces = -1
        DMSFormat = dfAbbreviated
        MinValue = -1.7E308
        MaxValue = 1.7E308
        DateFormat = 'd/m/yyyy'
        TimeFormat = 'h:mm:ss'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.bmp'
    Filter = 'Bit map files|*.bmp'
    Left = 587
    Top = 419
  end
  object OpenDialogTextFile: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text Files|*.txt|All Files|*.*'
    Title = 'Import Text File'
    Left = 556
    Top = 419
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Text Files|*.txt|All Files|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save observations to text file'
    Left = 529
    Top = 419
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 606
    Top = 387
  end
  object rxDistObs: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Distance'
        DataType = ftFloat
      end>
    BeforeInsert = rxDistObsBeforeInsert
    BeforePost = rxDistObsBeforePost
    AfterPost = rxDistObsAfterPost
    Left = 607
    Top = 323
    object rxDistObsDistance: TFloatField
      FieldName = 'Distance'
      DisplayFormat = '0.0000'
    end
  end
  object dsDistObs: TwwDataSource
    DataSet = rxDistObs
    Left = 606
    Top = 355
  end
  object rxMetSets: TRxMemoryData
    FieldDefs = <>
    Left = 683
    Top = 382
  end
  object rxSection: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Section_Name'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Section_Description'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'AccuracyStatus'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Horiz_Datum_Name'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AdjustmentType'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'StageOrder'
        DataType = ftInteger
      end
      item
        Name = 'Section_Number'
        DataType = ftInteger
      end
      item
        Name = 'Horiz_Datum_Number'
        DataType = ftInteger
      end
      item
        Name = 'Vert_Datum_Number'
        DataType = ftInteger
      end
      item
        Name = 'Vert_Datum_Name'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ConfidenceLevel'
        DataType = ftFloat
      end
      item
        Name = 'CoverageFactor'
        DataType = ftFloat
      end
      item
        Name = 'GesmarIOBFileName'
        DataType = ftString
        Size = 200
      end>
    Left = 591
    Top = 32
    object rxSectionSection_Name: TStringField
      DisplayLabel = 'Section~Name'
      DisplayWidth = 9
      FieldName = 'Section_Name'
      Size = 8
    end
    object rxSectionSection_Description: TStringField
      DisplayLabel = 'Section~Description'
      DisplayWidth = 39
      FieldName = 'Section_Description'
      Size = 70
    end
    object rxSectionAccuracyStatus: TStringField
      DisplayLabel = 'Progress'
      DisplayWidth = 6
      FieldName = 'AccuracyStatus'
      Size = 1
    end
    object rxSectionHoriz_Datum_Name: TStringField
      DisplayLabel = 'Horiz~Datum'
      DisplayWidth = 6
      FieldName = 'Horiz_Datum_Name'
      Size = 10
    end
    object rxSectionAdjustmentType: TStringField
      DisplayWidth = 35
      FieldName = 'AdjustmentType'
      Size = 35
    end
    object rxSectionStageOrder: TIntegerField
      DisplayLabel = 'Stage~Order'
      DisplayWidth = 8
      FieldName = 'StageOrder'
      Visible = False
    end
    object rxSectionSection_Number: TIntegerField
      DisplayWidth = 10
      FieldName = 'Section_Number'
      Visible = False
    end
    object rxSectionHoriz_Datum_Number: TIntegerField
      DisplayWidth = 10
      FieldName = 'Horiz_Datum_Number'
      Visible = False
    end
    object rxSectionVert_Datum_Number: TIntegerField
      DisplayWidth = 10
      FieldName = 'Vert_Datum_Number'
      Visible = False
    end
    object rxSectionVert_Datum_Name: TStringField
      DisplayLabel = 'Vert~Datum'
      DisplayWidth = 6
      FieldName = 'Vert_Datum_Name'
      Visible = False
      Size = 10
    end
    object rxSectionConfidenceLevel: TFloatField
      DisplayWidth = 10
      FieldName = 'ConfidenceLevel'
      Visible = False
    end
    object rxSectionCoverageFactor: TFloatField
      DisplayWidth = 10
      FieldName = 'CoverageFactor'
      Visible = False
    end
    object rxSectionGesmarIOBFileName: TStringField
      DisplayWidth = 200
      FieldName = 'GesmarIOBFileName'
      Visible = False
      Size = 200
    end
  end
  object dsSection: TwwDataSource
    DataSet = rxSection
    Left = 590
    Top = 80
  end
end
