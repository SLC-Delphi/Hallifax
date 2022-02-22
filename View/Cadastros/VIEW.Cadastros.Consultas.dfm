object View_CadastrosConsulta: TView_CadastrosConsulta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Consultas > Pessoas & Grupos'
  ClientHeight = 511
  ClientWidth = 1120
  Color = clGray
  Constraints.MaxWidth = 1500
  Constraints.MinHeight = 350
  Constraints.MinWidth = 1024
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clCream
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Pa_Principal: TPanel
    Left = 0
    Top = 36
    Width = 1120
    Height = 475
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Pa_Principal'
    ParentBackground = False
    ParentColor = True
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      1120
      475)
    object PaBottom: TPanel
      Left = 0
      Top = 0
      Width = 1120
      Height = 628
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Caption = 'PaBottom'
      Locked = True
      ShowCaption = False
      TabOrder = 0
    end
    object Pa_Top: TPanel
      Left = 0
      Top = 0
      Width = 1120
      Height = 131
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pa_Top'
      Color = 10385956
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object La_Titulo: TLabel
        Left = 4
        Top = 10
        Width = 175
        Height = 24
        Caption = 'FORNECEDORES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Dbg_Dados: TDBGrid
      Left = 14
      Top = 48
      Width = 1091
      Height = 416
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      Color = 9530913
      Ctl3D = False
      DrawingStyle = gdsClassic
      FixedColor = 7229470
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clCream
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
        end
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
        end
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
        end
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
        end
        item
          Expanded = False
          Visible = True
        end>
    end
    object GridPanel_Filtro: TGridPanel
      Left = 180
      Top = 0
      Width = 940
      Height = 44
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Caption = 'GridPanel_Filtro'
      Color = 10385956
      ColumnCollection = <
        item
          Value = 70.000000000000000000
        end
        item
          Value = 30.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Edt_Filtro
          Row = 0
        end
        item
          Column = 1
          Control = Cb_Ordenar
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
        940
        44)
      object Edt_Filtro: TEdit
        Left = 23
        Top = 9
        Width = 612
        Height = 25
        Anchors = []
        BevelEdges = [beBottom]
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        ParentColor = True
        TabOrder = 0
        Text = 'EDT_FILTRO'
        OnChange = Edt_FiltroChange
        OnEnter = Edt_FiltroEnter
        OnExit = Edt_FiltroExit
      end
      object Cb_Ordenar: TComboBox
        Left = 674
        Top = 9
        Width = 249
        Height = 25
        BevelEdges = [beBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        Anchors = []
        ItemIndex = 0
        ParentColor = True
        TabOrder = 1
        Text = 'Codigo'
        OnChange = Cb_OrdenarChange
        OnEnter = Cb_OrdenarEnter
        OnExit = Cb_OrdenarExit
        Items.Strings = (
          'Codigo'
          'Nome'
          'Data de cadastro')
      end
    end
  end
  object Pa_Top0: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 36
    Align = alTop
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    Caption = 'Pa_Top'
    Color = 10385956
    Ctl3D = True
    Locked = True
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 1
    object La_ConsultaClientes: TLabel
      Left = 28
      Top = 8
      Width = 53
      Height = 17
      Caption = 'Clientes'
    end
    object La_ConsultaFornecedores: TLabel
      Left = 119
      Top = 8
      Width = 91
      Height = 17
      Caption = 'Fornecedores'
    end
    object La_ConsultaGrupos: TLabel
      Left = 252
      Top = 8
      Width = 48
      Height = 17
      Caption = 'Grupos'
    end
    object Rb_ConsultaClientes: TRadioButton
      Left = 10
      Top = 9
      Width = 16
      Height = 17
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = Rb_ConsultaClientesClick
    end
    object Rb_ConsultaFornecedores: TRadioButton
      Left = 103
      Top = 9
      Width = 16
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 1
      OnClick = Rb_ConsultaFornecedoresClick
    end
    object Rb_ConsultaGrupos: TRadioButton
      Left = 236
      Top = 9
      Width = 16
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 2
      OnClick = Rb_ConsultaGruposClick
    end
  end
end
