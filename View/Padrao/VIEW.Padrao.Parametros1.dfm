object View_Parametros1: TView_Parametros1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'View_Parametros1'
  ClientHeight = 326
  ClientWidth = 720
  Color = 3947580
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clCream
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 41
    Align = alTop
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ParentColor = True
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 716
      Height = 37
      Align = alClient
      Caption = ' Par'#226'metros do Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 251
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 720
    Height = 236
    Align = alClient
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ParentBackground = False
    ParentColor = True
    ShowCaption = False
    TabOrder = 1
    ExplicitHeight = 262
    DesignSize = (
      716
      232)
    object Label2: TLabel
      Left = 7
      Top = 13
      Width = 280
      Height = 19
      Caption = '\\IP do Servidor\Local Banco de Dados:'
    end
    object Label4: TLabel
      Left = 8
      Top = 55
      Width = 195
      Height = 19
      Caption = 'Acesso ao Banco de Dados:'
    end
    object Label5: TLabel
      Left = 110
      Top = 90
      Width = 96
      Height = 19
      Caption = 'Cor Principal:'
    end
    object Label6: TLabel
      Left = 105
      Top = 125
      Width = 97
      Height = 19
      Caption = 'Cor Consulta:'
    end
    object Label7: TLabel
      Left = 95
      Top = 160
      Width = 105
      Height = 19
      Caption = 'Cor Cadastros:'
    end
    object Label8: TLabel
      Left = 107
      Top = 195
      Width = 92
      Height = 19
      Caption = 'Cor Loca'#231#227'o:'
    end
    object Edt_IPDoServidor: TEdit
      Left = 293
      Top = 8
      Width = 416
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      MaxLength = 96
      ParentColor = True
      TabOrder = 0
    end
    object Cb_DriverBancoDeDados: TComboBox
      Left = 215
      Top = 48
      Width = 145
      Height = 27
      ItemIndex = 0
      ParentColor = True
      TabOrder = 1
      Text = 'FD'
      Items.Strings = (
        'FD'
        'IB')
    end
    object Cb_ParametroCorPrincipal: TComboBox
      Left = 215
      Top = 84
      Width = 145
      Height = 27
      ImeMode = imHanguel
      ItemIndex = 2
      ParentColor = True
      TabOrder = 2
      Text = 'DARK'
      Items.Strings = (
        'WHITE'
        'LIGHT'
        'DARK')
    end
    object Cb_ParametroCorConsulta: TComboBox
      Left = 215
      Top = 118
      Width = 145
      Height = 27
      ItemIndex = 2
      ParentColor = True
      TabOrder = 3
      Text = 'DARK'
      Items.Strings = (
        'WHITE'
        'LIGHT'
        'DARK')
    end
    object Cb_ParametroCorCadastros: TComboBox
      Left = 215
      Top = 153
      Width = 145
      Height = 27
      ItemIndex = 2
      ParentColor = True
      TabOrder = 4
      Text = 'DARK'
      Items.Strings = (
        'WHITE'
        'LIGHT'
        'DARK')
    end
    object Cb_ParametroCorLocacao: TComboBox
      Left = 215
      Top = 188
      Width = 145
      Height = 27
      ItemIndex = 2
      ParentColor = True
      TabOrder = 5
      Text = 'DARK'
      Items.Strings = (
        'WHITE'
        'LIGHT'
        'DARK')
    end
    object Mem_Parametros: TMemo
      Left = 0
      Top = 250
      Width = 707
      Height = 205
      Lines.Strings = (
        'Mem_Parametros')
      TabOrder = 6
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 277
    Width = 720
    Height = 49
    Align = alBottom
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = 'Panel1'
    ParentColor = True
    ShowCaption = False
    TabOrder = 2
    ExplicitTop = 303
    DesignSize = (
      716
      45)
    object Pa_BotaoCancelar: TPanel
      Left = 586
      Top = 5
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
        ExplicitLeft = 5
      end
    end
    object Pa_BotaoGravar: TPanel
      Left = 458
      Top = 5
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
        ExplicitLeft = -6
      end
    end
  end
end
