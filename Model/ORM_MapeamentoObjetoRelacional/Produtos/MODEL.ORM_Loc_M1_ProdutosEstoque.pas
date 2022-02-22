unit MODEL.ORM_Loc_M1_ProdutosEstoque;

Interface

Type
   TORM_LOC_M1_PRODUTOSESTOQUE = Class
   Private
      FCODIGO_PRODUTO: String;
      FPRODUTO : String;
      FDATA_CADASTRO: String;
      FQUANTIDADE_ALOCADA: String;
      FCODIGO: String;
      FCODEMPRESA: String;
      FESTOQUE_TOTAL: String;
      FDT_UMOD: String;
      FESTOQUE_DISPONIVEL: String;
      FUSUARIO: String;
      FQUANTDADE_MANUTENCAO: String;
    FLIXEIRA: String;
    FMARCA: String;
    FHORA_UMOD: String;
      Procedure SetCODEMPRESA(Const Value: String);
      Procedure SetCODIGO_PRODUTO(Const Value: String);
      Procedure SetDT_UMOD(Const Value: String);
      Procedure SetDATA_CADASTRO(Const Value: String);
      Procedure SetESTOQUE_DISPONIVEL(Const Value: String);
      Procedure SetESTOQUE_TOTAL(Const Value: String);
      Procedure SetPRODUTO(Const Value: String);
      Procedure SetQUANTDADE_MANUTENCAO(Const Value: String);
      Procedure SetQUANTIDADE_ALOCADA(Const Value: String);
      Procedure SetUSUARIO(Const Value: String);
    procedure SetLIXEIRA(const Value: String);
    procedure SetMARCA(const Value: String);
    procedure SetHORA_UMOD(const Value: String);
   Public
      Property CODEMPRESA: String Read FCODEMPRESA Write SetCODEMPRESA;
      Property CODIGO_PRODUTO: String Read FCODIGO_PRODUTO Write SetCODIGO_PRODUTO;
      Property PRODUTO: String Read FPRODUTO Write SetPRODUTO;
      Property MARCA: String read FMARCA write SetMARCA;
      Property ESTOQUE_TOTAL: String Read FESTOQUE_TOTAL Write SetESTOQUE_TOTAL;
      Property QUANTIDADE_ALOCADA: String Read FQUANTIDADE_ALOCADA Write SetQUANTIDADE_ALOCADA;
      Property QUANTDADE_MANUTENCAO: String Read FQUANTDADE_MANUTENCAO Write SetQUANTDADE_MANUTENCAO;
      Property ESTOQUE_DISPONIVEL: String Read FESTOQUE_DISPONIVEL Write SetESTOQUE_DISPONIVEL;
      Property DATA_CADASTRO: String Read FDATA_CADASTRO Write SetDATA_CADASTRO;
      Property DT_UMOD: String Read FDT_UMOD Write SetDT_UMOD;
      Property HORA_UMOD: String read FHORA_UMOD write SetHORA_UMOD;
      Property USUARIO: String Read FUSUARIO Write SetUSUARIO;
      Property LIXEIRA: String read FLIXEIRA write SetLIXEIRA;
   End;

implementation

{ TORM_LOC_M1_PRODUTOSESTOQUE }

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;


procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetCODIGO_PRODUTO(const Value: String);
begin
  FCODIGO_PRODUTO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetDATA_CADASTRO(const Value: String);
begin
  FDATA_CADASTRO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetDT_UMOD(const Value: String);
begin
  FDT_UMOD := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetESTOQUE_DISPONIVEL(const Value: String);
begin
  FESTOQUE_DISPONIVEL := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetESTOQUE_TOTAL(const Value: String);
begin
  FESTOQUE_TOTAL := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetHORA_UMOD(const Value: String);
begin
  FHORA_UMOD := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetLIXEIRA(const Value: String);
begin
  FLIXEIRA := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetMARCA(const Value: String);
begin
  FMARCA := Value;
end;


procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetPRODUTO(const Value: string);
begin
  FPRODUTO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetQUANTDADE_MANUTENCAO(const Value: String);
begin
  FQUANTDADE_MANUTENCAO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetQUANTIDADE_ALOCADA(const Value: String);
begin
  FQUANTIDADE_ALOCADA := Value;
end;

procedure TORM_LOC_M1_PRODUTOSESTOQUE.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;

end.
