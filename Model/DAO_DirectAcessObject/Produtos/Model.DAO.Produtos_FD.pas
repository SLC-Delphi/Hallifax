unit Model.DAO.Produtos_FD;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.SysUtils,
  Model.Conexao_FDAC, Model.DAO.Produtos_FD_Interface,
  Model.ORM_Loc_M1_Produtos, System.Classes;

Type
   TDAO_Produtos_FD = Class(TInterfacedObject, IDAO_Produtos)
   private
      Strlst_Dados : TStringList;
   Public
      Query: TFDQuery;
      DataSet: TDataSource;
      FD_Componente: TConexao_FDAC;
      function GetGrupos: TStringList;
      function GetFornecedores: TStringList;
      function GetMARCA: TStringList;
      Function GetSimple(vsLixeira: String): Boolean;
      Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
      Function GetId(vsId, vsLixeira: String): Boolean;
      function Post (ORM: TORM_LOC_M1_Produtos): Boolean;
      Function Put (ORM: TORM_LOC_M1_Produtos): Boolean;
      function Delete (ORM: TORM_LOC_M1_Produtos): Boolean;
      Function CriarTabela(): String;
      Class Function New: IDAO_Produtos;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  Vcl.Dialogs;

{ TDAO_Produtos_FDAC }



class function TDAO_Produtos_FD.New: IDAO_Produtos;
begin
   Self.Create;
end;

constructor TDAO_Produtos_FD.Create;
begin
   FD_Componente := TConexao_FDAC.Create;
   Query:= TFDQuery.Create(Nil);
//   Query.Connection := TFDConnection(FD_Componente.Connection);
   Query.Connection := FD_Componente.FConnection;
   Query.Transaction := FD_Componente.FTransaction;
   DataSet:= TDataSource.Create(Nil);
   DataSet.DataSet := Query;
   Strlst_Dados := TStringList.Create;
end;


destructor TDAO_Produtos_FD.Destroy;
begin
  inherited;
   FD_Componente.DisposeOf;
   Query.DisposeOf;
   DataSet.DisposeOf;
   Strlst_Dados.DisposeOf;
end;


function TDAO_Produtos_FD.GetGrupos: TStringList;
begin
   Strlst_Dados.Clear;
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select LINHA_PRODUTOS From LINHA_PRODUTOS WHERE 1=1' );
      SQL.Add(' Group by LINHA_PRODUTOS order by LINHA_PRODUTOS');
   end;
   try
      Query.Prepare;
      Query.Active;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Strlst_Dados.Append('[ERRO]');
         Result := Strlst_Dados;
         Showmessage ('[Model] Erro ao acessar os dados dos Grupos: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   while not (Query.Eof) do
   begin
      Strlst_Dados.Append(Query.FieldByName('LINHA_PRODUTOS').AsString.ToUpper);
      Query.Next;
   end;
   Result := Strlst_Dados;
end;


function TDAO_Produtos_FD.GetFornecedores: TStringList;
begin
   Strlst_Dados.Clear;
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select FORNECEDOR From FORNECEDORES WHERE 1=1' );
      SQL.Add(' Group by FORNECEDOR order by FORNECEDOR');
   end;
   try
      Query.Prepare;
      Query.Active;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Strlst_Dados.Append('[ERRO]');
         Result := Strlst_Dados;
         Showmessage ('[Model] Erro ao acessar os dados dos Fornecedores: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   while not (Query.Eof) do
   begin
      Strlst_Dados.Append(Query.FieldByName('FORNECEDOR').AsString.ToUpper);
      Query.Next;
   end;
   Result := Strlst_Dados;
end;


function TDAO_Produtos_FD.GetMARCA: TStringList;
begin
   Strlst_Dados.Clear;
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select MARCA From LOC_M1_PRODUTOS WHERE 1=1' );
      SQL.Add(' Group by MARCA order by MARCA');
   end;
   try
      Query.Prepare;
      Query.Active;
      DataSet.DataSet.Active := True;
      Query.First;
   except on nomeErro: Exception do
      begin
         Strlst_Dados.Append('[ERRO]');
         Result := Strlst_Dados;
         Showmessage ('[Model] Erro ao acessar os dados das Marcas: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   while not (Query.Eof) do
   begin
      Strlst_Dados.Append(Query.FieldByName('MARCA').AsString.ToUpper);
      Query.Next;
   end;
   Result := Strlst_Dados;
end;


function TDAO_Produtos_FD.GetSimple(vsLixeira: String): Boolean;
begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_PRODUTOS WHERE LIXEIRA ='+ QuotedStr(vsLixeira) +' ');
      SQL.Add(' order by PRODUTO');
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


function TDAO_Produtos_FD.Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
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
      vsIniQuery :='Select '+vsCampos + ' From LOC_M1_PRODUTOS Where (Lixeira = '+ QuotedStr(vsLixeira)+') ';
      Close;
      SQL.Clear;
      if not(vsCondicao = '') then
      begin
         SQL.Add(vsIniQuery + 'And PRODUTO Containing :pCondicao ');
         ParamByName('pCondicao').AsString := vsCondicao;
      end
      else
         SQL.Add(vsIniQuery);
      if (vsOrdem = '') then
         vsOrdem := 'PRODUTO';
      SQL.Add(' order by ' + vsOrdem);
      vsQuery := SQL.Text;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteProduto.Txt');
   end;
   try
      Query.Prepare;
      Query.Open;
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


function TDAO_Produtos_FD.GetId(vsId, vsLixeira: String): Boolean;
begin
   if vsLixeira ='' then
      vsLixeira := 'NAO';
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From LOC_M1_PRODUTOS') ;
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
         Showmessage ('[Model] Erro ao acessar os dados: '+#13+#13+nomeErro.Message);
         Exit;
      end;
   end;
   if not(Query.Transaction.Active) then
         Query.Transaction.StartTransaction;
   Result := True;
end;


function TDAO_Produtos_FD.Post(ORM: TORM_LOC_M1_Produtos): Boolean;
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
      SQL.Add(' Insert into LOC_M1_PRODUTOS (');
      SQL.Add(' CODEMPRESA          ');
      SQL.Add(',PRODUTO             ');
      SQL.Add(',UNIDADE             ');
      SQL.Add(',CODIGO_DE_BARRAS    ');
      SQL.Add(',MARCA               ');
      SQL.Add(',GRUPO               ');
      SQL.Add(',FORNECEDOR          ');
      SQL.Add(',DESCRICAO           ');
      SQL.Add(',FOTO                ');
      SQL.Add(',DATA_CADASTRO       ');
      SQL.Add(',DATA_ULTIMA_LOCACAO ');
      SQL.Add(',DT_UMOD             ');
      SQL.Add(',HORA_UMOD           ');
      SQL.Add(',USUARIO             ');
      SQL.Add(',LIXEIRA             ');
      SQL.Add(' ) Values (');
      SQL.Add(' :iCODEMPRESA          ');
      SQL.Add(', :iPRODUTO             ');
      SQL.Add(', :iUNIDADE             ');
      SQL.Add(', :iCODIGO_DE_BARRAS    ');
      SQL.Add(', :iMARCA               ');
      SQL.Add(', :iGRUPO               ');
      SQL.Add(', :iFORNECEDOR          ');
      SQL.Add(', :iDESCRICAO           ');
      SQL.Add(', :iFOTO                ');
      SQL.Add(', :iDATA_CADASTRO       ');
      SQL.Add(', :iDATA_ULTIMA_LOCACAO ');
      SQL.Add(', :iDT_UMOD             ');
      SQL.Add(', :iHORA_UMOD           ');
      SQL.Add(', :iUSUARIO             ');
      SQL.Add(', :iLIXEIRA             ');
      SQL.Add('  ) ');
      ParamByName(Trim('iCODEMPRESA          ')).Value := ORM.CODEMPRESA ;
      ParamByName(Trim('iPRODUTO             ')).Value := ORM.PRODUTO    ;
      ParamByName(Trim('iUNIDADE             ')).Value := ORM.UNIDADE    ;
      ParamByName(Trim('iCODIGO_DE_BARRAS    ')).Value := ORM.CODIGO_DE_BARRAS ;
      ParamByName(Trim('iMARCA               ')).Value := ORM.MARCA      ;
      ParamByName(Trim('iGRUPO               ')).Value := ORM.GRUPO      ;
      ParamByName(Trim('iFORNECEDOR          ')).Value := ORM.FORNECEDOR ;
      ParamByName(Trim('iDESCRICAO           ')).Value := ORM.DESCRICAO  ;
      ParamByName(Trim('iFOTO                ')).Value := ORM.FOTO       ;
      ParamByName(Trim('iDATA_CADASTRO       ')).Value := StringReplace(ORM.DATA_CADASTRO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iDATA_ULTIMA_LOCACAO ')).Value := StringReplace(ORM.DATA_ULTIMA_LOCACAO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iDT_UMOD             ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iHORA_UMOD           ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('iUSUARIO             ')).Value := ORM.USUARIO ;
      ParamByName(Trim('iLIXEIRA             ')).Value := 'NAO' ;
      ExecSQL;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteInsertProdut.Txt');
       //
       // -- > Insere os estoques zerados
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add(' Insert into LOC_M1_PRODUTOSESTOQUE (');
      SQL.Add(' CODEMPRESA          ');
      SQL.Add(',CODIGO_PRODUTO      ');
      SQL.Add(',PRODUTO             ');
      SQL.Add(',MARCA               ');
      SQL.Add(',ESTOQUE_TOTAL       ');
      SQL.Add(',QUANTIDADE_ALOCADA  ');
      SQL.Add(',QUANTDADE_MANUTENCAO');
      SQL.Add(',ESTOQUE_DISPONIVEL  ');
      SQL.Add(',DATA_CADASTRO       ');
      SQL.Add(',DT_UMOD             ');
      SQL.Add(',HORA_UMOD           ');
      SQL.Add(',USUARIO             ');
      SQL.Add(',LIXEIRA             ');
      SQL.Add(' ) Values ( ');
      SQL.Add('  :iCODEMPRESA          ');
      SQL.Add(', :iCODIGO_PRODUTO      ');
      SQL.Add(', :iPRODUTO             ');
      SQL.Add(', :iMARCA               ');
      SQL.Add(', :iESTOQUE_TOTAL       ');
      SQL.Add(', :iQUANTIDADE_ALOCADA  ');
      SQL.Add(', :iQUANTDADE_MANUTENCAO');
      SQL.Add(', :iESTOQUE_DISPONIVEL  ');
      SQL.Add(', :iDATA_CADASTRO       ');
      SQL.Add(', :iDT_UMOD             ');
      SQL.Add(', :iHORA_UMOD           ');
      SQL.Add(', :iUSUARIO             ');
      SQL.Add(', :iLIXEIRA             ');
      SQL.Add('  )');
      ParamByName(Trim('iCODEMPRESA          ')).Value := ORM.CODEMPRESA ;
      ParamByName(Trim('iCODIGO_PRODUTO       ')).Value := viGenerator+1;
      ParamByName(Trim('iPRODUTO             ')).Value := ORM.PRODUTO    ;
      ParamByName(Trim('iMARCA               ')).Value := ORM.MARCA      ;
      ParamByName(Trim('iESTOQUE_TOTAL       ')).Value := '0';
      ParamByName(Trim('iQUANTIDADE_ALOCADA  ')).Value := '0';
      ParamByName(Trim('iQUANTDADE_MANUTENCAO')).Value := '0';
      ParamByName(Trim('iESTOQUE_DISPONIVEL  ')).Value := '0';
      ParamByName(Trim('iDATA_CADASTRO       ')).Value := StringReplace(ORM.DATA_CADASTRO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iDT_UMOD             ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iHORA_UMOD           ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('iUSUARIO             ')).Value := ORM.USUARIO ;
      ParamByName(Trim('iLIXEIRA             ')).Value := ORM.LIXEIRA ;
      ExecSQL;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteInsertProStok.Txt');
      //
      // -- > Insere os preços zerados
      Params.Clear;
      SQL.Clear;
      SQL.Add(' Insert into LOC_M1_PRODUTOSPRECOS (');
      SQL.Add(' CODEMPRESA          ');
      SQL.Add(',CODIGO_PRODUTO      ');
      SQL.Add(',PRODUTO             ');
      SQL.Add(',MARCA               ');
      SQL.Add(',PRECO01        ');
      SQL.Add(',PRECO02        ');
      SQL.Add(',PRECO03        ');
      SQL.Add(',PRECO04        ');
      SQL.Add(',PRECO05        ');
      SQL.Add(',PRECO06        ');
      SQL.Add(',PRECO07        ');
      SQL.Add(',PRECO08        ');
      SQL.Add(',PRECO09        ');
      SQL.Add(',PRECO10        ');
      SQL.Add(',PRECO11        ');
      SQL.Add(',PRECO12        ');
      SQL.Add(',PRECO13        ');
      SQL.Add(',PRECO14        ');
      SQL.Add(',PRECO15        ');
      SQL.Add(',PRECO16        ');
      SQL.Add(',PRECO17        ');
      SQL.Add(',PRECO18        ');
      SQL.Add(',PRECO19        ');
      SQL.Add(',PRECO20        ');
      SQL.Add(',PRECO21        ');
      SQL.Add(',PRECO22        ');
      SQL.Add(',PRECO23        ');
      SQL.Add(',PRECO24        ');
      SQL.Add(',PRECO25        ');
      SQL.Add(',PRECO26        ');
      SQL.Add(',PRECO27        ');
      SQL.Add(',PRECO28        ');
      SQL.Add(',PRECO29        ');
      SQL.Add(',PRECO30        ');
      SQL.Add(',PRECO31        ');
      SQL.Add(',DATA_CADASTRO       ');
      SQL.Add(',DT_UMOD             ');
      SQL.Add(',HORA_UMOD           ');
      SQL.Add(',USUARIO             ');
      SQL.Add(',LIXEIRA             ');
      SQL.Add(' ) Values ( ');
      SQL.Add('  :iCODEMPRESA          ');
      SQL.Add(', :iCODIGO_PRODUTO      ');
      SQL.Add(', :iPRODUTO             ');
      SQL.Add(', :iMARCA               ');
      SQL.Add(', :iPRECO01        ');
      SQL.Add(', :iPRECO02        ');
      SQL.Add(', :iPRECO03        ');
      SQL.Add(', :iPRECO04        ');
      SQL.Add(', :iPRECO05        ');
      SQL.Add(', :iPRECO06        ');
      SQL.Add(', :iPRECO07        ');
      SQL.Add(', :iPRECO08        ');
      SQL.Add(', :iPRECO09        ');
      SQL.Add(', :iPRECO10        ');
      SQL.Add(', :iPRECO11        ');
      SQL.Add(', :iPRECO12        ');
      SQL.Add(', :iPRECO13        ');
      SQL.Add(', :iPRECO14        ');
      SQL.Add(', :iPRECO15        ');
      SQL.Add(', :iPRECO16        ');
      SQL.Add(', :iPRECO17        ');
      SQL.Add(', :iPRECO18        ');
      SQL.Add(', :iPRECO19        ');
      SQL.Add(', :iPRECO20        ');
      SQL.Add(', :iPRECO21        ');
      SQL.Add(', :iPRECO22        ');
      SQL.Add(', :iPRECO23        ');
      SQL.Add(', :iPRECO24        ');
      SQL.Add(', :iPRECO25        ');
      SQL.Add(', :iPRECO26        ');
      SQL.Add(', :iPRECO27        ');
      SQL.Add(', :iPRECO28        ');
      SQL.Add(', :iPRECO29        ');
      SQL.Add(', :iPRECO30        ');
      SQL.Add(', :iPRECO31        ');
      SQL.Add(', :iDATA_CADASTRO       ');
      SQL.Add(', :iDT_UMOD             ');
      SQL.Add(', :iHORA_UMOD           ');
      SQL.Add(', :iUSUARIO             ');
      SQL.Add(', :iLIXEIRA             ');
      SQL.Add('  )');
      ParamByName(Trim('iCODEMPRESA      ')).Value := ORM.CODEMPRESA ;
      ParamByName(Trim('iCODIGO_PRODUTO  ')).Value := viGenerator+1;
      ParamByName(Trim('iPRODUTO         ')).Value := ORM.PRODUTO    ;
      ParamByName(Trim('iMARCA           ')).Value := ORM.MARCA      ;
      ParamByName(Trim('iPRECO01         ')).Value := '0';
      ParamByName(Trim('iPRECO02         ')).Value := '0';
      ParamByName(Trim('iPRECO03         ')).Value := '0';
      ParamByName(Trim('iPRECO04         ')).Value := '0';
      ParamByName(Trim('iPRECO05         ')).Value := '0';
      ParamByName(Trim('iPRECO06         ')).Value := '0';
      ParamByName(Trim('iPRECO07         ')).Value := '0';
      ParamByName(Trim('iPRECO08         ')).Value := '0';
      ParamByName(Trim('iPRECO09         ')).Value := '0';
      ParamByName(Trim('iPRECO10         ')).Value := '0';
      ParamByName(Trim('iPRECO11         ')).Value := '0';
      ParamByName(Trim('iPRECO12         ')).Value := '0';
      ParamByName(Trim('iPRECO13         ')).Value := '0';
      ParamByName(Trim('iPRECO14         ')).Value := '0';
      ParamByName(Trim('iPRECO15         ')).Value := '0';
      ParamByName(Trim('iPRECO16         ')).Value := '0';
      ParamByName(Trim('iPRECO17         ')).Value := '0';
      ParamByName(Trim('iPRECO18         ')).Value := '0';
      ParamByName(Trim('iPRECO19         ')).Value := '0';
      ParamByName(Trim('iPRECO20         ')).Value := '0';
      ParamByName(Trim('iPRECO21         ')).Value := '0';
      ParamByName(Trim('iPRECO22         ')).Value := '0';
      ParamByName(Trim('iPRECO23         ')).Value := '0';
      ParamByName(Trim('iPRECO24         ')).Value := '0';
      ParamByName(Trim('iPRECO25         ')).Value := '0';
      ParamByName(Trim('iPRECO26         ')).Value := '0';
      ParamByName(Trim('iPRECO27         ')).Value := '0';
      ParamByName(Trim('iPRECO28         ')).Value := '0';
      ParamByName(Trim('iPRECO29         ')).Value := '0';
      ParamByName(Trim('iPRECO30         ')).Value := '0';
      ParamByName(Trim('iPRECO31         ')).Value := '0';
      ParamByName(Trim('iDATA_CADASTRO   ')).Value := StringReplace(ORM.DATA_CADASTRO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iDT_UMOD         ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iHORA_UMOD       ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('iUSUARIO         ')).Value := ORM.USUARIO ;
      ParamByName(Trim('iLIXEIRA         ')).Value := ORM.LIXEIRA ;
//      SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteInsertProPrecos.Txt');
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
         vsErro1 := 'Falha ao inserir dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;


function TDAO_Produtos_FD.Put(ORM: TORM_LOC_M1_Produtos): Boolean;
var
   vsErro1 : String;
begin
   if not(Query.Transaction.Active) then
      Query.Transaction.StartTransaction;
   with Query do
   begin
      Try
         Close;
         Params.Clear;
         SQL.Clear;
         SQL.Add('Update LOC_M1_PRODUTOSESTOQUE');
         SQL.Add(' Set ');
         SQL.Add('  PRODUTO               =  :uPRODUTO             ');
         SQL.Add('  ,MARCA                 =  :uMARCA               ');
         SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
         ParamByName(Trim('uPRODUTO             ')).Value := ORM.PRODUTO    ;
         ParamByName(Trim('uMARCA               ')).Value := ORM.MARCA      ;
         ParamByName(Trim('uCODIGO_PRODUTO      ')).Value := ORM.CODIGO     ;
         Query.ExecSQL;
      Except
         //
      End;
      Try
         Close;
         Params.Clear;
         SQL.Clear;
         SQL.Add('Update LOC_M1_PRODUTOSPRECOS');
         SQL.Add(' Set ');
         SQL.Add('  PRODUTO               =  :uPRODUTO             ');
         SQL.Add('  ,MARCA                 =  :uMARCA               ');
         SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
         ParamByName(Trim('uPRODUTO             ')).Value := ORM.PRODUTO    ;
         ParamByName(Trim('uMARCA               ')).Value := ORM.MARCA      ;
         ParamByName(Trim('uCODIGO_PRODUTO      ')).Value := ORM.CODIGO     ;
         Query.ExecSQL;
      Except
         //
      End;
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add('Update LOC_M1_PRODUTOS ');
      SQL.Add(' Set ');
      SQL.Add('  CODEMPRESA            =  :uCODEMPRESA          ');
      SQL.Add('  ,PRODUTO               =  :uPRODUTO             ');
      SQL.Add('  ,UNIDADE               =  :uUNIDADE             ');
      SQL.Add('  ,CODIGO_DE_BARRAS      =  :uCODIGO_DE_BARRAS    ');
      SQL.Add('  ,MARCA                 =  :uMARCA               ');
      SQL.Add('  ,GRUPO                 =  :uGRUPO               ');
      SQL.Add('  ,FORNECEDOR            =  :uFORNECEDOR          ');
      SQL.Add('  ,DESCRICAO             =  :uDESCRICAO           ');
      SQL.Add('  ,FOTO                  =  :uFOTO                ');
      SQL.Add('  ,DATA_CADASTRO         =  :uDATA_CADASTRO       ');
      SQL.Add('  ,DATA_ULTIMA_LOCACAO   =  :uDATA_ULTIMA_LOCACAO ');
      SQL.Add('  ,DT_UMOD               =  :uDT_UMOD             ');
      SQL.Add('  ,HORA_UMOD             =  :uHORA_UMOD           ');
      SQL.Add('  ,USUARIO               =  :uUSUARIO             ');
      SQL.Add('  ,LIXEIRA               =  :uLIXEIRA             ');
      SQL.Add('   WHERE CODIGO = :uCODIGO; ');
      ParamByName(Trim('uCODEMPRESA          ')).Value := ORM.CODEMPRESA ;
      ParamByName(Trim('uPRODUTO             ')).Value := ORM.PRODUTO    ;
      ParamByName(Trim('uUNIDADE             ')).Value := ORM.UNIDADE    ;
      ParamByName(Trim('uCODIGO_DE_BARRAS    ')).Value := ORM.CODIGO_DE_BARRAS ;
      ParamByName(Trim('uMARCA               ')).Value := ORM.MARCA  ;
      ParamByName(Trim('uGRUPO               ')).Value := ORM.GRUPO      ;
      ParamByName(Trim('uFORNECEDOR          ')).Value := ORM.FORNECEDOR ;
      ParamByName(Trim('uDESCRICAO           ')).Value := ORM.DESCRICAO  ;
      ParamByName(Trim('uFOTO                ')).Value := ORM.FOTO       ;
      ParamByName(Trim('uDATA_CADASTRO       ')).Value := StringReplace(ORM.DATA_CADASTRO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('uDATA_ULTIMA_LOCACAO ')).Value := StringReplace(ORM.DATA_ULTIMA_LOCACAO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('uDT_UMOD             ')).Value := StringReplace(ORM.DT_UMOD,'/','.',[rfReplaceAll]);
      ParamByName(Trim('uHORA_UMOD           ')).Value := TimeToStr(Time()) ;
      ParamByName(Trim('uUSUARIO             ')).Value := ORM.USUARIO ;
      ParamByName(Trim('uLIXEIRA             ')).Value := ORM.LIXEIRA ;
      ParamByName(Trim('uCODIGO              ')).Value := ORM.CODIGO     ;
      Query.ExecSQL;
   end; // With
   try
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
//         Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := 'Falha ao atualizar os dados: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;


function TDAO_Produtos_FD.Delete(ORM: TORM_LOC_M1_Produtos): Boolean;
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
      SQL.Add('Update LOC_M1_PRODUTOS');
      SQL.Add(' Set ');
      SQL.Add('  LIXEIRA               =  :uLIXEIRA             ');
      SQL.Add('   WHERE CODIGO = :uCODIGO; ');
      ParamByName('uLIXEIRA').Value := 'SIM' ;
      ParamByName('uCODIGO').Value := ORM.CODIGO     ;
      Query.ExecSQL;
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add('Update LOC_M1_PRODUTOSESTOQUE');
      SQL.Add(' Set ');
      SQL.Add('  LIXEIRA               =  :uLIXEIRA             ');
      SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
      ParamByName('uLIXEIRA').Value := 'SIM' ;
      ParamByName('uCODIGO_PRODUTO').Value := ORM.CODIGO     ;
      Query.ExecSQL;
      Close;
      Params.Clear;
      SQL.Clear;
      SQL.Add('Update LOC_M1_PRODUTOSPRECOS');
      SQL.Add(' Set ');
      SQL.Add('  LIXEIRA               =  :uLIXEIRA             ');
      SQL.Add('   WHERE CODIGO_PRODUTO = :uCODIGO_PRODUTO; ');
      ParamByName('uLIXEIRA').Value := 'SIM' ;
      ParamByName('uCODIGO_PRODUTO').Value := ORM.CODIGO     ;
   end;
   try
      Query.ExecSQL;
      Query.SQL.Clear;
      Query.SQL.Add('COMMIT');
      Query.ExecSQL;
   except on nomeErro: Exception do
      begin
//         Query.SQL.SaveToFile('C:\DF_LocacaoM1\SqltesteUpdate.Txt');
         vsErro1 := 'Falha ao ENVIAR os dados para a lixeira: '+#13+#13+nomeErro.Message +#13;
         Query.SQL.Clear;
         Query.SQL.Add('Rollback');
         Query.ExecSQL;
         ShowMessage(vsErro1);
      end;
   end;
end;



function TDAO_Produtos_FD.CriarTabela(): String;
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
      SQL.Add('CREATE TABLE LOC_M1_PRODUTOS (         ');
      SQL.Add(' CODIGO               CODIGO NOT NULL, ');
      SQL.Add(' CODEMPRESA           CODEMPRESA,      ');
      SQL.Add(' PRODUTO              NOME,            ');
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
      SQL.Add(' LIXEIRA              FLAG_SIMPLES     ');
      SQL.Add(');');
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
         vsErro1 := 'Tabelade de Produtos já existente e/ou erro ao criar a tabela de Usuarios: '+nomeErro.Message +#13;
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

      end;
   end;
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
end;


end.
