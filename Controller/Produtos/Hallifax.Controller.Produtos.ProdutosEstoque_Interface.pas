unit Hallifax.Controller.Produtos.ProdutosEstoque_Interface;

interface

uses
  Model.DAO.ProdutosEstoque_FD, MODEL.ORM_Loc_M1_ProdutosEstoque;

Type
   IController_ProdutosEstoque_FD = Interface
      ['{8A8BB2E4-7643-422E-A82F-3308CA57B174}']
      Function DAO : TDAO_ProdutosEstoque_FDAC;
      Function ORM : TORM_Loc_M1_ProdutosEstoque;
   End;


implementation

end.
