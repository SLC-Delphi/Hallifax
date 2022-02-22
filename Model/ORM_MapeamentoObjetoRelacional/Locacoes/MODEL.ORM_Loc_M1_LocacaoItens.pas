unit MODEL.ORM_Loc_M1_LocacaoItens;

interface

Type
   TORM_LOC_M1_LocacaoItens = Class
   Private
      FPRODUTO: String;
      FQTD_DIAS: String;
      FVALOR_LOCACAO: String;
      FCODIGO: String;
      FFLAG_PAGO: String;
      FVALOR_RECEBIDO: String;
      FCODIGO_LOCACAO: String;
      FVALOR_PRODUTO_N_DIAS: String;
      FVALOR_EM_ABERTO: String;
      FQTD_PRODUTO: String;
      FMARCA: String;
      FGRUPO: String;
    FCODIGO_CTASRECEBER: String;
      Procedure SetCODIGO(Const Value: String);
      Procedure SetCODIGO_LOCACAO(Const Value: String);
      Procedure SetFLAG_PAGO(Const Value: String);
      Procedure SetGRUPO(Const Value: String);
      Procedure SetMARCA(Const Value: String);
      Procedure SetPRODUTO(Const Value: String);
      Procedure SetQTD_DIAS(Const Value: String);
      Procedure SetQTD_PRODUTO(Const Value: String);
      Procedure SetVALOR_EM_ABERTO(Const Value: String);
      Procedure SetVALOR_LOCACAO(Const Value: String);
      Procedure SetVALOR_PRODUTO_N_DIAS(Const Value: String);
      Procedure SetVALOR_RECEBIDO(Const Value: String);
    procedure SetCODIGO_CTASRECEBER(const Value: String);
   Public
      { public declarations }
      Property CODIGO: String Read FCODIGO Write SetCODIGO;
      Property CODIGO_LOCACAO: String Read FCODIGO_LOCACAO Write SetCODIGO_LOCACAO;
      Property GRUPO: String Read FGRUPO Write SetGRUPO;
      Property PRODUTO: String Read FPRODUTO Write SetPRODUTO;
      Property MARCA: String Read FMARCA Write SetMARCA;
      Property QTD_PRODUTO: String Read FQTD_PRODUTO Write SetQTD_PRODUTO;
      Property QTD_DIAS: String Read FQTD_DIAS Write SetQTD_DIAS;
      Property VALOR_PRODUTO_N_DIAS: String Read FVALOR_PRODUTO_N_DIAS Write SetVALOR_PRODUTO_N_DIAS;
      Property VALOR_LOCACAO: String Read FVALOR_LOCACAO Write SetVALOR_LOCACAO;
      Property VALOR_RECEBIDO: String Read FVALOR_RECEBIDO Write SetVALOR_RECEBIDO;
      Property VALOR_EM_ABERTO: String Read FVALOR_EM_ABERTO Write SetVALOR_EM_ABERTO;
      Property FLAG_PAGO: String Read FFLAG_PAGO Write SetFLAG_PAGO;
      Property CODIGO_CTASRECEBER: String read FCODIGO_CTASRECEBER write SetCODIGO_CTASRECEBER;
   End;

implementation

{ TORM_LOC_M1_LocacaoItens }

{ TORM_LOC_M1_LocacaoItens }

procedure TORM_LOC_M1_LocacaoItens.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetCODIGO_CTASRECEBER(const Value: String);
begin
  FCODIGO_CTASRECEBER := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetCODIGO_LOCACAO(const Value: String);
begin
  FCODIGO_LOCACAO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetFLAG_PAGO(const Value: String);
begin
  FFLAG_PAGO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetGRUPO(const Value: String);
begin
  FGRUPO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetMARCA(const Value: String);
begin
  FMARCA := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetPRODUTO(const Value: String);
begin
  FPRODUTO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetQTD_DIAS(const Value: String);
begin
  FQTD_DIAS := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetQTD_PRODUTO(const Value: String);
begin
  FQTD_PRODUTO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetVALOR_EM_ABERTO(const Value: String);
begin
  FVALOR_EM_ABERTO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetVALOR_LOCACAO(const Value: String);
begin
  FVALOR_LOCACAO := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetVALOR_PRODUTO_N_DIAS(const Value: String);
begin
  FVALOR_PRODUTO_N_DIAS := Value;
end;

procedure TORM_LOC_M1_LocacaoItens.SetVALOR_RECEBIDO(const Value: String);
begin
  FVALOR_RECEBIDO := Value;
end;

end.
