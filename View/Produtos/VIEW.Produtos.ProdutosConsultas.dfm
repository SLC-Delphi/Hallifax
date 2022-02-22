object View_ProdutosConsulta: TView_ProdutosConsulta
  Left = 0
  Top = 0
  ActiveControl = Dbg_Dados
  AlphaBlend = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Cadastros > Produtos & Estoques'
  ClientHeight = 488
  ClientWidth = 1008
  Color = 5657424
  Constraints.MaxWidth = 1366
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
  PixelsPerInch = 96
  TextHeight = 17
  object Pa_Principal: TPanel
    Left = 0
    Top = 21
    Width = 1008
    Height = 467
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    ParentColor = True
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      1008
      467)
    object PaBottom: TPanel
      Left = 0
      Top = 0
      Width = 1008
      Height = 636
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Caption = 'PaBottom'
      Locked = True
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
    end
    object Pa_Top: TPanel
      Left = 0
      Top = 0
      Width = 1008
      Height = 280
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pa_Top'
      Color = 10912000
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 3
      object La_Titulo: TLabel
        Left = 6
        Top = 12
        Width = 147
        Height = 24
        Caption = 'MANUTEN'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Pa_ProdutoBotoes: TPanel
        Left = 6
        Top = 48
        Width = 125
        Height = 227
        BevelOuter = bvNone
        Caption = 'Pa_ProdutosBotoes'
        ShowCaption = False
        TabOrder = 0
        object Pa_BotaoNovo: TPanel
          Left = 0
          Top = 1
          Width = 125
          Height = 40
          BevelOuter = bvNone
          Color = 6045712
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object La_BotaoNovo: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Align = alClient
            Alignment = taCenter
            Caption = 'NOVO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 44
            ExplicitHeight = 18
          end
          object SpBt_Novo: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            Margin = 0
            OnClick = SpBt_NovoClick
            ExplicitLeft = -2
            ExplicitWidth = 140
          end
        end
        object Pa_BotaoEditar: TPanel
          Left = 0
          Top = 45
          Width = 125
          Height = 40
          BevelOuter = bvNone
          Color = 6045712
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          object La_BotaoEditar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Align = alClient
            Alignment = taCenter
            Caption = 'EDITAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 54
            ExplicitHeight = 18
          end
          object SpBtn_Editar: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = SpBtn_EditarClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoEstoque: TPanel
          Left = 0
          Top = 89
          Width = 125
          Height = 40
          BevelOuter = bvNone
          Color = 6045712
          ParentBackground = False
          ShowCaption = False
          TabOrder = 2
          object La_BotaoEstoque: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Align = alClient
            Alignment = taCenter
            Caption = 'ESTOQUE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 75
            ExplicitHeight = 18
          end
          object spBtn_Estoque: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = spBtn_EstoqueClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoPreco: TPanel
          Left = 0
          Top = 133
          Width = 125
          Height = 40
          BevelOuter = bvNone
          Color = 6045712
          ParentBackground = False
          ShowCaption = False
          TabOrder = 3
          object La_BotaoPreco: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Align = alClient
            Alignment = taCenter
            Caption = 'PRE'#199'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 54
            ExplicitHeight = 18
          end
          object spBtn_Preco: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = spBtn_PrecoClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoLancar: TPanel
          Left = 0
          Top = 179
          Width = 125
          Height = 47
          BevelOuter = bvNone
          Color = 6045712
          ParentBackground = False
          ShowCaption = False
          TabOrder = 4
          object La_BotaoLancar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 47
            Align = alClient
            Alignment = taCenter
            Caption = 'LAN'#199'AR MANUTEN'#199#195'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitWidth = 107
            ExplicitHeight = 36
          end
          object SpBt_Lancar: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 47
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            Margin = 0
            OnClick = SpBt_LancarClick
            ExplicitLeft = -2
            ExplicitWidth = 140
            ExplicitHeight = 40
          end
        end
      end
      object Pa_ManutencaoBotoes: TPanel
        Left = 25
        Top = 9
        Width = 125
        Height = 152
        BevelOuter = bvNone
        ShowCaption = False
        TabOrder = 1
        object Pa_BotaoAlterar: TPanel
          Left = 0
          Top = 109
          Width = 125
          Height = 40
          BevelOuter = bvNone
          Color = 6045712
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          Visible = False
          object La_BotaoAlterar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Align = alClient
            Alignment = taCenter
            Caption = 'ALTERAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 68
            ExplicitHeight = 18
          end
          object SpBt_Alterarr: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = SpBt_AlterarrClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoEncerrar: TPanel
          Left = 0
          Top = 0
          Width = 125
          Height = 40
          BevelOuter = bvNone
          Color = 6045712
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          object La_BotaoEncerrar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Align = alClient
            Alignment = taCenter
            Caption = 'ENCERRAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 84
            ExplicitHeight = 18
          end
          object SpBt_Encerrar: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = SpBt_EncerrarClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoCancelar: TPanel
          Left = 1
          Top = 48
          Width = 125
          Height = 40
          BevelOuter = bvNone
          Color = 15801
          ParentBackground = False
          ShowCaption = False
          TabOrder = 2
          object La_BotaoCancelar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Align = alClient
            Alignment = taCenter
            Caption = 'CANCELAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 81
            ExplicitHeight = 18
          end
          object SpBt_Cancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = SpBt_CancelarClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
      end
    end
    object Dbg_Dados: TDBGrid
      Left = 144
      Top = 48
      Width = 852
      Height = 408
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      Color = 4209204
      Ctl3D = False
      DrawingStyle = gdsClassic
      FixedColor = 9531136
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clCream
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnCellClick = Dbg_DadosCellClick
      OnKeyDown = Dbg_DadosKeyDown
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
        end>
    end
    object GridPanel_Filtro: TGridPanel
      Left = 175
      Top = 0
      Width = 833
      Height = 44
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Caption = 'GridPanel_Filtro'
      Color = 10912000
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
      TabOrder = 2
      DesignSize = (
        833
        44)
      object Edt_Filtro: TEdit
        Left = 41
        Top = 9
        Width = 500
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
        Left = 583
        Top = 9
        Width = 250
        Height = 25
        BevelEdges = [beBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        Anchors = []
        ItemIndex = 4
        ParentColor = True
        TabOrder = 1
        Text = 'Fornecedor, Marca  e Produto'
        OnChange = Cb_OrdenarChange
        OnEnter = Cb_OrdenarEnter
        OnExit = Cb_OrdenarExit
        Items.Strings = (
          'Codigo'
          'Produto e Marca'
          'Grupo e Produto'
          'Grupo, Marca e Produto'
          'Fornecedor, Marca  e Produto')
      end
    end
    object Pa_BotaoLixeira: TPanel
      Left = 6
      Top = 283
      Width = 125
      Height = 38
      BevelOuter = bvNone
      Caption = 'Pa_BotaoNovo'
      Color = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      ShowCaption = False
      TabOrder = 4
      object La_BotaoLixeira: TLabel
        Left = 37
        Top = 0
        Width = 88
        Height = 38
        Align = alClient
        Alignment = taCenter
        Caption = 'LIXEIRA'
        Layout = tlCenter
        ExplicitWidth = 73
        ExplicitHeight = 21
      end
      object SpBt_Lixeira: TSpeedButton
        Left = 37
        Top = 0
        Width = 88
        Height = 38
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Margin = 0
        ParentFont = False
        OnClick = SpBt_LixeiraClick
        ExplicitLeft = -2
        ExplicitWidth = 140
        ExplicitHeight = 40
      end
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 37
        Height = 38
        Cursor = crUpArrow
        Margins.Left = 5
        Align = alLeft
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          00240806000000E10098980000000970485973000000DF000000DF010FAD618E
          000001994944415478DAED983D48C34014802F08FE803F15110715049D1C74D5
          490747C182283838EAA28B8BD8DD8A8383E0A020480627271707A182BA3938EB
          64978A202E56C19FC1F81D69E5968433BDC356EEC1C7BB5E5EDF7D3497A6A917
          0481A8A6F06A42C8F3BCC837503F445A8639688E282BC221ECD0EB36A6576542
          D4D691EEE01A0EE02562AD5658847E7A0DDA149A24F9D043CDBB88096A5B480F
          3045ED992DA135529AE3234223A897A76B8FFA6D5B42B3A4518EAF680AED934E
          A83FAE5888F90986F3D0A0B3F82FE20D7CD6B8D016223AA0008D8665CAF10ADD
          22BC1AB5849AE01EDA2D093D422F7C6A09954ED900C31961E7941DB1463ED1A6
          E6F8B841992F7A5F2ABD130999BCB77CD0FB675FFE5B2179F565615799F3417E
          334F2B730BB00E5DB6854E212DC2CD590E79A34DA992F490BDCF198E392127E4
          849C901372424EA8C684AE44F833A3A0CC2D9584B2CA5C27E460D8B6908C6768
          535ECB4F4B3E66D7C7D41813CA93FA8499B8519FF5930A6D9032868432F4DEAC
          54483E34AE8AF0DF8C54429127116EF82D7A1795DE7A427F195527F40D184FE3
          C8BD7E05760000000049454E44AE426082}
        ExplicitHeight = 36
      end
    end
  end
  object Pa_Top0: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Pa_Top'
    Color = 10912000
    Locked = True
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object La_AcessaProdutos: TLabel
      Left = 28
      Top = 6
      Width = 59
      Height = 17
      Caption = 'Produtos'
    end
    object La_AcessaManutencao: TLabel
      Left = 119
      Top = 6
      Width = 79
      Height = 17
      Caption = 'Manuten'#231#227'o'
    end
    object Rb_AcessaProdutos: TRadioButton
      Left = 10
      Top = 7
      Width = 16
      Height = 17
      TabOrder = 0
      OnClick = Rb_AcessaProdutosClick
    end
    object Rb_AcessaManutencao: TRadioButton
      Left = 104
      Top = 7
      Width = 16
      Height = 17
      Caption = 'RadioButton1'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = Rb_AcessaManutencaoClick
    end
  end
end
