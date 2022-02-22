unit Model.DAO.Cad_Usuario_FDAC;

interface

Uses
Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ,
  Model.Conexao_FDAC, Model.DAO.Cad_Usuario_Interface, System.SysUtils,
  Model.ORM_Loc_M1_Cad_Usuario;

Type
  TDAO_Cad_Usuario_FDAC = Class(TInterfacedObject, IDAO_Cad_Usuario)
   Public
      Query: TFDQuery;
      DataSet: TDataSource;
      FD_Componente: TConexao_FDAC;
//      ORM_USUARIO: TORM_LOC_M1_CAD_USUARIO;
      Function GetSimple(vsLixeira: String): Boolean;
      Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
      Function GetId(vsId, vsLixeira: String): Boolean;
      function Post (ORM: TORM_LOC_M1_CAD_USUARIO): Boolean;
      Function Put (ORM: TORM_LOC_M1_CAD_USUARIO): Boolean;
      function Delete (ORM: TORM_LOC_M1_CAD_USUARIO): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_Cad_Usuario;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_Cad_Usuario_FDAC }

class function TDAO_Cad_Usuario_FDAC.New: IDAO_Cad_Usuario;
begin
   Self.Create;
end;


constructor TDAO_Cad_Usuario_FDAC.Create;
begin
   FD_Componente := TConexao_FDAC.Create;
   Query:= TFDQuery.Create(Nil);
//   Query.Connection := TFDConnection(FD_Componente.Connection);
   Query.Connection := FD_Componente.FConnection;
   Query.Transaction := FD_Componente.FTransaction;
   DataSet:= TDataSource.Create(Nil);
   DataSet.DataSet := Query;
//   ORM_USUARIO := TORM_LOC_M1_CAD_USUARIO.Create;
end;


destructor TDAO_Cad_Usuario_FDAC.Destroy;
begin
  inherited;
  FD_Componente.DisposeOf;
  Query.DisposeOf;
  DataSet.DisposeOf;
//  ORM_USUARIO.DisposeOf;
end;


function TDAO_Cad_Usuario_FDAC.GetSimple(vsLixeira: String): Boolean;
begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_CAD_USUARIO WHERE LIXEIRA ='+ QuotedStr(vsLixeira) +' ');
      SQL.Add(' order by NOME_USUARIO');
   end;
   try
      Query.Prepare;
      Query.Active;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         ShowMessage('[MODEL-GetSimple] Erro ao acessar dados: ' +#13+#13+ nomeErro.Message);
         Result := False;
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_Cad_Usuario_FDAC.GetId(vsId, vsLixeira: String): Boolean;
begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_CAD_USUARIO') ;
      SQL.Add(' Where Codigo = :sId and LIXEIRA =' +QuotedStr(vsLixeira)+ ' ');
      SQL.Add(' order by NOME_USUARIO');
      ParamByName('sId').Value := vsId;
   End;
   try
      Query.Prepare;
      Query.Open;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         ShowMessage('[MODEL-GetID] Erro ao acessar os dados: ' +#13+#13+ nomeErro.Message);
         Result := False;
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_Cad_Usuario_FDAC.Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
var
   vsQuery: String;
   vsIniQuery: String;
Begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   DataSet.DataSet.Close;
   vsIniQuery := '';
   with Query do
   begin
      if vsCampos = '' then
         vsCampos := '*';
      vsIniQuery :='Select '+vsCampos + ' From LOC_M1_CAD_USUARIO Where (Lixeira = '+ QuotedStr(vsLixeira)+') ';
      Close;
      SQL.Clear;
      if not(vsCondicao = '') then
      begin
         SQL.Add(vsIniQuery + 'And NOME_USUARIO Containing :pCondicao ');
         ParamByName('pCondicao').AsString := vsCondicao;
      end
      else
         SQL.Add(vsIniQuery);
      if (vsOrdem = '') then
         vsOrdem := 'NOME_USUARIO';
      SQL.Add(' order by ' + vsOrdem);
      vsQuery := SQL.Text;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SqlCadUsuarioQuery.Txt');
   end;
   try
      Query.Prepare;
      Query.Open;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         ShowMessage('[MODEL-Get] Erro ao acessar dados: ' +#13+#13+ nomeErro.Message);
         Result := False;
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_Cad_Usuario_FDAC.Post (ORM: TORM_LOC_M1_CAD_USUARIO): Boolean;
VAR
   vsErro1 : String;
begin
   if Query.Transaction.Active = False then
      Query.Transaction.StartTransaction;
   Try
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add(' EXECUTE PROCEDURE CAD_LOC_M1_CAD_USUARIO (');
         SQL.Add(QuotedStr(ORM.CODEMPRESA.ToString) +', ');
         SQL.Add(QuotedStr(ORM.NOME_USUARIO) +', ');
         SQL.Add(QuotedStr(ORM.SENHA) +', ');
         SQL.Add(' ''NAO'', ');
         SQL.Add(QuotedStr(StringReplace(DateToStr(ORM.DATA_CADASTRO),'/','.',[]) ) +', ');
         SQL.Add(QuotedStr(StringReplace(DateToStr(ORM.DT_UMOD),'/','.',[]) ) +', ');
         SQL.Add(QuotedStr(TimeToStr(ORM.HR_UMOD)) +', ');
         SQL.Add(QuotedStr(ORM.USUARIO_UMOD) +', ');
         SQL.Add('    ''INSERIR'' ,');
         SQL.Add(' ''NAO'', ');
         SQL.Add('-1)');
//         SQL.SaveToFile('C:\DF_LocacaoM1\SqlCadUsuarioStoreProcedure.Txt');
         ExecSQL;
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
      end; // with
   except on nomeErro: Exception do
      begin
         Result := False;
         vsErro1 := '[MODEL] Falha ao inserir dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   Result := True;
end;


function TDAO_Cad_Usuario_FDAC.Put (ORM: TORM_LOC_M1_CAD_USUARIO): Boolean;
VAR
   vsErro1 : String;
begin
   if Query.Transaction.Active = False then
      Query.Transaction.StartTransaction;
   Try
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add(' EXECUTE PROCEDURE CAD_LOC_M1_CAD_USUARIO (');
         SQL.Add(QuotedStr(ORM.CODEMPRESA.ToString) +', ');
         SQL.Add(QuotedStr(ORM.NOME_USUARIO) +', ');
         SQL.Add(QuotedStr(ORM.SENHA) +', ');
         SQL.Add(' ''.'' ,');
         SQL.Add(' ''01.01.0001'', ');
         SQL.Add(QuotedStr(StringReplace(DateToStr(ORM.DT_UMOD),'/','.',[]) ) +', ');
         SQL.Add(QuotedStr(TimeToStr(ORM.HR_UMOD)) +', ');
         SQL.Add(QuotedStr(ORM.USUARIO_UMOD) +', ');
         SQL.Add('    ''ATUALIZAR'' ,');
         SQL.Add(' ''NAO'', ');
         SQL.Add(QuotedStr(ORM.CODIGO.ToString)+');');
//         SQL.SaveToFile('C:\DF_LocacaoM1\SqlCadUsuarioStoreProcedure.Txt');
         ExecSQL;
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
      end; // with
   except on nomeErro: Exception do
      begin
         Result := False;
         vsErro1 := '[MODEL] Falha ao Atualizar dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   Result := True;
end;


function TDAO_Cad_Usuario_FDAC.Delete (ORM: TORM_LOC_M1_CAD_USUARIO): Boolean;
VAR
   vsErro1 : String;
begin
   if Query.Transaction.Active = False then
      Query.Transaction.StartTransaction;
   Try
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add(' EXECUTE PROCEDURE CAD_LOC_M1_CAD_USUARIO (');
         SQL.Add(' ''1'' ,');
         SQL.Add(' ''.'' ,');
         SQL.Add(' ''.'' ,');
         SQL.Add(' ''.'' ,');
         SQL.Add(' ''01.01.0001'', ');
         SQL.Add(QuotedStr(StringReplace(DateToStr(ORM.DT_UMOD),'/','.',[]) ) +', ');
         SQL.Add(QuotedStr(TimeToStr(ORM.HR_UMOD)) +', ');
         SQL.Add(QuotedStr(ORM.USUARIO_UMOD) +', ');
         SQL.Add('    ''EXCLUIR'' ,');
         SQL.Add(' ''SIM'', ');
         SQL.Add(QuotedStr(ORM.CODIGO.ToString)+');');
//         SQL.SaveToFile('C:\DF_LocacaoM1\SqlCadUsuarioStoreProcedure.Txt');
         ExecSQL;
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
      end; // with
   except on nomeErro: Exception do
      begin
         Result := False;
         vsErro1 := '[MODEL] Falha ao atualizar dados/lixeira: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
   Result := True;
end;


function TDAO_Cad_Usuario_FDAC.CriarTabela: String;
var
   vsErro1, vsErro2, vsErro3: String;
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
      SQL.Add('CREATE TABLE LOC_M1_CAD_USUARIO (');
      SQL.Add('    CODIGO          CODIGO NOT NULL /* CODIGO = INTEGER NOT NULL */,   ');
      SQL.Add('    CODEMPRESA      CODEMPRESA /* CODEMPRESA = INTEGER DEFAULT 1 NOT NULL */,   ');
      SQL.Add('    NOME_USUARIO    NOME /* NOME = VARCHAR(80) */,   ');
      SQL.Add('    SENHA           VARCHAR(16) CHARACTER SET ISO8859_1,   ');
      SQL.Add('    FLAG_PERMISSAO  FLAG_SIMPLES /* FLAG_SIMPLES = VARCHAR(3) DEFAULT ''NAO'' */,   ');
      SQL.Add('    DATA_CADASTRO   DATE,   ');
      SQL.Add('    DT_UMOD         DATE,   ');
      SQL.Add('    HORA_UMOD       TIME,   ');
      SQL.Add('    USUARIO_UMOD    NOME /* NOME = VARCHAR(80) */,   ');
      SQL.Add('    OPERACAO_UMOD   OPERACAO_UMOD_D /* OPERACAO_UMOD_D = VARCHAR(10) */,   ');
      SQL.Add('    LIXEIRA         LIXEIRA_D /* LIXEIRA_D = VARCHAR(10) DEFAULT ''NAO'' */   ');
      SQL.Add(');');
   end;
   vsErro1 := 'A tabela de Usuarios foi criada corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro1 := 'Tabelade de Usuário já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
      end;
   end;
   //
   // --> Criando o Contador
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('CREATE SEQUENCE GEN_LOC_M1_CAD_USUARIO_ID');
      ExecSQL;
      SQL.Clear;
      SQL.Add('create trigger loc_m1_cad_usuario_bi for loc_m1_cad_usuario');
      SQL.Add('active before insert position 0');
      SQL.Add('as');
      SQL.Add('begin');
      SQL.Add('  if (new.codigo is null) then');
      SQL.Add('    new.codigo = gen_id(gen_loc_m1_cad_usuario_id,1);');
      SQL.Add('end');
   end;
   vsErro2 := 'Contador da tabela Usuario criado corretamente.'+#13;
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro2 := 'Contador já existente e/ou erro ao criar o Contador da tabela de Usuarios: '+nomeErro.Message +#13;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
      end;
   end;
   //
   // --> Criando a Procedure
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('create or alter procedure CAD_LOC_M1_CAD_USUARIO (');
      SQL.Add('    VICODEMPRESA CODEMPRESA not null,');
      SQL.Add('    VSNOME_USUARIO NOME not null,');
      SQL.Add('    VSSENHA varchar(16) character set ISO8859_1 not null,');
      SQL.Add('    VSFLAG_PERMISSAO FLAG_SIMPLES,');
      SQL.Add('    VDTDATA_CADASTRO date,');
      SQL.Add('    VDTDT_UMOD date,');
      SQL.Add('    VHHORA_UMOD time,');
      SQL.Add('    VSUSUARIO_UMOD NOME,');
      SQL.Add('    VSOPERACAO_UMOD OPERACAO_UMOD_D not null,');
      SQL.Add('    VSLIXEIRA LIXEIRA_D not null,');
      SQL.Add('    VICODIGO CODIGO)');
      SQL.Add('as');
      SQL.Add('/*declare variable VDTDT_UMOD date;');
      SQL.Add('declare variable VHHORA_UMOD time; */');
      SQL.Add('begin');
      SQL.Add('   /*vdtDT_UMOD= CURRENT_DATE;');
      SQL.Add('   vhHORA_UMOD = CURRENT_TIME;*/');
      SQL.Add('');
      SQL.Add('   IF (:vsOPERACAO_UMOD  = ''INSERIR'') THEN');
      SQL.Add('   BEGIN');
      SQL.Add('      /* INSERIR */');
      SQL.Add('      INSERT into LOC_M1_CAD_USUARIO(CODEMPRESA, NOME_USUARIO, SENHA, FLAG_PERMISSAO, DATA_CADASTRO,DT_UMOD , HORA_UMOD, USUARIO_UMOD, OPERACAO_UMOD, LIXEIRA)');
      SQL.Add('         values (:viCODEMPRESA, :vsNOME_USUARIO,:vssenha,:vsflag_permissao, :vdtDATA_CADASTRO, :vdtDT_UMOD, :vhHORA_UMOD, :vsUSUARIO_UMOD, :vsOPERACAO_UMOD  , :vsLixeira);');
      SQL.Add('   END');
      SQL.Add('   ELSE IF (:vsOPERACAO_UMOD  = ''ATUALIZAR'') THEN');
      SQL.Add('   BEGIN');
      SQL.Add('      /* ATUALIZAR */');
      SQL.Add('      UPDATE LOC_M1_CAD_USUARIO SET');
      SQL.Add('         CODEMPRESA    =:viCODEMPRESA,');
      SQL.Add('         NOME_USUARIO  =:vsNOME_USUARIO,');
      SQL.Add('         SENHA         = :vssenha,');
      SQL.Add('         DT_UMOD       =:vdtDT_UMOD,');
      SQL.Add('         HORA_UMOD     =:vhHORA_UMOD,');
      SQL.Add('         USUARIO_UMOD  =:vsUSUARIO_UMOD,');
      SQL.Add('         OPERACAO_UMOD =:vsOPERACAO_UMOD,');
      SQL.Add('         LIXEIRA       =:vsLixeira');
      SQL.Add('      WHERE CODIGO = :viCodigo;');
      SQL.Add('   END');
      SQL.Add('   ELSE IF (:vsOPERACAO_UMOD  = ''EXCLUIR'') THEN');
      SQL.Add('   BEGIN');
      SQL.Add('      /* EXCLUIR*/');
      SQL.Add('      UPDATE LOC_M1_CAD_USUARIO SET');
      SQL.Add('         DT_UMOD        =:vdtDT_UMOD,');
      SQL.Add('         HORA_UMOD      =:vhHORA_UMOD,');
      SQL.Add('         USUARIO_UMOD   =:vsUSUARIO_UMOD,');
      SQL.Add('         OPERACAO_UMOD  =''EXCLUIR'',');
      SQL.Add('         LIXEIRA        =''SIM'' ');
      SQL.Add('      WHERE CODIGO = :viCodigo;');
      SQL.Add('   END');
      SQL.Add('end');
   end;
   vsErro3 := 'A procedure da tabela de Usuarios foi criada corretamente.';
   try
      Query.ExecSQL;
      if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         vsErro3 := 'Procedure já existente e/ou erro ao criar a procedure da tabela de Usuarios: '+nomeErro.Message;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
      end;
   end;
   Query.Close;
end;

end.
