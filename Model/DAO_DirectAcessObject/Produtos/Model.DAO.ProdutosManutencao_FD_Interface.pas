unit Model.DAO.ProdutosManutencao_FD_Interface;

interface

uses
  MODEL.ORM_Loc_M1_ProdutosManutencao;

type
   IDAO_ProdutosManutencao = Interface
         ['{C1623416-27D5-4368-ACC9-1073E6FF5129}']
         Function GetSimple(vsFlagManutencao, vsFlagInicialEncerramento: String): Boolean;
         Function Get(vsCampos, vsCondicao, vsOrdem: String): Boolean;
         Function GetId(vsId: String): Boolean;
         function Post(ORM: TORM_LOC_M1_ProdutosManutencao; SaldoQtdManutencao, SaldoEstoque : Currency): Boolean;
         Function Put (ORM: TORM_LOC_M1_ProdutosManutencao; SaldoQtdManutencao, SaldoEstoque : Currency): Boolean;
         Function CriarTabela(): String;
   End;

implementation

end.
