unit Model.DAO.Financeiro.ContasReceber_FD;

interface

Uses
  Data.DB,FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Classes,
  Model.DAO.LocacoesCabecalhoItens_FD_Interface,
  Model.Conexao_FDAC,
  MODEL.ORM_ContasReceber,
  Model.DAO.Financeiro.ContasReceber_FD_Interface, IBX.IBDatabase, Vcl.Dialogs;

  Type TDAO_LocacoesContasReceber_FD = Class (TInterfacedObject, IDAO_ContasReceber)
     Public
      FD_Componente: TConexao_FDAC;
      Query : TFDQuery;
      DataSource : TDataSource;
      Function GetId(vsNumero, vsId: String): Boolean;
      function Post (ORM: TORM_ContasReceber): Boolean;
      Class Function New: IDAO_ContasReceber;
      Constructor Create;
      Destructor Destroy; Override;
  end;


implementation

uses
  System.SysUtils;

{ TDAO_LocacoesContasReceber_FD }

class function TDAO_LocacoesContasReceber_FD.New: IDAO_ContasReceber;
begin
   Self.Create;
end;


constructor TDAO_LocacoesContasReceber_FD.Create;
begin
   FD_Componente:= TConexao_FDAC.Create;
   Query := TFDQuery.Create(Nil);
   Query.Connection := FD_Componente.FConnection;
   Query.Transaction := FD_Componente.FTransaction;
   DataSource := TDataSource.Create(Nil);
   DataSource.DataSet := Query;
end;


destructor TDAO_LocacoesContasReceber_FD.Destroy;
begin
  inherited;
   FD_Componente.DisposeOf;
   Query.DisposeOf;
   DataSource.DisposeOf;
end;


function TDAO_LocacoesContasReceber_FD.GetId(vsNumero, vsId: String): Boolean;
begin
   with Query do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From CONTAS_RECEBER') ;
      SQL.Add(' Where ORIGEM_TIPO=''LOCACAOCONST'' AND ORIGEM_NUMERO = :sNumero AND CODIGO = :sId ');
      ParamByName('sNumero').Value := vsNumero;
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


function TDAO_LocacoesContasReceber_FD.Post(ORM: TORM_ContasReceber): Boolean;
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
      SQL.Add(' CODEMPRESA        ');
      SQL.Add(',DT_VENCIMENTO     ');
      SQL.Add(',DT_VENDA          ');
      SQL.Add(',DT_PAGAMENTO      ');
      SQL.Add(',NOTA              ');
      SQL.Add(',DOCUMENTO         ');
      SQL.Add(',VALOR_NOTA        ');
      SQL.Add(',VALOR_VENCIMENTO  ');
      SQL.Add(',VALOR_PAGAMENTO   ');
      SQL.Add(',TIPO              ');
      SQL.Add(',HISTORICO         ');
      SQL.Add(',CODCL             ');
      SQL.Add(',CLIENTE           ');
      SQL.Add(',RECEBIDO_COM      ');
      SQL.Add(',COMISSAO          ');
      SQL.Add(',FLAG              ');
      SQL.Add(',DEST              ');
      SQL.Add(',ORIGEM            ');
      SQL.Add(',ORIGEM_TIPO       ');
      SQL.Add(',ORIGEM_NUMERO     ');
      SQL.Add(',CAIXA             ');
      SQL.Add(',ORIGEM_TIPO_NUM_CONT  ');
      SQL.Add(',DESTINO           ');
      SQL.Add(',COD_CONTA_DESP    ');
      SQL.Add(',CONTA_DESP        ');
      SQL.Add(',COD_SUB_CONTA_DESP ');
      SQL.Add(',SUB_CONTA_DESP    ');
      SQL.Add(',BANCO             ');
      SQL.Add(',N_ORCAMENTO       ');
      SQL.Add(',NOTA_FISCAL       ');
      SQL.Add(' ) Values (');
      SQL.Add('  :iCODEMPRESA');
      SQL.Add(', :iDT_VENCIMENTO');
      SQL.Add(', :iDT_VENDA');
      SQL.Add(', :iDT_PAGAMENTO');
      SQL.Add(', :iNOTA');
      SQL.Add(', :iDOCUMENTO');
      SQL.Add(', :iVALOR_NOTA');
      SQL.Add(', :iVALOR_VENCIMENTO');
      SQL.Add(', :iVALOR_PAGAMENTO');
      SQL.Add(', :iTIPO');
      SQL.Add(', :iHISTORICO');
      SQL.Add(', :iCODCL');
      SQL.Add(', :iCLIENTE');
      SQL.Add(', :iRECEBIDO_COM');
      SQL.Add(', :iCOMISSAO');
      SQL.Add(', :iFLAG ');
      SQL.Add(', :iDEST');
      SQL.Add(', :iORIGEM');
      SQL.Add(', :iORIGEM_TIPO');
      SQL.Add(', :iORIGEM_NUMERO');
      SQL.Add(', :iCAIXA');
      SQL.Add(', :iORIGEM_TIPO_NUM_CONT');
      SQL.Add(', :iDESTINO');
      SQL.Add(', :iCOD_CONTA_DESP');
      SQL.Add(', :iCONTA_DESP');
      SQL.Add(', :iCOD_SUB_CONTA_DESP');
      SQL.Add(', :iSUB_CONTA_DESP');
      SQL.Add(', :iBANCO');
      SQL.Add(', :iN_ORCAMENTO');
      SQL.Add(', :iNOTA_FISCAL ');
      SQL.Add('  ) ');
      ParamByName(Trim('iCODEMPRESA           ')).Value := ORM.CODEMPRESA   ;
      ParamByName(Trim('iDT_VENCIMENTO        ')).Value := StringReplace(ORM.DT_VENCIMENTO,'/','.',[rfReplaceAll]);
      ParamByName(Trim('iDT_VENDA             ')).Value := StringReplace(ORM.DT_VENDA,'/','.',[rfReplaceAll])     ;
      ParamByName(Trim('iDT_PAGAMENTO         ')).Value := StringReplace(ORM.DT_PAGAMENTO,'/','.',[rfReplaceAll]) ;
      ParamByName(Trim('iNOTA                 ')).Value := ORM.NOTA                 ;
      ParamByName(Trim('iDOCUMENTO            ')).Value := ORM.DOCUMENTO            ;
      ParamByName(Trim('iVALOR_NOTA           ')).Value := ORM.VALOR_NOTA           ;
      ParamByName(Trim('iVALOR_VENCIMENTO     ')).Value := ORM.VALOR_VENCIMENTO     ;
      ParamByName(Trim('iVALOR_PAGAMENTO      ')).Value := ORM.VALOR_PAGAMENTO      ;
      ParamByName(Trim('iTIPO                 ')).Value := ORM.TIPO                 ;
      ParamByName(Trim('iHISTORICO            ')).Value := ORM.HISTORICO            ;
      ParamByName(Trim('iCODCL                ')).Value := ORM.CODCL                ;
      ParamByName(Trim('iCLIENTE              ')).Value := ORM.CLIENTE              ;
      ParamByName(Trim('iRECEBIDO_COM         ')).Value := ORM.RECEBIDO_COM         ;
      ParamByName(Trim('iCOMISSAO             ')).Value := ORM.COMISSAO             ;
      ParamByName(Trim('iFLAG                 ')).Value := ORM.FLAG                 ;
      ParamByName(Trim('iDEST                 ')).Value := ORM.DEST                 ;
      ParamByName(Trim('iORIGEM               ')).Value := ORM.ORIGEM               ;
      ParamByName(Trim('iORIGEM_TIPO          ')).Value := ORM.ORIGEM_TIPO          ;
      ParamByName(Trim('iORIGEM_NUMERO        ')).Value := ORM.ORIGEM_NUMERO        ;
      ParamByName(Trim('iCAIXA                ')).Value := ORM.CAIXA                ;
      ParamByName(Trim('iORIGEM_TIPO_NUM_CONT ')).Value := ORM.ORIGEM_TIPO_NUM_CONT ;
      ParamByName(Trim('iDESTINO              ')).Value := ORM.DESTINO              ;
      ParamByName(Trim('iCOD_CONTA_DESP       ')).Value := ORM.COD_CONTA_DESP       ;
      ParamByName(Trim('iCONTA_DESP           ')).Value := ORM.CONTA_DESP           ;
      ParamByName(Trim('iCOD_SUB_CONTA_DESP   ')).Value := ORM.COD_SUB_CONTA_DESP   ;
      ParamByName(Trim('iSUB_CONTA_DESP       ')).Value := ORM.SUB_CONTA_DESP       ;
      ParamByName(Trim('iBANCO                ')).Value := ORM.BANCO                ;
      ParamByName(Trim('iN_ORCAMENTO          ')).Value := ORM.N_ORCAMENTO          ;
      ParamByName(Trim('iNOTA_FISCAL          ')).Value := ORM.NOTA_FISCAL          ;
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

end.



