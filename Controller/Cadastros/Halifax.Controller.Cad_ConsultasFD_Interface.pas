unit Halifax.Controller.Cad_ConsultasFD_Interface;

interface

uses Model.DAO.Cad_Consultas_FDAC;

Type
  IController_Cad_ConsultasFD = Interface
    Function ORM : TDAO_Cad_Consultas_FDAC;
  End;


implementation

end.
