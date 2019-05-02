object frmMain: TfrmMain
  Left = 499
  Top = 200
  Caption = 'Baseline Calibration'
  ClientHeight = 225
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Menu = MainMenu
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlStatusMessage: TPanel
    Left = 0
    Top = 202
    Width = 367
    Height = 23
    Align = alBottom
    Alignment = taLeftJustify
    BorderWidth = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object SpeedBar: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 33
    Align = alTop
    TabOrder = 1
    object sbtnHelp: TSpeedButton
      Left = 210
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Help Contents'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333FF3333333333333333366333333333333333333773F3333
        33333333333644633333333333333337F37F333333333333333E664333333333
        333333373F733333333333333333E66333333333333333337733333333333333
        3333333333333333333333333FF3333333333333333344633333333333333333
        773F333333333333333666433333333333333337F37F333333333333333E6643
        3333333333333337F373F33333333333333E666433333333333333373F373F33
        333333333333E666433333333333333373F373F33333333333333E6664333333
        333333FF373F373F33333333344333E66643333333333773F373F37F33333333
        6664333E6643333333337F373FF7337F33333333E666444666433333333373F3
        7773337F333333333E666666666333333333373FF33333733333333333EE6666
        66333333333333773FFFF733333333333333EEEEE33333333333333377777333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      OnClick = HelpContents
    end
    object sbtnEditJobs: TSpeedButton
      Left = 4
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Calibrate Instruments or Baselines'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888800000008888888887777777888888880FFCCCFF0
        88888887778887778888880FFC000CFF0888887778888877788880FFFC000CFF
        F0888777788888777788880FFC000CFF088888777888887778888880FFCCCFF0
        8888888777888777888888880000000888888888777777788888008888888888
        8008778888888888877880008888888000888777888888877788888000000000
        8888888777777777888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888}
      NumGlyphs = 2
      OnClick = sbtnEditJobsClick
    end
    object sbtnEditInstruments: TSpeedButton
      Left = 39
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Edit Instruments'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888CC88888888CC88887F88888888778888CC88888888
        CC88887F888888887F88888CC888888CC8888887F8888887F8888888CC8888CC
        888888887F88887F888888888CC88CC88888888887F887F88888888888CCCC88
        88888888887FF7888888888CCCCCCCCCC888888FFFFFFFFFF888888CCCCCCCCC
        C888888777777777F888888CCCCCCCCCC888888777777777F888888CCCCCCCCC
        C888888777777777F888888CCCCCCCCCC888888777777777F888888888888888
        8888888888888888888888888888888888888888888888888888}
      NumGlyphs = 2
      OnClick = sbtnEditInstrumentsClick
    end
    object sbtnEditBaseline: TSpeedButton
      Left = 64
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Edit/Create Baselines'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        88888888888888888888000000888800000077FFFF888877FFFF800008888880
        0008877FF88888877FF88800888888880088887F888888887F88880088888888
        0088887F888888887F88889999999999998888FFFFFFFFFFFF88889999999999
        9988887777777777778888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888}
      NumGlyphs = 2
      OnClick = sbtnEditBaselineClick
    end
    object sbtnEllipsoid: TSpeedButton
      Left = 89
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Edit Ellipsoidal Parameters'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
        5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
        335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
        C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
        CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
        C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
        CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
        5555555775FFFF77555555555C4CCC5555555555577777555555}
      NumGlyphs = 2
      OnClick = sbtnEllipsoidClick
    end
    object sbtnDefault: TSpeedButton
      Left = 114
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Set Defaults'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
        1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
        1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
        193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
        11155557F755F777777555000755033305555577755F75F77F55555555503335
        0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
        05555757F75F75557F5505000333555505557F777FF755557F55000000355557
        07557777777F55557F5555000005555707555577777FF5557F55553000075557
        0755557F7777FFF5755555335000005555555577577777555555}
      NumGlyphs = 2
      OnClick = sbtnDefaultClick
    end
    object sbtnDistribute: TSpeedButton
      Left = 139
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Distribute to external users'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000333300
        0000377777F3337777770FFFF099990FFFF07FFFF7FFFF7FFFF7000000999900
        00007777777777777777307703399330770337FF7F37F337FF7F300003399330
        000337777337F337777333333339933333333FFFFFF7F33FFFFF000000399300
        0000777777F7F37777770FFFF099990FFFF07FFFF7F7FF7FFFF7000000999900
        00007777777777777777307703399330770337FF7F37F337FF7F300003399330
        0003377773F7FFF77773333330000003333333333777777F3333333330FFFF03
        3333333337FFFF7F333333333000000333333333377777733333333333077033
        33333333337FF7F3333333333300003333333333337777333333}
      NumGlyphs = 2
      OnClick = sbtnDistributeClick
    end
    object btnLUMUnits: TSpeedButton
      Left = 164
      Top = 4
      Width = 25
      Height = 25
      Hint = 'Select LUM / Baseline / EDM Accuracy Units'
      BiDiMode = bdLeftToRight
      Glyph.Data = {
        2E020000424D2E02000000000000360000002800000012000000090000000100
        180000000000F801000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000000606
        06FF00FFFF00FF000000000000000000FF00FFFF00FF0A0A0AFF00FFFF00FFFF
        00FFFF00FF1313130000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF
        00FFFF00FFFF00FF000000FF00FF050505FF00FFFF00FFFF00FFFF00FF070707
        0000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF
        000000FF00FF0C0C0CFF00FFFF00FFFF00FFFF00FF0C0C0C0000000000FF00FF
        FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000FF00FF1010
        10FF00FF191919191919FF00FF0E0E0E0000000000FF00FFFF00FFFF00FFFF00
        FFFF00FF000000FF00FFFF00FFFF00FF000000FF00FF111111FF00FF00000000
        0000FF00FF1212120000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF
        00FFFF00FFFF00FF000000FF00FF030303121212FF00FFFF00FF0000001C1C1C
        0000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF
        000000FF00FF191919191919FF00FFFF00FF1919190000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
      Layout = blGlyphRight
      ParentBiDiMode = False
      OnClick = LUMAccuracyunits1Click
    end
  end
  object MainMenu: TMainMenu
    Left = 36
    Top = 248
    object mnuFile: TMenuItem
      Caption = '&Session'
      HelpContext = 1002
      object mnuFilePrintSetup: TMenuItem
        Caption = '&Print Setup...'
        Hint = 'Change printer setup'
        OnClick = FilePrintSetup
      end
      object mnuFileExit: TMenuItem
        Caption = '&Exit'
        Hint = 'Exit this application'
        OnClick = FileExit
      end
    end
    object mnuEdit: TMenuItem
      Caption = '&Edit'
      HelpContext = 1003
      object mnuEditJobs: TMenuItem
        Caption = '&Calibrate...'
        HelpContext = 1600
        Hint = 'Create and edit calibration jobs'
        OnClick = mnuEditJobsClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnuEditInstruments: TMenuItem
        Caption = '&Instruments...'
        HelpContext = 1300
        Hint = 'Create and edit instruments, models and makes'
        OnClick = mnuEditInstrumentsClick
      end
      object mnuEditBaselines: TMenuItem
        Caption = '&Baselines...'
        HelpContext = 1500
        Hint = 'Create and modify baseline information'
        OnClick = mnuEditBaselinesClick
      end
      object mnuEditEllipsoids: TMenuItem
        Caption = '&Ellipsoids...'
        HelpContext = 1400
        Hint = 'Create and modify ellipsoid definitions'
        OnClick = mnuEditEllipsoidsClick
      end
      object LUMAccuracyunits1: TMenuItem
        Caption = '&LUM / Baseline / EDM Accuracy units'
        OnClick = LUMAccuracyunits1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuDistribute: TMenuItem
        Caption = '&Distribute'
        OnClick = sbtnDistributeClick
      end
    end
    object mnuHelp: TMenuItem
      Caption = '&Help'
      HelpContext = 1009
      object mnuHelpContents: TMenuItem
        Caption = '&Contents'
        HelpContext = 1000
        Hint = 'Display the help contents screen'
        OnClick = HelpContents
      end
      object mnuHelpSearch: TMenuItem
        Caption = '&Search for Help On...'
        Hint = 'Search help file for a topic'
        OnClick = HelpSearch
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object DisclaimerCopyRight1: TMenuItem
        Caption = 'Disclaimer/Copyright'
        OnClick = DisclaimerCopyRight1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuHelpAbout: TMenuItem
        Caption = '&About Baseline...'
        Hint = 'Show program information'
        OnClick = mnuHelpAboutClick
      end
    end
  end
  object PrintDialog: TPrintDialog
    HelpContext = 1002
    Options = [poSelection, poWarning, poHelp]
    Left = 70
    Top = 247
  end
  object PrintSetupDialog: TPrinterSetupDialog
    Left = 104
    Top = 245
  end
  object tmrStatusMessage: TTimer
    OnTimer = tmrStatusMessageTimer
    Left = 4
    Top = 248
  end
  object vedtLatitude: TDisplayFmt
    Text = '0'
    FieldType = vftLatitude
    Hemisphere = hsNone
    PositiveNorth = True
    PositiveEast = True
    DecimalPlaces = -1
    DMSFormat = dfAbbreviated
    MinValue = -90.000000000000000000
    MaxValue = 90.000000000000000000
    DateFormat = 'd/m/yyyy'
    TimeFormat = 'h:mm:ss'
    Left = 180
    Top = 228
  end
end
