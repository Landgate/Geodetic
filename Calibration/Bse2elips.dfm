object frmEllipsoid: TfrmEllipsoid
  Left = 442
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit Ellipsoidal Parameters'
  ClientHeight = 299
  ClientWidth = 409
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
  object Label4: TLabel
    Left = 8
    Top = 4
    Width = 208
    Height = 24
    Caption = 'Ellipsoidal Parameters'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object dbgrdEllipsoids: TwwDBGrid2
    Left = 7
    Top = 36
    Width = 395
    Height = 188
    HelpContext = 1070
    Selected.Strings = (
      'EllipsName'#9'30'#9'Name'#9'F'
      'EllipsARadius'#9'10'#9'Equatorial Radius'#9'F'
      'EllipsInvFlat'#9'10'#9'Inverse Flattening'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsEllipsoid
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnColExit = dbgrdEllipsoidsColExit
    OnExit = dbgrdEllipsoidsExit
    Validate = False
  end
  object dbnavEllipsoids: TDBNavigator
    Left = 9
    Top = 227
    Width = 390
    Height = 25
    HelpContext = 200
    DataSource = dsEllipsoid
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object btnClose1: TBitBtn
    Left = 10
    Top = 268
    Width = 75
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
  object btnHelp4: TBitBtn
    Left = 89
    Top = 268
    Width = 75
    Height = 25
    TabOrder = 3
    OnClick = btnHelp4Click
    Kind = bkHelp
  end
  object dsEllipsoid: TwwDataSource
    DataSet = rxEllipsoid
    OnStateChange = dsEllipsoidStateChange
    Left = 356
    Top = 256
  end
  object rxEllipsoid: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'EllipsName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EllipsARadius'
        DataType = ftFloat
      end
      item
        Name = 'EllipsInvFlat'
        DataType = ftFloat
      end
      item
        Name = 'EllipsID'
        DataType = ftInteger
      end>
    BeforePost = rxEllipsoidBeforePost
    BeforeDelete = rxEllipsoidBeforeDelete
    OnNewRecord = rxEllipsoidNewRecord
    Left = 296
    Top = 256
    object rxEllipsoidEllipsName: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 30
      FieldName = 'EllipsName'
      Size = 30
    end
    object rxEllipsoidEllipsARadius: TFloatField
      DisplayLabel = 'Equatorial Radius'
      DisplayWidth = 10
      FieldName = 'EllipsARadius'
    end
    object rxEllipsoidEllipsInvFlat: TFloatField
      DisplayLabel = 'Inverse Flattening'
      DisplayWidth = 10
      FieldName = 'EllipsInvFlat'
    end
    object rxEllipsoidEllipsID: TIntegerField
      FieldName = 'EllipsID'
      Visible = False
    end
  end
end
