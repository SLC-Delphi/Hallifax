unit VIEW.Produtos.Manutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtDlgs,
  VIEW.PadraoBasico01,
  Hallifax.Controller.Produtos.ProdutosManutencao;

type
   TView_ProdutosManutencao = class(T_F_CadastroPadrao)
      Pa_DadosManutencao: TPanel;
      Pa_Estoque: TPanel;
      Grp_Estoque: TGridPanel;
      Label7: TLabel;
      Label14: TLabel;
      Label10: TLabel;
      Edt_Quantidade: TEdit;
      Label2: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Edt_QUANTDADE_DEVOLVIDA: TEdit;
      Label8: TLabel;
      Label9: TLabel;
      Label11: TLabel;
      Pa_Marca: TPanel;
      Grp_Marca: TGridPanel;
      Label55: TLabel;
      Label3: TLabel;
      Edt_MARCA: TEdit;
      Pa_Nome: TPanel;
      Label1: TLabel;
      Edt_PRODUTO: TEdit;
      Label12: TLabel;
      Label13: TLabel;
      Label15: TLabel;
      Edt_ESTOQUE_DISPONIVEL: TEdit;
      Medt_DATA_INICIAL: TMaskEdit;
      Medt_DATA_ENCERRAMENTO: TMaskEdit;
      procedure SpBt_CancelarClick(Sender: TObject); override;
      procedure SpBt_GravarClick(Sender: TObject); override;
      procedure FormCreate(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure Edt_QuantidadeExit(Sender: TObject);
   private
      Controller_Manutencao: TController_ProdutosManutencaoFD;
      FUSUARIO: String;
      FCODEMPRESA: String;
      FESTOQUE_DISPONIVEL: String;
      FTipoOperacaoDados: String;
      FSaldoQtdManutencao: Currency;
      FProduto: String;
      FMarca: String;
      FQuantidade_Manutencao: String;
      FSaldoEstoque: Currency;
    FCodigoProduto: String;
    FCODIGO: Integer;
      // FMapaDados : TORM_LOC_M1_CAD_USUARIO;
      procedure AjustaCor; override;
      procedure SetUSUARIO(const Value: String);
      procedure SetCODEMPRESA(const Value: String);
      procedure SetESTOQUE_DISPONIVEL(const Value: String);
      procedure SetTipoOperacaoDados(const Value: String);
      procedure SetSaldoQtdManutencao(const Value: Currency);
      procedure SetMarca(const Value: String);
      procedure SetProduto(const Value: String);
      procedure SetQuantidade_Manutencao(const Value: String);
      procedure SetSaldoEstoque(const Value: Currency);
      Function ConfereNoEstoque : boolean;
    procedure SetCodigoProduto(const Value: String);
    procedure SetCODIGO(const Value: Integer);
      { Private declarations }
   public
      { Public declarations }
      Function LerDados: Boolean; override;
      Function ValidarDados: Boolean; override;
      Property CODIGO : Integer read FCODIGO write SetCODIGO;
      property CodigoProduto: String read FCodigoProduto write SetCodigoProduto;
      property CODEMPRESA: String read FCODEMPRESA write SetCODEMPRESA;
      property Produto: String read FProduto write SetProduto;
      Property Marca: String read FMarca write SetMarca;
      property USUARIO: String read FUSUARIO write SetUSUARIO;
      Property TipoOperacaoDados: String read FTipoOperacaoDados write SetTipoOperacaoDados;
      property ESTOQUE_DISPONIVEL: String read FESTOQUE_DISPONIVEL write SetESTOQUE_DISPONIVEL;
      property Quantidade_Manutencao: String read FQuantidade_Manutencao write SetQuantidade_Manutencao;
      Property SaldoQtdManutencao: Currency read FSaldoQtdManutencao write SetSaldoQtdManutencao;
      Property SaldoEstoque: Currency read FSaldoEstoque write SetSaldoEstoque;
   end;

var
   View_ProdutosManutencao :TView_ProdutosManutencao;

implementation

{$R *.dfm}

uses View_Style, VIEW.Produtos.ProdutosConsultas, System.SysUtils, System.StrUtils,
  Parametros.ParametrosGlobais;

{ TForm2 }


procedure TView_ProdutosManutencao.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TView_ProdutosManutencao.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;

procedure TView_ProdutosManutencao.SetCodigoProduto(const Value: String);
begin
  FCodigoProduto := Value;
end;

procedure TView_ProdutosManutencao.SetESTOQUE_DISPONIVEL(const Value: String);
begin
  FESTOQUE_DISPONIVEL := Value;
end;

procedure TView_ProdutosManutencao.SetMarca(const Value: String);
begin
  FMarca := Value;
end;

procedure TView_ProdutosManutencao.SetProduto(const Value: String);
begin
  FProduto := Value;
end;

procedure TView_ProdutosManutencao.SetQuantidade_Manutencao(const Value: String);
begin
  FQuantidade_Manutencao := Value;
end;

procedure TView_ProdutosManutencao.SetSaldoEstoque(const Value: Currency);
begin
  FSaldoEstoque := Value;
end;

procedure TView_ProdutosManutencao.SetSaldoQtdManutencao(const Value: Currency);
begin
  FSaldoQtdManutencao := Value;
end;

procedure TView_ProdutosManutencao.SetTipoOperacaoDados(const Value: String);
begin
  FTipoOperacaoDados := Value;
end;

procedure TView_ProdutosManutencao.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;



procedure TView_ProdutosManutencao.FormCreate(Sender: TObject);
begin
   Controller_Manutencao := TController_ProdutosManutencaoFD.Create;
   Pa_DadosManutencao.Parent := Self.Pa_Dados;
   Pa_DadosManutencao.Align := alClient;
   SaldoQtdManutencao := 0;
   // --> As linhas abaixos são desnecessário no Delphi Rio 10.3.1 e obrigatórias no Delphi Xe8
   Self.Pa_Dados.Height := Self.ClientHeight-107;
   Self.Pa_Dados.Width := Self.ClientWidth-28;
   Self.Pa_Gravar.Top := Self.ClientHeight-56;
   Self.Pa_Gravar.Left := Self.ClientWidth-292;
end;


procedure TView_ProdutosManutencao.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Controller_Manutencao);
end;


procedure TView_ProdutosManutencao.FormShow(Sender: TObject);
begin
   // buscar o produtoestoque
   Edt_Produto.Text := Self.Produto;
   Edt_Marca.Text := Self.Marca;
   Edt_ESTOQUE_DISPONIVEL.Text := Self.ESTOQUE_DISPONIVEL;
   if Self.TipoOperacaoDados ='LANCAR' then
   begin
      Edt_Quantidade.Enabled := True;
      Medt_DATA_INICIAL.Enabled := True;
      Edt_QUANTDADE_DEVOLVIDA.Enabled := False;
      Medt_DATA_ENCERRAMENTO.Enabled := False;
      Edt_Quantidade.Text := '0';
      Medt_DATA_INICIAL.Text := DateToStr(Date);
      Edt_QUANTDADE_DEVOLVIDA.Text := '0';
      Medt_DATA_ENCERRAMENTO.Text := '01/01/2001';
   end
   else
   if Self.TipoOperacaoDados ='ALTERAR' then
   begin
      Edt_Quantidade.Enabled := False;
      Medt_DATA_INICIAL.Enabled := False;
      Edt_QUANTDADE_DEVOLVIDA.Enabled := True;
      Medt_DATA_ENCERRAMENTO.Enabled := False;
         Controller_Manutencao.DAO.GetId(Self.CODIGO.ToString);
         Controller_Manutencao.LoadGet;
         Self.LerDados;
   end
   else
   if Self.TipoOperacaoDados ='ENCERRAR' then
   begin
      Edt_Quantidade.Enabled := False;
      Medt_DATA_INICIAL.Enabled := False;
      Edt_QUANTDADE_DEVOLVIDA.Enabled := False;
      Medt_DATA_ENCERRAMENTO.Enabled := False;
         Controller_Manutencao.DAO.GetId(Self.CODIGO.ToString);
         Controller_Manutencao.LoadGet;
         Self.LerDados;
      Edt_QUANTDADE_DEVOLVIDA.Text := Edt_Quantidade.Text;
      Medt_DATA_ENCERRAMENTO.Text := DateToStr(Date)
   end
   else
   if Self.TipoOperacaoDados ='CANCELAR' then
   begin
      Edt_Quantidade.Enabled := False;
      Medt_DATA_INICIAL.Enabled := False;
      Edt_QUANTDADE_DEVOLVIDA.Enabled := False;
      Medt_DATA_ENCERRAMENTO.Enabled := False;
         Controller_Manutencao.DAO.GetId(Self.CODIGO.ToString);
         Controller_Manutencao.LoadGet;
         Self.LerDados;
      Edt_QUANTDADE_DEVOLVIDA.Text := Edt_Quantidade.Text;
   end;

end;


procedure TView_ProdutosManutencao.Edt_QuantidadeExit(Sender: TObject);
begin
   inherited;
   ConfereNoEstoque;
end;


Function TView_ProdutosManutencao.ConfereNoEstoque : Boolean;
begin
  if (StrToCurr(Edt_Quantidade.Text) > StrToCurr(Edt_ESTOQUE_DISPONIVEL.Text)) and (Self.TipoOperacaoDados='LANCAR') then
  begin
    MessageDlg('Quantidade para ir em manutenção é maior que o Estoque Disponível' + CHR(13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
    Edt_Quantidade.SetFocus;
    Pa_BotaoGravar.Enabled := False;
    Result := False;
    Exit;
  end;
  if StrToCurr(Edt_Quantidade.Text) = 0 then
  begin
    MessageDlg('Quantidade não pode ser 0', mtError, [mbOk], 0);
    Edt_Quantidade.SetFocus;
    Pa_BotaoGravar.Enabled := False;
    Result := False;
    Exit;
  end;
  Result := True;
  Pa_BotaoGravar.Enabled := True;
end;


procedure TView_ProdutosManutencao.FormActivate(Sender: TObject);
begin
   Self.Caption := ' Cadastros > Produtos e Estoque > Manutenção ['+Self.TipoOperacaoDados+'] ';
   La_Titulo.Caption := 'Manutenção';
   if Self.NomeDaCor ='' then
      NomeDaCor :='DARK';
   AjustaCor;
end;


procedure TView_ProdutosManutencao.AjustaCor;
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   Pa_DadosManutencao.Font.Size := Self.Pa_Dados.Font.Size;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
   Pa_Top.Color := BACKGROUNDTOP;
   Pa_Top1.Color := BACKGROUNDTOP;
   La_Titulo.Font.Color := FONTCOLOR;
   Pa_DadosManutencao.Color := EDITDATA;
   Pa_Gravar.Color := EDITDATA;
end;



function TView_ProdutosManutencao.LerDados: Boolean;
begin
   // Leitura de dados
  // Self.CodigoProduto           := Controller_Manutencao.ORM.CODIGO_PRODUTO;
   Self.CODEMPRESA              := Controller_Manutencao.ORM.CODEMPRESA;
   Edt_PRODUTO.Text             := Controller_Manutencao.ORM.PRODUTO ;
   Edt_MARCA.Text               := Controller_Manutencao.ORM.MARCA ;
   Edt_Quantidade.Text          := Controller_Manutencao.ORM.QUANTIDADE;
   Medt_DATA_INICIAL.Text       := Controller_Manutencao.ORM.DATA_INICIAL;
   Edt_QUANTDADE_DEVOLVIDA.Text := Controller_Manutencao.ORM.QUANTIDADE_DEVOLVIDA;
   Medt_DATA_ENCERRAMENTO.Text  := Controller_Manutencao.ORM.DATA_ENCERRAMENTO;
   Controller_Manutencao.ORM.HORA_UMOD := TimeToStr(Time());
   Controller_Manutencao.ORM.DT_UMOD := StringReplace(DateToStr(Date()),'/','.',[]);
   Controller_Manutencao.ORM.USUARIO := Self.Usuario;
end;


function TView_ProdutosManutencao.ValidarDados: Boolean;
begin
   if not ConfereNoEstoque then
   begin
      Result := False;
      Exit;
   end;
   IF (StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text) < 0) or ((StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text))  > (StrToCurr(Edt_Quantidade.Text))) Then
   begin
      MessageDlg(
         'Valor da Quantidade Devolvida é inválido..' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      Edt_QUANTDADE_DEVOLVIDA.SetFocus;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   Result := True;
end;


procedure TView_ProdutosManutencao.SpBt_CancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


procedure TView_ProdutosManutencao.SpBt_GravarClick(Sender: TObject);
begin
   inherited;
   if ValidarDados then
   begin
      // CARREGANDO ORM
      Controller_Manutencao.ORM.CODIGO_PRODUTO       := Self.CodigoProduto                    ;
      Controller_Manutencao.ORM.CODEMPRESA           := Self.CODEMPRESA                ;
      Controller_Manutencao.ORM.PRODUTO              := Edt_PRODUTO.Text               ;
      Controller_Manutencao.ORM.MARCA                := Edt_MARCA.Text                 ;
      Controller_Manutencao.ORM.QUANTIDADE           := Edt_Quantidade.Text            ;
      Controller_Manutencao.ORM.DATA_INICIAL         := Medt_DATA_INICIAL.Text         ;
      Controller_Manutencao.ORM.QUANTIDADE_DEVOLVIDA := Edt_QUANTDADE_DEVOLVIDA.Text   ;
      Controller_Manutencao.ORM.DATA_ENCERRAMENTO    := Medt_DATA_ENCERRAMENTO.Text    ;
      Controller_Manutencao.ORM.HORA_UMOD := TimeToStr(Time());
      Controller_Manutencao.ORM.DT_UMOD := StringReplace(DateToStr(Date()),'/','.',[]);
      Controller_Manutencao.ORM.USUARIO := Self.Usuario;
      if (Self.TipoOperacaoDados ='LANCAR') then
      begin
         Controller_Manutencao.ORM.FLAG_MANUTENCAO := 'ABERTA';
         SaldoQtdManutencao := Self.Quantidade_Manutencao.ToDouble-StrToCurr(Edt_Quantidade.Text);
         SaldoEstoque:= StrToCurr(Edt_ESTOQUE_DISPONIVEL.Text)-StrToCurr(Edt_Quantidade.Text);
         Controller_Manutencao.DAO.Post(Controller_Manutencao.ORM, SaldoQtdManutencao, SaldoEstoque);
      end
      Else
      if (Self.TipoOperacaoDados ='ALTERAR')then
      begin
         Controller_Manutencao.ORM.FLAG_MANUTENCAO := 'ABERTA';
         SaldoQtdManutencao := Self.Quantidade_Manutencao.ToDouble+StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text);
         SaldoEstoque:= StrToCurr(Edt_ESTOQUE_DISPONIVEL.Text)+StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text);
         Controller_Manutencao.DAO.Put(Controller_Manutencao.ORM, SaldoQtdManutencao, SaldoEstoque);
      end
      Else
      if (Self.TipoOperacaoDados ='ENCERRAR') Then
      begin
         Controller_Manutencao.ORM.FLAG_MANUTENCAO := 'ENCERRADA';
         SaldoQtdManutencao := Self.Quantidade_Manutencao.ToDouble+StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text);
         SaldoEstoque:= StrToCurr(Edt_ESTOQUE_DISPONIVEL.Text)+StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text);
         Controller_Manutencao.DAO.Put(Controller_Manutencao.ORM, SaldoQtdManutencao, SaldoEstoque);
      end
      Else
      if (Self.TipoOperacaoDados ='CANCELAR') Then
      begin
         Controller_Manutencao.ORM.FLAG_MANUTENCAO := 'CANCELADA';
         SaldoQtdManutencao := Self.Quantidade_Manutencao.ToDouble+StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text);
         SaldoEstoque:= StrToCurr(Edt_ESTOQUE_DISPONIVEL.Text)+StrToCurr(Edt_QUANTDADE_DEVOLVIDA.Text);
         Controller_Manutencao.DAO.Put(Controller_Manutencao.ORM, SaldoQtdManutencao, SaldoEstoque);
      end;

      Self.Close;
   end;
end;

end.
