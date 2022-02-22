object Form_Teste01: TForm_Teste01
  Left = 0
  Top = 0
  Caption = '.'
  ClientHeight = 479
  ClientWidth = 884
  Color = 3421236
  Constraints.MaxWidth = 920
  Constraints.MinWidth = 790
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 17
  object Pa_Fundo: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 479
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Pa_Fundo'
    Color = 13355979
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      884
      479)
    object PaBottom: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 464
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Caption = 'PaBottom'
      Color = clBlack
      Locked = True
      ShowCaption = False
      TabOrder = 1
    end
    object Pa_Top: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 250
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Caption = 'Pa_Top'
      Color = 14796928
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 15
      Top = 52
      Width = 855
      Height = 362
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      Color = 15132390
      Ctl3D = False
      DrawingStyle = gdsClassic
      FixedColor = 14079702
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end>
    end
    object GridPanel1: TGridPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 44
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Caption = 'GridPanel1'
      Color = 14796928
      ColumnCollection = <
        item
          Value = 20.000000000000000000
        end
        item
          Value = 43.000000000000000000
        end
        item
          Value = 18.500000000000000000
        end
        item
          Value = 18.500000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = La_Titulo
          Row = 0
        end
        item
          Column = 1
          Control = Edt_Filtro
          Row = 0
        end
        item
          Column = 2
          Control = Cb_Ordenar
          Row = 0
        end
        item
          Column = 3
          Control = La_Usuario
          Row = 0
        end>
      ParentBackground = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      ShowCaption = False
      TabOrder = 3
      DesignSize = (
        884
        44)
      object La_Titulo: TLabel
        Left = 34
        Top = 10
        Width = 107
        Height = 24
        Anchors = []
        Caption = 'USU'#193'RIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 3
      end
      object Edt_Filtro: TEdit
        Left = 178
        Top = 9
        Width = 376
        Height = 25
        Anchors = []
        BevelEdges = [beBottom]
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        Text = 'Edt_Filtro'
      end
      object Cb_Ordenar: TComboBox
        Left = 560
        Top = 9
        Width = 154
        Height = 25
        BevelEdges = [beBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        Anchors = []
        ItemIndex = 0
        ParentColor = True
        TabOrder = 1
        Text = 'Codigo'
        Items.Strings = (
          'Codigo'
          'Nome'
          'Data de cadastro')
      end
      object La_Usuario: TLabel
        Left = 746
        Top = 7
        Width = 111
        Height = 30
        Anchors = []
        Caption = 'Nome Do Usu'#225'rio e Nome Do Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 755
        ExplicitTop = 0
      end
    end
    object Panel1: TPanel
      Left = 8
      Top = 432
      Width = 110
      Height = 38
      Anchors = [akLeft, akBottom]
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = 6045712
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ShowCaption = False
      TabOrder = 4
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 44
        Height = 18
        Caption = 'NOVO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 110
        Height = 38
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Margin = 0
        ExplicitTop = -1
        ExplicitWidth = 138
        ExplicitHeight = 42
      end
    end
    object Panel2: TPanel
      Left = 125
      Top = 432
      Width = 125
      Height = 38
      Anchors = [akLeft, akBottom]
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = 6045712
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ShowCaption = False
      TabOrder = 5
      object Label2: TLabel
        Left = 8
        Top = 10
        Width = 54
        Height = 18
        Caption = 'EDITAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 0
        Width = 125
        Height = 38
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        ExplicitTop = 1
        ExplicitWidth = 140
        ExplicitHeight = 44
      end
    end
  end
end
