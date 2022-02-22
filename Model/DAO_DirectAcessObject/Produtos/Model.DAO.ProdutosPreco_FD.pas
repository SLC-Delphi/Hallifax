unit Model.DAO.ProdutosPreco_FD;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ,
  Model.Conexao_FDAC, Model.DAO.ProdutosPreco_FD_Interface, System.SysUtils,
  Model.ORM_Loc_M1_ProdutosPreco;

Type
   TDAO_ProdutosPreco_FDAC = Class(TInterfacedObject, IDAO_ProdutosPreco)
   Public
      Query: TFDQuery;
      DataSet: TDataSource;
      FD_Componente: TConexao_FDAC;
      Function GetSimple(vsLixeira: String): Boolean;
      Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
      Function GetId(vsId, vsLixeira: String): Boolean;
      function Post (ORM: TORM_LOC_M1_ProdutosPreco): Boolean;
      Function Put (ORM: TORM_LOC_M1_ProdutosPreco): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_ProdutosPreco;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_ProdutosPreco_FDAC }



class function TDAO_ProdutosPreco_FDAC.New: IDAO_ProdutosPreco;
begin
   Self.Create;
end;

constructor TDAO_ProdutosPreco_FDAC.Create;
begin
   FD_Componente := TConexao_FDAC.Create;
   Query:= TFDQuery.Create(Nil);
//   Query.Connection := TFDConnection(FD_Componente.Connection);
   Query.Connection := FD_Componente.FConnection;
   Query.Transaction := FD_Componente.FTransaction;
   DataSet:= TDataSource.Create(Nil);
   DataSet.DataSet := Query;
end;


destructor TDAO_ProdutosPreco_FDAC.Destroy;
begin
  inherited;
   FD_Componente.DisposeOf;
   Query.DisposeOf;
   DataSet.DisposeOf;
end;

function TDAO_ProdutosPreco_FDAC.GetSimple(vsLixeira: String): Boolean;
begin
   // desnecessário
end;

function TDAO_ProdutosPreco_FDAC.Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
begin
   // desnecessário
end;

function TDAO_ProdutosPreco_FDAC.GetId(vsId, vsLixeira: String): Boolean;
begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_ProdutosPrecos') ;
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
         ShowMessage ('[Model] Erro ao acessar os dados: '+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_ProdutosPreco_FDAC.Post(ORM: TORM_LOC_M1_ProdutosPreco): Boolean;
begin
//   desnecessário
end;


function TDAO_ProdutosPreco_FDAC.Put(ORM: TORM_LOC_M1_ProdutosPreco): Boolean;
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
      SQL.Add('Update LOC_M1_ProdutosPrecos');
      SQL.Add(' Set ');
      SQL.Add('  CODEMPRESA            =  :uCODEMPRESA          ');
      SQL.Add('  ,PRECO01  =  :uPRECO01  ');
      SQL.Add('  ,PRECO02  =  :uPRECO02  ');
      SQL.Add('  ,PRECO03  =  :uPRECO03  ');
      SQL.Add('  ,PRECO04  =  :uPRECO04  ');
      SQL.Add('  ,PRECO05  =  :uPRECO05  ');
      SQL.Add('  ,PRECO06  =  :uPRECO06  ');
      SQL.Add('  ,PRECO07  =  :uPRECO07  ');
      SQL.Add('  ,PRECO08  =  :uPRECO08  ');
      SQL.Add('  ,PRECO09  =  :uPRECO09  ');
      SQL.Add('  ,PRECO10  =  :uPRECO10  ');
      SQL.Add('  ,PRECO11  =  :uPRECO11  ');
      SQL.Add('  ,PRECO12  =  :uPRECO12  ');
      SQL.Add('  ,PRECO13  =  :uPRECO13  ');
      SQL.Add('  ,PRECO14  =  :uPRECO14  ');
      SQL.Add('  ,PRECO15  =  :uPRECO15  ');
      SQL.Add('  ,PRECO16  =  :uPRECO16  ');
      SQL.Add('  ,PRECO17  =  :uPRECO17  ');
      SQL.Add('  ,PRECO18  =  :uPRECO18  ');
      SQL.Add('  ,PRECO19  =  :uPRECO19  ');
      SQL.Add('  ,PRECO20  =  :uPRECO20  ');
      SQL.Add('  ,PRECO21  =  :uPRECO21  ');
      SQL.Add('  ,PRECO22  =  :uPRECO22  ');
      SQL.Add('  ,PRECO23  =  :uPRECO23  ');
      SQL.Add('  ,PRECO24  =  :uPRECO24  ');
      SQL.Add('  ,PRECO25  =  :uPRECO25  ');
      SQL.Add('  ,PRECO26  =  :uPRECO26  ');
      SQL.Add('  ,PRECO27  =  :uPRECO27  ');
      SQL.Add('  ,PRECO28  =  :uPRECO28  ');
      SQL.Add('  ,PRECO29  =  :uPRECO29  ');
      SQL.Add('  ,PRECO30  =  :uPRECO30  ');
      SQL.Add('  ,PRECO31  =  :uPRECO31  ');
      SQL.Add('  ,DT_UMOD               =  :uDT_UMOD             ');
      SQL.Add('  ,HORA_UMOD             =  :uHORA_UMOD           ');
      SQL.Add('  ,USUARIO               =  :uUSUARIO             ');
      SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
      ParamByName(Trim('uCODEMPRESA      ')).Value := ORM.CODEMPRESA ;
      ParamByName(Trim('uPRECO01         ')).Value := ORM.PRECO01 ;
      ParamByName(Trim('uPRECO02         ')).Value := ORM.PRECO02 ;
      ParamByName(Trim('uPRECO03         ')).Value := ORM.PRECO03 ;
      ParamByName(Trim('uPRECO04         ')).Value := ORM.PRECO04 ;
      ParamByName(Trim('uPRECO05         ')).Value := ORM.PRECO05 ;
      ParamByName(Trim('uPRECO06         ')).Value := ORM.PRECO06 ;
      ParamByName(Trim('uPRECO07         ')).Value := ORM.PRECO07 ;
      ParamByName(Trim('uPRECO08         ')).Value := ORM.PRECO08 ;
      ParamByName(Trim('uPRECO09         ')).Value := ORM.PRECO09 ;
      ParamByName(Trim('uPRECO10         ')).Value := ORM.PRECO10 ;
      ParamByName(Trim('uPRECO11         ')).Value := ORM.PRECO11 ;
      ParamByName(Trim('uPRECO12         ')).Value := ORM.PRECO12 ;
      ParamByName(Trim('uPRECO13         ')).Value := ORM.PRECO13 ;
      ParamByName(Trim('uPRECO14         ')).Value := ORM.PRECO14 ;
      ParamByName(Trim('uPRECO15         ')).Value := ORM.PRECO15 ;
      ParamByName(Trim('uPRECO16         ')).Value := ORM.PRECO16 ;
      ParamByName(Trim('uPRECO17         ')).Value := ORM.PRECO17 ;
      ParamByName(Trim('uPRECO18         ')).Value := ORM.PRECO18 ;
      ParamByName(Trim('uPRECO19         ')).Value := ORM.PRECO19 ;
      ParamByName(Trim('uPRECO20         ')).Value := ORM.PRECO20 ;
      ParamByName(Trim('uPRECO21         ')).Value := ORM.PRECO21 ;
      ParamByName(Trim('uPRECO22         ')).Value := ORM.PRECO22 ;
      ParamByName(Trim('uPRECO23         ')).Value := ORM.PRECO23 ;
      ParamByName(Trim('uPRECO24         ')).Value := ORM.PRECO24 ;
      ParamByName(Trim('uPRECO25         ')).Value := ORM.PRECO25 ;
      ParamByName(Trim('uPRECO26         ')).Value := ORM.PRECO26 ;
      ParamByName(Trim('uPRECO27         ')).Value := ORM.PRECO27 ;
      ParamByName(Trim('uPRECO28         ')).Value := ORM.PRECO28 ;
      ParamByName(Trim('uPRECO29         ')).Value := ORM.PRECO29 ;
      ParamByName(Trim('uPRECO30         ')).Value := ORM.PRECO30 ;
      ParamByName(Trim('uPRECO31         ')).Value := ORM.PRECO31 ;
      ParamByName(Trim('uDT_UMOD         ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('uHORA_UMOD       ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('uUSUARIO         ')).Value := ORM.USUARIO ;
      ParamByName(Trim('uCODIGO_PRODUTO  ')).Value := ORM.CODIGO_PRODUTO     ;
   end;
   try
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
         //Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := '[Model] Falha ao atualizar os dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;



function TDAO_ProdutosPreco_FDAC.CriarTabela(): String;
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
      SQL.Add(' LIXEIRA              FLAG_SIMPLES ');
      SQL.Add('); ');
   end;
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
      end;
   end;
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
      end;
   end;
end;


end.
