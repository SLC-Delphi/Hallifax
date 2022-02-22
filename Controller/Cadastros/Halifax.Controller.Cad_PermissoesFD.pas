unit Halifax.Controller.Cad_PermissoesFD;

interface

uses
  Halifax.Controller.Cad_PermissoesFD_Interface,
    Model.ORM_Loc_M1_Cad_Permissoes, Model.DAO.Cad_Permissoes_FDAC;

Type
   TController_Cad_PermissoesFD = Class(TInterfacedObject, IController_Cad_PermissoesFD)
   PUblic
      DAO_Cad_Permissoes: TDAO_Cad_Permissoes_FDAC;
      ORM_Cad_Permissoes: TORM_LOC_M1_CAD_Permissoes;
      procedure LoadGet;
      Function DAO: TDAO_Cad_Permissoes_FDAC;
      Function ORM: TORM_Loc_M1_Cad_Permissoes;
      Constructor Create;
      Destructor Destroy; Override;
   End;


implementation

uses
  System.SysUtils;

{ TController_Cad_PermissoesFD }

constructor TController_Cad_PermissoesFD.Create;
begin
   DAO_Cad_Permissoes:= TDAO_Cad_Permissoes_FDAC.Create;
   ORM_Cad_Permissoes:= TORM_LOC_M1_CAD_Permissoes.Create;
end;

destructor TController_Cad_PermissoesFD.Destroy;
begin
  inherited;
  DAO_Cad_Permissoes.DisposeOf;
  ORM_Cad_Permissoes.DisposeOf;
end;


function TController_Cad_PermissoesFD.DAO: TDAO_Cad_Permissoes_FDAC;
begin
   Result := DAO_Cad_Permissoes;
end;


function TController_Cad_PermissoesFD.ORM: TORM_Loc_M1_Cad_Permissoes;
begin
   Result := ORM_Cad_Permissoes;
end;


procedure TController_Cad_PermissoesFD.LoadGet;
begin
   ORM.CODIGO_USUARIO        := DAO.Query.FieldByName(TRIM('CODIGO_USUARIO       ')).AsString;
   ORM.CLIENTES_CONSULTA     := DAO.Query.FieldByName(TRIM('CLIENTES_CONSULTA    ')).AsString;
   ORM.CLIENTES_RELATORIO    := DAO.Query.FieldByName(TRIM('CLIENTES_RELATORIO   ')).AsString;
   ORM.FORNECEDORES_CONSULTA := DAO.Query.FieldByName(TRIM('FORNECEDORES_CONSULTA')).AsString;
   ORM.GRUPOS_CONSULTA       := DAO.Query.FieldByName(TRIM('GRUPOS_CONSULTA      ')).AsString;
   ORM.USUARIOS              := DAO.Query.FieldByName(TRIM('USUARIOS             ')).AsString;
   ORM.PERMISSOES            := DAO.Query.FieldByName(TRIM('PERMISSOES           ')).AsString;
   ORM.PRODUTOS              := DAO.Query.FieldByName(TRIM('PRODUTOS             ')).AsString;
   ORM.PRODUTO_PRECOS        := DAO.Query.FieldByName(TRIM('PRODUTO_PRECOS       ')).AsString;
   ORM.PRODUTO_ESTOQUES      := DAO.Query.FieldByName(TRIM('PRODUTO_ESTOQUES     ')).AsString;
   ORM.PRODUTO_MANUTENCOES   := DAO.Query.FieldByName(TRIM('PRODUTO_MANUTENCOES  ')).AsString;
   ORM.LOCACAO_LANCAMENTO    := DAO.Query.FieldByName(TRIM('LOCACAO_LANCAMENTO   ')).AsString;
   ORM.LOCACAO_EDICAO        := DAO.Query.FieldByName(TRIM('LOCACAO_EDICAO       ')).AsString;
   ORM.LOCACAO_CANCELAMENTO  := DAO.Query.FieldByName(TRIM('LOCACAO_CANCELAMENTO ')).AsString;
   ORM.RELATORIOS_ESTOQUES   := DAO.Query.FieldByName(TRIM('RELATORIOS_ESTOQUES  ')).AsString;
   ORM.RELATORIOS_LOCACAO    := DAO.Query.FieldByName(TRIM('RELATORIOS_LOCACAO   ')).AsString;
   ORM.DT_UMOD               := DAO.Query.FieldByName(TRIM('DT_UMOD              ')).AsString;
   ORM.USUARIO               := DAO.Query.FieldByName(TRIM('USUARIO              ')).AsString;
end;

end.

