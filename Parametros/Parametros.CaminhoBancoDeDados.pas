unit Parametros.CaminhoBancoDeDados;

interface

Type
   TParametro_CaminhoBancoDeDados = Class
   Public
      Caminho: String;
      Constructor Create;
      Destructor Destroy; Override;
   Strict Private
      FArquivo: TextFile End;

implementation

{ TParametro_CaminhoBancoDeDados }

Constructor TParametro_CaminhoBancoDeDados.Create;
Begin
   AssignFile(FArquivo, 'C:\DF_LocacaoM1\caminho1.txt');
   try
      Reset(FArquivo);
      Readln(FArquivo, Caminho);
   Except
   end;
End;


Destructor TParametro_CaminhoBancoDeDados.Destroy;
begin

  inherited;
end;



end.
