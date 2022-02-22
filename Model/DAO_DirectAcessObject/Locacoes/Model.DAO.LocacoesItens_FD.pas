unit Model.DAO.LocacoesItens_FD;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Classes,
  Model.DAO.LocacoesCabecalhoItens_FD_Interface,
  Model.Conexao_FDAC,
  MODEL.ORM_Loc_M1_LocacaoItens,
  MODEL.ORM_Loc_M1_LocacaoPgtoItens, IBX.IBDatabase, Vcl.Dialogs;

Type
   TDAO_LocacoesItens_FD = Class(TInterfacedObject, IDAO_LocacoesItens)
   Private
      Strlst_PRODUTOS: TStringList;
      Strlst_CODIGOPRODUTOS: TStringList;
   Public
      FD_Componente: TConexao_FDAC;
      Query: TFDQuery;
      DataSource: TDataSource;
      Function GetProdutos: TStringList;
      Function GetCodigoProdutos: TStringList;
      function GetDadosDoProduto(vsCodigoProduto: String): boolean;
      Function GetId(vsId: String): Boolean;
      Function Post(ORM: TORM_LOC_M1_LocacaoItens; vbCommit: Boolean): Boolean;
      Function Put(ORM: TORM_LOC_M1_LocacaoItens; vbCommit: Boolean): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_LocacoesItens;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  System.SysUtils;

{ TDAO_LocacoesItens_FD }

class function TDAO_LocacoesItens_FD.New: IDAO_LocacoesItens;
begin
    Self.Create;
end;


constructor TDAO_LocacoesItens_FD.Create;
begin
   FD_Componente:= TConexao_FDAC.Create;
   Query := TFDQuery.Create(Nil);
   Query.Connection := FD_Componente.FConnection;;
   Query.Transaction := FD_Componente.FTransaction;
   DataSource := TDataSource.Create(Nil);
   DataSource.DataSet := Query;
end;


destructor TDAO_LocacoesItens_FD.Destroy;
begin
  inherited;
   FD_Componente.DisposeOf;
   Query.DisposeOf;
   DataSource.DisposeOf;
end;


function TDAO_LocacoesItens_FD.CriarTabela: String;
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
      SQL.Add('CODIGO                CODIGO /* CODIGO = INTEGER NOT NULL */, ');
      SQL.Add('CODIGO_LOCACAO        CODIGO /* CODIGO = INTEGER NOT NULL */, ');
      SQL.Add('GRUPO                 NOME /* NOME = VARCHAR(80) */, ');
      SQL.Add('PRODUTO               NOME /* NOME = VARCHAR(80) */, ');
      SQL.Add('MARCA                 NOME /* NOME = VARCHAR(80) */, ');
      SQL.Add('QTD_PRODUTO           ESTOQUE_LOCACAO_M1 /* ESTOQUE_LOCACAO_M1 = DECIMAL(10,2) DEFAULT 0 */, ');
      SQL.Add('QTD_DIAS              SMALLINT, ');
      SQL.Add('VALOR_PRODUTO_N_DIAS  PRECO_LOCACAO_M1 /* PRECO_LOCACAO_M1 = NUMERIC(11,3) DEFAULT 0 */, ');
      SQL.Add('VALOR_LOCACAO         PRECO_LOCACAO_M1 /* PRECO_LOCACAO_M1 = NUMERIC(11,3) DEFAULT 0 */, ');
      SQL.Add('VALOR_RECEBIDO        PRECO_LOCACAO_M1 /* PRECO_LOCACAO_M1 = NUMERIC(11,3) DEFAULT 0 */, ');
      SQL.Add('VALOR_EM_ABERTO       PRECO_LOCACAO_M1 /* PRECO_LOCACAO_M1 = NUMERIC(11,3) DEFAULT 0 */, ');
      SQL.Add('FLAG_PAGO             FLAG_SIMPLES, ');
      SQL.Add('CODIGO_CTASRECEBER    CODIGO DEFAULT 0  ');
      SQL.Add(');                                      ');
   end;
   vsErro1 := 'A tabela de Ítens das Locacoes foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Tabelade de ítens das Locações já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
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
      SQL.Add('CREATE GENERATOR GEN_LOC_M1_LOCACAO_ITENS_ID;');
   end;
   vsErro1 := 'Generator  de ítens das Locações foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Generator de ítens das Locações já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;

      end;
   end;
   //
   // --> Criando a Trigger do Generator
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add(' CREATE OR ALTER TRIGGER LOC_M1_LOCACAO_ITENS_BI FOR LOC_M1_LOCACAO_ITENS ');
      SQL.Add(' ACTIVE BEFORE INSERT POSITION 0                                          ');
      SQL.Add(' As                                                                       ');
      SQL.Add(' Begin                                                                    ');
      SQL.Add('   If (New.Codigo Is Null) Then                                           ');
      SQL.Add('     New.Codigo = Gen_id(Gen_loc_m1_locacao_itens_id,1);                  ');
      SQL.Add(' End     ');
   end;
   vsErro1 := 'Trigger do Generetor  de cabeçalhodas Locações foi criada corretamente.'+#13;
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
         vsErro1 := 'Trigger do Generetor  de ítens das Locações já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   //
   // --> Criando o Comentário de Colunas
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add(' COMMENT ON COLUMN LOC_M1_LOCACAO_ITENS.VALOR_PRODUTO_N_DIAS IS ');
      SQL.Add(#39+'Extraído da tabela de preços, de acordo com a quantidade de dias'+#39+' ;');
   end;
   vsErro1 := 'Comentário de ítens das Locações foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Comentário de ítens das Locações já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
      end;
   end;
end;


function TDAO_LocacoesItens_FD.GetId(vsId: String): Boolean;
begin
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_LOCACAO_ITENS') ;
      SQL.Add(' Where CODIGO = :sId ');
      ParamByName('sId').Value := vsId;
   End;
   try
      Query.Prepare;
      Query.Open;
      DataSOurce.DataSet.Active := True;
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


function TDAO_LocacoesItens_FD.GetProdutos: TStringList;
begin
   Strlst_PRODUTOs.Clear;
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select CODIGO, PRODUTO From LOC_M1_PRODUTOS ');
      SQL.Add(' WHERE PRO.LIXEIRA =''NAO'' order by PRO.PRODUTO ); ');
   end;
   try
      Query.Prepare;
      Query.Active;
      DataSOURCE.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Strlst_PRODUTOs.Append('[ERRO]');
         Result := Strlst_PRODUTOs;
         Showmessage ('[Model] Erro ao acessar os dados dos Produtos: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   while not (Query.Eof) do
   begin
      Strlst_PRODUTOs.Append(Query.FieldByName('PRODUTO').AsString.ToUpper);
      Query.Next;
   end;
   Result := Strlst_PRODUTOs;
end;


function TDAO_LocacoesItens_FD.GetCodigoProdutos: TStringList;
begin
   Strlst_CODIGOPRODUTOS.Clear;
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select CODIGO, PRODUTO From LOC_M1_PRODUTOS ');
      SQL.Add(' WHERE PRO.LIXEIRA =''NAO'' order by PRO.PRODUTO ); ');
   end;
   try
      Query.Prepare;
      Query.Active;
      DataSOURCE.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Strlst_CODIGOPRODUTOS.Append('[ERRO]');
         Result := Strlst_CODIGOPRODUTOS;
         Showmessage ('[Model] Erro ao acessar os dados dos Produtos: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   while not (Query.Eof) do
   begin
      Strlst_CODIGOPRODUTOS.Append(Query.FieldByName('CODIGO').AsString.ToUpper);
      Query.Next;
   end;
   Result := Strlst_CODIGOPRODUTOS;
end;


function TDAO_LocacoesItens_FD.GetDadosDoProduto (vsCodigoProduto: String): boolean;
begin
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_PRODUTOS AS PRO, LOC_M1_PRODUTOSESTOQUE AS STK, LOC_M1_PRODUTOSPRECOS AS PPRECO ');
      SQL.Add(' Where CODIGO = :sCodigoProduto ');
      ParamByName('sCodigoProduto').Value := vsCodigoProduto;
   End;
   try
      Query.Prepare;
      Query.Open;
      DataSOurce.DataSet.Active := True;
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


function TDAO_LocacoesItens_FD.Post (ORM: TORM_LOC_M1_LocacaoItens; vbCommit: Boolean): Boolean;
VAR
   vsErro1 : String;
   viGenerator : Integer;
begin
   // -->Capturar o Gerador
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select gen_id(GEN_LOC_M1_LOCACAO_ID,0) as Generator from rdb$database');
      Open;
      viGenerator := FieldByName('Generator').AsInteger;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   with Query do
   begin
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add(' Insert into LOC_M1_LOCACAO_ITENS (');
      SQL.Add(' CODIGO                ');
      SQL.Add(',CODIGO_LOCACAO        ');
      SQL.Add(',GRUPO                 ');
      SQL.Add(',PRODUTO               ');
      SQL.Add(',MARCA                 ');
      SQL.Add(',QTD_PRODUTO           ');
      SQL.Add(',QTD_DIAS              ');
      SQL.Add(',VALOR_PRODUTO_N_DIAS  ');
      SQL.Add(',VALOR_LOCACAO         ');
      SQL.Add(',VALOR_RECEBIDO        ');
      SQL.Add(',VALOR_EM_ABERTO       ');
      SQL.Add(',FLAG_PAGO             ');
      SQL.Add(',CODIGO_CTASRECEBER    ') ;
      SQL.Add(' ) Values (');
      SQL.Add('  :iCODIGO              ');
      SQL.Add(', :iCODIGO_LOCACAO      ');
      SQL.Add(', :iGRUPO               ');
      SQL.Add(', :iPRODUTO             ');
      SQL.Add(', :iMARCA               ');
      SQL.Add(', :iQTD_PRODUTO         ');
      SQL.Add(', :iQTD_DIAS            ');
      SQL.Add(', :iVALOR_PRODUTO_N_DIAS');
      SQL.Add(', :iVALOR_LOCACAO       ');
      SQL.Add(', :iVALOR_RECEBIDO      ');
      SQL.Add(', :iVALOR_EM_ABERTO     ');
      SQL.Add(', :iFLAG_PAGO           ');
      SQL.Add(', :iCODIGO_CTASRECEBER  ');
      ParamByName(Trim('iCODIGO               ')).Value := ORM.CODIGo               ;
      ParamByName(Trim('iCODIGO_LOCACAO       ')).Value := viGenerator.ToString     ;
      ParamByName(Trim('iGRUPO                ')).Value := ORM.GRUPO                ;
      ParamByName(Trim('iPRODUTO              ')).Value := ORM.PRODUTO              ;
      ParamByName(Trim('iMARCA                ')).Value := ORM.MARCA                ;
      ParamByName(Trim('iQTD_PRODUTO          ')).Value := ORM.QTD_PRODUTO          ;
      ParamByName(Trim('iQTD_DIAS             ')).Value := ORM.QTD_DIAS             ;
      ParamByName(Trim('iVALOR_PRODUTO_N_DIAS ')).Value := ORM.VALOR_PRODUTO_N_DIAS ;
      ParamByName(Trim('iVALOR_LOCACAO        ')).Value := ORM.VALOR_LOCACAO        ;
      ParamByName(Trim('iVALOR_RECEBIDO       ')).Value := ORM.VALOR_RECEBIDO       ;
      ParamByName(Trim('iVALOR_EM_ABERTO      ')).Value := ORM.VALOR_EM_ABERTO      ;
      ParamByName(Trim('iFLAG_PAGO            ')).Value := ORM.FLAG_PAGO            ;
      ParamByName(Trim('iCODIGO_CTASRECEBER   ')).Value := ORM.CODIGO_CTASRECEBER   ;
   end;
   try
      with Query do
      begin
         ExecSQL;
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
      end;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Falha ao ítens dados do cabeçalho da Locação: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;


function TDAO_LocacoesItens_FD.Put (ORM: TORM_LOC_M1_LocacaoItens; vbCommit: Boolean): Boolean;
VAR
   vsErro1 : String;
   viGenerator : Integer;
begin
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   with Query do
   begin
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add('Update LOC_M1_LOCACAO_ITENS');
      SQL.Add(' Set ');
      SQL.Add(',GRUPO                 = :iGRUPO                 ');
      SQL.Add(',PRODUTO               = :iPRODUTO               ');
      SQL.Add(',MARCA                 = :iMARCA                 ');
      SQL.Add(',QTD_PRODUTO           = :iQTD_PRODUTO           ');
      SQL.Add(',QTD_DIAS              = :iQTD_DIAS              ');
      SQL.Add(',VALOR_PRODUTO_N_DIAS  = :iVALOR_PRODUTO_N_DIAS  ');
      SQL.Add(',VALOR_LOCACAO         = :iVALOR_LOCACAO         ');
      SQL.Add(',VALOR_RECEBIDO        = :iVALOR_RECEBIDO        ');
      SQL.Add(',VALOR_EM_ABERTO       = :iVALOR_EM_ABERTO       ');
      SQL.Add(',FLAG_PAGO             = :iFLAG_PAGO             ');
      SQL.Add(',CODIGO_CTASRECEBER    = :iCODIGO_CTASRECEBER    ') ;
      SQL.Add('   WHERE CODIGO = :iCODIGO; ');
      ParamByName(Trim('iGRUPO                 ')).Value := ORM.GRUPO                ;
      ParamByName(Trim('iPRODUTO               ')).Value := ORM.PRODUTO              ;
      ParamByName(Trim('iMARCA                 ')).Value := ORM.MARCA                ;
      ParamByName(Trim('iQTD_PRODUTO           ')).Value := ORM.QTD_PRODUTO          ;
      ParamByName(Trim('iQTD_DIAS              ')).Value := ORM.QTD_DIAS             ;
      ParamByName(Trim('iVALOR_PRODUTO_N_DIAS  ')).Value := ORM.VALOR_PRODUTO_N_DIAS ;
      ParamByName(Trim('iVALOR_LOCACAO         ')).Value := ORM.VALOR_LOCACAO        ;
      ParamByName(Trim('iVALOR_RECEBIDO        ')).Value := ORM.VALOR_RECEBIDO       ;
      ParamByName(Trim('iVALOR_EM_ABERTO       ')).Value := ORM.VALOR_EM_ABERTO      ;
      ParamByName(Trim('iFLAG_PAGO             ')).Value := ORM.FLAG_PAGO            ;
      ParamByName(Trim('iCODIGO                ')).Value := ORM.CODIGO               ;
      ParamByName(Trim('iCODIGO_CTASRECEBER   ')).Value := ORM.CODIGO_CTASRECEBER   ;
   end;
   try
      with Query do
      begin
         ExecSQL;
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
      end;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Falha ao atualizar dados do ítens da Locação: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;

end.
