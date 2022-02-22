unit Model.DAO.ProdutosEstoque_FD_Interface;

interface

uses
  MODEL.ORM_Loc_M1_ProdutosEstoque;

type
   IDAO_ProdutosEstoque = Interface
         ['{C1623416-27D5-4368-ACC9-1073E6FF5129}']
         Function GetSimple(vsLixeira: String): Boolean;
         Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
         Function GetId(vsId, vsLixeira: String): Boolean;
         function Post (ORM: TORM_LOC_M1_ProdutosEstoque): Boolean;
         Function Put (ORM: TORM_LOC_M1_ProdutosEstoque): Boolean;
         Function CriarTabela(): String;
   End;

implementation

end.
