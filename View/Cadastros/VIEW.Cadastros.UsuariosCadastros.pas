unit VIEW.Cadastros.UsuariosCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  VIEW.PadraoBasico01;

type
   TView_UsuariosCadastros = class(T_F_CadastroPadrao)
      Pa_DadosUsuario: TPanel;
      Label1: TLabel;
      Edt_Nome_Usuario: TEdit;
      Label2: TLabel;
    Medt_Senha: TMaskEdit;
      procedure SpBt_CancelarClick(Sender: TObject); override;
      procedure SpBt_GravarClick(Sender: TObject); override;
      procedure FormCreate(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure FormShow(Sender: TObject);
   private
 //     FMapaDados : TORM_LOC_M1_CAD_USUARIO;
      procedure AjustaCor; override;
    procedure AjustaPermissoes;
      { Private declarations }
   public
      { Public declarations }
      Function ZerarCampos : Boolean; override;
      Function LerDados : Boolean; override;
      Function ValidarDados : Boolean; override;
   end;

var
   View_UsuariosCadastros :TView_UsuariosCadastros;

implementation

{$R *.dfm}

uses View_Style, Parametros.ParametrosGlobais, VIEW.Cadastros.UsuariosConsultas;

{ TForm2 }


procedure TView_UsuariosCadastros.FormCreate(Sender: TObject);
begin
   IF TipoPermissao = '' THEN Self.TipoPermissao := '3';
   Pa_DadosUsuario.Parent := Self.Pa_Dados;
   Pa_DadosUsuario.Align := alClient;
   // --> As linhas abaixos são desnecessário no Delphi Rio 10.3.1 e obrigatórias no Delphi Xe8
   Self.Pa_Dados.Height := Self.ClientHeight-107;
   Self.Pa_Dados.Width := Self.ClientWidth-28;
   Self.Pa_Gravar.Top := Self.ClientHeight-56;
   Self.Pa_Gravar.Left := Self.ClientWidth-292;
end;



procedure TView_UsuariosCadastros.FormShow(Sender: TObject);
begin
  AjustaPermissoes;
end;


procedure TView_UsuariosCadastros.FormActivate(Sender: TObject);
begin
   Self.Caption := 'Cadastros > Usuarios > [' + Self.TipoOperacaoDados+']';
   if Self.NomeDaCor ='' then
      NomeDaCor :='DARK';
   AjustaCor;
end;


procedure TView_UsuariosCadastros.AjustaCor;
begin
   IF Self.NomeDaCor = 'CLARA' THEN
      View_Style.White_PacificBlue
   ELSE IF Self.NomeDaCor = 'SILVER' THEN
      View_Style.Light_PacificBlue
   ELSE IF Self.NomeDaCor = 'DARK' THEN
      View_Style.Dark_PacificBlue;
   Pa_DadosUsuario.Font.Size := Self.Pa_Dados.Font.Size;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
   Pa_Top.Color := BACKGROUNDTOP;
   Pa_Top1.Color := BACKGROUNDTOP;
   La_Titulo.Font.Color := FONTCOLOR;
   Pa_DadosUsuario.Color := EDITDATA;
   Pa_Gravar.Color := EDITDATA;
end;


procedure TView_UsuariosCadastros.AjustaPermissoes;
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
    Edt_Nome_Usuario.SetFocus;
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
    Self.LerDados;
  end;
end;


function TView_UsuariosCadastros.ZerarCampos: Boolean;
begin
   Edt_Nome_Usuario.Text :='';
   Medt_Senha.Text := '';
end;


function TView_UsuariosCadastros.LerDados: Boolean;
begin
   Edt_Nome_Usuario.Text := View_UsuariosConsultas.Controller_Usuarios.ORM.NOME_USUARIO;
   Medt_Senha.Text := View_UsuariosConsultas.Controller_Usuarios.ORM.SENHA;
   View_UsuariosConsultas.Controller_Usuarios.ORM.DT_UMOD := DATE();
   View_UsuariosConsultas.Controller_Usuarios.ORM.HR_UMOD := TIME();
   View_UsuariosConsultas.Controller_Usuarios.ORM.USUARIO_UMOD := Self.Usuario;
end;


function TView_UsuariosCadastros.ValidarDados: Boolean;
begin
   Edt_Nome_Usuario.Text := TParametrosGlobais.SemApostrofesEAcentosIniciais(Edt_Nome_Usuario.Text);
   IF (LENGTH(Edt_Nome_Usuario.Text) <= 3)  Then
   begin
      MessageDlg(
         'Nome está incorreto(s), vazios e/ou com poucos dígitos..' + CHR
           (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
      Result := False;
      EXIT;
   end; // IF (LENGTH (EDL_NOME.Text) <=3
   Result := True;
end;



procedure TView_UsuariosCadastros.SpBt_CancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


procedure TView_UsuariosCadastros.SpBt_GravarClick(Sender: TObject);
begin
  inherited;
  // --> Validando os dados
   if Not ValidarDados then
   begin
      Edt_Nome_Usuario.SetFocus;
      Exit;
   end;
  // --> CARREGANDO ORM
   View_UsuariosConsultas.Controller_Usuarios.ORM.CODEMPRESA := 1;
   View_UsuariosConsultas.Controller_Usuarios.ORM.NOME_USUARIO := Edt_Nome_Usuario.Text;
   View_UsuariosConsultas.Controller_Usuarios.ORM.SENHA := Medt_Senha.Text;
   View_UsuariosConsultas.Controller_Usuarios.ORM.FLAG_PERMISSAO := 'NAO';
   View_UsuariosConsultas.Controller_Usuarios.ORM.DT_UMOD := DATE();
   View_UsuariosConsultas.Controller_Usuarios.ORM.HR_UMOD := TIME();
   View_UsuariosConsultas.Controller_Usuarios.ORM.USUARIO_UMOD := Self.Usuario;
   if TipoOperacaoDados = 'NOVO' then
   begin
      View_UsuariosConsultas.Controller_Usuarios.ORM.OPERACAO_UMOD := 'INSERIR';
      View_UsuariosConsultas.Controller_Usuarios.ORM.DATA_CADASTRO := DATE();
      View_UsuariosConsultas.Controller_Usuarios.DAO.Post(View_UsuariosConsultas.Controller_Usuarios.ORM);
   end
   ELSE if TipoOperacaoDados= 'EDITAR' then
   begin
      View_UsuariosConsultas.Controller_Usuarios.ORM.OPERACAO_UMOD := 'EDITAR';
      View_UsuariosConsultas.Controller_Usuarios.DAO.Put(View_UsuariosConsultas.Controller_Usuarios.ORM);
   end;
   Self.Close;
end;



end.
