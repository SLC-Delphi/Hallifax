unit Model.DAO.LocacoesCabecalhoItens_FD_Interface;

interface

uses
  MODEL.ORM_Loc_M1_LocacaoCabecalho, MODEL.ORM_Loc_M1_LocacaoItens, System.Classes;

type
   IDAO_LocacoesCabecalho = Interface
         ['{EF8E25C8-E9E0-43A0-8D6F-0C43A7A72258}']
         Function Get(vsCampos, vsCondicao1, vsCondicao2, vsPeriodo, vsOrdem: String): Boolean;
         Function GetId(vsId: String): Boolean;
         function Post (ORM: TORM_LOC_M1_LOCACAO_CABECALHO): Boolean;
         Function Put (ORM: TORM_LOC_M1_LOCACAO_CABECALHO): Boolean;
         Function CriarTabela(): String;
   End;


type
   IDAO_LocacoesItens = Interface
         ['{54AC91EE-9B7E-45A6-B231-235C2F4AA7C9}']
         Function GetProdutos: TStringList;
         Function GetCodigoProdutos: TStringList;
         function GetDadosDoProduto(vsCodigoProduto: String): boolean;
         Function GetId(vsId: String): Boolean;
         function Post (ORM: TORM_LOC_M1_LocacaoItens; vbCommit: Boolean): Boolean;
         Function Put (ORM: TORM_LOC_M1_LocacaoItens; vbCommit: Boolean): Boolean;
         Function CriarTabela(): String;
   End;

implementation

end.
