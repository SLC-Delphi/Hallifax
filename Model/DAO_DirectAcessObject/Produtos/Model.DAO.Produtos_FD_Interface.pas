unit Model.DAO.Produtos_FD_Interface;

interface

uses
  MODEL.ORM_Loc_M1_Produtos;

type
   IDAO_Produtos = Interface
         ['{38A53E7D-9B1F-4553-B94E-DAD3AA4F1223}']
         Function GetSimple(vsLixeira: String): Boolean;
         Function Get(vsCampos, vsCondicao, vsOrdem, vsLixeira: String): Boolean;
         Function GetId(vsId, vsLixeira: String): Boolean;
         function Post (ORM: TORM_LOC_M1_Produtos): Boolean;
         Function Put (ORM: TORM_LOC_M1_Produtos): Boolean;
         Function CriarTabela(): String;
   End;

implementation

end.
