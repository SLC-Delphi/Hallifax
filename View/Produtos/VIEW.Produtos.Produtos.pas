unit VIEW.Produtos.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  VIEW.PadraoBasico01, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtDlgs;

type
   TView_ProdutosDados = class(T_F_CadastroPadrao)
      Pa_DadosUsuario: TPanel;
    Pa_Descricao: TPanel;
    Label4: TLabel;
    Mem_Descricao: TMemo;
    Pa_DadosEFotos: TPanel;
    Pa_Foto: TPanel;
    Pa_DadosBasicos: TPanel;
    Pa_GrupoMarca: TPanel;
    Grp_GrupoMarca: TGridPanel;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Cb_Grupo: TComboBox;
    Cb_Fornecedor: TComboBox;
    Pa_Unidade: TPanel;
    Grp_Marca: TGridPanel;
    Label2: TLabel;
    Label55: TLabel;
    Label3: TLabel;
    Label56: TLabel;
    Label5: TLabel;
    Cb_UNIDADE: TComboBox;
    Label11: TLabel;
    Cb_MARCA: TComboBox;
    Label9: TLabel;
    Edt_CODIGO_DE_BARRAS: TEdit;
    Pa_Nome: TPanel;
    Label1: TLabel;
    Edt_PRODUTO: TEdit;
    BBT_FOTOLOGO: TBitBtn;
    BBT_LimparImagem: TButton;
    Img_PRODUTO: TImage;
    Label6: TLabel;
    Edt_DATA_ULTIMA_LOCACAO: TEdit;
    Opd_FotoProduto: TOpenPictureDialog;
      procedure SpBt_CancelarClick(Sender: TObject); override;
      procedure SpBt_GravarClick(Sender: TObject); override;
      procedure FormCreate(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure BBT_FOTOLOGOClick(Sender: TObject);
    procedure BBT_LimparImagemClick(Sender: TObject);
   private
      FUSUARIO: String;
      FCODIGO: String;
      FFlag_Permissao: String;
    FFOTO: String;
    FCODEMPRESA: String;
      // FMapaDados : TORM_LOC_M1_CAD_USUARIO;
      procedure AjustaCor; override;
      procedure SetCODIGO(const Value: String);
      procedure SetUSUARIO(const Value: String);
      procedure SetFlag_Permissao(const Value: String);
      procedure AjustaPermissoes;
    procedure SetFOTO(const Value: String);
    procedure SetCODEMPRESA(const Value: String);
    procedure CarregarCombos;
      { Private declarations }
   public
      { Public declarations }
      Function ZerarCampos: Boolean; override;
      Function LerDados: Boolean; override;
      Function ValidarDados: Boolean; override;
      property CODIGO: String read FCODIGO write SetCODIGO;
      property CODEMPRESA: String read FCODEMPRESA write SetCODEMPRESA;
      property USUARIO: String read FUSUARIO write SetUSUARIO;
      property FOTO : String read FFOTO write SetFOTO;
      property Flag_Permissao: String read FFlag_Permissao  write SetFlag_Permissao;
   end;

var
   View_ProdutosDados :TView_ProdutosDados;

implementation

{$R *.dfm}

uses View_Style, VIEW.Produtos.ProdutosConsultas, System.SysUtils, System.StrUtils,
  Parametros.ParametrosGlobais;

{ TForm2 }


procedure TView_ProdutosDados.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TView_ProdutosDados.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;


procedure TView_ProdutosDados.SetFlag_Permissao(const Value: String);
begin
  FFlag_Permissao := Value;
end;

procedure TView_ProdutosDados.SetFOTO(const Value: String);
begin
  FFOTO := Value;
end;

procedure TView_ProdutosDados.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;



procedure TView_ProdutosDados.FormCreate(Sender: TObject);
begin
   Pa_DadosUsuario.Parent := Self.Pa_Dados;
   Pa_DadosUsuario.Align := alClient;
   // --> As linhas abaixos são desnecessário no Delphi Rio 10.3.1 e obrigatórias no Delphi Xe8
   Self.Pa_Dados.Height := Self.ClientHeight-107;
   Self.Pa_Dados.Width := Self.ClientWidth-28;
   Self.Pa_Gravar.Top := Self.ClientHeight-56;
   Self.Pa_Gravar.Left := Self.ClientWidth-292;
end;



procedure TView_ProdutosDados.FormShow(Sender: TObject);
begin
  AjustaPermissoes;
end;


procedure TView_ProdutosDados.FormActivate(Sender: TObject);
begin
   Self.Caption := 'Cadastros > Produtos e Estoque > Produtos ['+Self.TipoOperacaoDados+']';
   La_Titulo.Caption := 'PRODUTOS';
   if Self.NomeDaCor ='' then
      NomeDaCor :='DARK';
   AjustaCor;
end;


procedure TView_ProdutosDados.AjustaCor;
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


procedure TView_ProdutosDados.AjustaPermissoes;
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
    Edt_PRODUTO.SetFocus;
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
  // View_ProdutosConsulta.Controller_Produtos.DAO.GetId(Self.CODIGO,'NAO');
   View_ProdutosConsulta.Controller_Produtos.LoadGet;
    Self.LerDados;
  end;
end;


function TView_ProdutosDados.ZerarCampos: Boolean;
Var
   viContar: Integer;
begin
   for viContar := 0 to Self.ComponentCount-1 do
   begin
      if (Self.Components[viContar] is TEdit) Then
         TEdit(Self.Components[viContar]).Text := '';
      if (Self.Components[viContar] is TComboBox) Then
         TComboBox(Self.Components[viContar]).ItemIndex := 0;
   end;
   Mem_Descricao.Clear;
   Edt_DATA_ULTIMA_LOCACAO.Text:= '01/01/2001';
   CarregarCombos;
end;


function TView_ProdutosDados.LerDados: Boolean;
begin
   CarregarCombos;
   // Leitura de dados
   Self.Codigo               := View_ProdutosConsulta.Controller_Produtos.ORM.CODIGO;
   Self.CODEMPRESA           := View_ProdutosConsulta.Controller_Produtos.ORM.CODEMPRESA;
   Edt_PRODUTO.Text          := View_ProdutosConsulta.Controller_Produtos.ORM.PRODUTO ;
   Cb_Unidade.Text           := View_ProdutosConsulta.Controller_Produtos.ORM.UNIDADE ;
   Edt_Codigo_de_Barras.Text := View_ProdutosConsulta.Controller_Produtos.ORM.CODIGO_DE_BARRAS;
   Cb_Marca.Text             := View_ProdutosConsulta.Controller_Produtos.ORM.MARCA            ;
   Cb_grupo.Text             := View_ProdutosConsulta.Controller_Produtos.ORM.GRUPO             ;
   Cb_Fornecedor.Text        := View_ProdutosConsulta.Controller_Produtos.ORM.FORNECEDOR       ;
   Mem_Descricao.Text        := View_ProdutosConsulta.Controller_Produtos.ORM.DESCRICAO         ;
   Edt_DATA_ULTIMA_LOCACAO.Text := StringReplace(View_ProdutosConsulta.Controller_Produtos.ORM.DATA_ULTIMA_LOCACAO,'/','.',[rfReplaceAll]);
   View_ProdutosConsulta.Controller_Produtos.ORM.DT_UMOD := StringReplace(DateToStr(Date()),'/','.',[rfReplaceAll]);
   View_ProdutosConsulta.Controller_Produtos.ORM.USUARIO := Self.Usuario;
   if TRIM(View_ProdutosConsulta.Controller_Produtos.ORM.FOTO) <> '' Then
   BEGIN
      TRY
         Img_PRODUTO.Picture.LoadFromFile({__PARAM.ED_DIRMG.Text +}
           'C:\duplaface_019\FOTOS\'+View_ProdutosConsulta.Controller_Produtos.ORM.FOTO);
         Img_PRODUTO.Visible := True;
         Opd_FotoProduto.FileName := View_ProdutosConsulta.Controller_Produtos.ORM.FOTO;
      EXCEPT
         ON EFOpenError do
            Img_PRODUTO.Visible := False;
      End;
   End
   Else
   BEGIN
      Img_PRODUTO.Visible := False;
      Opd_FotoProduto.FileName := '';
   End;
end;


function TView_ProdutosDados.ValidarDados: Boolean;
begin
   Edt_PRODUTO.Text := TParametrosGlobais.SemApostrofesEAcentosIniciais(Edt_PRODUTO.Text);
   Cb_MARCA.Text := TParametrosGlobais.SemApostrofesEAcentosIniciais(Cb_MARCA.Text);
   IF (LENGTH(Edt_PRODUTO.Text) <= 3)  Then
   begin
      MessageDlg(
         'Nome do produto está incorreto(s), vazios e/ou com poucos dígitos..' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      Edt_PRODUTO.SetFocus;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   IF (LENGTH(Cb_UNIDADE.Text) < 2)  Then
   begin
      MessageDlg(
         'Nome da Unidade está incorreto(s), vazios e/ou com poucos dígitos..' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      Cb_Grupo.SetFocus;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   IF (LENGTH(Cb_MARCA.Text) <= 2)  Then
   begin
      MessageDlg(
         'Nome da Marca está incorreto(s), vazios e/ou com poucos dígitos..' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      Cb_Grupo.SetFocus;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   IF (LENGTH(Cb_Grupo.Text) <= 2)  Then
   begin
      MessageDlg(
         'Nome do Grupo está incorreto(s), vazios e/ou com poucos dígitos..' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      Cb_Grupo.SetFocus;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   IF (LENGTH(Cb_Fornecedor.Text) <= 2) Then
   begin
      MessageDlg(
         'Nome do Fornecedor está incorreto(s), vazios e/ou com poucos dígitos..' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      Cb_Fornecedor.SetFocus;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   Result := True;
end;

procedure TView_ProdutosDados.CarregarCombos;
var
   iqtd:integer;
begin
  // Carrega os Combos
  Cb_Grupo.Clear;
  Cb_Grupo.Items := View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.GetGrupos;

  Cb_Fornecedor.Clear;
  Cb_Fornecedor.Items := View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.GetFornecedores;

  Cb_Marca.Clear;
  Cb_Marca.Items := View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.GetMARCA;
//  View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Get('FORNECEDOR', '', 'FORNECEDOR', 'NAO');
//  while not (View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Query.Eof) do
//  begin
//    Cb_Fornecedor.Items.Append(View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Query.FieldByName('FORNECEDOR').AsString.ToUpper);
//    View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Query.Next;
//  end;
//
//  Cb_Marca.Clear;
//  View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Get('MARCA', '', 'MARCA', 'NAO');
//  while not (View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Query.Eof) do
//  begin
//    Cb_Marca.Items.Append(View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Query.FieldByName('MARCA').AsString.ToUpper);
//    View_ProdutosConsulta.Controller_Produtos.DAO_Produtos.Query.Next;
//  end;
end;


procedure TView_ProdutosDados.SpBt_CancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


procedure TView_ProdutosDados.SpBt_GravarClick(Sender: TObject);
begin
  inherited;
  ValidarDados;
  // CARREGANDO ORM
  View_ProdutosConsulta.Controller_Produtos.ORM.CODIGO           := Self.CODIGO;
  View_ProdutosConsulta.Controller_Produtos.ORM.CODEMPRESA       := Self.CODEMPRESA;
  View_ProdutosConsulta.Controller_Produtos.ORM.PRODUTO          := Edt_PRODUTO.Text         ;
  View_ProdutosConsulta.Controller_Produtos.ORM.UNIDADE          := Cb_Unidade.Text          ;
  View_ProdutosConsulta.Controller_Produtos.ORM.CODIGO_DE_BARRAS := Edt_Codigo_de_Barras.Text;
  View_ProdutosConsulta.Controller_Produtos.ORM.MARCA            := Cb_Marca.Text            ;
  View_ProdutosConsulta.Controller_Produtos.ORM.GRUPO            := Cb_grupo.Text            ;
  View_ProdutosConsulta.Controller_Produtos.ORM.FORNECEDOR       := Cb_Fornecedor.Text       ;
  View_ProdutosConsulta.Controller_Produtos.ORM.DESCRICAO        := Mem_Descricao.Text       ;
  View_ProdutosConsulta.Controller_Produtos.ORM.FOTO             := ReverseString (COPY (ReverseString(Opd_FotoProduto.FileName) ,1, POS('\', ReverseString(Opd_FotoProduto.FileName))-1 ));
  View_ProdutosConsulta.Controller_Produtos.ORM.DATA_CADASTRO    := StringReplace(DateToStr(Date),'/','.',[rfReplaceAll]);
  View_ProdutosConsulta.Controller_Produtos.ORM.DATA_ULTIMA_LOCACAO := StringReplace(Edt_DATA_ULTIMA_LOCACAO.Text,'/','.',[rfReplaceAll]);
  View_ProdutosConsulta.Controller_Produtos.ORM.DT_UMOD                := StringReplace(DateToStr(Date()),'/','.',[rfReplaceAll]);
  View_ProdutosConsulta.Controller_Produtos.ORM.USUARIO                := Self.Usuario;
   if TipoOperacaoDados = 'NOVO' then
   begin
      View_ProdutosConsulta.Controller_Produtos.DAO.Post(View_ProdutosConsulta.Controller_Produtos.ORM);
   end
   ELSE if TipoOperacaoDados= 'EDITAR' then
   begin
      View_ProdutosConsulta.Controller_Produtos.DAO.Put(View_ProdutosConsulta.Controller_Produtos.ORM);
   end;
   Self.Close;
end;


procedure TView_ProdutosDados.BBT_FOTOLOGOClick(Sender: TObject);
begin
   Opd_FotoProduto.Execute;
   Img_PRODUTO.Picture.LoadFromFile(Opd_FotoProduto.FileName);
   IF (Img_PRODUTO.Picture.Bitmap.Width > 960) OR
    (Img_PRODUTO.Picture.Bitmap.Height > 960) THEN
   BEGIN
     MessageDlg('Imagem muito grande.' + #13 +
       'Tamanho máximo sugerido: 960 x 960 pixels ', mtWarning, [mbOk], 0);
     BBT_LimparImagem.Click;
   END; // IF
   Img_PRODUTO.Visible := True;
   Img_PRODUTO.Refresh;
   Img_PRODUTO.Repaint;
   Self.WindowState := wsMinimized;
   Self.WindowState := wsNormal;
   Self.Refresh;
   Img_PRODUTO.Refresh;
//    Label12.Caption :=  ReverseString (COPY (ReverseString(Opd_FotoProduto.FileName) ,1, POS('\', ReverseString(Opd_FotoProduto.FileName))-1 ));
//    Label12.Repaint;
end;


procedure TView_ProdutosDados.BBT_LimparImagemClick(Sender: TObject);
var
     Bitmap: TBitmap;
  begin
     if MessageDlg('Deseja apagar a Foto?', mtConfirmation, [mbOk, mbNo], 0) = mrOK
     then
     Begin
        Bitmap := TBitmap.Create;
        Img_PRODUTO.Picture.Graphic := Bitmap;
        Bitmap.Width := 217;
        Bitmap.Height := 167;
        Opd_FotoProduto.FileName := '';
        Bitmap.Free;
        Img_PRODUTO.Visible := False;
        Img_PRODUTO.Visible := True;
        Img_PRODUTO.Refresh;
     END; // IF MessageDlg
  end;

  end.
