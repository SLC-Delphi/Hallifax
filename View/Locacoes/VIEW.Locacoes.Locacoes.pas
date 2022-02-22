unit VIEW.Locacoes.Locacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Mask, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  TVIEW_LocacoesMovimentacao = class(TForm)
    Pa_Principal: TPanel;
    Pa_Gravar: TPanel;
    Pa_Top: TPanel;
    La_Titulo: TLabel;
    Pa_BotaoGravar: TPanel;
    La_BotaoGravar: TLabel;
    SpBt_Gravar: TSpeedButton;
    Pa_BotaoCancelar: TPanel;
    La_BotaoCancelar: TLabel;
    SpBt_Cancelar: TSpeedButton;
    Image1: TImage;
    Image3: TImage;
    Pa_Dados: TPanel;
    Pa_Top1: TPanel;
    Pa_Cliente: TPanel;
    Grp_Cliente2_Endereco: TGridPanel;
    Label7: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Edt_NUMEND_ENTREGA: TEdit;
    Label1: TLabel;
    Grp_Cliente1: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EDT_CLIENTE: TEdit;
    Label8: TLabel;
    Medt_DATA_LOCACAO: TMaskEdit;
    Edt_Endereco_Entrega: TEdit;
    Grp_Cliente3_CIdade: TGridPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edt_CIDADE_ENTREGA: TEdit;
    Label15: TLabel;
    Edt_BAIRRO_ENTREGA: TEdit;
    Grp_Cliente4_Contato: TGridPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edt_FONE_CONTATO_ENTREGA: TEdit;
    Label20: TLabel;
    Edt_CONTATO_ENTREGA: TEdit;
    Pa_Itens: TPanel;
    Pa_Somatoria: TPanel;
    PageControl1: TPageControl;
    Tbs_ItensNovosENaoRecebidos: TTabSheet;
    Tbs_Frete: TTabSheet;
    Tbs_ItensRecebidos: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Grp_ItensProdutos: TGridPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Ed_ESTOQUE_TOTAL: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Ed_QUANTIDADE_ALOCADA: TEdit;
    Label27: TLabel;
    Ed_QUANTDADE_MANUTENCAO: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Ed_ESTOQUE_DISPONIVEL: TEdit;
    Dbg_Itens: TDBGrid;
    Ppm_ItensNaoPagos: TPopupMenu;
    Visualizar1: TMenuItem;
    Relatrio1: TMenuItem;
    Contrato1: TMenuItem;
    Dbg_ItensPagos: TDBGrid;
    DBGrid1: TDBGrid;
    Grp_Frete: TGridPanel;
    Label33: TLabel;
    Edit1: TEdit;
    Label39: TLabel;
    Edit4: TEdit;
    Ppm_Frete: TPopupMenu;
    MenuItem3: TMenuItem;
    Pa_SomatoriaDados: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Edt_TOTAL_LOCACAO: TEdit;
    Edt_TOTAL_RECEBIDO: TEdit;
    Edt_TOTAL_A_RECEBER: TEdit;
    Medt_DATA_ULTIMO_PGTO: TMaskEdit;
    procedure SpBt_CancelarClick(Sender: TObject); virtual;
    procedure SpBt_GravarClick(Sender: TObject);  virtual;
    procedure AjustaCor; virtual;
  private
    FTipoOperacaoDados: String;
    FTipoPermissao: String;
    FNomeDaCor: String;
    FUsuario: String;
    procedure SetTipoOperacaoDados(const Value: String);
    procedure SetNomeDaCor(const Value: String);
    procedure SetTipoPermissao(const Value: String);
    procedure SetUsuario(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    Property TipoOperacaoDados : String read FTipoOperacaoDados write SetTipoOperacaoDados;
    Property TipoPermissao : String read FTipoPermissao write SetTipoPermissao;
    Property NomeDaCor : String read FNomeDaCor write SetNomeDaCor;
    Property Usuario :String read FUsuario write SetUsuario;
    Function ZerarCampos : Boolean; virtual;
    Function LerDados : Boolean; virtual;
    Function ValidarDados : Boolean; virtual;
    {
    TipoOperacaoDados = 'NOVO', 'EDITAR', 'EXCLUIR', 'LIXEIRA'
    TipoPermissao = '0' (ACESSO_NEGADO), '1' (CONSULTA), '2' (NOVO_EDITAR), '3' (TOTAL)
    NomeDaCor = 'CLARA', 'SILVER', 'DARK'... ETC)
    }
  end;

var
  VIEW_LocacoesMovimentacao: TVIEW_LocacoesMovimentacao;

implementation

{$R *.dfm}

procedure TVIEW_LocacoesMovimentacao.AjustaCor;
begin
//
end;

procedure TVIEW_LocacoesMovimentacao.SetNomeDaCor(const Value: String);
begin
  FNomeDaCor := Value;
end;

procedure TVIEW_LocacoesMovimentacao.SetTipoOperacaoDados(const Value: String);
begin
  FTipoOperacaoDados := Value;
end;

procedure TVIEW_LocacoesMovimentacao.SetTipoPermissao(const Value: String);
begin
  FTipoPermissao := Value;
end;

procedure TVIEW_LocacoesMovimentacao.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;

procedure TVIEW_LocacoesMovimentacao.SpBt_CancelarClick(Sender: TObject);
begin
   //
end;

procedure TVIEW_LocacoesMovimentacao.SpBt_GravarClick(Sender: TObject);
begin
   //
end;

function TVIEW_LocacoesMovimentacao.ValidarDados: Boolean;
begin
   //
end;

function TVIEW_LocacoesMovimentacao.ZerarCampos: Boolean;
begin
   //
end;

function TVIEW_LocacoesMovimentacao.LerDados: Boolean;
begin
//
end;

end.
