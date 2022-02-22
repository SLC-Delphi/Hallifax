object View_ProdutosDados: TView_ProdutosDados
  Left = 0
  Top = 64
  Caption = 'Cadastros > Produtos e Estoque > Produtos'
  ClientHeight = 486
  ClientWidth = 919
  Color = 5657424
  Constraints.MaxHeight = 545
  Constraints.MaxWidth = 1280
  Constraints.MinHeight = 525
  Constraints.MinWidth = 920
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
    Width = 891
    Height = 356
    Margins.Left = 9
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'Pa_DadosUsuario'
    Color = 4209204
    Locked = True
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Pa_Descricao: TPanel
      Left = 0
      Top = 209
      Width = 891
      Height = 149
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
      DesignSize = (
        891
        149)
      object Label4: TLabel
        Left = 4
        Top = 4
        Width = 67
        Height = 18
        Caption = 'Descri'#231#227'o:'
      end
      object Label6: TLabel
        Left = 5
        Top = 114
        Width = 160
        Height = 18
        Caption = 'Data da '#218'ltima Loca'#231#227'o:'
      end
      object Mem_Descricao: TMemo
        Left = 5
        Top = 28
        Width = 880
        Height = 83
        Anchors = [akLeft, akTop, akRight]
        BevelEdges = [beLeft, beRight, beBottom]
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Lines.Strings = (
          'MEMO1')
        MaxLength = 510
        ParentColor = True
        TabOrder = 0
      end
      object Edt_DATA_ULTIMA_LOCACAO: TEdit
        Left = 181
        Top = 114
        Width = 100
        Height = 26
        TabStop = False
        BevelEdges = [beBottom]
        BevelKind = bkSoft
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Enabled = False
        ParentColor = True
        TabOrder = 1
        Text = '01/01/2001'
      end
    end
    object Pa_DadosEFotos: TPanel
      Left = 0
      Top = 0
      Width = 891
      Height = 209
      Align = alTop
      ParentColor = True
      TabOrder = 1
      object Pa_Foto: TPanel
        Left = 1
        Top = 1
        Width = 233
        Height = 207
        Align = alLeft
        ParentColor = True
        TabOrder = 0
        object Img_PRODUTO: TImage
          Left = 9
          Top = 10
          Width = 217
          Height = 167
          Proportional = True
          Stretch = True
        end
        object BBT_FOTOLOGO: TBitBtn
          Left = 1
          Top = 182
          Width = 110
          Height = 25
          Caption = 'Foto do produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4863488
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BBT_FOTOLOGOClick
        end
        object BBT_LimparImagem: TButton
          Left = 115
          Top = 182
          Width = 110
          Height = 25
          Caption = 'Limpar Imagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BBT_LimparImagemClick
        end
      end
      object Pa_DadosBasicos: TPanel
        Left = 234
        Top = 1
        Width = 656
        Height = 207
        Align = alClient
        ParentColor = True
        TabOrder = 1
        object Pa_GrupoMarca: TPanel
          Left = 1
          Top = 127
          Width = 654
          Height = 72
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          ParentColor = True
          TabOrder = 2
          object Grp_GrupoMarca: TGridPanel
            Left = 2
            Top = 2
            Width = 650
            Height = 54
            Align = alTop
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 49.000000000000000000
              end
              item
                Value = 2.000000000000000000
              end
              item
                Value = 49.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label10
                Row = 0
              end
              item
                Column = 1
                Control = Label7
                Row = 0
              end
              item
                Column = 2
                Control = Label8
                Row = 0
              end
              item
                Column = 1
                Control = Label14
                Row = 1
              end
              item
                Column = 0
                Control = Cb_Grupo
                Row = 1
              end
              item
                Column = 2
                Control = Cb_Fornecedor
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
            object Label10: TLabel
              Left = 0
              Top = 0
              Width = 318
              Height = 25
              Align = alClient
              Caption = 'Grupo:'
              Layout = tlCenter
              ExplicitWidth = 44
              ExplicitHeight = 18
            end
            object Label7: TLabel
              Left = 318
              Top = 0
              Width = 13
              Height = 25
              Align = alClient
              Layout = tlCenter
              ExplicitWidth = 5
              ExplicitHeight = 18
            end
            object Label8: TLabel
              Left = 331
              Top = 0
              Width = 319
              Height = 25
              Align = alClient
              Caption = 'Fornecedor:'
              Layout = tlCenter
              ExplicitWidth = 78
              ExplicitHeight = 18
            end
            object Label14: TLabel
              Left = 318
              Top = 25
              Width = 13
              Height = 29
              Align = alClient
              Layout = tlCenter
              ExplicitWidth = 5
              ExplicitHeight = 18
            end
            object Cb_Grupo: TComboBox
              Left = 0
              Top = 25
              Width = 318
              Height = 26
              Cursor = crHandPoint
              Align = alClient
              BevelEdges = [beRight, beBottom]
              BevelInner = bvSpace
              BevelKind = bkSoft
              BevelOuter = bvRaised
              CharCase = ecUpperCase
              Ctl3D = True
              DropDownCount = 15
              MaxLength = 79
              ParentColor = True
              ParentCtl3D = False
              TabOrder = 0
            end
            object Cb_Fornecedor: TComboBox
              Left = 331
              Top = 25
              Width = 319
              Height = 26
              Cursor = crHandPoint
              Align = alClient
              BevelEdges = [beRight, beBottom]
              BevelInner = bvSpace
              BevelKind = bkSoft
              BevelOuter = bvRaised
              CharCase = ecUpperCase
              Ctl3D = True
              DropDownCount = 15
              MaxLength = 79
              ParentColor = True
              ParentCtl3D = False
              TabOrder = 1
            end
          end
        end
        object Pa_Unidade: TPanel
          Left = 1
          Top = 54
          Width = 654
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          ParentColor = True
          TabOrder = 1
          object Grp_Marca: TGridPanel
            Left = 2
            Top = 2
            Width = 650
            Height = 54
            Align = alTop
            BevelOuter = bvNone
            ColumnCollection = <
              item
                Value = 14.141414141414140000
              end
              item
                Value = 1.010101010101012000
              end
              item
                Value = 59.595959595959600000
              end
              item
                Value = 1.010101010101012000
              end
              item
                Value = 24.242424242424230000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label2
                Row = 0
              end
              item
                Column = 1
                Control = Label55
                Row = 0
              end
              item
                Column = 2
                Control = Label3
                Row = 0
              end
              item
                Column = 3
                Control = Label56
                Row = 0
              end
              item
                Column = 4
                Control = Label5
                Row = 0
              end
              item
                Column = 0
                Control = Cb_UNIDADE
                Row = 1
              end
              item
                Column = 1
                Control = Label11
                Row = 1
              end
              item
                Column = 2
                Control = Cb_MARCA
                Row = 1
              end
              item
                Column = 3
                Control = Label9
                Row = 1
              end
              item
                Column = 4
                Control = Edt_CODIGO_DE_BARRAS
                Row = 1
              end>
            ParentColor = True
            RowCollection = <
              item
                Value = 50.000000000000000000
              end
              item
                Value = 50.000000000000000000
              end
              item
                SizeStyle = ssAuto
              end>
            TabOrder = 0
            object Label2: TLabel
              Left = 0
              Top = 0
              Width = 91
              Height = 27
              Align = alClient
              Caption = 'Unidade:'
              Layout = tlCenter
              ExplicitWidth = 57
              ExplicitHeight = 18
            end
            object Label55: TLabel
              Left = 91
              Top = 0
              Width = 6
              Height = 27
              Align = alClient
              Layout = tlCenter
              ExplicitWidth = 5
              ExplicitHeight = 18
            end
            object Label3: TLabel
              Left = 97
              Top = 0
              Width = 387
              Height = 27
              Align = alClient
              Caption = 'Marca:'
              Layout = tlCenter
              ExplicitWidth = 45
              ExplicitHeight = 18
            end
            object Label56: TLabel
              Left = 484
              Top = 0
              Width = 6
              Height = 27
              Align = alClient
              Layout = tlCenter
              ExplicitWidth = 5
              ExplicitHeight = 18
            end
            object Label5: TLabel
              Left = 490
              Top = 0
              Width = 160
              Height = 27
              Align = alClient
              Caption = 'C'#243'digo de Barra:'
              Layout = tlCenter
              ExplicitWidth = 109
              ExplicitHeight = 18
            end
            object Cb_UNIDADE: TComboBox
              Left = 0
              Top = 27
              Width = 91
              Height = 26
              Cursor = crHandPoint
              Hint = 
                'Unidade (Embalagem) de venda/comercializa'#231#227'o ou uso do referido ' +
                'produto (mat'#233'ria prima)'
              Align = alClient
              BevelEdges = [beBottom]
              BevelInner = bvSpace
              BevelKind = bkFlat
              BevelOuter = bvRaised
              CharCase = ecUpperCase
              Ctl3D = True
              DropDownCount = 22
              ItemIndex = 0
              MaxLength = 7
              ParentColor = True
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = 'UNID'
              Items.Strings = (
                'UNID'
                'PCTE'
                'CAIXA'
                'CRTLA'
                'FRASCO'
                'FARDO'
                'CJTO'
                'XILIN'
                'PECA'
                'REFIL'
                'ROLO'
                '-----'
                'BARRA'
                'POTE'
                '-----'
                'PAR'
                'TRIO'
                'QUADRA'
                'DEZENA'
                'CENTENA'
                'DUZIA'
                'GROSA'
                '-----'
                'FOLHA'
                'RESMA'
                'MILHR'
                '----'
                'MGR'
                'GR'
                'KG'
                'TON'
                '-----'
                'LATA'
                'GL'
                'L'
                'ML'
                '-----'
                'MM'
                'CM'
                'DM'
                'M'
                '-----'
                'MM2'
                'CM2'
                'M2'
                '-----'
                'CM3'
                'M3')
            end
            object Label11: TLabel
              Left = 91
              Top = 27
              Width = 6
              Height = 27
              Align = alClient
              Layout = tlCenter
              ExplicitWidth = 5
              ExplicitHeight = 18
            end
            object Cb_MARCA: TComboBox
              Left = 97
              Top = 27
              Width = 387
              Height = 26
              Cursor = crHandPoint
              Align = alClient
              BevelEdges = [beRight, beBottom]
              BevelInner = bvSpace
              BevelKind = bkSoft
              BevelOuter = bvRaised
              CharCase = ecUpperCase
              Ctl3D = True
              DropDownCount = 15
              MaxLength = 79
              ParentColor = True
              ParentCtl3D = False
              TabOrder = 1
            end
            object Label9: TLabel
              Left = 484
              Top = 27
              Width = 6
              Height = 27
              Align = alClient
              Layout = tlCenter
              ExplicitWidth = 5
              ExplicitHeight = 18
            end
            object Edt_CODIGO_DE_BARRAS: TEdit
              Left = 490
              Top = 27
              Width = 160
              Height = 27
              Align = alClient
              BevelEdges = [beBottom]
              BevelKind = bkSoft
              BevelOuter = bvNone
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Ctl3D = False
              MaxLength = 15
              NumbersOnly = True
              ParentColor = True
              ParentCtl3D = False
              TabOrder = 2
              Text = '123456789012389'
            end
          end
        end
        object Pa_Nome: TPanel
          Left = 1
          Top = 1
          Width = 654
          Height = 53
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            654
            53)
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
            Width = 580
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
  end
  object Opd_FotoProduto: TOpenPictureDialog
    InitialDir = 'C:\'
    Left = 27
    Top = 205
  end
end
