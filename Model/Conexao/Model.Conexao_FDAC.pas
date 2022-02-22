unit Model.Conexao_FDAC;

interface

Uses Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Phys.MySQL,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB,
  Model.Conexao_Interface,  Parametros.CaminhoBancoDeDados, System.SysUtils;

type
   TConexao_FDAC = Class (TInterfacedObject, IConexao)
      Public
         FConnection : TFDConnection;
         FTransaction  : TFDTransaction;
         FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
         FDPhysFBDriverLink1: TFDPhysFBDriverLink;
         FDPhysIBDriverLink1: TFDPhysIBDriverLink;
         FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
         Function DefinirConexao(): String;
         Function Connection : TObject;
         Class Function New : IConexao;
         constructor Create;
         Destructor Destroy; Override;
      Private
         FParametro_CaminhoBancoDeDados : TParametro_CaminhoBancoDeDados;
   End;


implementation


{ TConexao_FDAC }

function TConexao_FDAC.Connection: TObject;
begin
   Result := FConnection;
end;

Constructor TConexao_FDAC.Create;
Begin
   // Drivers
   FDPhysMySQLDriverLink1:= TFDPhysMySQLDriverLink.Create(Nil);
   FDPhysFBDriverLink1:= TFDPhysFBDriverLink.Create(Nil);
   FDPhysIBDriverLink1:= TFDPhysIBDriverLink.Create(Nil);
   FDPhysSQLiteDriverLink1:= TFDPhysSQLiteDriverLink.Create(Nil);
   DefinirConexao();
End;

Function TConexao_FDAC.DefinirConexao: String;
Begin
   Try
      FParametro_CaminhoBancoDeDados := TParametro_CaminhoBancoDeDados.Create;
      FConnection := TFDConnection.Create(Nil);
      FConnection.Params.DriverID := 'FB';
      FConnection.Params.Database := FParametro_CaminhoBancoDeDados.Caminho;
      FConnection.Params.UserName := 'sysdba';
      FConnection.Params.Password := 'masterkey';
//      FConnection.Params.Strings[0] := 'Driver = FB';
//      FConnection.Params.Strings[1] := 'Database = C:\Duplaface_019\Dados\DUPLAFACE.FDB';
//      FConnection.Params.Strings[3] := 'UserName = sysdba';
//      FConnection.Params.Strings[3] := 'Password = masterkey';
      FTransaction := TFDTransaction.Create(Nil);
      FTransaction.Connection := FConnection;
    //  FConnection.Transaction := FTransaction;
      FConnection.Connected := True;
   Finally
      Result := 'Conexão Efetuada';
   End;
End;

destructor TConexao_FDAC.Destroy;
begin
  inherited;
   FConnection.Close;
   FreeAndNil(FParametro_CaminhoBancoDeDados);
   FreeAndNil(FConnection);
   FreeAndNil(FTransaction);
   FDPhysMySQLDriverLink1.DisposeOf;
   FDPhysFBDriverLink1.DisposeOf;
   FDPhysIBDriverLink1.DisposeOf;
   FDPhysSQLiteDriverLink1.DisposeOf;
end;

class function TConexao_FDAC.New: IConexao;
begin
   Self.Create;
end;

end.
