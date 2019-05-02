object FrameOldLUMUnits: TFrameOldLUMUnits
  Left = 0
  Top = 0
  Width = 175
  Height = 25
  TabOrder = 0
  object dbedtLUMEDMConstant: TwwDBEdit
    Left = 15
    Top = 2
    Width = 45
    Height = 21
    DataField = 'StandardConstant'
    DataSource = dmBase.dsStandard
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object pnlLumUnits1: TPanel
    Left = 65
    Top = 1
    Width = 31
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'mm +'
    TabOrder = 1
  end
  object dbedtLUMEDMPPM: TwwDBEdit
    Left = 98
    Top = 2
    Width = 45
    Height = 21
    DataField = 'StandardScale'
    DataSource = dmBase.dsStandard
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object pnlLumUnits2: TPanel
    Left = 148
    Top = 1
    Width = 27
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'ppm)'
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 2
    Top = 1
    Width = 13
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = #177'('
    TabOrder = 4
  end
end
