unit Hallifax.Controller.Produtos.ProdutosPreco_Interface;

interface

uses
  Model.DAO.ProdutosPreco_FD, MODEL.ORM_Loc_M1_ProdutosPreco;

Type
   IController_ProdutosPreco_FD = Interface
      ['{D66919AB-2278-49A0-8D1C-8E239197683A}']
      Function DAO : TDAO_ProdutosPreco_FDAC;
      Function ORM : TORM_Loc_M1_ProdutosPreco;
   End;


implementation

end.
