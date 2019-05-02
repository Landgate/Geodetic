object frmDistribute: TfrmDistribute
  Left = 418
  Top = 195
  Caption = 'Distribution of the Baseline software and database tables.'
  ClientHeight = 465
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 696
    Height = 465
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      object lblHeader1: TLabel
        Left = 6
        Top = 4
        Width = 113
        Height = 29
        Caption = 'Distribute'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDistributionDate: TLabel
        Left = 31
        Top = 80
        Width = 81
        Height = 13
        Caption = 'Distribution Date:'
      end
      object lblDistributionAuthority: TLabel
        Left = 31
        Top = 116
        Width = 99
        Height = 13
        Caption = 'Distribution Authority:'
      end
      object lblDistributionVersion: TLabel
        Left = 31
        Top = 152
        Width = 93
        Height = 13
        Caption = 'Distribution Version:'
      end
      object pnlButtons1: TPanel
        Left = 595
        Top = 0
        Width = 93
        Height = 455
        Align = alRight
        TabOrder = 0
        object lblPage1: TLabel
          Left = 29
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Page 1 of 4'
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
        object btnClose1: TBitBtn
          Left = 10
          Top = 164
          Width = 75
          Height = 25
          TabOrder = 1
          Kind = bkClose
        end
        object btnHelp1: TBitBtn
          Left = 10
          Top = 127
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnHelp1Click
          Kind = bkHelp
        end
        object btnHistory1: TButton
          Left = 10
          Top = 93
          Width = 75
          Height = 25
          Caption = '&History'
          TabOrder = 3
          OnClick = btnHistory1Click
        end
      end
      object memDescription: TMemo
        Left = 32
        Top = 212
        Width = 457
        Height = 169
        Color = clBtnFace
        Lines.Strings = (
          
            'This utility creates a restricted version of the Baseline softwa' +
            're for general distribution.'
          
            'The users of this version will only be able to calibrate E.D.M. ' +
            'instruments on designated '
          'baselines.'
          ''
          
            'The restricted version will contain the latest calibrated baseli' +
            'ne distances. This utility should '
          
            'be used whenever a new baseline has been created or existing bas' +
            'elines have been '
          're-calibrated.'
          ''
          
            'Downloading this restricted version will not overwrite the E.D.M' +
            '. Calibration jobs of'
          
            'previously installed versions. Hence the installation is suitabl' +
            'e for both first time users'
          'and users, who have already installed a previously version.'
          ''
          ''
          ''
          ''
          ' '
          ' ')
        ReadOnly = True
        TabOrder = 1
      end
      object pickDate: TDateTimePicker
        Left = 135
        Top = 76
        Width = 182
        Height = 21
        Date = 36666.291666666700000000
        Time = 36666.291666666700000000
        DateFormat = dfLong
        TabOrder = 2
        OnCloseUp = pickDateCloseUp
      end
      object gbDistributeTo: TGroupBox
        Left = 307
        Top = 108
        Width = 190
        Height = 74
        Caption = 'Distribute to:'
        TabOrder = 3
        object rbtnWAUsers: TRadioButton
          Left = 8
          Top = 20
          Width = 165
          Height = 17
          Caption = 'WA Users (Restricted Version)'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbtnWAUsersClick
        end
        object rbtnVAUsers: TRadioButton
          Left = 8
          Top = 48
          Width = 173
          Height = 17
          Caption = 'Verifying Authorities (Full Version)'
          TabOrder = 1
          OnClick = rbtnVAUsersClick
        end
      end
      object pnlVersion: TPanel
        Left = 138
        Top = 147
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object edtAuthority: TEdit
        Left = 139
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object chkIncludeLogos: TCheckBox
        Left = 308
        Top = 186
        Width = 165
        Height = 17
        Caption = 'Include Authority Logo'
        TabOrder = 6
      end
    end
    object tsDisclaimer: TTabSheet
      Caption = 'tsDisclaimer'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = False
      TabVisible = False
      object pcLegal: TPageControl
        Left = 0
        Top = 0
        Width = 600
        Height = 455
        ActivePage = tsDisclaimerStatement
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object tsDisclaimerStatement: TTabSheet
          Caption = 'Disclaimer'
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 592
            Height = 424
            Align = alClient
            TabOrder = 0
            object memDisclaimer: TMemo
              Left = 1
              Top = 1
              Width = 590
              Height = 422
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Lines.Strings = (
                
                  'This software package has been made available for the purpose of' +
                  ' calibrating Electronic Distance Measurement (EDM) '
                
                  'Baselines by Verifying Authorities for Length and/or ICSM Member' +
                  's and EDM Instruments as required. You should '
                
                  'carefully read this disclaimer notice before installing the soft' +
                  'ware.'
                ''
                
                  'This software package has been checked for viruses however the D' +
                  'epartment of Land Information (DLI) and the State '
                
                  'of Western Australia (the STATE) give no guarantee that the soft' +
                  'ware package is free from viruses and before installing '
                
                  'the software package you must check for viruses with a virus sca' +
                  'nner complete with the latest anti-virus data updates. '
                ''
                
                  'DLI and the STATE do not give any guarantee, take any responsibi' +
                  'lity or accept any legal liability arising from or '
                
                  'connected to any virus found in the software package and accept ' +
                  'no responsibility and disclaim all liability for any losses, '
                'damages, or costs incurred as a result of any such virus.'
                ''
                
                  'While DLI and the STATE have made every effort to ensure the acc' +
                  'uracy, reliability, completeness and suitability for '
                
                  'purpose of the software package, DLI and the STATE expressly dis' +
                  'claim all responsibility and all and any liability to any '
                
                  'person in respect of the consequences of anything done or omitte' +
                  'd to be done by such person in reliance, whether '
                'wholly or partially, upon this software.'
                ''
                
                  'DLI and the STATE do not give any guarantee, take any responsibi' +
                  'lity or accept any legal liability (including without '
                
                  'limitation, liability in negligence) arising from or connected t' +
                  'o any errors or omissions, or arising from or connected to the '
                
                  'accuracy, reliability, currency or completeness of this software' +
                  ' package and accept no responsibility and disclaim all '
                
                  'liability for any losses, damages, or costs incurred as a result' +
                  ' of the use or reliance on this software package. '
                ''
                
                  'Replacement - This software package is provided AS IS without fu' +
                  'rther warranty of any kind. If the software package as '
                
                  'provided is found to be defective in material and workmanship un' +
                  'der normal use DLI'#39's and the STATE'#39's entire liability, '
                
                  'and your exclusive remedy, shall be the provision of a replaceme' +
                  'nt copy of the software package.This warranty is void if '
                'the defect results from accident abuse or misapplication. '
                ''
                
                  'Limitation of Liability - The above replacement provision is the' +
                  ' only warranty of any kind and DLI and the STATE offer no '
                
                  'other warranty either express or implied and DLI and the State w' +
                  'ill not be liable for any damages whatsoever arising out '
                'of the use or the inability to use the software.'
                ''
                
                  ' DLI and the STATE give no undertaking or guarantee with respect' +
                  ' to ongoing maintenance or future updates of the '
                'software.')
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Copyright Notice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ImageIndex = 1
          ParentFont = False
          object memCopyRight: TMemo
            Left = 0
            Top = 0
            Width = 592
            Height = 424
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Lines.Strings = (
              
                'Copyright in all Department of Land Information (DLI) informatio' +
                'n and products including this software application and '
              
                'source code is owned by and vested in the State of Western Austr' +
                'alia and is protected by the Copyright Act 1968 and '
              
                'similar legislation which applies in your location. All other ri' +
                'ghts are reserved and no part may be reproduced by any '
              
                'process, distributed, commercialised, or reused for any other pu' +
                'rpose, without the prior written authorisation of the '
              'Department of Land Information. '
              ''
              'Requests concerning authorisation should be addressed to:'
              ''
              'Manager, Survey Services'
              'Department of Land Information (WA)'
              'PO Box 2222'
              'Midland'
              'Western Australia  6936'
              ''
              'Tel:       (08) 9273 7114'
              'Fax:      (08) 9273 7657'
              #9'e-mail:  survey@dli.wa.gov.au'
              ''
              
                'Any authorised reproduction however altered, reformatted, or red' +
                'isplayed, must acknowledge the source of the material, '
              
                'and carry an acknowledgment that the State of Western Australia ' +
                'is the owner of the copyright.'
              ''
              'Copyright '#169' 2004 State of Western Australia.'
              ''
              ''
              '')
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object pnlButtons2: TPanel
        Left = 600
        Top = 0
        Width = 88
        Height = 455
        Align = alRight
        TabOrder = 1
        object lblPageDisclaimer: TLabel
          Left = 29
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Page 2 of 4'
        end
        object btnNext2: TBitBtn
          Left = 7
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 0
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
        object btnClose2: TBitBtn
          Left = 7
          Top = 164
          Width = 75
          Height = 25
          TabOrder = 1
          Kind = bkClose
        end
        object btnHelp2: TBitBtn
          Left = 7
          Top = 127
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnHelp2Click
          Kind = bkHelp
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 1
      TabVisible = False
      object lblHeader3: TLabel
        Left = 6
        Top = 4
        Width = 113
        Height = 29
        Caption = 'Distribute'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblMessage3: TLabel
        Left = 64
        Top = 38
        Width = 386
        Height = 48
        Caption = 
          'The following files are ready to be packed up into one installat' +
          'ion file. Ensure that the database files will be installed in a ' +
          'sub folder (called Database) of the application folder.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object pnlButtons3: TPanel
        Left = 595
        Top = 0
        Width = 93
        Height = 455
        Align = alRight
        TabOrder = 0
        object lblPage3: TLabel
          Left = 31
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Page 3 of 4'
        end
        object btnNext3: TBitBtn
          Left = 10
          Top = 31
          Width = 75
          Height = 25
          Caption = '&Next'
          TabOrder = 0
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
        object btnClose3: TBitBtn
          Left = 10
          Top = 164
          Width = 75
          Height = 25
          TabOrder = 1
          Kind = bkClose
        end
        object btnHelp3: TBitBtn
          Left = 10
          Top = 127
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnHelp3Click
          Kind = bkHelp
        end
      end
      object gbFiles: TGroupBox
        Left = 4
        Top = 99
        Width = 513
        Height = 137
        Caption = 'Files in Distribution Folder'
        TabOrder = 1
        object lblFolder: TLabel
          Left = 8
          Top = 20
          Width = 32
          Height = 13
          Caption = 'Folder:'
        end
        object lblFiles: TLabel
          Left = 11
          Top = 53
          Width = 24
          Height = 13
          Caption = 'Files:'
        end
        object edtDistributionFolder: TEdit
          Left = 42
          Top = 16
          Width = 457
          Height = 21
          Color = clBtnFace
          TabOrder = 0
        end
        object memDistributionFiles: TMemo
          Left = 41
          Top = 50
          Width = 188
          Height = 75
          Color = clBtnFace
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object gbDatabasefiles: TGroupBox
        Left = 8
        Top = 259
        Width = 513
        Height = 165
        Caption = 'Database Files in Distribution Database Folder'
        TabOrder = 2
        object lblDatabasefolder: TLabel
          Left = 8
          Top = 20
          Width = 32
          Height = 13
          Caption = 'Folder:'
        end
        object lblDatabasefiles: TLabel
          Left = 11
          Top = 53
          Width = 24
          Height = 13
          Caption = 'Files:'
        end
        object edtDistributionDBFolder: TEdit
          Left = 42
          Top = 16
          Width = 457
          Height = 21
          Color = clBtnFace
          TabOrder = 0
        end
        object memDistributionDBFiles: TMemo
          Left = 41
          Top = 50
          Width = 188
          Height = 107
          Color = clBtnFace
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 2
      TabVisible = False
      object lblDistributionFolder: TLabel
        Left = 32
        Top = 37
        Width = 104
        Height = 13
        Caption = 'Distribution Folder'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblWinzipInstructions: TLabel
        Left = 32
        Top = 202
        Width = 168
        Height = 13
        Caption = 'Instructions if you use Winzip'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRecommendation: TLabel
        Left = 32
        Top = 127
        Width = 98
        Height = 13
        Caption = 'Recommendation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUnzipInstructions: TLabel
        Left = 32
        Top = 341
        Width = 249
        Height = 13
        Caption = 'Creating an installation file that unzips itself'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblHeader4: TLabel
        Left = 6
        Top = 4
        Width = 113
        Height = 29
        Caption = 'Distribute'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDistributionDatabasefolder: TLabel
        Left = 32
        Top = 80
        Width = 162
        Height = 13
        Caption = 'Distribution Database Folder'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Memo1: TMemo
        Left = 32
        Top = 357
        Width = 461
        Height = 57
        Color = clBtnFace
        Lines.Strings = (
          
            'If you need to send files to users who may not have an unzip uti' +
            'lity, try WinZip Self-Extractor '
          
            'Personal Edition (included with WinZip). The self-extractor make' +
            's files that unzip themselves. '
          
            'First create a Zip file, then choose Make .Exe File from the Win' +
            'Zip Actions menu.')
        TabOrder = 0
      end
      object pnl_Page4: TPanel
        Left = 595
        Top = 0
        Width = 93
        Height = 455
        Align = alRight
        TabOrder = 1
        object lblPage4: TLabel
          Left = 32
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Page 4 of 4'
        end
        object btnClose4: TBitBtn
          Left = 10
          Top = 164
          Width = 75
          Height = 25
          TabOrder = 0
          Kind = bkClose
        end
        object btnHelp4: TBitBtn
          Left = 10
          Top = 127
          Width = 75
          Height = 25
          TabOrder = 1
          OnClick = btnHelp4Click
          Kind = bkHelp
        end
        object btnHistory4: TButton
          Left = 10
          Top = 93
          Width = 75
          Height = 25
          Caption = '&History'
          TabOrder = 2
          OnClick = btnHistory4Click
        end
      end
      object Memo4: TMemo
        Left = 32
        Top = 143
        Width = 461
        Height = 49
        Color = clBtnFace
        Lines.Strings = (
          
            'It is recommended that you use Winzip or any other installation ' +
            'program to pack the files in the '
          
            'Distribution folder and Database subfolder into one installation' +
            ' file.'
          ' '
          ' ')
        TabOrder = 2
      end
      object Memo5: TMemo
        Left = 32
        Top = 218
        Width = 457
        Height = 111
        Color = clBtnFace
        Lines.Strings = (
          
            'Create a new zip file and add all files and subfolders from the ' +
            'distribution folder by clicking on '
          
            'the "Add with wildcards" button. Ensure that you have ticked the' +
            ' '#39'Include subfolders'#39' '
          'checkbox.'
          ''
          
            'This zip file can now be used as the installation file for the E' +
            '.D.M Calibration software.'
          ''
          
            'To install the E.D.M. calibration software just open this zip fi' +
            'le and click on the Checkout toolbar '
          'button.'
          '')
        TabOrder = 3
      end
      object edtDistributionFolder2: TEdit
        Left = 32
        Top = 53
        Width = 457
        Height = 21
        Color = clBtnFace
        TabOrder = 4
      end
      object edtDistributionDBFolder2: TEdit
        Left = 32
        Top = 96
        Width = 457
        Height = 21
        Color = clBtnFace
        TabOrder = 5
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 3
      TabVisible = False
      object lblHeader5: TLabel
        Left = 6
        Top = 4
        Width = 113
        Height = 29
        Caption = 'Distribute'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblHistory: TLabel
        Left = 21
        Top = 100
        Width = 169
        Height = 13
        Caption = 'History of distributed versions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblWarning: TLabel
        Left = 22
        Top = 64
        Width = 188
        Height = 13
        Caption = 'There are no distributed versions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgridHistory: TwwDBGrid
        Left = 20
        Top = 116
        Width = 385
        Height = 233
        Selected.Strings = (
          'DistributionVersion'#9'20'#9'Distribution~Version'
          'DistributionAuthority'#9'25'#9'Distribution~Authority'
          'DistributionDate'#9'10'#9'Distribution~Date')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clBtnFace
        DataSource = dmBase.dsDistribution
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
      object pnlHistory_Buttons: TPanel
        Left = 595
        Top = 0
        Width = 93
        Height = 455
        Align = alRight
        TabOrder = 1
        object btnCloseHistory: TBitBtn
          Left = 10
          Top = 164
          Width = 75
          Height = 25
          TabOrder = 0
          Kind = bkClose
        end
        object btnBack: TBitBtn
          Left = 11
          Top = 57
          Width = 75
          Height = 25
          Caption = '&Back'
          TabOrder = 1
          OnClick = btnBackClick
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
        object btnHelpHistory: TBitBtn
          Left = 10
          Top = 127
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = btnHelpHistoryClick
          Kind = bkHelp
        end
      end
      object dbnavHistory: TwwDBNavigator
        Left = 20
        Top = 348
        Width = 385
        Height = 25
        AutosizeStyle = asSizeNavButtons
        DataSource = dmBase.dsDistribution
        Flat = False
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        object dbnavHistoryFirst: TwwNavButton
          Left = 0
          Top = 0
          Width = 55
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavHistoryFirst'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object dbnavHistoryPriorPage: TwwNavButton
          Left = 55
          Top = 0
          Width = 55
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavHistoryPriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object dbnavHistoryPrior: TwwNavButton
          Left = 110
          Top = 0
          Width = 55
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavHistoryPrior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object dbnavHistoryNext: TwwNavButton
          Left = 165
          Top = 0
          Width = 55
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavHistoryNext'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object dbnavHistoryNextPage: TwwNavButton
          Left = 220
          Top = 0
          Width = 55
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavHistoryNextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object dbnavHistoryLast: TwwNavButton
          Left = 275
          Top = 0
          Width = 55
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavHistoryLast'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object dbnavHistoryDelete: TwwNavButton
          Left = 330
          Top = 0
          Width = 55
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'dbnavHistoryDelete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsDelete
        end
      end
    end
  end
  object rxSecurity: TRxMemoryData
    FieldDefs = <>
    Left = 576
    Top = 340
    object rxSecuritySecurityID: TIntegerField
      FieldName = 'SecurityID'
    end
    object rxSecurityPassword: TStringField
      FieldName = 'Password'
      Size = 30
    end
    object rxSecurityDistributionVersion: TStringField
      FieldName = 'DistributionVersion'
    end
    object rxSecurityDistributionDate: TDateField
      FieldName = 'DistributionDate'
    end
    object rxSecurityDistributionAuthority: TStringField
      FieldName = 'DistributionAuthority'
      Size = 25
    end
    object rxSecurityisRegistered: TBooleanField
      FieldName = 'isRegistered'
    end
    object rxSecurityisFirstTimeUser: TBooleanField
      FieldName = 'isFirstTimeUser'
    end
  end
  object dsSecurity: TDataSource
    DataSet = rxSecurity
    Left = 576
    Top = 392
  end
  object rxWebBaseline: TRxMemoryData
    FieldDefs = <>
    Left = 37
    Top = 400
    object rxWebBaselineBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxWebBaselineBaselineName: TStringField
      FieldName = 'BaselineName'
      Size = 25
    end
    object rxWebBaselineBaselineLocation: TStringField
      DisplayWidth = 50
      FieldName = 'BaselineLocation'
      Size = 50
    end
    object rxWebBaselineBaselineAuthority: TStringField
      FieldName = 'BaselineAuthority'
      Size = 32
    end
    object rxWebBaselineBaselineCalibrationDate: TStringField
      FieldName = 'BaselineCalibrationDate'
    end
    object rxWebBaselineBaselineCalibrationRef: TStringField
      FieldName = 'BaselineCalibrationRef'
      Size = 50
    end
    object rxWebBaselineEllipsID: TIntegerField
      FieldName = 'EllipsID'
    end
    object rxWebBaselineBaselineConfLevel: TFloatField
      FieldName = 'BaselineConfLevel'
    end
    object rxWebBaselineBaseLegalHeight: TFloatField
      FieldName = 'BaseLegalHeight'
    end
    object rxWebBaselineBaseStdICConstant: TFloatField
      FieldName = 'BaseStdICConstant'
    end
    object rxWebBaselineBaseStdICPPM: TFloatField
      FieldName = 'BaseStdICPPM'
    end
    object rxWebBaselineBaseRelativeHumidity: TFloatField
      FieldName = 'BaseRelativeHumidity'
    end
    object rxWebBaselineBaselineArchiveFlag: TStringField
      FieldName = 'BaselineArchiveFlag'
      Size = 1
    end
    object rxWebBaselineAuthorityAddress: TStringField
      FieldName = 'AuthorityAddress'
      Size = 50
    end
  end
  object rxWebPillar: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'PillarID'
        DataType = ftInteger
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'PillarSeqNo'
        DataType = ftInteger
      end
      item
        Name = 'PillarNo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PillarHeight'
        DataType = ftFloat
      end
      item
        Name = 'PillarOffset'
        DataType = ftFloat
      end
      item
        Name = 'PillarLatitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarLongitude'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsARadius'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsBRadius'
        DataType = ftFloat
      end
      item
        Name = 'PillarEllipsOrient'
        DataType = ftFloat
      end
      item
        Name = 'PillarHtStdDev'
        DataType = ftFloat
      end>
    Left = 104
    Top = 400
    object rxWebPillarPillarID: TIntegerField
      FieldName = 'PillarID'
    end
    object rxWebPillarBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxWebPillarPillarSqNo: TIntegerField
      FieldName = 'PillarSeqNo'
    end
    object rxWebPillarPillarNo: TStringField
      FieldName = 'PillarNo'
      Size = 5
    end
    object rxWebPillarPillarHeight: TFloatField
      FieldName = 'PillarHeight'
    end
    object rxWebPillarPillarOffset: TFloatField
      FieldName = 'PillarOffset'
    end
    object rxWebPillarPillarLatitude: TFloatField
      FieldName = 'PillarLatitude'
    end
    object rxWebPillarPillarLongitude: TFloatField
      FieldName = 'PillarLongitude'
    end
    object rxWebPillarPillarEllipsARadius: TFloatField
      FieldName = 'PillarEllipsARadius'
    end
    object rxWebPillarPillarEllipsBRadius: TFloatField
      FieldName = 'PillarEllipsBRadius'
    end
    object rxWebPillarPillarEllipsOrient: TFloatField
      FieldName = 'PillarEllipsOrient'
    end
    object rxWebPillarPillarStdDev: TFloatField
      FieldName = 'PillarHtStdDev'
    end
  end
  object rxWebDistance: TRxMemoryData
    FieldDefs = <>
    Left = 172
    Top = 400
    object rxWebDistanceDistID: TIntegerField
      FieldName = 'DistID'
    end
    object rxWebDistanceBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxWebDistancePillarFromID: TIntegerField
      FieldName = 'PillarFromID'
    end
    object rxWebDistancePillarToID: TIntegerField
      FieldName = 'PillarToID'
    end
    object rxWebDistanceDistLegalDistance: TFloatField
      FieldName = 'DistLegalDistance'
    end
    object rxWebDistanceDistSigma: TFloatField
      FieldName = 'DistSigma'
    end
  end
  object rxWebBaselineAccuracy: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'UncertaintyConstant'
        DataType = ftFloat
      end
      item
        Name = 'UncertaintyScale'
        DataType = ftFloat
      end>
    Left = 272
    Top = 400
    object rxWebBaselineAccuracyBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxWebBaselineAccuracyConstant: TFloatField
      FieldName = 'UncertaintyConstant'
      DisplayFormat = '0.00'
    end
    object rxWebBaselineAccuracyScale: TFloatField
      FieldName = 'UncertaintyScale'
      DisplayFormat = '0.00'
    end
  end
  object rxCleanInstrument: TRxMemoryData
    FieldDefs = <>
    Left = 438
    Top = 400
    object rxCleanInstrumentInstID: TIntegerField
      FieldName = 'InstID'
    end
    object rxCleanInstrumentInstType: TStringField
      FieldName = 'InstType'
      Size = 1
    end
    object rxCleanInstrumentModelID: TIntegerField
      FieldName = 'ModelID'
    end
    object rxCleanInstrumentInstSerialNo: TStringField
      DisplayLabel = 'Serial Number'
      FieldName = 'InstSerialNo'
    end
    object rxCleanInstrumentInstStdDevConst: TFloatField
      DisplayLabel = 'Std Dev~Constant'
      FieldName = 'InstStdDevConst'
    end
    object rxCleanInstrumentInstStdDevPPM: TFloatField
      DisplayLabel = 'Std Dev~PPM'
      FieldName = 'InstStdDevPPM'
    end
    object rxCleanInstrumentAntennaModelID: TIntegerField
      FieldName = 'AntennaModelID'
    end
    object rxCleanInstrumentAntennaSerialNo: TStringField
      FieldName = 'InstAntennaSerialNo'
      Size = 30
    end
    object rxCleanInstrumentInstConstant: TFloatField
      DisplayLabel = 'Constant~(m)'
      FieldName = 'InstConstant'
    end
    object rxCleanInstrumentInstScaleFact: TFloatField
      DisplayLabel = 'Scale~Factor'
      FieldName = 'InstScaleFact'
    end
    object rxCleanInstrumentInstComments: TStringField
      DisplayLabel = 'Comments'
      FieldName = 'InstComments'
      Size = 30
    end
  end
  object rxWebJob: TRxMemoryData
    FieldDefs = <
      item
        Name = 'JobId'
        DataType = ftInteger
      end
      item
        Name = 'JobDescription'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InstID1'
        DataType = ftInteger
      end
      item
        Name = 'InstrID2'
        DataType = ftInteger
      end
      item
        Name = 'JobInstr1Owner'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobInstr2Owner'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobProcessingSoftware'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobStartCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobStartCalibrationTime'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'JobEndCalibrationDate'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobEndCalibrationTime'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobObserverName'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'JobWeatherConditions'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'JobTempCorr'
        DataType = ftFloat
      end
      item
        Name = 'JobPressureCorr'
        DataType = ftFloat
      end
      item
        Name = 'JobStdDevTemp'
        DataType = ftFloat
      end
      item
        Name = 'JobStdDevPressure'
        DataType = ftFloat
      end
      item
        Name = 'JobInstCentringStdDev'
        DataType = ftFloat
      end
      item
        Name = 'JobInstLevellingStdDev'
        DataType = ftFloat
      end
      item
        Name = 'JobType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JobComments'
        DataType = ftString
        Size = 50
      end>
    Left = 360
    Top = 400
    object rxWebJobJobId: TIntegerField
      FieldName = 'JobId'
    end
    object rxWebJobJobDescription: TStringField
      FieldName = 'JobDescription'
    end
    object rxWebJobInstID1: TIntegerField
      FieldName = 'InstID1'
    end
    object rxWebJobInstID2: TIntegerField
      FieldName = 'InstID2'
    end
    object rxWebJobJobInst1Owner: TStringField
      FieldName = 'JobInst1Owner'
      Size = 25
    end
    object rxWebJobJobInst2Owner: TStringField
      FieldName = 'JobInst2Owner'
      Size = 25
    end
    object rxWebJobJobProcessingSoftware: TStringField
      FieldName = 'JobProcessingSoftware'
      Size = 25
    end
    object rxWebJobJobStartCalibrationDate: TStringField
      FieldName = 'JobStartCalibrationDate'
    end
    object rxWebJobJobStartCalibrationTime: TStringField
      FieldName = 'JobStartCalibrationTime'
      Size = 25
    end
    object rxWebJobJobEndCalibrationDate: TStringField
      FieldName = 'JobEndCalibrationDate'
    end
    object rxWebJobJobEndCalibrationTime: TStringField
      FieldName = 'JobEndCalibrationTime'
    end
    object rxWebJobJobObserverName: TStringField
      FieldName = 'JobObserverName'
      Size = 25
    end
    object rxWebJobBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object rxWebJobJobWeatherConditions: TStringField
      FieldName = 'JobWeatherConditions'
      Size = 30
    end
    object rxWebJobJobTempCorr: TFloatField
      FieldName = 'JobTempCorr'
    end
    object rxWebJobJobPressureCorr: TFloatField
      FieldName = 'JobPressureCorr'
    end
    object rxWebJobJobStdDevTemp: TFloatField
      FieldName = 'JobStdDevTemp'
    end
    object rxWebJobJobStdDevPressure: TFloatField
      FieldName = 'JobStdDevPressure'
    end
    object rxWebJobJobInstCentringStdDev: TFloatField
      FieldName = 'JobInstCentringStdDev'
    end
    object rxWebJobJobInstLevellingStdDev: TFloatField
      FieldName = 'JobInstLevellingStdDev'
    end
    object rxWebJobJobType: TStringField
      FieldName = 'JobType'
    end
    object rxWebJobJobComments: TStringField
      FieldName = 'JobComments'
      Size = 50
    end
  end
  object rxWAUserMethod: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Method'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 250
      end>
    Left = 518
    Top = 412
    object rxWAUserMethodMethod: TStringField
      DisplayWidth = 40
      FieldName = 'Method'
      Size = 40
    end
    object rxWAUserMethodDescription: TStringField
      DisplayWidth = 256
      FieldName = 'Description'
      Size = 256
    end
  end
  object rxVAMethod: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Method'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 250
      end>
    Left = 630
    Top = 340
    object rxVAMethodMethod: TStringField
      DisplayWidth = 40
      FieldName = 'Method'
      Size = 40
    end
    object rxVAMethodDescription: TStringField
      DisplayWidth = 300
      FieldName = 'Description'
      Size = 350
    end
  end
  object rxWebBaselineDefault: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'BaselineID'
        DataType = ftInteger
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Default'
        DataType = ftFloat
      end
      item
        Name = 'Unit'
        DataType = ftString
        Size = 24
      end>
    Left = 631
    Top = 392
    object rxWebBaselineDefaultBaselineID: TIntegerField
      FieldName = 'BaselineID'
    end
    object StringField15: TStringField
      DisplayWidth = 45
      FieldName = 'Description'
      Size = 60
    end
    object FloatField32: TFloatField
      DisplayWidth = 10
      FieldName = 'Default'
      MaxValue = 100.000000000000000000
    end
    object StringField16: TStringField
      DisplayWidth = 8
      FieldName = 'Unit'
      Size = 24
    end
  end
end
