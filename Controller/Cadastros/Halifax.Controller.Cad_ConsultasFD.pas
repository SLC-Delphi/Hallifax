unit Halifax.Controller.Cad_ConsultasFD;

interface

Uses Halifax.Controller.Cad_ConsultasFD_Interface, Model.DAO.Cad_Consultas_FDAC,
  System.SysUtils;

Type
   TController_Cad_ConsultasFD = Class (TinterfacedObject, IController_Cad_ConsultasFD)
      FDAO_Cad_Consultas : TDAO_Cad_Consultas_FDAC ;
      Function ORM : TDAO_Cad_Consultas_FDAC;
      Class Function New : IController_Cad_ConsultasFD;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

{ TController_Cad_ConsultasFD }


class function TController_Cad_ConsultasFD.New: IController_Cad_ConsultasFD;
begin
   Self.Create;
end;


constructor TController_Cad_ConsultasFD.Create;
begin
   FDAO_Cad_Consultas := TDAO_Cad_Consultas_FDAC.Create;
end;


destructor TController_Cad_ConsultasFD.Destroy;
begin
   FreeAndNil(FDAO_Cad_Consultas);
   inherited;
end;


function TController_Cad_ConsultasFD.ORM: TDAO_Cad_Consultas_FDAC;
begin
   Result := FDAO_Cad_Consultas;
end;


end.
