object View_ProdutosEstoque: TView_ProdutosEstoque
  Left = 0
  Top = 64
  Caption = 'Cadastros > Produtos e Estoque > Estoqwue'
  ClientHeight = 326
  ClientWidth = 784
  Color = 5657424
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 1100
  Constraints.MinHeight = 365
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Pa_DadosEstoque: TPanel
    Left = 14
    Top = 61
    Width = 756
    Height = 196
    Margins.Left = 9
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    BorderWidth = 6
    Color = 4209204
    Locked = True
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Pa_Estoque: TPanel
      Left = 6
      Top = 125
      Width = 744
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentColor = True
      TabOrder = 0
      object Grp_Estoque: TGridPanel
        Left = 3
        Top = 3
        Width = 738
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 24.776013004638130000
          end
          item
            Value = 2.348888192922016000
          end
          item
            Value = 22.776013004638130000
          end
          item
            Value = 2.348888192922016000
          end
          item
            Value = 21.054570265312500000
          end
          item
            Value = 2.335703100532414000
          end
          item
            Value = 24.359924239034790000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label7
            Row = 0
          end
          item
            Column = 1
            Control = Label14
            Row = 1
          end
          item
            Column = 0
            Control = Label10
            Row = 0
          end
          item
            Column = 0
            Control = Ed_ESTOQUE_TOTAL
            Row = 1
          end
          item
            Column = 2
            Control = Label2
            Row = 0
          end
          item
            Column = 3
            Control = Label4
            Row = 0
          end
          item
            Column = 4
            Control = Label5
            Row = 0
          end
          item
            Column = 2
            Control = Ed_QUANTIDADE_ALOCADA
            Row = 1
          end
          item
            Column = 3
            Control = Label6
            Row = 1
          end
          item
            Column = 4
            Control = Ed_QUANTDADE_MANUTENCAO
            Row = 1
          end
          item
            Column = 5
            Control = Label8
            Row = 0
          end
          item
            Column = 6
            Control = Label9
            Row = 0
          end
          item
            Column = 5
            Control = Label11
            Row = 1
          end
          item
            Column = 6
            Control = Ed_ESTOQUE_DISPONIVEL
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 48.000000000000000000
          end
          item
            Value = 52.000000000000000000
          end>
        TabOrder = 0
        object Label7: TLabel
          Left = 182
          Top = 0
          Width = 17
          Height = 25
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label14: TLabel
          Left = 182
          Top = 25
          Width = 17
          Height = 29
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label10: TLabel
          Left = 0
          Top = 0
          Width = 182
          Height = 25
          Align = alClient
          Caption = 'Estoque Total:'
          Layout = tlCenter
          ExplicitWidth = 95
          ExplicitHeight = 18
        end
        object Ed_ESTOQUE_TOTAL: TEdit
          Left = 0
          Top = 25
          Width = 182
          Height = 29
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          NumbersOnly = True
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = '123456789012389'
          OnExit = Ed_ESTOQUE_TOTALExit
        end
        object Label2: TLabel
          Left = 199
          Top = 0
          Width = 168
          Height = 25
          Align = alClient
          Caption = ' -  Quantidade Alocada:'
          Layout = tlCenter
          ExplicitWidth = 154
          ExplicitHeight = 18
        end
        object Label4: TLabel
          Left = 367
          Top = 0
          Width = 17
          Height = 25
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label5: TLabel
          Left = 384
          Top = 0
          Width = 155
          Height = 25
          Align = alClient
          Caption = ' - Em Manuten'#231#227'o:'
          Layout = tlCenter
          ExplicitWidth = 126
          ExplicitHeight = 18
        end
        object Ed_QUANTIDADE_ALOCADA: TEdit
          Left = 199
          Top = 25
          Width = 168
          Height = 29
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          Enabled = False
          MaxLength = 15
          NumbersOnly = True
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
          Text = '123456789012389'
        end
        object Label6: TLabel
          Left = 367
          Top = 25
          Width = 17
          Height = 29
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Ed_QUANTDADE_MANUTENCAO: TEdit
          Left = 384
          Top = 25
          Width = 155
          Height = 29
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          Enabled = False
          MaxLength = 15
          NumbersOnly = True
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 2
          Text = '123456789012389'
        end
        object Label8: TLabel
          Left = 539
          Top = 0
          Width = 17
          Height = 25
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label9: TLabel
          Left = 556
          Top = 0
          Width = 182
          Height = 25
          Align = alClient
          Caption = ' = Estoque Disponivel:'
          Layout = tlCenter
          ExplicitWidth = 146
          ExplicitHeight = 18
        end
        object Label11: TLabel
          Left = 539
          Top = 25
          Width = 17
          Height = 29
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Ed_ESTOQUE_DISPONIVEL: TEdit
          Left = 556
          Top = 25
          Width = 182
          Height = 29
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          Enabled = False
          MaxLength = 15
          NumbersOnly = True
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
          Text = '123456789012389'
        end
      end
    end
    object Pa_Marca: TPanel
      Left = 6
      Top = 70
      Width = 744
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 2
      ParentColor = True
      TabOrder = 1
      object Grp_Marca: TGridPanel
        Left = 2
        Top = 2
        Width = 740
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 3
        ColumnCollection = <
          item
            Value = 7.083505057800033000
          end
          item
            Value = 1.548608249036670000
          end
          item
            Value = 91.367886693163300000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label55
            Row = 0
          end
          item
            Column = 0
            Control = Label3
            Row = 0
          end
          item
            Column = 2
            Control = Ed_MARCA
            Row = 0
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        object Label55: TLabel
          Left = 54
          Top = 3
          Width = 11
          Height = 22
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label3: TLabel
          Left = 3
          Top = 3
          Width = 45
          Height = 22
          Align = alLeft
          Caption = 'Marca:'
          Layout = tlCenter
          ExplicitHeight = 18
        end
        object Ed_MARCA: TEdit
          Left = 65
          Top = 3
          Width = 672
          Height = 24
          Align = alTop
          BevelEdges = [beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = True
          Enabled = False
          MaxLength = 79
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = 'MARCA'
        end
      end
    end
    object Pa_Nome: TPanel
      Left = 6
      Top = 6
      Width = 744
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        744
        64)
      object Label1: TLabel
        Left = 4
        Top = 13
        Width = 55
        Height = 18
        Caption = 'Produto:'
      end
      object Edt_PRODUTO: TEdit
        Left = 67
        Top = 9
        Width = 666
        Height = 26
        Anchors = [akLeft, akTop, akRight]
        BevelEdges = [beBottom]
        BevelKind = bkSoft
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Ctl3D = True
        MaxLength = 79
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
        Text = 'NOME'
      end
    end
  end
end
