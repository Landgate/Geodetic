object frmInstrument: TfrmInstrument
  Left = 342
  Top = 275
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit Instruments'
  ClientHeight = 417
  ClientWidth = 723
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
  object pcInstrument: TPageControl
    Left = 0
    Top = 0
    Width = 723
    Height = 417
    ActivePage = tsModel
    Align = alClient
    TabOrder = 0
    object tsMake: TTabSheet
      Caption = 'Makes'
      ImageIndex = 3
      TabVisible = False
      object Label2: TLabel
        Left = 2
        Top = 4
        Width = 205
        Height = 29
        Caption = 'Instrument Makes'
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
        Width = 30
        Height = 13
        Caption = 'Make:'
      end
      object dbgridMake: TwwDBGrid
        Left = 102
        Top = 86
        Width = 299
        Height = 295
        Selected.Strings = (
          'MakeName'#9'22'#9'Name'
          'MakeCountry'#9'20'#9'Country')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnRowChanged = dbgridMakeRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsInstrumentMake
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnColExit = dbgridMakeColExit
        OnExit = dbgridMakeExit
      end
      object dbnavMake: TwwDBNavigator
        Left = 103
        Top = 380
        Width = 300
        Height = 25
        DataSource = dsInstrumentMake
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        ParentShowHint = False
        object dbnavMakeFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeFirst'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavMakePriorPage: TwwNavButton
          Left = 25
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakePriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavMakePrior: TwwNavButton
          Left = 50
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakePrior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavMakeNext: TwwNavButton
          Left = 75
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeNext'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavMakeNextPage: TwwNavButton
          Left = 100
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeNextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavMakeLast: TwwNavButton
          Left = 125
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeLast'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object dbnavMakeInsert: TwwNavButton
          Left = 150
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeInsert'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsInsert
        end
        object dbnavMakeDelete: TwwNavButton
          Left = 175
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeDelete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsDelete
        end
        object dbnavMakeEdit: TwwNavButton
          Left = 200
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeEdit'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsEdit
        end
        object dbnavMakePost: TwwNavButton
          Left = 225
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakePost'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsPost
        end
        object dbnavMakeCancel: TwwNavButton
          Left = 250
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeCancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 10
          Style = nbsCancel
        end
        object dbnavMakeRefresh: TwwNavButton
          Left = 275
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavMakeRefresh'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 11
          Style = nbsRefresh
        end
      end
      object btnClose1: TBitBtn
        Left = 553
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 2
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object btnNext1: TBitBtn
        Left = 637
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 3
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
        Left = 553
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 4
        OnClick = btnHelp1Click
        Kind = bkHelp
      end
      object searchInstrumentMake: TwwIncrementalSearch
        Left = 38
        Top = 57
        Width = 121
        Height = 21
        DataSource = dsInstrumentMake
        ShowMatchText = True
        TabOrder = 5
        OnEnter = searchInstrumentMakeEnter
        OnExit = searchInstrumentMakeExit
      end
    end
    object tsModel: TTabSheet
      Caption = 'Models'
      ImageIndex = 5
      TabVisible = False
      object Label3: TLabel
        Left = 2
        Top = 4
        Width = 215
        Height = 29
        Caption = 'Instrument Models'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 4
        Top = 61
        Width = 30
        Height = 13
        Caption = 'Make:'
      end
      object Label7: TLabel
        Left = 168
        Top = 61
        Width = 112
        Height = 13
        Caption = 'Select Instrument Type:'
      end
      object dbgridModel: TwwDBGrid
        Left = 0
        Top = 105
        Width = 715
        Height = 277
        ControlType.Strings = (
          'isPulseMeter;CheckBox;True;False')
        Selected.Strings = (
          'ModelName'#9'19'#9'Name'#9#9
          'ModelManufStdDevConst'#9'10'#9'Manufacturer~Std Dev~Constant'#9#9
          'ModelManufStdDevPPM'#9'10'#9'Manufacturer~Std Dev~PPM'#9#9
          'ModelUnitLength'#9'5'#9'Unit~Length'#9#9
          'ModelModFreq'#9'10'#9'Frequency'#9#9
          'ModelCarrierWaveLength'#9'8'#9'Carrier~Wave~Length'#9#9
          'ModelComments'#9'25'#9'Comments'#9#9
          'ManuRefractiveIndex'#9'10'#9'Manufacturer~Reference~Refractive~Index'#9#9
          'isPulseMeter'#9'7'#9'Pulse~Distance~Meter'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alBottom
        DataSource = dsInstrumentModel
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 4
        TitleButtons = False
        OnColExit = dbgridModelColExit
        OnExit = dbgridModelExit
      end
      object dbnavModel: TwwDBNavigator
        Left = 0
        Top = 382
        Width = 715
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dsInstrumentModel
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alBottom
        ParentShowHint = False
        object dbnavModelFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelFirst'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavModelPriorPage: TwwNavButton
          Left = 60
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelPriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavModelPrior: TwwNavButton
          Left = 120
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelPrior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavModelNext: TwwNavButton
          Left = 180
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelNext'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavModelNextPage: TwwNavButton
          Left = 240
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelNextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavModelLast: TwwNavButton
          Left = 300
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelLast'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object dbnavModelInsert: TwwNavButton
          Left = 360
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelInsert'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsInsert
        end
        object dbnavModelDelete: TwwNavButton
          Left = 420
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelDelete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsDelete
        end
        object dbnavModelEdit: TwwNavButton
          Left = 479
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelEdit'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsEdit
        end
        object dbnavModelPost: TwwNavButton
          Left = 538
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelPost'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsPost
        end
        object dbnavModelCancel: TwwNavButton
          Left = 597
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelCancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 10
          Style = nbsCancel
        end
        object dbnavModelRefresh: TwwNavButton
          Left = 656
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavModelRefresh'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 11
          Style = nbsRefresh
        end
      end
      object btnClose2: TBitBtn
        Left = 553
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 2
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object btnNext2: TBitBtn
        Left = 637
        Top = 2
        Width = 75
        Height = 25
        Caption = '&Next'
        TabOrder = 3
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
        Left = 637
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 4
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
      object wwDBEdit1: TwwDBEdit
        Left = 37
        Top = 57
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'MakeName'
        DataSource = dsInstrumentMake
        ReadOnly = True
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cbType: TComboBox
        Left = 284
        Top = 57
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 6
        Text = 'EDM'
        OnChange = cbTypeChange
        Items.Strings = (
          'EDM'
          'Prism')
      end
      object btnHelp2: TBitBtn
        Left = 553
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 7
        OnClick = btnHelp2Click
        Kind = bkHelp
      end
    end
    object tsInstrument: TTabSheet
      Caption = 'Instruments'
      ImageIndex = 5
      TabVisible = False
      object Label6: TLabel
        Left = 2
        Top = 4
        Width = 254
        Height = 29
        Caption = 'Individual Instruments'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 3
        Top = 66
        Width = 30
        Height = 13
        Caption = 'Make:'
      end
      object Label9: TLabel
        Left = 167
        Top = 66
        Width = 32
        Height = 13
        Caption = 'Model:'
      end
      object Label10: TLabel
        Left = 336
        Top = 66
        Width = 27
        Height = 13
        Caption = 'Type:'
      end
      object dbgridInstrument: TwwDBGrid
        Left = 0
        Top = 107
        Width = 715
        Height = 275
        Selected.Strings = (
          'InstSerialNo'#9'20'#9'Serial Number'
          'InstStdDevConst'#9'10'#9'Std Dev~Constant'
          'InstStdDevPPM'#9'10'#9'Std Dev~PPM'
          'InstConstant'#9'10'#9'Constant~(m)'
          'InstComments'#9'36'#9'Comments')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alBottom
        DataSource = dsInstrument
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        OnColExit = dbgridInstrumentColExit
        OnExit = dbgridInstrumentExit
      end
      object dbnavInstrument: TwwDBNavigator
        Left = 0
        Top = 382
        Width = 715
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dsInstrument
        Flat = False
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alBottom
        ParentShowHint = False
        object dbnavInstrumentFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 60
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
        object dbnavInstrumentPriorPage: TwwNavButton
          Left = 60
          Top = 0
          Width = 60
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
        object dbnavInstrumentPrior: TwwNavButton
          Left = 120
          Top = 0
          Width = 60
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
        object dbnavInstrumentNext: TwwNavButton
          Left = 180
          Top = 0
          Width = 60
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
        object dbnavInstrumentNextPage: TwwNavButton
          Left = 240
          Top = 0
          Width = 60
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
        object dbnavInstrumentLast: TwwNavButton
          Left = 300
          Top = 0
          Width = 60
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
        object dbnavInstrumentInsert: TwwNavButton
          Left = 360
          Top = 0
          Width = 60
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Insert'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsInsert
        end
        object dbnavInstrumentDelete: TwwNavButton
          Left = 420
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsDelete
        end
        object dbnavInstrumentEdit: TwwNavButton
          Left = 479
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Edit'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsEdit
        end
        object dbnavInstrumentPost: TwwNavButton
          Left = 538
          Top = 0
          Width = 59
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
          Index = 9
          Style = nbsPost
        end
        object dbnavInstrumentCancel: TwwNavButton
          Left = 597
          Top = 0
          Width = 59
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
          Index = 10
          Style = nbsCancel
        end
        object dbnavInstrumentRefresh: TwwNavButton
          Left = 656
          Top = 0
          Width = 59
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'Refresh'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 11
          Style = nbsRefresh
        end
      end
      object btnBack3: TBitBtn
        Left = 638
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Back'
        TabOrder = 2
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
      object wwDBEdit2: TwwDBEdit
        Left = 36
        Top = 62
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'MakeName'
        DataSource = dsInstrumentMake
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit3: TwwDBEdit
        Left = 202
        Top = 62
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = 'ModelName'
        DataSource = dsInstrumentModel
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtType: TEdit
        Left = 369
        Top = 62
        Width = 113
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 5
        Text = 'EDM'
      end
      object btnClose3: TBitBtn
        Left = 554
        Top = 28
        Width = 75
        Height = 25
        TabOrder = 6
        OnClick = btnClose1Click
        Kind = bkClose
      end
      object btnHelp3: TBitBtn
        Left = 554
        Top = 2
        Width = 75
        Height = 25
        TabOrder = 7
        OnClick = btnHelp3Click
        Kind = bkHelp
      end
    end
  end
  object dsInstrument: TwwDataSource
    DataSet = rxInstrument
    Left = 265
    Top = 252
  end
  object dsInstrumentModel: TwwDataSource
    DataSet = rxInstrumentModel
    Left = 273
    Top = 302
  end
  object dsInstrumentMake: TwwDataSource
    DataSet = rxInstrumentMake
    Left = 273
    Top = 350
  end
  object rxInstrument: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'InstSerialNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InstStdDevConst'
        DataType = ftFloat
      end
      item
        Name = 'InstStdDevPPM'
        DataType = ftFloat
      end
      item
        Name = 'InstConstant'
        DataType = ftFloat
      end
      item
        Name = 'InstComments'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'InstID'
        DataType = ftInteger
      end
      item
        Name = 'InstType'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ModelID'
        DataType = ftInteger
      end
      item
        Name = 'AntennaModelID'
        DataType = ftInteger
      end
      item
        Name = 'InstAntennaSerialNo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'InstScaleFact'
        DataType = ftFloat
      end>
    BeforeEdit = rxInstrumentBeforeEdit
    BeforePost = rxInstrumentBeforePost
    BeforeDelete = rxInstrumentBeforeDelete
    OnNewRecord = rxInstrumentNewRecord
    Left = 180
    Top = 254
    object rxInstrumentInstSerialNo: TStringField
      DisplayLabel = 'Serial Number'
      DisplayWidth = 20
      FieldName = 'InstSerialNo'
    end
    object rxInstrumentInstStdDevConst: TFloatField
      DisplayLabel = 'Std Dev~Constant'
      DisplayWidth = 10
      FieldName = 'InstStdDevConst'
    end
    object rxInstrumentInstStdDevPPM: TFloatField
      DisplayLabel = 'Std Dev~PPM'
      DisplayWidth = 10
      FieldName = 'InstStdDevPPM'
    end
    object rxInstrumentInstConstant: TFloatField
      DisplayLabel = 'Constant~(m)'
      DisplayWidth = 10
      FieldName = 'InstConstant'
    end
    object rxInstrumentInstComments: TStringField
      DisplayLabel = 'Comments'
      DisplayWidth = 36
      FieldName = 'InstComments'
      Size = 30
    end
    object rxInstrumentInstID: TIntegerField
      DisplayWidth = 10
      FieldName = 'InstID'
      Visible = False
    end
    object rxInstrumentInstType: TStringField
      FieldName = 'InstType'
      Visible = False
      Size = 1
    end
    object rxInstrumentModelID: TIntegerField
      FieldName = 'ModelID'
      Visible = False
    end
    object rxInstrumentAntennaModelID: TIntegerField
      FieldName = 'AntennaModelID'
      Visible = False
    end
    object rxInstrumentInstAntennaSerialNo: TStringField
      FieldName = 'InstAntennaSerialNo'
      Visible = False
      Size = 30
    end
    object rxInstrumentInstScaleFact: TFloatField
      DisplayLabel = 'Scale~Factor'
      FieldName = 'InstScaleFact'
      Visible = False
    end
  end
  object rxInstrumentModel: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'ModelName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ModelManufStdDevConst'
        DataType = ftFloat
      end
      item
        Name = 'ModelManufStdDevPPM'
        DataType = ftFloat
      end
      item
        Name = 'ModelUnitLength'
        DataType = ftFloat
      end
      item
        Name = 'ModelModFreq'
        DataType = ftFloat
      end
      item
        Name = 'ModelCarrierWaveLength'
        DataType = ftFloat
      end
      item
        Name = 'ModelComments'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ManuRefractiveIndex'
        DataType = ftFloat
      end
      item
        Name = 'isPulseMeter'
        DataType = ftBoolean
      end
      item
        Name = 'ModelID'
        DataType = ftInteger
      end
      item
        Name = 'MakeID'
        DataType = ftInteger
      end
      item
        Name = 'ModelInstType'
        DataType = ftString
        Size = 1
      end>
    BeforeEdit = rxInstrumentModelBeforeEdit
    BeforePost = rxInstrumentModelBeforePost
    AfterPost = rxInstrumentModelAfterPost
    BeforeDelete = rxInstrumentModelBeforeDelete
    AfterDelete = rxInstrumentModelAfterDelete
    OnNewRecord = rxInstrumentModelNewRecord
    Left = 180
    Top = 302
    object rxInstrumentModelModelName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 19
      FieldName = 'ModelName'
    end
    object rxInstrumentModelModelManufStdDevConst: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~Constant'
      DisplayWidth = 10
      FieldName = 'ModelManufStdDevConst'
    end
    object rxInstrumentModelModelManufStdDevPPM: TFloatField
      DisplayLabel = 'Manufacturer~Std Dev~PPM'
      DisplayWidth = 10
      FieldName = 'ModelManufStdDevPPM'
    end
    object rxInstrumentModelModelUnitLength: TFloatField
      DisplayLabel = 'Unit~Length'
      DisplayWidth = 5
      FieldName = 'ModelUnitLength'
    end
    object rxInstrumentModelModelModFreq: TFloatField
      DisplayLabel = 'Frequency'
      DisplayWidth = 10
      FieldName = 'ModelModFreq'
    end
    object rxInstrumentModelModelCarrierWaveLength: TFloatField
      DisplayLabel = 'Carrier~Wave~Length'
      DisplayWidth = 8
      FieldName = 'ModelCarrierWaveLength'
    end
    object rxInstrumentModelModelComments: TStringField
      DisplayLabel = 'Comments'
      DisplayWidth = 25
      FieldName = 'ModelComments'
      Size = 30
    end
    object rxInstrumentModelManuRefractiveIndex: TFloatField
      DisplayLabel = 'Manufacturer~Reference~Refractive~Index'
      DisplayWidth = 10
      FieldName = 'ManuRefractiveIndex'
    end
    object rxInstrumentModelisPulseMeter: TBooleanField
      DisplayLabel = 'Pulse~Distance~Meter'
      DisplayWidth = 7
      FieldName = 'isPulseMeter'
    end
    object rxInstrumentModelModelID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ModelID'
      Visible = False
    end
    object rxInstrumentModelMakeID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MakeID'
      Visible = False
    end
    object rxInstrumentModelModelInstType: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 1
      FieldName = 'ModelInstType'
      Visible = False
      Size = 1
    end
  end
  object rxInstrumentMake: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'MakeName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MakeCountry'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MakeID'
        DataType = ftInteger
      end>
    BeforeEdit = rxInstrumentMakeBeforeEdit
    BeforePost = rxInstrumentMakeBeforePost
    AfterPost = rxInstrumentMakeAfterPost
    BeforeDelete = rxInstrumentMakeBeforeDelete
    AfterDelete = rxInstrumentMakeAfterDelete
    OnNewRecord = rxInstrumentMakeNewRecord
    Left = 180
    Top = 350
    object rxInstrumentMakeMakeName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 22
      FieldName = 'MakeName'
    end
    object rxInstrumentMakeMakeCountry: TStringField
      DisplayLabel = 'Country'
      DisplayWidth = 20
      FieldName = 'MakeCountry'
    end
    object rxInstrumentMakeMakeID: TIntegerField
      DisplayWidth = 10
      FieldName = 'MakeID'
      Visible = False
    end
  end
end
