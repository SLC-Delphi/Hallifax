unit uAjustaBancoDeDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  IBX.IBDatabase, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Phys.IBBase,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Query: TIBQuery;
    Ds_Query2: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
   vsErro1, vsErro2, vsErro3: String;
  MyClass: TObject;
begin
   try
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN NOME AS ' );
      Query.SQL.Add(' VARCHAR(80) CHARACTER SET ISO8859_1; ' );
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN FLAG_SIMPLES AS ');
      Query.SQL.Add(' VARCHAR(3) CHARACTER SET iso8859_1 ');
      Query.SQL.Add(' DEFAULT ''NAO'' ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' COMMENT ON DOMAIN FLAG_SIMPLES IS ''apenas SIM ou NAO'' ' );
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN OBSERVACAO_CURTA AS ' );
      Query.SQL.Add(' VARCHAR(256) CHARACTER SET ISO8859_1; ' );
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN DESCRICAO_CURTA AS ' );
      Query.SQL.Add(' VARCHAR(512) CHARACTER SET ISO8859_1; ' );
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('CREATE DOMAIN FONE_CELULAR AS ' );
      Query.SQL.Add(' VARCHAR(50) CHARACTER SET ISO8859_1; ' );
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN LIXEIRA_D AS ');
      Query.SQL.Add(' VARCHAR(10) CHARACTER SET iso8859_1 ');
      Query.SQL.Add(' DEFAULT ''NAO'' ');
      Query.SQL.Add(' COLLATE ISO8859_1;');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN OPERACAO_UMOD_D AS ');
      Query.SQL.Add(' VARCHAR(10) CHARACTER SET ISO8859_1; ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN ESTOQUE_LOCACAO_M1 AS ');
      Query.SQL.Add(' DECIMAL(10,2) ');
      Query.SQL.Add(' DEFAULT 0; ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN PRECO_LOCACAO_M1 AS ');
      Query.SQL.Add(' NUMERIC(11,3) ');
      Query.SQL.Add(' DEFAULT 0; ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN PRECO_PGTO_M1 AS ');
      Query.SQL.Add(' NUMERIC(15,3) ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN CODEMPRESA AS ');
      Query.SQL.Add(' INTEGER ');
      Query.SQL.Add(' DEFAULT 1; ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN CODIGO_ITENS AS ');
      Query.SQL.Add(' BIGINT ');
      Query.SQL.Add(' NOT NULL; ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add(' CREATE DOMAIN FLAG_SITUACAO AS ');
      Query.SQL.Add(' VARCHAR(14) CHARACTER SET ISO8859_1 ');
      Query.SQL.Add(' COLLATE ISO8859_1 ');
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT')  ;
      Query.ExecSQL;
      Query.Transaction.StartTransaction;
      Query.Transaction.Commit;
      Query.Transaction.StartTransaction;
   Except
      //
   end; // try

   try
      with Query do
      begin
//         SQL.Clear;
//         SQL.Add('COMMIT');
//         ExecSQL;
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
         SQL.Add('    LIXEIRA         LIXEIRA_D   ');
         SQL.Add(');');
      end; // with
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
         end; // except on
      end; // try
      //
      // --> Criando o Contador
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add('CREATE SEQUENCE GEN_LOC_M1_CAD_USUARIO_ID');
         try
            ExecSQL;
         Except
            //
         end;
         SQL.Clear;
         SQL.Add('create trigger loc_m1_cad_usuario_bi for loc_m1_cad_usuario');
         SQL.Add('active before insert position 0');
         SQL.Add('as');
         SQL.Add('begin');
         SQL.Add('  if (new.codigo is null) then');
         SQL.Add('    new.codigo = gen_id(gen_loc_m1_cad_usuario_id,1);');
         SQL.Add('end');
      end; // with
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
         end; // except on
      end; // try
      //
      // --> Criando a Procedure
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add('create procedure CAD_LOC_M1_CAD_USUARIO (');
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
      end; // with
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
         end; // except on
      end; // try
   except
      //
   end;

   try
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
      end; //with
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
         end; // except on
      end; //try
   Except;
   //
   end;

   try
      // --> Criando a tabela
      with Query do
      begin
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
         Close;
         SQL.Clear;
         SQL.Add('CREATE TABLE LOC_M1_PRODUTOS (         ');
         SQL.Add(' CODIGO               CODIGO NOT NULL, ');
         SQL.Add(' CODEMPRESA           CODEMPRESA,      ');
         SQL.Add(' PRODUTO              NOME,            ');
         SQL.Add(' UNIDADE              VARCHAR(7),      ');
         SQL.Add(' CODIGO_DE_BARRAS     VARCHAR(15),     ');
         SQL.Add(' MARCA                NOME,            ');
         SQL.Add(' GRUPO                NOME,            ');
         SQL.Add(' FORNECEDOR           NOME,            ');
         SQL.Add(' DESCRICAO            DESCRICAO_CURTA, ');
         SQL.Add(' FOTO                 VARCHAR(250),    ');
         SQL.Add(' DATA_CADASTRO        DATE,            ');
         SQL.Add(' DATA_ULTIMA_LOCACAO  DATE,            ');
         SQL.Add(' DT_UMOD              DATE,            ');
         SQL.Add(' HORA_UMOD            TIME,            ');
         SQL.Add(' USUARIO              NOME,            ');
         SQL.Add(' LIXEIRA              LIXEIRA_D        ');
         SQL.Add(');');
      end; // with
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
            vsErro1 := 'Tabelade de Produtos já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
            if not(Query.Transaction.Active) then
               Query.Transaction.StartTransaction;
            Query.SQL.Clear;
            Query.SQL.Add('Rollback');
            Query.ExecSQL;
            ShowMessage(vsErro1);
         end; // except on
      end; // try
      //
      // --> Criando o Generator
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add('CREATE SEQUENCE GEN_LOC_M1_PRODUTOS_ID ');
      end;
      vsErro1 := 'Generator do Produtos foi criada corretamente.'+#13;
      try
         Query.ExecSQL;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('COMMIT');
         Query.ExecSQL;
      except on nomeErro: Exception do
         begin
            vsErro1 := 'Generator do Produtos já existente e/ou erro ao criar a tabela de Usuarios: '+#13+#13+nomeErro.Message +#13;
            if not(Query.Transaction.Active) then
               Query.Transaction.StartTransaction;
            Query.SQL.Clear;
            Query.SQL.Add('Rollback');
            Query.ExecSQL;

         end; // except on
      end; //try
      //
      // --> Criando a Trigger do Generator
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add('create trigger loc_m1_produtos_bi for loc_m1_produtos');
         SQL.Add('active before insert position 0');
         SQL.Add('as');
         SQL.Add('begin');
         SQL.Add('  if (new.codigo is null) then');
         SQL.Add('    new.codigo = gen_id(gen_loc_m1_produtos_id,1);');
         SQL.Add('end');
      end; //with
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
         end; // except on
      end; //try
   Except
      //
   end; //Try

   try
      // --> Criando a tabela
      with Query do
      begin
         SQL.Clear;
         SQL.Add('COMMIT');
         ExecSQL;
         Close;
         SQL.Clear;
         SQL.Add('CREATE TABLE LOC_M1_PRODUTOSPRECOS (         ');
         SQL.Add(' CODIGO_PRODUTO    INTEGER default -1 NOT NULL, ');
         SQL.Add(' CODEMPRESA        CODEMPRESA, ');
         SQL.Add(' PRODUTO           NOME, ');
         SQL.Add('  MARCA            NOME, ');
         SQL.Add('  PRECO01           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO02           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO03           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO04           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO05           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO06           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO07           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO08           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO09           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO10           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO11           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO12           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO13           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO14           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO15           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO16           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO17           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO18           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO19           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO20           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO21           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO22           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO23           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO24          PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO25            PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO26           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO27           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO28           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO29           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO30           PRECO_LOCACAO_M1, ');
         SQL.Add('  PRECO31           PRECO_LOCACAO_M1, ');
         SQL.Add(' DATA_CADASTRO        DATE, ');
         SQL.Add(' DT_UMOD              DATE, ');
         SQL.Add(' HORA_UMOD            TIME, ');
         SQL.Add(' USUARIO              NOME, ');
         SQL.Add(' LIXEIRA              LIXEIRA_D ');
         SQL.Add('); ');
      end; // with
      vsErro1 := 'A tabela de Produtos/Preços foi criada corretamente.'+#13;
      try
         Query.ExecSQL;
         if not(Query.Transaction.Active) then
            Query.Transaction.StartTransaction;
         Query.SQL.Clear;
         Query.SQL.Add('COMMIT');
         Query.ExecSQL;
      except on nomeErro: Exception do
         begin
            vsErro1 := 'Tabelade de Preços dos produtos já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
            if not(Query.Transaction.Active) then
               Query.Transaction.StartTransaction;
            Query.SQL.Clear;
            Query.SQL.Add('Rollback');
            Query.ExecSQL;
            ShowMessage(vsErro1);
         end; // except on
      end; // try
      //
      // --> Criando a chave Unica
      with Query do
      begin
         Close;
         SQL.Clear;
         SQL.Add('ALTER TABLE LOC_M1_PRODUTOSPRECOS ADD CONSTRAINT UNQ1_LOC_M1_PRODUTOSPRECOS UNIQUE (CODIGO_PRODUTO);');
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
         end; // Except On
      end; //try
   Except
      //
   end; // try

   try
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
   Except
      //
   end;


   try
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
   Except
    //
   end;

   Showmessage('fim');
end;

end.



