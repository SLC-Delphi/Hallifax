unit Model.DAO.Cad_Consultas_IB;

interface

Uses
   Model.Conexao_IB,
   Data.DB,
   System.SysUtils,
   IBX.IBDatabase, IBX.IBCustomDataSet,
   IBX.IBQuery,
   Model.DAO.Cad_Usuario_Interface;


Type
  TDAO_Cad_Consultas_IB = Class
   Public
      Query_ConsultaCadastros: TIBQuery;
      Ds_ConsultaCadastros: TDataSource;
      IB_Componente: TConexao_IB;
      Function Get(vsTabela, vsCondicao, vsOrdem: String): Boolean;
      Class Function New: IDAO_Cad_Usuario;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_Cad_Consultas_IB }

class function TDAO_Cad_Consultas_IB.New: IDAO_Cad_Usuario;
begin
   Self.Create;
end;


constructor TDAO_Cad_Consultas_IB.Create;
begin
   IB_Componente := TConexao_IB.Create;
   Query_ConsultaCadastros:= TIBQuery.Create(Nil);
   Query_ConsultaCadastros.Database := IB_Componente.FDatabase;
   Ds_ConsultaCadastros:= TDataSource.Create(Nil);
   Ds_ConsultaCadastros.DataSet := Query_ConsultaCadastros;
end;


destructor TDAO_Cad_Consultas_IB.Destroy;
begin
  IB_Componente.DisposeOf;
  Query_ConsultaCadastros.DisposeOf;
  Ds_ConsultaCadastros.DisposeOf;
  inherited;
end;


function TDAO_Cad_Consultas_IB.Get(vsTabela, vsCondicao, vsOrdem: String): Boolean;
var
   vsQuery: String;
   vsIniQuery: String;
Begin
   Ds_ConsultaCadastros.DataSet.Close;
   vsIniQuery := '';
   if NOT( (vsTabela ='Clientes') or (vsTabela ='Fornecedores') or (vsTabela ='Linha_Produtos')
       or (vsTabela ='CLIENTES') or (vsTabela ='FORNECEDORES') or (vsTabela ='LINHA_PRODUTOS') )
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
      Query_ConsultaCadastros.First;
      Ds_ConsultaCadastros.DataSet.Active := True;
   except on nomeErro: Exception do
      begin
         ShowMessage('[MODEL] Erro ao acessar dados do Consultas: ' +#13+#13+ nomeErro.Message);
         Result := False;
         Exit;
      end;
   end;
   if not(Query_ConsultaCadastros.Transaction.Active) then
         Query_ConsultaCadastros.Transaction.StartTransaction;
   Result := True;
end;


end.
