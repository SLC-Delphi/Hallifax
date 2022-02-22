object View_LocacoesConsulta: TView_LocacoesConsulta
  Left = 0
  Top = 0
  ActiveControl = Dbg_Dados
  AlphaBlend = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Locac'#245'es > Consulta'
  ClientHeight = 504
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
    Top = 24
    Width = 1008
    Height = 480
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
      480)
    object PaBottom: TPanel
      Left = 0
      Top = 0
      Width = 1008
      Height = 649
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Caption = 'PaBottom'
      Locked = True
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
      DesignSize = (
        1008
        649)
      object Pa_LocacoesBotoes: TPanel
        Left = 5
        Top = 428
        Width = 968
        Height = 45
        Anchors = [akLeft, akBottom]
        BevelOuter = bvNone
        Caption = 'Pa_ProdutosBotoes'
        ShowCaption = False
        TabOrder = 0
        object Pa_BotaoEncerrarParcial: TPanel
          Left = 540
          Top = 0
          Width = 145
          Height = 45
          Hint = 
            'Encerra uma loca'#231#227'o, mas n'#227'o encerra o financeiro, mantendo a su' +
            'a situa'#231#227'o de pagamento (N'#227'o Paga ou Parcialmente Paga).'
          BevelOuter = bvNone
          Color = 4734474
          ParentBackground = False
          ParentShowHint = False
          ShowCaption = False
          ShowHint = True
          TabOrder = 0
          object La_BotaoEncerrarParcial: TLabel
            Left = 0
            Top = 0
            Width = 145
            Height = 45
            Align = alClient
            Alignment = taCenter
            Caption = 'ENCERRAMENTO PARCIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitWidth = 133
            ExplicitHeight = 36
          end
          object SpBt_EncerrarParcial: TSpeedButton
            Left = 0
            Top = 0
            Width = 145
            Height = 45
            Cursor = crHandPoint
            Hint = 
              'Encerra uma loca'#231#227'o, mas n'#227'o encerra o financeiro, mantendo a su' +
              'a situa'#231#227'o de pagamento (N'#227'o Paga ou Parcialmente Paga).'
            Align = alClient
            Flat = True
            Margin = 0
            ParentShowHint = False
            ShowHint = True
            OnClick = SpBt_EncerrarParcialClick
            ExplicitLeft = 500
            ExplicitWidth = 125
            ExplicitHeight = 40
          end
        end
        object Pa_BotaoEditar: TPanel
          Left = 135
          Top = 0
          Width = 125
          Height = 45
          Hint = 
            'Ajusta valores, podendo adicionar ou remover produtos. Afeta som' +
            'ente loca'#231#245'es em Aberto e Novas.'
          BevelOuter = bvNone
          Color = 4734474
          ParentBackground = False
          ParentShowHint = False
          ShowCaption = False
          ShowHint = True
          TabOrder = 1
          object La_BotaoEditar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 45
            Align = alClient
            Alignment = taCenter
            Caption = 'EDITAR / AJUSTAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitWidth = 67
            ExplicitHeight = 36
          end
          object SpBtn_Editar: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 45
            Cursor = crHandPoint
            Hint = 
              'Ajusta valores, podendo adicionar ou remover produtos. Afeta som' +
              'ente loca'#231#245'es em Aberto e Novas.'
            Align = alClient
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpBtn_EditarClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoRenovar: TPanel
          Left = 270
          Top = 0
          Width = 125
          Height = 45
          Hint = 
            'Permite renovar totalmente ou parcialmente '#237'tens de uma loca'#231#227'o.' +
            ' Os '#237'tens n'#227'o renovados, ter'#227'o seus valores encerrados de acordo' +
            ' com a quantidade de dias que foram alocados. N'#195'O GERA FINANCEIR' +
            'O. Afeta somente loca'#231#245'es em Aberto, podendo ser novas ou renova' +
            'das e n'#227'o pagas.'
          BevelOuter = bvNone
          Color = 4734474
          ParentBackground = False
          ParentShowHint = False
          ShowCaption = False
          ShowHint = True
          TabOrder = 2
          object La_BotaoRenovar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 45
            Align = alClient
            Alignment = taCenter
            Caption = 'RENOVAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 72
            ExplicitHeight = 18
          end
          object spBtn_Renovar: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 45
            Cursor = crHandPoint
            Hint = 
              'Permite renovar totalmente ou parcialmente '#237'tens de uma loca'#231#227'o.' +
              ' Os '#237'tens n'#227'o renovados, ter'#227'o seus valores encerrados de acordo' +
              ' com a quantidade de dias que foram alocados. N'#195'O GERA FINANCEIR' +
              'O. Afeta somente loca'#231#245'es em Aberto, podendo ser novas ou renova' +
              'das e n'#227'o pagas.'
            Align = alClient
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = spBtn_RenovarClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoReceber: TPanel
          Left = 405
          Top = 0
          Width = 125
          Height = 45
          Hint = 
            'Recebe uma loca'#231#227'o, totalmente ou parcialmente. Recebimento tota' +
            'l '#233' a mesma coisa que Encerramento total. Recebimento parcial af' +
            'eta '#237'tens de uma loca'#231#227'o, onde os '#237'tens n'#227'o renovados, ter'#227'o seu' +
            's valores encerrados de acordo com a quantidade de dias que fora' +
            'm alocados. GERA FINANCEIRO, COM POSSIBILIDADE DE ENCERRAMENTO T' +
            'OTAL. Afeta somente loca'#231#245'es em Aberto, podendo ser novas ou ren' +
            'ovadas e parcialmente pagas.'
          BevelOuter = bvNone
          Color = 4734474
          ParentBackground = False
          ParentShowHint = False
          ShowCaption = False
          ShowHint = True
          TabOrder = 3
          object La_BotaoReceber: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 45
            Align = alClient
            Alignment = taCenter
            Caption = 'RECEBER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 74
            ExplicitHeight = 18
          end
          object spBtn_Receber: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 45
            Cursor = crHandPoint
            Hint = 
              'Recebe uma loca'#231#227'o, totalmente ou parcialmente. Recebimento tota' +
              'l '#233' a mesma coisa que Encerramento total. Recebimento parcial af' +
              'eta '#237'tens de uma loca'#231#227'o, onde os '#237'tens n'#227'o renovados, ter'#227'o seu' +
              's valores encerrados de acordo com a quantidade de dias que fora' +
              'm alocados. GERA FINANCEIRO, COM POSSIBILIDADE DE ENCERRAMENTO T' +
              'OTAL. Afeta somente loca'#231#245'es em Aberto, podendo ser novas ou ren' +
              'ovadas e parcialmente pagas.'
            Align = alClient
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = spBtn_ReceberClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
        object Pa_BotaoLancar: TPanel
          Left = 0
          Top = 0
          Width = 125
          Height = 45
          BevelOuter = bvNone
          Color = 4734474
          ParentBackground = False
          ShowCaption = False
          TabOrder = 4
          object La_BotaoLancar: TLabel
            Left = 0
            Top = 0
            Width = 125
            Height = 45
            Align = alClient
            Alignment = taCenter
            Caption = 'LAN'#199'AR LOCA'#199#195'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitWidth = 73
            ExplicitHeight = 36
          end
          object SpBt_Lancar: TSpeedButton
            Left = 0
            Top = 0
            Width = 125
            Height = 45
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
        object Pa_BotaoQuitar: TPanel
          Left = 695
          Top = 0
          Width = 145
          Height = 45
          Hint = 
            'Encerra uma loca'#231#227'o e tamb'#233'm o financeiro, quitando o que ainda ' +
            'est'#225' em aberto.'
          BevelOuter = bvNone
          Color = 4734474
          ParentBackground = False
          ParentShowHint = False
          ShowCaption = False
          ShowHint = True
          TabOrder = 5
          object La_BotaoQuitar: TLabel
            Left = 0
            Top = 0
            Width = 145
            Height = 45
            Align = alClient
            Alignment = taCenter
            Caption = 'ENCERRAMENTO TOTAL (QUITAR)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
            ExplicitWidth = 133
            ExplicitHeight = 36
          end
          object spBtn_BotaoQuitar: TSpeedButton
            Left = 0
            Top = 0
            Width = 145
            Height = 45
            Cursor = crHandPoint
            Hint = 
              'Encerra uma loca'#231#227'o e tamb'#233'm o financeiro, quitando o que ainda ' +
              'est'#225' em aberto.'
            Align = alClient
            Flat = True
            Margin = 0
            ParentShowHint = False
            ShowHint = True
            OnClick = spBtn_BotaoQuitarClick
            ExplicitLeft = 500
            ExplicitWidth = 125
            ExplicitHeight = 40
          end
        end
        object Pa_BotaoCancelar: TPanel
          Left = 850
          Top = 0
          Width = 100
          Height = 45
          Hint = 
            'Cancela uma Loca'#231#227'o (em aberto) desde que esta ainda n'#227'o tenha s' +
            'ido renovada e/ou n'#227'o tenha feito movimenta'#231#227'o financeira.'
          BevelOuter = bvNone
          Color = 15801
          ParentBackground = False
          ParentShowHint = False
          ShowCaption = False
          ShowHint = True
          TabOrder = 6
          object La_BotaoCancelar: TLabel
            Left = 0
            Top = 0
            Width = 100
            Height = 45
            Align = alClient
            Alignment = taCenter
            Caption = 'CANCELAR'
            Color = 15801
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 81
            ExplicitHeight = 18
          end
          object SpBt_Cancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 45
            Cursor = crHandPoint
            Hint = 
              'Cancela uma Loca'#231#227'o (em aberto) desde que esta ainda n'#227'o tenha s' +
              'ido renovada e/ou n'#227'o tenha feito movimenta'#231#227'o financeira.'
            Align = alClient
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpBt_CancelarClick
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
      end
      object BitBtn1: TBitBtn
        Left = 7
        Top = 449
        Width = 66
        Height = 19
        Anchors = [akLeft, akBottom]
        Caption = 'Teste Tela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
    object Pa_Top: TPanel
      Left = 0
      Top = 62
      Width = 1008
      Height = 187
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pa_Top'
      Color = 6316032
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 3
    end
    object Dbg_Dados: TDBGrid
      Left = 6
      Top = 64
      Width = 995
      Height = 350
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      Color = 4209204
      Ctl3D = False
      DrawingStyle = gdsClassic
      FixedColor = 9531136
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      PopupMenu = Ppm_Locacoes
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
      Left = 0
      Top = 0
      Width = 1008
      Height = 41
      Margins.Left = 6
      Align = alTop
      BevelOuter = bvNone
      Caption = 'GridPanel_Filtro'
      Color = 6316032
      ColumnCollection = <
        item
          Value = 18.000000000000000000
        end
        item
          Value = 42.000000000000000000
        end
        item
          Value = 15.000000000000000000
        end
        item
          Value = 25.000000000000000000
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
          Control = Cb_Periodo
          Row = 0
        end
        item
          Column = 3
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
        1008
        41)
      object La_Titulo: TLabel
        Left = 0
        Top = 0
        Width = 181
        Height = 41
        Margins.Left = 6
        Align = alClient
        Caption = ' LOCA'#199#213'ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 141
        ExplicitHeight = 29
      end
      object Edt_Filtro: TEdit
        Left = 191
        Top = 8
        Width = 403
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
      object Cb_Periodo: TComboBox
        Left = 607
        Top = 8
        Width = 145
        Height = 25
        BevelEdges = [beBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        Anchors = []
        ItemIndex = 0
        ParentColor = True
        TabOrder = 2
        Text = 'SEMESTRAL'
        OnChange = Cb_OrdenarChange
        OnClick = Cb_OrdenarChange
        OnEnter = Cb_OrdenarEnter
        OnExit = Cb_OrdenarExit
        Items.Strings = (
          'SEMESTRAL'
          'ANUAL'
          'TODOS')
      end
      object Cb_Ordenar: TComboBox
        Left = 771
        Top = 8
        Width = 220
        Height = 25
        BevelEdges = [beBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        Anchors = []
        ItemIndex = 0
        ParentColor = True
        TabOrder = 1
        Text = 'Data de Loca'#231#227'o e Cliente'
        OnChange = Cb_OrdenarChange
        OnClick = Cb_OrdenarChange
        OnEnter = Cb_OrdenarEnter
        OnExit = Cb_OrdenarExit
        Items.Strings = (
          'Data de Loca'#231#227'o e Cliente'
          'Cliente e Data de Loca'#231#227'o')
      end
    end
    object Pa_TopSituacaoPagamento: TPanel
      Left = 0
      Top = 41
      Width = 1008
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pa_Top'
      Color = 6316032
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 4
      object Label2: TLabel
        Left = 28
        Top = 1
        Width = 64
        Height = 17
        Caption = 'N'#227'o Paga'
      end
      object Label3: TLabel
        Left = 127
        Top = 1
        Width = 124
        Height = 17
        Caption = 'Parcialmente Paga'
      end
      object Label4: TLabel
        Left = 293
        Top = 2
        Width = 109
        Height = 17
        Caption = 'Totalmente Paga'
      end
      object Rb_NaoPaga: TRadioButton
        Left = 10
        Top = 1
        Width = 16
        Height = 17
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object Rb_ParcialmentePaga: TRadioButton
        Left = 109
        Top = 1
        Width = 16
        Height = 17
        TabOrder = 1
        OnClick = Cb_OrdenarChange
      end
      object Rb_TotalmentePaga: TRadioButton
        Left = 275
        Top = 2
        Width = 16
        Height = 17
        TabOrder = 2
        OnClick = Cb_OrdenarChange
      end
    end
  end
  object Pa_Top0: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Pa_Top'
    Color = 6316032
    Locked = True
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object La_AcessaProdutos: TLabel
      Left = 28
      Top = 5
      Width = 117
      Height = 17
      Caption = 'Em Aberto e Nova'
    end
    object La_AcessaManutencao: TLabel
      Left = 191
      Top = 5
      Width = 150
      Height = 17
      Caption = 'Em Aberto e Renovada'
    end
    object Label1: TLabel
      Left = 375
      Top = 5
      Width = 68
      Height = 17
      Caption = 'Encerrada'
    end
    object Rb_AbertoNova: TRadioButton
      Left = 10
      Top = 6
      Width = 16
      Height = 17
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = Rb_AbertoNovaClick
    end
    object Rb_AbertoRenovada: TRadioButton
      Left = 172
      Top = 6
      Width = 16
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 1
      OnClick = Rb_AbertoRenovadaClick
    end
    object Rb_Encerrada: TRadioButton
      Left = 356
      Top = 5
      Width = 16
      Height = 17
      Caption = 'Rb_Encerrada'
      TabOrder = 2
      OnClick = Rb_EncerradaClick
    end
  end
  object Ppm_Locacoes: TPopupMenu
    Left = 88
    Top = 141
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
      OnClick = Visualizar1Click
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      OnClick = Relatrio1Click
    end
    object Contrato1: TMenuItem
      Caption = 'Contrato'
      OnClick = Contrato1Click
    end
  end
end
