unit MODEL.ORM_ContasReceber;

interface

Type
   TORM_ContasReceber = Class
   Private
      FBANCO: String;
      FORIGEM_NUMERO: String;
      FHISTORICO: String;
      FDT_VENDA: String;
      FCOD_CONTA_DESP: String;
      FFLAG: String;
      FCODCL: String;
      FSUB_CONTA_DESP: String;
      FVALOR_VENCIMENTO: String;
      FVALOR_NOTA: String;
      FORIGEM_TIPO_NUM_CONT: String;
      FVALOR_PAGAMENTO: String;
      FCLIENTE: String;
      FCODIGO: String;
      FDT_VENCIMENTO: String;
      FORIGEM_TIPO: String;
      FCODEMPRESA: String;
      FNOTA: String;
      FCAIXA: String;
      FDOCUMENTO: String;
      FDT_PAGAMENTO: String;
      FDEST: String;
      FCOMISSAO: String;
      FCOD_SUB_CONTA_DESP: String;
      FCONTA_DESP: String;
      FDESTINO: String;
      FRECEBIDO_COM: String;
      FN_ORCAMENTO: String;
      FTIPO: String;
      FORIGEM: String;
      FNOTA_FISCAL: String;
      Procedure SetBANCO(Const Value: String);
      Procedure SetCAIXA(Const Value: String);
      Procedure SetCLIENTE(Const Value: String);
      Procedure SetCOD_CONTA_DESP(Const Value: String);
      Procedure SetCOD_SUB_CONTA_DESP(Const Value: String);
      Procedure SetCODCL(Const Value: String);
      Procedure SetCODEMPRESA(Const Value: String);
      Procedure SetCODIGO(Const Value: String);
      Procedure SetCOMISSAO(Const Value: String);
      Procedure SetCONTA_DESP(Const Value: String);
      Procedure SetDEST(Const Value: String);
      Procedure SetDESTINO(Const Value: String);
      Procedure SetDOCUMENTO(Const Value: String);
      Procedure SetDT_PAGAMENTO(Const Value: String);
      Procedure SetDT_VENCIMENTO(Const Value: String);
      Procedure SetDT_VENDA(Const Value: String);
      Procedure SetFLAG(Const Value: String);
      Procedure SetHISTORICO(Const Value: String);
      Procedure SetN_ORCAMENTO(Const Value: String);
      Procedure SetNOTA(Const Value: String);
      Procedure SetNOTA_FISCAL(Const Value: String);
      Procedure SetORIGEM(Const Value: String);
      Procedure SetORIGEM_NUMERO(Const Value: String);
      Procedure SetORIGEM_TIPO(Const Value: String);
      Procedure SetORIGEM_TIPO_NUM_CONT(Const Value: String);
      Procedure SetRECEBIDO_COM(Const Value: String);
      Procedure SetSUB_CONTA_DESP(Const Value: String);
      Procedure SetTIPO(Const Value: String);
      Procedure SetVALOR_NOTA(Const Value: String);
      Procedure SetVALOR_PAGAMENTO(Const Value: String);
      Procedure SetVALOR_VENCIMENTO(Const Value: String);
   Public
      Property CODIGO: String Read FCODIGO Write SetCODIGO;
      Property CODEMPRESA: String Read FCODEMPRESA Write SetCODEMPRESA;
      Property DT_VENCIMENTO: String Read FDT_VENCIMENTO Write SetDT_VENCIMENTO;
      Property DT_VENDA: String Read FDT_VENDA Write SetDT_VENDA;
      Property DT_PAGAMENTO: String Read FDT_PAGAMENTO Write SetDT_PAGAMENTO;
      Property NOTA: String Read FNOTA Write SetNOTA;
      Property DOCUMENTO: String Read FDOCUMENTO Write SetDOCUMENTO;
      Property VALOR_NOTA: String Read FVALOR_NOTA Write SetVALOR_NOTA;
      Property VALOR_VENCIMENTO: String Read FVALOR_VENCIMENTO Write SetVALOR_VENCIMENTO;
      Property VALOR_PAGAMENTO: String Read FVALOR_PAGAMENTO Write SetVALOR_PAGAMENTO;
      Property TIPO: String Read FTIPO Write SetTIPO;
      Property HISTORICO: String Read FHISTORICO Write SetHISTORICO;
      Property CODCL: String Read FCODCL Write SetCODCL;
      Property CLIENTE: String Read FCLIENTE Write SetCLIENTE;
      Property RECEBIDO_COM: String Read FRECEBIDO_COM Write SetRECEBIDO_COM;
      Property COMISSAO: String Read FCOMISSAO Write SetCOMISSAO;
      Property FLAG: String Read FFLAG Write SetFLAG;
      Property DEST: String Read FDEST Write SetDEST;
      Property ORIGEM: String Read FORIGEM Write SetORIGEM;
      Property ORIGEM_TIPO: String Read FORIGEM_TIPO Write SetORIGEM_TIPO;
      Property ORIGEM_NUMERO: String Read FORIGEM_NUMERO Write SetORIGEM_NUMERO;
      Property CAIXA: String Read FCAIXA Write SetCAIXA;
      Property ORIGEM_TIPO_NUM_CONT: String Read FORIGEM_TIPO_NUM_CONT Write SetORIGEM_TIPO_NUM_CONT;
      Property DESTINO: String Read FDESTINO Write SetDESTINO;
      Property COD_CONTA_DESP: String Read FCOD_CONTA_DESP Write SetCOD_CONTA_DESP;
      Property CONTA_DESP: String Read FCONTA_DESP Write SetCONTA_DESP;
      Property COD_SUB_CONTA_DESP: String Read FCOD_SUB_CONTA_DESP Write SetCOD_SUB_CONTA_DESP;
      Property SUB_CONTA_DESP: String Read FSUB_CONTA_DESP Write SetSUB_CONTA_DESP;
      Property BANCO: String Read FBANCO Write SetBANCO;
      Property N_ORCAMENTO: String Read FN_ORCAMENTO Write SetN_ORCAMENTO;
      Property NOTA_FISCAL: String Read FNOTA_FISCAL Write SetNOTA_FISCAL;
   End;


implementation

{ TORM_LOC_M1_ContasReceber_CABECALHO }

{ TORM_ContasReceber }

procedure TORM_ContasReceber.SetBANCO(const Value: string);
begin
  FBANCO := Value;
end;

procedure TORM_ContasReceber.SetCAIXA(const Value: string);
begin
  FCAIXA := Value;
end;

procedure TORM_ContasReceber.SetCLIENTE(const Value: string);
begin
  FCLIENTE := Value;
end;

procedure TORM_ContasReceber.SetCODCL(const Value: string);
begin
  FCODCL := Value;
end;

procedure TORM_ContasReceber.SetCODEMPRESA(const Value: string);
begin
  FCODEMPRESA := Value;
end;

procedure TORM_ContasReceber.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;

procedure TORM_ContasReceber.SetCOD_CONTA_DESP(const Value: string);
begin
  FCOD_CONTA_DESP := Value;
end;

procedure TORM_ContasReceber.SetCOD_SUB_CONTA_DESP(const Value: string);
begin
  FCOD_SUB_CONTA_DESP := Value;
end;

procedure TORM_ContasReceber.SetCOMISSAO(const Value: string);
begin
  FCOMISSAO := Value;
end;

procedure TORM_ContasReceber.SetCONTA_DESP(const Value: string);
begin
  FCONTA_DESP := Value;
end;

procedure TORM_ContasReceber.SetDEST(const Value: string);
begin
  FDEST := Value;
end;

procedure TORM_ContasReceber.SetDESTINO(const Value: string);
begin
  FDESTINO := Value;
end;

procedure TORM_ContasReceber.SetDOCUMENTO(const Value: string);
begin
  FDOCUMENTO := Value;
end;

procedure TORM_ContasReceber.SetDT_PAGAMENTO(const Value: string);
begin
  FDT_PAGAMENTO := Value;
end;

procedure TORM_ContasReceber.SetDT_VENCIMENTO(const Value: string);
begin
  FDT_VENCIMENTO := Value;
end;

procedure TORM_ContasReceber.SetDT_VENDA(const Value: string);
begin
  FDT_VENDA := Value;
end;

procedure TORM_ContasReceber.SetFLAG(const Value: string);
begin
  FFLAG := Value;
end;

procedure TORM_ContasReceber.SetHISTORICO(const Value: string);
begin
  FHISTORICO := Value;
end;

procedure TORM_ContasReceber.SetNOTA(const Value: string);
begin
  FNOTA := Value;
end;

procedure TORM_ContasReceber.SetNOTA_FISCAL(const Value: string);
begin
  FNOTA_FISCAL := Value;
end;

procedure TORM_ContasReceber.SetN_ORCAMENTO(const Value: string);
begin
  FN_ORCAMENTO := Value;
end;

procedure TORM_ContasReceber.SetORIGEM(const Value: string);
begin
  FORIGEM := Value;
end;

procedure TORM_ContasReceber.SetORIGEM_NUMERO(const Value: string);
begin
  FORIGEM_NUMERO := Value;
end;

procedure TORM_ContasReceber.SetORIGEM_TIPO(const Value: string);
begin
  FORIGEM_TIPO := Value;
end;

procedure TORM_ContasReceber.SetORIGEM_TIPO_NUM_CONT(const Value: String);
begin
  FORIGEM_TIPO_NUM_CONT := Value;
end;

procedure TORM_ContasReceber.SetRECEBIDO_COM(const Value: string);
begin
  FRECEBIDO_COM := Value;
end;

procedure TORM_ContasReceber.SetSUB_CONTA_DESP(const Value: string);
begin
  FSUB_CONTA_DESP := Value;
end;

procedure TORM_ContasReceber.SetTIPO(const Value: string);
begin
  FTIPO := Value;
end;

procedure TORM_ContasReceber.SetVALOR_NOTA(const Value: string);
begin
  FVALOR_NOTA := Value;
end;

procedure TORM_ContasReceber.SetVALOR_PAGAMENTO(const Value: string);
begin
  FVALOR_PAGAMENTO := Value;
end;

procedure TORM_ContasReceber.SetVALOR_VENCIMENTO(const Value: string);
begin
  FVALOR_VENCIMENTO := Value;
end;

end.
