unit MODEL.ORM_Loc_M1_LocacaoCabecalho;

interface

Type
   TORM_LOC_M1_LOCACAO_CABECALHO = Class
   Private
      FFLAG_NOVA_RENOVADA: String;
      FBAIRRO_ENTREGA: String;
      FNUMEND_ENTREGA: String;
      FOBSERVACAO: String;
      FTOTAL_A_RECEBER: String;
      FFONE_CONTATO_ENTREGA: String;
      FQTD_DIAS: String;
      FDATA_LOCACAO: String;
      FCODIGO_CLIENTE: String;
      FCLIENTE: String;
      FCODIGO: String;
      FCODEMPRESA: String;
      FTOTAL_LOCACAO: String;
      FDT_UMOD: String;
      FTOTAL_RECEBIDO: String;
      FCONTATO_ENTREGA: String;
      FDATA_ULTIMO_PGTO: String;
      FSITUACAO_PAGAR: String;
      FCIDADE_ENTREGA: String;
      FENDERECO_ENTREGA: String;
      FUSUARIO: String;
      FFLAG_LOC_EM_ABERTO: String;
    FHORA_UMOD: String;
      Procedure SetBAIRRO_ENTREGA(Const Value: String);
      Procedure SetCIDADE_ENTREGA(Const Value: String);
      Procedure SetCLIENTE(Const Value: String);
      Procedure SetCODEMPRESA(Const Value: String);
      Procedure SetCODIGO(Const Value: String);
      Procedure SetCODIGO_CLIENTE(Const Value: String);
      Procedure SetCONTATO_ENTREGA(Const Value: String);
      Procedure SetDATA_ULTIMO_PGTO(Const Value: String);
      Procedure SetDATA_LOCACAO(Const Value: String);
      Procedure SetDT_UMOD(Const Value: String);
      Procedure SetENDERECO_ENTREGA(Const Value: String);
      Procedure SetFLAG_LOC_EM_ABERTO(Const Value: String);
      Procedure SetFLAG_NOVA_RENOVADA(Const Value: String);
      Procedure SetFONE_CONTATO_ENTREGA(Const Value: String);
      Procedure SetNUMEND_ENTREGA(Const Value: String);
      Procedure SetOBSERVACAO(Const Value: String);
      Procedure SetQTD_DIAS(Const Value: String);
      Procedure SetSITUACAO_PAGAR(Const Value: String);
      Procedure SetTOTAL_LOCACAO(Const Value: String);
      Procedure SetTOTAL_A_RECEBER(Const Value: String);
      Procedure SetTOTAL_RECEBIDO(Const Value: String);
      Procedure SetUSUARIO(Const Value: String);
    procedure SetHORA_UMOD(const Value: String);
   Public
      Property CODIGO: String Read FCODIGO Write SetCODIGO;
      Property CODEMPRESA: String Read FCODEMPRESA Write SetCODEMPRESA;
      Property DATA_LOCACAO: String Read FDATA_LOCACAO Write SetDATA_LOCACAO;
      Property CODIGO_CLIENTE: String Read FCODIGO_CLIENTE Write SetCODIGO_CLIENTE;
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
      Property DATA_ULTIMO_PGTO: String Read FDATA_ULTIMO_PGTO Write SetDATA_ULTIMO_PGTO;
      Property QTD_DIAS: String Read FQTD_DIAS Write SetQTD_DIAS;
      Property TOTAL_LOCACAO: String Read FTOTAL_LOCACAO Write SetTOTAL_LOCACAO;
      Property TOTAL_RECEBIDO: String Read FTOTAL_RECEBIDO Write SetTOTAL_RECEBIDO;
      Property TOTAL_A_RECEBER: String Read FTOTAL_A_RECEBER Write SetTOTAL_A_RECEBER;
      Property DT_UMOD: String Read FDT_UMOD Write SetDT_UMOD;
      Property HORA_UMOD: String read FHORA_UMOD write SetHORA_UMOD;
      Property USUARIO: String Read FUSUARIO Write SetUSUARIO;
   End;


implementation

{ TORM_LOC_M1_LOCACAO_CABECALHO }

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetBAIRRO_ENTREGA(const Value: String);
begin
  FBAIRRO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetCIDADE_ENTREGA(const Value: String);
begin
  FCIDADE_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetCLIENTE(const Value: String);
begin
  FCLIENTE := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetCODIGO_CLIENTE(const Value: String);
begin
  FCODIGO_CLIENTE := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetCONTATO_ENTREGA(const Value: String);
begin
  FCONTATO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetDATA_LOCACAO(const Value: String);
begin
  FDATA_LOCACAO := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetDATA_ULTIMO_PGTO(const Value: String);
begin
  FDATA_ULTIMO_PGTO := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetDT_UMOD(const Value: String);
begin
  FDT_UMOD := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetENDERECO_ENTREGA(const Value: String);
begin
  FENDERECO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetFLAG_LOC_EM_ABERTO(const Value: String);
begin
  FFLAG_LOC_EM_ABERTO := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetFLAG_NOVA_RENOVADA(const Value: String);
begin
  FFLAG_NOVA_RENOVADA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetFONE_CONTATO_ENTREGA(const Value: String);
begin
  FFONE_CONTATO_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetHORA_UMOD(const Value: String);
begin
  FHORA_UMOD := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetNUMEND_ENTREGA(const Value: String);
begin
  FNUMEND_ENTREGA := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetOBSERVACAO(const Value: String);
begin
  FOBSERVACAO := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetQTD_DIAS(const Value: String);
begin
  FQTD_DIAS := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetSITUACAO_PAGAR(const Value: String);
begin
  FSITUACAO_PAGAR := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetTOTAL_LOCACAO(const Value: String);
begin
  FTOTAL_LOCACAO := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetTOTAL_A_RECEBER(const Value: String);
begin
  FTOTAL_A_RECEBER := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetTOTAL_RECEBIDO(const Value: String);
begin
  FTOTAL_RECEBIDO := Value;
end;

procedure TORM_LOC_M1_LOCACAO_CABECALHO.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;

end.

