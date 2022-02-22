unit Hallifax.Controller.Locacoes.LocacoesItens_FD;

interface

Uses
   Hallifax.Controller.Locacoes.LocacoesItens_FD_Interface,
   MODEL.ORM_Loc_M1_LocacaoItens,
   Model.DAO.LocacoesItens_FD;

Type
   TController_LocacoesItens_FD = Class (TInterfacedObject, IController_LocacoesItens_FD)
      DAO_LocacoesItens: TDAO_LocacoesItens_FD;
      ORM_LocacoesItens: TORM_LOC_M1_LocacaoItens;
      Procedure LoadGet;
      Function DAO : TDAO_LocacoesItens_FD;
      Function ORM : TORM_LOC_M1_LocacaoItens;
      Constructor Create;
      Destructor Destroy; Override;
   End;

implementation

uses
  System.SysUtils;

{ TController_LocacoesItens_FD }


{ TController_LocacoesItens_FD }

constructor TController_LocacoesItens_FD.Create;
begin
   DAO_LocacoesItens:= TDAO_LocacoesItens_FD.Create;
   ORM_LocacoesItens:= TORM_LOC_M1_LocacaoItens.Create;
end;


destructor TController_LocacoesItens_FD.Destroy;
begin
   DAO_LocacoesItens.DisposeOf;
   ORM_LocacoesItens.DisposeOf;
  inherited;
end;


function TController_LocacoesItens_FD.DAO: TDAO_LocacoesItens_FD;
begin
   Result := DAO_LocacoesItens;
end;


function TController_LocacoesItens_FD.ORM: TORM_LOC_M1_LocacaoItens;
begin
   Result := ORM_LocacoesItens;
end;


procedure TController_LocacoesItens_FD.LoadGet;
begin
   ORM.CODIGO               := DAO_LocacoesItens.Query.FieldByName(TRIM('CODIGO                 ')).AsString;
   ORM.CODIGO_LOCACAO       := DAO_LocacoesItens.Query.FieldByName(TRIM('CODIGO_LOCACAO         ')).AsString;
   ORM.GRUPO                := DAO_LocacoesItens.Query.FieldByName(TRIM('GRUPO                  ')).AsString;
   ORM.PRODUTO              := DAO_LocacoesItens.Query.FieldByName(TRIM('PRODUTO                ')).AsString;
   ORM.MARCA                := DAO_LocacoesItens.Query.FieldByName(TRIM('MARCA                  ')).AsString;
   ORM.QTD_PRODUTO          := DAO_LocacoesItens.Query.FieldByName(TRIM('QTD_PRODUTO            ')).AsString;
   ORM.QTD_DIAS             := DAO_LocacoesItens.Query.FieldByName(TRIM('QTD_DIAS               ')).AsString;
   ORM.VALOR_PRODUTO_N_DIAS := DAO_LocacoesItens.Query.FieldByName(TRIM('VALOR_PRODUTO_N_DIAS   ')).AsString;
   ORM.VALOR_LOCACAO        := DAO_LocacoesItens.Query.FieldByName(TRIM('VALOR_LOCACAO          ')).AsString;
   ORM.VALOR_RECEBIDO       := DAO_LocacoesItens.Query.FieldByName(TRIM('VALOR_RECEBIDO         ')).AsString;
   ORM.VALOR_EM_ABERTO      := DAO_LocacoesItens.Query.FieldByName(TRIM('VALOR_EM_ABERTO        ')).AsString;
   ORM.FLAG_PAGO            := DAO_LocacoesItens.Query.FieldByName(TRIM('FLAG_PAGO              ')).AsString;
end;


end.



