object VIEW_LocacoesMovimentacao: TVIEW_LocacoesMovimentacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 
    'Loca'#231#245'es > Loca'#231#245'es >[nome da opera'#231#227'o definida em tempo de exec' +
    'u'#231#227'o ]'
  ClientHeight = 676
  ClientWidth = 1056
  Color = 5657424
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clCream
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object Pa_Principal: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 676
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    Caption = 'Pa_Principal'
    ParentBackground = False
    ParentColor = True
    ShowCaption = False
    TabOrder = 0
    object Pa_Top1: TPanel
      Left = 0
      Top = 48
      Width = 2450
      Height = 135
      BevelOuter = bvNone
      Color = 6316032
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 3
    end
    object Pa_Gravar: TPanel
      Left = 764
      Top = 621
      Width = 280
      Height = 50
      Align = alCustom
      Anchors = [akRight, akBottom]
      BevelOuter = bvNone
      Color = 4209204
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      DesignSize = (
        280
        50)
      object Pa_BotaoGravar: TPanel
        Left = 10
        Top = 8
        Width = 125
        Height = 36
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Caption = 'Pa_BotaoGravar'
        Color = 6303744
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        object La_BotaoGravar: TLabel
          Left = 34
          Top = 0
          Width = 91
          Height = 36
          Align = alClient
          Alignment = taCenter
          Caption = 'GRAVAR'
          Layout = tlCenter
          ExplicitWidth = 63
          ExplicitHeight = 19
        end
        object SpBt_Gravar: TSpeedButton
          Left = 34
          Top = 0
          Width = 91
          Height = 36
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          Margin = 0
          OnClick = SpBt_GravarClick
          ExplicitLeft = -2
          ExplicitWidth = 140
          ExplicitHeight = 40
        end
        object Image1: TImage
          Left = 0
          Top = 0
          Width = 34
          Height = 36
          Cursor = crUpArrow
          Margins.Left = 5
          Align = alLeft
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
            00240806000000E10098980000000970485973000000F0000000F001EB4BEE00
            000005614944415478DACD987B6C14451CC7BFFBB8DBDDDEF538FAB0D0F6D212
            8AA514FB30428208A544129296123001F54F223D058C412244438C0F82200255
            20F440F40F23BE82484B213506624C69A9055ADEA15A300D50B948D196DE5D7B
            BBEB6FAF0FD8BBEDB16D8EA4BFCB66676667673EFB7BCDCC31AAAA622C093366
            81188631F542F6EE1A87C0C925D47D3E55F3E9CAA4CB39F0F81E5D37C0A0192A
            734251949A0BAB167799197788C32C505EE5D12759281BA8F78B548D33F9C13D
            2A986F5855DDDAFC5A596B4C8072DFF95EE25CE287F4F80DAAF2A3B203D00715
            15EC13F1EF9E7BA1D83F6AA082BD555314E0477A347D94203AA1191A947196A5
            BF2CC8CF64C0E78E73380F58AD56D5145081E748A1AA32B5544C8E05CCA0CC48
            717A37CFCE76B02C04D2DA01C7B8F1E504A54405D234A332A88B35CCB4C4786C
            9B930D91E71E34AAF882A0565A2C16C510A8F0D04951F17635A03F82622653C7
            DBF171510E6C3CAB6BA74844A0B7AF293DCD35C310286F6FD527545C174B982C
            A71DDB8BA6C26EE174ED419960FC7E6D6ED9E5CAE02380B4D066A05CC2E8A329
            4226396DD831371B0EABC51086F295CA5958775AAA6B7F04504165D501AAAD88
            154CBA5DC2CEE2694810F4DF3708A34DFDF9A5F69B9B4AE6A64738F5D43DC71C
            222FDF4694A4976C13E1BDEF871999689350312F0749925E338A22C3E70B8460
            3EFDBD15C76F74A8429C2DAD79D5D2DB3AA0FCCAEA974849078D066735A77A66
            32166624E270DB1DEC397B1DD156C06449C0AEF9B974D7C3C8A4199FAFFF8376
            365E43EDF5DBE0780B38415AD1B27AC9973AA0024FB566C3578C60D6CFCCC202
            57C2505BCD5FFFA0A2E94F28060B73A24D4045512E52E3A2C09C6945ED1FB7C0
            491278ABA425CC7DE7DC8BDCE1408D749B113EC1AEE21CE424C447244E232827
            69448371D9853018193D0330DB1AAEE244BB1716D106D662EDF71BCAE004342B
            1CC84BB7A470A09F164E0F69292E4E24287D0E394E503B06A01C561E3BE7E522
            D321EAFAF40565F8FDFD305BEA2EE3D75B7761B5D107B2BA1470A7D9BD28251C
            2840376B38D0F31949783D6722340549920896D5439D68EFC467CD6DD8469A99
            120623CB4182091030F051FD15FC76B313163BC12062DD0C1090680A28043529
            096BB22780A59F1427444075F7C911494F3393A6190D6633C19CF2768317240C
            130D864086261B94A2F404AC9D9E1A329F208AE03976B8AE4330B4386353DD25
            9CBEEB1FF29761C4C06495D5A7499333A3BDF5309424699AE222FAC89ACF04FA
            F3CC070D57D0D419207373D1863576EAFC7D472BA9E2C623644E5A02D63D3500
            251214F760B26050F399DE5079134553E3BD5E237F891095613C2DE5A5AFEA80
            0A3DD5CBA9F4ED23DF26792ED589B7F25CA1B2E6E81C996F1046A5DFC6535771
            B12B08983C3FD03677598BBBF4071DD0ACAF7EB6F97A021D54B49B19642E41BD
            99971E2A0B161E81BE60A8BCF1542B2EFE173047D22FF7B9A06FC299D5CBBA75
            40038BAB876AE566477A76A2131BF25D21AD84604EB7E16267CF48603407DADF
            E22E2B37DC31E67A6A26F3AA7C19C384BF9114243BB038331107AF75A0F55FDF
            C860805EF29F9CF3EE456DC36E61494B5BA865C348471E8DA80AB69C5F55F676
            A83C1CD0ECC34785EEBF957A2A163E669E7A7B0A5B5CB7A43410154813CD749C
            22D75153CA638269A7C89C79766569C790B61E750CCAABACCA275FAD7D0C50ED
            0CCB963497975E78B8D1D44171C0C90F217627907AD2CCD287353322204DB463
            91EAED7A8F7AADC508A22F4CB4F4BD9D7CE6FD419F1935D0A03CED3992258359
            4F667C99AA369320F769D4AF1586D9AA8576B48E23061A02DBFD9D5DE1A5129A
            A4985E2EA0A649D0FF1DA36DB8CFD15EEE24DBE73B7676CDF26E33E346008D15
            197340FF034FA08CD79C88DBA80000000049454E44AE426082}
          Stretch = True
          OnClick = SpBt_GravarClick
          ExplicitLeft = -6
        end
      end
      object Pa_BotaoCancelar: TPanel
        Left = 148
        Top = 8
        Width = 125
        Height = 36
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Caption = 'Pa_BotaoNovo'
        Color = 10312
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 1
        object La_BotaoCancelar: TLabel
          Left = 34
          Top = 0
          Width = 91
          Height = 36
          Align = alClient
          Alignment = taCenter
          Caption = 'CANCELAR'
          Layout = tlCenter
          ExplicitWidth = 80
          ExplicitHeight = 19
        end
        object SpBt_Cancelar: TSpeedButton
          Left = 34
          Top = 0
          Width = 91
          Height = 36
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          Margin = 0
          OnClick = SpBt_CancelarClick
          ExplicitLeft = -2
          ExplicitWidth = 140
          ExplicitHeight = 40
        end
        object Image3: TImage
          Left = 0
          Top = 0
          Width = 34
          Height = 36
          Cursor = crUpArrow
          Margins.Left = 5
          Align = alLeft
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
            00240806000000E10098980000000970485973000000EC000000EC01792871BD
            000003164944415478DACD98CB4F144110C60B56418C28185F51C14531DECC8A
            26BE5D892E27C3CDBFD29B4781100514437C907831F10181A851A3A08928EAAC
            DF675787A69999F4CECE245BC9975D9899EEDF567555574F5BBD5E9756B2B696
            057A79BB37F49971683FB417EA86BAA0ED7AED37B4067D87BE409FA09B21839E
            BAF3B561A02968003A049502E1FF42EFA1B7D0B5BC80C6A041E818EFF7AEF1E1
            7515BF77A8DA63EE5B805E40A3CD003D80CE40BB9CFF312C1FA08F62C23212F3
            0338D83EE808B4CDB9B6023D8786B3003D84CEEA2FB6EE5F54F707AD0B31EB8D
            9E3DEE78ED27F414BADC08103D73DE81F9A1835C0D04F16D06AA403B1DA859D7
            53694074F905274CBCF3197423238CE8E4F4B61FBE39D190A701312465C733B3
            39C344B211BED76212261188A9CDD8329BB8661E49F630C5C1B02EBD12B31CDA
            750ECE399C04B42C2633686FA01339C330C34614CA8EBD04F5C7013123AE8B29
            7A4C6D2EECD06C6A0486C6B9AA7A9D5E9A0450CD079AC7C76997BA20186B8BCE
            1CF300AAF8408438AA373C81CE1508439B73E65806509F0FC434DC23A6CC8F27
            0C92170C8DE585D9CB045A05508F0FF44B4C21E4E78E8261ACADE95CEB00EAF4
            81B8B8988ADFD45359613E8B2917A301CFAE42BBA10840A53C809A81119DAB3B
            09C8868CFB4C570698D030B966E78C0D99BBA827A05AC13077A15B6216F50A80
            7A7DA0D0B4CF03C6CE31A4DF9700D4EF03B9859145AB5C20CC7F08C701B185D1
            DD3AFE40F765F3D691270C9704376D1E0E12B70E9F9A1BE0C9026068DCB807F4
            3B37F4BEA4DD9E1BEA15310B2D529052CE30D3D045312526D2BFAB690D9A4BCF
            06AD2347980985B16585CD20FBEDD48E91E9C8F8F67883E50133E48C1BDCC2D2
            26C5F4D5764FA36B1F439732C24C2B8CF54C434DBEB5191DC485A28B1724BC71
            A357187E1E859A3A06B99EAAC8E6F0B124BC137350A4DBFD8ACE90B30D3E001D
            948D73BF0D53E683A2B57B62165E59B69EE9F930F7231EA599994C80CE983122
            F52C4F19B16B30CBCB067A8B8DF96169FC650333B79A766316206BECF4ECEB18
            F6325CA8B62C309C6CBAD856D8D731B59041B700B58AB51CD03FB214A8C88073
            C8C70000000049454E44AE426082}
          OnClick = SpBt_CancelarClick
          ExplicitLeft = 5
        end
      end
    end
    object Pa_Top: TPanel
      Left = 0
      Top = 0
      Width = 1056
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pa_Top'
      Color = 6513408
      Locked = True
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      object La_Titulo: TLabel
        Left = 6
        Top = 12
        Width = 118
        Height = 24
        Caption = 'LOCA'#199#213'ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Pa_Dados: TPanel
      Left = 14
      Top = 45
      Width = 1028
      Height = 569
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Caption = 'Pa_Dados'
      Color = 4209204
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object Pa_Cliente: TPanel
        Left = 0
        Top = 0
        Width = 1028
        Height = 170
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 3
        ParentColor = True
        TabOrder = 0
        object Grp_Cliente2_Endereco: TGridPanel
          Left = 3
          Top = 44
          Width = 1022
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 78.200389938974080000
            end
            item
              Value = 1.510602824886285000
            end
            item
              Value = 19.788505421354340000
            end
            item
              Value = 0.500501814785274800
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
              Column = 2
              Control = Label2
              Row = 0
            end
            item
              Column = 2
              Control = Edt_NUMEND_ENTREGA
              Row = 1
            end
            item
              Column = 3
              Control = Label1
              Row = 0
            end
            item
              Column = 0
              Control = Edt_Endereco_Entrega
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
            Left = 799
            Top = 0
            Width = 15
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label14: TLabel
            Left = 799
            Top = 19
            Width = 15
            Height = 22
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label10: TLabel
            Left = 0
            Top = 0
            Width = 799
            Height = 19
            Align = alClient
            Caption = 'Endere'#231'o de Entrega'
            Layout = tlCenter
            ExplicitWidth = 136
            ExplicitHeight = 18
          end
          object Label2: TLabel
            Left = 814
            Top = 0
            Width = 202
            Height = 19
            Align = alClient
            Caption = 'N'#250'mero'
            Layout = tlCenter
            ExplicitWidth = 52
            ExplicitHeight = 18
          end
          object Edt_NUMEND_ENTREGA: TEdit
            Left = 814
            Top = 19
            Width = 202
            Height = 22
            Align = alClient
            Alignment = taCenter
            BevelEdges = [beLeft, beRight, beBottom]
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Ctl3D = False
            Enabled = False
            MaxLength = 14
            NumbersOnly = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            Text = '123456789012389'
          end
          object Label1: TLabel
            Left = 1016
            Top = 0
            Width = 6
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Edt_Endereco_Entrega: TEdit
            Left = 0
            Top = 19
            Width = 799
            Height = 22
            Align = alClient
            Alignment = taCenter
            BevelEdges = [beLeft, beRight, beBottom]
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Ctl3D = False
            Enabled = False
            MaxLength = 79
            NumbersOnly = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            Text = '123456789012389'
          end
        end
        object Grp_Cliente1: TGridPanel
          Left = 3
          Top = 3
          Width = 1022
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 19.614531353115510000
            end
            item
              Value = 1.510602824886285000
            end
            item
              Value = 78.374364007212930000
            end
            item
              Value = 0.500501814785274800
            end>
          ControlCollection = <
            item
              Column = 1
              Control = Label3
              Row = 0
            end
            item
              Column = 1
              Control = Label4
              Row = 1
            end
            item
              Column = 0
              Control = Label5
              Row = 0
            end
            item
              Column = 2
              Control = Label6
              Row = 0
            end
            item
              Column = 2
              Control = EDT_CLIENTE
              Row = 1
            end
            item
              Column = 3
              Control = Label8
              Row = 0
            end
            item
              Column = 0
              Control = Medt_DATA_LOCACAO
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
          TabOrder = 1
          object Label3: TLabel
            Left = 200
            Top = 0
            Width = 15
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label4: TLabel
            Left = 200
            Top = 19
            Width = 15
            Height = 22
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label5: TLabel
            Left = 0
            Top = 0
            Width = 200
            Height = 19
            Align = alClient
            Caption = 'Data da Locac'#231#227'o:'
            Layout = tlCenter
            ExplicitWidth = 122
            ExplicitHeight = 18
          end
          object Label6: TLabel
            Left = 215
            Top = 0
            Width = 800
            Height = 19
            Align = alClient
            Caption = 'Cliente:'
            Layout = tlCenter
            ExplicitWidth = 47
            ExplicitHeight = 18
          end
          object EDT_CLIENTE: TEdit
            Left = 215
            Top = 19
            Width = 800
            Height = 22
            Align = alClient
            Alignment = taCenter
            BevelEdges = [beLeft, beRight, beBottom]
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Ctl3D = False
            Enabled = False
            MaxLength = 79
            NumbersOnly = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            Text = '123456789012389'
          end
          object Label8: TLabel
            Left = 1015
            Top = 0
            Width = 7
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Medt_DATA_LOCACAO: TMaskEdit
            Left = 0
            Top = 19
            Width = 200
            Height = 22
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
            TabOrder = 1
            Text = '  /  /    '
          end
        end
        object Grp_Cliente3_CIdade: TGridPanel
          Left = 3
          Top = 85
          Width = 1022
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 48.907460646044800000
            end
            item
              Value = 1.510602824886285000
            end
            item
              Value = 49.081434714283640000
            end
            item
              Value = 0.500501814785274800
            end>
          ControlCollection = <
            item
              Column = 1
              Control = Label9
              Row = 0
            end
            item
              Column = 1
              Control = Label11
              Row = 1
            end
            item
              Column = 0
              Control = Label12
              Row = 0
            end
            item
              Column = 2
              Control = Label13
              Row = 0
            end
            item
              Column = 2
              Control = Edt_CIDADE_ENTREGA
              Row = 1
            end
            item
              Column = 3
              Control = Label15
              Row = 0
            end
            item
              Column = 0
              Control = Edt_BAIRRO_ENTREGA
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
          TabOrder = 2
          object Label9: TLabel
            Left = 499
            Top = 0
            Width = 15
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label11: TLabel
            Left = 499
            Top = 19
            Width = 15
            Height = 22
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label12: TLabel
            Left = 0
            Top = 0
            Width = 499
            Height = 19
            Align = alClient
            Caption = 'Bairro'
            Layout = tlCenter
            ExplicitWidth = 37
            ExplicitHeight = 18
          end
          object Label13: TLabel
            Left = 514
            Top = 0
            Width = 501
            Height = 19
            Align = alClient
            Caption = 'Cidade'
            Layout = tlCenter
            ExplicitWidth = 43
            ExplicitHeight = 18
          end
          object Edt_CIDADE_ENTREGA: TEdit
            Left = 514
            Top = 19
            Width = 501
            Height = 22
            Align = alClient
            Alignment = taCenter
            BevelEdges = [beLeft, beRight, beBottom]
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Ctl3D = False
            Enabled = False
            MaxLength = 14
            NumbersOnly = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            Text = '123456789012389'
          end
          object Label15: TLabel
            Left = 1015
            Top = 0
            Width = 7
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Edt_BAIRRO_ENTREGA: TEdit
            Left = 0
            Top = 19
            Width = 499
            Height = 22
            Align = alClient
            Alignment = taCenter
            BevelEdges = [beLeft, beRight, beBottom]
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Ctl3D = False
            Enabled = False
            MaxLength = 79
            NumbersOnly = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            Text = '123456789012389'
          end
        end
        object Grp_Cliente4_Contato: TGridPanel
          Left = 3
          Top = 126
          Width = 1022
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 68.099379837963980000
            end
            item
              Value = 1.510602824886285000
            end
            item
              Value = 29.889515522364440000
            end
            item
              Value = 0.500501814785274700
            end>
          ControlCollection = <
            item
              Column = 1
              Control = Label16
              Row = 0
            end
            item
              Column = 1
              Control = Label17
              Row = 1
            end
            item
              Column = 0
              Control = Label18
              Row = 0
            end
            item
              Column = 2
              Control = Label19
              Row = 0
            end
            item
              Column = 2
              Control = Edt_FONE_CONTATO_ENTREGA
              Row = 1
            end
            item
              Column = 3
              Control = Label20
              Row = 0
            end
            item
              Column = 0
              Control = Edt_CONTATO_ENTREGA
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
          TabOrder = 3
          object Label16: TLabel
            Left = 695
            Top = 0
            Width = 15
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label17: TLabel
            Left = 695
            Top = 19
            Width = 15
            Height = 22
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Label18: TLabel
            Left = 0
            Top = 0
            Width = 695
            Height = 19
            Align = alClient
            Caption = 'Contato de Entrega'
            Layout = tlCenter
            ExplicitWidth = 127
            ExplicitHeight = 18
          end
          object Label19: TLabel
            Left = 710
            Top = 0
            Width = 305
            Height = 19
            Align = alClient
            Caption = 'Fone do Contato:'
            Layout = tlCenter
            ExplicitWidth = 114
            ExplicitHeight = 18
          end
          object Edt_FONE_CONTATO_ENTREGA: TEdit
            Left = 710
            Top = 19
            Width = 305
            Height = 22
            Align = alClient
            Alignment = taCenter
            BevelEdges = [beLeft, beRight, beBottom]
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Ctl3D = False
            Enabled = False
            MaxLength = 14
            NumbersOnly = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 0
            Text = '123456789012389'
          end
          object Label20: TLabel
            Left = 1015
            Top = 0
            Width = 7
            Height = 19
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 5
            ExplicitHeight = 18
          end
          object Edt_CONTATO_ENTREGA: TEdit
            Left = 0
            Top = 19
            Width = 695
            Height = 22
            Align = alClient
            Alignment = taCenter
            BevelEdges = [beLeft, beRight, beBottom]
            BevelKind = bkSoft
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Ctl3D = False
            Enabled = False
            MaxLength = 79
            NumbersOnly = True
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            Text = '123456789012389'
          end
        end
      end
      object Pa_Itens: TPanel
        Left = 0
        Top = 170
        Width = 1028
        Height = 273
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Pa_Itens'
        Padding.Top = 3
        Padding.Bottom = 3
        TabOrder = 1
        object PageControl1: TPageControl
          Left = 0
          Top = 3
          Width = 1028
          Height = 267
          ActivePage = Tbs_ItensNovosENaoRecebidos
          Align = alClient
          MultiLine = True
          TabOrder = 0
          object Tbs_ItensNovosENaoRecebidos: TTabSheet
            Caption = 'Lan'#231'ar '#205'tens e Itens N'#227'o Recebidos'
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 1020
              Height = 234
              Align = alClient
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = 3617325
              ParentBackground = False
              TabOrder = 0
              object Grp_ItensProdutos: TGridPanel
                Left = 0
                Top = 0
                Width = 1016
                Height = 51
                Align = alTop
                BevelOuter = bvNone
                ColumnCollection = <
                  item
                    Value = 46.190003290506690000
                  end
                  item
                    Value = 1.910932938373764000
                  end
                  item
                    Value = 15.307726918539530000
                  end
                  item
                    Value = 1.910932938373764000
                  end
                  item
                    Value = 12.962233697568860000
                  end
                  item
                    Value = 1.900206234813027000
                  end
                  item
                    Value = 19.817963981824360000
                  end>
                ControlCollection = <
                  item
                    Column = 1
                    Control = Label21
                    Row = 0
                  end
                  item
                    Column = 1
                    Control = Label22
                    Row = 1
                  end
                  item
                    Column = 0
                    Control = Label23
                    Row = 0
                  end
                  item
                    Column = 0
                    Control = Ed_ESTOQUE_TOTAL
                    Row = 1
                  end
                  item
                    Column = 2
                    Control = Label24
                    Row = 0
                  end
                  item
                    Column = 3
                    Control = Label25
                    Row = 0
                  end
                  item
                    Column = 4
                    Control = Label26
                    Row = 0
                  end
                  item
                    Column = 2
                    Control = Ed_QUANTIDADE_ALOCADA
                    Row = 1
                  end
                  item
                    Column = 3
                    Control = Label27
                    Row = 1
                  end
                  item
                    Column = 4
                    Control = Ed_QUANTDADE_MANUTENCAO
                    Row = 1
                  end
                  item
                    Column = 5
                    Control = Label28
                    Row = 0
                  end
                  item
                    Column = 6
                    Control = Label29
                    Row = 0
                  end
                  item
                    Column = 5
                    Control = Label30
                    Row = 1
                  end
                  item
                    Column = 6
                    Control = Ed_ESTOQUE_DISPONIVEL
                    Row = 1
                  end>
                Padding.Left = 1
                Padding.Top = 1
                Padding.Right = 1
                Padding.Bottom = 3
                ParentColor = True
                RowCollection = <
                  item
                    Value = 48.000000000000000000
                  end
                  item
                    Value = 52.000000000000000000
                  end>
                TabOrder = 0
                object Label21: TLabel
                  Left = 470
                  Top = 2
                  Width = 17
                  Height = 18
                  Align = alClient
                  Layout = tlCenter
                  ExplicitWidth = 5
                end
                object Label22: TLabel
                  Left = 470
                  Top = 24
                  Width = 17
                  Height = 21
                  Align = alClient
                  Layout = tlCenter
                  ExplicitWidth = 5
                  ExplicitHeight = 18
                end
                object Label23: TLabel
                  Left = 2
                  Top = 2
                  Width = 466
                  Height = 18
                  Align = alClient
                  Caption = 'Produto:'
                  Layout = tlCenter
                  ExplicitWidth = 55
                end
                object Ed_ESTOQUE_TOTAL: TEdit
                  Left = 2
                  Top = 24
                  Width = 466
                  Height = 21
                  Align = alClient
                  Alignment = taCenter
                  BevelEdges = [beLeft, beRight, beBottom]
                  BevelKind = bkSoft
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Ctl3D = False
                  MaxLength = 79
                  NumbersOnly = True
                  ParentColor = True
                  ParentCtl3D = False
                  TabOrder = 0
                  Text = '123456789012389'
                end
                object Label24: TLabel
                  Left = 489
                  Top = 2
                  Width = 153
                  Height = 18
                  Align = alClient
                  Caption = 'x Quantidade'
                  Layout = tlCenter
                  ExplicitWidth = 87
                end
                object Label25: TLabel
                  Left = 644
                  Top = 2
                  Width = 17
                  Height = 18
                  Align = alClient
                  Layout = tlCenter
                  ExplicitWidth = 5
                end
                object Label26: TLabel
                  Left = 663
                  Top = 2
                  Width = 129
                  Height = 18
                  Align = alClient
                  Caption = 'x N'#250'mero de dias'
                  Layout = tlCenter
                  ExplicitWidth = 116
                end
                object Ed_QUANTIDADE_ALOCADA: TEdit
                  Left = 489
                  Top = 24
                  Width = 153
                  Height = 21
                  Align = alClient
                  Alignment = taCenter
                  BevelEdges = [beLeft, beRight, beBottom]
                  BevelKind = bkSoft
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Ctl3D = False
                  Enabled = False
                  MaxLength = 9
                  NumbersOnly = True
                  ParentColor = True
                  ParentCtl3D = False
                  TabOrder = 1
                  Text = '123456789'
                end
                object Label27: TLabel
                  Left = 644
                  Top = 24
                  Width = 17
                  Height = 21
                  Align = alClient
                  Layout = tlCenter
                  ExplicitWidth = 5
                  ExplicitHeight = 18
                end
                object Ed_QUANTDADE_MANUTENCAO: TEdit
                  Left = 663
                  Top = 24
                  Width = 129
                  Height = 21
                  Align = alClient
                  Alignment = taCenter
                  BevelEdges = [beLeft, beRight, beBottom]
                  BevelKind = bkSoft
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Ctl3D = False
                  Enabled = False
                  MaxLength = 5
                  NumbersOnly = True
                  ParentColor = True
                  ParentCtl3D = False
                  TabOrder = 2
                  Text = '12345'
                end
                object Label28: TLabel
                  Left = 794
                  Top = 2
                  Width = 17
                  Height = 18
                  Align = alClient
                  Layout = tlCenter
                  ExplicitWidth = 5
                end
                object Label29: TLabel
                  Left = 813
                  Top = 2
                  Width = 201
                  Height = 18
                  Align = alClient
                  Caption = ' = Valor Loca'#231#227'o:'
                  Layout = tlCenter
                  ExplicitWidth = 116
                end
                object Label30: TLabel
                  Left = 794
                  Top = 24
                  Width = 17
                  Height = 21
                  Align = alClient
                  Layout = tlCenter
                  ExplicitWidth = 5
                  ExplicitHeight = 18
                end
                object Ed_ESTOQUE_DISPONIVEL: TEdit
                  Left = 813
                  Top = 24
                  Width = 201
                  Height = 21
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
              object Dbg_Itens: TDBGrid
                Left = 0
                Top = 51
                Width = 1016
                Height = 179
                Align = alClient
                BorderStyle = bsNone
                Color = 4209204
                Ctl3D = False
                DrawingStyle = gdsClassic
                FixedColor = clTeal
                Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentCtl3D = False
                PopupMenu = Ppm_ItensNaoPagos
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clCream
                TitleFont.Height = -15
                TitleFont.Name = 'Tahoma'
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
                  end>
              end
            end
          end
          object Tbs_Frete: TTabSheet
            Caption = 'Frete'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1020
              Height = 234
              Align = alClient
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = 2960685
              ParentBackground = False
              TabOrder = 0
              object DBGrid1: TDBGrid
                Left = 0
                Top = 55
                Width = 1016
                Height = 175
                Align = alClient
                BorderStyle = bsNone
                Color = 4209204
                Ctl3D = False
                DrawingStyle = gdsClassic
                FixedColor = clTeal
                Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentCtl3D = False
                PopupMenu = Ppm_Frete
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clCream
                TitleFont.Height = -15
                TitleFont.Name = 'Tahoma'
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
                  end>
              end
              object Grp_Frete: TGridPanel
                Left = 0
                Top = 0
                Width = 1016
                Height = 55
                Align = alTop
                BevelOuter = bvNone
                ColumnCollection = <
                  item
                    Value = 68.007584261834960000
                  end
                  item
                    Value = 2.813551062289696000
                  end
                  item
                    Value = 29.178864675875340000
                  end>
                ControlCollection = <
                  item
                    Column = 0
                    Control = Label33
                    Row = 0
                  end
                  item
                    Column = 0
                    Control = Edit1
                    Row = 1
                  end
                  item
                    Column = 2
                    Control = Label39
                    Row = 0
                  end
                  item
                    Column = 2
                    Control = Edit4
                    Row = 1
                  end>
                Padding.Left = 1
                Padding.Top = 1
                Padding.Right = 1
                Padding.Bottom = 2
                ParentColor = True
                RowCollection = <
                  item
                    Value = 48.000000000000000000
                  end
                  item
                    Value = 52.000000000000000000
                  end>
                TabOrder = 1
                object Label33: TLabel
                  Left = 2
                  Top = 2
                  Width = 104
                  Height = 18
                  Align = alClient
                  Caption = 'Local destinado:'
                  Layout = tlCenter
                end
                object Edit1: TEdit
                  Left = 2
                  Top = 26
                  Width = 687
                  Height = 25
                  Align = alClient
                  Alignment = taCenter
                  BevelEdges = [beLeft, beRight, beBottom]
                  BevelKind = bkSoft
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Ctl3D = False
                  MaxLength = 95
                  NumbersOnly = True
                  ParentColor = True
                  ParentCtl3D = False
                  TabOrder = 0
                  Text = '123456789012389'
                end
                object Label39: TLabel
                  Left = 719
                  Top = 2
                  Width = 76
                  Height = 18
                  Align = alClient
                  Caption = 'Valor Frete:'
                  Layout = tlCenter
                end
                object Edit4: TEdit
                  Left = 719
                  Top = 26
                  Width = 295
                  Height = 25
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
              end
            end
          end
          object Tbs_ItensRecebidos: TTabSheet
            Caption = 'Itens Recebidos'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 1020
              Height = 234
              Align = alClient
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Color = 4079166
              ParentBackground = False
              TabOrder = 0
              object Dbg_ItensPagos: TDBGrid
                Left = 0
                Top = 0
                Width = 1016
                Height = 230
                Align = alClient
                BorderStyle = bsNone
                Color = 4209204
                Ctl3D = False
                DrawingStyle = gdsClassic
                FixedColor = clTeal
                Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentCtl3D = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clCream
                TitleFont.Height = -15
                TitleFont.Name = 'Tahoma'
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
                  end>
              end
            end
          end
        end
      end
      object Pa_Somatoria: TPanel
        Left = 0
        Top = 443
        Width = 1028
        Height = 126
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsSingle
        ParentColor = True
        TabOrder = 2
        object Pa_SomatoriaDados: TPanel
          Left = 698
          Top = 0
          Width = 326
          Height = 122
          Align = alRight
          Caption = 'Pa_SomatoriaDados'
          ParentColor = True
          ShowCaption = False
          TabOrder = 0
          object Label31: TLabel
            Left = 82
            Top = 7
            Width = 96
            Height = 18
            Alignment = taRightJustify
            Caption = 'Total Loca'#231#227'o:'
          end
          object Label32: TLabel
            Left = 77
            Top = 37
            Width = 101
            Height = 18
            Alignment = taRightJustify
            Caption = 'Total Recebido:'
          end
          object Label34: TLabel
            Left = 69
            Top = 67
            Width = 109
            Height = 18
            Alignment = taRightJustify
            Caption = 'Total '#224' Receber:'
          end
          object Label35: TLabel
            Left = 8
            Top = 95
            Width = 170
            Height = 18
            Alignment = taRightJustify
            Caption = 'Data '#218'ltimo Recebimento:'
          end
          object Edt_TOTAL_LOCACAO: TEdit
            Left = 184
            Top = 3
            Width = 135
            Height = 26
            Alignment = taRightJustify
            BevelEdges = [beRight, beBottom]
            BevelInner = bvNone
            BevelKind = bkTile
            BorderStyle = bsNone
            ParentColor = True
            TabOrder = 0
            Text = '123456,789'
          end
          object Edt_TOTAL_RECEBIDO: TEdit
            Left = 184
            Top = 34
            Width = 135
            Height = 26
            Alignment = taRightJustify
            BevelEdges = [beRight, beBottom]
            BevelInner = bvNone
            BevelKind = bkTile
            BorderStyle = bsNone
            ParentColor = True
            TabOrder = 1
            Text = '123456,789'
          end
          object Edt_TOTAL_A_RECEBER: TEdit
            Left = 184
            Top = 61
            Width = 135
            Height = 26
            Alignment = taRightJustify
            BevelEdges = [beRight, beBottom]
            BevelInner = bvNone
            BevelKind = bkTile
            BorderStyle = bsNone
            ParentColor = True
            TabOrder = 2
            Text = '123456,789'
          end
          object Medt_DATA_ULTIMO_PGTO: TMaskEdit
            Left = 184
            Top = 93
            Width = 135
            Height = 22
            Align = alCustom
            Alignment = taCenter
            BevelEdges = [beRight, beBottom]
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
    end
  end
  object Ppm_ItensNaoPagos: TPopupMenu
    Left = 144
    Top = 5
    object Visualizar1: TMenuItem
      Caption = 'Editar N'#250'mero de dias'
    end
    object Relatrio1: TMenuItem
      Caption = 'Receber '#237'tem'
    end
    object Contrato1: TMenuItem
      Caption = 'Excluir '#237'tem'
    end
  end
  object Ppm_Frete: TPopupMenu
    Left = 184
    Top = 5
    object MenuItem3: TMenuItem
      Caption = 'Excluir Frete'
    end
  end
end
