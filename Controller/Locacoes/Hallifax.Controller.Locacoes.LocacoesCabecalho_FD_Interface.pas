unit Hallifax.Controller.Locacoes.LocacoesCabecalho_FD_Interface;

interface

Uses
   MODEL.ORM_Loc_M1_LocacaoCabecalho,
   Model.DAO.LocacoesCabecalho_FD;

Type
   IController_LocacoesCabecalho_FD = Interface
      ['{8D9DF077-8113-443C-8E5A-6414485390F5}']
      Procedure LoadGet;
      Function DAO : TDAO_LocacoesCabecalho_FD;
      Function ORM : TORM_LOC_M1_LOCACAO_CABECALHO;
   End;

implementation

end.
