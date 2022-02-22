unit MODEL.ORM_Loc_M1_ProdutosPreco;

interface

Type
   TORM_LOC_M1_PRODUTOSPRECO = Class
   Private
      FPRECO17: double;
      FPRECO04: double;
      FProduto: String;
      FDATA_CADASTRO: String;
      FPRECO14: double;
      FPRECO05: double;
      FPRECO15: double;
      FCODEMPRESA: String;
      FPRECO28: double;
      FDT_UMOD: String;
      FPRECO29: double;
      FPRECO08: double;
      FPRECO18: double;
      FPRECO09: double;
      FPRECO19: double;
      FPRECO22: double;
      FPRECO23: double;
      FPRECO20: double;
      FPRECO02: double;
      FUSUARIO: String;
      FPRECO30: double;
      FPRECO21: double;
      FPRECO12: double;
      FPRECO03: double;
      FPRECO31: double;
      FPRECO26: double;
      FPRECO13: double;
      FPRECO27: double;
      FPRECO10: double;
      FPRECO01: double;
      FPRECO24: double;
      FPRECO11: double;
      FPRECO06: double;
      FPRECO25: double;
      FPRECO16: double;
      FPRECO07: double;
      FCODIGO_PRODUTO: String;
    FLIXEIRA: String;
    FMARCA: String;
    FHORA_UMOD: String;
      Procedure SetCODEMPRESA(Const Value: String);
      Procedure SetCODIGO_PRODUTO(Const Value: String);
      Procedure SetDT_UMOD(Const Value: String);
      Procedure SetDATA_CADASTRO(Const Value: String);
      Procedure SetPRECO01(Const Value: double);
      Procedure SetPRECO02(Const Value: double);
      Procedure SetPRECO03(Const Value: double);
      Procedure SetPRECO04(Const Value: double);
      Procedure SetPRECO05(Const Value: double);
      Procedure SetPRECO06(Const Value: double);
      Procedure SetPRECO07(Const Value: double);
      Procedure SetPRECO08(Const Value: double);
      Procedure SetPRECO09(Const Value: double);
      Procedure SetPRECO10(Const Value: double);
      Procedure SetPRECO11(Const Value: double);
      Procedure SetPRECO12(Const Value: double);
      Procedure SetPRECO13(Const Value: double);
      Procedure SetPRECO14(Const Value: double);
      Procedure SetPRECO15(Const Value: double);
      Procedure SetPRECO16(Const Value: double);
      Procedure SetPRECO17(Const Value: double);
      Procedure SetPRECO18(Const Value: double);
      Procedure SetPRECO19(Const Value: double);
      Procedure SetPRECO20(Const Value: double);
      Procedure SetPRECO21(Const Value: double);
      Procedure SetPRECO22(Const Value: double);
      Procedure SetPRECO23(Const Value: double);
      Procedure SetPRECO24(Const Value: double);
      Procedure SetPRECO25(Const Value: double);
      Procedure SetPRECO26(Const Value: double);
      Procedure SetPRECO27(Const Value: double);
      Procedure SetPRECO28(Const Value: double);
      Procedure SetPRECO29(Const Value: double);
      Procedure SetPRECO30(Const Value: double);
      Procedure SetPRECO31(Const Value: double);
      Procedure SetProduto(Const Value: String);
      Procedure SetUSUARIO(Const Value: String);
    procedure SetLIXEIRA(const Value: String);
    procedure SetMARCA(const Value: String);
    procedure SetHORA_UMOD(const Value: String);
   Public
      Property CODEMPRESA: String Read FCODEMPRESA Write SetCODEMPRESA;
      Property CODIGO_PRODUTO: String Read FCODIGO_PRODUTO Write SetCODIGO_PRODUTO;
      Property Produto: String Read FProduto Write SetProduto;
      Property MARCA: String read FMARCA write SetMARCA;
      Property PRECO01: double Read FPRECO01 Write SetPRECO01;
      Property PRECO02: double Read FPRECO02 Write SetPRECO02;
      Property PRECO03: double Read FPRECO03 Write SetPRECO03;
      Property PRECO04: double Read FPRECO04 Write SetPRECO04;
      Property PRECO05: double Read FPRECO05 Write SetPRECO05;
      Property PRECO06: double Read FPRECO06 Write SetPRECO06;
      Property PRECO07: double Read FPRECO07 Write SetPRECO07;
      Property PRECO08: double Read FPRECO08 Write SetPRECO08;
      Property PRECO09: double Read FPRECO09 Write SetPRECO09;
      Property PRECO10: double Read FPRECO10 Write SetPRECO10;
      Property PRECO11: double Read FPRECO11 Write SetPRECO11;
      Property PRECO12: double Read FPRECO12 Write SetPRECO12;
      Property PRECO13: double Read FPRECO13 Write SetPRECO13;
      Property PRECO14: double Read FPRECO14 Write SetPRECO14;
      Property PRECO15: double Read FPRECO15 Write SetPRECO15;
      Property PRECO16: double Read FPRECO16 Write SetPRECO16;
      Property PRECO17: double Read FPRECO17 Write SetPRECO17;
      Property PRECO18: double Read FPRECO18 Write SetPRECO18;
      Property PRECO19: double Read FPRECO19 Write SetPRECO19;
      Property PRECO20: double Read FPRECO20 Write SetPRECO20;
      Property PRECO21: double Read FPRECO21 Write SetPRECO21;
      Property PRECO22: double Read FPRECO22 Write SetPRECO22;
      Property PRECO23: double Read FPRECO23 Write SetPRECO23;
      Property PRECO24: double Read FPRECO24 Write SetPRECO24;
      Property PRECO25: double Read FPRECO25 Write SetPRECO25;
      Property PRECO26: double Read FPRECO26 Write SetPRECO26;
      Property PRECO27: double Read FPRECO27 Write SetPRECO27;
      Property PRECO28: double Read FPRECO28 Write SetPRECO28;
      Property PRECO29: double Read FPRECO29 Write SetPRECO29;
      Property PRECO30: double Read FPRECO30 Write SetPRECO30;
      Property PRECO31: double Read FPRECO31 Write SetPRECO31;
      Property DATA_CADASTRO: String Read FDATA_CADASTRO Write SetDATA_CADASTRO;
      Property DT_UMOD: String Read FDT_UMOD Write SetDT_UMOD;
      Property HORA_UMOD: String read FHORA_UMOD write SetHORA_UMOD;
      Property USUARIO: String Read FUSUARIO Write SetUSUARIO;
      Property LIXEIRA: String read FLIXEIRA write SetLIXEIRA;
   End;

implementation

{ TORM_LOC_M1_PRODUTOSPRECOS }

procedure TORM_LOC_M1_PRODUTOSPRECO.SetCODEMPRESA(const Value: String);
begin
  FCODEMPRESA := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetCODIGO_PRODUTO(const Value: String);
begin
  FCODIGO_PRODUTO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetDATA_CADASTRO(const Value: String);
begin
  FDATA_CADASTRO := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetDT_UMOD(const Value: String);
begin
  FDT_UMOD := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetHORA_UMOD(const Value: String);
begin
  FHORA_UMOD := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetLIXEIRA(const Value: String);
begin
  FLIXEIRA := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetMARCA(const Value: String);
begin
  FMARCA := Value;
end;


procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO01(const Value: double);
begin
  FPRECO01 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO02(const Value: double);
begin
  FPRECO02 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO03(const Value: double);
begin
  FPRECO03 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO04(const Value: double);
begin
  FPRECO04 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO05(const Value: double);
begin
  FPRECO05 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO06(const Value: double);
begin
  FPRECO06 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO07(const Value: double);
begin
  FPRECO07 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO08(const Value: double);
begin
  FPRECO08 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO09(const Value: double);
begin
  FPRECO09 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO10(const Value: double);
begin
  FPRECO10 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO11(const Value: double);
begin
  FPRECO11 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO12(const Value: double);
begin
  FPRECO12 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO13(const Value: double);
begin
  FPRECO13 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO14(const Value: double);
begin
  FPRECO14 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO15(const Value: double);
begin
  FPRECO15 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO16(const Value: double);
begin
  FPRECO16 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO17(const Value: double);
begin
  FPRECO17 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO18(const Value: double);
begin
  FPRECO18 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO19(const Value: double);
begin
  FPRECO19 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO20(const Value: double);
begin
  FPRECO20 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO21(const Value: double);
begin
  FPRECO21 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO22(const Value: double);
begin
  FPRECO22 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO23(const Value: double);
begin
  FPRECO23 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO24(const Value: double);
begin
  FPRECO24 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO25(const Value: double);
begin
  FPRECO25 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO26(const Value: double);
begin
  FPRECO26 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO27(const Value: double);
begin
  FPRECO27 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO28(const Value: double);
begin
  FPRECO28 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO29(const Value: double);
begin
  FPRECO29 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO30(const Value: double);
begin
  FPRECO30 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetPRECO31(const Value: double);
begin
  FPRECO31 := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetProduto(const Value: String);
begin
  FProduto := Value;
end;

procedure TORM_LOC_M1_PRODUTOSPRECO.SetUSUARIO(const Value: String);
begin
  FUSUARIO := Value;
end;

end.
