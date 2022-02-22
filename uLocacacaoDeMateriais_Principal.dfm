object _Frm_Principal: T_Frm_Principal
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  ClientHeight = 617
  ClientWidth = 1261
  Color = 5657424
  Constraints.MinHeight = 640
  Constraints.MinWidth = 1260
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Pa_Topo: TPanel
    Left = 0
    Top = 0
    Width = 1261
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Topo'
    Color = 1052688
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 1244
    object La_NomeSistema: TLabel
      Left = 2
      Top = 6
      Width = 224
      Height = 32
      Caption = 'Halifax Loca'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GridPanel_Filtro: TGridPanel
      Left = 711
      Top = 0
      Width = 550
      Height = 48
      Align = alRight
      BevelOuter = bvNone
      Caption = 'GridPanel_Filtro'
      ColumnCollection = <
        item
          Value = 60.000000000000000000
        end
        item
          Value = 40.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Edt_Firma
          Row = 0
        end
        item
          Column = 1
          Control = Edt_Usuario
          Row = 0
        end>
      ParentBackground = False
      ParentColor = True
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      ShowCaption = False
      TabOrder = 0
      ExplicitLeft = 694
      DesignSize = (
        550
        48)
      object Edt_Firma: TEdit
        Left = 4
        Top = 11
        Width = 322
        Height = 25
        TabStop = False
        Anchors = []
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        BevelWidth = 5
        BorderStyle = bsNone
        Color = 5657424
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '1001 Loca'#231#245'es Eirelli'
      end
      object Edt_Usuario: TEdit
        Left = 332
        Top = 14
        Width = 215
        Height = 20
        TabStop = False
        Anchors = []
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        BevelWidth = 5
        BorderStyle = bsNone
        Color = 5657424
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'Souummero Testador'
      end
    end
  end
  object Pa_MenuLateral: TPanel
    Left = 0
    Top = 48
    Width = 226
    Height = 569
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Teste'
    Color = 4209204
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 1
    object Label7: TLabel
      Left = 0
      Top = 328
      Width = 226
      Height = 18
      Margins.Right = 5
      Align = alTop
      Caption = 'RELAT'#211'RIOS'
      Layout = tlCenter
      ExplicitWidth = 97
    end
    object Pa_Op02MenuConsulta: TPanel
      Left = 0
      Top = 83
      Width = 226
      Height = 70
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      ShowCaption = False
      TabOrder = 1
      object La_Op2MenuConsulta: TLabel
        Left = 0
        Top = 0
        Width = 226
        Height = 18
        Margins.Right = 5
        Align = alTop
        Caption = '  CONSULTAS'
        Layout = tlCenter
        ExplicitWidth = 99
      end
      object Pa_BotaoPessoasGrupos: TPanel
        Left = 20
        Top = 22
        Width = 200
        Height = 24
        BevelEdges = [beLeft]
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        object La_BotaoPessoasGrupos: TLabel
          Left = 32
          Top = 0
          Width = 168
          Height = 24
          Margins.Right = 5
          Align = alClient
          Caption = 'Pessoas && Grupos'
          Layout = tlCenter
          ExplicitWidth = 132
          ExplicitHeight = 18
        end
        object Img_BotaoPessoasGrupos: TImage
          Left = 0
          Top = 0
          Width = 32
          Height = 24
          Cursor = crHandPoint
          Margins.Left = 5
          Align = alLeft
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000001A0000
            00180806000000E482EDC50000000970485973000000B1000000B101C62D498D
            0000033D4944415478DAADD5794893611C07F0EF5A64032BE7D1A641A860912B
            C5CC2B34B3BCC8A84C244DF1C0038FD490F02EF1985AC84ACD030F3CF0CA1035
            52665A264ACE2BD1D4282325C83644672A08FD91ED7DC7D4773ACDDAF79F8DDF
            F3ECF93C7BDEE7C74B5BF939B7060571B9E68AA4843858595AACD7C48B8BE427
            534D6DBDD627E8477A46165A5F34295A0AB4BF8508C0FA821D969756A0725005
            0C0603DD5D1D24A854282028045A5A9A888B8B4176360F22A108BFD7D6505652
            A45CC8E004077AFABA10F40FC2D3C31D35B50DD0661DC5D4E789BD414BCB2B98
            9898A00C46464623379747421EB77DA0A3C346427C2C343534D0D4DC82670D8D
            A8AFAD2221D9DCCDE17038387C4875037A92FB143C5E0ECE189DA64CECEEEE45
            47FB4B1212894438696884FABA6AD0E974DC74BB852F9FC6C162B148C8C1E92A
            6C6DAD29BFFF30368EE8E828DC8DBC2385D4B574C06F6D414A7AC6B690B1B131
            BCBC7DD0D1D9451977B0B7434D7515464747B785929312E0EC721D0B73B35248
            F58816E263EEE1EBCC340203FCB71CDDF0F00826273FA2203F87B2505878140C
            0D4FC1D4D464CBD1959695435F570F998FB22131A8109198D8680C0DBDA740DC
            CC2C24C653FB89087164B2B1CD1071028F79D24D29841C1DED6167EF4C7EB7BF
            7C11151565A8A9A9C3156727E8E9E952A0E9E919B4F1DBE1E5E5093FBF0074BE
            7E4BD67BBA3BD1D6CADF194A4C8C259B3338384C729507D0F8BC0EE6E666D829
            0303837073F784A585398A8B0BC826E6721FEE0EC92F4040A5C4024C2605108B
            C508946C889827BFA13D4144D624DD9F93978FA4FB29484F4B465444385997AF
            D16834CAEFF60C6DDE7D405028B97B22C4EECB4A0AD7FFE53EFA7ECAFCB454EE
            BF41B20C0D4B6FE439D3B394BAD22145D91324DFB0FF13850DDBDBF30689490F
            9482C8C24D4F85B5CDA50DE8B8AE01FA053DD066B3950AFD100A616169836F33
            535288FFAA836CD005F1A2522175A61AD9C0CE8E0E3BBFF8643132314351411E
            CE5B5952EAEFFA0408098BC0D8C8E0AE280995575462F6BB70DB09F3E2791497
            94AFDF4AF9100F3B38C81F1A4C8D6DC7758EB1E1EFE7BB7119FC7CBD25AF6625
            3F2391101595D51B97A1B1A91921A1E1585DFDA55488C13880A2C27CB8B9DEC0
            1F4232FC9001236FD90000000049454E44AE426082}
          ExplicitHeight = 32
        end
        object SpBtn_BotaoPessoasGrupos: TSpeedButton
          Left = 32
          Top = 0
          Width = 168
          Height = 24
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = SpBtn_BotaoPessoasGruposClick
          ExplicitLeft = 0
          ExplicitTop = 1
          ExplicitWidth = 140
          ExplicitHeight = 44
        end
      end
    end
    object Pa_Op01MenuHome: TPanel
      Left = 0
      Top = 13
      Width = 226
      Height = 70
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 226
        Height = 18
        Margins.Right = 5
        Align = alTop
        Caption = '  INICIAL'
        Layout = tlCenter
        ExplicitWidth = 60
      end
      object Pa_BotaoInicial: TPanel
        Left = 20
        Top = 22
        Width = 200
        Height = 24
        BevelEdges = [beLeft]
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        object La_BotaoInicial: TLabel
          Left = 32
          Top = 0
          Width = 168
          Height = 24
          Margins.Right = 5
          Align = alClient
          Caption = 'Inicial'
          Layout = tlCenter
          ExplicitWidth = 41
          ExplicitHeight = 18
        end
        object Img_BotaoInicial: TImage
          Left = 0
          Top = 0
          Width = 32
          Height = 24
          Cursor = crHandPoint
          Margins.Left = 5
          Align = alLeft
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000001A0000
            00180806000000E482EDC50000000970485973000000A6000000A601DD7DFF38
            000002104944415478DA63FCFAE9EDFF878F1E31945756336CDEBC8D819AC0D7
            D78BA1B3BD95415E4E8E8111645144742C030F370F436F6F27033F2F1F552CF9
            F8F91343717139C397AF5F18562C5D0CB1889B4F98E1D9D3FB0C4D4D2D288A7B
            BBBBC8B2A4B8B40C4CD7D5D53048492B3200ED405804E2D002C0CC46B1084453
            13C0CC1C381F1103CE9FBF00A60D0D0D6867D1DEFD0718FCFC83C1EC4D1BD732
            383B3A50DF2298256BD72C07F383432289B28C248B6096AC5AB99461F6AC3960
            B1D4B41486B0F0688296116D11B2257D7D13197EFEFA091667676367282ACA27
            68195116C12C59B36A19434FEF04B0257B776F07CB39BB7A822D2B292E600809
            8BC26919418B90E3A4BBBB1F6E09C8701000F16196959616E28C33BC16C12C59
            B776054357571F862530806C59595911435070048665382DBA7FFF01838EBE31
            C3C60D6B187ABA7B19BE7CFB06B764E7EEDD0CBB76ED06AB7373736570777585
            5BC6C3C5C550525ACCE01F10C270E5E25906454505C23E0259065208127FF7E6
            19DC27D82C82F94C48440A6C064C2F4989015D7CEAF4990CF7EEDD05B3959494
            19B233D371AAA5C822103F233D19CC9E31732E861C552D82F1F1C90D5E8B1494
            D5180CF4F41894559430820B3918EFDEB9C770E1D2258607776F11B6085495A3
            B7179E3C7DCA306FFE02868F1F3F83F92ACA4A0C9919691809839F9F9F212931
            8141465A1A453FA8DD805295D3AD71428FE6160044CFF0F074CAAA6400000000
            49454E44AE426082}
          ExplicitHeight = 32
        end
        object SpBtn_BotaoInicial: TSpeedButton
          Left = 32
          Top = 0
          Width = 168
          Height = 24
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          ExplicitLeft = 0
          ExplicitTop = 1
          ExplicitWidth = 140
          ExplicitHeight = 44
        end
      end
    end
    object Pa_Op03MenuCadastros: TPanel
      Left = 0
      Top = 153
      Width = 226
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      ShowCaption = False
      TabOrder = 2
      object La_Op3MenuCadastros: TLabel
        Left = 0
        Top = 0
        Width = 226
        Height = 18
        Margins.Right = 5
        Align = alTop
        Caption = '  CADASTROS'
        Layout = tlCenter
        ExplicitWidth = 101
      end
      object Pa_UsuariosPermissoes: TPanel
        Left = 0
        Top = 18
        Width = 226
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Pa_UsuariosPermissoes'
        ParentColor = True
        TabOrder = 0
        object Pa_BotaoUsuarios: TPanel
          Left = 20
          Top = 6
          Width = 200
          Height = 24
          BevelEdges = [beLeft]
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          ShowCaption = False
          TabOrder = 0
          object La_BotaoUsuarios: TLabel
            Left = 32
            Top = 0
            Width = 168
            Height = 24
            Margins.Right = 5
            Align = alClient
            Caption = 'Usu'#225'rios && Permiss'#245'es'
            Layout = tlCenter
            ExplicitWidth = 165
            ExplicitHeight = 18
          end
          object Img__BotaoUsuarios: TImage
            Left = 0
            Top = 0
            Width = 32
            Height = 24
            Cursor = crHandPoint
            Margins.Left = 5
            Align = alLeft
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D494844520000001A0000
              00180806000000E482EDC50000000970485973000000B1000000B101C62D498D
              000004E54944415478DAAD960B50945514C7FF0B0B61A080325302018B409929
              2F4DC590C702F25E56401341A542493034628B81444108A515102403E5613A4E
              3C445ECA40BAA68040A4A820A30658C8F2584056687426A1EE771DC8757184F2
              CCECECB7DF77EEF99D3DF77FCFF958A352C9DF375A5A10151583B1F131BC4A53
              5264233E7E2FDE5BB4082C06E4EAE1854DFE1BA1ABA34D1D54D5D4F0E7E828E6
              6969FD2F506B6B2B72F27E404569F15310D7D10571B131A8B95C431D9C5D9D51
              79B612019BFC919B7BFC3F83FAFA25B879B305E7ABCFFD0B7AFCF811D4353464
              1CEBEB1B11B27D1B5E9F35EBD581C2C37782636020E76C6C6C04B6A2E2B402EF
              0A17A0A0A068F2F7C913B9888D4B90057D77F8104C4C8CA9C393B131F0F83E68
              6FEF8044224151FE29D8DADA4C0B76343B0752E9437ACDAC110822654142E101
              74767440DCD34BAE5310BC2D088288CFD1D7D7871556ABE1E4E400077B2E0C17
              706069614E93898C8CC691CCA3B4B42C160B5BB604C090C3C10811D20B411124
              A88FAF1FBE148463B5F52AA41E3A8C9C9C2CA8CF9E4D839E2E3A83D2F272F490
              4498851FACB683B9B9050E0A13A1C456A23E51D1BB71E1FC45149FCE87AEAE0E
              EEDCB98B4F433E930725251D849E9E2EEAAE34409894087737D7C9920C0E0DA1
              9F6C6EE88E9D080D09C6F759D9A8AC28912BDD99D232046D0DC6DD3B6DE8EFED
              930731F20E0B0B87B6F67CEC8E8986A5B9D9E4E29EDE5E985B2C47F2C124E417
              144259591901FE7E3289FC7AF51A2D2963515FC7C0688121565959C983183138
              38B92235E55B98999A82C33190819C3A9987EE6E31DA6EDFA6B2DF9F180F5555
              5574DEBB87ACAC63A8FE4984654BCDB12F760F6AEBEAA1C856840749644A10DF
              671DCE5594913A8BB0C6D9918226207676B6E07BAF2365DB8E846FF6A3A1B189
              3E5FE7CB078FE7099E873B4ACACAB1D13F90DEDFBB27FAC5A0C6C65FF0F3A5CB
              F0DBB01E1B366EA60B26209201092C2C57A2EBF7DFE0C1F326C1DD91919189AB
              4D5764F6E84D6D7DACE57B91044D61636D2D0F4A4B4B8686FA1C38AE71434AB2
              106C0505BA90818C8D8FC372D90AC4EF8B859B8B339A6FDC84A7E75A0C3D18C6
              834131551D63D79AAFC3DAC6010BDF3681E84215C462F1D462607A5DE0479BB1
              78C952A4A7A7C0672D1FD29111B8BB7B81CBB5C39EDDD132D9479033C25260E1
              4062024DC6CCE27DA4A508270FF794F29E0009045F60F8E143F048C692C101F4
              F6F623233D151FAEF7959332135CDFC0183636D65475562B9723FB68E6E47339
              D0B363E2D9D120954AA1A6A60A4532579EB78ECE4EE4FF5888A2E212F0BD3C69
              D05B6D6D08DEFA09F87C1E343535E5C7440BB9C10CBEBFC69EBCB4975DBA544B
              BFBD49B0795A73515B5B8F47A4F3777777E3352565D244635048BA484D4D1DD8
              6C05D4D688B068E1BB4F41D3EA96C48E6466A198FC838AF212DAD119517C45FA
              5D434323DCC80C13892EA2BBAB93FA322A65F6FAA2A81AEF1071CC0864C03141
              F3F526848686216E6F0CE66ACD838EAE21D94F37B4DEBA85AEAEFB18EC17E358
              4E2EF59FA33607E745177024237D66205DBD05B8FF473B9E1D2B9555D5E8233D
              6DC992C564A40CC0C9910B61722AF5777375C10ED21BABABCECE0CF496BE113D
              B0CFCFAFBCE327606A660A3302636C0224D719A60B7A63BE1EADB97F4020E2C8
              A64F4CE4E1E161A8A8A8D00F63D9D94F4B67676F4B67DB8C41811F07D1F78099
              18D7DE0EE1BBC2F00F8F93929FA6D3B4140000000049454E44AE426082}
          end
          object SpBtn_BotaoUsuarios: TSpeedButton
            Left = 32
            Top = 0
            Width = 168
            Height = 24
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = SpBtn_BotaoUsuariosClick
            ExplicitLeft = 0
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
      end
      object Pa_ProdutosEstoque: TPanel
        Left = 0
        Top = 50
        Width = 226
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Pa_ProdutosEstoque'
        ParentColor = True
        TabOrder = 1
        object Pa_BotaoProdutos: TPanel
          Left = 20
          Top = 6
          Width = 200
          Height = 24
          BevelEdges = [beLeft]
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          ShowCaption = False
          TabOrder = 0
          object La_BotaoProdutos: TLabel
            Left = 32
            Top = 0
            Width = 168
            Height = 24
            Margins.Right = 5
            Align = alClient
            Caption = 'Produtos && Estoque'
            Layout = tlCenter
            ExplicitWidth = 143
            ExplicitHeight = 18
          end
          object Img_BotaoProdutos: TImage
            Left = 0
            Top = 0
            Width = 32
            Height = 24
            Cursor = crHandPoint
            Margins.Left = 5
            Align = alLeft
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D494844520000001A0000
              00180806000000E482EDC50000000970485973000000B1000000B101C62D498D
              000002DD4944415478DAC5947D2CD4711CC7DF086DEE614E9DDD93FB0B959D31
              51796879C8509487E98F9ABF642B950BA738BA104D99AE298ECBE2C65236ABE9
              0F3D9CFA439B79D6244F5B4CB491F3304F69D1CFCFBADC3AF673459FBF3EFB7C
              3EDFCF6B9FA7AFD1CCD4D832B6418C7E81262627919E918509CD8441898C4D8C
              1073361A870E1ED81874EB562E3404EC78502072F3E4F0F4F40097C381FC6E3E
              F27273D0D9D585AAAA6AA4CB52D1D0D884FAFA77488C1723F2D4693C795C811F
              4B4B88BD28466747CBC620D9F54C88440E88080F439C3811224707F0783C1415
              29F1B4BA0A4D4D2D285028F0B0448957EA3A9496AA902A4D46C8C970F4757792
              C91C1C9DF1E17D1B7590BAEE2D54AA72322038E41822C2427540C3C3C390A6C9
              B0BC04D8D9DA422ABD421DB4929CC7E3628FBD9DDEC0B5A0F58412E859CD7308
              854238398AD60579FB0580BD7B97D6363AF6156666A6D861628CB9F96F303737
              0593C1247DCB44B9ADCD0DB0B4B45CBF75542B4ABA9A82C35E9E60B158282D53
              A15851A0F589E325080A0C80FF51DFFF08522A4BC017F0F58256EECBD3CB5D07
              9422BD46B4BC06E6663BE1E6E60245C13D6A201BA10027428289046944801F6C
              0402A4C9D251515E86D6D6763CAAACD401CDCD2F60707090D4057C3E68348BCD
              B56EE58E184C3AACD9D678AD56FF7147548412A8ADBD03B5B52FC8000F0F7772
              0E6B41971392A019D7202AEA0C7C7D8EE80575F7F482C3E58049A71BBE0C0303
              83985F58207F0E069DA6373E3B3B077E7E3EC4EC5C0D0785864712BFC3C8EAE6
              49E2F5BEF9A7EBFDD733DA3290938B1B86863E836E4103DB9AADF7E1D4F434D1
              AE2FD8B7D79E12A8B7AF0F562C2BD01934B4B734AE82ACD85C3C282EA49460B3
              121D730EE3A323ABA03BF27CE23033204D9690CEAC9BB70DD267666751A85042
              9220D6DA6F64CA20BE746115E4EDEB8FA6E6366D5BBA3EF618A42F7E5F447FFF
              271DBBEB7E67BC51BFDCE6D69D8F8DC32C51F656088D38E8FBF9F2DFEBBDD5F2
              13A973E990AE9796F40000000049454E44AE426082}
          end
          object SpBtn_BotaoProdutos: TSpeedButton
            Left = 32
            Top = 0
            Width = 168
            Height = 24
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = SpBtn_BotaoProdutosClick
            ExplicitTop = -1
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 226
      Height = 13
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 3
    end
    object Pa_Op04MenuLocacoes: TPanel
      Left = 0
      Top = 258
      Width = 226
      Height = 70
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      ShowCaption = False
      TabOrder = 4
      object La_Op04MenuLocacoes: TLabel
        Left = 0
        Top = 0
        Width = 226
        Height = 18
        Margins.Right = 5
        Align = alTop
        Caption = '  LOCA'#199#213'ES'
        Layout = tlCenter
        ExplicitWidth = 92
      end
      object Pa_BotaoLocacoes: TPanel
        Left = 0
        Top = 18
        Width = 226
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Panel4: TPanel
          Left = 20
          Top = 6
          Width = 200
          Height = 32
          BevelEdges = [beLeft]
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          ShowCaption = False
          TabOrder = 0
          object La_BotaoLocacoes: TLabel
            Left = 32
            Top = 0
            Width = 168
            Height = 32
            Margins.Right = 5
            Align = alClient
            Caption = '&Loca'#231#245'es'
            Layout = tlCenter
            ExplicitWidth = 68
            ExplicitHeight = 18
          end
          object img_BotaoLocacoes: TImage
            Left = 0
            Top = 0
            Width = 32
            Height = 32
            Cursor = crHandPoint
            Margins.Left = 5
            Align = alLeft
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D494844520000001A0000
              002008060000000CAB68050000000970485973000000DD000000DD017053A207
              000003944944415478DAD5960D4C8C711CC7BF474CF372D514332D2F97B75E74
              BAEB5A2562544B58A522D61AA2ADF4A63A291C5AE525456AA1A4229DB7A55912
              521C4596BACB4E8E6AD1D435939775722F9E7B8CEDB1EE64D7D9FCB6677B7ECF
              EFFBFC3ECFF3FBFDF6FFFF691FA45D2A68B00FFDFD98C1B0C670AC432282119D
              AE314ED3066A7CDA04DF808DE894B46A855830AC70A5AC042C7BA66EA0D29202
              7879FBE1A790317B262A2BAE62BE2D1B450579088B88D60D54DFF018014121D8
              93C445C2AE64CC9D634989BF6EEF4078D8369CCA3F8BB2F367E1C871D00E52F7
              A2BBFB1D255059750B07520E814E9F4496EE704626C4E2368A66BAF974F09213
              C9D2F5F77F44F2EE7878BAAFA468A64D9B4AF68E266CAA57D9301D6168388E22
              181890C1C5C911C2D6E76482C4241E6CACAD289AB6172F111ABA19670A0A61BD
              601E048F1E0F998760805651CE57F9076C0237219622387F810FD3C926103D17
              E37269313CBC7DA05028A8E520AEB2D2426CDDBE830449FBDE2368833F459396
              7E14FCB2E21FA58B8C49804422A17EADE415E47239944A151A1FD52232361E3D
              3D528AC6C8888ECCA3E97059BA12A346D160606080398CD9140D83C1405646BA
              E661E8EDED45D44E2E040F1B10151186D4431943962E30D00FFCCBD7E0ECC441
              E69134989999FDFDD475747681E5E80AB1A8113BA2E334FE1193ED82C6FA3ACC
              B030D73E75D06226532C505B53051BA207439990E8E1123777BCEFE9D496E6CF
              A0386E129E350B515D593E647C85E71AD82DB4C1E1B483BA813E7DFE02F399F3
              50577313B6BFF5A845D40A57370F74B58B3171C278DD406ACB3C9E837D075289
              A91A4D792E972BC0DB9B88C8F0B03FA5181E486D960B9848D99F0C07369BF46B
              EB1E90AB85A8A96138AFFF1D283F2F1BAE8B9D49BFB2AA9AECDFFF0B5AB73E18
              A907F7125BC42CFD82A4D23E989A4EFEE5EB0D646DC741FEA96C701CD8FA05FD
              B31E31D9CEE0ED49C46A6F2FD22FE55F4256562EEA057747167422270F27734F
              A3F9A9000AB90AB6F61C70E363B025247864416A735DE68916A188BC67B31669
              5CFF7406F152D2F1B24D8201D900711061212E264A3FA0ACEC5CDCBE730F3299
              0CEB7CD722744B887E4085451770AEB88404454786C3DFCF473FA0EB1537B09F
              289FECEB571C23B6ED15CBDDF403AABB2F204E3C11181C1CC4A58BC55A4FA63A
              81D41B9DD72A5F0CCABF41505BFD6BDD1B7150D79BB7B0633911E73B255EB7B5
              C0C4D8583F20A54A89B956F6183BC600ADCD4F860D51DB77CAFFEBCCD062D4D7
              0000000049454E44AE426082}
            ExplicitHeight = 24
          end
          object spBtn_BotaoLocacoes: TSpeedButton
            Left = 32
            Top = 0
            Width = 168
            Height = 32
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = spBtn_BotaoLocacoesClick
            ExplicitLeft = 0
            ExplicitTop = 1
            ExplicitWidth = 140
            ExplicitHeight = 44
          end
        end
      end
    end
  end
  object StringGrid1: TStringGrid
    Left = 234
    Top = 83
    Width = 335
    Height = 525
    Color = clGray
    DrawingStyle = gdsGradient
    GradientEndColor = clRed
    GradientStartColor = clMaroon
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 234
    Top = 54
    Width = 335
    Height = 25
    TabStop = False
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    BevelWidth = 5
    BorderStyle = bsNone
    Color = 5657424
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = 'Loca'#231#245'es Vencidas N'#227'o Recebidas'
  end
  object StringGrid2: TStringGrid
    Left = 575
    Top = 83
    Width = 335
    Height = 525
    Color = clGray
    DrawingStyle = gdsGradient
    GradientEndColor = 2146559
    GradientStartColor = 30103
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 575
    Top = 54
    Width = 335
    Height = 25
    TabStop = False
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    BevelWidth = 5
    BorderStyle = bsNone
    Color = 5657424
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = 'Loca'#231#245'es Para Hoje N'#227'o Recebidas'
  end
  object StringGrid3: TStringGrid
    Left = 918
    Top = 83
    Width = 335
    Height = 525
    Color = clGray
    DrawingStyle = gdsGradient
    GradientEndColor = clGreen
    GradientStartColor = 4210688
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 918
    Top = 54
    Width = 335
    Height = 25
    TabStop = False
    BevelEdges = [beBottom]
    BevelOuter = bvNone
    BevelWidth = 5
    BorderStyle = bsNone
    Color = 5657424
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = 'Loca'#231#245'es Para Hoje J'#225' Recebidas'
  end
end
