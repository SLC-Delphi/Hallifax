unit Halifax.Controller.Cad_UsuariosIB_Interface;

interface

Uses
  Model.DAO.Cad_Usuario_IB, Model.ORM_Loc_M1_Cad_Usuario;

Type
  IController_Cad_UsariosIB = Interface
    Function Propriedades : TDAO_Cad_Usuario_IB;
    Function Campos : TORM_LOC_M1_CAD_USUARIO;
  End;


implementation

end.
