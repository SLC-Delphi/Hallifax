unit Model.DAO.Cad_Permissoes_FDAC;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ,
  Model.Conexao_FDAC, Model.DAO.Cad_Permissoes_Interface, System.SysUtils,
  Model.ORM_Loc_M1_Cad_Permissoes;

Type
   TDAO_Cad_Permissoes_FDAC = Class(TInterfacedObject, IDAO_Cad_Permissoes)
   Public
      Query: TFDQuery;
      DataSet: TDataSource;
      FDAC_Componente: TConexao_FDAC;
      Function GetSimple(vsLixeira: String): Boolean;
      Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
      Function GetId(vsId, vsLixeira: String): Boolean;
      function Post (ORM: TORM_LOC_M1_CAD_PERMISSOES): Boolean;
      Function Put (ORM: TORM_LOC_M1_CAD_PERMISSOES): Boolean;
      function Delete (ORM: TORM_LOC_M1_CAD_PERMISSOES): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_Cad_Permissoes;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_Cad_Permissoes_FDAC }



class function TDAO_Cad_Permissoes_FDAC.New: IDAO_Cad_Permissoes;
begin
   Self.Create;
end;

constructor TDAO_Cad_Permissoes_FDAC.Create;
begin
   FDAC_Componente := TConexao_FDAC.Create;
   Query:= TFDQuery.Create(Nil);
//   Query.Connection := TFDConnection(FDAC_Componente.Connection);
   Query.Connection := FDAC_Componente.FConnection;
   Query.Transaction := FDAC_Componente.FTransaction;
   DataSet:= TDataSource.Create(Nil);
   DataSet.DataSet := Query;
end;


destructor TDAO_Cad_Permissoes_FDAC.Destroy;
begin
  inherited;
   FDAC_Componente.DisposeOf;
   Query.DisposeOf;
   DataSet.DisposeOf;
end;

function TDAO_Cad_Permissoes_FDAC.GetSimple(vsLixeira: String): Boolean;
begin
   // desnecessário
end;

function TDAO_Cad_Permissoes_FDAC.Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
begin
   // desnecessário
end;

function TDAO_Cad_Permissoes_FDAC.GetId(vsId, vsLixeira: String): Boolean;
begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_CAD_PERMISSOES') ;
      SQL.Add(' Where CODIGO_USUARIO = :sId ');
      ParamByName('sId').Value := vsId;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SQLPermissoesQuery.Txt');
   End;
   try
      Query.Prepare;
      Query.Open;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Result := False;
         ShowMessage('[MODEL-GetID] Erro ao acessar os dados: ' +#13+#13+ nomeErro.Message );
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_Cad_Permissoes_FDAC.Post(ORM: TORM_LOC_M1_CAD_PERMISSOES): Boolean;
VAR
   vsErro1 : String;
begin
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   with Query do
   begin
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add(' Insert into LOC_M1_CAD_PERMISSOES (');
      SQL.Add('CODIGO_USUARIO          ');      SQL.Add(',CLIENTES_CONSULTA      ');
      SQL.Add(',CLIENTES_RELATORIO     ');      SQL.Add(',FORNECEDORES_CONSULTA  ');
      SQL.Add(',GRUPOS_CONSULTA        ');      SQL.Add(',PERMISSOES             ');
      SQL.Add(',USUARIOS               ');      SQL.Add(',PRODUTOS               ');
      SQL.Add(',PRODUTO_PRECOS         ');      SQL.Add(',PRODUTO_ESTOQUES       ');
      SQL.Add(',PRODUTO_MANUTENCOES    ');      SQL.Add(',LOCACAO_LANCAMENTO     ');
      SQL.Add(',LOCACAO_CANCELAMENTO   ');      SQL.Add(',LOCACAO_EDICAO         ');
      SQL.Add(',RELATORIOS_ESTOQUES    ');      SQL.Add(',RELATORIOS_LOCACAO     ');
      SQL.Add(',DT_UMOD                ');
      SQL.Add(',USUARIO                ');
      SQL.Add(' ) Values ( ');
      SQL.Add(QuotedStr(ORM.CODIGO_USUARIO));
      SQL.Add(', '+ QuotedStr(ORM.CLIENTES_CONSULTA));
      SQL.Add(', '+ QuotedStr(ORM.CLIENTES_RELATORIO));
      SQL.Add(', '+ QuotedStr(ORM.FORNECEDORES_CONSULTA));
      SQL.Add(', '+ QuotedStr(ORM.GRUPOS_CONSULTA));
      SQL.Add(', '+ QuotedStr(ORM.PERMISSOES));
      SQL.Add(', '+ QuotedStr(ORM.USUARIOS));
      SQL.Add(', '+ QuotedStr(ORM.PRODUTOS));
      SQL.Add(', '+ QuotedStr(ORM.PRODUTO_PRECOS));
      SQL.Add(', '+ QuotedStr(ORM.PRODUTO_ESTOQUES));
      SQL.Add(', '+ QuotedStr(ORM.PRODUTO_MANUTENCOES));
      SQL.Add(', '+ QuotedStr(ORM.LOCACAO_LANCAMENTO));
      SQL.Add(', '+ QuotedStr(ORM.LOCACAO_CANCELAMENTO));
      SQL.Add(', '+ QuotedStr(ORM.LOCACAO_EDICAO));
      SQL.Add(', '+ QuotedStr(ORM.RELATORIOS_ESTOQUES));
      SQL.Add(', '+ QuotedStr(ORM.RELATORIOS_LOCACAO));
      SQL.Add(', '+ QuotedStr(StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll])));
      SQL.Add(', '+ QuotedStr(ORM.USUARIO));
      SQL.Add('  )');
//      SQL.Add(':iCODIGO_USUARIO');                 SQL.Add(', :iCLIENTES_CONSULTA');
//      SQL.Add(', :iCLIENTES_RELATORIO');           SQL.Add(', :iFORNECEDORES_CONSULTA');
//      SQL.Add(', :iGRUPOS_CONSULTA');              SQL.Add(', :iPERMISSOES');
//      SQL.Add(', :iUSUARIOS');                     SQL.Add(', :iPRODUTOS');
//      SQL.Add(', :iPRODUTO_PRECOS');               SQL.Add(', :iPRODUTO_ESTOQUES');
//      SQL.Add(', :iPRODUTO_MANUTENCOES');          SQL.Add(', :iLOCACAO_LANCAMENTO');
//      SQL.Add(', :iLOCACAO_CANCELAMENTO');         SQL.Add(', :iLOCACAO_EDICAO');
//      SQL.Add(', :iRELATORIOS_ESTOQUES');          SQL.Add(', :iRELATORIOS_LOCACAO');
//      SQL.Add(', :iDT_UMOD');                      SQL.Add(', :iUSUARIO');
//      SQL.Add('  )');
//      ParamByName('iCODIGO_USUARIO').Value        := ORM.CODIGO_USUARIO;
//      ParamByName('iCLIENTES_CONSULTA').Value     := ORM.CLIENTES_CONSULTA ;
//      ParamByName('iCLIENTES_RELATORIO').Value    := ORM.CLIENTES_RELATORIO ;
//      ParamByName('iFORNECEDORES_CONSULTA').Value := ORM.FORNECEDORES_CONSULTA ;
//      ParamByName('iGRUPOS_CONSULTA').Value       := ORM.GRUPOS_CONSULTA ;
//      ParamByName('iPERMISSOES').Value            := ORM.PERMISSOES ;
//      ParamByName('iUSUARIOS').Value              := ORM.USUARIOS ;
//      ParamByName('iPRODUTOS').Value              := ORM.PRODUTOS ;
//      ParamByName('iPRODUTO_PRECOS').Value        := ORM.PRODUTO_PRECOS ;
//      ParamByName('iPRODUTO_ESTOQUES').Value      := ORM.PRODUTO_ESTOQUES ;
//      ParamByName('iPRODUTO_MANUTENCOES').Value   := ORM.PRODUTO_MANUTENCOES ;
//      ParamByName('iLOCACAO_LANCAMENTO').Value    := ORM.LOCACAO_LANCAMENTO ;
//      ParamByName('iLOCACAO_CANCELAMENTO').Value  := ORM.LOCACAO_CANCELAMENTO ;
//      ParamByName('iLOCACAO_EDICAO').Value        := ORM.LOCACAO_EDICAO ;
//      ParamByName('iRELATORIOS_ESTOQUES').Value   := ORM.RELATORIOS_ESTOQUES ;
//      ParamByName('iRELATORIOS_LOCACAO').Value    := ORM.RELATORIOS_LOCACAO ;
//      ParamByName('iDT_UMOD').Value               := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]) ;
//      ParamByName('iUSUARIO').Value               := ORM.USUARIO ;
   end;
   try
      with Query do
      begin
         ExecSQL;
         SQL.Clear;
         Params.Clear;
         SQL.Add('Update LOC_M1_CAD_USUARIO');
         SQL.Add(' Set ');
         SQL.Add('  FLAG_PERMISSAO =  :FLAG_PERMISSAO ');
         SQL.Add('   WHERE CODIGO = :uCODIGO_USUARIO; ');
         ParamByName('FLAG_PERMISSAO').AsString := 'SIM' ;
         ParamByName('uCODIGO_USUARIO').Value := Trim(ORM.CODIGO_USUARIO);
         ExecSQL;
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
      end; // with
   except on nomeErro: Exception do
      begin
         Result := False;
//         Query.SQL.SaveToFile('C:\DF_LocacaoM1\SQLPermissoesCRUD.Txt');
         vsErro1 := '[MODEL] Falha ao inserir os dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   Result := True;
end;


function TDAO_Cad_Permissoes_FDAC.Put(ORM: TORM_LOC_M1_CAD_PERMISSOES): Boolean;
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
      SQL.Add('Update LOC_M1_CAD_PERMISSOES');
      SQL.Add(' Set ');
      SQL.Add('  CLIENTES_CONSULTA =  :uCLIENTES_CONSULTA ');
      SQL.Add('  , CLIENTES_RELATORIO =  :uCLIENTES_RELATORIO ');
      SQL.Add('  , FORNECEDORES_CONSULTA =  :uFORNECEDORES_CONSULTA ');
      SQL.Add('  , GRUPOS_CONSULTA =  :uGRUPOS_CONSULTA ');
      SQL.Add('  , PERMISSOES =  :uPERMISSOES ');
      SQL.Add('  , USUARIOS =  :uUSUARIOS ');
      SQL.Add('  , PRODUTOS =  :uPRODUTOS ');
      SQL.Add('  , PRODUTO_PRECOS =  :uPRODUTO_PRECOS ');
      SQL.Add('  , PRODUTO_ESTOQUES =  :uPRODUTO_ESTOQUES ');
      SQL.Add('  , PRODUTO_MANUTENCOES =  :uPRODUTO_MANUTENCOES ');
      SQL.Add('  , LOCACAO_LANCAMENTO =  :uLOCACAO_LANCAMENTO ');
      SQL.Add('  , LOCACAO_CANCELAMENTO =  :uLOCACAO_CANCELAMENTO ');
      SQL.Add('  , LOCACAO_EDICAO =  :uLOCACAO_EDICAO ');
      SQL.Add('  , RELATORIOS_ESTOQUES =  :uRELATORIOS_ESTOQUES ');
      SQL.Add('  , RELATORIOS_LOCACAO =  :uRELATORIOS_LOCACAO ');
      SQL.Add('  , DT_UMOD =  :uDT_UMOD ');
      SQL.Add('  , USUARIO =  :uUSUARIO ');
      SQL.Add('   WHERE CODIGO_USUARIO = :uCODIGO_USUARIO; ');
        ParamByName('uCLIENTES_CONSULTA').AsString := ORM.CLIENTES_CONSULTA ;
      ParamByName('uCLIENTES_RELATORIO').AsString := ORM.CLIENTES_RELATORIO ;
      ParamByName('uFORNECEDORES_CONSULTA').AsString := ORM.FORNECEDORES_CONSULTA ;
      ParamByName('uGRUPOS_CONSULTA').AsString := ORM.GRUPOS_CONSULTA ;
      ParamByName('uPERMISSOES').AsString := ORM.PERMISSOES ;
      ParamByName('uUSUARIOS').AsString := ORM.USUARIOS ;
      ParamByName('uPRODUTOS').AsString := ORM.PRODUTOS ;
      ParamByName('uPRODUTO_PRECOS').AsString := ORM.PRODUTO_PRECOS ;
      ParamByName('uPRODUTO_ESTOQUES').AsString := ORM.PRODUTO_ESTOQUES ;
      ParamByName('uPRODUTO_MANUTENCOES').AsString := ORM.PRODUTO_MANUTENCOES ;
      ParamByName('uLOCACAO_LANCAMENTO').AsString := ORM.LOCACAO_LANCAMENTO ;
      ParamByName('uLOCACAO_CANCELAMENTO').AsString := ORM.LOCACAO_CANCELAMENTO ;
      ParamByName('uLOCACAO_EDICAO').AsString := ORM.LOCACAO_EDICAO ;
      ParamByName('uRELATORIOS_ESTOQUES').AsString := ORM.RELATORIOS_ESTOQUES ;
      ParamByName('uRELATORIOS_LOCACAO').AsString := ORM.RELATORIOS_LOCACAO ;
      ParamByName('uDT_UMOD').AsString := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName('uUSUARIO').Value := ORM.USUARIO ;
      ParamByName('uCODIGO_USUARIO').Value := Trim(ORM.CODIGO_USUARIO);
   end;
   try
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         Result := False;
//         Query.SQL.SaveToFile('C:\DF_LocacaoM1\SQLPermissoesCRUD.Txt');
         vsErro1 := '[MODEL] Falha ao atualizar os dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   Result := True;
end;


function TDAO_Cad_Permissoes_FDAC.Delete(ORM: TORM_LOC_M1_CAD_PERMISSOES): Boolean;
begin
//  Desnecessário, pois uma Usuario na lixeira vc não acessa as suas permissões.
end;


function TDAO_Cad_Permissoes_FDAC.CriarTabela: String;
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
      SQL.Add('CREATE TABLE LOC_M1_CAD_PERMISSOES (');
      SQL.Add('  CODIGO_USUARIO         CODIGO,');
      SQL.Add('  CLIENTES_CONSULTA      SMALLINT,');
      SQL.Add('  CLIENTES_RELATORIO     SMALLINT,');
      SQL.Add('  FORNECEDORES_CONSULTA  SMALLINT,');
      SQL.Add('  GRUPOS_CONSULTA        SMALLINT,');
      SQL.Add('  PERMISSOES             SMALLINT,');
      SQL.Add('  USUARIOS               SMALLINT,');                                    
      SQL.Add('  PRODUTOS               SMALLINT,');
      SQL.Add('  PRODUTO_PRECOS         SMALLINT,');
      SQL.Add('  PRODUTO_ESTOQUES       SMALLINT,');
      SQL.Add('  PRODUTO_MANUTENCOES    SMALLINT,');
      SQL.Add('  LOCACAO_LANCAMENTO     SMALLINT,');
      SQL.Add('  LOCACAO_CANCELAMENTO   SMALLINT,');
      SQL.Add('  LOCACAO_EDICAO         SMALLINT,');
      SQL.Add('  RELATORIOS_ESTOQUES    SMALLINT,');
      SQL.Add('  RELATORIOS_LOCACAO     SMALLINT,');
      SQL.Add('  DT_UMOD                DATE,');
      SQL.Add('  USUARIO                NOME');
      SQL.Add(');');
//      SQL.SaveToFile('C:\DF_LocacaoM1\SQLPermissoesCRUD.Txt');
   end;
   vsErro1 := 'A tabela de Permissoes foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Tabelade de Permissões já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
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

