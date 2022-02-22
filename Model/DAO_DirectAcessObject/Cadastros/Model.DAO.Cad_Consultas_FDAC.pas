unit Model.DAO.Cad_Consultas_FDAC;

interface

Uses
Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Model.Conexao_FDAC, Model.DAO.Cad_Usuario_Interface, System.SysUtils;


Type
  TDAO_Cad_Consultas_FDAC = Class
   Public
      Query_ConsultaCadastros: TFDQuery;
      Ds_ConsultaCadastros: TDataSource;
      FDAC_Componente: TConexao_FDAC;
      Function Get(vsTabela, vsCondicao, vsOrdem: String): String;
      Class Function New: IDAO_Cad_Usuario;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_Cad_Consultas_FDAC }

class function TDAO_Cad_Consultas_FDAC.New: IDAO_Cad_Usuario;
begin
   Self.Create;
end;


constructor TDAO_Cad_Consultas_FDAC.Create;
begin
   FDAC_Componente := TConexao_FDAC.Create;
   Query_ConsultaCadastros:= TFDQuery.Create(Nil);
//   Query_ConsultaCadastros.Connection := TFDConnection(FDAC_Componente.Connection);
   Query_ConsultaCadastros.Connection := FDAC_Componente.FConnection;
   Query_ConsultaCadastros.Transaction := FDAC_Componente.FTransaction;
   Ds_ConsultaCadastros:= TDataSource.Create(Nil);
   Ds_ConsultaCadastros.DataSet := Query_ConsultaCadastros;
end;


destructor TDAO_Cad_Consultas_FDAC.Destroy;
begin
  FDAC_Componente.DisposeOf;
  Query_ConsultaCadastros.DisposeOf;
  Ds_ConsultaCadastros.DisposeOf;
  inherited;
end;


function TDAO_Cad_Consultas_FDAC.Get(vsTabela, vsCondicao, vsOrdem: String): String;
var
   vsQuery: String;
   vsIniQuery: String;
Begin
   Ds_ConsultaCadastros.DataSet.Close;
   vsIniQuery := '';
   if NOT( (vsTabela ='Clientes') or (vsTabela ='Fornecedores') or (vsTabela ='Linha_Produtos') or (vsTabela ='Empresa')
       or (vsTabela ='CLIENTES') or (vsTabela ='FORNECEDORES') or (vsTabela ='LINHA_PRODUTOS') or (vsTabela ='EMPRESA'))
   then
   Begin
      ShowMessage('Tabela errada');
      Exit;
   End;

   with Query_ConsultaCadastros do
   begin
      vsIniQuery :='Select * From ' + vsTabela +  ' Where 1=1 ';
      Close;
      SQL.Clear;
      if not(vsCondicao = '') then
      begin
         if (vsTabela = 'Clientes') or (vsTabela = 'CLIENTES') then
         begin
            SQL.Add(vsIniQuery + 'And ((CLIENTE Containing :pCondicao) OR (FANTASIA Containing :pCondicao)  OR (CIDADE Containing :pCondicao)  OR (CONTATO Containing :pCondicao)) ');
            ParamByName('pCondicao').AsString := vsCondicao;
         end
         else if (vsTabela = 'Fornecedores') or (vsTabela = 'FORNECEDORES') then
         begin
            SQL.Add(vsIniQuery + 'And ((FORNECEDOR Containing :pCondicao) OR (FANTASIA Containing :pCondicao)  OR (CIDADE Containing :pCondicao)  OR (CONTATO Containing :pCondicao)) ');
            ParamByName('pCondicao').AsString := vsCondicao;
         end
         else if (vsTabela = 'Linha_Produtos') or (vsTabela = 'LINHA_PRODUTOS') then
         begin
            SQL.Add(vsIniQuery + 'And LINHA_PRODUTOS Containing :pCondicao ');
            ParamByName('pCondicao').AsString := vsCondicao;
         end;
      end
      else
         SQL.Add(vsIniQuery);
      if (vsOrdem = '') then
         vsOrdem := 'CODIGO';
      SQL.Add(' order by ' + vsOrdem);
      vsQuery := SQL.Text;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteCONSULTAS.Txt');
   end;
   try
      Query_ConsultaCadastros.Prepare;
      Query_ConsultaCadastros.Open;
      Ds_ConsultaCadastros.DataSet.Active := True;
      Query_ConsultaCadastros.First;
   except on nomeErro: Exception do
      begin
         Result := 'Erro ao acessar Consultas: '+nomeErro.Message;
         Exit;
      end;
   end;
   if not(Query_ConsultaCadastros.Transaction.Active) then
         Query_ConsultaCadastros.Transaction.StartTransaction;
   if (vsTabela ='Empresa') or (vsTabela ='EMPRESA') then
      Result := Query_ConsultaCadastros.FieldByName('FANTASIA').AsString
   else
      Result := 'OK';
end;


end.
