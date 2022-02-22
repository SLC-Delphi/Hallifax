unit Hallifax.Controller.Locacoes.LocacoesCabecalho_FD;

interface

Uses
   Hallifax.Controller.Locacoes.LocacoesCabecalho_FD_Interface,
   MODEL.ORM_Loc_M1_LocacaoCabecalho,
   Model.DAO.LocacoesCabecalho_FD;

Type
   TController_LocacoesCabechalo_FD = Class (TInterfacedObject, IController_LocacoesCabecalho_FD)
      DAO_LocacoesCabecalho: TDAO_LocacoesCabecalho_FD;
      ORM_LocacoesCabecalho: TORM_LOC_M1_LOCACAO_CABECALHO;
      Procedure LoadGet;
      Function DAO : TDAO_LocacoesCabecalho_FD;
      Function ORM : TORM_LOC_M1_LOCACAO_CABECALHO;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  System.SysUtils;

{ TController_LocacoesCabechalo_FD }


{ TController_LocacoesCabechalo_FD }

constructor TController_LocacoesCabechalo_FD.Create;
begin
   DAO_LocacoesCabecalho:= TDAO_LocacoesCabecalho_FD.Create;
   ORM_LocacoesCabecalho:= TORM_LOC_M1_LOCACAO_CABECALHO.Create;
end;


destructor TController_LocacoesCabechalo_FD.Destroy;
begin
   DAO_LocacoesCabecalho.DisposeOf;
   ORM_LocacoesCabecalho.DisposeOf;
  inherited;
end;


function TController_LocacoesCabechalo_FD.DAO: TDAO_LocacoesCabecalho_FD;
begin
   Result := DAO_LocacoesCabecalho;
end;


function TController_LocacoesCabechalo_FD.ORM: TORM_LOC_M1_LOCACAO_CABECALHO;
begin
   Result := ORM_LocacoesCabecalho;
end;

procedure TController_LocacoesCabechalo_FD.LoadGet;
begin
   ORM.CODIGO               := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('CODIGO               ')).AsString;
   ORM.CODEMPRESA           := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('CODEMPRESA            ')).AsString;
   ORM.DATA_LOCACAO         := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('DATA_LOCACAO          ')).AsString;
   ORM.CODIGO_CLIENTE       := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('CODIGO_CLIENTE        ')).AsString;
   ORM.CLIENTE              := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('CLIENTE               ')).AsString;
   ORM.ENDERECO_ENTREGA     := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('ENDERECO_ENTREGA      ')).AsString;
   ORM.NUMEND_ENTREGA       := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('NUMEND_ENTREGA        ')).AsString;
   ORM.BAIRRO_ENTREGA       := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('BAIRRO_ENTREGA        ')).AsString;
   ORM.CIDADE_ENTREGA       := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('CIDADE_ENTREGA        ')).AsString;
   ORM.CONTATO_ENTREGA      := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('CONTATO_ENTREGA       ')).AsString;
   ORM.FONE_CONTATO_ENTREGA := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('FONE_CONTATO_ENTREGA  ')).AsString;
   ORM.OBSERVACAO           := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('OBSERVACAO            ')).AsString;
   ORM.FLAG_LOC_EM_ABERTO   := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('FLAG_LOC_EM_ABERTO    ')).AsString;
   ORM.FLAG_NOVA_RENOVADA   := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('FLAG_NOVA_RENOVADA    ')).AsString;
   ORM.SITUACAO_PAGAR       := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('SITUACAO_PAGAR        ')).AsString;
   ORM.DATA_ULTIMO_PGTO     := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('DATA_ULTIMO_PGTO      ')).AsString;
   ORM.QTD_DIAS             := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('QTD_DIAS              ')).AsString;
   ORM.TOTAL_LOCACAO        := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('TOTAL_LOCACAO         ')).AsString;
   ORM.TOTAL_RECEBIDO       := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('TOTAL_RECEBIDO        ')).AsString;
   ORM.TOTAL_A_RECEBER      := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('TOTAL_A_RECEBER       ')).AsString;
   ORM.DT_UMOD              := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('DT_UMOD               ')).AsString;
   ORM.HORA_UMOD            := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('HORA_UMOD             ')).AsString;
   ORM.USUARIO              := DAO_LocacoesCabecalho.Query.FieldByName(TRIM('USUARIO               ')).AsString;
end;


end.

























