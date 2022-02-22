unit Halifax.Controller.Cad_PermissoesFD_Interface;

interface

uses
  Model.ORM_Loc_M1_Cad_Permissoes, Model.DAO.Cad_Permissoes_FDAC;

Type
   IController_Cad_PermissoesFD = Interface
      ['{67775423-C240-4112-88CF-8C77CAFE9CD0}']
      Function DAO: TDAO_Cad_Permissoes_FDAC;
      Function ORM: TORM_Loc_M1_Cad_Permissoes;

   End;

implementation

end.
