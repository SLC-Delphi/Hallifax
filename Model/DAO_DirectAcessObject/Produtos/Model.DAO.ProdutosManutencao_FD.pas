unit Model.DAO.ProdutosManutencao_FD;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ,
  Model.Conexao_FDAC, System.SysUtils,
  Model.DAO.ProdutosManutencao_FD_Interface,
  Model.ORM_Loc_M1_ProdutosManutencao;

Type
   TDAO_ProdutosManutencao_FDAC = Class(TInterfacedObject, IDAO_ProdutosManutencao)
   Public
      Query: TFDQuery;
      DataSet: TDataSource;
      FD_Componente: TConexao_FDAC;
      Function GetSimple(vsFlagManutencao,vsFlagInicialEncerramento: String): Boolean;
      Function Get(vsCampos, vsCondicao, vsOrdem: String): Boolean;
      Function GetId(vsId: String): Boolean;
      function Post(ORM: TORM_LOC_M1_ProdutosManutencao; SaldoQtdManutencao, SaldoEstoque : Currency): Boolean;
      Function Put (ORM: TORM_LOC_M1_ProdutosManutencao; SaldoQtdManutencao, SaldoEstoque : Currency): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_ProdutosManutencao;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_ProdutosManutencao_FDAC }



class function TDAO_ProdutosManutencao_FDAC.New: IDAO_ProdutosManutencao;
begin
   Self.Create;
end;

constructor TDAO_ProdutosManutencao_FDAC.Create;
begin
   FD_Componente := TConexao_FDAC.Create;
   Query:= TFDQuery.Create(Nil);
//   Query.Connection := TFDConnection(FD_Componente.Connection);
   Query.Connection := FD_Componente.FConnection;
   Query.Transaction := FD_Componente.FTransaction;
   DataSet:= TDataSource.Create(Nil);
   DataSet.DataSet := Query;
end;


destructor TDAO_ProdutosManutencao_FDAC.Destroy;
begin
  inherited;
   FD_Componente.DisposeOf;
   Query.DisposeOf;
   DataSet.DisposeOf;
end;

function TDAO_ProdutosManutencao_FDAC.GetSimple(vsFlagManutencao,vsFlagInicialEncerramento: String): Boolean;
begin
   if vsFlagManutencao ='' then
      vsFlagManutencao := 'NAO';
   if vsFlagInicialEncerramento ='' then
      vsFlagInicialEncerramento := 'INICIAL';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_PRODUTOSMANUTENCAO WHERE FLAG_MANUTENCAO ='+ QuotedStr(vsFlagManutencao) +' ');
      if (vsFlagInicialEncerramento.ToUpper='ABERTADATA') then
         SQL.Add(' order by DATA_INICIAL, PRODUTO, MARCA')
      else
      if (vsFlagInicialEncerramento.ToUpper='ABERTAPRODUTOS') then
         SQL.Add(' order by PRODUTO, MARCA, DATA_INICIAL')
      else
      if (vsFlagInicialEncerramento.ToUpper='ENCERRADADATA') then
         SQL.Add(' order by DATA_ENCERRAMENTO, PRODUTO, MARCA')
      else
      if (vsFlagInicialEncerramento.ToUpper='ENCERRADAPRODUTOS') then
         SQL.Add(' order by PRODUTO, MARCA, DATA_ENCERRAMENTO');
   end;
   try
      Query.Prepare;
      Query.Active;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Result := False;
         Showmessage ('[Model] Erro ao acessar os dados: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_ProdutosManutencao_FDAC.Get(vsCampos, vsCondicao, vsOrdem: String): Boolean;
begin
   // desnecessário
end;


function TDAO_ProdutosManutencao_FDAC.GetId(vsId: String): Boolean;
begin
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_PRODUTOSMANUTENCAO') ;
      SQL.Add(' Where CODIGO = :sId ');
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


function TDAO_ProdutosManutencao_FDAC.Post(ORM: TORM_LOC_M1_ProdutosManutencao; SaldoQtdManutencao, SaldoEstoque : Currency): Boolean;
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
      SQL.Add('INSERT INTO LOC_M1_PRODUTOSMANUTENCAO');
      SQL.Add(' ( ');
      SQL.Add('  CODEMPRESA           ');
      SQL.Add('  ,CODIGO_PRODUTO      ');
      SQL.Add('  ,PRODUTO             ');
      SQL.Add('  ,MARCA               ');
      SQL.Add('  ,QUANTIDADE          ');
      SQL.Add('  ,DATA_INICIAL        ');
      SQL.Add('  ,FLAG_MANUTENCAO     ');
      SQL.Add('  ,QUANTIDADE_DEVOLVIDA');
      SQL.Add('  ,DATA_ENCERRAMENTO   ');
      SQL.Add('  ,DT_UMOD             ');
      SQL.Add('  ,HORA_UMOD           ');
      SQL.Add('  ,USUARIO             ');
      SQL.Add(' ) Values ( ');
      SQL.Add('  :uCODEMPRESA          ');
      SQL.Add('  ,:uCODIGO_PRODUTO      ');
      SQL.Add('  ,:uPRODUTO             ');
      SQL.Add('  ,:uMARCA               ');
      SQL.Add('  ,:uQUANTIDADE          ');
      SQL.Add('  ,:uDATA_INICIAL        ');
      SQL.Add('  ,:uFLAG_MANUTENCAO     ');
      SQL.Add('  ,:uQUANTIDADE_DEVOLVIDA');
      SQL.Add('  ,:uDATA_ENCERRAMENTO    ');
      SQL.Add('  ,:uDT_UMOD             ');
      SQL.Add('  ,:uHORA_UMOD           ');
      SQL.Add('  ,:uUSUARIO             ');
      SQL.Add(' ) ');
      ParamByName(Trim('uCODEMPRESA           ')).Value := ORM.CODEMPRESA;
      ParamByName(Trim('uCODIGO_PRODUTO       ')).Value := ORM.CODIGO_PRODUTO    ;
      ParamByName(Trim('uPRODUTO              ')).Value := ORM.PRODUTO    ;
      ParamByName(Trim('uMARCA                ')).Value := ORM.MARCA      ;
      ParamByName(Trim('uQUANTIDADE           ')).Value := ORM.QUANTIDADE;
      ParamByName(Trim('uDATA_INICIAL         ')).AsDate := StrToDate(ORM.DATA_INICIAL);
      ParamByName(Trim('uFLAG_MANUTENCAO      ')).Value := ORM.FLAG_MANUTENCAO;
      ParamByName(Trim('uQUANTIDADE_DEVOLVIDA ')).AsCurrency := 0;
      ParamByName(Trim('uDATA_ENCERRAMENTO    ')).Value := '01/01/2001';
      ParamByName(Trim('uDT_UMOD              ')).Value := ORM.DT_UMOD;
      ParamByName(Trim('uHORA_UMOD            ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('uUSUARIO              ')).Value := ORM.USUARIO ;     ;
   end;
   try
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         //Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := '[MODEL] Falha ao inserir os dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;

   with Query do
   begin
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add('Update LOC_M1_PRODUTOSESTOQUE');
      SQL.Add(' Set ');
      SQL.Add('  QUANTDADE_MANUTENCAO  =  :uQUANTDADE_MANUTENCAO');
      SQL.Add('  ,ESTOQUE_DISPONIVEL    = :uESTOQUE_DISPONIVEL  ');
      SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
      ParamByName(Trim('uQUANTDADE_MANUTENCAO')).AsCurrency := SaldoQtdManutencao ;
      ParamByName(Trim('uESTOQUE_DISPONIVEL  ')).AsCurrency := SaldoEstoque       ;
      ParamByName(Trim('uCODIGO_PRODUTO      ')).Value := ORM.CODIGO_PRODUTO      ;
   end;
   try
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         //Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := '[MODEL] Falha ao inserir e atualizar os dados [MANUTENCAO/ESTOQUE]: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;


function TDAO_ProdutosManutencao_FDAC.Put(ORM: TORM_LOC_M1_ProdutosManutencao; SaldoQtdManutencao, SaldoEstoque : Currency): Boolean;
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
      SQL.Add('Update LOC_M1_PRODUTOSMANUTENCAO');
      SQL.Add(' Set ');
      SQL.Add('  FLAG_MANUTENCAO       =  :uFLAG_MANUTENCAO     ');
      SQL.Add('  ,QUANTIDADE_DEVOLVIDA  =  :uQUANTIDADE_DEVOLVIDA');
      SQL.Add('  ,DATA_ENCERRAMENTO     =  :uDATA_ENCERRAMENTO   ');
      SQL.Add('  ,DT_UMOD               =  :uDT_UMOD             ');
      SQL.Add('  ,HORA_UMOD             =  :uHORA_UMOD           ');
      SQL.Add('  ,USUARIO               =  :uUSUARIO             ');
      SQL.Add('   WHERE CODIGO = :uCODIGO;                     ');
      ParamByName(Trim('uFLAG_MANUTENCAO      ')).Value := ORM.FLAG_MANUTENCAO;
      ParamByName(Trim('uQUANTIDADE_DEVOLVIDA ')).AsCurrency := ORM.QUANTIDADE_DEVOLVIDA.ToDouble;
      ParamByName(Trim('uDATA_ENCERRAMENTO    ')).AsDate := StrToDate(ORM.DATA_ENCERRAMENTO);
      ParamByName(Trim('uDT_UMOD              ')).Value := ORM.DT_UMOD;
      ParamByName(Trim('uHORA_UMOD            ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('uUSUARIO              ')).Value := ORM.USUARIO ;
      ParamByName(Trim('uCODIGO               ')).Value := ORM.CODIGO     ;
   end;
   try
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         //Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := '[MODEL] Falha ao inserir os dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;

   with Query do
   begin
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add('Update LOC_M1_PRODUTOSESTOQUE');
      SQL.Add(' Set ');
      SQL.Add('  QUANTDADE_MANUTENCAO  =  :uQUANTDADE_MANUTENCAO');
      SQL.Add('  ,ESTOQUE_DISPONIVEL    = :uESTOQUE_DISPONIVEL  ');
      SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
      ParamByName(Trim('uQUANTDADE_MANUTENCAO')).AsCurrency := SaldoQtdManutencao ;
      ParamByName(Trim('uESTOQUE_DISPONIVEL  ')).AsCurrency := SaldoEstoque       ;
      ParamByName(Trim('uCODIGO_PRODUTO      ')).Value := ORM.CODIGO_PRODUTO      ;
   end;
   try
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         //Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := '[MODEL] Falha ao atualizar [MANUTENCAO] e atualizar os dados [ESTOQUE]: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;



function TDAO_ProdutosManutencao_FDAC.CriarTabela(): String;
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
      SQL.Add('CREATE TABLE LOC_M1_PRODUTOSMANUTENCAO (      ');
      SQL.Add('    CODIGO                CODIGO NOT NULL,    ');
      SQL.Add('    CODEMPRESA            CODEMPRESA,         ');
      SQL.Add('    CODIGO_PRODUTO        CODIGO NOT NULL,    ');
      SQL.Add('    PRODUTO               NOME,               ');
      SQL.Add('    MARCA                 NOME,               ');
      SQL.Add('    QUANTIDADE            ESTOQUE_LOCACAO_M1, ');
      SQL.Add('    DATA_INICIAL          DATE,               ');
      SQL.Add('    FLAG_MANUTENCAO       FLAG_SITUACAO,      ');
      SQL.Add('    QUANTIDADE_DEVOLVIDA  ESTOQUE_LOCACAO_M1, ');
      SQL.Add('    DATA_ENCERRAMENTO     DATE,               ');
      SQL.Add('    DT_UMOD               DATE,               ');
      SQL.Add('    HORA_UMOD             TIME,               ');
      SQL.Add('    USUARIO               NOME,               ');
      SQL.Add('    LIXEIRA               LIXEIRA_D           ');
      SQL.Add('); ');
   end;
   vsErro1 := 'A tabela de Manutenção de Produtos foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Tabelade de Manutenção dos produtos já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   //
   // --> Criando o Generator
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('CREATE GENERATOR GEN_LOC_M1_PRODUTOSMANUTENCAO_I;');
   end;
   vsErro1 := 'Gerador foi criada corretamente.'+#13;
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
         vsErro1 := 'Gerador já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   //
   // --> Criando a Trigger do Generator
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('CREATE OR ALTER TRIGGER LOC_M1_PRODUTOSMANUTENCAO_BI FOR LOC_M1_PRODUTOSMANUTENCAO');
      SQL.Add('active before insert position 0');
      SQL.Add('as');
      SQL.Add('begin');
      SQL.Add('  if (new.codigo is null) then');
      SQL.Add('     new.codigo = gen_id(gen_loc_m1_produtosmanutencao_i,1);');
      SQL.Add('end');
   end;
   vsErro1 := 'Trigger do Generetor dos Produtos foi criada corretamente.'+#13;
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
         vsErro1 := 'Trigger do Generetor dos Produtos já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
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
      SQL.Add('COMMENT ON COLUMN LOC_M1_PRODUTOSMANUTENCAO.FLAG_MANUTENCAO IS');
      SQL.Add(#39+'ABERTA');
      SQL.Add('ENCERRADA');
      SQL.Add('CANCELADA'+#39+';');
   end;
   vsErro1 := 'Comentário de campo foi criada corretamente.'+#13;
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
         vsErro1 := 'Comentário de campo já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
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



