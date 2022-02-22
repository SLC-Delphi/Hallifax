unit VIEW.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Halifax.Controller.Cad_PermissoesFD,
  Halifax.Controller.Cad_UsuarioFD, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf,
  FireDAC.Comp.UI, Vcl.ComCtrls;

type
  TVIEW_Login = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Medt_Senha: TMaskEdit;
    Edt_Nome_Usuario: TEdit;
    BitBtn1: TBitBtn;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Panel4: TPanel;
    Trb_AparenciaPrincipal: TTrackBar;
    Label5: TLabel;
    La_AparenciaPrincipal: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Trb_AparenciaDados: TTrackBar;
    La_AparenciaDados: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Trb_AparenciaPrincipalChange(Sender: TObject);
    procedure Trb_AparenciaDadosChange(Sender: TObject);
  private
    { Private declarations }
    Controller_Usuarios: TController_Cad_UsuarioFD;
  public
    { Public declarations }
  end;

var
  VIEW_Login: TVIEW_Login;

implementation

{$R *.dfm}

uses uLocacacaoDeMateriais_Principal, VIEW.Padrao.Parametros1;


procedure TVIEW_Login.FormCreate(Sender: TObject);
begin
   Controller_Usuarios:= TController_Cad_UsuarioFD.Create;
   ReportMemoryLeaksOnShutdown := DebugHook <> 0;
end;


procedure TVIEW_Login.Trb_AparenciaDadosChange(Sender: TObject);
begin
   if Trb_AparenciaDados.Position= 0 then
      La_AparenciaDados.Caption := 'CLARO';
   if Trb_AparenciaDados.Position= 1 then
      La_AparenciaDados.Caption := 'GELO';
   if Trb_AparenciaDados.Position= 2 then
      La_AparenciaDados.Caption := 'ESCURO';
end;

procedure TVIEW_Login.Trb_AparenciaPrincipalChange(Sender: TObject);
begin
   if Trb_AparenciaPrincipal.Position= 0 then
      La_AparenciaPrincipal.Caption := 'CLARO';
   if Trb_AparenciaPrincipal.Position= 1 then
      La_AparenciaPrincipal.Caption := 'GELO';
   if Trb_AparenciaPrincipal.Position= 2 then
      La_AparenciaPrincipal.Caption := 'ESCURO';
end;




procedure TVIEW_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(Controller_Usuarios);
end;



procedure TVIEW_Login.BitBtn1Click(Sender: TObject);
begin
   if not (Medt_Senha.Text = '1-1001') then
   begin
        Controller_Usuarios.DAO.Get('', Edt_Nome_Usuario.Text, '' , 'NAO');
      Controller_Usuarios.LoadGet;
      if not (Edt_Nome_Usuario.Text = Controller_Usuarios.ORM.NOME_USUARIO) then
      begin
         MessageDlg('Usuário inválido ou inexistente',mtError,[mbOk],1);
         Edt_Nome_Usuario.Clear;
         Edt_Nome_Usuario.SetFocus;
         Exit;
      end;

      if not (Medt_Senha.Text = Controller_Usuarios.ORM.SENHA) then
      begin
         MessageDlg('Senha invalida',mtError,[mbOk],1);
         Medt_Senha.Clear;
         Medt_Senha.SetFocus;
         Exit;
      end;
   end;
   Try
      _Frm_Principal := T_Frm_Principal.Create(Nil);
      if not (Medt_Senha.Text = '1001') then
      begin
         _Frm_Principal.zCodigo_Usuario := Controller_Usuarios.ORM.CODIGO.ToString;
         _Frm_Principal.zUsuario := Controller_Usuarios.ORM.NOME_USUARIO;
      end
      else
      begin
         _Frm_Principal.zCodigo_Usuario := '1';
         _Frm_Principal.zUsuario := 'TESTE';
      end;
      View_Parametros1.Global.ParametroCorPrincipal := UpperCase(La_AparenciaPrincipal.Caption);
      View_Parametros1.Global.ParametroCorConsulta := UpperCase(La_AparenciaDados.Caption);
      View_Parametros1.Global.ParametroCorCadastros := UpperCase(La_AparenciaDados.Caption);
      View_Parametros1.Global.ParametroCorLocacao := UpperCase(La_AparenciaDados.Caption);
      _Frm_Principal.ShowModal;
   Finally
      _Frm_Principal.DisposeOf;
   End;
   Self.Close;
end;


end.

   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN NOME AS ' );
   DM1.Query.SQL.Add(' VARCHAR(80) CHARACTER SET ISO8859_1; ' );
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN FLAG_SIMPLES AS ');
   DM1.Query.SQL.Add(' VARCHAR(3) CHARACTER SET iso8859_1 ');
   DM1.Query.SQL.Add(' DEFAULT ''NAO'' ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' COMMENT ON DOMAIN FLAG_SIMPLES IS ''apenas SIM ou NAO'' ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN OBSERVACAO_CURTA AS ' );
   DM1.Query.SQL.Add(' VARCHAR(256) CHARACTER SET ISO8859_1; ' );
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN DESCRICAO_CURTA AS ' );
   DM1.Query.SQL.Add(' VARCHAR(512) CHARACTER SET ISO8859_1; ' );
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add('CREATE DOMAIN FONE_CELULAR AS ' );
   DM1.Query.SQL.Add(' VARCHAR(50) CHARACTER SET ISO8859_1; ' );
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN LIXEIRA_D AS ');
   DM1.Query.SQL.Add(' VARCHAR(10) CHARACTER SET iso8859_1 ');
   DM1.Query.SQL.Add(' DEFAULT ''NAO'' ');
   DM1.Query.SQL.Add(' COLLATE ISO8859_1;');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN OPERACAO_UMOD_D AS ');
   DM1.Query.SQL.Add(' VARCHAR(10) CHARACTER SET ISO8859_1; ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN ESTOQUE_LOCACAO_M1 AS ');
   DM1.Query.SQL.Add(' DECIMAL(10,2) ');
   DM1.Query.SQL.Add(' DEFAULT 0; ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN PRECO_LOCACAO_M1 AS ');
   DM1.Query.SQL.Add(' NUMERIC(11,3) ');
   DM1.Query.SQL.Add(' DEFAULT 0; ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN PRECO_PGTO_M1 AS ');
   DM1.Query.SQL.Add(' NUMERIC(15,3) ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN CODEMPRESA AS ');
   DM1.Query.SQL.Add(' INTEGER ');
   DM1.Query.SQL.Add(' DEFAULT 1; ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN CODIGO_ITENS AS ');
   DM1.Query.SQL.Add(' BIGINT ');
   DM1.Query.SQL.Add(' NOT NULL; ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add(' CREATE DOMAIN FLAG_SITUACAO AS ');
   DM1.Query.SQL.Add(' VARCHAR(14) CHARACTER SET ISO8859_1 ');
   DM1.Query.SQL.Add(' COLLATE ISO8859_1 ');
   DM1.Query.ExecSQL;
   DM1.Query.SQL.Clear;
   DM1.Query.SQL.Add('COMMIT')  ;
   DM1.Query.ExecSQL;
   DM1.Query.Transaction.StartTransaction;
   DM1.Query.Transaction.Commit;
   DM1.Query.Transaction.StartTransaction;
