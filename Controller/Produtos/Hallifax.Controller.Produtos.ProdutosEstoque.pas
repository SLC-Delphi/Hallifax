unit Hallifax.Controller.Produtos.ProdutosEstoque;

interface

uses
  MODEL.ORM_Loc_M1_ProdutosEstoque, Model.DAO.ProdutosEstoque_FD,
  Hallifax.Controller.Produtos.ProdutosEstoque_Interface;



Type
   TController_ProdutosEstoqueFD = Class (TInterfacedObject, IController_ProdutosEstoque_FD)
   Public
      DAO_Produtos: TDAO_ProdutosEstoque_FDAC;
      ORM_Produtos: TORM_Loc_M1_ProdutosEstoque;
      Procedure LoadGet;
      Function DAO: TDAO_ProdutosEstoque_FDAC;
      Function ORM: TORM_Loc_M1_ProdutosEstoque;
      Constructor Create;
      Destructor Destroy; Override;
   End;


implementation

uses
  System.SysUtils;

{ TController_ProdutosEstoqueFD }

constructor TController_ProdutosEstoqueFD.Create;
begin
   DAO_Produtos:= TDAO_ProdutosEstoque_FDAC.Create;
   ORM_Produtos:= TORM_Loc_M1_ProdutosEstoque.Create;
end;


destructor TController_ProdutosEstoqueFD.Destroy;
begin
  inherited;
   DAO_Produtos.DisposeOf;
   ORM_Produtos.DisposeOf;
end;


function TController_ProdutosEstoqueFD.DAO: TDAO_ProdutosEstoque_FDAC;
begin
   Result := DAO_Produtos;
end;



function TController_ProdutosEstoqueFD.ORM: TORM_Loc_M1_ProdutosEstoque;
begin
   Result := ORM_Produtos;
end;


procedure TController_ProdutosEstoqueFD.LoadGet;
begin
   ORM.CODIGO_PRODUTO        := DAO_Produtos.Query.FieldByName(TRIM('CODIGO_PRODUTO      ')).AsString;
   ORM.CODEMPRESA            := DAO_Produtos.Query.FieldByName(TRIM('CODEMPRESA          ')).AsString;
   ORM.PRODUTO               := DAO_Produtos.Query.FieldByName(TRIM('PRODUTO             ')).AsString;
   ORM.MARCA                 := DAO_Produtos.Query.FieldByName(TRIM('MARCA               ')).AsString;
   ORM.ESTOQUE_TOTAL         := DAO_Produtos.Query.FieldByName(TRIM('ESTOQUE_TOTAL       ')).AsString;
   ORM.QUANTIDADE_ALOCADA    := DAO_Produtos.Query.FieldByName(TRIM('QUANTIDADE_ALOCADA  ')).AsString;
   ORM.QUANTDADE_MANUTENCAO  := DAO_Produtos.Query.FieldByName(TRIM('QUANTDADE_MANUTENCAO')).AsString;
   ORM.ESTOQUE_DISPONIVEL    := DAO_Produtos.Query.FieldByName(TRIM('ESTOQUE_DISPONIVEL  ')).AsString;
   ORM.DATA_CADASTRO         := DAO_Produtos.Query.FieldByName(TRIM('DATA_CADASTRO       ')).AsString;
   ORM.DT_UMOD               := DAO_Produtos.Query.FieldByName(TRIM('DT_UMOD             ')).AsString;
   Orm.HORA_UMOD             := DAO_Produtos.Query.FieldByName(Trim('HORA_UMOD           ')).AsString;
   ORM.USUARIO               := DAO_Produtos.Query.FieldByName(TRIM('USUARIO             ')).AsString;
   ORM.LIXEIRA               := DAO_Produtos.Query.FieldByName(TRIM('LIXEIRA             ')).AsString;
end;

end.
