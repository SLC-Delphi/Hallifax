unit MODEL.ORM_Loc_M1_ProdutosManutencao;

Interface

Type
   TORM_LOC_M1_PRODUTOSMANUTENCAO = Class
  private
    FPRODUTO: String;
    FDATA_ENCERRAMENTO: String;
    FCODIGO: String;
    FCODEMPRESA: String;
    FHORA_UMOD: String;
    FFLAG_MANUTENCAO: String;
    FDATA_INICIAL: String;
    FDT_UMOD: String;
    FQUANTIDADE: String;
    FMARCA: String;
    FUSUARIO: String;
    FQUANTIDADE_DEVOLVIDA: StrinG;
    FCODIGO_PRODUTO: String;
    procedure SetCODEMPRESA(const Value: String);
    procedure SetCODIGO(const Value: String);
    procedure SetCODIGO_PRODUTO(const Value: String);
    procedure SetDATA_ENCERRAMENTO(const Value: String);
    procedure SetDATA_INICIAL(const Value: String);
    procedure SetDT_UMOD(const Value: String);
    procedure SetFLAG_MANUTENCAO(const Value: String);
    procedure SetHORA_UMOD(const Value: String);
    procedure SetMARCA(const Value: String);
    procedure SetPRODUTO(const Value: String);
    procedure SetQUANTIDADE(const Value: String);
    procedure SetQUANTIDADE_DEVOLVIDA(const Value: StrinG);
    procedure SetUSUARIO(const Value: String);
   Public
      Property CODIGO: String  read FCODIGO write SetCODIGO;
      Property CODEMPRESA: String  read FCODEMPRESA write SetCODEMPRESA;
      Property CODIGO_PRODUTO: String  read FCODIGO_PRODUTO write SetCODIGO_PRODUTO;
      Property PRODUTO: String  read FPRODUTO write SetPRODUTO;
      Property MARCA: String  read FMARCA write SetMARCA;
      Property QUANTIDADE: String read FQUANTIDADE write SetQUANTIDADE;
      Property DATA_INICIAL: String read FDATA_INICIAL write SetDATA_INICIAL;
      Property FLAG_MANUTENCAO: String  read FFLAG_MANUTENCAO write SetFLAG_MANUTENCAO;
      Property QUANTIDADE_DEVOLVIDA: StrinG read FQUANTIDADE_DEVOLVIDA write SetQUANTIDADE_DEVOLVIDA;
      Property DATA_ENCERRAMENTO: String read FDATA_ENCERRAMENTO write SetDATA_ENCERRAMENTO;
      Property DT_UMOD: String  read FDT_UMOD write SetDT_UMOD;
      Property HORA_UMOD: String  read FHORA_UMOD write SetHORA_UMOD;
      Property USUARIO: String read FUSUARIO write SetUSUARIO;
   End;

implementation

{ TORM_LOC_M1_PRODUTOSMANUTENCAO }


{ TORM_LOC_M1_PRODUTOSMANUTENCAO }

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetCODIGO_PRODUTO(const Value: String);
begin
  FCODIGO_PRODUTO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetDATA_ENCERRAMENTO(const Value: String);
begin
  FDATA_ENCERRAMENTO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetDATA_INICIAL(const Value: String);
begin
  FDATA_INICIAL := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetDT_UMOD(const Value: String);
begin
  FDT_UMOD := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetFLAG_MANUTENCAO(const Value: String);
begin
  FFLAG_MANUTENCAO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetHORA_UMOD(const Value: String);
begin
  FHORA_UMOD := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetMARCA(const Value: String);
begin
  FMARCA := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetPRODUTO(const Value: String);
begin
  FPRODUTO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetQUANTIDADE(const Value: String);
begin
  FQUANTIDADE := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetQUANTIDADE_DEVOLVIDA(const Value: StrinG);
begin
  FQUANTIDADE_DEVOLVIDA := Value;
end;

procedure TORM_LOC_M1_PRODUTOSMANUTENCAO.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;

end.
