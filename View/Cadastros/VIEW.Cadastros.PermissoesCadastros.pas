unit VIEW.Cadastros.PermissoesCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  VIEW.PadraoBasico01, Vcl.ComCtrls;

type
   TView_PermissoesCadastros = class(T_F_CadastroPadrao)
      Pa_DadosUsuario: TPanel;
      Pa_Nome: TPanel;
      Edt_Nome_Usuario: TEdit;
      Label1: TLabel;
      Pa_Consulta: TPanel;
      Pa_ConsutaTop: TPanel;
      Grp_Consutla: TGridPanel;
      Label3: TLabel;
      Label2: TLabel;
      Trb_Cliente: TTrackBar;
      La_Clientes: TLabel;
      Label5: TLabel;
      Trb_Fornecedores: TTrackBar;
      La_Fornecedores: TLabel;
      Label7: TLabel;
      Trb_Grupos: TTrackBar;
      La_Grupos: TLabel;
      Pa_Produtos: TPanel;
      Pa_ProdutosTop: TPanel;
      Label4: TLabel;
      Grp_Produtos: TGridPanel;
      Label6: TLabel;
      Trb_Produtos: TTrackBar;
      La_Produtos: TLabel;
      Label9: TLabel;
      Trb_Produto_Estoques: TTrackBar;
      La_Produto_Estoques: TLabel;
      Label11: TLabel;
      Trb_Produto_Precos: TTrackBar;
      La_Produto_Precos: TLabel;
      Label13: TLabel;
      Trb_Produto_Manutencoes: TTrackBar;
      La_Produto_Manutencoes: TLabel;
      Pa_Usuarios: TPanel;
      Panel2: TPanel;
      Label8: TLabel;
      GridPanel1: TGridPanel;
      Label10: TLabel;
      Trb_Usuarios: TTrackBar;
      La_Usuarios: TLabel;
      Label14: TLabel;
      Trb_Permissoes: TTrackBar;
      La_Permissoes: TLabel;
      Pa_Locacoes: TPanel;
      Panel4: TPanel;
      Label12: TLabel;
      Grp_Locacoes: TGridPanel;
      Label15: TLabel;
      Trb_Locacao_Lancamento: TTrackBar;
      La_Locacao_Lancamento: TLabel;
      Label17: TLabel;
      Trb_Locacao_Edicao: TTrackBar;
      La_Locacao_Edicao: TLabel;
      Label19: TLabel;
      Trb_Locacao_Cancelamento: TTrackBar;
      La_Locacao_Cancelamento: TLabel;
      Pa_Relatorios: TPanel;
      Panel3: TPanel;
      Label16: TLabel;
      Grp_Relatorios: TGridPanel;
      Label18: TLabel;
      Trb_Relatorios_Estoques: TTrackBar;
      La_Relatorios_Estoques: TLabel;
      Label21: TLabel;
      Trb_Relatorios_Locacoes: TTrackBar;
      La_Relatorios_Locacoes: TLabel;
      procedure SpBt_CancelarClick(Sender: TObject); override;
      procedure SpBt_GravarClick(Sender: TObject); override;
      procedure FormCreate(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure Trb_ClienteChange(Sender: TObject);
      procedure Trb_FornecedoresChange(Sender: TObject);
      procedure Trb_GruposChange(Sender: TObject);
      procedure Trb_ProdutosChange(Sender: TObject);
      procedure Trb_Produto_EstoquesChange(Sender: TObject);
      procedure Trb_Produto_PrecosChange(Sender: TObject);
      procedure Trb_Produto_ManutencoesChange(Sender: TObject);
      procedure Trb_UsuariosChange(Sender: TObject);
      procedure Trb_PermissoesChange(Sender: TObject);
      procedure Trb_Locacao_LancamentoChange(Sender: TObject);
      procedure Trb_Locacao_EdicaoChange(Sender: TObject);
      procedure Trb_Locacao_CancelamentoChange(Sender: TObject);
      procedure Trb_Relatorios_EstoquesChange(Sender: TObject);
      procedure Trb_Relatorios_LocacoesChange(Sender: TObject);
   private
      FNome_Usuario: String;
      FCodigo_Usuario: String;
      FFlag_Permissao: String;
      // FMapaDados : TORM_LOC_M1_CAD_USUARIO;
      procedure AjustaCor; override;
      procedure SetCodigo_Usuario(const Value: String);
      procedure SetNome_Usuario(const Value: String);
      procedure SetFlag_Permissao(const Value: String);
      procedure AjustaPermissoes;
      { Private declarations }
   public
      { Public declarations }
      Function ZerarCampos: Boolean; override;
      Function LerDados: Boolean; override;
      Function ValidarDados: Boolean; override;
      property Nome_Usuario: String read FNome_Usuario write SetNome_Usuario;
      property Codigo_Usuario: String read FCodigo_Usuario write SetCodigo_Usuario;
      property Flag_Permissao: String read FFlag_Permissao  write SetFlag_Permissao;
   end;

var
   View_PermissoesCadastros :TView_PermissoesCadastros;

implementation

{$R *.dfm}

uses View_Style, VIEW.Cadastros.UsuariosConsultas, System.SysUtils;

{ TForm2 }


procedure TView_PermissoesCadastros.SetCodigo_Usuario(const Value: String);
begin
  FCodigo_Usuario := Value;
end;


procedure TView_PermissoesCadastros.SetFlag_Permissao(const Value: String);
begin
  FFlag_Permissao := Value;
end;

procedure TView_PermissoesCadastros.SetNome_Usuario(const Value: String);
begin
  FNome_Usuario := Value;
end;



procedure TView_PermissoesCadastros.FormCreate(Sender: TObject);
begin
   Pa_DadosUsuario.Parent := Self.Pa_Dados;
   Pa_DadosUsuario.Align := alClient;
   // --> As linhas abaixos são desnecessário no Delphi Rio 10.3.1 e obrigatórias no Delphi Xe8
   Self.Pa_Dados.Height := Self.ClientHeight-107;
   Self.Pa_Dados.Width := Self.ClientWidth-28;
   Self.Pa_Gravar.Top := Self.ClientHeight-56;
   Self.Pa_Gravar.Left := Self.ClientWidth-292;
end;



procedure TView_PermissoesCadastros.FormShow(Sender: TObject);
begin
   IF TipoPermissao = '' THEN Self.TipoPermissao := '3';
   if Flag_Permissao = 'NAO' then
      TipoOperacaoDados :='NOVO';
   if Flag_Permissao = 'SIM' then
      TipoOperacaoDados :='EDITAR';
  AjustaPermissoes;
  Edt_Nome_Usuario.Text := Self.Nome_Usuario;
end;


procedure TView_PermissoesCadastros.FormActivate(Sender: TObject);
begin
   Self.Caption := 'Cadastros > Usuarios > Permissões:';
   Self.Pa_Top1.Height := 128;
   La_Titulo.Caption := 'PERMISSÕES';
   if Self.NomeDaCor ='' then
      NomeDaCor :='DARK';
   AjustaCor;
end;


procedure TView_PermissoesCadastros.AjustaCor;
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   Pa_DadosUsuario.Font.Size := Self.Pa_Dados.Font.Size;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
   Pa_Top.Color := BACKGROUNDTOP;
   Pa_Top1.Color := BACKGROUNDTOP;
   La_Titulo.Font.Color := FONTCOLOR;
   Pa_DadosUsuario.Color := EDITDATA;
   Pa_Gravar.Color := EDITDATA;
end;


procedure TView_PermissoesCadastros.AjustaPermissoes;
begin
  // --> Permissões
  if Self.TipoPermissao = '1' then
  begin
    Pa_Gravar.Visible := False;
    Pa_DadosUsuario.Enabled := False;
  end
  else if Self.TipoPermissao.ToInteger >= 2 then
  begin
    Pa_Gravar.Visible := True;
    Pa_DadosUsuario.Enabled := True;
    Trb_Cliente.SetFocus;
  end;
  // --> Operação
  if (Self.TipoOperacaoDados = 'NOVO') then
  // AND (Self.TipoPermissao.ToInteger >= 2)
  begin
    Self.ZerarCampos;
  end
  else if (Self.TipoOperacaoDados = 'EDITAR') then
  // AND (Self.TipoPermissao.ToInteger >= 2)
  begin
   View_UsuariosConsultas.Controller_Permissoes.DAO.GetId(Self.Codigo_Usuario,'NAO');
   View_UsuariosConsultas.Controller_Permissoes.LoadGet;
    Self.LerDados;
  end;
end;


function TView_PermissoesCadastros.ZerarCampos: Boolean;
Var
   viContar: Integer;
begin
   for viContar := 0 to Self.ComponentCount-1 do
   begin
      if (Self.Components[viContar] is TTrackBar) Then
         TTrackBar(Self.Components[viContar]).Position := 0;
   end;

end;


function TView_PermissoesCadastros.LerDados: Boolean;
begin
   Trb_Cliente.Position               := View_UsuariosConsultas.Controller_Permissoes.ORM.CLIENTES_CONSULTA.ToInteger;
     View_UsuariosConsultas.Controller_Permissoes.ORM.CLIENTES_RELATORIO     := '0';
   Trb_Fornecedores.Position         := View_UsuariosConsultas.Controller_Permissoes.ORM.FORNECEDORES_CONSULTA .Tointeger;
   Trb_Grupos.Position               := View_UsuariosConsultas.Controller_Permissoes.ORM.GRUPOS_CONSULTA       .Tointeger;
   Trb_Usuarios.Position             := View_UsuariosConsultas.Controller_Permissoes.ORM.USUARIOS              .Tointeger;
   Trb_Permissoes.Position           := View_UsuariosConsultas.Controller_Permissoes.ORM.PERMISSOES            .Tointeger;
   Trb_Produtos.Position             := View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTOS              .Tointeger;
   Trb_Produto_Precos.Position       := View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTO_PRECOS        .Tointeger;
   Trb_Produto_Estoques.Position     := View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTO_ESTOQUES      .Tointeger;
   Trb_Produto_Manutencoes.Position  := View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTO_MANUTENCOES   .Tointeger;
   Trb_Locacao_Lancamento.Position   := View_UsuariosConsultas.Controller_Permissoes.ORM.LOCACAO_LANCAMENTO    .Tointeger;
   Trb_Locacao_Edicao.Position       := View_UsuariosConsultas.Controller_Permissoes.ORM.LOCACAO_EDICAO        .Tointeger;
   Trb_Locacao_Cancelamento.Position := View_UsuariosConsultas.Controller_Permissoes.ORM.LOCACAO_CANCELAMENTO  .Tointeger;
   Trb_Relatorios_Estoques.Position  := View_UsuariosConsultas.Controller_Permissoes.ORM.RELATORIOS_ESTOQUES   .Tointeger;
   Trb_Relatorios_Locacoes.Position  := View_UsuariosConsultas.Controller_Permissoes.ORM.RELATORIOS_LOCACAO    .Tointeger;
     View_UsuariosConsultas.Controller_Permissoes.ORM.DT_UMOD                := StringReplace (DateToStr(Date()),'/','.',[]);
     View_UsuariosConsultas.Controller_Permissoes.ORM.USUARIO                := Self.Usuario;
end;


function TView_PermissoesCadastros.ValidarDados: Boolean;
begin
//
end;


procedure TView_PermissoesCadastros.SpBt_CancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


procedure TView_PermissoesCadastros.SpBt_GravarClick(Sender: TObject);
begin
  inherited;
  // CARREGANDO ORM
  View_UsuariosConsultas.Controller_Permissoes.ORM.CODIGO_USUARIO         := Self.Codigo_Usuario;
  View_UsuariosConsultas.Controller_Permissoes.ORM.CLIENTES_CONSULTA      := Trb_Cliente.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.CLIENTES_RELATORIO     := '0';
  View_UsuariosConsultas.Controller_Permissoes.ORM.FORNECEDORES_CONSULTA  := Trb_Fornecedores.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.GRUPOS_CONSULTA        := Trb_Grupos.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.USUARIOS               := Trb_Usuarios.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.PERMISSOES             := Trb_Permissoes.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTOS               := Trb_Produtos.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTO_PRECOS         := Trb_Produto_Precos.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTO_ESTOQUES       := Trb_Produto_Estoques.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.PRODUTO_MANUTENCOES    := Trb_Produto_Manutencoes.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.LOCACAO_LANCAMENTO     := Trb_Locacao_Lancamento.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.LOCACAO_EDICAO         := Trb_Locacao_Edicao.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.LOCACAO_CANCELAMENTO   := Trb_Locacao_Cancelamento.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.RELATORIOS_ESTOQUES    := Trb_Relatorios_Estoques.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.RELATORIOS_LOCACAO     := Trb_Relatorios_Locacoes.Position.ToString;
  View_UsuariosConsultas.Controller_Permissoes.ORM.DT_UMOD                := StringReplace (DateToStr(Date()),'/','.',[rfReplaceAll]);
  View_UsuariosConsultas.Controller_Permissoes.ORM.USUARIO                := Self.Usuario;
   if TipoOperacaoDados = 'NOVO' then
   begin
      View_UsuariosConsultas.Controller_Permissoes.DAO.Post(View_UsuariosConsultas.Controller_Permissoes.ORM);
   end
   ELSE if TipoOperacaoDados= 'EDITAR' then
   begin
      View_UsuariosConsultas.Controller_Permissoes.DAO.Put(View_UsuariosConsultas.Controller_Permissoes.ORM);
   end;
   Self.Close;
end;


procedure TView_PermissoesCadastros.Trb_ClienteChange(Sender: TObject);
begin
  inherited;
   if Trb_Cliente.Position= 0 then
      La_Clientes.Caption := 'Nao';
   if Trb_Cliente.Position= 1 then
      La_Clientes.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_FornecedoresChange(Sender: TObject);
begin
  inherited;
   if Trb_Fornecedores.Position= 0 then
      La_Fornecedores.Caption := 'Nao';
   if Trb_Fornecedores.Position= 1 then
      La_Fornecedores.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_GruposChange(Sender: TObject);
begin
  inherited;
   if Trb_Grupos.Position= 0 then
      La_Grupos.Caption := 'Nao';
   if Trb_Grupos.Position= 1 then
      La_Grupos.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_UsuariosChange(Sender: TObject);
begin
  inherited;
   if Trb_Usuarios.Position = -1 then
      La_Usuarios.Caption := 'Indisponível';
   if Trb_Usuarios.Position = 0 then
      La_Usuarios.Caption := 'Nao';
   if Trb_Usuarios.Position = 1 then
      La_Usuarios.Caption := 'Visualizar';
   if Trb_Usuarios.Position = 2 then
      La_Usuarios.Caption := 'Cadastrar';
   if Trb_Usuarios.Position = 3 then
      La_Usuarios.Caption := 'Editar';
   if Trb_Usuarios.Position = 4 then
      La_Usuarios.Caption := 'Cadastrar+Editar';
   if Trb_Usuarios.Position = 5 then
      La_Usuarios.Caption := 'Total';
end;


procedure TView_PermissoesCadastros.Trb_PermissoesChange(Sender: TObject);
begin
  inherited;
   if Trb_Permissoes.Position= 0 then
      La_Permissoes.Caption := 'Nao';
   if Trb_Permissoes.Position= 1 then
      La_Permissoes.Caption := 'Sim';
end;

procedure TView_PermissoesCadastros.Trb_ProdutosChange(Sender: TObject);
begin
  inherited;
   if Trb_Produtos.Position = -1 then
      La_Produtos.Caption := 'Indisponivel';
   if Trb_Produtos.Position = 0 then
      La_Produtos.Caption := 'Nao';
   if Trb_Produtos.Position = 1 then
      La_Produtos.Caption := 'Visualizar';
   if Trb_Produtos.Position = 2 then
      La_Produtos.Caption := 'Cadastrar';
   if Trb_Produtos.Position = 3 then
      La_Produtos.Caption := 'Editar';
   if Trb_Produtos.Position = 4 then
      La_Produtos.Caption := 'Cadastrar+Editar';
   if Trb_Produtos.Position = 5 then
      La_Produtos.Caption := 'Total';
end;


procedure TView_PermissoesCadastros.Trb_Produto_EstoquesChange(Sender: TObject);
begin
  inherited;
   if Trb_Produto_Estoques.Position= 0 then
      La_Produto_Estoques.Caption := 'Nao';
   if Trb_Produto_Estoques.Position= 1 then
      La_Produto_Estoques.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_Produto_PrecosChange(Sender: TObject);
begin
  inherited;
   if Trb_Produto_Precos.Position= 0 then
      La_Produto_Precos.Caption := 'Nao';
   if Trb_Produto_Precos.Position= 1 then
      La_Produto_Precos.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_Produto_ManutencoesChange(Sender: TObject);
begin
  inherited;
   if Trb_Produto_Manutencoes.Position= 0 then
      La_Produto_Manutencoes.Caption := 'Nao';
   if Trb_Produto_Manutencoes.Position= 1 then
      La_Produto_Manutencoes.Caption := 'Sim';
end;



procedure TView_PermissoesCadastros.Trb_Locacao_LancamentoChange(Sender: TObject);
begin
  inherited;
   if Trb_Locacao_Lancamento.Position= -1 then
      La_Locacao_Lancamento.Caption := 'Indisponivel';
   if Trb_Locacao_Lancamento.Position= 0 then
      La_Locacao_Lancamento.Caption := 'Nao';
   if Trb_Locacao_Lancamento.Position= 1 then
      La_Locacao_Lancamento.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_Locacao_EdicaoChange(Sender: TObject);
begin
  inherited;
   if Trb_Locacao_Edicao.Position= 0 then
      La_Locacao_Edicao.Caption := 'Nao';
   if Trb_Locacao_Edicao.Position= 1 then
      La_Locacao_Edicao.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_Locacao_CancelamentoChange(Sender: TObject);
begin
  inherited;
   if Trb_Locacao_Cancelamento.Position= 0 then
      La_Locacao_Cancelamento.Caption := 'Nao';
   if Trb_Locacao_Cancelamento.Position= 1 then
      La_Locacao_Cancelamento.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_Relatorios_EstoquesChange(Sender: TObject);
begin
   if Trb_Relatorios_Estoques.Position= 0 then
      La_Relatorios_Estoques.Caption := 'Nao';
   if Trb_Relatorios_Estoques.Position= 1 then
      La_Relatorios_Estoques.Caption := 'Sim';
end;


procedure TView_PermissoesCadastros.Trb_Relatorios_LocacoesChange(Sender: TObject);
begin
   if Trb_Relatorios_Locacoes.Position= 0 then
      La_Relatorios_Locacoes.Caption := 'Nao';
   if Trb_Relatorios_Locacoes.Position= 1 then
      La_Relatorios_Locacoes.Caption := 'Sim';
end;


end.


CODIGO_USUARIO
CLIENTES_CONSULTA
CLIENTES_RELATORIO
FORNECEDORES_CONSULTA
GRUPOS_CONSULTA
USUARIOS
PERMISSOES
PRODUTOS
PRODUTO_PRECOS
PRODUTO_ESTOQUES
PRODUTO_MANUTENCOES
LOCACAO_LANCAMENTO
LOCACAO_EDICAO
LOCACAO_CANCELAMENTO
RELATORIOS_ESTOQUES
RELATORIOS_LOCACAO
DT_UMOD
USUARIO
