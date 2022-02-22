
unit VIEW.Produtos.Preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtDlgs,
  VIEW.PadraoBasico01,
  Hallifax.Controller.Produtos.ProdutosPreco;

type
   TView_ProdutosPreco = class(T_F_CadastroPadrao)
    Pa_DadosPrecos: TPanel;
    Pa_Precos: TPanel;
    Grp_Precos1: TGridPanel;
    Label7: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Pa_Marca: TPanel;
    Grp_Marca: TGridPanel;
    Label55: TLabel;
    Label3: TLabel;
    Ed_MARCA: TEdit;
    Pa_Nome: TPanel;
    Label1: TLabel;
    Edt_PRODUTO: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Ed_PRECO01: TEdit;
    Ed_PRECO02: TEdit;
    Ed_PRECO03: TEdit;
    Ed_PRECO04: TEdit;
    Ed_PRECO05: TEdit;
    Ed_PRECO06: TEdit;
    Ed_PRECO07: TEdit;
    Grp_Precos2: TGridPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Ed_PRECO08: TEdit;
    Ed_PRECO09: TEdit;
    Ed_PRECO10: TEdit;
    Ed_PRECO11: TEdit;
    Ed_PRECO12: TEdit;
    Ed_PRECO13: TEdit;
    Ed_PRECO14: TEdit;
    Grp_Precos3: TGridPanel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Ed_PRECO15: TEdit;
    Ed_PRECO16: TEdit;
    Ed_PRECO17: TEdit;
    Ed_PRECO18: TEdit;
    Ed_PRECO19: TEdit;
    Ed_PRECO20: TEdit;
    Ed_PRECO21: TEdit;
    Grp_Precos4: TGridPanel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Ed_PRECO22: TEdit;
    Ed_PRECO23: TEdit;
    Ed_PRECO24: TEdit;
    Ed_PRECO25: TEdit;
    Ed_PRECO26: TEdit;
    Ed_PRECO27: TEdit;
    Ed_PRECO28: TEdit;
    GridPanel1: TGridPanel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Ed_PRECO30: TEdit;
    Ed_PRECO31: TEdit;
    Ed_PRECO29: TEdit;
      procedure SpBt_CancelarClick(Sender: TObject); override;
      procedure SpBt_GravarClick(Sender: TObject); override;
      procedure FormCreate(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
   private
      Controller_Preco: TController_ProdutosPrecoFD;
      FUSUARIO: String;
      FCODIGO: String;
      FCODEMPRESA: String;
      // FMapaDados : TORM_LOC_M1_CAD_USUARIO;
      procedure AjustaCor; override;
      procedure SetCODIGO(const Value: String);
      procedure SetUSUARIO(const Value: String);
      procedure SetCODEMPRESA(const Value: String);
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
   View_ProdutosPreco :TView_ProdutosPreco;

implementation

{$R *.dfm}

uses View_Style, VIEW.Produtos.ProdutosConsultas, System.SysUtils, System.StrUtils,
  Parametros.ParametrosGlobais;

{ TForm2 }


procedure TView_ProdutosPreco.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TView_ProdutosPreco.SetCODIGO(const Value: String);
begin
  FCODIGO := Value;
end;

procedure TView_ProdutosPreco.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;



procedure TView_ProdutosPreco.FormCreate(Sender: TObject);
begin
   Controller_Preco := TController_ProdutosPrecoFD.Create;
   Pa_DadosPrecos.Parent := Self.Pa_Dados;
   Pa_DadosPrecos.Align := alClient;
   // --> As linhas abaixos são desnecessário no Delphi Rio 10.3.1 e obrigatórias no Delphi Xe8
   Self.Pa_Dados.Height := Self.ClientHeight-107;
   Self.Pa_Dados.Width := Self.ClientWidth-28;
   Self.Pa_Gravar.Top := Self.ClientHeight-56;
   Self.Pa_Gravar.Left := Self.ClientWidth-292;
end;


procedure TView_ProdutosPreco.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(Controller_Preco);
end;


procedure TView_ProdutosPreco.FormShow(Sender: TObject);
begin
   // buscar o produtoestoque
   Controller_Preco.DAO.GetId(Self.CODIGO,'');
   Controller_Preco.LoadGet;
   Self.LerDados;
end;


procedure TView_ProdutosPreco.FormActivate(Sender: TObject);
begin
   Self.Caption := 'Cadastros > Produtos e Estoque > Preço [ EDITAR ]';
   La_Titulo.Caption := 'Preço';
   if Self.NomeDaCor ='' then
      NomeDaCor :='DARK';
   AjustaCor;
end;


procedure TView_ProdutosPreco.AjustaCor;
begin
   if (Self.NomeDaCor = 'ESCURO') OR (Self.NomeDaCor = 'DARK') OR (Self.NomeDaCor = '') then
      View_Style.Dark_PacificBlue
   ELSE if (Self.NomeDaCor = 'GELO') OR (Self.NomeDaCor = 'SILVER')  OR (Self.NomeDaCor = 'LIGHT') then
      View_Style.Light_PacificBlue
   ELSE if (Self.NomeDaCor = 'CLARO') OR (Self.NomeDaCor = 'WHITE') then
      View_Style.White_PacificBlue;
   Pa_DadosPrecos.Font.Size := Self.Pa_DadosPrecos.Font.Size;
   Self.Color := BACKGROUND;
   Self.Font.Color := FONTCOLOR;
   Pa_Top.Color := BACKGROUNDTOP;
   Pa_Top1.Color := BACKGROUNDTOP;
   La_Titulo.Font.Color := FONTCOLOR;
   Pa_DadosPrecos.Color := EDITDATA;
   Pa_Gravar.Color := EDITDATA;
end;



function TView_ProdutosPreco.LerDados: Boolean;
begin
   // Leitura de dados
   ;;Self.Codigo                  := Controller_Preco.ORM.CODIGO_PRODUTO;
   Self.CODEMPRESA                := Controller_Preco.ORM.CODEMPRESA;
   Edt_PRODUTO.Text               := Controller_Preco.ORM.PRODUTO ;
   Ed_MARCA.Text                  := Controller_Preco.ORM.MARCA ;
   Ed_PRECO01.Text                := Controller_Preco.ORM.PRECO01.ToString;
   Ed_PRECO02.Text                := Controller_Preco.ORM.PRECO02.ToString;
   Ed_PRECO03.Text                := Controller_Preco.ORM.PRECO03.ToString;
   Ed_PRECO04.Text                := Controller_Preco.ORM.PRECO04.ToString;
   Ed_PRECO05.Text                := Controller_Preco.ORM.preco05.ToString;
   Ed_PRECO06.Text                := Controller_Preco.ORM.preco06.ToString;
   Ed_PRECO07.Text                := Controller_Preco.ORM.PRECO07.ToString;
   Ed_PRECO08.Text                := Controller_Preco.ORM.preco08.ToString;
   Ed_PRECO09.Text                := Controller_Preco.ORM.preco09.ToString;
   Ed_PRECO10.Text                := Controller_Preco.ORM.PRECO10.ToString;
   Ed_PRECO11.Text                := Controller_Preco.ORM.PRECO11.ToString;
   Ed_PRECO12.Text                := Controller_Preco.ORM.PRECO12.ToString;
   Ed_PRECO13.Text                := Controller_Preco.ORM.PRECO13.ToString;
   Ed_PRECO14.Text                := Controller_Preco.ORM.PRECO14.ToString;
   Ed_PRECO15.Text                := Controller_Preco.ORM.preco15.ToString;
   Ed_PRECO16.Text                := Controller_Preco.ORM.preco16.ToString;
   Ed_PRECO17.Text                := Controller_Preco.ORM.PRECO17.ToString;
   Ed_PRECO18.Text                := Controller_Preco.ORM.preco18.ToString;
   Ed_PRECO19.Text                := Controller_Preco.ORM.preco19.ToString;
   Ed_PRECO20.Text                := Controller_Preco.ORM.PRECO20.ToString;
   Ed_PRECO21.Text                := Controller_Preco.ORM.PRECO21.ToString;
   Ed_PRECO22.Text                := Controller_Preco.ORM.PRECO22.ToString;
   Ed_PRECO23.Text                := Controller_Preco.ORM.PRECO23.ToString;
   Ed_PRECO24.Text                := Controller_Preco.ORM.PRECO24.ToString;
   Ed_PRECO25.Text                := Controller_Preco.ORM.preco25.ToString;
   Ed_PRECO26.Text                := Controller_Preco.ORM.preco26.ToString;
   Ed_PRECO27.Text                := Controller_Preco.ORM.PRECO27.ToString;
   Ed_PRECO28.Text                := Controller_Preco.ORM.preco28.ToString;
   Ed_PRECO29.Text                := Controller_Preco.ORM.preco29.ToString;
   Ed_PRECO30.Text                := Controller_Preco.ORM.PRECO30.ToString;
   Ed_PRECO31.Text                := Controller_Preco.ORM.PRECO31.ToString;
   Controller_Preco.ORM.HORA_UMOD := TimeToStr(Time());
   Controller_Preco.ORM.DT_UMOD   := StringReplace(DateToStr(Date()),'/','.',[]);
   Controller_Preco.ORM.USUARIO   := Self.Usuario;
end;


function TView_ProdutosPreco.ValidarDados: Boolean;
begin
   Result := True;
end;



procedure TView_ProdutosPreco.SpBt_CancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


procedure TView_ProdutosPreco.SpBt_GravarClick(Sender: TObject);
begin
   inherited;
   ValidarDados;
   // CARREGANDO ORM
   Controller_Preco.ORM.CODIGO_PRODUTO   := Self.Codigo                      ;
   Controller_Preco.ORM.CODEMPRESA       := Self.CODEMPRESA                  ;
   //Controller_Preco.ORM.PRODUTO          := Edt_PRODUTO.Text                 ;
   Controller_Preco.ORM.MARCA            := Ed_MARCA.Text                    ;
   Try
      Controller_Preco.ORM.PRECO01          := StrToCurr(Ed_PRECO01.Text);
      Controller_Preco.ORM.PRECO02          := StrToCurr(Ed_PRECO02.Text);
      Controller_Preco.ORM.PRECO03          := StrToCurr(Ed_PRECO03.Text);
      Controller_Preco.ORM.PRECO04          := StrToCurr(Ed_PRECO04.Text);
      Controller_Preco.ORM.preco05          := StrToCurr(Ed_PRECO05.Text);
      Controller_Preco.ORM.preco06          := StrToCurr(Ed_PRECO06.Text);
      Controller_Preco.ORM.PRECO07          := StrToCurr(Ed_PRECO07.Text);
      Controller_Preco.ORM.preco08          := StrToCurr(Ed_PRECO08.Text);
      Controller_Preco.ORM.preco09          := StrToCurr(Ed_PRECO09.Text);
      Controller_Preco.ORM.PRECO10          := StrToCurr(Ed_PRECO10.Text);
      Controller_Preco.ORM.PRECO11          := StrToCurr(Ed_PRECO11.Text);
      Controller_Preco.ORM.PRECO12          := StrToCurr(Ed_PRECO12.Text);
      Controller_Preco.ORM.PRECO13          := StrToCurr(Ed_PRECO13.Text);
      Controller_Preco.ORM.PRECO14          := StrToCurr(Ed_PRECO14.Text);
      Controller_Preco.ORM.preco15          := StrToCurr(Ed_PRECO15.Text);
      Controller_Preco.ORM.preco16          := StrToCurr(Ed_PRECO16.Text);
      Controller_Preco.ORM.PRECO17          := StrToCurr(Ed_PRECO17.Text);
      Controller_Preco.ORM.preco18          := StrToCurr(Ed_PRECO18.Text);
      Controller_Preco.ORM.preco19          := StrToCurr(Ed_PRECO19.Text);
      Controller_Preco.ORM.PRECO20          := StrToCurr(Ed_PRECO20.Text);
      Controller_Preco.ORM.PRECO21          := StrToCurr(Ed_PRECO21.Text);
      Controller_Preco.ORM.PRECO22          := StrToCurr(Ed_PRECO22.Text);
      Controller_Preco.ORM.PRECO23          := StrToCurr(Ed_PRECO23.Text);
      Controller_Preco.ORM.PRECO24          := StrToCurr(Ed_PRECO24.Text);
      Controller_Preco.ORM.preco25          := StrToCurr(Ed_PRECO25.Text);
      Controller_Preco.ORM.preco26          := StrToCurr(Ed_PRECO26.Text);
      Controller_Preco.ORM.PRECO27          := StrToCurr(Ed_PRECO27.Text);
      Controller_Preco.ORM.preco28          := StrToCurr(Ed_PRECO28.Text);
      Controller_Preco.ORM.preco29          := StrToCurr(Ed_PRECO29.Text);
      Controller_Preco.ORM.PRECO30          := StrToCurr(Ed_PRECO30.Text);
      Controller_Preco.ORM.PRECO31          := StrToCurr(Ed_PRECO31.Text);
   except on E: Exception do
      begin
         MessageDlg(
            'Preço incorreto...' + CHR
              (13) + 'Favor preencer os dados corretamente', mtError, [mbOk], 0);
//         Pa_BotaoGravar.Visible := False;
         Ed_PRECO01.SetFocus;
         EXIT;   
      end;
   end;
   Controller_Preco.ORM.HORA_UMOD := TimeToStr(Time());
   Controller_Preco.ORM.DT_UMOD := StringReplace(DateToStr(Date()),'/','.',[]);
   Controller_Preco.ORM.USUARIO := Self.Usuario;
   Controller_Preco.DAO.Put(Controller_Preco.ORM);
   Self.Close;
end;


end.
