unit Hallifax.Controller.Produtos.ProdutosPreco;

interface

uses
  MODEL.ORM_Loc_M1_ProdutosPreco, Model.DAO.ProdutosPreco_FD,
  Hallifax.Controller.Produtos.ProdutosPreco_Interface;



Type
   TController_ProdutosPrecoFD = Class (TInterfacedObject, IController_ProdutosPreco_FD)
   Public
      DAO_Produtos: TDAO_ProdutosPreco_FDAC;
      ORM_Produtos: TORM_Loc_M1_ProdutosPreco;
      Procedure LoadGet;
      Function DAO: TDAO_ProdutosPreco_FDAC;
      Function ORM: TORM_Loc_M1_ProdutosPreco;
      Constructor Create;
      Destructor Destroy; Override;
   End;


implementation

uses
  System.SysUtils;

{ TController_ProdutosPrecoFD }

constructor TController_ProdutosPrecoFD.Create;
begin
   DAO_Produtos:= TDAO_ProdutosPreco_FDAC.Create;
   ORM_Produtos:= TORM_Loc_M1_ProdutosPreco.Create;
end;


destructor TController_ProdutosPrecoFD.Destroy;
begin
  inherited;
   DAO_Produtos.DisposeOf;
   ORM_Produtos.DisposeOf;
end;


function TController_ProdutosPrecoFD.DAO: TDAO_ProdutosPreco_FDAC;
begin
   Result := DAO_Produtos;
end;



function TController_ProdutosPrecoFD.ORM: TORM_Loc_M1_ProdutosPreco;
begin
   Result := ORM_Produtos;
end;


procedure TController_ProdutosPrecoFD.LoadGet;
begin
   ORM.CODIGO_PRODUTO    := DAO_Produtos.Query.FieldByName(TRIM('CODIGO_PRODUTO   ')).AsString;
   ORM.CODEMPRESA        := DAO_Produtos.Query.FieldByName(TRIM('CODEMPRESA       ')).AsString;
   ORM.PRODUTO           := DAO_Produtos.Query.FieldByName(TRIM('PRODUTO          ')).AsString;
   ORM.MARCA             := DAO_Produtos.Query.FieldByName(TRIM('MARCA            ')).AsString;
   ORM.PRECO01           := DAO_Produtos.Query.FieldByName(TRIM('PRECO01          ')).AsCurrency;
   ORM.PRECO02           := DAO_Produtos.Query.FieldByName(TRIM('PRECO02          ')).AsCurrency;
   ORM.PRECO03           := DAO_Produtos.Query.FieldByName(TRIM('PRECO03          ')).AsCurrency;
   ORM.PRECO04           := DAO_Produtos.Query.FieldByName(TRIM('PRECO04          ')).AsCurrency;
   ORM.PRECO05           := DAO_Produtos.Query.FieldByName(TRIM('PRECO05          ')).AsCurrency;
   ORM.PRECO06           := DAO_Produtos.Query.FieldByName(TRIM('PRECO06          ')).AsCurrency;
   ORM.PRECO07           := DAO_Produtos.Query.FieldByName(TRIM('PRECO07          ')).AsCurrency;
   ORM.PRECO08           := DAO_Produtos.Query.FieldByName(TRIM('PRECO08          ')).AsCurrency;
   ORM.PRECO09           := DAO_Produtos.Query.FieldByName(TRIM('PRECO09          ')).AsCurrency;
   ORM.PRECO10           := DAO_Produtos.Query.FieldByName(TRIM('PRECO10          ')).AsCurrency;
   ORM.PRECO11           := DAO_Produtos.Query.FieldByName(TRIM('PRECO11          ')).AsCurrency;
   ORM.PRECO12           := DAO_Produtos.Query.FieldByName(TRIM('PRECO12          ')).AsCurrency;
   ORM.PRECO13           := DAO_Produtos.Query.FieldByName(TRIM('PRECO13          ')).AsCurrency;
   ORM.PRECO14           := DAO_Produtos.Query.FieldByName(TRIM('PRECO14          ')).AsCurrency;
   ORM.PRECO15           := DAO_Produtos.Query.FieldByName(TRIM('PRECO15          ')).AsCurrency;
   ORM.PRECO16           := DAO_Produtos.Query.FieldByName(TRIM('PRECO16          ')).AsCurrency;
   ORM.PRECO17           := DAO_Produtos.Query.FieldByName(TRIM('PRECO17          ')).AsCurrency;
   ORM.PRECO18           := DAO_Produtos.Query.FieldByName(TRIM('PRECO18          ')).AsCurrency;
   ORM.PRECO19           := DAO_Produtos.Query.FieldByName(TRIM('PRECO19          ')).AsCurrency;
   ORM.PRECO20           := DAO_Produtos.Query.FieldByName(TRIM('PRECO20          ')).AsCurrency;
   ORM.PRECO21           := DAO_Produtos.Query.FieldByName(TRIM('PRECO21          ')).AsCurrency;
   ORM.PRECO22           := DAO_Produtos.Query.FieldByName(TRIM('PRECO22          ')).AsCurrency;
   ORM.PRECO23           := DAO_Produtos.Query.FieldByName(TRIM('PRECO23          ')).AsCurrency;
   ORM.PRECO24           := DAO_Produtos.Query.FieldByName(TRIM('PRECO24          ')).AsCurrency;
   ORM.PRECO25           := DAO_Produtos.Query.FieldByName(TRIM('PRECO25          ')).AsCurrency;
   ORM.PRECO26           := DAO_Produtos.Query.FieldByName(TRIM('PRECO26          ')).AsCurrency;
   ORM.PRECO27           := DAO_Produtos.Query.FieldByName(TRIM('PRECO27          ')).AsCurrency;
   ORM.PRECO28           := DAO_Produtos.Query.FieldByName(TRIM('PRECO28          ')).AsCurrency;
   ORM.PRECO29           := DAO_Produtos.Query.FieldByName(TRIM('PRECO29          ')).AsCurrency;
   ORM.PRECO30           := DAO_Produtos.Query.FieldByName(TRIM('PRECO30          ')).AsCurrency;
   ORM.PRECO31           := DAO_Produtos.Query.FieldByName(TRIM('PRECO31          ')).AsCurrency;
   ORM.DATA_CADASTRO     := DAO_Produtos.Query.FieldByName(TRIM('DATA_CADASTRO    ')).AsString;
   ORM.DT_UMOD           := DAO_Produtos.Query.FieldByName(TRIM('DT_UMOD          ')).AsString;
   Orm.HORA_UMOD         := DAO_Produtos.Query.FieldByName(Trim('HORA_UMOD        ')).AsString;
   ORM.USUARIO           := DAO_Produtos.Query.FieldByName(TRIM('USUARIO          ')).AsString;
   ORM.LIXEIRA           := DAO_Produtos.Query.FieldByName(TRIM('LIXEIRA          ')).AsString;
end;


end.
