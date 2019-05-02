object frmDisclaimer: TfrmDisclaimer
  Left = 381
  Top = 233
  Width = 707
  Height = 491
  Caption = 'Disclaimer and Copyright Notice'
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
  object pnlButtons: TPanel
    Left = 603
    Top = 0
    Width = 96
    Height = 464
    Align = alRight
    TabOrder = 0
    object btnNotAgreed: TBitBtn
      Left = 10
      Top = 48
      Width = 79
      Height = 25
      Caption = '&Do Not Agree'
      TabOrder = 0
      OnClick = btnNotAgreedClick
    end
    object btnAgreed: TBitBtn
      Left = 10
      Top = 16
      Width = 78
      Height = 25
      Caption = '&Agree'
      TabOrder = 1
      OnClick = btnAgreedClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 464
    Align = alClient
    TabOrder = 1
    object pnlHeader: TPanel
      Left = 1
      Top = 1
      Width = 601
      Height = 36
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' IMPORTANT: READ BEFORE CONTINUING'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object pcLegal: TPageControl
      Left = 1
      Top = 37
      Width = 601
      Height = 426
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Disclaimer'
        object pnlDisclaimer: TPanel
          Left = 0
          Top = 0
          Width = 593
          Height = 395
          Align = alClient
          TabOrder = 0
          object memDisclaimer: TMemo
            Left = 1
            Top = 1
            Width = 591
            Height = 393
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
                's and EDM Instruments as required.  You should '
              
                'carefully read this disclaimer notice before installing the soft' +
                'ware.'
              ''
              
                'This software package has been checked for viruses however the D' +
                'epartment of Land Information (DLI) and the State '
              
                'of Western Australia (the STATE) give no guarantee that the soft' +
                'ware package is free from viruses and before installing '
              
                'the software package you must check for viruses with a virus sca' +
                'nner complete with the latest anti-virus data updates. '
              
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
              'wholly or partially, upon this software. '
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
                'nt copy of the software package. This warranty is void if '
              'the defect results from accident abuse or misapplication. '
              ''
              
                'Limitation of Liability - The above replacement provision is the' +
                ' only warranty of any kind and DLI and the STATE offer no '
              
                'other warranty either express or implied and DLI and the State w' +
                'ill not be liable for any damages whatsoever arising out of '
              'the use or the inability to use the software.'
              ''
              
                ' DLI and the STATE give no undertaking or guarantee with respect' +
                ' to ongoing maintenance or future updates of the '
              'software.')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object TabSheet2: TTabSheet
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
          Width = 593
          Height = 395
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Lines.Strings = (
            
              'Copyright in all Department of Land Information (DLI) informatio' +
              'n and products including this software '
            
              'application and source code is owned by and vested in the State ' +
              'of Western Australia and is '
            
              'protected by the Copyright Act 1968 and similar legislation whic' +
              'h applies in your location. All other '
            
              'rights are reserved and no part may be reproduced by any process' +
              ', distributed, commercialised, or '
            
              'reused for any other purpose, without the prior written authoris' +
              'ation of the Department of Land '
            'Information. '
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
              'isplayed, must acknowledge the '
            
              'source of the material, and carry an acknowledgment that the Sta' +
              'te of Western Australia is the owner '
            'of the copyright.'
            ''
            'Copyright '#169' 2004 State of Western Australia.'
            ''
            ''
            '')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
end
