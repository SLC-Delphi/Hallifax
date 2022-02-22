unit Halifax.Controller.Cad_UsuarioFD;

interface

uses Model.DAO.Cad_Usuario_FDAC, Model.ORM_Loc_M1_Cad_Usuario,
    Data.DB, System.SysUtils,
    Halifax.Controller.Cad_UsuariosFD_Interface;

Type TController_Cad_UsuarioFD = Class (TInterfacedObject, IController_Cad_UsariosFD)
  Public
    FDAO_Cad_Usuario: TDAO_Cad_Usuario_FDAC;
    FEntity_Cad_Usuario: TORM_LOC_M1_CAD_USUARIO;
    procedure LoadGet;
    Function DAO : TDAO_Cad_Usuario_FDAC;
    Function ORM : TORM_LOC_M1_CAD_USUARIO;
    Constructor Create ;
    Destructor Destroy; Override;
End;
  implementation

{ TController_Cad_UsuarioFD }

function TController_Cad_UsuarioFD.DAO: TDAO_Cad_Usuario_FDAC;
begin
  Result := FDAO_Cad_Usuario;
end;


function TController_Cad_UsuarioFD.ORM: TORM_LOC_M1_CAD_USUARIO;
begin
  Result := FEntity_Cad_Usuario;
end;

constructor TController_Cad_UsuarioFD.Create;
begin
  FDAO_Cad_Usuario:= TDAO_Cad_Usuario_FDAC.Create;
  FEntity_Cad_Usuario:= TORM_LOC_M1_CAD_USUARIO.Create;
end;


destructor TController_Cad_UsuarioFD.Destroy;
begin
  inherited;
  FreeAndNil(FDAO_Cad_Usuario);
  FreeAndNil(FEntity_Cad_Usuario);
end;


Procedure TController_Cad_UsuarioFD.LoadGet;
begin
   ORM.CODIGO         := DAO.Query.FieldByName('CODIGO').AsInteger;
   ORM.CODEMPRESA     := DAO.Query.FieldByName('CODEMPRESA').AsInteger;
   ORM.NOME_USUARIO   := DAO.Query.FieldByName('NOME_USUARIO').AsString;
   ORM.SENHA          := DAO.Query.FieldByName('SENHA').AsString;
   ORM.FLAG_PERMISSAO := DAO.Query.FieldByName('FLAG_PERMISSAO').AsString;
   ORM.DATA_CADASTRO  := DAO.Query.FieldByName('DATA_CADASTRO').AsDateTime;
   ORM.DT_UMOD        := DAO.Query.FieldByName('DT_UMOD').AsDateTime;
   ORM.HR_UMOD        := DAO.Query.FieldByName('HORA_UMOD').AsDateTime;
   ORM.USUARIO_UMOD   := DAO.Query.FieldByName('USUARIO_UMOD').AsString;
   ORM.OPERACAO_UMOD  := DAO.Query.FieldByName('OPERACAO_UMOD').AsString;
   ORM.LIXEIRA        := DAO.Query.FieldByName('LIXEIRA').AsString;
end;

end.


