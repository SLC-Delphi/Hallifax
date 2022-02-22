unit Model.DAO.Cad_Usuario_Interface;

interface

uses
  Model.ORM_Loc_M1_Cad_Usuario;

type
   IDAO_Cad_Usuario = Interface
         ['{28E0F83E-F023-4960-8934-344676F5AAF3}']
         Function GetSimple(vsLixeira: String): Boolean;
         Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
         Function GetId(vsId, vsLixeira: String): Boolean;
         function Post (DADOS_USUARIO: TORM_LOC_M1_CAD_USUARIO): Boolean;
         Function Put (DADOS_USUARIO: TORM_LOC_M1_CAD_USUARIO): Boolean;
         Function CriarTabela(): String;
   End;

implementation

end.
