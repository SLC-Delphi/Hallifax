unit VIEW.Cadastros.Consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Halifax.Controller.Cad_ConsultasFD, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls,
//  Vcl.WinXCtrls,
   Vcl.Buttons,
  View_Style;

type
  TView_CadastrosConsulta = class(TForm)
    Pa_Principal: TPanel;
    PaBottom: TPanel;
    Dbg_Dados: TDBGrid;
    Pa_Top: TPanel;
    Pa_Top0: TPanel;
    Rb_ConsultaClientes: TRadioButton;
    Rb_ConsultaFornecedores: TRadioButton;
    Rb_ConsultaGrupos: TRadioButton;
    La_ConsultaClientes: TLabel;
    La_ConsultaFornecedores: TLabel;
    La_ConsultaGrupos: TLabel;
    GridPanel_Filtro: TGridPanel;
    Edt_Filtro: TEdit;
    Cb_Ordenar: TComboBox;
    La_Titulo: TLabel;
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
    procedure Rb_ConsultaClientesClick(Sender: TObject);
    procedure Rb_ConsultaFornecedoresClick(Sender: TObject);
    procedure Rb_ConsultaGruposClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Controller_CadastrosConsultas: TController_Cad_ConsultasFD;
    FNomeConsulta: String;
    FPermissaoClientes: String;
    FNomeDaCor: String;
    FPermissaoGrupos: String;
    FUsuario: String;
    FPermissaoFornecedores: String;
    procedure TopAjustarLargura;
    procedure AjustaCor;
    procedure AjustaGrid;
    procedure OrdenarEFiltrar;
    procedure SetNomeConsulta(const Value: String);
    procedure SetNomeDaCor(const Value: String);
    procedure SetPermissaoClientes(const Value: String);
    procedure SetPermissaoFornecedores(const Value: String);
    procedure SetPermissaoGrupos(const Value: String);
    procedure SetUsuario(const Value: String);
    Property Usuario : String read FUsuario write SetUsuario;
    procedure AjustaPermissoes;
  public
    { Public declarations }
    Property NomeDaCor : String read FNomeDaCor write SetNomeDaCor;
    property NomeConsulta :String read FNomeConsulta write SetNomeConsulta;
    Property PermissaoClientes : String read FPermissaoClientes write SetPermissaoClientes;
    Property PermissaoFornecedores : String read FPermissaoFornecedores write SetPermissaoFornecedores;
    Property PermissaoGrupos : String read FPermissaoGrupos write SetPermissaoGrupos;

  end;

var
  View_CadastrosConsulta: TView_CadastrosConsulta;

implementation

{$R *.dfm}


procedure TView_CadastrosConsulta.SetNomeConsulta(const Value: String);
begin
  FNomeConsulta := Value;
end;


procedure TView_CadastrosConsulta.SetNomeDaCor(const Value: String);
begin
  FNomeDaCor := Value;
end;

procedure TView_CadastrosConsulta.SetPermissaoClientes(const Value: String);
begin
  FPermissaoClientes := Value;
end;

procedure TView_CadastrosConsulta.SetPermissaoFornecedores(const Value: String);
begin
  FPermissaoFornecedores := Value;
end;

procedure TView_CadastrosConsulta.SetPermissaoGrupos(const Value: String);
begin
  FPermissaoGrupos := Value;
end;

procedure TView_CadastrosConsulta.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;


procedure TView_CadastrosConsulta.FormCreate(Sender: TObject);
begin
   Controller_CadastrosConsultas := TController_Cad_ConsultasFD.Create;
   NomeConsulta := 'Clientes';
   AjustaGrid;
   La_Titulo.Caption := 'CLIENTES';
   TopAjustarLargura;
end;


procedure TView_CadastrosConsulta.FormDestroy(Sender: TObject);
begin
   FreeAndNil(Controller_CadastrosConsultas);
end;


procedure TView_CadastrosConsulta.FormResize(Sender: TObject);
begin
  AjustaCor;
  TopAjustarLargura;
end;


procedure TView_CadastrosConsulta.FormShow(Sender: TObject);
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_Green
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_Green
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_Green;
   AjustaCor;
   AjustaPermissoes;
end;


procedure TView_CadastrosConsulta.FormActivate(Sender: TObject);
begin
   TopAjustarLargura;
//   Edt_Filtro.SetFocus;
end;


procedure TView_CadastrosConsulta.TopAjustarLargura;
begin
  Edt_Filtro.Width := Trunc(GridPanel_Filtro.Width * 0.68);
  Cb_Ordenar.Width := Trunc(GridPanel_Filtro.Width * 0.278);
end;



procedure TView_CadastrosConsulta.AjustaCor;
begin
  Self.Color := BACKGROUND;
  Self.Font.Color := FONTCOLOR;
  Pa_Top0.Color := BACKGROUNDTOP;
  Pa_Top.Color := BACKGROUNDTOP;
  GridPanel_Filtro.Color := BACKGROUNDTOP;
  La_Titulo.Font.Color := FONTCOLOR;
  Dbg_Dados.Color := EDITDATA;
  Dbg_Dados.FixedColor := GRIDTITLE;
end;


procedure TView_CadastrosConsulta.AjustaPermissoes;
begin
  // ---> Permissõpes
  if Self.PermissaoClientes.ToInteger = 0 then
  begin
    La_ConsultaClientes.Font.Color := FONTCOLORDISABLE;
    Rb_ConsultaClientes.Enabled := False;
  end;
  if Self.PermissaoFornecedores.ToInteger = 0 then
  begin
    La_ConsultaFornecedores.Font.Color := FONTCOLORDISABLE;
    Rb_ConsultaFornecedores.Enabled := False;
  end;
  if Self.PermissaoGrupos.ToInteger = 0 then
  begin
    La_ConsultaGrupos.Font.Color := FONTCOLORDISABLE;
    Rb_ConsultaGrupos.Enabled := False;
  end;
  // ---> Verificando quais serão os dados iniciais
  if Self.PermissaoClientes.ToInteger = 1 then
    Rb_ConsultaClientes.Checked := True
  else if Self.PermissaoFornecedores.ToInteger = 1 then
    Rb_ConsultaFornecedores.Checked := True
  else if Self.PermissaoGrupos.ToInteger = 1 then
    Rb_ConsultaGrupos.Checked := True;
end;


procedure TView_CadastrosConsulta.AjustaGrid;
begin
  Dbg_Dados.Ctl3D := False;
  Dbg_Dados.DrawingStyle := gdsClassic;
  //  Dbg_Dados.Color := clSilver;
  //  Dbg_Dados.FixedColor := clGray;
  if NomeConsulta = 'Clientes' then
  begin
     Dbg_Dados.Columns[0].FieldName := 'CLIENTE';
     Dbg_Dados.Columns[0].Title.Caption := 'Razão Social:';
     Dbg_Dados.Columns[0].Width := 380;
     Dbg_Dados.Columns[1].FieldName := 'FANTASIA';
     Dbg_Dados.Columns[1].Title.Caption := 'Cliente:';
     Dbg_Dados.Columns[1].Width := 380;
     Dbg_Dados.Columns[2].FieldName := 'ENDERECO';
     Dbg_Dados.Columns[2].Title.Caption := 'Endereço';
     Dbg_Dados.Columns[2].Width := 420;
     Dbg_Dados.Columns[3].FieldName := 'NUMERO';
     Dbg_Dados.Columns[3].Title.Caption := 'Número';
     Dbg_Dados.Columns[3].Width := 90;
     Dbg_Dados.Columns[4].FieldName := 'BAIRRO';
     Dbg_Dados.Columns[4].Title.Caption := 'Bairro:';
     Dbg_Dados.Columns[4].Width := 290;
     Dbg_Dados.Columns[5].FieldName := 'CEP';
     Dbg_Dados.Columns[5].Title.Caption := 'CEP:';
     Dbg_Dados.Columns[5].Width := 95;
     Dbg_Dados.Columns[6].FieldName := 'CIDADE';
     Dbg_Dados.Columns[6].Title.Caption := 'Cidade:';
     Dbg_Dados.Columns[6].Width := 290;
     Dbg_Dados.Columns[7].FieldName := 'ESTADO';
     Dbg_Dados.Columns[7].Title.Caption := 'Estado:';
     Dbg_Dados.Columns[7].Width := 95;
     Dbg_Dados.Columns[8].FieldName := 'TELEFONE';
     Dbg_Dados.Columns[8].Title.Caption := 'Telefone:';
     Dbg_Dados.Columns[8].Width := 150;
     Dbg_Dados.Columns[9].FieldName := 'CELULAR';
     Dbg_Dados.Columns[9].Title.Caption := 'Celular:';
     Dbg_Dados.Columns[9].Width := 150;
     Dbg_Dados.Columns[10].FieldName := 'CONTATO';
     Dbg_Dados.Columns[10].Title.Caption := 'Contato:';
     Dbg_Dados.Columns[10].Width := 380;
     Dbg_Dados.Columns[11].FieldName := 'TEL_CONTATO';
     Dbg_Dados.Columns[11].Title.Caption := 'Fone Contato:';
     Dbg_Dados.Columns[11].Width := 150;
     Dbg_Dados.Columns[12].FieldName := 'CODIGO';
     Dbg_Dados.Columns[12].Title.Caption := 'Codigo:';
     Dbg_Dados.Columns[12].Width := 95;
  end else
  if NomeConsulta = 'Fornecedores' then
  begin
     Dbg_Dados.Columns[0].FieldName := 'FORNECEDOR';
     Dbg_Dados.Columns[0].Title.Caption := 'Razão Social:';
     Dbg_Dados.Columns[0].Width := 380;
     Dbg_Dados.Columns[1].FieldName := 'FANTASIA';
     Dbg_Dados.Columns[1].Title.Caption := 'Fornecedor:';
     Dbg_Dados.Columns[1].Width := 380;
     Dbg_Dados.Columns[2].FieldName := 'ENDERECO';
     Dbg_Dados.Columns[2].Title.Caption := 'Endereço';
     Dbg_Dados.Columns[2].Width := 420;
     Dbg_Dados.Columns[3].FieldName := 'NUMERO';
     Dbg_Dados.Columns[3].Title.Caption := 'Número';
     Dbg_Dados.Columns[3].Width := 90;
     Dbg_Dados.Columns[4].FieldName := 'BAIRRO';
     Dbg_Dados.Columns[4].Title.Caption := 'Bairro:';
     Dbg_Dados.Columns[4].Width := 290;
     Dbg_Dados.Columns[5].FieldName := 'CEP';
     Dbg_Dados.Columns[5].Title.Caption := 'CEP:';
     Dbg_Dados.Columns[5].Width := 95;
     Dbg_Dados.Columns[6].FieldName := 'CIDADE';
     Dbg_Dados.Columns[6].Title.Caption := 'Cidade:';
     Dbg_Dados.Columns[6].Width := 290;
     Dbg_Dados.Columns[7].FieldName := 'ESTADO';
     Dbg_Dados.Columns[7].Title.Caption := 'Estado:';
     Dbg_Dados.Columns[7].Width := 95;
     Dbg_Dados.Columns[8].FieldName := 'TELEFONE';
     Dbg_Dados.Columns[8].Title.Caption := 'Telefone:';
     Dbg_Dados.Columns[8].Width := 150;
     Dbg_Dados.Columns[9].FieldName := 'CELULAR';
     Dbg_Dados.Columns[9].Title.Caption := 'Celular:';
     Dbg_Dados.Columns[9].Width := 150;
     Dbg_Dados.Columns[10].FieldName := 'CONTATO';
     Dbg_Dados.Columns[10].Title.Caption := 'Contato:';
     Dbg_Dados.Columns[10].Width := 980;
     Dbg_Dados.Columns[11].FieldName := 'TEL_CONTATO';
     Dbg_Dados.Columns[11].Title.Caption := 'Fone Contato:';
     Dbg_Dados.Columns[11].Width := 150;
     Dbg_Dados.Columns[12].FieldName := 'CODIGO';
     Dbg_Dados.Columns[12].Title.Caption := 'Codigo:';
     Dbg_Dados.Columns[12].Width := 95;
  End else
  if(NomeConsulta ='Grupos') or (NomeConsulta='Categoria') then
  begin
     Dbg_Dados.Columns[0].FieldName := 'LINHA_PRODUTOS';
     Dbg_Dados.Columns[0].Title.Caption := 'Grupo:';
     Dbg_Dados.Columns[0].Width := 860;
     Dbg_Dados.Columns[1].FieldName := 'CODIGO';
     Dbg_Dados.Columns[1].Title.Caption := 'Código:';
     Dbg_Dados.Columns[1].Width := 220;
     Dbg_Dados.Columns[2].FieldName := '';
     Dbg_Dados.Columns[2].Width := 0;
     Dbg_Dados.Columns[3].FieldName := '';
     Dbg_Dados.Columns[3].Width := 0;
     Dbg_Dados.Columns[4].FieldName := '';
     Dbg_Dados.Columns[4].Width := 0;
     Dbg_Dados.Columns[5].FieldName := '';
     Dbg_Dados.Columns[5].Width := 0;
     Dbg_Dados.Columns[6].FieldName := '';
     Dbg_Dados.Columns[6].Width := 0;
     Dbg_Dados.Columns[7].FieldName := '';
     Dbg_Dados.Columns[7].Width := 0;
     Dbg_Dados.Columns[8].FieldName := '';
     Dbg_Dados.Columns[8].Width := 0;
     Dbg_Dados.Columns[9].FieldName := '';
     Dbg_Dados.Columns[9].Width := 0;
     Dbg_Dados.Columns[10].FieldName := '';
     Dbg_Dados.Columns[10].Width := 0;
     Dbg_Dados.Columns[11].FieldName := '';
     Dbg_Dados.Columns[11].Width := 0;
     Dbg_Dados.Columns[12].FieldName := '';
     Dbg_Dados.Columns[12].Width := 0;
     //Self.Width := 1124;
  end;
  Dbg_Dados.DataSource := Controller_CadastrosConsultas.ORM.Ds_ConsultaCadastros;
  Dbg_Dados.DataSource.Enabled := True;
  Edt_Filtro.Text := '';
  Dbg_Dados.Repaint;
end;


procedure TView_CadastrosConsulta.OrdenarEFiltrar;
begin
   case Cb_Ordenar.ItemIndex of
      0:
         begin
            if NomeConsulta <> 'Grupos' then
               Controller_CadastrosConsultas.ORM.Get(NomeConsulta, Edt_Filtro.Text, 'CODIGO')
            else
               Controller_CadastrosConsultas.ORM.Get('Linha_Produtos', Edt_Filtro.Text, 'CODIGO');
         end;
      1:
         begin
            if NomeConsulta = 'Clientes' then
               Controller_CadastrosConsultas.ORM.Get(NomeConsulta, Edt_Filtro.Text, 'FANTASIA, CLIENTE')
            else
            if NomeConsulta = 'Fornecedores' then
               Controller_CadastrosConsultas.ORM.Get(NomeConsulta, Edt_Filtro.Text, 'FANTASIA, FORNECEDOR')
            else
               Controller_CadastrosConsultas.ORM.Get('Linha_Produtos', Edt_Filtro.Text, 'LINHA_PRODUTOS');
         end;
      2:
         begin
            if NomeConsulta = 'Clientes' then
               Controller_CadastrosConsultas.ORM.Get(NomeConsulta, Edt_Filtro.Text, 'ESTADO, CIDADE, FANTASIA, CLIENTE')
            else
            if NomeConsulta = 'Fornecedores' then
               Controller_CadastrosConsultas.ORM.Get(NomeConsulta, Edt_Filtro.Text, 'ESTADO, CIDADE, FANTASIA, FORNECEDOR');
         end;
      3:
         begin
            Controller_CadastrosConsultas.ORM.Get(NomeConsulta, Edt_Filtro.Text, 'ESTADO, CIDADE, BAIRRO, ENDERECO, NUMERO')
         end;
   end;
end;


procedure TView_CadastrosConsulta.Cb_OrdenarChange(Sender: TObject);
begin
  OrdenarEFiltrar;
end;


procedure TView_CadastrosConsulta.Edt_FiltroChange(Sender: TObject);
begin
   IF Trim(Edt_Filtro.Text) = '' then
   begin
      Cb_Ordenar.ItemIndex := 0;
      OrdenarEFiltrar;
      Exit;
   end;
   if Length(Edt_Filtro.Text) in [3,4,5,6,8,13,14,20,25,30,35,40,45,50,55,60,65,70,75,80] then
      OrdenarEFiltrar;
end;


procedure TView_CadastrosConsulta.Edt_FiltroEnter(Sender: TObject);
begin
   Edt_Filtro.Color := EDITDATA;
end;


procedure TView_CadastrosConsulta.Edt_FiltroExit(Sender: TObject);
begin
   Edt_Filtro.ParentColor := True;
   Edt_Filtro.Repaint;
end;


procedure TView_CadastrosConsulta.Cb_OrdenarEnter(Sender: TObject);
begin
   Cb_Ordenar.Color := EDITDATA;
end;


procedure TView_CadastrosConsulta.Cb_OrdenarExit(Sender: TObject);
begin
   Cb_Ordenar.ParentColor := True;
end;



procedure TView_CadastrosConsulta.Rb_ConsultaClientesClick(Sender: TObject);
begin
   NomeConsulta := 'Clientes';
   AjustaGrid;
   TopAjustarLargura;
   La_Titulo.Caption := 'CLIENTES';
   Cb_Ordenar.Items.Clear;
   Cb_Ordenar.Items.Append('Codigo');
   Cb_Ordenar.Items.Append('Alfabetico');
   Cb_Ordenar.Items.Append('Estado, Cidade, Nome');
   Cb_Ordenar.Items.Append('Estado, Cidade, Endereco');
   Cb_Ordenar.ItemIndex := 1;
   OrdenarEFiltrar;
   Edt_Filtro.SetFocus;
end;


procedure TView_CadastrosConsulta.Rb_ConsultaFornecedoresClick(Sender: TObject);
begin
   NomeConsulta := 'Fornecedores';
   AjustaGrid;
   TopAjustarLargura;
   La_Titulo.Caption := 'FORNECEDORES';
   Cb_Ordenar.Items.Clear;
   Cb_Ordenar.Items.Append('Codigo');
   Cb_Ordenar.Items.Append('Alfabetico');
   Cb_Ordenar.Items.Append('Estado, Cidade, Nome');
   Cb_Ordenar.Items.Append('Estado, Cidade, Endereco');
   Cb_Ordenar.ItemIndex := 1;
   OrdenarEFiltrar;
   Edt_Filtro.SetFocus;
end;


procedure TView_CadastrosConsulta.Rb_ConsultaGruposClick(Sender: TObject);
begin
   NomeConsulta := 'Grupos';
   AjustaGrid;
   TopAjustarLargura;
   La_Titulo.Caption := 'GRUPOS';
   Cb_Ordenar.Items.Clear;
   Cb_Ordenar.Items.Append('Codigo');
   Cb_Ordenar.Items.Append('Alfabetico');
   Cb_Ordenar.ItemIndex := 1;
   OrdenarEFiltrar;
   Edt_Filtro.SetFocus;
end;


end.
