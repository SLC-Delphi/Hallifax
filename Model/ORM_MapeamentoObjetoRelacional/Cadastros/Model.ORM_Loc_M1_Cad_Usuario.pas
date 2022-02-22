unit Model.ORM_Loc_M1_Cad_Usuario;

interface

Type
   TORM_LOC_M1_CAD_USUARIO = Class
   Private
      FDATA_CADASTRO: TDate;
      FNOME_USUARIO: String;
      FCODIGO: integer;
      FCODEMPRESA: smallint;
      FUSUARIO_UMOD: String;
      FLIXEIRA: String;
      FOPERACAO_UMOD: String;
    FHR_UMOD: TTime;
    FDT_UMOD: TDate;
    FSENHA: String;
    FFLAG_PERMISSAO: String;
      Procedure SetCODIGO(Const Value: integer);
      Procedure SetCODEMPRESA(Const Value: smallint);
      Procedure SetNOME_USUARIO(Const Value: String);
      Procedure SetDATA_CADASTRO(Const Value: TDate);
      Procedure SetUSUARIO_UMOD(Const Value: String);
      Procedure SetOPERACAO_UMOD(Const Value: String);
      Procedure SetLIXEIRA(Const Value: String);
      procedure SetDT_UMOD(const Value: TDate);
      procedure SetHR_UMOD(const Value: TTime);
    procedure SetFLAG_PERMISSAO(const Value: String);
    procedure SetSENHA(const Value: String);
   Public
      Property CODIGO: integer Read FCODIGO Write SetCODIGO;
      Property CODEMPRESA: smallint Read FCODEMPRESA Write SetCODEMPRESA;
      Property NOME_USUARIO: String Read FNOME_USUARIO Write SetNOME_USUARIO;
      Property SENHA: String read FSENHA write SetSENHA;
      Property FLAG_PERMISSAO: String read FFLAG_PERMISSAO write SetFLAG_PERMISSAO;
      Property DATA_CADASTRO: TDate Read FDATA_CADASTRO Write SetDATA_CADASTRO;
      Property DT_UMOD: TDate read FDT_UMOD write SetDT_UMOD;
      Property HR_UMOD: TTime read FHR_UMOD write SetHR_UMOD;
      Property USUARIO_UMOD: String Read FUSUARIO_UMOD Write SetUSUARIO_UMOD;
      Property OPERACAO_UMOD: String Read FOPERACAO_UMOD Write SetOPERACAO_UMOD;
      Property LIXEIRA: String Read FLIXEIRA Write SetLIXEIRA;
   End;

implementation

{ TORM_LOC_M1_CAD_USUARIO }

procedure TORM_LOC_M1_CAD_USUARIO.SetCODEMPRESA(const Value: smallint);
begin
  FCODEMPRESA := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetCODIGO(const Value: integer);
begin
  FCODIGO := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetDATA_CADASTRO(const Value: TDate);
begin
  FDATA_CADASTRO := Value;
end;


procedure TORM_LOC_M1_CAD_USUARIO.SetDT_UMOD(const Value: TDate);
begin
  FDT_UMOD := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetFLAG_PERMISSAO(const Value: String);
begin
  FFLAG_PERMISSAO := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetHR_UMOD(const Value: TTime);
begin
  FHR_UMOD := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetLIXEIRA(const Value: String);
begin
  FLIXEIRA := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetNOME_USUARIO(const Value: String);
begin
  FNOME_USUARIO := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetOPERACAO_UMOD(const Value: String);
begin
  FOPERACAO_UMOD := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetSENHA(const Value: String);
begin
  FSENHA := Value;
end;

procedure TORM_LOC_M1_CAD_USUARIO.SetUSUARIO_UMOD(const Value: String);
begin
  FUSUARIO_UMOD := Value;
end;

end.


//==================================================================================================================

(*
CREATE TABLE LOC_M1_CAD_USUARIO (
   CODIGO         CODIGO,
   CODEMPRESA     INTEGER default 1 NOT NULL ,
   NOME_USUARIO   NOME,
   DATA_CADASTRO  DATE,
   DT_UMOD        DATE,
   HORA_UMOD      TIME,
   USUARIO_UMOD   NOME,
   OPERACAO_UMOD  OPERACAO_UMOD_D,
   LIXEIRA        LIXEIRA_D
);




CREATE SEQUENCE GEN_LOC_M1_CAD_USUARIO_ID



create trigger loc_m1_cad_usuario_bi for loc_m1_cad_usuario
active before insert position 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_loc_m1_cad_usuario_id,1);
end



create or alter procedure CAD_LOC_M1_CAD_USUARIO (
    VICODEMPRESA CODEMPRESA not null,
    VSNOME_USUARIO NOME,
    VDTDATA_CADASTRO date,
    VDTDT_UMOD date,
    VHHORA_UMOD time,
    VSUSUARIO_UMOD NOME,
    VSOPERACAO_UMOD OPERACAO_UMOD_D not null,
    VSLIXEIRA LIXEIRA_D not null,
    VICODIGO CODIGO)
as
/*declare variable VDTDT_UMOD date;
declare variable VHHORA_UMOD time; */
begin
   /*vdtDT_UMOD= CURRENT_DATE;
   vhHORA_UMOD = CURRENT_TIME;*/

   IF (:vsOPERACAO_UMOD  = 'INSERIR') THEN
   BEGIN
      /* INSERIR */
      INSERT into LOC_M1_CAD_USUARIO(CODEMPRESA, NOME_USUARIO, DATA_CADASTRO, DT_UMOD , HORA_UMOD, USUARIO_UMOD, OPERACAO_UMOD, LIXEIRA)
         values (:viCODEMPRESA, :vsNOME_USUARIO, :vdtDATA_CADASTRO, :vdtDT_UMOD, :vhHORA_UMOD, :vsUSUARIO_UMOD, :vsOPERACAO_UMOD  , :vsLixeira);
   END
   ELSE IF (:vsOPERACAO_UMOD  = 'ATUALIZAR') THEN
   BEGIN
      /* ATUALIZAR */
      UPDATE LOC_M1_CAD_USUARIO SET
         CODEMPRESA    =:viCODEMPRESA,
         NOME_USUARIO  =:vsNOME_USUARIO,
         DT_UMOD       =:vdtDT_UMOD,
         HORA_UMOD     =:vhHORA_UMOD,
         USUARIO_UMOD  =:vsUSUARIO_UMOD,
         OPERACAO_UMOD =:vsOPERACAO_UMOD,
         LIXEIRA       =:vsLixeira
      WHERE CODIGO = :viCodigo;
   END
   ELSE IF (:vsOPERACAO_UMOD  = 'EXCLUIR') THEN
   BEGIN
      /* EXCLUIR*/
      UPDATE LOC_M1_CAD_USUARIO SET
         DT_UMOD        =:vdtDT_UMOD,
         HORA_UMOD      =:vhHORA_UMOD,
         USUARIO_UMOD   =:vsUSUARIO_UMOD,
         OPERACAO_UMOD  ='EXCLUIR',
         LIXEIRA        ='SIM'
      WHERE CODIGO = :viCodigo;
   END
end
