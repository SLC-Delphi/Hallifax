unit Model.DAO.Cad_Permissoes_Interface;

interface

uses
  Model.ORM_Loc_M1_Cad_Permissoes;

type
   IDAO_Cad_Permissoes = Interface
         ['{998B05A7-27BE-4014-BCE6-8A3507B16744}']
         Function GetSimple(vsLixeira: String): Boolean;
         Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
         Function GetId(vsId, vsLixeira: String): Boolean;
         function Post (ORM: TORM_LOC_M1_CAD_Permissoes): Boolean;
         Function Put (ORM: TORM_LOC_M1_CAD_Permissoes): Boolean;
         Function CriarTabela(): String;
   End;

implementation

end.
