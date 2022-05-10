unit VIEW.Cadastros.UsuariosConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls,
//  Vcl.WinXCtrls,
  Vcl.Buttons,
  View_Style, Vcl.Imaging.pngimage, View.Padrao_Lixeira,
  Halifax.Controller.Cad_UsuarioFD,
  Halifax.Controller.Cad_PermissoesFD;

type
  TView_UsuariosConsultas = class(TForm)
    Pa_Fundo: TPanel;
    PaBottom: TPanel;
    Dbg_Dados: TDBGrid;
    Pa_BotaoNovo: TPanel;
    Pa_BotaoEditar: TPanel;
    La_BotaoNovo: TLabel;
    La_BotaoEditar: TLabel;
    SpBt_Novo: TSpeedButton;
    SpBtn_Editar: TSpeedButton;
    Pa_Top: TPanel;
    Pa_BotaoPermissoes: TPanel;
    La_BotaoPermissoes: TLabel;
    spBtn_Permissoes: TSpeedButton;
    La_Titulo: TLabel;
    GridPanel_Filtro: TGridPanel;
    Edt_Filtro: TEdit;
    Cb_Ordenar: TComboBox;
    Pa_BotaoLixeira: TPanel;
    La_BotaoLixeira: TLabel;
    SpBt_Lixeira: TSpeedButton;
    Image2: TImage;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpBt_NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpBtn_EditarClick(Sender: TObject);
    procedure SpBt_LixeiraClick(Sender: TObject);
    procedure spBtn_PermissoesClick(Sender: TObject);
  private
    { Private declarations }
    FUsuario: String;
    FPermissaoUsuarios: String;
    FPermissaoPermissoes: String;
    FNomeDaCor: String;
    Form_Confirmalixeira : TForm_Confirmalixeira;
    FCodigo_Usuario: string;
    procedure TopAjustarLargura;
    procedure AjustaCor;
    procedure AjustaGrid;
    procedure OrdenarEFiltrar;
    procedure SetUsuario(const Value: String);
    procedure SetPermissaoUsuarios(const Value: String);
    procedure SetPermissaoPermissoes(const Value: String);
    procedure SetNomeDaCor(const Value: String);
    procedure AjustaPermissoes;
    procedure SetCodigo_Usuario(const Value: string);
  public
    { Public declarations }
    Controller_Usuarios: TController_Cad_UsuarioFD;
    Controller_Permissoes: TController_Cad_PermissoesFD;
    Property Codigo_Usuario : string read FCodigo_Usuario write SetCodigo_Usuario;
    Property Usuario : String read FUsuario write SetUsuario;
    Property NomeDaCor : String read FNomeDaCor write SetNomeDaCor;
    Property PermissaoUsuarios : String read FPermissaoUsuarios write SetPermissaoUsuarios;
    Property PermissaoPermissoes : String  read FPermissaoPermissoes write SetPermissaoPermissoes;
  end;

var
  View_UsuariosConsultas: TView_UsuariosConsultas;

implementation

uses
  VIEW.Cadastros.UsuariosCadastros, VIEW.Cadastros.PermissoesCadastros;


{$R *.dfm}



procedure TView_UsuariosConsultas.SetCodigo_Usuario(const Value: string);
begin
  FCodigo_Usuario := Value;
end;

procedure TView_UsuariosConsultas.SetNomeDaCor(const Value: String);
begin
  FNomeDaCor := Value;
end;


procedure TView_UsuariosConsultas.SetPermissaoPermissoes(const Value: String);
begin
  FPermissaoPermissoes := Value;
end;

procedure TView_UsuariosConsultas.SetPermissaoUsuarios(const Value: String);
begin
  FPermissaoUsuarios := Value;
end;

procedure TView_UsuariosConsultas.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;



procedure TView_UsuariosConsultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Controller_Usuarios);
end;


procedure TView_UsuariosConsultas.FormCreate(Sender: TObject);
begin
   Controller_Usuarios := TController_Cad_UsuarioFD.Create;
   Controller_Permissoes:= TController_Cad_PermissoesFD.Create;
   AjustaGrid;
   TopAjustarLargura;
end;



procedure TView_UsuariosConsultas.FormDestroy(Sender: TObject);
begin
   FreeAndNil(Controller_Usuarios);
   Controller_Permissoes.DisposeOf;
end;


procedure TView_UsuariosConsultas.FormResize(Sender: TObject);
begin
  TopAjustarLargura;
end;


procedure TView_UsuariosConsultas.FormShow(Sender: TObject);
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   AjustaCor;
  AjustaPermissoes;
end;


procedure TView_UsuariosConsultas.FormActivate(Sender: TObject);
begin
   TopAjustarLargura;
   Edt_Filtro.SetFocus;
end;

procedure TView_UsuariosConsultas.TopAjustarLargura;
begin
  Edt_Filtro.Width := Trunc(GridPanel_Filtro.Width * 0.68);
  Cb_Ordenar.Width := Trunc(GridPanel_Filtro.Width * 0.277);
end;


procedure TView_UsuariosConsultas.AjustaCor;
begin
//  View_Style.Dark_PacificBlue;
//  _F_Cadastros_UsuariosConsulta.Color := BACKGROUND;
//  _F_Cadastros_UsuariosConsulta.Font.Color := FONTCOLOR;
//  Pa_Top.Color := BACKGROUND; //BACKGROUNDTOP;
//  GridPanel_Filtro.Color := BACKGROUND; //BACKGROUNDTOP;
//  La_Titulo.Font.Color := FONTCOLOR;
//  Dbg_Dados.Color := EDITDATA;
//  Dbg_Dados.FixedColor := GRIDTITLE;
//  Pa_BotaoNovo.Color := BUTTONCOLOR;
//  Pa_BotaoEditar.Color := BUTTONCOLOR;
  Self.Color := BACKGROUND;
  Self.Font.Color := FONTCOLOR;
  Pa_Top.Color := BACKGROUNDTOP;
 // GridPanel_Filtro.Color := BACKGROUNDTOP;
  La_Titulo.Font.Color := FONTCOLOR;
  Dbg_Dados.Color := EDITDATA;
  Dbg_Dados.FixedColor := GRIDTITLE;
  Pa_BotaoNovo.Color := BUTTONCOLOR;
  Pa_BotaoEditar.Color := BUTTONCOLOR;
  Pa_BotaoPermissoes.Color := BUTTONCOLOR;
end;



procedure TView_UsuariosConsultas.AjustaPermissoes;
begin
  // --> Permissões
  if Self.PermissaoUsuarios.ToInteger = 1 then
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
  else if Self.PermissaoUsuarios.ToInteger = 2 then
  //Cadastrar
  begin
    Pa_BotaoEditar.Enabled := False;
    Pa_BotaoEditar.Color := BUTTONCOLORDISABLE;
    La_BotaoEditar.Font.Color := FONTCOLORDISABLE;
    Pa_BotaoLixeira.Enabled := False;
    Pa_BotaoLixeira.Color := BUTTONCOLORDISABLE;
    La_BotaoLixeira.Font.Color := FONTCOLORDISABLE;
  end
  else if Self.PermissaoUsuarios.ToInteger = 3 then
  //Editar
  begin
    Pa_BotaoNovo.Enabled := False;
    Pa_BotaoNovo.Color := BUTTONCOLORDISABLE;
    La_BotaoNovo.Font.Color := FONTCOLORDISABLE;
    Pa_BotaoLixeira.Enabled := False;
    Pa_BotaoLixeira.Color := BUTTONCOLORDISABLE;
    La_BotaoLixeira.Font.Color := FONTCOLORDISABLE;
  end
  else if Self.PermissaoUsuarios.ToInteger = 4 then
  //Cadastrar e Editar
  begin
    Pa_BotaoLixeira.Enabled := False;
    Pa_BotaoLixeira.Color := BUTTONCOLORDISABLE;
    La_BotaoLixeira.Font.Color := FONTCOLORDISABLE;
  end;
  if (Self.PermissaoPermissoes.ToInteger <= 0) or (Self.PermissaoUsuarios.ToInteger = 0) then
  begin
    Pa_BotaoPermissoes.Enabled := False;
    Pa_BotaoPermissoes.Color := BUTTONCOLORDISABLE;
    La_BotaoPermissoes.Font.Color := FONTCOLORDISABLE;
  end;
end;


procedure TView_UsuariosConsultas.AjustaGrid;
begin
  Dbg_Dados.Ctl3D := False;
  Dbg_Dados.DrawingStyle := gdsClassic;
  //  Dbg_Dados.Color := clSilver;
  //  Dbg_Dados.FixedColor := clGray;
  Dbg_Dados.Columns[0].FieldName := 'CODIGO';
  Dbg_Dados.Columns[1].Width := 80;
  Dbg_Dados.Columns[1].FieldName := 'NOME_USUARIO';
  Dbg_Dados.Columns[1].Title.Caption := 'Nome:';
  Dbg_Dados.Columns[1].Width := 490;
  Dbg_Dados.Columns[2].FieldName := 'DATA_CADASTRO';
  Dbg_Dados.Columns[2].Title.Caption := 'Data de Cadastro';
  Dbg_Dados.Columns[2].Width := 140;
  Dbg_Dados.Columns[3].FieldName := 'FLAG_PERMISSAO';
  Dbg_Dados.Columns[3].Title.Caption := 'Permissões Definidas';
  Dbg_Dados.Columns[3].Width := 170;
  Dbg_Dados.DataSource := Controller_Usuarios.DAO.DataSet;
  Dbg_Dados.DataSource.Enabled := True;
  Edt_Filtro.Text := '';
  Dbg_Dados.Repaint;
end;


procedure TView_UsuariosConsultas.OrdenarEFiltrar;
begin
   case Cb_Ordenar.ItemIndex of
      0:
         begin
            Controller_Usuarios.DAO.Get('', Edt_Filtro.Text, 'CODIGO','');
         end;
      1:
         begin
            if Trim(Edt_Filtro.Text) = '' then
               Controller_Usuarios.DAO.GetSimple('')
            else
               Controller_Usuarios.DAO.Get('', Edt_Filtro.Text, '' , '');
         end;
      2:
         begin
            Controller_Usuarios.DAO.Get('', Edt_Filtro.Text, 'DATA_CADASTRO','');
         end;
   end;
end;


procedure TView_UsuariosConsultas.SpBt_NovoClick(Sender: TObject);
begin
//   Pa_Top.Color := Self.Color;
   Self.AlphaBlendValue := 198;
   Self.Repaint;
   try
      View_UsuariosCadastros := TView_UsuariosCadastros.Create(Nil);
      View_UsuariosCadastros.Usuario := Self.Usuario;
      View_UsuariosCadastros.TipoPermissao := Self.PermissaoUsuarios;
      View_UsuariosCadastros.TipoOperacaoDados := 'NOVO';
      View_UsuariosCadastros.NomeDaCor := Self.NomeDaCor;
      View_UsuariosCadastros.Left := Self.Left;
      View_UsuariosCadastros.top := Self.top;
      Controller_Usuarios.LoadGet;
      View_UsuariosCadastros.ShowModal;
   finally
      OrdenarEFiltrar;
      View_UsuariosCadastros.DisposeOf;
   end;
//   Pa_Top.Color := BACKGROUNDTOP;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;


procedure TView_UsuariosConsultas.SpBtn_EditarClick(Sender: TObject);
begin
//  Pa_Top.Color := Self.Color;
   Self.AlphaBlendValue := 198;
   Self.Repaint;
   try
      View_UsuariosCadastros := TView_UsuariosCadastros.Create(Nil);
      View_UsuariosCadastros.Usuario := Self.Usuario;
      View_UsuariosCadastros.TipoPermissao := Self.PermissaoUsuarios;
      View_UsuariosCadastros.TipoOperacaoDados := 'EDITAR';
      View_UsuariosCadastros.NomeDaCor := Self.NomeDaCor;
      View_UsuariosCadastros.Left := Self.Left;
      View_UsuariosCadastros.top := Self.top;
      Controller_Usuarios.LoadGet;
      View_UsuariosCadastros.ShowModal;
   finally
      OrdenarEFiltrar;
      View_UsuariosCadastros.DisposeOf;
   end;
//   Pa_Top.Color := BACKGROUNDTOP;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;



procedure TView_UsuariosConsultas.spBtn_PermissoesClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 198;
   Self.Repaint;
   try
      Controller_Usuarios.LoadGet;
      View_PermissoesCadastros := TView_PermissoesCadastros.Create(Nil);
      View_PermissoesCadastros.Usuario := Self.Usuario;
      View_PermissoesCadastros.Flag_Permissao := Controller_Usuarios.DAO.Query.FieldByName('FLAG_PERMISSAO').AsString;
      View_PermissoesCadastros.Codigo_Usuario := Controller_Usuarios.DAO.Query.FieldByName('CODIGO').AsString;
      View_PermissoesCadastros.Nome_Usuario := Controller_Usuarios.DAO.Query.FieldByName('NOME_USUARIO').AsString;
      View_PermissoesCadastros.Left := Self.Left;
      View_PermissoesCadastros.top := Self.top;
      View_PermissoesCadastros.NomeDaCor := Self.NomeDaCor;
      View_PermissoesCadastros.ShowModal;
      if (Controller_Usuarios.DAO.Query.FieldByName('CODIGO').AsString = Self.Codigo_Usuario) then
         MessageDlg ('Os dados do atual Usuário e/ou sua(s) permissões foram alteradas.'+#13+#13+'Saia e entre novamente no sistema para que elas etrem em vigor',mtInformation,[mbOK],0);
   finally
      OrdenarEFiltrar;
      View_PermissoesCadastros.DisposeOf;
   end;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;

procedure TView_UsuariosConsultas.SpBt_LixeiraClick(Sender: TObject);
begin
   Self.AlphaBlendValue := 198;
   Self.Repaint;
   try
      Form_Confirmalixeira := TForm_Confirmalixeira.Create(Nil);
      Form_Confirmalixeira.Left := Self.Left+Trunc((Self.Width-Form_Confirmalixeira.Width)/2);
      Form_Confirmalixeira.Top := Self.Top+Trunc((Self.Height-Form_Confirmalixeira.Height)/2);
       Controller_Usuarios.LoadGet;
      Form_Confirmalixeira.dados := Controller_Usuarios.ORM.CODIGO.ToString + '  -  '
         + Controller_Usuarios.ORM.NOME_USUARIO;
      Form_Confirmalixeira.ShowModal;
      if Form_Confirmalixeira.Lixeira then
      begin
         Controller_Usuarios.ORM.DT_UMOD := DATE();
         Controller_Usuarios.ORM.HR_UMOD := TIME();
         Controller_Usuarios.ORM.USUARIO_UMOD := Self.Usuario;
         Controller_Usuarios.DAO.Delete(Controller_Usuarios.FEntity_Cad_Usuario);
         OrdenarEFiltrar;
      end;
   finally
      OrdenarEFiltrar;
      Form_Confirmalixeira.DisposeOf;
   end;
   Self.AlphaBlendValue := 255;
   Self.Repaint;
end;


procedure TView_UsuariosConsultas.Cb_OrdenarChange(Sender: TObject);
begin
  OrdenarEFiltrar;
end;


procedure TView_UsuariosConsultas.Edt_FiltroChange(Sender: TObject);
begin
   IF Trim(Edt_Filtro.Text) = '' then
   begin
      Cb_Ordenar.ItemIndex := 1;
      Controller_Usuarios.DAO.GetSimple('');
      Exit;
   end;
   if Length(Edt_Filtro.Text) in [3,4,5,6,8,13,14,20,25,30,35,40,45,50,55,60,65,70,75,80] then
      OrdenarEFiltrar;
end;


procedure TView_UsuariosConsultas.Edt_FiltroEnter(Sender: TObject);
begin
   Edt_Filtro.Color := EDITDATA;
end;


procedure TView_UsuariosConsultas.Edt_FiltroExit(Sender: TObject);
begin
   Edt_Filtro.ParentColor := True;
   Edt_Filtro.Repaint;
end;


procedure TView_UsuariosConsultas.Cb_OrdenarEnter(Sender: TObject);
begin
   Cb_Ordenar.Color := EDITDATA;
end;


procedure TView_UsuariosConsultas.Cb_OrdenarExit(Sender: TObject);
begin
   Cb_Ordenar.ParentColor := True;
end;

end.
