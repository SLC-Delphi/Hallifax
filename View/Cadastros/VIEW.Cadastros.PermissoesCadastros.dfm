object View_PermissoesCadastros: TView_PermissoesCadastros
  Left = 0
  Top = 64
  Caption = 'Cadastros > Usuarios > Permissoes'
  ClientHeight = 631
  ClientWidth = 784
  Color = 5657424
  Constraints.MaxHeight = 690
  Constraints.MaxWidth = 1024
  Constraints.MinHeight = 665
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGreen
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Pa_DadosUsuario: TPanel
    Left = 14
    Top = 61
    Width = 756
    Height = 508
    Margins.Left = 9
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'Pa_DadosUsuario'
    Color = 4209204
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Pa_Nome: TPanel
      Left = 0
      Top = 0
      Width = 756
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        756
        52)
      object Label1: TLabel
        Left = 10
        Top = 13
        Width = 46
        Height = 18
        Caption = 'NOME:'
      end
      object Edt_Nome_Usuario: TEdit
        Left = 70
        Top = 9
        Width = 676
        Height = 26
        Anchors = [akLeft, akTop, akRight]
        BevelEdges = [beBottom]
        BevelKind = bkSoft
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        MaxLength = 75
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
        Text = 'NOME'
      end
    end
    object Pa_Consulta: TPanel
      Left = 0
      Top = 52
      Width = 756
      Height = 106
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Pa_ConsutaTop: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label3: TLabel
          Left = 2
          Top = 8
          Width = 87
          Height = 18
          Caption = 'CONSULTAS:'
        end
      end
      object Grp_Consutla: TGridPanel
        Left = 0
        Top = 25
        Width = 756
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 55.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 55.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label2
            Row = 0
          end
          item
            Column = 1
            Control = Trb_Cliente
            Row = 0
          end
          item
            Column = 2
            Control = La_Clientes
            Row = 0
          end
          item
            Column = 3
            Control = Label5
            Row = 0
          end
          item
            Column = 4
            Control = Trb_Fornecedores
            Row = 0
          end
          item
            Column = 5
            Control = La_Fornecedores
            Row = 0
          end
          item
            Column = 0
            Control = Label7
            Row = 1
          end
          item
            Column = 1
            Control = Trb_Grupos
            Row = 1
          end
          item
            Column = 2
            Control = La_Grupos
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Clientes:'
          Layout = tlBottom
          ExplicitWidth = 54
        end
        object Trb_Cliente: TTrackBar
          Left = 100
          Top = 0
          Width = 223
          Height = 24
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 0
          TickMarks = tmTopLeft
          OnChange = Trb_ClienteChange
        end
        object La_Clientes: TLabel
          Left = 323
          Top = 9
          Width = 55
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label5: TLabel
          Left = 378
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Fornecedores:'
          Layout = tlBottom
          ExplicitWidth = 93
        end
        object Trb_Fornecedores: TTrackBar
          Left = 478
          Top = 0
          Width = 223
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 1
          TickMarks = tmTopLeft
          OnChange = Trb_FornecedoresChange
        end
        object La_Fornecedores: TLabel
          Left = 701
          Top = 9
          Width = 55
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label7: TLabel
          Left = 0
          Top = 36
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Grupos:'
          Layout = tlBottom
          ExplicitWidth = 51
        end
        object Trb_Grupos: TTrackBar
          Left = 100
          Top = 27
          Width = 223
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 2
          TickMarks = tmTopLeft
          OnChange = Trb_GruposChange
        end
        object La_Grupos: TLabel
          Left = 323
          Top = 36
          Width = 55
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
      end
    end
    object Pa_Produtos: TPanel
      Left = 0
      Top = 230
      Width = 756
      Height = 106
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object Pa_ProdutosTop: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label4: TLabel
          Left = 2
          Top = 8
          Width = 82
          Height = 18
          Caption = 'PRODUTOS:'
        end
      end
      object Grp_Produtos: TGridPanel
        Left = 0
        Top = 25
        Width = 756
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 125.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 48.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label6
            Row = 0
          end
          item
            Column = 1
            Control = Trb_Produtos
            Row = 0
          end
          item
            Column = 2
            Control = La_Produtos
            Row = 0
          end
          item
            Column = 3
            Control = Label9
            Row = 0
          end
          item
            Column = 4
            Control = Trb_Produto_Estoques
            Row = 0
          end
          item
            Column = 5
            Control = La_Produto_Estoques
            Row = 0
          end
          item
            Column = 0
            Control = Label11
            Row = 1
          end
          item
            Column = 1
            Control = Trb_Produto_Precos
            Row = 1
          end
          item
            Column = 2
            Control = La_Produto_Precos
            Row = 1
          end
          item
            Column = 3
            Control = Label13
            Row = 1
          end
          item
            Column = 4
            Control = Trb_Produto_Manutencoes
            Row = 1
          end
          item
            Column = 5
            Control = La_Produto_Manutencoes
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        TabOrder = 1
        object Label6: TLabel
          Left = 0
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Produtos:'
          Layout = tlBottom
          ExplicitWidth = 62
        end
        object Trb_Produtos: TTrackBar
          Left = 100
          Top = 0
          Width = 191
          Height = 24
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 5
          Min = -1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 0
          TickMarks = tmTopLeft
          OnChange = Trb_ProdutosChange
        end
        object La_Produtos: TLabel
          Left = 291
          Top = 9
          Width = 125
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label9: TLabel
          Left = 416
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Estoque:'
          Layout = tlBottom
          ExplicitWidth = 57
        end
        object Trb_Produto_Estoques: TTrackBar
          Left = 516
          Top = 0
          Width = 191
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 1
          TickMarks = tmTopLeft
          OnChange = Trb_Produto_EstoquesChange
        end
        object La_Produto_Estoques: TLabel
          Left = 707
          Top = 9
          Width = 48
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label11: TLabel
          Left = 0
          Top = 36
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Pre'#231'os:'
          Layout = tlBottom
          ExplicitWidth = 48
        end
        object Trb_Produto_Precos: TTrackBar
          Left = 100
          Top = 27
          Width = 191
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 2
          TickMarks = tmTopLeft
          OnChange = Trb_Produto_PrecosChange
        end
        object La_Produto_Precos: TLabel
          Left = 291
          Top = 36
          Width = 125
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label13: TLabel
          Left = 416
          Top = 36
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Manuten'#231#245'es:'
          Layout = tlBottom
          ExplicitWidth = 92
        end
        object Trb_Produto_Manutencoes: TTrackBar
          Left = 516
          Top = 27
          Width = 191
          Height = 27
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 3
          TickMarks = tmTopLeft
          OnChange = Trb_Produto_ManutencoesChange
        end
        object La_Produto_Manutencoes: TLabel
          Left = 707
          Top = 36
          Width = 48
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
      end
    end
    object Pa_Usuarios: TPanel
      Left = 0
      Top = 158
      Width = 756
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label8: TLabel
          Left = 2
          Top = 8
          Width = 76
          Height = 18
          Caption = 'USU'#193'RIOS:'
        end
      end
      object GridPanel1: TGridPanel
        Left = 0
        Top = 25
        Width = 756
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 125.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 48.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label10
            Row = 0
          end
          item
            Column = 1
            Control = Trb_Usuarios
            Row = 0
          end
          item
            Column = 2
            Control = La_Usuarios
            Row = 0
          end
          item
            Column = 3
            Control = Label14
            Row = 0
          end
          item
            Column = 4
            Control = Trb_Permissoes
            Row = 0
          end
          item
            Column = 5
            Control = La_Permissoes
            Row = 0
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        object Label10: TLabel
          Left = 0
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Usu'#225'rios:'
          Layout = tlBottom
          ExplicitWidth = 60
        end
        object Trb_Usuarios: TTrackBar
          Left = 100
          Top = 0
          Width = 191
          Height = 24
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 5
          Min = -1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 0
          TickMarks = tmTopLeft
          OnChange = Trb_UsuariosChange
        end
        object La_Usuarios: TLabel
          Left = 291
          Top = 9
          Width = 125
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label14: TLabel
          Left = 416
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Permiss'#245'es:'
          Layout = tlBottom
          ExplicitWidth = 78
        end
        object Trb_Permissoes: TTrackBar
          Left = 516
          Top = 0
          Width = 191
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          Position = 1
          ShowSelRange = False
          TabOrder = 1
          TickMarks = tmTopLeft
          OnChange = Trb_PermissoesChange
        end
        object La_Permissoes: TLabel
          Left = 707
          Top = 9
          Width = 48
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
      end
    end
    object Pa_Locacoes: TPanel
      Left = 0
      Top = 336
      Width = 756
      Height = 106
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 4
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label12: TLabel
          Left = 2
          Top = 8
          Width = 77
          Height = 18
          Caption = 'LOCA'#199#213'ES:'
        end
      end
      object Grp_Locacoes: TGridPanel
        Left = 0
        Top = 25
        Width = 756
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 125.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 48.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label15
            Row = 0
          end
          item
            Column = 1
            Control = Trb_Locacao_Lancamento
            Row = 0
          end
          item
            Column = 2
            Control = La_Locacao_Lancamento
            Row = 0
          end
          item
            Column = 3
            Control = Label17
            Row = 0
          end
          item
            Column = 4
            Control = Trb_Locacao_Edicao
            Row = 0
          end
          item
            Column = 5
            Control = La_Locacao_Edicao
            Row = 0
          end
          item
            Column = 0
            Control = Label19
            Row = 1
          end
          item
            Column = 1
            Control = Trb_Locacao_Cancelamento
            Row = 1
          end
          item
            Column = 2
            Control = La_Locacao_Cancelamento
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        TabOrder = 1
        object Label15: TLabel
          Left = 0
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Lan'#231'amentos:'
          Layout = tlBottom
          ExplicitWidth = 92
        end
        object Trb_Locacao_Lancamento: TTrackBar
          Left = 100
          Top = 0
          Width = 191
          Height = 24
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          Min = -1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 0
          TickMarks = tmTopLeft
          OnChange = Trb_Locacao_LancamentoChange
        end
        object La_Locacao_Lancamento: TLabel
          Left = 291
          Top = 9
          Width = 125
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label17: TLabel
          Left = 416
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Edi'#231#227'o'
          Layout = tlBottom
          ExplicitWidth = 41
        end
        object Trb_Locacao_Edicao: TTrackBar
          Left = 516
          Top = 0
          Width = 191
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 1
          TickMarks = tmTopLeft
          OnChange = Trb_Locacao_EdicaoChange
        end
        object La_Locacao_Edicao: TLabel
          Left = 707
          Top = 9
          Width = 48
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label19: TLabel
          Left = 0
          Top = 36
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Cancelamento:'
          Layout = tlBottom
          ExplicitWidth = 97
        end
        object Trb_Locacao_Cancelamento: TTrackBar
          Left = 100
          Top = 27
          Width = 191
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 2
          TickMarks = tmTopLeft
          OnChange = Trb_Locacao_CancelamentoChange
        end
        object La_Locacao_Cancelamento: TLabel
          Left = 291
          Top = 36
          Width = 125
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
      end
    end
    object Pa_Relatorios: TPanel
      Left = 0
      Top = 442
      Width = 756
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 5
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label16: TLabel
          Left = 2
          Top = 8
          Width = 93
          Height = 18
          Caption = 'RELAT'#211'RIOS:'
        end
      end
      object Grp_Relatorios: TGridPanel
        Left = 0
        Top = 25
        Width = 756
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 55.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 55.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label18
            Row = 0
          end
          item
            Column = 1
            Control = Trb_Relatorios_Estoques
            Row = 0
          end
          item
            Column = 2
            Control = La_Relatorios_Estoques
            Row = 0
          end
          item
            Column = 3
            Control = Label21
            Row = 0
          end
          item
            Column = 4
            Control = Trb_Relatorios_Locacoes
            Row = 0
          end
          item
            Column = 5
            Control = La_Relatorios_Locacoes
            Row = 0
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        object Label18: TLabel
          Left = 0
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Produtos:'
          Layout = tlBottom
          ExplicitWidth = 62
        end
        object Trb_Relatorios_Estoques: TTrackBar
          Left = 100
          Top = 0
          Width = 223
          Height = 24
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          ShowSelRange = False
          TabOrder = 0
          TickMarks = tmTopLeft
          OnChange = Trb_Relatorios_EstoquesChange
        end
        object La_Relatorios_Estoques: TLabel
          Left = 323
          Top = 9
          Width = 55
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
        object Label21: TLabel
          Left = 378
          Top = 9
          Width = 100
          Height = 18
          Align = alBottom
          Caption = 'Loca'#231#245'es:'
          Layout = tlBottom
          ExplicitWidth = 65
        end
        object Trb_Relatorios_Locacoes: TTrackBar
          Left = 478
          Top = 0
          Width = 223
          Height = 26
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Ctl3D = True
          Max = 1
          ParentCtl3D = False
          PageSize = 1
          Position = 1
          ShowSelRange = False
          TabOrder = 1
          TickMarks = tmTopLeft
          OnChange = Trb_Relatorios_LocacoesChange
        end
        object La_Relatorios_Locacoes: TLabel
          Left = 701
          Top = 9
          Width = 55
          Height = 18
          Align = alBottom
          Caption = 'NAO'
          Layout = tlBottom
          ExplicitWidth = 30
        end
      end
    end
  end
end
