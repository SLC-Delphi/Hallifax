unit Model.Conexao_IB;

interface

Uses Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Model.Conexao_Interface, System.SysUtils,
   Parametros.CaminhoBancoDeDados;

type
   TConexao_IB = Class (TInterfacedObject, IConexao)
      Public
         FDatabase : TIBDatabase;
         FTransaction  : TIBTransaction;
         Function DefinirConexao: String;
         Function Connection : TObject;
         Class Function New : IConexao;
         constructor Create;
         Destructor Destroy; Override;
      Private
         FParametro_CaminhoBancoDeDados : TParametro_CaminhoBancoDeDados;
   End;


implementation

{ TConexao_IB }


function TConexao_IB.Connection: TObject;
begin
   Result := FDatabase;
end;

constructor TConexao_IB.Create;
begin
   DefinirConexao;
end;

Function TConexao_IB.DefinirConexao: String;
Begin
   Try
      FParametro_CaminhoBancoDeDados := TParametro_CaminhoBancoDeDados.Create;
      FDatabase := TIBDatabase.Create(Nil);
      FTransaction := TIBTransaction.Create(Nil);
      FTransaction.DefaultAction := TACommitRetaining;
      FDatabase.DatabaseName := FParametro_CaminhoBancoDeDados.Caminho;
      FDatabase.LoginPrompt := False;
      FDatabase.ServerType := 'IBServer';
//      FDatabase.Params.AddPair('user_name','sysdba');
//      FDatabase.Params.AddPair('password','masterkey');
      FDatabase.Params.Strings[1] := 'user_name=sysdba';
      FDatabase.Params.Strings[2] := 'password=masterkey';
      FDatabase.DefaultTransaction := FTransaction;

      FDatabase.Open;
   Finally
      Result := 'Conexao Definida';
   End;
End;

destructor TConexao_IB.Destroy;
begin
  inherited;
   FDatabase.ForceClose;
   FreeAndNil(FParametro_CaminhoBancoDeDados);
   FreeAndNil(FDatabase);
   FreeAndNil(FTransaction);
end;

class function TConexao_IB.New: IConexao;
begin
   Self.Create;
end;

end.
