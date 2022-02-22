unit Parametros.ParametrosPermissoes;

interface

Type
   TParametrosPermissoes = Class
   private
      FPermissaoFornecedores_Consulta: String;
      FPermissaoProdutos: String;
      FPermissaoClientes_Relatorios: String;
      FPermissaoGrupos_Consulta: String;
      FPermissaoClientes_Consulta: String;
      FPermissaoPrecos: String;
      FPermissaoLocacoesLancamento: String;
      FPermissaoEstoque: String;
    FPermissaoUsuarios: String;
    FPermissaoPermissoes: String;
    FPermissaoProdutosManutencoes: String;
    FPermissaoLocacoesCancelamento: String;
    FPermissaoLocacoesEdicao: String;
      procedure SetPermissaoEstoque(const Value: String);
      procedure SetPermissaoGrupos_Consulta(const Value: String);
      procedure SetPermissaoLocacoesLancamento(const Value: String);
      procedure SetPermissaoPrecos(const Value: String);
      procedure SetPermissaoProdutos(const Value: String);
      procedure SetPermissaoClientes_Consulta(const Value: String);
      procedure SetPermissaoClientes_Relatorios(const Value: String);
      procedure SetPermissaoFornecedores_Consulta(const Value: String);
    procedure SetPermissaoUsuarios(const Value: String);
    procedure SetPermissaoPermissoes(const Value: String);
    procedure SetPermissaoProdutosManutencoes(const Value: String);
    procedure SetPermissaoLocacoesCancelamento(const Value: String);
    procedure SetPermissaoLocacoesEdicao(const Value: String);
   Public
      property PermissaoClientes_Consulta: String read FPermissaoClientes_Consulta write SetPermissaoClientes_Consulta;
      property PermissaoClientes_Relatorios: String read FPermissaoClientes_Relatorios write SetPermissaoClientes_Relatorios;
      property PermissaoFornecedores_Consulta: String read FPermissaoFornecedores_Consulta write SetPermissaoFornecedores_Consulta;
      property PermissaoGrupos_Consulta: String read FPermissaoGrupos_Consulta write SetPermissaoGrupos_Consulta;
      property PermissaoUsuarios: String read FPermissaoUsuarios write SetPermissaoUsuarios;
      property PermissaoPermissoes: String read FPermissaoPermissoes write SetPermissaoPermissoes;
      property PermissaoProdutos: String read FPermissaoProdutos write SetPermissaoProdutos;
      property PermissaoPrecos: String read FPermissaoPrecos write SetPermissaoPrecos;
      property PermissaoEstoque: String read FPermissaoEstoque write SetPermissaoEstoque;
      property PermissaoProdutosManutencoes: String read FPermissaoProdutosManutencoes write SetPermissaoProdutosManutencoes;
      property PermissaoLocacoesLancamento: String read FPermissaoLocacoesLancamento write SetPermissaoLocacoesLancamento;
      property PermissaoLocacoesEdicao: String  read FPermissaoLocacoesEdicao write SetPermissaoLocacoesEdicao;
      property PermissaoLocacoesCancelamento: String  read FPermissaoLocacoesCancelamento write SetPermissaoLocacoesCancelamento;
   End;

implementation

{ TParametrosPermissoes }

procedure TParametrosPermissoes.SetPermissaoEstoque(const Value: String);
begin
  FPermissaoEstoque := Value;
end;

procedure TParametrosPermissoes.SetPermissaoGrupos_Consulta(const Value: String);
begin
  FPermissaoGrupos_Consulta := Value;
end;

procedure TParametrosPermissoes.SetPermissaoLocacoesCancelamento(const Value: String);
begin
  FPermissaoLocacoesCancelamento := Value;
end;

procedure TParametrosPermissoes.SetPermissaoLocacoesEdicao(const Value: String);
begin
  FPermissaoLocacoesEdicao := Value;
end;

procedure TParametrosPermissoes.SetPermissaoLocacoesLancamento(const Value: String);
begin
  FPermissaoLocacoesLancamento := Value;
end;

procedure TParametrosPermissoes.SetPermissaoPermissoes(const Value: String);
begin
  FPermissaoPermissoes := Value;
end;

procedure TParametrosPermissoes.SetPermissaoPrecos(const Value: String);
begin
  FPermissaoPrecos := Value;
end;

procedure TParametrosPermissoes.SetPermissaoProdutos(const Value: String);
begin
  FPermissaoProdutos := Value;
end;

procedure TParametrosPermissoes.SetPermissaoProdutosManutencoes(const Value: String);
begin
  FPermissaoProdutosManutencoes := Value;
end;

procedure TParametrosPermissoes.SetPermissaoUsuarios(const Value: String);
begin
  FPermissaoUsuarios := Value;
end;

procedure TParametrosPermissoes.SetPermissaoClientes_Consulta(const Value: String);
begin
  FPermissaoClientes_Consulta := Value;
end;

procedure TParametrosPermissoes.SetPermissaoClientes_Relatorios(const Value: String);
begin
  FPermissaoClientes_Relatorios := Value;
end;

procedure TParametrosPermissoes.SetPermissaoFornecedores_Consulta(const Value: String);
begin
  FPermissaoFornecedores_Consulta := Value;
end;

end.
