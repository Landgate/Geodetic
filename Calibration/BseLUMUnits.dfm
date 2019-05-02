object frmLUMUnits: TfrmLUMUnits
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'LUM / Baseline / EDM Accuracy Units'
  ClientHeight = 179
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblDescription: TLabel
    Left = 14
    Top = 4
    Width = 315
    Height = 13
    Caption = 
      'Please select the appropriate LUM / Baseline / EDM accuracy unit' +
      's'
  end
  object lblWarning: TLabel
    Left = 36
    Top = 27
    Width = 321
    Height = 13
    Caption = 
      'This screen does not allow the Constant and Scale values to be s' +
      'et'
  end
  object Label1: TLabel
    Left = 36
    Top = 46
    Width = 321
    Height = 13
    Caption = 
      'This screen only allows the selection of how the units are displ' +
      'ayed'
  end
  object rbBaselineUnitsMmPlusPpm: TRadioButton
    Left = 8
    Top = 86
    Width = 72
    Height = 17
    Caption = 'mm + ppm'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = rbBaselineUnitsMmPlusPpmClick
  end
  object rbLUMBaselineUnitsMm: TRadioButton
    Left = 8
    Top = 112
    Width = 72
    Height = 17
    Caption = 'mm'
    TabOrder = 1
    OnClick = rbLUMBaselineUnitsMmClick
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 138
    Width = 478
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnOK: TBitBtn
      Left = 396
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
  end
  inline FrameOldLUMUnitsNonDB1: TFrameOldLUMUnitsNonDB
    Left = 90
    Top = 84
    Width = 318
    Height = 22
    TabOrder = 3
    ExplicitLeft = 90
    ExplicitTop = 84
    ExplicitWidth = 318
    inherited pnlOldLUMUnits: TPanel
      Width = 318
      OnClick = FrameOldLUMUnitsNonDB1pnlOldLUMUnitsClick
      ExplicitWidth = 318
      ExplicitHeight = 22
    end
  end
  inline FrameNewLumUnitsNonDB1: TFrameNewLumUnitsNonDB
    Left = 90
    Top = 110
    Width = 318
    Height = 22
    TabOrder = 4
    ExplicitLeft = 90
    ExplicitTop = 110
    ExplicitWidth = 318
    inherited pnlNewLUMUnits: TPanel
      Width = 318
      OnClick = FrameNewLumUnitsNonDB1pnlNewLUMUnitsClick
      ExplicitWidth = 318
    end
  end
end
