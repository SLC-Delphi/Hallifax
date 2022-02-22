unit Hallifax.Controller.Financeiro.ContasReceber_Interface;

interface

Uses
  MODEL.ORM_ContasReceber, Model.DAO.Financeiro.ContasReceber_FD;

Type
   IController_ContasReceber_FD = Interface
      ['{B63AE18B-6746-4EE8-9C0B-D53FEAC52503}']
      Procedure LoadGet;
      Function DAO : TDAO_LocacoesContasReceber_FD;
      Function ORM : TORM_ContasReceber;
   End;

implementation

end.
