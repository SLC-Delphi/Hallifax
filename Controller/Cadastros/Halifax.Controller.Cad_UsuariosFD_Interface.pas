unit Halifax.Controller.Cad_UsuariosFD_Interface;

interface

uses Model.DAO.Cad_Usuario_FDAC, Model.ORM_Loc_M1_Cad_Usuario;

Type
  IController_Cad_UsariosFD = Interface
  ['{AFC3217F-0ABC-4198-982E-497CB48B13F6}']
    Function DAO : TDAO_Cad_Usuario_FDAC;
    Function ORM : TORM_LOC_M1_CAD_USUARIO;
  End;


implementation

end.
