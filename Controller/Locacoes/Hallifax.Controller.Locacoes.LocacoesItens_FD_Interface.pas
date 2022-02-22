unit Hallifax.Controller.Locacoes.LocacoesItens_FD_Interface;

interface

Uses
   MODEL.ORM_Loc_M1_LocacaoItens,
   Model.DAO.LocacoesItens_FD;

Type
   IController_LocacoesItens_FD = Interface
      ['{0D83AC9B-5F9D-4372-8A8A-D0B74FE410C4}']
      Procedure LoadGet;
      Function DAO : TDAO_LocacoesItens_FD;
      Function ORM : TORM_LOC_M1_LocacaoItens;
   End;

implementation

end.
