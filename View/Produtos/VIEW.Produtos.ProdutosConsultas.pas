unit VIEW.Produtos.ProdutosConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Halifax.Controller.Cad_UsuariosIB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls,
//  Vcl.WinXCtrls,
   Vcl.Buttons,
  View_Style, Vcl.Imaging.pngimage,
  Hallifax.Controller.Produtos.Produtos,
  Hallifax.Controller.Produtos.ProdutosEstoque,
  Hallifax.Controller.Produtos.ProdutosManutencao;

type
  TView_ProdutosConsulta = class(TForm)
    Pa_Principal: TPanel;
    PaBottom: TPanel;
    Dbg_Dados: TDBGrid;
    GridPanel_Filtro: TGridPanel;
    Edt_Filtro: TEdit;
    Cb_Ordenar: TComboBox;
    Pa_Top: TPanel;
    La_Titulo: TLabel;
    Pa_Top0: TPanel;
    La_AcessaProdutos: TLabel;
    Rb_AcessaProdutos: TRadioButton;
    Rb_AcessaManutencao: TRadioButton;
    La_AcessaManutencao: TLabel;
    Pa_BotaoLixeira: TPanel;
    La_BotaoLixeira: TLabel;
    SpBt_Lixeira: TSpeedButton;
    Image2: TImage;
    Pa_ProdutoBotoes: TPanel;
    Pa_BotaoNovo: TPanel;
    La_BotaoNovo: TLabel;
    SpBt_Novo: TSpeedButton;
    Pa_BotaoEditar: TPanel;
    La_BotaoEditar: TLabel;
    SpBtn_Editar: TSpeedButton;
    Pa_BotaoEstoque: TPanel;
    La_BotaoEstoque: TLabel;
    spBtn_Estoque: TSpeedButton;
    Pa_BotaoPreco: TPanel;
    La_BotaoPreco: TLabel;
    spBtn_Preco: TSpeedButton;
    Pa_ManutencaoBotoes: TPanel;
    Pa_BotaoAlterar: TPanel;
    La_BotaoAlterar: TLabel;
    SpBt_Alterarr: TSpeedButton;
    Pa_BotaoEncerrar: TPanel;
    La_BotaoEncerrar: TLabel;
    SpBt_Encerrar: TSpeedButton;
    Pa_BotaoCancelar: TPanel;
    La_BotaoCancelar: TLabel;
    SpBt_Cancelar: TSpeedButton;
    Pa_BotaoLancar: TPanel;
    La_BotaoLancar: TLabel;
    SpBt_Lancar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Edt_FiltroChange(Sender: TObject);
    procedure Cb_OrdenarChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edt_FiltroEnter(Sender: TObject);
    procedure Edt_FiltroExit(Sender: TObject);
    procedure Cb_OrdenarEnter(Sender: TObject);
    procedure Cb_OrdenarExit(Sender: TObject);
    procedure SpBt_LixeiraClick(Sender: TObject);
    procedure SpBt_NovoClick(Sender: TObject);
    procedure SpBtn_EditarClick(Sender: TObject);
    procedure spBtn_EstoqueClick(Sender: TObject);
    procedure spBtn_PrecoClick(Sender: TObject);
    procedure Rb_AcessaProdutosClick(Sender: TObject);
    procedure Rb_AcessaManutencaoClick(Sender: TObject);
    procedure SpBt_LancarClick(Sender: TObject);
    procedure SpBt_AlterarrClick(Sender: TObject);
    procedure SpBt_EncerrarClick(Sender: TObject);
    procedure SpBt_CancelarClick(Sender: TObject);
    procedure Dbg_DadosCellClick(Column: TColumn);
    procedure Dbg_DadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FNomeConsulta: String;
    FPermissaoManutencoes: String;
    FNomeDaCor: String;
    FPermissaoProdutos: String;
    FUsuario: String;
    FPermissaoPrecos: String;
    FPermissaoEstoque: String;
    procedure TopAjustarLargura;
    procedure AjustaCor;
    procedure AjustaGrid;
    procedure OrdenarEFiltrar;
    procedure SetNomeConsulta(const Value: String);
    procedure SetNomeDaCor(const Value: String);
    procedure SetPermissaoManutencoes(const Value: String);
    procedure SetPermissaoProdutos(const Value: String);
    procedure SetUsuario(const Value: String);
    procedure SetPermissaoEstoque(const Value: String);
    procedure SetPermissaoPrecos(const Value: String);
    procedure AjustaPermissoes;
  public
    { Public declarations }
    Controller_Produtos: TController_ProdutosFD;
    Controller_Estoque: TController_ProdutosEstoqueFD;
    Controller_Manutencao: TController_ProdutosManutencaoFD;
    property NomeConsulta :String read FNomeConsulta write SetNomeConsulta;
    Property Usuario : String read FUsuario write SetUsuario;
    Property NomeDaCor : String read FNomeDaCor write SetNomeDaCor;
    Property PermissaoProdutos : String read FPermissaoProdutos write SetPermissaoProdutos;
    Property PermissaoManutencoes : String  read FPermissaoManutencoes write SetPermissaoManutencoes;
    Property PermissaoEstoque : String read FPermissaoEstoque write SetPermissaoEstoque;
    Property PermissaoPrecos : String read FPermissaoPrecos write SetPermissaoPrecos;
  end;

var
  View_ProdutosConsulta: TView_ProdutosConsulta;

implementation

{$R *.dfm}

uses View.Padrao_Lixeira, VIEW.Cadastros.UsuariosCadastros, VIEW.Produtos.Produtos,
     VIEW.Produtos.Estoque, VIEW.Produtos.Preco, VIEW.Produtos.Manutencao;

procedure TView_ProdutosConsulta.SetNomeConsulta(const Value: String);
begin
  FNomeConsulta := Value;
end;


procedure TView_ProdutosConsulta.SetNomeDaCor(const Value: String);
begin
  FNomeDaCor := Value;
end;

procedure TView_ProdutosConsulta.SetPermissaoEstoque(const Value: String);
begin
  FPermissaoEstoque := Value;
end;

procedure TView_ProdutosConsulta.SetPermissaoManutencoes(const Value: String);
begin
  FPermissaoManutencoes := Value;
end;

procedure TView_ProdutosConsulta.SetPermissaoPrecos(const Value: String);
begin
  FPermissaoPrecos := Value;
end;

procedure TView_ProdutosConsulta.SetPermissaoProdutos(const Value: String);
begin
  FPermissaoProdutos := Value;
end;

procedure TView_ProdutosConsulta.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;




procedure TView_ProdutosConsulta.FormCreate(Sender: TObject);
begin
   Controller_Produtos:= TController_ProdutosFD.Create;
   Controller_Estoque:= TController_ProdutosEstoqueFD.Create;
   Controller_Manutencao:= TController_ProdutosManutencaoFD.Create;
   NomeConsulta := 'PRODUTOS';
   AjustaGrid;
   TopAjustarLargura;
end;


procedure TView_ProdutosConsulta.FormActivate(Sender: TObject);
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   AjustaCor;
   TopAjustarLargura;
   AjustaPermissoes;
   Rb_AcessaProdutos.Checked := True;
   Edt_Filtro.SetFocus;
end;


procedure TView_ProdutosConsulta.FormDestroy(Sender: TObject);
begin
   FreeAndNil(Controller_Produtos);
   Controller_Estoque.DisposeOf;
   FreeAndNil(Controller_Manutencao);
end;


procedure TView_ProdutosConsulta.FormResize(Sender: TObject);
begin
  TopAjustarLargura
end;



procedure TView_ProdutosConsulta.TopAjustarLargura;
begin
  Edt_Filtro.Width := Trunc(GridPanel_Filtro.Width * 0.68);
  Cb_Ordenar.Width := Trunc(GridPanel_Filtro.Width * 0.277);
end;


procedure TView_ProdutosConsulta.AjustaCor;
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
   Pa_Top0.Color := BACKGROUNDTOP;
   Pa_Top.Color := BACKGROUNDTOP;
   GridPanel_Filtro.Color := BACKGROUNDTOP;
   La_Titulo.Font.Color := FONTCOLOR;
   Dbg_Dados.Color := EDITDATA;
   Dbg_Dados.FixedColor := GRIDTITLE;
   Pa_BotaoNovo.Color := BUTTONCOLOR;
   Pa_BotaoEditar.Color := BUTTONCOLOR;
   Pa_BotaoEstoque.Color := BUTTONCOLOR;
   Pa_BotaoPreco.Color := BUTTONCOLOR;
end;




procedure TView_ProdutosConsulta.AjustaPermissoes;
begin
  // --> Permissões
  Pa_BotaoLancar.Visible := True;
  if Self.PermissaoProdutos.ToInteger = 1 then
  //Visualizar/Consultar
  begin
    Pa_BotaoNovo.Enabled := False;
    Pa_BotaoNovo.Color := BUTTONCOLORDISABLE;
    La_BotaoNovo.Font.Color := FONTCOLORDISABLE;
    Pa_BotaoEditar.Enabled := False;
    Pa_BotaoEditar.Color := BUTTONCOLORDISABLE;
    La_BotaoEditar.Font.Color := FONTCOLORDISABLE;
    Pa_BotaoLixeira.Enabled := False;
    Pa_BotaoLixeira.Color := BUTTONCOLORDISABLE;
    La_BotaoLixeira.Font.Color := FONTCOLORDISABLE;
  end
  else if Self.PermissaoProdutos.ToInteger = 2 then
  //Cadastrar
  begin
    Pa_BotaoEditar.Enabled := False;
    Pa_BotaoEditar.Color := BUTTONCOLORDISABLE;
    La_BotaoEditar.Font.Color := FONTCOLORDISABLE;
    Pa_BotaoLixeira.Enabled := False;
    Pa_BotaoLixeira.Color := BUTTONCOLORDISABLE;
    La_BotaoLixeira.Font.Color := FONTCOLORDISABLE;
  end
  else if Self.PermissaoProdutos.ToInteger = 3 then
  //Editar
  begin
    Pa_BotaoNovo.Enabled := False;
    Pa_BotaoNovo.Color := BUTTONCOLORDISABLE;
    La_BotaoNovo.Font.Color := FONTCOLORDISABLE;
    Pa_BotaoLixeira.Enabled := False;
    Pa_BotaoLixeira.Color := BUTTONCOLORDISABLE;
    La_BotaoLixeira.Font.Color := FONTCOLORDISABLE;
  end
  else if Self.PermissaoProdutos.ToInteger = 4 then
  //Cadastrar e Editar
  begin
    Pa_BotaoLixeira.Enabled := False;
    Pa_BotaoLixeira.Color := BUTTONCOLORDISABLE;
    La_BotaoLixeira.Font.Color := FONTCOLORDISABLE;
  end;
  if (Self.PermissaoProdutos.ToInteger <= 0) or (Self.PermissaoEstoque.ToInteger = 0) then
  begin
    Pa_BotaoEstoque.Enabled := False;
    Pa_BotaoEstoque.Color := BUTTONCOLORDISABLE;
    La_BotaoEstoque.Font.Color := FONTCOLORDISABLE;
  end;
  if (Self.PermissaoProdutos.ToInteger <= 0) or (Self.PermissaoPrecos.ToInteger = 0) then
  begin
    Pa_BotaoPreco.Enabled := False;
    Pa_BotaoPreco.Color := BUTTONCOLORDISABLE;
    La_BotaoPreco.Font.Color := FONTCOLORDISABLE;
  end;
  if (Self.PermissaoProdutos.ToInteger <= 0) or (Self.PermissaoManutencoes.ToInteger = 0) then
  begin
    La_AcessaManutencao.Font.Color := FONTCOLORDISABLE;
    Rb_AcessaManutencao.Enabled := False;
    La_AcessaManutencao.Repaint;
    Pa_BotaoLancar.Visible := False;
  end;
end;


procedure TView_ProdutosConsulta.AjustaGrid;
begin
  Dbg_Dados.Ctl3D := False;
  Dbg_Dados.DrawingStyle := gdsClassic;
  //  Dbg_Dados.Color := clSilver;
  //  Dbg_Dados.FixedColor := clGray;
  if (NomeConsulta = 'Produtos') or (NomeConsulta = 'PRODUTOS' )then
  begin
     Dbg_Dados.Columns[0].FieldName := 'CODIGO';
     Dbg_Dados.Columns[0].Title.Caption := 'Codigo:';
     Dbg_Dados.Columns[0].Width := 75;
     Dbg_Dados.Columns[1].FieldName := 'PRODUTO';
     Dbg_Dados.Columns[1].Title.Caption := 'Produto:';
     Dbg_Dados.Columns[1].Width := 380;
     Dbg_Dados.Columns[2].FieldName := 'MARCA';
     Dbg_Dados.Columns[2].Title.Caption := 'Marca:';
     Dbg_Dados.Columns[2].Width := 330;
     Dbg_Dados.Columns[3].FieldName := 'UNIDADE';
     Dbg_Dados.Columns[3].Title.Caption := 'Unid';
     Dbg_Dados.Columns[3].Width := 90;
     Dbg_Dados.Columns[4].FieldName := 'GRUPO';
     Dbg_Dados.Columns[4].Title.Caption := 'Grupo:';
     Dbg_Dados.Columns[4].Width := 290;
     Dbg_Dados.Columns[5].FieldName := 'FORNECEDOR';
     Dbg_Dados.Columns[5].Title.Caption := 'Fornecedor:';
     Dbg_Dados.Columns[5].Width := 295;
     Dbg_Dados.Columns[6].FieldName := 'DESCRICAO';
     Dbg_Dados.Columns[6].Title.Caption := 'Descrição:';
     Dbg_Dados.Columns[6].Width := 590;
     Dbg_Dados.Columns[7].FieldName := '';
     Dbg_Dados.Columns[7].Title.Caption := ':';
     Dbg_Dados.Columns[7].Width := 0;
     Dbg_Dados.DataSource := Controller_Produtos.DAO.DataSet;
  End else
  if (NomeConsulta = 'Manuntencao') or (NomeConsulta = 'MANUTENCAO') then
  begin
     Dbg_Dados.Columns[0].FieldName := 'PRODUTO';
     Dbg_Dados.Columns[0].Title.Caption := 'Produto:';
     Dbg_Dados.Columns[0].Width := 300;
     Dbg_Dados.Columns[1].FieldName := 'MARCA';
     Dbg_Dados.Columns[1].Title.Caption := 'Marca:';
     Dbg_Dados.Columns[1].Width := 280;
     Dbg_Dados.Columns[2].FieldName := 'DATA_INICIAL';
     Dbg_Dados.Columns[2].Title.Caption := 'Data Inicial';
     Dbg_Dados.Columns[2].Width := 90;
     Dbg_Dados.Columns[3].FieldName := 'FLAG_MANUTENCAO';
     Dbg_Dados.Columns[3].Title.Caption := 'Situação';
     Dbg_Dados.Columns[3].Width := 125;
     Dbg_Dados.Columns[4].FieldName := 'QUANTIDADE';
     Dbg_Dados.Columns[4].Title.Caption := 'Quantidade:';
     Dbg_Dados.Columns[4].Width := 99;
     Dbg_Dados.Columns[5].FieldName := 'DATA_ENCERRAMENTO';
     Dbg_Dados.Columns[5].Title.Caption := 'Data Encerramento:';
     Dbg_Dados.Columns[5].Width := 140;
     Dbg_Dados.Columns[6].FieldName := 'QUANTIDADE_DEVOLVIDA';
     Dbg_Dados.Columns[6].Title.Caption := 'Qtd Devolvida:';
     Dbg_Dados.Columns[6].Width := 99;
     Dbg_Dados.Columns[7].FieldName := 'CODIGO';
     Dbg_Dados.Columns[7].Title.Caption := 'Codigo:';
     Dbg_Dados.Columns[7].Width := 95;
     Dbg_Dados.DataSource := Controller_Manutencao.DAO.DataSet;
  end;
  Dbg_Dados.DataSource.Enabled := True;
  Edt_Filtro.Text := '';
  Dbg_Dados.Repaint;
//   DBText_Produto.DataSource := Controller_Produtos.DAO.DataSet;
//   DBText_Produto.DataField := 'PRODUTO';
//   DBText_Produto.DataSource.Enabled := True;
end;


procedure TView_ProdutosConsulta.OrdenarEFiltrar;
begin
  if (NomeConsulta = 'Produtos') or (NomeConsulta = 'PRODUTOS' )then
  begin
      case Cb_Ordenar.ItemIndex of
         0:
            begin
               Controller_Produtos.DAO.Get('', Edt_Filtro.Text, 'CODIGO','');
            end;
         1:
            begin
               if Trim(Edt_Filtro.Text) = '' then
                  Controller_Produtos.DAO.GetSimple('')
               else
                  Controller_Produtos.DAO.Get('', Edt_Filtro.Text, 'PRODUTO,MARCA','');
            end;
         2:
            begin
               Controller_Produtos.DAO.Get('', Edt_Filtro.Text, 'GRUPO, PRODUTO','');
            end;
         3:
            begin
               Controller_Produtos.DAO.Get('', Edt_Filtro.Text, 'GRUPO, MARCA, PRODUTO','');
            end;
         4:
            begin
               Controller_Produtos.DAO.Get('', Edt_Filtro.Text, 'FORNECEDOR, MARCA, PRODUTO','');
            end;
      end;
  End else
  if (NomeConsulta = 'Manutencao') or (NomeConsulta = 'MANUTENCAO') then
  begin
      case Cb_Ordenar.ItemIndex of
         0:
            begin
               if Trim(Edt_Filtro.Text) = '' then
                  Controller_Manutencao.DAO.GetSimple('ABERTA','ABERTAPRODUTOS')
               else
                  Controller_Manutencao.DAO.GetSimple('ABERTA','ABERTAPRODUTOS');
            end;
         1:
            begin
               if Trim(Edt_Filtro.Text) = '' then
                  Controller_Manutencao.DAO.GetSimple('ABERTA','ABERTADATA')
               else
                  Controller_Manutencao.DAO.GetSimple('ABERTA','ABERTADATA');
            end;
         2:
            begin
               if Trim(Edt_Filtro.Text) = '' then
                  Controller_Manutencao.DAO.GetSimple('ENCERRADA','ENCERRADAPRODUTOS')
               else
                  Controller_Manutencao.DAO.GetSimple('ENCERRADA','ENCERRADAPRODUTOS');
            end;
         3:
            begin
               if Trim(Edt_Filtro.Text) = '' then
                  Controller_Manutencao.DAO.GetSimple('ENCERRADA','ENCERRADADATA')
               else
                  Controller_Manutencao.DAO.GetSimple('ENCERRADA','ENCERRADADATA');
            end;
         4:
            begin
               if Trim(Edt_Filtro.Text) = '' then
                  Controller_Manutencao.DAO.GetSimple('CANCELADA','ABERTADATA')
               else
                  Controller_Manutencao.DAO.GetSimple('CANCELADA','ABERTADATA');
            end;
      end;
  end;
end;



procedure TView_ProdutosConsulta.Rb_AcessaProdutosClick(Sender: TObject);
begin
   NomeConsulta := 'PRODUTOS';
 //  DBText_Produto.Visible := True;
   AjustaGrid;
   TopAjustarLargura;
   La_Titulo.Caption := 'PRODUTOS';
   Cb_Ordenar.Items.Clear;
   Cb_Ordenar.Items.Append('Codigo');
   Cb_Ordenar.Items.Append('Produto e Marca');
   Cb_Ordenar.Items.Append('Grupo e Produto');
   Cb_Ordenar.Items.Append('Grupo, Marca e Produto');
   Cb_Ordenar.Items.Append('Fornecedor, Marca  e Produto');
   Cb_Ordenar.ItemIndex := 1;
   OrdenarEFiltrar;
   Pa_BotaoLixeira.Visible := True;
   Pa_ProdutoBotoes.Left := 6;
   Pa_ProdutoBotoes.Top := 48;
   Pa_ProdutoBotoes.Visible := True;
   Pa_ManutencaoBotoes.Visible := False;
   Edt_Filtro.Visible := True;
   Edt_Filtro.SetFocus;
end;


procedure TView_ProdutosConsulta.Rb_AcessaManutencaoClick(Sender: TObject);
begin
   NomeConsulta := 'MANUTENCAO';
 //  DBText_Produto.Visible := False;
   AjustaGrid;
   TopAjustarLargura;
   La_Titulo.Caption := 'MANUTENCAO';
   Cb_Ordenar.Items.Clear;
   Cb_Ordenar.Items.Append('ABERTA - Produtos, Data Inicial');
   Cb_Ordenar.Items.Append('ABERTA - Data Inicial');
   Cb_Ordenar.Items.Append('ENCERRADA - Produtos, DtEncerramento');
   Cb_Ordenar.Items.Append('ENCERRADA - Data Encerramento');
   Cb_Ordenar.Items.Append('CANCELADA - Data INICIAL');
   Cb_Ordenar.ItemIndex := 1;
   OrdenarEFiltrar;
   Pa_BotaoLixeira.Visible := False;
   Pa_ProdutoBotoes.Visible := False;
   Pa_ManutencaoBotoes.Left := 6;
   Pa_ManutencaoBotoes.Top := 48;
   Pa_ManutencaoBotoes.Visible := True;
   Edt_Filtro.Visible := False;
   // Edt_Filtro.SetFocus;
   Cb_Ordenar.SetFocus;
end;


procedure TView_ProdutosConsulta.SpBt_LixeiraClick(Sender: TObject);
Begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      Form_Confirmalixeira := TForm_Confirmalixeira.Create(Nil);
      Form_Confirmalixeira.Left := Self.Left+Trunc((Self.Width-Form_Confirmalixeira.Width)/2);
      Form_Confirmalixeira.Top := Self.Top+Trunc((Self.Height-Form_Confirmalixeira.Height)/2);
       Controller_Produtos.LoadGet;
      Form_Confirmalixeira.dados := Controller_Produtos.ORM.CODIGO + '  -  '
         + Controller_Produtos.ORM.PRODUTO;
      Form_Confirmalixeira.ShowModal;
      if Form_Confirmalixeira.Lixeira then
      begin
         Controller_Produtos.DAO.Delete(Controller_Produtos.ORM_Produtos);
         OrdenarEFiltrar;
      end;
   finally
      OrdenarEFiltrar;
      Form_Confirmalixeira.DisposeOf;
   end;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;



procedure TView_ProdutosConsulta.SpBt_NovoClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosDados := TView_ProdutosDados.Create(Nil);
      View_ProdutosDados.Usuario := Self.Usuario;
      View_ProdutosDados.CODEMPRESA := '1';
      View_ProdutosDados.TipoPermissao := Self.PermissaoProdutos;
      View_ProdutosDados.TipoOperacaoDados := 'NOVO';
      View_ProdutosDados.NomeDaCor := Self.NomeDaCor;
      View_ProdutosDados.Left := Self.Left;
      View_ProdutosDados.top := Self.top;
      Controller_Produtos.LoadGet;
      View_ProdutosDados.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosDados.DisposeOf;
   end;
//   Pa_Top.Color := BACKGROUNDTOP;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;



procedure TView_ProdutosConsulta.SpBtn_EditarClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosDados := TView_ProdutosDados.Create(Nil);
      View_ProdutosDados.Usuario := Self.Usuario;
      View_ProdutosDados.TipoPermissao := Self.PermissaoProdutos;
      View_ProdutosDados.TipoOperacaoDados := 'EDITAR';
      View_ProdutosDados.NomeDaCor := Self.NomeDaCor;
      View_ProdutosDados.Left := Self.Left;
      View_ProdutosDados.top := Self.top;
      Controller_Produtos.LoadGet;
      View_ProdutosDados.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosDados.DisposeOf;
   end;
//   Pa_Top.Color := BACKGROUNDTOP;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;


procedure TView_ProdutosConsulta.spBtn_EstoqueClick(Sender: TObject);
begin
//View_ProdutosEstoque
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosEstoque := TView_ProdutosEstoque.Create(Nil);
      View_ProdutosEstoque.Usuario := Self.Usuario;
      View_ProdutosEstoque.CODEMPRESA := '1';
      View_ProdutosEstoque.NomeDaCor := Self.NomeDaCor;
      View_ProdutosEstoque.Left := Self.Left;
      View_ProdutosEstoque.top := Self.top;
      Controller_Produtos.LoadGet;
      View_ProdutosEstoque.CODIGO := Controller_Produtos.ORM.CODIGO;
      View_ProdutosEstoque.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosEstoque.DisposeOf;
   end;
//   Pa_Top.Color := BACKGROUNDTOP;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;

procedure TView_ProdutosConsulta.spBtn_PrecoClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosPreco := TView_ProdutosPreco.Create(Nil);
      View_ProdutosPreco.Usuario := Self.Usuario;
      View_ProdutosPreco.CODEMPRESA := '1';
      View_ProdutosPreco.NomeDaCor := Self.NomeDaCor;
      View_ProdutosPreco.Left := Self.Left;
      View_ProdutosPreco.top := Self.top;
      Controller_Produtos.LoadGet;
      View_ProdutosPreco.CODIGO := Controller_Produtos.ORM.CODIGO;
      View_ProdutosPreco.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosPreco.DisposeOf;
   end;
//   Pa_Top.Color := BACKGROUNDTOP;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;

procedure TView_ProdutosConsulta.Cb_OrdenarChange(Sender: TObject);
begin
 OrdenarEFiltrar;
   if ((NomeConsulta = 'Manutencao') or (NomeConsulta = 'MANUTENCAO')) and
     (Cb_Ordenar.ItemIndex <= 1) then
   begin
      Pa_BotaoAlterar.Visible := False;
      Pa_BotaoEncerrar.Visible := True;
      Pa_BotaoCancelar.Visible := True;
   end
   else if ((NomeConsulta = 'Manutencao') or (NomeConsulta = 'MANUTENCAO')) and
     (Cb_Ordenar.ItemIndex >= 2) then
   begin
      Pa_BotaoAlterar.Visible := False;
      Pa_BotaoEncerrar.Visible := False;
      Pa_BotaoCancelar.Visible := False;
   end;

end;


procedure TView_ProdutosConsulta.Edt_FiltroChange(Sender: TObject);
begin
   IF Trim(Edt_Filtro.Text) = '' then
   begin
      Cb_Ordenar.ItemIndex := 1;
      Controller_Produtos.DAO.GetSimple('');
      Exit;
   end;
   if Length(Edt_Filtro.Text) in [3,4,5,6,8,13,14,20,25,30,35,40,45,50,55,60,65,70,75,80] then
      OrdenarEFiltrar;
end;


procedure TView_ProdutosConsulta.Edt_FiltroEnter(Sender: TObject);
begin
   Edt_Filtro.Color := EDITDATA;
end;


procedure TView_ProdutosConsulta.Edt_FiltroExit(Sender: TObject);
begin
   Edt_Filtro.ParentColor := True;
   Edt_Filtro.Repaint;
end;


procedure TView_ProdutosConsulta.Cb_OrdenarEnter(Sender: TObject);
begin
   Cb_Ordenar.Color := EDITDATA;
end;


procedure TView_ProdutosConsulta.Cb_OrdenarExit(Sender: TObject);
begin
   Cb_Ordenar.ParentColor := True;
end;


procedure TView_ProdutosConsulta.Dbg_DadosCellClick(Column: TColumn);
begin
//   Controller_Produtos.LoadGet;
//   Lbl_Produto.Caption := 'Produto: '+Controller_Produtos.ORM.PRODUTO;
end;

procedure TView_ProdutosConsulta.Dbg_DadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//   Controller_Produtos.LoadGet;
//   Lbl_Produto.Caption := 'Produto: '+Controller_Produtos.ORM.PRODUTO;
end;

procedure TView_ProdutosConsulta.SpBt_LancarClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosManutencao := TView_ProdutosManutencao.Create(Nil);
      View_ProdutosManutencao.Usuario := Self.Usuario;
      View_ProdutosManutencao.CODEMPRESA := '1';
      View_ProdutosManutencao.TipoOperacaoDados := 'LANCAR';
      View_ProdutosManutencao.NomeDaCor := Self.NomeDaCor;
      View_ProdutosManutencao.Left := Self.Left;
      View_ProdutosManutencao.top := Self.top;
      Controller_Produtos.LoadGet;
      View_ProdutosManutencao.CodigoProduto := Controller_Produtos.ORM.CODIGO;
      View_ProdutosManutencao.Produto := Controller_Produtos.ORM.PRODUTO;
      View_ProdutosManutencao.Marca := Controller_Produtos.ORM.MARCA;
      Controller_Estoque.DAO.GetId(Controller_Produtos.ORM.CODIGO,'');
      Controller_Estoque.LoadGet;
      View_ProdutosManutencao.Quantidade_Manutencao := Controller_Estoque.ORM.QUANTDADE_MANUTENCAO;
      View_ProdutosManutencao.ESTOQUE_DISPONIVEL := Controller_Estoque.ORM.ESTOQUE_DISPONIVEL;
      if (Controller_Estoque.ORM.ESTOQUE_DISPONIVEL.ToDouble = 0)  then
      begin
          MessageDlg('O Produto: ' + Controller_Produtos.ORM.PRODUTO +' está com estoque disponível zerado.'+ CHR
           (13) +#13+#13 + 'Portanto não há produtos para serem enviados para manutenção', mtWarning, [mbOk], 0);
          Rb_AcessaProdutos.Checked := True;
          Exit;
      end;
      View_ProdutosManutencao.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosManutencao.DisposeOf;
      Self.AlphaBlendValue := 255;
      Self.Repaint;
   end;
//   Pa_Top.Color := BACKGROUNDTOP;
end;


procedure TView_ProdutosConsulta.SpBt_AlterarrClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosManutencao := TView_ProdutosManutencao.Create(Nil);
      View_ProdutosManutencao.Usuario := Self.Usuario;
      View_ProdutosManutencao.CODEMPRESA := '1';
      View_ProdutosManutencao.TipoOperacaoDados := 'ALTERAR';
      View_ProdutosManutencao.NomeDaCor := Self.NomeDaCor;
      View_ProdutosManutencao.Left := Self.Left;
      View_ProdutosManutencao.top := Self.top;
      Controller_Manutencao.LoadGet;
      View_ProdutosManutencao.CODIGO := Controller_Manutencao.ORM.CODIGO.ToInteger;
      View_ProdutosManutencao.CodigoProduto := Controller_Manutencao.ORM.CODIGO_PRODUTO;
      Controller_Estoque.DAO.GetId(Controller_Manutencao.ORM.CODIGO_PRODUTO,'');
      Controller_Estoque.LoadGet;
      View_ProdutosManutencao.Quantidade_Manutencao := Controller_Estoque.ORM.QUANTDADE_MANUTENCAO;
      View_ProdutosManutencao.ESTOQUE_DISPONIVEL := Controller_Estoque.ORM.ESTOQUE_DISPONIVEL;
     // View_ProdutosManutencao.Produto := Controller_Produtos.ORM.PRODUTO;
     // View_ProdutosManutencao.Marca := Controller_Produtos.ORM.MARCA;
      View_ProdutosManutencao.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosManutencao.DisposeOf;
      Self.AlphaBlendValue := 255;
      Self.Repaint;
   end;
end;


procedure TView_ProdutosConsulta.SpBt_EncerrarClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosManutencao := TView_ProdutosManutencao.Create(Nil);
      View_ProdutosManutencao.Usuario := Self.Usuario;
      View_ProdutosManutencao.CODEMPRESA := '1';
      View_ProdutosManutencao.TipoOperacaoDados := 'ENCERRAR';
      View_ProdutosManutencao.NomeDaCor := Self.NomeDaCor;
      View_ProdutosManutencao.Left := Self.Left;
      View_ProdutosManutencao.top := Self.top;
      Controller_Manutencao.LoadGet;
      View_ProdutosManutencao.CODIGO := Controller_Manutencao.ORM.CODIGO.ToInteger;
      View_ProdutosManutencao.CodigoProduto := Controller_Manutencao.ORM.CODIGO_PRODUTO;
      Controller_Estoque.DAO.GetId(Controller_Manutencao.ORM.CODIGO_PRODUTO,'');
      Controller_Estoque.LoadGet;
      View_ProdutosManutencao.Quantidade_Manutencao := Controller_Estoque.ORM.QUANTDADE_MANUTENCAO;
      View_ProdutosManutencao.ESTOQUE_DISPONIVEL := Controller_Estoque.ORM.ESTOQUE_DISPONIVEL;
      View_ProdutosManutencao.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosManutencao.DisposeOf;
      Self.AlphaBlendValue := 255;
      Self.Repaint;
   end;
end;


procedure TView_ProdutosConsulta.SpBt_CancelarClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 128;
   Self.Repaint;
   try
      View_ProdutosManutencao := TView_ProdutosManutencao.Create(Nil);
      View_ProdutosManutencao.Usuario := Self.Usuario;
      View_ProdutosManutencao.CODEMPRESA := '1';
      View_ProdutosManutencao.TipoOperacaoDados := 'CANCELAR';
      View_ProdutosManutencao.NomeDaCor := Self.NomeDaCor;
      View_ProdutosManutencao.Left := Self.Left;
      View_ProdutosManutencao.top := Self.top;
      Controller_Manutencao.LoadGet;
      View_ProdutosManutencao.CODIGO := Controller_Manutencao.ORM.CODIGO.ToInteger;
      View_ProdutosManutencao.CodigoProduto := Controller_Manutencao.ORM.CODIGO_PRODUTO;
      Controller_Estoque.DAO.GetId(Controller_Manutencao.ORM.CODIGO_PRODUTO,'');
      Controller_Estoque.LoadGet;
      View_ProdutosManutencao.Quantidade_Manutencao := Controller_Estoque.ORM.QUANTDADE_MANUTENCAO;
      View_ProdutosManutencao.ESTOQUE_DISPONIVEL := Controller_Estoque.ORM.ESTOQUE_DISPONIVEL;
      View_ProdutosManutencao.ShowModal;
   finally
      OrdenarEFiltrar;
      View_ProdutosManutencao.DisposeOf;
      Self.AlphaBlendValue := 255;
      Self.Repaint;
   end;
end;

end.
