unit MODEL.ORM_Loc_M1_Locacao;

interface

Type
   TORM_LOC_M1_LOCACAO = Class
   Private
      FFLAG_NOVA_RENOVADA: String;
      FBAIRRO_ENTREGA: String;
      FNUMEND_ENTREGA: String;
      FOBSERVACAO: String;
      FTOTAL_A_RECEBER: Currency;
      FFONE_CONTATO_ENTREGA: String;
      FQTD_DIAS: smallint;
      FDATAHORA_LOCACAO: TDateTime;
      FCODIGO_CLIENTE: Integer;
      FCLIENTE: String;
      FCODIGO: Integer;
      FCODEMPRESA: smallint;
      FTOTAL_LOCACAO: Currency;
      FDT_UMOD: TDate;
      FTOTAL_RECEBIDO: Currency;
      FCONTATO_ENTREGA: String;
      FDATA_ULTIMO_PGTO: TDate;
      FSITUACAO_PAGAR: String;
      FCIDADE_ENTREGA: String;
      FENDERECO_ENTREGA: String;
      FUSUARIO: String;
      FFLAG_LOC_EM_ABERTO: String;
      Procedure SetBAIRRO_ENTREGA(Const Value: String);
      Procedure SetCIDADE_ENTREGA(Const Value: String);
      Procedure SetCLIENTE(Const Value: String);
      Procedure SetCODEMPRESA(Const Value: smallint);
      Procedure SetCODIGO(Const Value: Integer);
      Procedure SetCODIGO_CLIENTE(Const Value: Integer);
      Procedure SetCONTATO_ENTREGA(Const Value: String);
      Procedure SetDATA_ULTIMO_PGTO(Const Value: TDate);
      Procedure SetDATAHORA_LOCACAO(Const Value: TDateTime);
      Procedure SetDT_UMOD(Const Value: TDate);
      Procedure SetENDERECO_ENTREGA(Const Value: String);
      Procedure SetFLAG_LOC_EM_ABERTO(Const Value: String);
      Procedure SetFLAG_NOVA_RENOVADA(Const Value: String);
      Procedure SetFONE_CONTATO_ENTREGA(Const Value: String);
      Procedure SetNUMEND_ENTREGA(Const Value: String);
      Procedure SetOBSERVACAO(Const Value: String);
      Procedure SetQTD_DIAS(Const Value: smallint);
      Procedure SetSITUACAO_PAGAR(Const Value: String);
      Procedure SetTOTAL_LOCACAO(Const Value: Currency);
      Procedure SetTOTAL_A_RECEBER(Const Value: Currency);
      Procedure SetTOTAL_RECEBIDO(Const Value: Currency);
      Procedure SetUSUARIO(Const Value: String);
   Public
      Property CODIGO: Integer Read FCODIGO Write SetCODIGO;
      Property CODEMPRESA: smallint Read FCODEMPRESA Write SetCODEMPRESA;
      Property DATAHORA_LOCACAO: TDateTime Read FDATAHORA_LOCACAO Write SetDATAHORA_LOCACAO;
      Property CODIGO_CLIENTE: Integer Read FCODIGO_CLIENTE Write SetCODIGO_CLIENTE;
      Property CLIENTE: String Read FCLIENTE Write SetCLIENTE;
      Property ENDERECO_ENTREGA: String Read FENDERECO_ENTREGA Write SetENDERECO_ENTREGA;
      Property NUMEND_ENTREGA: String Read FNUMEND_ENTREGA Write SetNUMEND_ENTREGA;
      Property BAIRRO_ENTREGA: String Read FBAIRRO_ENTREGA Write SetBAIRRO_ENTREGA;
      Property CIDADE_ENTREGA: String Read FCIDADE_ENTREGA Write SetCIDADE_ENTREGA;
      Property CONTATO_ENTREGA: String Read FCONTATO_ENTREGA Write SetCONTATO_ENTREGA;
      Property FONE_CONTATO_ENTREGA: String Read FFONE_CONTATO_ENTREGA Write SetFONE_CONTATO_ENTREGA;
      Property OBSERVACAO: String Read FOBSERVACAO Write SetOBSERVACAO;
      Property FLAG_LOC_EM_ABERTO: String Read FFLAG_LOC_EM_ABERTO Write SetFLAG_LOC_EM_ABERTO;
      Property FLAG_NOVA_RENOVADA: String Read FFLAG_NOVA_RENOVADA Write SetFLAG_NOVA_RENOVADA;
      Property SITUACAO_PAGAR: String Read FSITUACAO_PAGAR Write SetSITUACAO_PAGAR;
      Property DATA_ULTIMO_PGTO: TDate Read FDATA_ULTIMO_PGTO Write SetDATA_ULTIMO_PGTO;
      Property QTD_DIAS: smallint Read FQTD_DIAS Write SetQTD_DIAS;
      Property TOTAL_LOCACAO: Currency Read FTOTAL_LOCACAO Write SetTOTAL_LOCACAO;
      Property TOTAL_RECEBIDO: Currency Read FTOTAL_RECEBIDO Write SetTOTAL_RECEBIDO;
      Property TOTAL_A_RECEBER: Currency Read FTOTAL_A_RECEBER Write SetTOTAL_A_RECEBER;
      Property DT_UMOD: TDate Read FDT_UMOD Write SetDT_UMOD;
      Property USUARIO: String Read FUSUARIO Write SetUSUARIO;
   End;


implementation

{ TORM_LOC_M1_LOCACAO }

procedure TORM_LOC_M1_LOCACAO.SetBAIRRO_ENTREGA(const Value: String);
begin
  FBAIRRO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetCIDADE_ENTREGA(const Value: String);
begin
  FCIDADE_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetCLIENTE(const Value: String);
begin
  FCLIENTE := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetCODEMPRESA(const Value: smallint);
begin
  FCODEMPRESA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetCODIGO(const Value: INTEGER);
begin
  FCODIGO := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetCODIGO_CLIENTE(const Value: Integer);
begin
  FCODIGO_CLIENTE := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetCONTATO_ENTREGA(const Value: String);
begin
  FCONTATO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetDATAHORA_LOCACAO(const Value: TDateTime);
begin
  FDATAHORA_LOCACAO := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetDATA_ULTIMO_PGTO(const Value: TDate);
begin
  FDATA_ULTIMO_PGTO := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetDT_UMOD(const Value: TDate);
begin
  FDT_UMOD := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetENDERECO_ENTREGA(const Value: String);
begin
  FENDERECO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetFLAG_LOC_EM_ABERTO(const Value: String);
begin
  FFLAG_LOC_EM_ABERTO := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetFLAG_NOVA_RENOVADA(const Value: String);
begin
  FFLAG_NOVA_RENOVADA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetFONE_CONTATO_ENTREGA(const Value: String);
begin
  FFONE_CONTATO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetNUMEND_ENTREGA(const Value: String);
begin
  FNUMEND_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetOBSERVACAO(const Value: String);
begin
  FOBSERVACAO := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetQTD_DIAS(const Value: smallint);
begin
  FQTD_DIAS := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetSITUACAO_PAGAR(const Value: String);
begin
  FSITUACAO_PAGAR := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetTOTAL_LOCACAO(const Value: Currency);
begin
  FTOTAL_LOCACAO := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetTOTAL_A_RECEBER(const Value: Currency);
begin
  FTOTAL_A_RECEBER := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetTOTAL_RECEBIDO(const Value: Currency);
begin
  FTOTAL_RECEBIDO := Value;
end;

procedure TORM_LOC_M1_LOCACAO.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;

end.
(
    CODIGO                            CODIGO,
    DATAHORA_LOCACAO     TIMESTAMP,
    CODIGO_CLIENTE             CODIGO,
    CLIENTE                            NOME,
    ENDERECO_ENTREGA       NOME,
    NUMEND_ENTREGA         VARCHAR(15),
    BAIRRO_ENTREGA            NOME,
    CIDADE_ENTREGA            NOME,
    CONTATO_ENTREGA         NOME,
    FONE_CONTATO_ENTREGA       FONE_CELULAR,
    OBSERVACAO                            OBSERVACAO_CURTA,
    FLAG_LOC_EM_ABERTO             FLAG_SIMPLES,
    FLAG_NOVA_RENOVADA          VARCHAR(10) CHARACTER SET ISO8859_1 DEFAULT 'NOVA' ,
    SITUACAO_PAGAR                     VARCHAR(2) CHARACTER SET ISO8859_1 DEFAULT 'NP' ,
    DATA_ULTIMO_PGTO                 DATE,
    QTD_DIAS                                   SMALLINT,
    TOTAL_LOCACAO                       PRECO_PGTO_M1,
    TOTAL_RECEBIDO                             PRECO_PGTO_M1,
    TOTAL_A_RECEBER                    PRECO_PGTO_M1.
     DT_UMOD                       DATE,
     USUARIO                         NOME
);
