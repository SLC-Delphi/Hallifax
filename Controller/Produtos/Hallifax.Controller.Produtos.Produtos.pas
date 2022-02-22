unit Hallifax.Controller.Produtos.Produtos;

interface

uses
  Model.DAO.Produtos_FD, MODEL.ORM_Loc_M1_Produtos,
  Hallifax.Controller.Produtos.Produtos_Interface;

Type
   TController_ProdutosFD = Class (TInterfacedObject, IController_Produtos_FD)
   Public
      DAO_Produtos: TDAO_Produtos_FD;
      ORM_Produtos: TORM_Loc_M1_Produtos;
      Procedure LoadGet;
      Function DAO: TDAO_Produtos_FD;
      Function ORM: TORM_Loc_M1_Produtos;
      Constructor Create;
      Destructor Destroy; Override;
   End;


implementation

{ TController_ProdutosFD }

constructor TController_ProdutosFD.Create;
begin
   DAO_Produtos:= TDAO_Produtos_FD.Create;
   ORM_Produtos:= TORM_Loc_M1_Produtos.Create;
end;


destructor TController_ProdutosFD.Destroy;
begin
  inherited;
   DAO_Produtos.DisposeOf;
   ORM_Produtos.DisposeOf;
end;


function TController_ProdutosFD.DAO: TDAO_Produtos_FD;
begin
   Result := DAO_Produtos;
end;



function TController_ProdutosFD.ORM: TORM_Loc_M1_Produtos;
begin
   Result := ORM_Produtos;
end;


procedure TController_ProdutosFD.LoadGet;
begin
   Orm.CODIGO               := DAO_Produtos.Query.FieldByName('CODIGO').AsString;
   Orm.CODEMPRESA           := DAO_Produtos.Query.FieldByName('CODEMPRESA').AsString;
   Orm.PRODUTO              := DAO_Produtos.Query.FieldByName('PRODUTO').AsString;
   Orm.UNIDADE              := DAO_Produtos.Query.FieldByName('UNIDADE').AsString;
   Orm.CODIGO_DE_BARRAS     := DAO_Produtos.Query.FieldByName('CODIGO_DE_BARRAS').AsString;
   Orm.MARCA                := DAO_Produtos.Query.FieldByName('MARCA').AsString;
   Orm.GRUPO                := DAO_Produtos.Query.FieldByName('GRUPO').AsString;
   Orm.FORNECEDOR           := DAO_Produtos.Query.FieldByName('FORNECEDOR').AsString;
   Orm.DESCRICAO            := DAO_Produtos.Query.FieldByName('DESCRICAO').AsString;
   Orm.FOTO                 := DAO_Produtos.Query.FieldByName('FOTO').AsString;
   Orm.DATA_CADASTRO        := DAO_Produtos.Query.FieldByName('DATA_CADASTRO').AsString;
   Orm.DATA_ULTIMA_LOCACAO  := DAO_Produtos.Query.FieldByName('DATA_ULTIMA_LOCACAO').AsString;
   Orm.DT_UMOD              := DAO_Produtos.Query.FieldByName('DT_UMOD').AsString;
   Orm.HORA_UMOD            := DAO_Produtos.Query.FieldByName('HORA_UMOD').AsString;
   Orm.USUARIO              := DAO_Produtos.Query.FieldByName('USUARIO').AsString;
   Orm.LIXEIRA              := DAO_Produtos.Query.FieldByName('LIXEIRA').AsString;
end;

end.
