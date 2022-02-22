unit Hallifax.Controller.Produtos.ProdutosManutencao_Interface;

interface

uses
  Model.DAO.ProdutosManutencao_FD, MODEL.ORM_Loc_M1_ProdutosManutencao;

Type
   IController_ProdutosManutencao_FD = Interface
      ['{8A8BB2E4-7643-422E-A82F-3308CA57B174}']
      Function DAO : TDAO_ProdutosManutencao_FDAC;
      Function ORM : TORM_Loc_M1_ProdutosManutencao;
   End;


implementation

end.
