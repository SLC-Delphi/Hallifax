unit MODEL.ORM_Loc_M1_LocacaoPgtoItens;

interface

Type
   TORM_LOC_M1_LocacaoPgtoItens =  class
  private
      FDATA_PAGAMENTO: String;
      FQTD_DIAS: String;
      FVALOR_PAGAMENTO: String;
      FCODIGO_LOCACAO: String;
      FCODIGO_ITEM: String;
      FQTD_PRODUTO_PAGOS: String;
      Procedure SetCODIGO_ITEM(Const Value: String);
      Procedure SetCODIGO_LOCACAO(Const Value: String);
      Procedure SetDATA_PAGAMENTO(Const Value: String);
      Procedure SetQTD_DIAS(Const Value: String);
      Procedure SetQTD_PRODUTO_PAGOS(Const Value: String);
      Procedure SetVALOR_PAGAMENTO(Const Value: String);
   Public
      { public declarations }
      Property CODIGO_ITEM: String Read FCODIGO_ITEM Write SetCODIGO_ITEM;
      Property CODIGO_LOCACAO: String Read FCODIGO_LOCACAO Write SetCODIGO_LOCACAO;
      Property DATA_PAGAMENTO: String Read FDATA_PAGAMENTO Write SetDATA_PAGAMENTO;
      Property QTD_PRODUTO_PAGOS: String Read FQTD_PRODUTO_PAGOS Write SetQTD_PRODUTO_PAGOS;
      Property QTD_DIAS: String Read FQTD_DIAS Write SetQTD_DIAS;
      Property VALOR_PAGAMENTO: String Read FVALOR_PAGAMENTO Write SetVALOR_PAGAMENTO;
   End;

implementation

{ TORM_LOC_M1_LocacaoPgtoItens }

procedure TORM_LOC_M1_LocacaoPgtoItens.SetCODIGO_ITEM(const Value: String);
begin
  FCODIGO_ITEM := Value;
end;

procedure TORM_LOC_M1_LocacaoPgtoItens.SetCODIGO_LOCACAO(const Value: String);
begin
  FCODIGO_LOCACAO := Value;
end;

procedure TORM_LOC_M1_LocacaoPgtoItens.SetDATA_PAGAMENTO(const Value: String);
begin
  FDATA_PAGAMENTO := Value;
end;

procedure TORM_LOC_M1_LocacaoPgtoItens.SetQTD_DIAS(const Value: String);
begin
  FQTD_DIAS := Value;
end;

procedure TORM_LOC_M1_LocacaoPgtoItens.SetQTD_PRODUTO_PAGOS(const Value: String);
begin
  FQTD_PRODUTO_PAGOS := Value;
end;

procedure TORM_LOC_M1_LocacaoPgtoItens.SetVALOR_PAGAMENTO(const Value: String);
begin
  FVALOR_PAGAMENTO := Value;
end;

end.
