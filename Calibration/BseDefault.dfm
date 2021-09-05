object frmDefaults: TfrmDefaults
  Left = 419
  Top = 251
  Caption = 'Set Defaults'
  ClientHeight = 374
  ClientWidth = 545
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
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 545
    Height = 337
    ActivePage = tsEDMUncertainty
    Align = alTop
    MultiLine = True
    TabOrder = 0
    OnChange = pcMainChange
    object tsProcedures: TTabSheet
      Caption = 'Procedures'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblProcedure: TLabel
        Left = 2
        Top = 4
        Width = 109
        Height = 24
        Caption = 'Procedures'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pcProcedures: TPageControl
        Left = 2
        Top = 40
        Width = 546
        Height = 249
        ActivePage = tsEDMCalibration
        TabOrder = 0
        OnChange = pcProceduresChange
        object tsBaselineProcedure: TTabSheet
          Caption = 'Baseline Calibration'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblBaselineProcedure: TLabel
            Left = 3
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Procedure'
          end
          object lblBaselineProcedureDescription: TLabel
            Left = 3
            Top = 56
            Width = 56
            Height = 13
            Caption = 'Description:'
          end
          object dbedtBaselineProcedure: TDBEdit
            Left = 3
            Top = 24
            Width = 375
            Height = 21
            Color = clBtnFace
            DataField = 'Method'
            DataSource = dmBase.dsMethod
            ReadOnly = True
            TabOrder = 0
          end
          object memBaselineProcedure: TMemo
            Left = 3
            Top = 70
            Width = 532
            Height = 105
            Lines.Strings = (
              
                'The calibration of the Baseline has been carried out according t' +
                'o Work Instructions '#39'2000/03/1777'#39', Revision 1 '
              
                'of the Quality Management System (ISO 9002 Certification) at the' +
                ' Department of Land Information, Western '
              'Australia.')
            TabOrder = 1
          end
        end
        object tsEDMCalibration: TTabSheet
          Caption = 'EDM Instrument Calibration'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblEDMProcedure: TLabel
            Left = 3
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Procedure'
          end
          object lbl_EDMProcedureDescription: TLabel
            Left = 3
            Top = 56
            Width = 56
            Height = 13
            Caption = 'Description:'
          end
          object dbedtEDMProcedure: TDBEdit
            Left = 3
            Top = 24
            Width = 375
            Height = 21
            Color = clBtnFace
            DataField = 'Method'
            DataSource = dmBase.dsMethod
            ReadOnly = True
            TabOrder = 0
          end
          object memEDMProcedure: TMemo
            Left = 3
            Top = 70
            Width = 532
            Height = 105
            Lines.Strings = (
              ''
              ''
              '')
            TabOrder = 1
          end
        end
      end
    end
    object tsEDMUncertainty: TTabSheet
      Caption = 'Uncertainty EDM Calibration'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblUncertaintyEDM: TLabel
        Left = 2
        Top = 4
        Width = 313
        Height = 24
        Caption = 'Uncertainty(95%) EDM Calibration'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgridUncertainty1: TwwDBGrid
        Left = 0
        Top = 48
        Width = 537
        Height = 218
        Selected.Strings = (
          'Description'#9'45'#9'Description'#9#9
          'Default'#9'10'#9'Default'#9#9
          'Unit'#9'8'#9'Unit'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 1
        ShowHorzScrollBar = True
        Align = alBottom
        DataSource = dmBase.dsUncertaintyEDM
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = dbgridUncertainty1CalcCellColors
      end
      object dbnavUncertainty1: TDBNavigator
        Left = 0
        Top = 266
        Width = 537
        Height = 25
        DataSource = dmBase.dsUncertaintyEDM
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 1
      end
    end
    object tsUncertaintyBaseline: TTabSheet
      Caption = 'Uncertainty Baseline Calibration'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblUncertaintyBaseline: TLabel
        Left = 2
        Top = 4
        Width = 348
        Height = 24
        Caption = 'Uncertainty(95%) Baseline Calibration'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgridUncertainty2: TwwDBGrid
        Left = 0
        Top = 48
        Width = 537
        Height = 218
        Selected.Strings = (
          'Description'#9'45'#9'Description'
          'Default'#9'10'#9'Default'
          'Unit'#9'8'#9'Unit')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 1
        ShowHorzScrollBar = True
        Align = alBottom
        DataSource = dmBase.dsUncertaintyBaseline
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = dbgridUncertainty2CalcCellColors
      end
      object dbnavUncertainty2: TDBNavigator
        Left = 0
        Top = 266
        Width = 537
        Height = 25
        DataSource = dmBase.dsUncertaintyBaseline
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 1
      end
    end
    object tsTraceability: TTabSheet
      Caption = 'Traceability'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblTraceability: TLabel
        Left = 2
        Top = 4
        Width = 108
        Height = 24
        Caption = 'Traceability'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pcTraceability: TPageControl
        Left = 3
        Top = 34
        Width = 499
        Height = 249
        ActivePage = tsEDMTraceability
        TabOrder = 0
        OnChange = pcTraceabilityChange
        object tsBaselineTraceability: TTabSheet
          Caption = 'Baseline Traceability'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lbl_tsBaselineTraceability_Procedure: TLabel
            Left = 6
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Procedure'
          end
          object lbl_tsBaselineTraceability_Description: TLabel
            Left = 6
            Top = 56
            Width = 56
            Height = 13
            Caption = 'Description:'
          end
          object DBEdit3: TDBEdit
            Left = 6
            Top = 24
            Width = 375
            Height = 21
            Color = clBtnFace
            DataField = 'Method'
            DataSource = dmBase.dsMethod
            ReadOnly = True
            TabOrder = 0
          end
          object dbmemTraceability: TDBMemo
            Left = 6
            Top = 72
            Width = 480
            Height = 105
            DataField = 'Description'
            DataSource = dmBase.dsMethod
            TabOrder = 1
          end
        end
        object tsEDMTraceability: TTabSheet
          Caption = 'EDM Instrument Traceability'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lbl_tsEDMTraceability_Procedure: TLabel
            Left = 6
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Procedure'
          end
          object lbl_tsEDMTraceability_Description: TLabel
            Left = 6
            Top = 56
            Width = 56
            Height = 13
            Caption = 'Description:'
          end
          object dbedt_tsEDMTraceability_Procedure: TDBEdit
            Left = 6
            Top = 24
            Width = 375
            Height = 21
            Color = clBtnFace
            DataField = 'Method'
            DataSource = dmBase.dsMethod
            ReadOnly = True
            TabOrder = 0
          end
          object dbmemTraceabilityEDM: TDBMemo
            Left = 6
            Top = 72
            Width = 480
            Height = 105
            DataField = 'Description'
            DataSource = dmBase.dsMethod
            TabOrder = 1
          end
        end
        object tsLegalTraceability: TTabSheet
          Caption = 'Legal Traceability'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lbl_tsLegalTraceability_Procedure: TLabel
            Left = 6
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Procedure'
          end
          object lbl_tsLegalTraceability_Description: TLabel
            Left = 6
            Top = 56
            Width = 56
            Height = 13
            Caption = 'Description:'
          end
          object dbedt_tsLegalTraceability_Procedure: TDBEdit
            Left = 6
            Top = 24
            Width = 375
            Height = 21
            Color = clBtnFace
            DataField = 'Method'
            DataSource = dmBase.dsMethod
            ReadOnly = True
            TabOrder = 0
          end
          object memLegalTraceability: TDBMemo
            Left = 6
            Top = 72
            Width = 480
            Height = 105
            DataField = 'Description'
            DataSource = dmBase.dsMethod
            TabOrder = 1
          end
        end
      end
    end
    object tsStandards: TTabSheet
      Caption = 'Standards'
      ImageIndex = 5
      OnShow = tsStandardsShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblStandards1: TLabel
        Left = 72
        Top = 4
        Width = 315
        Height = 24
        Caption = 'Minimum Uncertainty Standard for'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblStandardsAuthority: TLabel
        Left = 6
        Top = 140
        Width = 95
        Height = 13
        Caption = 'Standards Authority:'
      end
      object lblTraceabilityStatement: TLabel
        Left = 6
        Top = 172
        Width = 103
        Height = 13
        Caption = 'Traceability statement'
      end
      object lblStandards2: TLabel
        Left = 73
        Top = 28
        Width = 317
        Height = 24
        Caption = 'the calibration of EDM equipment '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblConfidenceLevel: TLabel
        Left = 6
        Top = 70
        Width = 177
        Height = 39
        Caption = 
          'Minimum uncertainty standard for the calibration of an EDM instr' +
          'ument at a confidencel level of 95%.'
        WordWrap = True
      end
      object dbedtStandardsAuthority: TwwDBEdit
        Left = 104
        Top = 137
        Width = 245
        Height = 21
        DataField = 'Authority'
        DataSource = dmBase.dsStandard
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = StandardPost
      end
      object dbmemStandard: TDBMemo
        Left = 6
        Top = 186
        Width = 451
        Height = 89
        DataField = 'Description'
        DataSource = dmBase.dsStandard
        TabOrder = 1
        OnExit = StandardPost
      end
      inline FrameLUMUnits3: TFrameLUMUnits
        Left = 187
        Top = 67
        Width = 352
        Height = 50
        TabOrder = 2
        ExplicitLeft = 187
        ExplicitTop = 67
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
    object tsMiscellaneous: TTabSheet
      Caption = 'Miscellaneous'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblMiscellaneous: TLabel
        Left = 2
        Top = 4
        Width = 135
        Height = 24
        Caption = 'Miscellaneous'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgridMisc: TwwDBGrid
        Left = 68
        Top = 44
        Width = 320
        Height = 120
        Selected.Strings = (
          'Description'#9'32'#9'Description'
          'Default'#9'10'#9'Default')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clBtnFace
        DataSource = dmBase.dsDefault
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = dbgridMiscCalcCellColors
      end
    end
    object tsAccreditation: TTabSheet
      Caption = 'Accreditation'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblAccreditation: TLabel
        Left = 2
        Top = 4
        Width = 123
        Height = 24
        Caption = 'Accreditation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pcAccreditation: TPageControl
        Left = 4
        Top = 34
        Width = 528
        Height = 242
        ActivePage = tsStatement
        TabOrder = 0
        OnChange = pcAccreditationChange
        object tsAuthority: TTabSheet
          Caption = 'Accreditation Authority'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lblAccreditationAuthority: TLabel
            Left = 8
            Top = 14
            Width = 109
            Height = 13
            Caption = 'Accreditation Authority:'
          end
          object dbedtAccreditationAuthority: TDBEdit
            Left = 7
            Top = 29
            Width = 221
            Height = 21
            DataField = 'Description'
            DataSource = dmBase.dsMethod
            TabOrder = 0
          end
        end
        object tsStatement: TTabSheet
          Caption = 'Accreditation Statement'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbmemBaselineAccreditationStatement: TDBMemo
            Left = 6
            Top = 33
            Width = 435
            Height = 128
            DataField = 'Description'
            DataSource = dmBase.dsMethod
            TabOrder = 0
          end
        end
        object tsLogo: TTabSheet
          Caption = 'Accreditation Logo'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ImageAccreditation: TImage
            Left = 8
            Top = 66
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
          object lblAccreditationLogo: TLabel
            Left = 9
            Top = 9
            Width = 115
            Height = 13
            Caption = 'Accreditation Logo Title:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object btnLogo: TButton
            Left = 10
            Top = 150
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
            OnClick = btnLogoClick
          end
          object btnDeleteLogo: TButton
            Left = 98
            Top = 150
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
            OnClick = btnDeleteLogoClick
          end
          object memAccreditationLogoTitle: TMemo
            Left = 8
            Top = 24
            Width = 288
            Height = 34
            Lines.Strings = (
              'Accredited Laboratory'
              'Number: XXX')
            TabOrder = 2
          end
        end
        object tsAccreditationLUM: TTabSheet
          Caption = 'LUM'
          ImageIndex = 3
          OnShow = tsAccreditationLUMShow
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label7: TLabel
            Left = 2
            Top = 4
            Width = 316
            Height = 24
            Caption = 'Least Uncertainty of Measurement'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 5
            Top = 51
            Width = 146
            Height = 39
            Caption = 'Least Uncertainty of Measurement at a confidencel level of 95%:'
            WordWrap = True
          end
          inline FrameLUMUnits4: TFrameLUMUnits
            Left = 161
            Top = 48
            Width = 352
            Height = 50
            TabOrder = 0
            ExplicitLeft = 161
            ExplicitTop = 48
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
    object tsAuthority1: TTabSheet
      Caption = 'Verifying Authority'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblTestingAuthority: TLabel
        Left = 2
        Top = 4
        Width = 211
        Height = 29
        Caption = 'Verifying Authority'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTestingAuthorityAbbrev: TLabel
        Left = 7
        Top = 47
        Width = 62
        Height = 13
        Caption = 'Abbreviation:'
      end
      object lblTestingAuthorityFullName: TLabel
        Left = 20
        Top = 75
        Width = 50
        Height = 13
        Caption = 'Full Name:'
      end
      object edtAuthorityAbbrev: TEdit
        Left = 74
        Top = 44
        Width = 121
        Height = 21
        MaxLength = 16
        TabOrder = 0
      end
      object edtAuthorityFullName: TEdit
        Left = 74
        Top = 70
        Width = 361
        Height = 21
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 21
        Top = 101
        Width = 329
        Height = 177
        Caption = 'Authority Logo'
        TabOrder = 2
        object ImageAuthority: TImage
          Left = 40
          Top = 31
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
        object btnLogoAuthority: TButton
          Left = 41
          Top = 127
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
          OnClick = btnLogoAuthorityClick
        end
        object btnDeleteAuthorityLogo: TButton
          Left = 129
          Top = 127
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
          OnClick = btnDeleteAuthorityLogoClick
        end
      end
    end
    object tsAbout: TTabSheet
      Caption = 'About'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 2
        Top = -4
        Width = 68
        Height = 29
        Caption = 'About'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCopyRight: TLabel
        Left = 252
        Top = 38
        Width = 47
        Height = 13
        Caption = 'Copyright:'
      end
      object Label2: TLabel
        Left = 12
        Top = 38
        Width = 38
        Height = 13
        Caption = 'Enquiry:'
      end
      object Label3: TLabel
        Left = 8
        Top = 272
        Width = 352
        Height = 13
        Caption = 
          'Note: The enquiry and copyright statements are displayed in the ' +
          'About Box'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object memEnquiry: TMemo
        Left = 12
        Top = 54
        Width = 217
        Height = 121
        Lines.Strings = (
          'Department of Land Information (WA)'
          'Geographic Services Branch'
          'Phone: (08) 92737114'
          'Fax:      (08) 92737675')
        ScrollBars = ssVertical
        TabOrder = 0
        OnChange = memEnquiryChange
      end
      object memCopyright: TMemo
        Left = 244
        Top = 54
        Width = 285
        Height = 121
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'This program was developed by the'
          'Department of Land Information (DLI).'
          'Copyright of Western Australian Government materials '
          'resides with the State of Western Australia. No part of'
          'this program may be reproduced or re-used for any'
          'purposes whatsoever without prior written permission'
          'of the State of Western Australia.')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        OnChange = memEnquiryChange
      end
    end
    object tsReport: TTabSheet
      Caption = 'Report'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 8
        Top = 46
        Width = 169
        Height = 13
        Caption = 'Copyright statement on the Reports:'
      end
      object Label5: TLabel
        Left = 2
        Top = 4
        Width = 63
        Height = 24
        Caption = 'Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 9
        Top = 102
        Width = 233
        Height = 13
        Caption = 'Authority, which developed the Baseline program:'
      end
      object edtCopyright: TEdit
        Left = 8
        Top = 64
        Width = 489
        Height = 21
        TabOrder = 0
        OnChange = edtCopyrightChange
      end
      object edtProgramOwner: TEdit
        Left = 8
        Top = 120
        Width = 489
        Height = 21
        TabOrder = 1
        OnChange = edtProgramOwnerChange
      end
    end
    object tsLUM: TTabSheet
      Caption = 'LUM'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label8: TLabel
        Left = 2
        Top = 4
        Width = 378
        Height = 24
        Caption = 'Least Uncertainty of Measurement (LUM)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pcLUM: TPageControl
        Left = 0
        Top = 42
        Width = 537
        Height = 249
        ActivePage = tsLUMBaseline
        Align = alBottom
        TabOrder = 0
        OnChange = pcLUMChange
        object tsLUMBaseline: TTabSheet
          Caption = 'Baseline Calibration'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel4: TPanel
            Left = 13
            Top = 7
            Width = 336
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Least Uncertainty of Measurement at a confidencel level of 95%:'
            TabOrder = 0
          end
          object chkBaselineLUM1: TCheckBox
            Left = 24
            Top = 98
            Width = 393
            Height = 41
            Caption = 
              'In the calibration reports the LUM instead of the actual compute' +
              'd uncertainty of the Baseline will be displayed if the LUM is la' +
              'rger.'
            Checked = True
            State = cbChecked
            TabOrder = 1
            WordWrap = True
            OnClick = chkBaselineLUM1Click
          end
          inline FrameLUMUnits2: TFrameLUMUnits
            Left = 17
            Top = 36
            Width = 352
            Height = 58
            TabOrder = 2
            ExplicitLeft = 17
            ExplicitTop = 36
            ExplicitHeight = 58
            inherited pnlNewLUMUnits: TPanel
              inherited FrameNewLumUnits1: TFrameNewLumUnits
                inherited lblLumUnits1: TLabel
                  Width = 6
                  ExplicitWidth = 6
                end
                inherited lblOpenBracket: TLabel
                  Width = 9
                  Height = 13
                  Font.Name = 'MS Sans Serif'
                  ExplicitWidth = 9
                  ExplicitHeight = 13
                end
              end
            end
          end
        end
        object tsLUMEDM: TTabSheet
          Caption = 'EDM Instrument Calibration'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel7: TPanel
            Left = 13
            Top = 7
            Width = 336
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Least Uncertainty of Measurement at a confidencel level of 95%:'
            TabOrder = 0
          end
          object chkEDMLUM1: TCheckBox
            Left = 24
            Top = 98
            Width = 393
            Height = 41
            Caption = 
              'In the calibration reports the LUM instead of the actual compute' +
              'd uncertainty of the Instrument Correction will be displayed if ' +
              'the LUM is larger.'
            Checked = True
            State = cbChecked
            TabOrder = 1
            WordWrap = True
            OnClick = chkEDMLUM1Click
          end
          inline FrameLUMUnits1: TFrameLUMUnits
            Left = 17
            Top = 36
            Width = 352
            Height = 58
            TabOrder = 2
            ExplicitLeft = 17
            ExplicitTop = 36
            ExplicitHeight = 58
            inherited pnlNewLUMUnits: TPanel
              inherited FrameNewLumUnits1: TFrameNewLumUnits
                inherited lblLumUnits1: TLabel
                  Width = 6
                  ExplicitWidth = 6
                end
                inherited lblOpenBracket: TLabel
                  Width = 9
                  Height = 13
                  Font.Name = 'MS Sans Serif'
                  ExplicitWidth = 9
                  ExplicitHeight = 13
                end
              end
            end
          end
        end
      end
    end
  end
  object btnClose: TBitBtn
    Left = 4
    Top = 341
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object btnHelp1: TBitBtn
    Left = 86
    Top = 341
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = btnHelp1Click
    Kind = bkHelp
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.bmp'
    Filter = 'Bit map files|*.bmp'
    Title = 'Accreditation Logo'
    Left = 219
    Top = 339
  end
end
