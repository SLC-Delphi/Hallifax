unit Hallifax.Controller.Produtos.ProdutosManutencao;

interface

uses
  MODEL.ORM_Loc_M1_ProdutosManutencao, Model.DAO.ProdutosManutencao_FD,
  Hallifax.Controller.Produtos.ProdutosManutencao_Interface;



Type
   TController_ProdutosManutencaoFD = Class (TInterfacedObject, IController_ProdutosManutencao_FD)
   Public
      DAO_Manutencao: TDAO_ProdutosManutencao_FDAC;
      ORM_Manutencao: TORM_Loc_M1_ProdutosManutencao;
      Procedure LoadGet;
      Function DAO: TDAO_ProdutosManutencao_FDAC;
      Function ORM: TORM_Loc_M1_ProdutosManutencao;
      Constructor Create;
      Destructor Destroy; Override;
   End;


implementation

uses
  System.SysUtils;

{ TController_ProdutosManutencaoFD }

constructor TController_ProdutosManutencaoFD.Create;
begin
   DAO_Manutencao:= TDAO_ProdutosManutencao_FDAC.Create;
   ORM_Manutencao:= TORM_Loc_M1_ProdutosManutencao.Create;
end;


destructor TController_ProdutosManutencaoFD.Destroy;
begin
  inherited;
   DAO_Manutencao.DisposeOf;
   ORM_Manutencao.DisposeOf;
end;


function TController_ProdutosManutencaoFD.DAO: TDAO_ProdutosManutencao_FDAC;
begin
   Result := DAO_Manutencao;
end;



function TController_ProdutosManutencaoFD.ORM: TORM_Loc_M1_ProdutosManutencao;
begin
   Result := ORM_Manutencao;
end;


procedure TController_ProdutosManutencaoFD.LoadGet;
begin
   ORM.CODIGO               := DAO_Manutencao.Query.FieldByName(TRIM('CODIGO               ')).AsString;
   ORM.CODIGO_PRODUTO       := DAO_Manutencao.Query.FieldByName(TRIM('CODIGO_PRODUTO       ')).AsString;
   ORM.CODEMPRESA           := DAO_Manutencao.Query.FieldByName(TRIM('CODEMPRESA           ')).AsString;
   ORM.PRODUTO              := DAO_Manutencao.Query.FieldByName(TRIM('PRODUTO              ')).AsString;
   ORM.MARCA                := DAO_Manutencao.Query.FieldByName(TRIM('MARCA                ')).AsString;
   ORM.QUANTIDADE           := CurrToStr(DAO_Manutencao.Query.FieldByName(TRIM('QUANTIDADE           ')).AsCurrency);
   ORM.DATA_INICIAL         := DateToStr(DAO_Manutencao.Query.FieldByName(TRIM('DATA_INICIAL         ')).AsDateTime);
   ORM.FLAG_MANUTENCAO      := DAO_Manutencao.Query.FieldByName(TRIM('FLAG_MANUTENCAO      ')).AsString;
   ORM.QUANTIDADE_DEVOLVIDA := CurrToStr(DAO_Manutencao.Query.FieldByName(TRIM('QUANTIDADE_DEVOLVIDA ')).AsCurrency);
   ORM.DATA_ENCERRAMENTO    := DateToStr(DAO_Manutencao.Query.FieldByName(TRIM('DATA_ENCERRAMENTO    ')).AsDateTime);
   ORM.DT_UMOD              := DAO_Manutencao.Query.FieldByName(TRIM('DT_UMOD             ')).AsString;
   Orm.HORA_UMOD            := DAO_Manutencao.Query.FieldByName(Trim('HORA_UMOD           ')).AsString;
   ORM.USUARIO              := DAO_Manutencao.Query.FieldByName(TRIM('USUARIO             ')).AsString;
end;

end.
