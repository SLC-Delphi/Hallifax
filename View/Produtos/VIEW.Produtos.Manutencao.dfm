object View_ProdutosManutencao: TView_ProdutosManutencao
  Left = 0
  Top = 64
  Caption = 'Cadastros > Produtos e Estoque > Manuten'#231#227'o'
  ClientHeight = 326
  ClientWidth = 779
  Color = 5657424
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 1100
  Constraints.MinHeight = 365
  Constraints.MinWidth = 795
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
  object Pa_DadosManutencao: TPanel
    Left = 14
    Top = 61
    Width = 751
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
      Width = 739
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentColor = True
      TabOrder = 0
      object Grp_Estoque: TGridPanel
        Left = 3
        Top = 3
        Width = 733
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 28.211777455527590000
          end
          item
            Value = 2.302831561688251000
          end
          item
            Value = 20.368640200625620000
          end
          item
            Value = 2.302831561688251000
          end
          item
            Value = 24.563304181678920000
          end
          item
            Value = 2.289905000521975000
          end
          item
            Value = 19.960710038269400000
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
            Control = Edt_Quantidade
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
            Column = 3
            Control = Label6
            Row = 1
          end
          item
            Column = 4
            Control = Edt_QUANTDADE_DEVOLVIDA
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
            Column = 2
            Control = Medt_DATA_INICIAL
            Row = 1
          end
          item
            Column = 6
            Control = Medt_DATA_ENCERRAMENTO
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
          Left = 206
          Top = 0
          Width = 16
          Height = 25
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label14: TLabel
          Left = 206
          Top = 25
          Width = 16
          Height = 29
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label10: TLabel
          Left = 0
          Top = 0
          Width = 206
          Height = 25
          Align = alClient
          Caption = 'Quantidade em Manuten'#231#227'o'
          Layout = tlCenter
          ExplicitWidth = 185
          ExplicitHeight = 18
        end
        object Edt_Quantidade: TEdit
          Left = 0
          Top = 25
          Width = 206
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
          OnExit = Edt_QuantidadeExit
        end
        object Label2: TLabel
          Left = 222
          Top = 0
          Width = 149
          Height = 25
          Align = alClient
          Caption = 'Data Inicial:'
          Layout = tlCenter
          ExplicitWidth = 76
          ExplicitHeight = 18
        end
        object Label4: TLabel
          Left = 371
          Top = 0
          Width = 16
          Height = 25
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label5: TLabel
          Left = 387
          Top = 0
          Width = 180
          Height = 25
          Align = alClient
          Caption = 'Quantidade Devolvida:'
          Layout = tlCenter
          ExplicitWidth = 146
          ExplicitHeight = 18
        end
        object Label6: TLabel
          Left = 371
          Top = 25
          Width = 16
          Height = 29
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Edt_QUANTDADE_DEVOLVIDA: TEdit
          Left = 387
          Top = 25
          Width = 180
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
          TabOrder = 1
          Text = '123456789012389'
        end
        object Label8: TLabel
          Left = 567
          Top = 0
          Width = 16
          Height = 25
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label9: TLabel
          Left = 583
          Top = 0
          Width = 150
          Height = 25
          Align = alClient
          Caption = 'Data Encerramento:'
          Layout = tlCenter
          ExplicitWidth = 132
          ExplicitHeight = 18
        end
        object Label11: TLabel
          Left = 567
          Top = 25
          Width = 16
          Height = 29
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Medt_DATA_INICIAL: TMaskEdit
          Left = 222
          Top = 25
          Width = 149
          Height = 29
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '!00/00/0000;1;-'
          MaxLength = 10
          ParentColor = True
          TabOrder = 2
          Text = '  /  /    '
        end
        object Medt_DATA_ENCERRAMENTO: TMaskEdit
          Left = 583
          Top = 25
          Width = 150
          Height = 29
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          EditMask = '!00/00/0000;1;-'
          MaxLength = 10
          ParentColor = True
          TabOrder = 3
          Text = '  /  /    '
        end
      end
    end
    object Pa_Marca: TPanel
      Left = 6
      Top = 70
      Width = 739
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 2
      ParentColor = True
      TabOrder = 1
      object Grp_Marca: TGridPanel
        Left = 2
        Top = 2
        Width = 735
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 3
        ColumnCollection = <
          item
            Value = 6.594843840665458000
          end
          item
            Value = 1.069370597562557000
          end
          item
            Value = 47.223331067998500000
          end
          item
            Value = 2.773391287671470000
          end
          item
            Value = 18.817365754198850000
          end
          item
            Value = 1.024115627156060000
          end
          item
            Value = 22.497581824747100000
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
            Control = Edt_MARCA
            Row = 0
          end
          item
            Column = 3
            Control = Label12
            Row = 0
          end
          item
            Column = 4
            Control = Label13
            Row = 0
          end
          item
            Column = 5
            Control = Label15
            Row = 0
          end
          item
            Column = 0
            Row = 0
          end
          item
            Column = 6
            Control = Edt_ESTOQUE_DISPONIVEL
            Row = 0
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        object Label55: TLabel
          Left = 51
          Top = 3
          Width = 7
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
        object Edt_MARCA: TEdit
          Left = 58
          Top = 3
          Width = 344
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
        object Label12: TLabel
          Left = 402
          Top = 3
          Width = 20
          Height = 22
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label13: TLabel
          Left = 422
          Top = 3
          Width = 137
          Height = 22
          Align = alClient
          Alignment = taRightJustify
          Caption = 'Estoque Disponivel:'
          Layout = tlCenter
          ExplicitLeft = 434
          ExplicitWidth = 125
          ExplicitHeight = 18
        end
        object Label15: TLabel
          Left = 559
          Top = 3
          Width = 7
          Height = 22
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Edt_ESTOQUE_DISPONIVEL: TEdit
          Left = 566
          Top = 3
          Width = 166
          Height = 22
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beBottom]
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
      end
    end
    object Pa_Nome: TPanel
      Left = 6
      Top = 6
      Width = 739
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        739
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
        Width = 661
        Height = 26
        Anchors = [akLeft, akTop, akRight]
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
        Text = 'NOME'
      end
    end
  end
end
