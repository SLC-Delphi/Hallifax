unit MODEL.ORM_Loc_M1_Produtos;

interface

type
   TORM_Loc_M1_Produtos = Class
  private
    FPRODUTO: String;
    FLIXEIRA: String;
    FDATA_ULTIMA_LOCACAO: String;
    FDESCRICAO: String;
    FDATA_CADASTRO: String;
    FCODIGO: String;
    FCODEMPRESA: String;
    FCODIGO_DE_BARRAS: String;
    FFOTO: String;
    FDT_UMOD: String;
    FFORNECEDOR: String;
    FUNIDADE: String;
    FMARCA: String;
    FUSUARIO: String;
    FGRUPO: String;
    FHORA_UMOD: String;
    procedure SetCODEMPRESA(const Value: String);
    procedure SetCODIGO(const Value: String);
    procedure SetCODIGO_DE_BARRAS(const Value: String);
    procedure SetDATA_CADASTRO(const Value: String);
    procedure SetDATA_ULTIMA_LOCACAO(const Value: String);
    procedure SetDESCRICAO(const Value: String);
    procedure SetDT_UMOD(const Value: String);
    procedure SetFORNECEDOR(const Value: String);
    procedure SetFOTO(const Value: String);
    procedure SetGRUPO(const Value: String);
    procedure SetLIXEIRA(const Value: String);
    procedure SetMARCA(const Value: String);
    procedure SetPRODUTO(const Value: String);
    procedure SetUNIDADE(const Value: String);
    procedure SetUSUARIO(const Value: String);
    procedure SetHORA_UMOD(const Value: String);
   Public
      Property CODIGO              : String Read FCODIGO Write SetCODIGO;
      Property CODEMPRESA          : String Read FCODEMPRESA Write SetCODEMPRESA;
      Property PRODUTO             : String Read FPRODUTO Write SetPRODUTO;
      Property UNIDADE             : String Read FUNIDADE Write SetUNIDADE;
      Property CODIGO_DE_BARRAS    : String Read FCODIGO_DE_BARRAS Write SetCODIGO_DE_BARRAS;
      Property MARCA               : String Read FMARCA Write SetMARCA;
      Property GRUPO               : String Read FGRUPO Write SetGRUPO;
      Property FORNECEDOR          : String Read FFORNECEDOR Write SetFORNECEDOR;
      Property DESCRICAO           : String Read FDESCRICAO Write SetDESCRICAO;
      Property FOTO                : String Read FFOTO Write SetFOTO;
      Property DATA_CADASTRO       : String Read FDATA_CADASTRO Write SetDATA_CADASTRO;
      Property DATA_ULTIMA_LOCACAO : String Read FDATA_ULTIMA_LOCACAO Write SetDATA_ULTIMA_LOCACAO;
      Property DT_UMOD             : String Read FDT_UMOD Write SetDT_UMOD;
      Property HORA_UMOD: String  read FHORA_UMOD write SetHORA_UMOD;
      Property USUARIO             : String Read FUSUARIO Write SetUSUARIO;
      Property LIXEIRA             : String Read FLIXEIRA Write SetLIXEIRA;
   End;

implementation

{ TORM_Loc_M1_Produtos }

{ TORM_Loc_M1_Produtos }

procedure TORM_Loc_M1_Produtos.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TORM_Loc_M1_Produtos.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;

procedure TORM_Loc_M1_Produtos.SetCODIGO_DE_BARRAS(const Value: String);
begin
  FCODIGO_DE_BARRAS := Value;
end;

procedure TORM_Loc_M1_Produtos.SetDATA_CADASTRO(const Value: String);
begin
  FDATA_CADASTRO := Value;
end;

procedure TORM_Loc_M1_Produtos.SetDATA_ULTIMA_LOCACAO(const Value: String);
begin
  FDATA_ULTIMA_LOCACAO := Value;
end;

procedure TORM_Loc_M1_Produtos.SetDESCRICAO(const Value: String);
begin
  FDESCRICAO := Value;
end;

procedure TORM_Loc_M1_Produtos.SetDT_UMOD(const Value: String);
begin
  FDT_UMOD := Value;
end;

procedure TORM_Loc_M1_Produtos.SetFORNECEDOR(const Value: String);
begin
  FFORNECEDOR := Value;
end;

procedure TORM_Loc_M1_Produtos.SetFOTO(const Value: String);
begin
  FFOTO := Value;
end;

procedure TORM_Loc_M1_Produtos.SetGRUPO(const Value: String);
begin
  FGRUPO := Value;
end;

procedure TORM_Loc_M1_Produtos.SetHORA_UMOD(const Value: String);
begin
  FHORA_UMOD := Value;
end;

procedure TORM_Loc_M1_Produtos.SetLIXEIRA(const Value: String);
begin
  FLIXEIRA := Value;
end;

procedure TORM_Loc_M1_Produtos.SetMARCA(const Value: String);
begin
  FMARCA := Value;
end;

procedure TORM_Loc_M1_Produtos.SetPRODUTO(const Value: String);
begin
  FPRODUTO := Value;
end;

procedure TORM_Loc_M1_Produtos.SetUNIDADE(const Value: String);
begin
  FUNIDADE := Value;
end;

procedure TORM_Loc_M1_Produtos.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;

end.
