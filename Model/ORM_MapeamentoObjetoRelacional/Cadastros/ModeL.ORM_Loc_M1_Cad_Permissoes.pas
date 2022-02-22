unit Model.ORM_Loc_M1_Cad_Permissoes;

interface

TYPE
   TORM_LOC_M1_CAD_PERMISSOES = Class
   Private
      FFORNECEDORES_CONSULTA: String;
      FLOCACAO_LANCAMENTO: String;
      FPRODUTO_PRECOS: String;
      FCLIENTES_CONSULTA: String;
      FCLIENTES_RELATORIO: String;
      FRELATORIOS_ESTOQUES: String;
      FPRODUTO_ESTOQUES: String;
      FRELATORIOS_LOCACAO: String;
      FDT_UMOD: String;
      FLOCACAO_EDICAO: String;
      FPRODUTOS: String;
      FUSUARIO: String;
      FGRUPOS_CONSULTA: String;
    FPERMISSOES: String;
    FUSUARIOS: String;
    FPRODUTO_MANUTENCOES: String;
    FCODIGO_USUARIO: String;
    FLOCACAO_CANCELAMENTO: String;
      Procedure SetCLIENTES_CONSULTA(Const Value: String);
      Procedure SetCLIENTES_RELATORIO(Const Value: String);
      Procedure SetDT_UMOD(Const Value: String);
      Procedure SetPRODUTO_ESTOQUE(Const Value: String);
      Procedure SetFORNECEDORES_CONSULTA(Const Value: String);
      Procedure SetGRUPOS_CONSULTA(Const Value: String);
      Procedure SetLOCACAO_EDICAO(Const Value: String);
      Procedure SetLOCACAO_LANCAMENTO(Const Value: String);
      Procedure SetPRODUTO_PRECOS(Const Value: String);
      Procedure SetPRODUTOS(Const Value: String);
      Procedure SetRELATORIOS_ESTOQUES(Const Value: String);
      Procedure SetRELATORIOS_LOCACAO(Const Value: String);
      Procedure SetUSUARIO(Const Value: String);
    procedure SetPERMISSOES(const Value: String);
    procedure SetUSUARIOS(const Value: String);
    procedure SetPRODUTO_MANUTENCOES(const Value: String);
    procedure SetCODIGO_USUARIO(const Value: String);
    procedure SetLOCACAO_CANCELAMENTO(const Value: String);
   Public
      Property CODIGO_USUARIO : String read FCODIGO_USUARIO write SetCODIGO_USUARIO;
      Property CLIENTES_CONSULTA: String Read FCLIENTES_CONSULTA Write SetCLIENTES_CONSULTA;
      Property CLIENTES_RELATORIO: String Read FCLIENTES_RELATORIO Write SetCLIENTES_RELATORIO;
      Property FORNECEDORES_CONSULTA: String Read FFORNECEDORES_CONSULTA Write SetFORNECEDORES_CONSULTA;
      Property GRUPOS_CONSULTA: String Read FGRUPOS_CONSULTA Write SetGRUPOS_CONSULTA;
      property USUARIOS : String read FUSUARIOS write SetUSUARIOS;
      property PERMISSOES : String read FPERMISSOES write SetPERMISSOES;
      Property PRODUTOS: String Read FPRODUTOS Write SetPRODUTOS;
      Property PRODUTO_PRECOS: String Read FPRODUTO_PRECOS Write SetPRODUTO_PRECOS;
      Property PRODUTO_ESTOQUES: String Read FPRODUTO_ESTOQUES Write SetPRODUTO_ESTOQUE;
      Property PRODUTO_MANUTENCOES: String read FPRODUTO_MANUTENCOES write SetPRODUTO_MANUTENCOES;
      Property LOCACAO_LANCAMENTO: String Read FLOCACAO_LANCAMENTO Write SetLOCACAO_LANCAMENTO;
      Property LOCACAO_EDICAO: String Read FLOCACAO_EDICAO Write SetLOCACAO_EDICAO;
      Property LOCACAO_CANCELAMENTO: String read FLOCACAO_CANCELAMENTO write SetLOCACAO_CANCELAMENTO;
      Property RELATORIOS_ESTOQUES: String Read FRELATORIOS_ESTOQUES Write SetRELATORIOS_ESTOQUES;
      Property RELATORIOS_LOCACAO: String Read FRELATORIOS_LOCACAO Write SetRELATORIOS_LOCACAO;
      Property DT_UMOD: String Read FDT_UMOD Write SetDT_UMOD;
      Property USUARIO: String Read FUSUARIO Write SetUSUARIO;
   End;

implementation

{ TORM_LOC_M1_CAD_PERMISSOES }

procedure TORM_LOC_M1_CAD_PERMISSOES.SetCLIENTES_CONSULTA(const Value: String);
begin
  FCLIENTES_CONSULTA := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetCLIENTES_RELATORIO(const Value: String);
begin
  FCLIENTES_RELATORIO := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetCODIGO_USUARIO(const Value: String);
begin
  FCODIGO_USUARIO := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetDT_UMOD(const Value: String);
begin
  FDT_UMOD := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetPRODUTO_ESTOQUE(const Value: String);
begin
  FPRODUTO_ESTOQUES := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetPRODUTO_MANUTENCOES(const Value: String);
begin
  FPRODUTO_MANUTENCOES := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetFORNECEDORES_CONSULTA(const Value: String);
begin
  FFORNECEDORES_CONSULTA := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetGRUPOS_CONSULTA(const Value: String);
begin
  FGRUPOS_CONSULTA := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetLOCACAO_CANCELAMENTO(const Value: String);
begin
  FLOCACAO_CANCELAMENTO := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetLOCACAO_EDICAO(const Value: String);
begin
  FLOCACAO_EDICAO := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetLOCACAO_LANCAMENTO(const Value: String);
begin
  FLOCACAO_LANCAMENTO := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetPRODUTO_PRECOS(const Value: String);
begin
  FPRODUTO_PRECOS := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetPERMISSOES(const Value: String);
begin
  FPERMISSOES := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetPRODUTOS(const Value: String);
begin
  FPRODUTOS := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetRELATORIOS_ESTOQUES(const Value: String);
begin
  FRELATORIOS_ESTOQUES := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetRELATORIOS_LOCACAO(const Value: String);
begin
  FRELATORIOS_LOCACAO := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetUSUARIO(const Value: string);
begin
  FUSUARIO := Value;
end;

procedure TORM_LOC_M1_CAD_PERMISSOES.SetUSUARIOS(const Value: String);
begin
  FUSUARIOS := Value;
end;

end.
