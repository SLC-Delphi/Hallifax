unit Model.DAO.ProdutosEstoque_FD;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ,
  Model.Conexao_FDAC, Model.DAO.ProdutosEstoque_FD_Interface, System.SysUtils,
  Model.ORM_Loc_M1_ProdutosEstoque;

Type
   TDAO_ProdutosEstoque_FDAC = Class(TInterfacedObject, IDAO_ProdutosEstoque)
   Public
      Query: TFDQuery;
      DataSet: TDataSource;
      FD_Componente: TConexao_FDAC;
      Function GetSimple(vsLixeira: String): Boolean;
      Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
      Function GetId(vsId, vsLixeira: String): Boolean;
      function Post (ORM: TORM_LOC_M1_ProdutosEstoque): Boolean;
      Function Put (ORM: TORM_LOC_M1_ProdutosEstoque): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_ProdutosEstoque;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_ProdutosEstoque_FDAC }



class function TDAO_ProdutosEstoque_FDAC.New: IDAO_ProdutosEstoque;
begin
   Self.Create;
end;

constructor TDAO_ProdutosEstoque_FDAC.Create;
begin
   FD_Componente := TConexao_FDAC.Create;
   Query:= TFDQuery.Create(Nil);
//   Query.Connection := TFDConnection(FD_Componente.Connection);
   Query.Connection := FD_Componente.FConnection;
   Query.Transaction := FD_Componente.FTransaction;
   DataSet:= TDataSource.Create(Nil);
   DataSet.DataSet := Query;
end;


destructor TDAO_ProdutosEstoque_FDAC.Destroy;
begin
  inherited;
   FD_Componente.DisposeOf;
   Query.DisposeOf;
   DataSet.DisposeOf;
end;

function TDAO_ProdutosEstoque_FDAC.GetSimple(vsLixeira: String): Boolean;
begin
   // desnecessário
end;

function TDAO_ProdutosEstoque_FDAC.Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
begin
   // desnecessário
end;

function TDAO_ProdutosEstoque_FDAC.GetId(vsId, vsLixeira: String): Boolean;
begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_PRODUTOSESTOQUE') ;
      SQL.Add(' Where CODIGO_PRODUTO = :sId ');
      ParamByName('sId').Value := vsId;
   End;
   try
      Query.Prepare;
      Query.Open;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Result := False;
         Showmessage('[Model] Erro ao acessar os dados: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_ProdutosEstoque_FDAC.Post(ORM: TORM_LOC_M1_ProdutosEstoque): Boolean;
begin
//   desnecessário
end;


function TDAO_ProdutosEstoque_FDAC.Put(ORM: TORM_LOC_M1_ProdutosEstoque): Boolean;
var
   vsErro1 : String;
begin
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   with Query do
   begin
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add('Update LOC_M1_PRODUTOSESTOQUE');
      SQL.Add(' Set ');
      SQL.Add('  CODEMPRESA            =  :uCODEMPRESA          ');
      SQL.Add('  ,PRODUTO               =  :uPRODUTO             ');
      SQL.Add('  ,MARCA                 =  :uMARCA               ');
      SQL.Add('  ,ESTOQUE_TOTAL         =  :uESTOQUE_TOTAL       ');
      SQL.Add('  ,QUANTIDADE_ALOCADA    =  :uQUANTIDADE_ALOCADA  ');
      SQL.Add('  ,QUANTDADE_MANUTENCAO  =  :uQUANTDADE_MANUTENCAO');
      SQL.Add('  ,ESTOQUE_DISPONIVEL    =  :uESTOQUE_DISPONIVEL  ');
      SQL.Add('  ,DT_UMOD               =  :uDT_UMOD             ');
      SQL.Add('  ,HORA_UMOD             =  :uHORA_UMOD           ');
      SQL.Add('  ,USUARIO               =  :uUSUARIO             ');
      SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
      ParamByName(Trim('uPRODUTO             ')).Value := ORM.PRODUTO    ;
      ParamByName(Trim('uMARCA               ')).Value := ORM.MARCA      ;
      ParamByName(Trim('uESTOQUE_TOTAL       ')).AsCurrency := ORM.ESTOQUE_TOTAL.ToDouble;
      ParamByName(Trim('uQUANTIDADE_ALOCADA  ')).AsCurrency := ORM.QUANTIDADE_ALOCADA.ToDouble;
      ParamByName(Trim('uQUANTDADE_MANUTENCAO')).AsCurrency := ORM.QUANTDADE_MANUTENCAO.ToDouble;
      ParamByName(Trim('uESTOQUE_DISPONIVEL  ')).AsCurrency := ORM.ESTOQUE_DISPONIVEL.ToDouble;
      ParamByName(Trim('uDT_UMOD             ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('uHORA_UMOD           ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('uUSUARIO             ')).Value := ORM.USUARIO ;
      ParamByName(Trim('uCODIGO_PRODUTO      ')).Value := ORM.CODIGO_PRODUTO     ;
   end;
   try
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         //Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := '[MODEL] Falha ao atualizar os dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;



function TDAO_ProdutosEstoque_FDAC.CriarTabela(): String;
var
   vsErro1: String;
begin
   //
   // --> Criando a tabela
   with Query do
   begin
      SQL.Clear;
      SQL.Add('COMMIT');
      ExecSQL;
      Close;
      SQL.Clear;
      SQL.Add('CREATE TABLE LOC_M1_PRODUTOSESTOQUE (         ');
      SQL.Add('    CODIGO_PRODUTO        INTEGER default -1 NOT NULL, ');
      SQL.Add('    CODEMPRESA            CODEMPRESA,         ');
      SQL.Add('    PRODUTO               NOME,               ');
      SQL.Add('    MARCA                 NOME,               ');
      SQL.Add('    ESTOQUE_TOTAL         ESTOQUE_LOCACAO_M1, ');
      SQL.Add('    QUANTIDADE_ALOCADA    ESTOQUE_LOCACAO_M1, ');
      SQL.Add('    QUANTDADE_MANUTENCAO  ESTOQUE_LOCACAO_M1, ');
      SQL.Add('    ESTOQUE_DISPONIVEL    ESTOQUE_LOCACAO_M1, ');
      SQL.Add('    DATA_CADASTRO         DATE,               ');
      SQL.Add('    DT_UMOD               DATE,               ');
      SQL.Add('    HORA_UMOD             TIME,               ');
      SQL.Add('    USUARIO               NOME,               ');
      SQL.Add('    LIXEIRA               LIXEIRA_D           ');
      SQL.Add('); ');
   end;
   vsErro1 := 'A tabela de Produtos foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Tabelade de Estoque dos produtos já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   //
   // --> Criando a chave Unica
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('ALTER TABLE LOC_M1_PRODUTOSESTOQUE ADD CONSTRAINT UNQ1_LOC_M1_PRODUTOSESTQUE UNIQUE (CODIGO_PRODUTO);');
   end;
   vsErro1 := 'Chave Única do Código dos Produtos foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
      ShowMessage(vsErro1);
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Chave Única do Código dos Produtos  já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;


end.


