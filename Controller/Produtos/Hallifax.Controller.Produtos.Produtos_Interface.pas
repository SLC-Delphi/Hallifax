unit Hallifax.Controller.Produtos.Produtos_Interface;

interface

uses
  Model.DAO.Produtos_FD, MODEL.ORM_Loc_M1_Produtos;

Type
   IController_Produtos_FD = Interface
      ['{DF98B90A-8E39-4239-86D7-87FF43F35A61}']
      Function DAO : TDAO_Produtos_FD;
      Function ORM : TORM_Loc_M1_Produtos;
   End;


implementation

end.
