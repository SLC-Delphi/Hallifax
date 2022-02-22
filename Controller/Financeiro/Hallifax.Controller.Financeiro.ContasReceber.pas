unit Hallifax.Controller.Financeiro.ContasReceber;

interface

Uses
   Hallifax.Controller.Financeiro.ContasReceber_Interface,
   MODEL.ORM_ContasReceber, Model.DAO.Financeiro.ContasReceber_FD;

Type
   TController_ContasReceber_FD = Class (TInterfacedObject, IController_ContasReceber_FD)
      DAO_ContasReceber: TDAO_LocacoesContasReceber_FD;
      ORM_ContasReceber: TORM_ContasReceber;
      Procedure LoadGet;
      Function DAO : TDAO_LocacoesContasReceber_FD;
      Function ORM : TORM_ContasReceber;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  System.SysUtils;

{ TController_ContasReceber_FD }


{ TController_ContasReceber_FD }

constructor TController_ContasReceber_FD.Create;
begin
   DAO_ContasReceber:= TDAO_LocacoesContasReceber_FD.Create;
   ORM_ContasReceber:= TORM_ContasReceber.Create;
end;


destructor TController_ContasReceber_FD.Destroy;
begin
   DAO_ContasReceber.DisposeOf;
   ORM_ContasReceber.DisposeOf;
  inherited;
end;


function TController_ContasReceber_FD.DAO: TDAO_LocacoesContasReceber_FD;
begin
   Result := DAO_ContasReceber;
end;

function TController_ContasReceber_FD.ORM: TORM_ContasReceber;
begin
   Result := ORM_ContasReceber;
end;

procedure TController_ContasReceber_FD.LoadGet;
begin
   ORM.CODIGO              := DAO_ContasReceber.Query.FieldByName(TRIM('CODIGO                ')).AsString;
   ORM.CODEMPRESA          := DAO_ContasReceber.Query.FieldByName(TRIM('CODEMPRESA            ')).AsString;
   ORM.DT_VENCIMENTO       := DAO_ContasReceber.Query.FieldByName(TRIM('DT_VENCIMENTO         ')).AsString;
   ORM.DT_VENDA            := DAO_ContasReceber.Query.FieldByName(TRIM('DT_VENDA              ')).AsString;
   ORM.DT_PAGAMENTO        := DAO_ContasReceber.Query.FieldByName(TRIM('DT_PAGAMENTO          ')).AsString;
   ORM.NOTA                := DAO_ContasReceber.Query.FieldByName(TRIM('NOTA                  ')).AsString;
   ORM.DOCUMENTO           := DAO_ContasReceber.Query.FieldByName(TRIM('DOCUMENTO             ')).AsString;
   ORM.VALOR_NOTA          := DAO_ContasReceber.Query.FieldByName(TRIM('VALOR_NOTA            ')).AsString;
   ORM.VALOR_VENCIMENTO    := DAO_ContasReceber.Query.FieldByName(TRIM('VALOR_VENCIMENTO      ')).AsString;
   ORM.VALOR_PAGAMENTO     := DAO_ContasReceber.Query.FieldByName(TRIM('VALOR_PAGAMENTO       ')).AsString;
   ORM.TIPO                := DAO_ContasReceber.Query.FieldByName(TRIM('TIPO                  ')).AsString;
   ORM.HISTORICO           := DAO_ContasReceber.Query.FieldByName(TRIM('HISTORICO             ')).AsString;
   ORM.CODCL               := DAO_ContasReceber.Query.FieldByName(TRIM('CODCL                 ')).AsString;
   ORM.CLIENTE             := DAO_ContasReceber.Query.FieldByName(TRIM('CLIENTE               ')).AsString;
   ORM.RECEBIDO_COM        := DAO_ContasReceber.Query.FieldByName(TRIM('RECEBIDO_COM          ')).AsString;
   ORM.COMISSAO            := DAO_ContasReceber.Query.FieldByName(TRIM('COMISSAO              ')).AsString;
   ORM.FLAG                := DAO_ContasReceber.Query.FieldByName(TRIM('FLAG                  ')).AsString;
   ORM.DEST                := DAO_ContasReceber.Query.FieldByName(TRIM('DEST                  ')).AsString;
   ORM.ORIGEM              := DAO_ContasReceber.Query.FieldByName(TRIM('ORIGEM                ')).AsString;
   ORM.ORIGEM_TIPO         := DAO_ContasReceber.Query.FieldByName(TRIM('ORIGEM_TIPO           ')).AsString;
   ORM.ORIGEM_NUMERO       := DAO_ContasReceber.Query.FieldByName(TRIM('ORIGEM_NUMERO         ')).AsString;
   ORM.CAIXA               := DAO_ContasReceber.Query.FieldByName(TRIM('CAIXA                 ')).AsString;
   ORM.ORIGEM_TIPO_NUM_CONT:= DAO_ContasReceber.Query.FieldByName(TRIM('ORIGEM_TIPO_NUM_CONT  ')).AsString;
   ORM.DESTINO             := DAO_ContasReceber.Query.FieldByName(TRIM('DESTINO               ')).AsString;
   ORM.COD_CONTA_DESP      := DAO_ContasReceber.Query.FieldByName(TRIM('COD_CONTA_DESP        ')).AsString;
   ORM.CONTA_DESP          := DAO_ContasReceber.Query.FieldByName(TRIM('CONTA_DESP            ')).AsString;
   ORM.COD_SUB_CONTA_DESP  := DAO_ContasReceber.Query.FieldByName(TRIM('COD_SUB_CONTA_DESP    ')).AsString;
   ORM.SUB_CONTA_DESP      := DAO_ContasReceber.Query.FieldByName(TRIM('SUB_CONTA_DESP        ')).AsString;
   ORM.BANCO               := DAO_ContasReceber.Query.FieldByName(TRIM('BANCO                 ')).AsString;
   ORM.N_ORCAMENTO         := DAO_ContasReceber.Query.FieldByName(TRIM('N_ORCAMENTO           ')).AsString;
   ORM.NOTA_FISCAL         := DAO_ContasReceber.Query.FieldByName(TRIM('NOTA_FISCAL           ')).AsString;
end;

end.
