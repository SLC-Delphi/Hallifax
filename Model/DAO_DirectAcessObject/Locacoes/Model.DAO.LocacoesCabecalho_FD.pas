unit Model.DAO.LocacoesCabecalho_FD;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Classes,
  Model.DAO.LocacoesCabecalhoItens_FD_Interface,
  Model.Conexao_FDAC,
  MODEL.ORM_Loc_M1_LocacaoCabecalho,
  MODEL.ORM_Loc_M1_LocacaoPgtoItens, IBX.IBDatabase, Vcl.Dialogs;

  Type TDAO_LocacoesCabecalho_FD = Class (TInterfacedObject, IDAO_LocacoesCabecalho)
     Public
      FD_Componente: TConexao_FDAC;
      Query : TFDQuery;
      DataSource : TDataSource;
      Function Get(vsCampos, vsCondicao1, vsCondicao2, vsPeriodo, vsOrdem: String): Boolean;
      Function GetId(vsId: String): Boolean;
      function Post (ORM: TORM_LOC_M1_LOCACAO_CABECALHO): Boolean;
      Function Put (ORM: TORM_LOC_M1_LOCACAO_CABECALHO): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_LocacoesCabecalho;
      Constructor Create;
      Destructor Destroy; Override;
  end;

implementation

uses
  System.SysUtils;

{ TDAO_LocacoesCabecalho_FD }

class function TDAO_LocacoesCabecalho_FD.New: IDAO_LocacoesCabecalho;
begin
    Self.Create;
end;


constructor TDAO_LocacoesCabecalho_FD.Create;
begin
   FD_Componente:= TConexao_FDAC.Create;
   Query := TFDQuery.Create(Nil);
   Query.Connection := FD_Componente.FConnection;;
   Query.Transaction := FD_Componente.FTransaction;
   DataSource := TDataSource.Create(Nil);
   DataSource.DataSet := Query;
end;


destructor TDAO_LocacoesCabecalho_FD.Destroy;
begin
  inherited;
   FD_Componente.DisposeOf;
   Query.DisposeOf;
   DataSource.DisposeOf;
end;


function TDAO_LocacoesCabecalho_FD.CriarTabela: String;
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
      SQL.Add('CREATE TABLE LOC_M1_LOCACAO (           ');
      SQL.Add('CODIGO                CODIGO,           ');
      SQL.Add('CODEMPRESA            CODEMPRESA,       ');
      SQL.Add('DATA_LOCACAO          DATE,             ');
      SQL.Add('CODIGO_CLIENTE        CODIGO,           ');
      SQL.Add('CLIENTE               NOME,             ');
      SQL.Add('ENDERECO_ENTREGA      NOME,             ');
      SQL.Add('NUMEND_ENTREGA        VARCHAR(15),      ');
      SQL.Add('BAIRRO_ENTREGA        NOME,             ');
      SQL.Add('CIDADE_ENTREGA        NOME,             ');
      SQL.Add('CONTATO_ENTREGA       NOME,             ');
      SQL.Add('FONE_CONTATO_ENTREGA  FONE_CELULAR,     ');
      SQL.Add('OBSERVACAO            OBSERVACAO_CURTA, ');
      SQL.Add('FLAG_LOC_EM_ABERTO    FLAG_SIMPLES,     ');
      SQL.Add('FLAG_NOVA_RENOVADA    VARCHAR(10),      ');
      SQL.Add('SITUACAO_PAGAR        VARCHAR(2),       ');
      SQL.Add('DATA_ULTIMO_PGTO      DATE,             ');
      SQL.Add('QTD_DIAS              SMALLINT,         ');
      SQL.Add('TOTAL_LOCACAO         PRECO_PGTO_M1,    ');
      SQL.Add('TOTAL_RECEBIDO        PRECO_PGTO_M1,    ');
      SQL.Add('TOTAL_A_RECEBER       PRECO_PGTO_M1,    ');
      SQL.Add('DT_UMOD               DATE,             ');
      SQL.Add('HORA_UMOD             TIME,             ');
      SQL.Add('USUARIO               NOME              ');
      SQL.Add(');                                      ');
   end;
   vsErro1 := 'A tabela de Cabeçalho das Locacoes foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Tabelade de cabeçalhodas Locações já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
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
      SQL.Add('CREATE SEQUENCE GEN_LOC_M1_LOCACAO_ID');
   end;
   vsErro1 := 'Generator  de cabeçalho das Locações foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Generator de cabeçalho das Locações já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
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
      SQL.Add('create trigger loc_m1_locacao_bi for loc_m1_locacao ');
      SQL.Add('active before insert position 0 ');
      SQL.Add('as ');
      SQL.Add('begin ');
      SQL.Add('if (new.codigo is null) then ');
      SQL.Add('    new.codigo = gen_id(gen_loc_m1_locacao_id,1); ');
      SQL.Add('end ');
   end;
   vsErro1 := 'Trigger do Generetor de cabeçalho das Locações foi criada corretamente.'+#13;
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
         vsErro1 := 'Trigger do Generetor  de cabeçalho das Locações já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
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
      SQL.Add('COMMENT ON COLUMN LOC_M1_LOCACAO.SITUACAO_PAGAR IS ');
      SQL.Add(#39+'  NP = Nao Paga          ');
      SQL.Add(' PP = Parcialmente Paga ');
      SQL.Add(' TP = Totalmente Paga' +#39+ '; ');
   end;
   vsErro1 := 'Comentário cabeçalho das Locações foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Comentário do cabeçalho das Locações já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
      end;
   end;
end;


function TDAO_LocacoesCabecalho_FD.GetId(vsId: String): Boolean;
begin
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_LOCACAO') ;
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


function TDAO_LocacoesCabecalho_FD.Get(vsCampos, vsCondicao1, vsCondicao2, vsPeriodo, vsOrdem: String): Boolean;
var
   vsQuery, vsQueryPediodo: String;
   vsIniQuery: String;
Begin
   DataSource.DataSet.Close;
   vsIniQuery := '';
   with Query do
   begin
      if vsPeriodo='' then
         vsPeriodo := 'ANUAL';
      if vsCampos = '' then
         vsCampos := '*';
      vsIniQuery :='Select '+vsCampos + ' From LOC_M1_LOCACAO Where (FLAG_LOC_EM_ABERTO = '+ QuotedStr('SIM')+') ';
      if vsPeriodo= 'SEMESTRAL' then
         vsQueryPediodo:= ' And (DATA_LOCACAO <= ' +DateToStr(IncMonth(Date,-4))+ ' and DATA_LOCACAO >= ' +DateToStr(IncMonth(Date,+2)) +') ';
      if vsPeriodo= 'ANUAL' then
         vsQueryPediodo:= ' And (DATA_LOCACAO <= ' +DateToStr(IncMonth(Date,-8))+ ' and DATA_LOCACAO >= ' +DateToStr(IncMonth(Date,+4)) +') ';
      if vsPeriodo= 'TODOS' Then
         vsQueryPediodo:= ' ';
      Close;
      SQL.Clear;
      if not(vsCondicao1 = '') then
      begin
         SQL.Add(vsIniQuery +vsQueryPediodo+ ' and ( CLIENTE CONTAINING '+QuotedStr(vsCondicao1)+' ) ');
      end
      else
         SQL.Add(vsIniQuery  +vsQueryPediodo);
      if not(vsCondicao2 = '') then
      begin
         SQL.Add(' AND '+vsCondicao2+ ' ');
      end;
      if (vsOrdem = '') then
         vsOrdem := 'DATA_LOCACAO';
      SQL.Add(' order by ' + vsOrdem);
      vsQuery := SQL.Text;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteProduto.Txt');
   end;
   try
      Query.Prepare;
      Query.Open;
      DataSource.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Result := False;
         Showmessage ('[Model] Erro ao acessar os dados das locações: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_LocacoesCabecalho_FD.Post(ORM: TORM_LOC_M1_LOCACAO_CABECALHO): Boolean;
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
      SQL.Add(' Insert into LOC_M1_LOCACAO (');
      SQL.Add(' CODIGO                ');
      SQL.Add(',CODEMPRESA            ');
      SQL.Add(',DATA_LOCACAO          ');
      SQL.Add(',CODIGO_CLIENTE        ');
      SQL.Add(',CLIENTE               ');
      SQL.Add(',ENDERECO_ENTREGA      ');
      SQL.Add(',NUMEND_ENTREGA        ');
      SQL.Add(',BAIRRO_ENTREGA        ');
      SQL.Add(',CIDADE_ENTREGA        ');
      SQL.Add(',CONTATO_ENTREGA       ');
      SQL.Add(',FONE_CONTATO_ENTREGA  ');
      SQL.Add(',OBSERVACAO            ');
      SQL.Add(',FLAG_LOC_EM_ABERTO    ');
      SQL.Add(',FLAG_NOVA_RENOVADA    ');
      SQL.Add(',SITUACAO_PAGAR        ');
      SQL.Add(',DATA_ULTIMO_PGTO     ');
      SQL.Add(',QTD_DIAS              ');
      SQL.Add(',TOTAL_LOCACAO        ');
      SQL.Add(',TOTAL_RECEBIDO       ');
      SQL.Add(',TOTAL_A_RECEBER      ');
      SQL.Add(',DT_UMOD              ');
      SQL.Add(',HORA_UMOD            ');
      SQL.Add(',USUARIO              ');
      SQL.Add(' ) Values (');
      SQL.Add('  :iCODIGO              ');
      SQL.Add(', :iCODEMPRESA          ');
      SQL.Add(', :iDATAHORA_LOCACAO    ');
      SQL.Add(', :iCODIGO_CLIENTE      ');
      SQL.Add(', :iCLIENTE             ');
      SQL.Add(', :iENDERECO_ENTREGA    ');
      SQL.Add(', :iNUMEND_ENTREGA      ');
      SQL.Add(', :iBAIRRO_ENTREGA      ');
      SQL.Add(', :iCIDADE_ENTREGA      ');
      SQL.Add(', :iCONTATO_ENTREGA     ');
      SQL.Add(', :iFONE_CONTATO_ENTREGA');
      SQL.Add(', :iOBSERVACAO          ');
      SQL.Add(', :iFLAG_LOC_EM_ABERTO  ');
      SQL.Add(', :iFLAG_NOVA_RENOVADA  ');
      SQL.Add(', :iSITUACAO_PAGAR      ');
      SQL.Add(', :iDATA_ULTIMO_PGTO    ');
      SQL.Add(', :iQTD_DIAS             ');
      SQL.Add(', :iTOTAL_LOCACAO       ');
      SQL.Add(', :iTOTAL_RECEBIDO      ');
      SQL.Add(', :iTOTAL_A_RECEBER     ');
      SQL.Add(', :iDT_UMOD             ');
      SQL.Add(', :iHORA_UMOD           ');
      SQL.Add(', :iUSUARIO             ');
      SQL.Add('  ) ');
      ParamByName(Trim('iCODIGO               ')).Value := ORM.CODIGO ;
      ParamByName(Trim('iCODEMPRESA           ')).Value := ORM.CODEMPRESA   ;
      ParamByName(Trim('iDATA_LOCACAO         ')).Value := StringReplace(ORM.DATA_LOCACAO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iCODIGO_CLIENTE       ')).Value := ORM.CODIGO_CLIENTE;
      ParamByName(Trim('iCLIENTE              ')).Value := ORM.CLIENTE;
      ParamByName(Trim('iENDERECO_ENTREGA     ')).Value := ORM.ENDERECO_ENTREGA;
      ParamByName(Trim('iNUMEND_ENTREGA       ')).Value := ORM.NUMEND_ENTREGA;
      ParamByName(Trim('iBAIRRO_ENTREGA       ')).Value := ORM.BAIRRO_ENTREGA;
      ParamByName(Trim('iCIDADE_ENTREGA       ')).Value := ORM.CIDADE_ENTREGA;
      ParamByName(Trim('iCONTATO_ENTREGA      ')).Value := ORM.CONTATO_ENTREGA;
      ParamByName(Trim('iFONE_CONTATO_ENTREGA ')).Value := ORM.FONE_CONTATO_ENTREGA;
      ParamByName(Trim('iOBSERVACAO           ')).Value := ORM.OBSERVACAO;
      ParamByName(Trim('iFLAG_LOC_EM_ABERTO   ')).Value := ORM.FLAG_LOC_EM_ABERTO;
      ParamByName(Trim('iFLAG_NOVA_RENOVADA   ')).Value := ORM.FLAG_NOVA_RENOVADA;
      ParamByName(Trim('iSITUACAO_PAGAR       ')).Value := ORM.SITUACAO_PAGAR;
      ParamByName(Trim('iDATA_ULTIMO_PGTO     ')).Value := StringReplace(ORM.DATA_ULTIMO_PGTO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iQTD_DIAS             ')).Value := ORM.QTD_DIAS ;
      ParamByName(Trim('iTOTAL_LOCACAO        ')).Value := ORM.TOTAL_LOCACAO ;
      ParamByName(Trim('iTOTAL_RECEBIDO       ')).Value := ORM.TOTAL_RECEBIDO    ;
      ParamByName(Trim('iTOTAL_A_RECEBER      ')).Value := ORM.TOTAL_A_RECEBER    ;
      ParamByName(Trim('iDT_UMOD              ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iHORA_UMOD            ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('iUSUARIO              ')).Value := ORM.USUARIO ;
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
         vsErro1 := 'Falha ao inserir dados do cabeçalho da Locação: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;


function TDAO_LocacoesCabecalho_FD.Put(ORM: TORM_LOC_M1_LOCACAO_CABECALHO): Boolean;
VAR
   vsErro1 : String;
   viGenerator : Integer;
begin
   // -->Capturar o Gerador
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select gen_id(GEN_LOC_M1_PRODUTOS_ID,0) as Generator from rdb$database');
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
      SQL.Add('Update LOC_M1_LOCACAO');
      SQL.Add(' Set ');
      SQL.Add(' CODEMPRESA            = :iCODEMPRESA          ');
      SQL.Add(',DATA_LOCACAO          = :iDATAHORA_LOCACAO    ');
      SQL.Add(',CODIGO_CLIENTE        = :iCODIGO_CLIENTE      ');
      SQL.Add(',CLIENTE               = :iCLIENTE             ');
      SQL.Add(',ENDERECO_ENTREGA      = :iENDERECO_ENTREGA    ');
      SQL.Add(',NUMEND_ENTREGA        = :iNUMEND_ENTREGA      ');
      SQL.Add(',BAIRRO_ENTREGA        = :iBAIRRO_ENTREGA      ');
      SQL.Add(',CIDADE_ENTREGA        = :iCIDADE_ENTREGA      ');
      SQL.Add(',CONTATO_ENTREGA       = :iCONTATO_ENTREGA     ');
      SQL.Add(',FONE_CONTATO_ENTREGA  = :iFONE_CONTATO_ENTREGA');
      SQL.Add(',OBSERVACAO            = :iOBSERVACAO          ');
      SQL.Add(',FLAG_LOC_EM_ABERTO    = :iFLAG_LOC_EM_ABERTO  ');
      SQL.Add(',FLAG_NOVA_RENOVADA    = :iFLAG_NOVA_RENOVADA  ');
      SQL.Add(',SITUACAO_PAGAR        = :iSITUACAO_PAGAR      ');
      SQL.Add(',DATA_ULTIMO_PGTO      = :iDATA_ULTIMO_PGTO    ');
      SQL.Add(',QTD_DIAS              = :iQTD_DIAS            ');
      SQL.Add(',TOTAL_LOCACAO         = :iTOTAL_LOCACAO       ');
      SQL.Add(',TOTAL_RECEBIDO        = :iTOTAL_RECEBIDO      ');
      SQL.Add(',TOTAL_A_RECEBER       = :iTOTAL_A_RECEBER     ');
      SQL.Add(',DT_UMOD               = :iDT_UMOD             ');
      SQL.Add(',HORA_UMOD             = :iHORA_UMOD           ');
      SQL.Add(',USUARIO               = :iUSUARIO             ');
      SQL.Add('   WHERE CODIGO = :uCODIGO; ');
      ParamByName(Trim('iCODIGO               ')).Value := ORM.CODIGO ;
      ParamByName(Trim('iCODEMPRESA           ')).Value := ORM.CODEMPRESA   ;
      ParamByName(Trim('iDATA_LOCACAO         ')).Value := StringReplace(ORM.DATA_LOCACAO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iCODIGO_CLIENTE       ')).Value := ORM.CODIGO_CLIENTE;
      ParamByName(Trim('iCLIENTE              ')).Value := ORM.CLIENTE;
      ParamByName(Trim('iENDERECO_ENTREGA     ')).Value := ORM.ENDERECO_ENTREGA;
      ParamByName(Trim('iNUMEND_ENTREGA       ')).Value := ORM.NUMEND_ENTREGA;
      ParamByName(Trim('iBAIRRO_ENTREGA       ')).Value := ORM.BAIRRO_ENTREGA;
      ParamByName(Trim('iCIDADE_ENTREGA       ')).Value := ORM.CIDADE_ENTREGA;
      ParamByName(Trim('iCONTATO_ENTREGA      ')).Value := ORM.CONTATO_ENTREGA;
      ParamByName(Trim('iFONE_CONTATO_ENTREGA ')).Value := ORM.FONE_CONTATO_ENTREGA;
      ParamByName(Trim('iOBSERVACAO           ')).Value := ORM.OBSERVACAO;
      ParamByName(Trim('iFLAG_LOC_EM_ABERTO   ')).Value := ORM.FLAG_LOC_EM_ABERTO;
      ParamByName(Trim('iFLAG_NOVA_RENOVADA   ')).Value := ORM.FLAG_NOVA_RENOVADA;
      ParamByName(Trim('iSITUACAO_PAGAR       ')).Value := ORM.SITUACAO_PAGAR;
      ParamByName(Trim('iDATA_ULTIMO_PGTO     ')).Value := StringReplace(ORM.DATA_ULTIMO_PGTO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iQTD_DIAS             ')).Value := ORM.QTD_DIAS ;
      ParamByName(Trim('iTOTAL_LOCACAO        ')).Value := ORM.TOTAL_LOCACAO ;
      ParamByName(Trim('iTOTAL_RECEBIDO       ')).Value := ORM.TOTAL_RECEBIDO    ;
      ParamByName(Trim('iTOTAL_A_RECEBER      ')).Value := ORM.TOTAL_A_RECEBER    ;
      ParamByName(Trim('iDT_UMOD              ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iHORA_UMOD            ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('iUSUARIO              ')).Value := ORM.USUARIO ;
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
         vsErro1 := 'Falha ao atualizar dados do cabeçalho da Locação: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;

end.
