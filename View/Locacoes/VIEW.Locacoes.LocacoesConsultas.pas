unit VIEW.Locacoes.LocacoesConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Halifax.Controller.Cad_UsuariosIB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls,
//  Vcl.WinXCtrls,
   Vcl.Buttons,
  View_Style, Vcl.Imaging.pngimage,
  Hallifax.Controller.Locacoes.LocacoesCabecalho_FD, Vcl.Menus;

type
  TView_LocacoesConsulta = class(TForm)
    Pa_Principal: TPanel;
    PaBottom: TPanel;
    Dbg_Dados: TDBGrid;
    GridPanel_Filtro: TGridPanel;
    Edt_Filtro: TEdit;
    Cb_Ordenar: TComboBox;
    Pa_Top: TPanel;
    Pa_Top0: TPanel;
    La_AcessaProdutos: TLabel;
    Rb_AbertoNova: TRadioButton;
    Rb_AbertoRenovada: TRadioButton;
    La_AcessaManutencao: TLabel;
    Pa_LocacoesBotoes: TPanel;
    Pa_BotaoEncerrarParcial: TPanel;
    La_BotaoEncerrarParcial: TLabel;
    SpBt_EncerrarParcial: TSpeedButton;
    Pa_BotaoEditar: TPanel;
    La_BotaoEditar: TLabel;
    SpBtn_Editar: TSpeedButton;
    Pa_BotaoRenovar: TPanel;
    La_BotaoRenovar: TLabel;
    spBtn_Renovar: TSpeedButton;
    Pa_BotaoReceber: TPanel;
    La_BotaoReceber: TLabel;
    spBtn_Receber: TSpeedButton;
    Pa_BotaoLancar: TPanel;
    La_BotaoLancar: TLabel;
    SpBt_Lancar: TSpeedButton;
    Pa_BotaoQuitar: TPanel;
    La_BotaoQuitar: TLabel;
    spBtn_BotaoQuitar: TSpeedButton;
    Pa_BotaoCancelar: TPanel;
    La_BotaoCancelar: TLabel;
    SpBt_Cancelar: TSpeedButton;
    Rb_Encerrada: TRadioButton;
    Label1: TLabel;
    Pa_TopSituacaoPagamento: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Rb_NaoPaga: TRadioButton;
    Rb_ParcialmentePaga: TRadioButton;
    Rb_TotalmentePaga: TRadioButton;
    La_Titulo: TLabel;
    Ppm_Locacoes: TPopupMenu;
    Visualizar1: TMenuItem;
    Relatrio1: TMenuItem;
    Contrato1: TMenuItem;
    Cb_Periodo: TComboBox;
    BitBtn1: TBitBtn;
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
    procedure SpBtn_EditarClick(Sender: TObject);
    procedure spBtn_RenovarClick(Sender: TObject);
    procedure spBtn_ReceberClick(Sender: TObject);
    procedure Rb_AbertoNovaClick(Sender: TObject);
    procedure Rb_AbertoRenovadaClick(Sender: TObject);
    procedure SpBt_LancarClick(Sender: TObject);
    procedure SpBt_EncerrarClick(Sender: TObject);
    procedure SpBt_CancelarClick(Sender: TObject);
    procedure Dbg_DadosCellClick(Column: TColumn);
    procedure Dbg_DadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure spBtn_BotaoQuitarClick(Sender: TObject);
    procedure Rb_EncerradaClick(Sender: TObject);
    procedure SpBt_EncerrarParcialClick(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FNomeConsulta: String;
    FNomeDaCor: String;
    FPermissaoLocacoesCancelamento: String;
    FUsuario: String;
    FPermissaoLocacoesEdicao: String;
    FPermissaoLocacoesLancamento: String;
    procedure TopAjustarLargura;
    procedure AjustaCor;
    procedure AjustaGrid;
    procedure OrdenarEFiltrar;
    procedure SetNomeConsulta(const Value: String);
    procedure SetNomeDaCor(const Value: String);
    procedure SetPermissaoLocacoesCancelamento(const Value: String);
    procedure SetUsuario(const Value: String);
    procedure AjustaPermissoes;
    procedure SetPermissaoLocacoesEdicao(const Value: String);
    procedure SetPermissaoLocacoesLancamento(const Value: String);
  public
    { Public declarations }
    Controller_Locacoes1: TController_LocacoesCabechalo_FD;
    property NomeConsulta :String read FNomeConsulta write SetNomeConsulta;
    Property Usuario : String read FUsuario write SetUsuario;
    Property NomeDaCor : String read FNomeDaCor write SetNomeDaCor;
    Property PermissaoLocacoesCancelamento : String read FPermissaoLocacoesCancelamento write SetPermissaoLocacoesCancelamento;
    Property PermissaoLocacoesLancamento : String read FPermissaoLocacoesLancamento write SetPermissaoLocacoesLancamento;
    Property PermissaoLocacoesEdicao : String read FPermissaoLocacoesEdicao write SetPermissaoLocacoesEdicao;
  end;

var
  View_LocacoesConsulta: TView_LocacoesConsulta;

implementation

{$R *.dfm}

uses View.Padrao_Lixeira, VIEW.Cadastros.UsuariosCadastros, VIEW.Produtos.Produtos,
     VIEW.Produtos.Estoque, VIEW.Produtos.Preco, VIEW.Produtos.Manutencao,
  VIEW.Locacoes.Locacoes;

procedure TView_LocacoesConsulta.SetNomeConsulta(const Value: String);
begin
  FNomeConsulta := Value;
end;

procedure TView_LocacoesConsulta.SetNomeDaCor(const Value: String);
begin
  FNomeDaCor := Value;
end;

procedure TView_LocacoesConsulta.SetPermissaoLocacoesCancelamento(const Value: String);
begin
  FPermissaoLocacoesCancelamento := Value;
end;


procedure TView_LocacoesConsulta.SetPermissaoLocacoesEdicao(const Value: String);
begin
  FPermissaoLocacoesEdicao := Value;
end;

procedure TView_LocacoesConsulta.SetPermissaoLocacoesLancamento(const Value: String);
begin
  FPermissaoLocacoesLancamento := Value;
end;

procedure TView_LocacoesConsulta.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;




procedure TView_LocacoesConsulta.FormCreate(Sender: TObject);
begin
   Controller_Locacoes1:= TController_LocacoesCabechalo_FD.Create;
   NomeConsulta := 'EMABERTONOVA';
   AjustaGrid;
   TopAjustarLargura;
end;


procedure TView_LocacoesConsulta.FormActivate(Sender: TObject);
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   AjustaCor;
   TopAjustarLargura;
   Rb_AbertoNova.Checked := True;
   Rb_NaoPaga.Checked := True;
AjustaPermissoes;
   Edt_Filtro.SetFocus;
end;


procedure TView_LocacoesConsulta.FormDestroy(Sender: TObject);
begin
   FreeAndNil(Controller_Locacoes1);
end;


procedure TView_LocacoesConsulta.FormResize(Sender: TObject);
begin
  TopAjustarLargura
end;



procedure TView_LocacoesConsulta.TopAjustarLargura;
begin
  Edt_Filtro.Width := Trunc(GridPanel_Filtro.Width * 0.414);
  Cb_Periodo.Width := Trunc(GridPanel_Filtro.Width * 0.144);
  Cb_Ordenar.Width := Trunc(GridPanel_Filtro.Width * 0.241);
end;

procedure TView_LocacoesConsulta.AjustaCor;
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_Teal
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_Teal
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_Teal;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
   Pa_Top0.Color := BACKGROUNDTOP;
   Pa_Top.Color := BACKGROUNDTOP;
   Pa_TopSituacaoPagamento.Color := BACKGROUNDTOP;
   Pa_LocacoesBotoes.Color := BACKGROUND;
   GridPanel_Filtro.Color := BACKGROUNDTOP;
   La_Titulo.Font.Color := FONTCOLOR;
   Dbg_Dados.Color := EDITDATA;
   Dbg_Dados.FixedColor := GRIDTITLE;
   Pa_BotaoLancar.Color := BUTTONCOLOR;
   Pa_BotaoEditar.Color := BUTTONCOLOR;
   Pa_BotaoRenovar.Color := BUTTONCOLOR;
   Pa_BotaoReceber.Color := BUTTONCOLOR;
   Pa_BotaoEncerrarParcial.Color := BUTTONCOLOR;
   Pa_BotaoQuitar.Color := BUTTONCOLOR;
end;




procedure TView_LocacoesConsulta.AjustaPermissoes;
begin
   if PermissaoLocacoesCancelamento.ToInteger <= 0 then
   begin
      Pa_BotaoCancelar.Enabled := False;
      Pa_BotaoCancelar.Color := clGray;
      La_BotaoCancelar.Font.Color := clSilver;
      Pa_BotaoCancelar.Repaint;
      La_BotaoCancelar.Repaint;
   end
   else
   begin
      Pa_BotaoCancelar.Enabled := True;
      Pa_BotaoCancelar.Color := $00003DB9;
      La_BotaoCancelar.Font.Color := clCream;
      Pa_BotaoCancelar.Repaint;
      La_BotaoCancelar.Repaint;
   end;
   if PermissaoLocacoesLancamento.ToInteger <=0 then
   begin
      Pa_Botaolancar.Enabled := False;
      Pa_Botaolancar.Color := clGray;
      La_BotaoLancar.Font.Color := clSilver;
      Pa_Botaolancar.Repaint;
      La_BotaoLancar.Repaint;
   end
   else
   begin
      Pa_Botaolancar.Enabled := True;
      Pa_Botaolancar.Color := $00483E0A;
      La_BotaoLancar.Font.Color := clCream;
      Pa_Botaolancar.Repaint;
      La_BotaoLancar.Repaint;
   end;
   if PermissaoLocacoesEdicao.ToInteger <=0 then
   begin
      Pa_BotaoEditar.Enabled := False;
      Pa_BotaoEditar.Color := clGray;
      La_BotaoEditar.Font.Color := clSilver;
      Pa_BotaoEditar.Repaint;
      La_BotaoEditar.Repaint;
      Pa_BotaoRenovar.Enabled := False;
      Pa_BotaoRenovar.Color := clGray;
      La_BotaoRenovar.Font.Color := clSilver;
      Pa_BotaoRenovar.Repaint;
      La_BotaoRenovar.Repaint;
      Pa_BotaoReceber.Enabled := False;
      Pa_BotaoReceber.Color := clGray;
      La_BotaoReceber.Font.Color := clSilver;
      Pa_BotaoReceber.Repaint;
      La_BotaoReceber.Repaint;
      Pa_BotaoEncerrarParcial.Enabled := False;
      Pa_BotaoEncerrarParcial.Color := clGray;
      La_BotaoEncerrarParcial.Font.Color := clSilver;
      Pa_BotaoEncerrarParcial.Repaint;
      La_BotaoEncerrarParcial.Repaint;
      Pa_BotaoQuitar.Enabled := False;
      Pa_BotaoQuitar.Color := clGray;
      La_BotaoQuitar.Font.Color := clSilver;
      Pa_BotaoQuitar.Repaint;
      La_BotaoQuitar.Repaint;
   end
   else
   begin
      Pa_BotaoEditar.Enabled := True;
      Pa_BotaoEditar.Color := $00483E0A;
      La_BotaoEditar.Font.Color := clCream;
      Pa_BotaoEditar.Repaint;
      La_BotaoEditar.Repaint;
      Pa_BotaoRenovar.Enabled := True;
      Pa_BotaoRenovar.Color := $00483E0A;
      La_BotaoRenovar.Font.Color := clCream;
      Pa_BotaoRenovar.Repaint;
      La_BotaoRenovar.Repaint;
      Pa_BotaoReceber.Enabled := True;
      Pa_BotaoReceber.Color := $00483E0A;
      La_BotaoReceber.Font.Color := clCream;
      Pa_BotaoReceber.Repaint;
      La_BotaoReceber.Repaint;
      Pa_BotaoEncerrarParcial.Enabled := True;
      Pa_BotaoEncerrarParcial.Color := $00483E0A;
      La_BotaoEncerrarParcial.Font.Color := clCream;
      Pa_BotaoEncerrarParcial.Repaint;
      La_BotaoEncerrarParcial.Repaint;
      Pa_BotaoQuitar.Enabled := True;
      Pa_BotaoQuitar.Color := $00483E0A;
      La_BotaoQuitar.Font.Color := clCream;
      Pa_BotaoQuitar.Repaint;
      La_BotaoQuitar.Repaint;
   end;
   Pa_LocacoesBotoes.Repaint;
end;


procedure TView_LocacoesConsulta.BitBtn1Click(Sender: TObject);
begin
   VIEW_LocacoesMovimentacao := TVIEW_LocacoesMovimentacao.Create(Nil);
   VIEW_LocacoesMovimentacao.Left := Self.Left;
   VIEW_LocacoesMovimentacao.top := Self.top;
   VIEW_LocacoesMovimentacao.ShowModal;
   VIEW_LocacoesMovimentacao.DisposeOf;
end;

procedure TView_LocacoesConsulta.AjustaGrid;
begin
  Dbg_Dados.Ctl3D := False;
  Dbg_Dados.DrawingStyle := gdsClassic;
  //  Dbg_Dados.Color := clSilver;
  //  Dbg_Dados.FixedColor := clGray;
  if (NomeConsulta = 'EMABERTONOVA') then
  begin
     Dbg_Dados.Columns[0].FieldName := 'CODIGO';
     Dbg_Dados.Columns[0].Title.Caption := 'Codigo:';
     Dbg_Dados.Columns[0].Width := 75;
     Dbg_Dados.Columns[1].FieldName := 'DATA_LOCACAO';
     Dbg_Dados.Columns[1].Title.Caption := 'Dt Locaçao';
     Dbg_Dados.Columns[1].Width := 110;
     Dbg_Dados.Columns[2].FieldName := 'CLIENTE';
     Dbg_Dados.Columns[2].Title.Caption := 'Cliente:';
     Dbg_Dados.Columns[2].Width := 330;
     Dbg_Dados.Columns[3].FieldName := 'ENDERECO_ENTREGA';
     Dbg_Dados.Columns[3].Title.Caption := 'Encereço(entrega)';
     Dbg_Dados.Columns[3].Width := 440;
     Dbg_Dados.Columns[4].FieldName := 'NUMEND_ENTREGA';
     Dbg_Dados.Columns[4].Title.Caption := 'Número(entrega)';
     Dbg_Dados.Columns[4].Width := 130;
     Dbg_Dados.Columns[5].FieldName := 'CIDADE_ENTREGA';
     Dbg_Dados.Columns[5].Title.Caption := 'Cidade(entrega)';
     Dbg_Dados.Columns[5].Width := 400;
     Dbg_Dados.Columns[6].FieldName := 'CONTATO_ENTREGA';
     Dbg_Dados.Columns[6].Title.Caption := 'Contato(entrega)';
     Dbg_Dados.Columns[6].Width := 330;
     Dbg_Dados.Columns[7].FieldName := 'FONE_CONTATO_ENTREGA';
     Dbg_Dados.Columns[7].Title.Caption := 'Fone Contato(entrega)';
     Dbg_Dados.Columns[7].Width := 230;
     Dbg_Dados.Columns[8].FieldName := 'OBSERVACAO';
     Dbg_Dados.Columns[8].Title.Caption := 'Observação';
     Dbg_Dados.Columns[8].Width := 490;
     Dbg_Dados.Columns[9].FieldName := 'SITUACAO_PAGAR';
     Dbg_Dados.Columns[9].Title.Caption := 'Situação Pgto';
     Dbg_Dados.Columns[9].Width := 90;
  End else
  if (NomeConsulta = 'EMABERTORENOVADA') then
  begin
     Dbg_Dados.Columns[0].FieldName := 'CODIGO';
     Dbg_Dados.Columns[0].Title.Caption := 'Codigo:';
     Dbg_Dados.Columns[0].Width := 75;
     Dbg_Dados.Columns[1].FieldName := 'DATA_LOCACAO';
     Dbg_Dados.Columns[1].Title.Caption := 'Dt Locaçao';
     Dbg_Dados.Columns[1].Width := 110;
     Dbg_Dados.Columns[2].FieldName := 'CLIENTE';
     Dbg_Dados.Columns[2].Title.Caption := 'Cliente:';
     Dbg_Dados.Columns[2].Width := 330;
     Dbg_Dados.Columns[3].FieldName := 'DATA_ULTIMO_PGTO';
     Dbg_Dados.Columns[3].Title.Caption := 'Dt Ultimo Pgto';
     Dbg_Dados.Columns[3].Width := 90;
     Dbg_Dados.Columns[4].FieldName := 'ENDERECO_ENTREGA';
     Dbg_Dados.Columns[4].Title.Caption := 'Encereço(entrega)';
     Dbg_Dados.Columns[4].Width := 440;
     Dbg_Dados.Columns[5].FieldName := 'NUMEND_ENTREGA';
     Dbg_Dados.Columns[5].Title.Caption := 'Número(entrega)';
     Dbg_Dados.Columns[5].Width := 130;
     Dbg_Dados.Columns[6].FieldName := 'CIDADE_ENTREGA';
     Dbg_Dados.Columns[6].Title.Caption := 'Cidade(entrega)';
     Dbg_Dados.Columns[6].Width := 400;
     Dbg_Dados.Columns[7].FieldName := 'CONTATO_ENTREGA';
     Dbg_Dados.Columns[7].Title.Caption := 'Contato(entrega)';
     Dbg_Dados.Columns[7].Width := 330;
     Dbg_Dados.Columns[8].FieldName := 'FONE_CONTATO_ENTREGA';
     Dbg_Dados.Columns[8].Title.Caption := 'Fone Contato(entrega)';
     Dbg_Dados.Columns[8].Width := 230;
     Dbg_Dados.Columns[9].FieldName := 'OBSERVACAO';
     Dbg_Dados.Columns[9].Title.Caption := 'Observação';
     Dbg_Dados.Columns[9].Width := 490;
  end else
  if (NomeConsulta = 'ENCERRADA') then
  begin
     Dbg_Dados.Columns[0].FieldName := 'CODIGO';
     Dbg_Dados.Columns[0].Title.Caption := 'Codigo:';
     Dbg_Dados.Columns[0].Width := 75;
     Dbg_Dados.Columns[1].FieldName := 'CLIENTE';
     Dbg_Dados.Columns[1].Title.Caption := 'Cliente:';
     Dbg_Dados.Columns[1].Width := 330;
     Dbg_Dados.Columns[2].FieldName := 'CIDADE_ENTREGA';
     Dbg_Dados.Columns[2].Title.Caption := 'Cidade(entrega)';
     Dbg_Dados.Columns[2].Width := 400;
     Dbg_Dados.Columns[3].FieldName := 'CONTATO_ENTREGA';
     Dbg_Dados.Columns[3].Title.Caption := 'Contato(entrega)';
     Dbg_Dados.Columns[3].Width := 330;
     if Rb_NaoPaga.Checked = True then
     begin
     Dbg_Dados.Columns[4].FieldName := 'DATA_LOCACAO';
     Dbg_Dados.Columns[4].Title.Caption := 'Dt Locaçao';
     Dbg_Dados.Columns[4].Width := 110;
     end;
     if Rb_NaoPaga.Checked = True then
     begin
        Dbg_Dados.Columns[4].FieldName := 'DATA_ULTIMO_PGTO';
        Dbg_Dados.Columns[4].Title.Caption := 'Dt Ultimo Pgto';
        Dbg_Dados.Columns[4].Width := 180;
     end;
     if Rb_TotalmentePaga.Checked = True then
     begin
        Dbg_Dados.Columns[4].FieldName := 'DATA_ULTIMO_PGTO';
        Dbg_Dados.Columns[4].Title.Caption := 'Dt Quitação';
        Dbg_Dados.Columns[4].Width := 120;
     end;
     Dbg_Dados.Columns[5].FieldName := 'OBSERVACAO';
     Dbg_Dados.Columns[5].Title.Caption := 'Observação';
     Dbg_Dados.Columns[5].Width := 490;
     Dbg_Dados.Columns[6].FieldName := '';
     Dbg_Dados.Columns[6].Title.Caption := '';
     Dbg_Dados.Columns[6].Width := 0;
     Dbg_Dados.Columns[7].FieldName := '';
     Dbg_Dados.Columns[7].Title.Caption := '';
     Dbg_Dados.Columns[7].Width := 0;
     Dbg_Dados.Columns[8].FieldName := '';
     Dbg_Dados.Columns[8].Title.Caption := '';
     Dbg_Dados.Columns[8].Width := 0;
     Dbg_Dados.Columns[9].FieldName := '';
     Dbg_Dados.Columns[9].Title.Caption := '';
     Dbg_Dados.Columns[9].Width := 0;
  end;
  Dbg_Dados.DataSource := Controller_Locacoes1.DAO.DataSource;
  Dbg_Dados.DataSource.Enabled := True;
  Edt_Filtro.Text := '';
  Dbg_Dados.Repaint;
//   DBText_Produto.DataSource := Controller_Locacoes1.DAO.DataSet;
//   DBText_Produto.DataField := 'PRODUTO';
//   DBText_Produto.DataSource.Enabled := True;
end;


procedure TView_LocacoesConsulta.OrdenarEFiltrar;
begin
  if (NomeConsulta = 'EMABERTONOVA') then
  begin
      case Cb_Ordenar.ItemIndex of
         0:
            begin
               if Rb_NaoPaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''NOVA'' AND SITUACAO_PAGAR =''NP'' ', Cb_Periodo.Text, 'DATA_LOCACAO, CLIENTE');
               if Rb_ParcialmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''NOVA'' AND SITUACAO_PAGAR =''PP'' ', Cb_Periodo.Text, 'DATA_LOCACAO, CLIENTE');
            end;
         1:
            begin
               if Rb_NaoPaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''NOVA'' AND SITUACAO_PAGAR =''NP'' ', Cb_Periodo.Text, 'CLIENTE, DATA_LOCACAO');
               if Rb_ParcialmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''NOVA'' AND SITUACAO_PAGAR =''PP'' ', Cb_Periodo.Text, 'CLIENTE, DATA_LOCACAO');
            end;
      end;
  End else
  if (NomeConsulta = 'EMABERTORENOVADA') then
  begin
      case Cb_Ordenar.ItemIndex of
         0:
            begin
               if Rb_NaoPaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''RENOVADA'' AND SITUACAO_PAGAR =''NP'' ', Cb_Periodo.Text, 'DATA_LOCACAO, CLIENTE');
               if Rb_ParcialmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''RENOVADA'' AND SITUACAO_PAGAR =''PP'' ', Cb_Periodo.Text, 'DATA_LOCACAO, CLIENTE');
            end;
         1:
            Begin
               if Rb_NaoPaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''RENOVADA'' AND SITUACAO_PAGAR =''NP'' ', Cb_Periodo.Text, 'CLIENTE, DATA_LOCACAO');
               if Rb_ParcialmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''SIM'' AND FLAG_NOVA_RENOVADA =''RENOVADA'' AND SITUACAO_PAGAR =''PP'' ', Cb_Periodo.Text, 'CLIENTE, DATA_LOCACAO');
            End;
      end;
  end else
  if (NomeConsulta = 'ENCERRADA') then
  begin
      case Cb_Ordenar.ItemIndex of
         0:
            begin
               if Rb_NaoPaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''NAO'' AND SITUACAO_PAGAR =''NP'' ', Cb_Periodo.Text, 'DATA_LOCACAO, CLIENTE');
               if Rb_ParcialmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''NAO'' AND SITUACAO_PAGAR =''PP'' ', Cb_Periodo.Text, 'DATA_LOCACAO, CLIENTE');
               if Rb_TotalmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''NAO'' AND SITUACAO_PAGAR =''TP'' ', Cb_Periodo.Text, 'DATA_LOCACAO, CLIENTE');
            end;
         1:
            begin
               if Rb_NaoPaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''NAO'' AND SITUACAO_PAGAR =''NP'' ', Cb_Periodo.Text, 'CLIENTE, DATA_LOCACAO');
               if Rb_ParcialmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''NAO'' AND SITUACAO_PAGAR =''PP'' ', Cb_Periodo.Text, 'CLIENTE, DATA_LOCACAO');
               if Rb_TotalmentePaga.Checked = True then
                  Controller_Locacoes1.DAO.Get('', Edt_Filtro.Text, ' FLAG_LOC_EM_ABERTO=''NAO'' AND SITUACAO_PAGAR =''TP'' ', Cb_Periodo.Text, 'CLIENTE, DATA_LOCACAO');
            end;
      end;
  end;
end;



procedure TView_LocacoesConsulta.Rb_AbertoNovaClick(Sender: TObject);
begin
   NomeConsulta := 'EMABERTONOVA';
 //  DBText_Produto.Visible := True;
   AjustaGrid;
   TopAjustarLargura;
   Cb_Ordenar.ItemIndex := 0;
   Rb_NaoPaga.Checked := True;
   OrdenarEFiltrar;
   Pa_BotaoLancar.Visible := True;
   Pa_BotaoEditar.Visible := True;
   Pa_BotaoRenovar.Visible := True;
   Pa_BotaoReceber.Visible := True;
   Pa_BotaoEncerrarParcial.Visible := True;
   Pa_BotaoQuitar.Visible := True;
   Pa_BotaoCancelar.Visible := True;
   Rb_TotalmentePaga.Visible := False;
AjustaPermissoes;
   Edt_Filtro.Visible := True;
   Edt_Filtro.SetFocus;
end;


procedure TView_LocacoesConsulta.Rb_AbertoRenovadaClick(Sender: TObject);
begin
   NomeConsulta := 'EMABERTORENOVADA';
 //  DBText_Produto.Visible := False;
   AjustaGrid;
   TopAjustarLargura;
   Cb_Ordenar.ItemIndex := 0;
   Rb_NaoPaga.Checked := True;
   OrdenarEFiltrar;
   Pa_BotaoLancar.Visible := False;
   Pa_BotaoEditar.Visible := False;
   Pa_BotaoRenovar.Visible := True;
   Pa_BotaoReceber.Visible := True;
   Pa_BotaoEncerrarParcial.Visible := True;
   Pa_BotaoQuitar.Visible := True;
   Pa_BotaoCancelar.Visible := False;
   Rb_TotalmentePaga.Visible := False;
AjustaPermissoes;
   Edt_Filtro.Visible := True;
   Edt_Filtro.SetFocus;
end;


procedure TView_LocacoesConsulta.Rb_EncerradaClick(Sender: TObject);
begin
   NomeConsulta := 'ENCERRADA';
 //  DBText_Produto.Visible := False;
   AjustaGrid;
   TopAjustarLargura;
   Cb_Ordenar.ItemIndex := 0;
   Rb_NaoPaga.Checked := True;
   OrdenarEFiltrar;
   Pa_BotaoLancar.Visible := False;
   Pa_BotaoEditar.Visible := False;
   Pa_BotaoRenovar.Visible := False;
   Pa_BotaoReceber.Visible := False;
   Pa_BotaoEncerrarParcial.Visible := True;
   Pa_BotaoQuitar.Visible := True;
   Pa_BotaoCancelar.Visible := False;
   Rb_TotalmentePaga.Visible := True;
AjustaPermissoes;
   Edt_Filtro.Visible := True;
   Edt_Filtro.SetFocus;
end;


procedure TView_LocacoesConsulta.SpBtn_EditarClick(Sender: TObject);
begin
   //
end;


procedure TView_LocacoesConsulta.spBtn_RenovarClick(Sender: TObject);
begin
   //
end;

procedure TView_LocacoesConsulta.spBtn_ReceberClick(Sender: TObject);
begin
   //
end;

procedure TView_LocacoesConsulta.Cb_OrdenarChange(Sender: TObject);
begin
 OrdenarEFiltrar;
end;


procedure TView_LocacoesConsulta.Edt_FiltroChange(Sender: TObject);
begin
   IF Trim(Edt_Filtro.Text) = '' then
   begin
      Cb_Ordenar.ItemIndex := 1;
      OrdenarEFiltrar;
      Exit;
   end;
   if Length(Edt_Filtro.Text) in [3,4,5,6,8,13,14,20,25,30,35,40,45,50,55,60,65,70,75,80] then
      OrdenarEFiltrar;
end;


procedure TView_LocacoesConsulta.Edt_FiltroEnter(Sender: TObject);
begin
   Edt_Filtro.Color := EDITDATA;
end;


procedure TView_LocacoesConsulta.Edt_FiltroExit(Sender: TObject);
begin
   Edt_Filtro.ParentColor := True;
   Edt_Filtro.Repaint;
end;


procedure TView_LocacoesConsulta.Cb_OrdenarEnter(Sender: TObject);
begin
   Cb_Ordenar.Color := EDITDATA;
end;


procedure TView_LocacoesConsulta.Cb_OrdenarExit(Sender: TObject);
begin
   Cb_Ordenar.ParentColor := True;
end;


procedure TView_LocacoesConsulta.Dbg_DadosCellClick(Column: TColumn);
begin
//   Controller_Locacoes1.LoadGet;
//   Lbl_Produto.Caption := 'Produto: '+Controller_Locacoes1.ORM.PRODUTO;
end;

procedure TView_LocacoesConsulta.Dbg_DadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//   Controller_Locacoes1.LoadGet;
//   Lbl_Produto.Caption := 'Produto: '+Controller_Locacoes1.ORM.PRODUTO;
end;

procedure TView_LocacoesConsulta.SpBt_LancarClick(Sender: TObject);
begin
   //
end;


procedure TView_LocacoesConsulta.SpBt_EncerrarClick(Sender: TObject);
begin
   //
end;


procedure TView_LocacoesConsulta.SpBt_EncerrarParcialClick(Sender: TObject);
begin
   //
end;

procedure TView_LocacoesConsulta.SpBt_CancelarClick(Sender: TObject);
begin
   //
end;


procedure TView_LocacoesConsulta.spBtn_BotaoQuitarClick(Sender: TObject);
begin
   //
end;


procedure TView_LocacoesConsulta.Visualizar1Click(Sender: TObject);
begin
//
end;


procedure TView_LocacoesConsulta.Relatrio1Click(Sender: TObject);
begin
//
end;


procedure TView_LocacoesConsulta.Contrato1Click(Sender: TObject);
begin
//
end;

end.
