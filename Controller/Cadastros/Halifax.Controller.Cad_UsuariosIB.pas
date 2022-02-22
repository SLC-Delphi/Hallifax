unit Halifax.Controller.Cad_UsuariosIB;

interface

uses Model.DAO.Cad_Usuario_IB, Model.ORM_Loc_M1_Cad_Usuario,
    Data.DB, System.SysUtils,
    Halifax.Controller.Cad_UsuariosIB_Interface;

Type TController_Cad_UsuarioIB = Class (TInterfacedObject, IController_Cad_UsariosIB)
  private
  Public
    FDAO_Cad_Usuario: TDAO_Cad_Usuario_IB;
    FEntity_Cad_Usuario: TORM_LOC_M1_CAD_USUARIO;
    procedure LoadGet;
    Function Propriedades : TDAO_Cad_Usuario_IB;
    Function Campos : TORM_LOC_M1_CAD_USUARIO;
    Constructor Create ;
    Destructor Destroy; Override;
End;
  implementation

{ TController_Cad_UsuarioIB }

function TController_Cad_UsuarioIB.Propriedades: TDAO_Cad_Usuario_IB;
begin
  Result := FDAO_Cad_Usuario;
end;


function TController_Cad_UsuarioIB.Campos: TORM_LOC_M1_CAD_USUARIO;
begin
  Result := FEntity_Cad_Usuario;
end;

constructor TController_Cad_UsuarioIB.Create;
begin
  FDAO_Cad_Usuario:= TDAO_Cad_Usuario_IB.Create;
  FEntity_Cad_Usuario:= TORM_LOC_M1_CAD_USUARIO.Create;
end;


destructor TController_Cad_UsuarioIB.Destroy;
begin
  inherited;
  FreeAndNil(FDAO_Cad_Usuario);
  FreeAndNil(FEntity_Cad_Usuario);
end;


Procedure TController_Cad_UsuarioIB.LoadGet;
begin
   FEntity_Cad_Usuario.CODIGO         := FDAO_Cad_Usuario.Query.FieldByName('CODIGO').AsInteger;
   FEntity_Cad_Usuario.CODEMPRESA     := FDAO_Cad_Usuario.Query.FieldByName('CODEMPRESA').AsInteger;
   FEntity_Cad_Usuario.NOME_USUARIO   := FDAO_Cad_Usuario.Query.FieldByName('NOME_USUARIO').AsString;
   FEntity_Cad_Usuario.SENHA          := FDAO_Cad_Usuario.Query.FieldByName('SENHA').AsString;
   FEntity_Cad_Usuario.FLAG_PERMISSAO := FDAO_Cad_Usuario.Query.FieldByName('FLAG_PERMISSAO').AsString;
   FEntity_Cad_Usuario.DATA_CADASTRO  := FDAO_Cad_Usuario.Query.FieldByName('DATA_CADASTRO').AsDateTime;
   FEntity_Cad_Usuario.DT_UMOD        := FDAO_Cad_Usuario.Query.FieldByName('DT_UMOD').AsDateTime;
   FEntity_Cad_Usuario.HR_UMOD        := FDAO_Cad_Usuario.Query.FieldByName('HR_UMOD').AsDateTime;
   FEntity_Cad_Usuario.USUARIO_UMOD   := FDAO_Cad_Usuario.Query.FieldByName('USUARIO_UMOD').AsString;
   FEntity_Cad_Usuario.OPERACAO_UMOD  := FDAO_Cad_Usuario.Query.FieldByName('OPERACAO_UMOD').AsString;
   FEntity_Cad_Usuario.LIXEIRA        := FDAO_Cad_Usuario.Query.FieldByName('LIXEIRA').AsString;
end;

end.

