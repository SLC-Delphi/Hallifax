unit VIEW.PadraoBasico01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  T_F_CadastroPadrao = class(TForm)
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
  _F_CadastroPadrao: T_F_CadastroPadrao;

implementation

{$R *.dfm}

procedure T_F_CadastroPadrao.AjustaCor;
begin
//
end;

procedure T_F_CadastroPadrao.SetNomeDaCor(const Value: String);
begin
  FNomeDaCor := Value;
end;

procedure T_F_CadastroPadrao.SetTipoOperacaoDados(const Value: String);
begin
  FTipoOperacaoDados := Value;
end;

procedure T_F_CadastroPadrao.SetTipoPermissao(const Value: String);
begin
  FTipoPermissao := Value;
end;

procedure T_F_CadastroPadrao.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;

procedure T_F_CadastroPadrao.SpBt_CancelarClick(Sender: TObject);
begin
   //
end;

procedure T_F_CadastroPadrao.SpBt_GravarClick(Sender: TObject);
begin
   //
end;

function T_F_CadastroPadrao.ValidarDados: Boolean;
begin
   //
end;

function T_F_CadastroPadrao.ZerarCampos: Boolean;
begin
   //
end;

function T_F_CadastroPadrao.LerDados: Boolean;
begin
//
end;

end.
