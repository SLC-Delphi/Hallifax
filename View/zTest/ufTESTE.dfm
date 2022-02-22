object Form_testando01: TForm_testando01
  Left = 0
  Top = 0
  Caption = 'Form_testando01'
  ClientHeight = 441
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 697
    Height = 359
    Align = alClient
    BevelOuter = bvNone
    Color = clMedGray
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      697
      359)
    object DBGrid1: TDBGrid
      Left = 8
      Top = 6
      Width = 678
      Height = 347
      Anchors = [akLeft, akTop, akRight, akBottom]
      Ctl3D = False
      DataSource = DataSource1
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 400
    Width = 697
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Duplaface_019\Dados\N1\DUPLAFACE_CtasPagar_TesteRPFi' +
        'nal.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 480
    Top = 105
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 480
    Top = 177
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from LOC_M1_CAD_USUARIO')
    Left = 480
    Top = 241
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 496
    Top = 313
  end
end
