object frmTranslate: TfrmTranslate
  Left = 492
  Top = 194
  BorderStyle = bsSingle
  Caption = 'Convert encrypted database files into text files'
  ClientHeight = 415
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 645
    Height = 415
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 386
    ExplicitHeight = 195
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      ExplicitWidth = 378
      ExplicitHeight = 185
      DesignSize = (
        637
        405)
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 637
        Height = 32
        Align = alTop
        Caption = 
          'Select Folder containing the baseline Database files for the Bas' +
          'eline application.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 419
      end
      object DirectoryEdit1: TDirectoryEdit
        Left = 3
        Top = 20
        Width = 621
        Height = 21
        NumGlyphs = 1
        TabOrder = 0
      end
      object btnTranslate: TButton
        Left = 549
        Top = 377
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Translate'
        TabOrder = 1
        OnClick = btnTranslateClick
        ExplicitLeft = 342
      end
      object mmoTranslateResults: TMemo
        Left = 3
        Top = 47
        Width = 621
        Height = 325
        Lines.Strings = (
          'mmoTranslateResults')
        TabOrder = 2
      end
      object btnClose: TButton
        Left = 469
        Top = 377
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Close'
        TabOrder = 3
        OnClick = btnCloseClick
        ExplicitLeft = 262
      end
    end
  end
end
