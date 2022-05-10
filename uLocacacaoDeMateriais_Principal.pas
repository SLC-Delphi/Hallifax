unit uLocacacaoDeMateriais_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View_Style, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Parametros.ParametrosPermissoes, VIEW.Padrao.Parametros1,
  Halifax.Controller.Cad_PermissoesFD, Halifax.Controller.Cad_ConsultasFD, Vcl.Grids;

type
  T_Frm_Principal = class(TForm)
    Pa_Topo: TPanel;
    Pa_MenuLateral: TPanel;
    La_NomeSistema: TLabel;
    GridPanel_Filtro: TGridPanel;
    Edt_Firma: TEdit;
    Edt_Usuario: TEdit;
    Label7: TLabel;
    Pa_Op01MenuHome: TPanel;
    Label2: TLabel;
    Pa_BotaoInicial: TPanel;
    La_BotaoInicial: TLabel;
    Img_BotaoInicial: TImage;
    SpBtn_BotaoInicial: TSpeedButton;
    Pa_Op02MenuConsulta: TPanel;
    La_Op2MenuConsulta: TLabel;
    Pa_BotaoPessoasGrupos: TPanel;
    La_BotaoPessoasGrupos: TLabel;
    Img_BotaoPessoasGrupos: TImage;
    SpBtn_BotaoPessoasGrupos: TSpeedButton;
    Pa_Op03MenuCadastros: TPanel;
    La_Op3MenuCadastros: TLabel;
    Panel1: TPanel;
    Pa_UsuariosPermissoes: TPanel;
    Pa_ProdutosEstoque: TPanel;
    Pa_BotaoUsuarios: TPanel;
    La_BotaoUsuarios: TLabel;
    Img__BotaoUsuarios: TImage;
    SpBtn_BotaoUsuarios: TSpeedButton;
    Pa_BotaoProdutos: TPanel;
    La_BotaoProdutos: TLabel;
    Img_BotaoProdutos: TImage;
    SpBtn_BotaoProdutos: TSpeedButton;
    Pa_Op04MenuLocacoes: TPanel;
    La_Op04MenuLocacoes: TLabel;
    Pa_BotaoLocacoes: TPanel;
    Panel4: TPanel;
    La_BotaoLocacoes: TLabel;
    img_BotaoLocacoes: TImage;
    spBtn_BotaoLocacoes: TSpeedButton;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    StringGrid2: TStringGrid;
    Edit2: TEdit;
    StringGrid3: TStringGrid;
    Edit3: TEdit;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpBtn_BotaoPessoasGruposClick(Sender: TObject);
    procedure SpBtn_BotaoUsuariosClick(Sender: TObject);
    procedure SpBtn_BotaoProdutosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spBtn_BotaoLocacoesClick(Sender: TObject);
  private
    FzCodigo_Usuario: String;
    FzUsuario: String;
    procedure TopAjustarLargura;
    procedure AjustaCor;
    procedure SetzCodigo_Usuario(const Value: String);
    procedure SetzUsuario(const Value: String);
    procedure LoadParamUsers;
    procedure AcertarMenu;
    procedure OfuscaMenu;
    { Private declarations }
  public
    { Public declarations }
    Controller_Permissoes: TController_Cad_PermissoesFD;
    Controller_CadastrosConsultas: TController_Cad_ConsultasFD;
    Property zCodigo_Usuario : String read FzCodigo_Usuario write SetzCodigo_Usuario;
    Property zUsuario : String read FzUsuario write SetzUsuario;
  end;

var
  _Frm_Principal: T_Frm_Principal;
  ParamSis : TParametrosPermissoes;

implementation


{$R *.dfm}

uses VIEW.Cadastros.UsuariosConsultas, VIEW.Cadastros.Consultas, VIEW.Produtos.ProdutosConsultas,
  VIEW.Locacoes.LocacoesConsultas;


procedure T_Frm_Principal.SetzCodigo_Usuario(const Value: String);
begin
  FzCodigo_Usuario := Value;
end;

procedure T_Frm_Principal.SetzUsuario(const Value: String);
begin
  FzUsuario := Value;
end;





procedure T_Frm_Principal.FormCreate(Sender: TObject);
begin
   Controller_CadastrosConsultas:= TController_Cad_ConsultasFD.Create;
   Controller_Permissoes := TController_Cad_PermissoesFD.Create;
   //
   // Carregar os parametros globais aqui
   //
    Self.WindowState := wsMaximized;
end;


procedure T_Frm_Principal.FormDestroy(Sender: TObject);
begin
   FreeAndNil(ParamSis);
   FreeAndNil(Controller_Permissoes);
   FreeAndNil(Controller_CadastrosConsultas);
end;


procedure T_Frm_Principal.FormShow(Sender: TObject);
begin
  Edt_Firma.Text:=Controller_CadastrosConsultas.ORM.Get('EMPRESA', '', '');
  LoadParamUsers;
  AjustaCor;
  AcertarMenu;
end;


procedure T_Frm_Principal.LoadParamUsers;
begin
   //
  // ---> Carrega os parametros de Usuário
  Edt_Usuario.Text := Self.zUsuario;
  Controller_Permissoes.DAO.GetId(Self.zCodigo_Usuario, 'NAO');
  Controller_Permissoes.LoadGet;
  ParamSis := TParametrosPermissoes.Create;
  ParamSis.PermissaoClientes_Consulta := Controller_Permissoes.ORM.CLIENTES_CONSULTA;
  ParamSis.PermissaoFornecedores_Consulta := Controller_Permissoes.ORM.FORNECEDORES_CONSULTA;
  ParamSis.PermissaoGrupos_Consulta := Controller_Permissoes.ORM.GRUPOS_CONSULTA;
  ParamSis.PermissaoUsuarios := Controller_Permissoes.ORM.USUARIOS;
  ParamSis.PermissaoPermissoes := Controller_Permissoes.ORM.PERMISSOES;
  ParamSis.PermissaoProdutos := Controller_Permissoes.ORM.PRODUTOS;
  ParamSis.PermissaoPrecos := Controller_Permissoes.ORM.PRODUTO_PRECOS;
  ParamSis.PermissaoEstoque := Controller_Permissoes.ORM.PRODUTO_ESTOQUES;
  ParamSis.PermissaoProdutosManutencoes := Controller_Permissoes.ORM.PRODUTO_MANUTENCOES;
  ParamSis.PermissaoLocacoesLancamento := Controller_Permissoes.ORM.LOCACAO_LANCAMENTO;
  ParamSis.PermissaoLocacoesEdicao := Controller_Permissoes.ORM.LOCACAO_EDICAO;
  ParamSis.PermissaoLocacoesCancelamento := Controller_Permissoes.ORM.LOCACAO_CANCELAMENTO;

end;


procedure T_Frm_Principal.AcertarMenu;
begin
  // ===========================================
  // --> Montando o Menu
  // -------------------------------------------
  // --> Sumiço/Desabilitar de uma Bloco do menu
  // -------------------------------------------
  Pa_Op02MenuConsulta.Enabled := True;
  Pa_Op02MenuConsulta.Visible := True;
  Pa_Op03MenuCadastros.Enabled := True;
  Pa_Op03MenuCadastros.Visible := True;
  if (ParamSis.PermissaoClientes_Consulta = '0') and (ParamSis.PermissaoFornecedores_Consulta = '0') and (ParamSis.PermissaoGrupos_Consulta = '0') then
  begin
    Pa_Op02MenuConsulta.Enabled := False;
    La_Op2MenuConsulta.Font.Color := FONTCOLORDISABLE;
    La_BotaoPessoasGrupos.Font.Color := FONTCOLORDISABLE;
  end;
  if (ParamSis.PermissaoUsuarios = '-1') and (ParamSis.PermissaoProdutos = '-1') then
  begin
    Pa_Op03MenuCadastros.Visible := False;
  end;
  if (ParamSis.PermissaoUsuarios = '0') and (ParamSis.PermissaoProdutos = '0') then
  begin
    Pa_Op03MenuCadastros.Enabled := False;
    La_Op3MenuCadastros.Font.Color := FONTCOLORDISABLE;
    La_BotaoUsuarios.Font.Color := FONTCOLORDISABLE;
    La_BotaoProdutos.Font.Color := FONTCOLORDISABLE;
  end;
  // -------------------------------------------
  // --> Desabilitar de uma opção do menu
  // -------------------------------------------
  if (ParamSis.PermissaoUsuarios = '-1') then
    Pa_UsuariosPermissoes.Visible := False
  else if (ParamSis.PermissaoUsuarios = '0') then
  begin
    Pa_BotaoUsuarios.Enabled := False;
    La_BotaoUsuarios.Font.Color := FONTCOLORDISABLE;
  end;
  if (ParamSis.PermissaoProdutos = '-1') then
    Pa_ProdutosEstoque.Visible := False
  else if (ParamSis.PermissaoProdutos = '0') then
  begin
    Pa_BotaoProdutos.Enabled := False;
    La_BotaoProdutos.Font.Color := FONTCOLORDISABLE;
  end;
end;


procedure T_Frm_Principal.OfuscaMenu;
begin
  La_BotaoInicial.Font.Color := FONTCOLORDISABLE;
  La_Op2MenuConsulta.Font.Color := FONTCOLORDISABLE;
  La_BotaoPessoasGrupos.Font.Color := FONTCOLORDISABLE;
  La_Op3MenuCadastros.Font.Color := FONTCOLORDISABLE;
  La_BotaoUsuarios.Font.Color := FONTCOLORDISABLE;
  La_BotaoProdutos.Font.Color := FONTCOLORDISABLE;
  La_BotaoLocacoes.Font.Color := FONTCOLORDISABLE;
end;



procedure T_Frm_Principal.FormResize(Sender: TObject);
begin
  TopAjustarLargura
end;


procedure T_Frm_Principal.SpBtn_BotaoUsuariosClick(Sender: TObject);
begin
   try
      OfuscaMenu;
      View_UsuariosConsultas := TView_UsuariosConsultas.Create(Nil);
      View_UsuariosConsultas.Left := 231;
      View_UsuariosConsultas.Top := Self.Height-ClientHeight+Pa_Topo.Height-12;
      View_UsuariosConsultas.Height :=Self.ClientHeight-(View_UsuariosConsultas.Top+12);
      View_UsuariosConsultas.Width := Self.ClientWidth-(Pa_MenuLateral.Width+12);
      View_UsuariosConsultas.Visible := False;
      View_UsuariosConsultas.Usuario := Edt_Usuario.Text;
      View_UsuariosConsultas.PermissaoUsuarios := ParamSis.PermissaoUsuarios;
      View_UsuariosConsultas.PermissaoPermissoes := ParamSis.PermissaoPermissoes;
      View_UsuariosConsultas.NomeDaCor := View_Parametros1.Global.ParametroCorCadastros ;
      View_UsuariosConsultas.Codigo_Usuario := Self.zCodigo_Usuario;
      View_UsuariosConsultas.ShowModal;
   finally
      AjustaCor;
      AcertarMenu;
      View_UsuariosConsultas.DisposeOf;
   end;
end;


procedure T_Frm_Principal.SpBtn_BotaoProdutosClick(Sender: TObject);
begin
   try
      OfuscaMenu;
      View_ProdutosConsulta := TView_ProdutosConsulta.Create(Nil);
      View_ProdutosConsulta.Left := 231;
      View_ProdutosConsulta.Top := Self.Height-ClientHeight+Pa_Topo.Height-12;
      View_ProdutosConsulta.Height :=Self.ClientHeight-(View_ProdutosConsulta.Top+12);
      View_ProdutosConsulta.Width := Self.ClientWidth-(Pa_MenuLateral.Width+12);
      View_ProdutosConsulta.Visible := False;
      View_ProdutosConsulta.Usuario := Edt_Usuario.Text;
      View_ProdutosConsulta.PermissaoProdutos := ParamSis.PermissaoProdutos;
      View_ProdutosConsulta.PermissaoEstoque := ParamSis.PermissaoEstoque;
      View_ProdutosConsulta.PermissaoPrecos := ParamSis.PermissaoPrecos;
      View_ProdutosConsulta.PermissaoManutencoes := ParamSis.PermissaoProdutosManutencoes;
      View_ProdutosConsulta.NomeDaCor := View_Parametros1.Global.ParametroCorCadastros ;
      View_ProdutosConsulta.ShowModal;
   finally
      View_ProdutosConsulta.DisposeOf;
      AjustaCor;
      AcertarMenu;
   end;
end;

procedure T_Frm_Principal.SpBtn_BotaoPessoasGruposClick(Sender: TObject);
begin
   try
      OfuscaMenu;
      View_CadastrosConsulta := TView_CadastrosConsulta.Create(Nil);
      View_CadastrosConsulta.Left := 231;
      View_CadastrosConsulta.Top := Self.Height-ClientHeight+Pa_Topo.Height-12;
      View_CadastrosConsulta.Height :=Self.ClientHeight-(View_CadastrosConsulta.Top+12);
      View_CadastrosConsulta.Width := Self.ClientWidth-(Pa_MenuLateral.Width+12);
      View_CadastrosConsulta.PermissaoClientes := ParamSis.PermissaoClientes_Consulta;
      View_CadastrosConsulta.PermissaoFornecedores := ParamSis.PermissaoFornecedores_Consulta;
      View_CadastrosConsulta.PermissaoGrupos :=ParamSis.PermissaoGrupos_Consulta;
      View_CadastrosConsulta.Visible := False;
      View_CadastrosConsulta.NomeDaCor := View_Parametros1.Global.ParametroCorConsulta ;
      View_CadastrosConsulta.ShowModal;
   finally
      View_CadastrosConsulta.DisposeOf;
      AjustaCor;
      AcertarMenu;
   end;
end;

procedure T_Frm_Principal.spBtn_BotaoLocacoesClick(Sender: TObject);
begin
   try
      OfuscaMenu;
      View_LocacoesConsulta := TView_LocacoesConsulta.Create(Nil);
      View_LocacoesConsulta.Left := 231;
      View_LocacoesConsulta.Top := Self.Height-ClientHeight+Pa_Topo.Height-12;
      View_LocacoesConsulta.Height :=Self.ClientHeight-(View_LocacoesConsulta.Top+12);
      View_LocacoesConsulta.Width := Self.ClientWidth-(Pa_MenuLateral.Width+12);
      View_LocacoesConsulta.PermissaoLocacoesCancelamento := ParamSis.PermissaoLocacoesCancelamento;
      View_LocacoesConsulta.PermissaoLocacoesLancamento := ParamSis.PermissaoLocacoesLancamento;
      View_LocacoesConsulta.PermissaoLocacoesEdicao := ParamSis.PermissaoLocacoesEdicao;
      View_LocacoesConsulta.Visible := False;
      View_LocacoesConsulta.NomeDaCor := View_Parametros1.Global.ParametroCorLocacao ;
      View_LocacoesConsulta.ShowModal;
   finally
      View_LocacoesConsulta.DisposeOf;
      AjustaCor;
      AcertarMenu;
   end;
end;


procedure T_Frm_Principal.TopAjustarLargura;
begin
  Edt_Firma.Width := Trunc(GridPanel_Filtro.Width * 0.55);
  Edt_Usuario.Width := Trunc(GridPanel_Filtro.Width * 0.36);
end;


procedure T_Frm_Principal.AjustaCor;
begin
   if (View_Parametros1.Global.ParametroCorPrincipal = 'ESCURO') OR  (View_Parametros1.Global.ParametroCorPrincipal = 'DARK') then
      View_Style.Principal_Dark
   ELSE if (View_Parametros1.Global.ParametroCorPrincipal ='GELO') OR (View_Parametros1.Global.ParametroCorPrincipal = 'LIGHT') then
      View_Style.Principal_Light
   ELSE if (View_Parametros1.Global.ParametroCorPrincipal ='CLARO') OR (View_Parametros1.Global.ParametroCorPrincipal = 'WHITE') then
      View_Style.Principal_White;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
//   if (View_Parametros1.Global.ParametroCorPrincipal = 'ESCURO') OR  (View_Parametros1.Global.ParametroCorPrincipal = 'DARK') then
//      Pa_Topo.Color := DARKPACIFICBLUE //GRIDTITLE
//   else
//      Pa_Topo.Color := MEDIUMDARKPACIFICBLUE;
   Pa_Topo.Color := BACKGROUNDTOP;
   Edt_Firma.Color := EDITDATA;
   Edt_Firma.Font.Color := FONTCOLOR;
   Edt_Usuario.Color := EDITDATA;
   Edt_Usuario.Font.Color := FONTCOLOR;
//   if (View_Parametros1.Global.ParametroCorPrincipal = 'ESCURO') OR  (View_Parametros1.Global.ParametroCorPrincipal = 'DARK') then
//      Pa_MenuLateral.Color := DARKPACIFICBLUE //GRIDTITLE
//   else
//      Pa_MenuLateral.Color := MEDIUMDARKPACIFICBLUE;
   Pa_MenuLateral.Color := GRIDTITLE;
   Pa_MenuLateral.Font.Color := FONTCOLOR;
   La_NomeSistema.Font.Color := FONTCOLOR;

  La_BotaoInicial.Font.Color := FONTCOLOR;
  La_Op2MenuConsulta.Font.Color := FONTCOLOR;
  La_BotaoPessoasGrupos.Font.Color := FONTCOLOR;
  La_Op3MenuCadastros.Font.Color := FONTCOLOR;
  La_BotaoUsuarios.Font.Color := FONTCOLOR;
  La_BotaoProdutos.Font.Color := FONTCOLOR;
  La_BotaoLocacoes.Font.Color := FONTCOLOR;
end;

end.
