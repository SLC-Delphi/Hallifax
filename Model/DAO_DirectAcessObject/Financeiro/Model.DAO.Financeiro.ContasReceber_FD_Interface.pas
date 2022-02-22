unit Model.DAO.Financeiro.ContasReceber_FD_Interface;

interface


uses
  MODEL.ORM_ContasReceber, System.Classes;

type
   IDAO_ContasReceber = Interface
         ['{9F04D330-FDD0-493A-85ED-99BF1372243E}']
         Function GetId(vsNumero, vsId: String): Boolean;
         function Post (ORM: TORM_ContasReceber): Boolean;
   End;


implementation

end.
