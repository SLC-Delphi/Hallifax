unit VIEW.Produtos.Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtDlgs,
  VIEW.PadraoBasico01,
  Hallifax.Controller.Produtos.ProdutosEstoque;

type
   TView_ProdutosEstoque = class(T_F_CadastroPadrao)
    Pa_DadosEstoque: TPanel;
    Pa_Estoque: TPanel;
    Grp_Estoque: TGridPanel;
    Label7: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Ed_ESTOQUE_TOTAL: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Ed_QUANTIDADE_ALOCADA: TEdit;
    Label6: TLabel;
    Ed_QUANTDADE_MANUTENCAO: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Ed_ESTOQUE_DISPONIVEL: TEdit;
    Pa_Marca: TPanel;
    Grp_Marca: TGridPanel;
    Label55: TLabel;
    Label3: TLabel;
    Ed_MARCA: TEdit;
    Pa_Nome: TPanel;
    Label1: TLabel;
    Edt_PRODUTO: TEdit;
      procedure SpBt_CancelarClick(Sender: TObject); override;
      procedure SpBt_GravarClick(Sender: TObject); override;
      procedure FormCreate(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
    procedure Ed_ESTOQUE_TOTALExit(Sender: TObject);
   private
      Controller_Estoque: TController_ProdutosEstoqueFD;
      FUSUARIO: String;
      FCODIGO: String;
      FCODEMPRESA: String;
      // FMapaDados : TORM_LOC_M1_CAD_USUARIO;
      procedure AjustaCor; override;
      procedure SetCODIGO(const Value: String);
      procedure SetUSUARIO(const Value: String);
      procedure SetCODEMPRESA(const Value: String);
    function ConferindoQuantidades: Boolean;
      { Private declarations }
   public
      { Public declarations }
      Function LerDados: Boolean; override;
      Function ValidarDados: Boolean; override;
      property CODIGO: String read FCODIGO write SetCODIGO;
      property CODEMPRESA: String read FCODEMPRESA write SetCODEMPRESA;
      property USUARIO: String read FUSUARIO write SetUSUARIO;
   end;

var
   View_ProdutosEstoque :TView_ProdutosEstoque;

implementation

{$R *.dfm}

uses View_Style, VIEW.Produtos.ProdutosConsultas, System.SysUtils, System.StrUtils,
  Parametros.ParametrosGlobais;

{ TForm2 }


procedure TView_ProdutosEstoque.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TView_ProdutosEstoque.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;

procedure TView_ProdutosEstoque.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;



procedure TView_ProdutosEstoque.FormCreate(Sender: TObject);
begin
   Controller_Estoque := TController_ProdutosEstoqueFD.Create;
   Pa_DadosEstoque.Parent := Self.Pa_Dados;
   Pa_DadosEstoque.Align := alClient;
   // --> As linhas abaixos são desnecessário no Delphi Rio 10.3.1 e obrigatórias no Delphi Xe8
   Self.Pa_Dados.Height := Self.ClientHeight-107;
   Self.Pa_Dados.Width := Self.ClientWidth-28;
   Self.Pa_Gravar.Top := Self.ClientHeight-56;
   Self.Pa_Gravar.Left := Self.ClientWidth-292;
end;


procedure TView_ProdutosEstoque.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Controller_Estoque);
end;


procedure TView_ProdutosEstoque.FormShow(Sender: TObject);
begin
   // buscar o produtoestoque
   Controller_Estoque.DAO.GetId(Self.CODIGO,'');
   Controller_Estoque.LoadGet;
   Self.LerDados;
end;


procedure TView_ProdutosEstoque.Ed_ESTOQUE_TOTALExit(Sender: TObject);
begin
   inherited;
   ConferindoQuantidades
end;


Function TView_ProdutosEstoque.ConferindoQuantidades : Boolean;
var
   vcurDisponivel: Currency;
begin
   vcurDisponivel := StrToCurr(Ed_ESTOQUE_TOTAL.Text) +
     StrToCurr(Ed_QUANTIDADE_ALOCADA.Text) +
     StrToCurr(Ed_QUANTDADE_MANUTENCAO.Text);
   if vcurDisponivel < 0 then
   begin
      MessageDlg(
         'Valor incorreto...o botão Gravar está indisponível' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Ed_ESTOQUE_TOTAL.SetFocus;
      Pa_BotaoGravar.Enabled := False;
      Result := False;
      EXIT;
   end;
   Pa_BotaoGravar.Enabled := True;
   Ed_ESTOQUE_DISPONIVEL.Text := CurrToStr(vcurDisponivel);
   Result := True;
end;


procedure TView_ProdutosEstoque.FormActivate(Sender: TObject);
begin
   Self.Caption := 'Cadastros > Produtos e Estoque > Estoques [ EDITAR/ajustar ]';
   La_Titulo.Caption := 'ESTOQUE';
   if Self.NomeDaCor ='' then
      NomeDaCor :='DARK';
   AjustaCor;
end;


procedure TView_ProdutosEstoque.AjustaCor;
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   Pa_DadosEstoque.Font.Size := Self.Pa_Dados.Font.Size;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
   Pa_Top.Color := BACKGROUNDTOP;
   Pa_Top1.Color := BACKGROUNDTOP;
   La_Titulo.Font.Color := FONTCOLOR;
   Pa_DadosEstoque.Color := EDITDATA;
   Pa_Gravar.Color := EDITDATA;
end;



function TView_ProdutosEstoque.LerDados: Boolean;
begin
   // Leitura de dados
   ;;Self.Codigo                  := Controller_Estoque.ORM.CODIGO_PRODUTO;
   Self.CODEMPRESA              := Controller_Estoque.ORM.CODEMPRESA;
   Edt_PRODUTO.Text             := Controller_Estoque.ORM.PRODUTO ;
   Ed_MARCA.Text                := Controller_Estoque.ORM.MARCA ;
   Ed_ESTOQUE_TOTAL.Text        := Controller_Estoque.ORM.ESTOQUE_TOTAL;
   Ed_QUANTIDADE_ALOCADA.Text   := Controller_Estoque.ORM.QUANTIDADE_ALOCADA;
   Ed_QUANTDADE_MANUTENCAO.Text := Controller_Estoque.ORM.QUANTDADE_MANUTENCAO;
   Ed_ESTOQUE_DISPONIVEL.Text   := Controller_Estoque.ORM.ESTOQUE_DISPONIVEL;
   Controller_Estoque.ORM.HORA_UMOD := TimeToStr(Time());
   Controller_Estoque.ORM.DT_UMOD := StringReplace(DateToStr(Date()),'/','.',[]);
   Controller_Estoque.ORM.USUARIO := Self.Usuario;
end;


function TView_ProdutosEstoque.ValidarDados: Boolean;
begin
   if not ConferindoQuantidades then
   begin
      Result := False;
      Exit;
   end;
   IF StrToCurr(Ed_ESTOQUE_TOTAL.Text) < 0  Then
   begin
      MessageDlg(
         'Valor de Estoque inválido.' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      Ed_ESTOQUE_TOTAL.SetFocus;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   Result := True;
end;



procedure TView_ProdutosEstoque.SpBt_CancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


procedure TView_ProdutosEstoque.SpBt_GravarClick(Sender: TObject);
begin
   inherited;
   if ValidarDados then
   begin
      // CARREGANDO ORM
      Controller_Estoque.ORM.CODIGO_PRODUTO       := Self.Codigo                      ;
      Controller_Estoque.ORM.CODEMPRESA           := Self.CODEMPRESA                  ;
      Controller_Estoque.ORM.PRODUTO              := Edt_PRODUTO.Text                 ;
      Controller_Estoque.ORM.MARCA                := Ed_MARCA.Text                    ;
      Controller_Estoque.ORM.ESTOQUE_TOTAL        := Ed_ESTOQUE_TOTAL.Text            ;
      Controller_Estoque.ORM.QUANTIDADE_ALOCADA   := Ed_QUANTIDADE_ALOCADA.Text       ;
      Controller_Estoque.ORM.QUANTDADE_MANUTENCAO := Ed_QUANTDADE_MANUTENCAO.Text     ;
      Controller_Estoque.ORM.ESTOQUE_DISPONIVEL   := Ed_ESTOQUE_DISPONIVEL.Text       ;
      Controller_Estoque.ORM.HORA_UMOD := TimeToStr(Time());
      Controller_Estoque.ORM.DT_UMOD := StringReplace(DateToStr(Date()),'/','.',[]);
      Controller_Estoque.ORM.USUARIO := Self.Usuario;
      Controller_Estoque.DAO.Put(Controller_Estoque.ORM);
      Self.Close;
   end;
end;


end.
