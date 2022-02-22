unit DAO_IB_Componente;

interface

Uses Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery;

type
   TDAO_IB_Componente = Class
      Public
         oibBancoDeDados : TIBDatabase;
         oibTransaction  : TIBTransaction;
         constructor New;
         Destructor Destroy; Override;
   End;


implementation

{ TDAO_IB_Componente }

constructor TDAO_IB_Componente.New;
begin
   oibBancoDeDados := TIBDatabase.Create(Nil);
   oibTransaction := TIBTransaction.Create(Nil);
   oibTransaction.DefaultAction := TACommitRetaining;
   oibBancoDeDados.DatabaseName:= 'C:\Duplaface_019\Dados\DUPLAFACE.FDB';
   oibBancoDeDados.LoginPrompt := False;
   oibBancoDeDados.ServerType := 'IBServer';
   oibBancoDeDados.Params.Strings[0]:= 'user_name=sysdba';
   oibBancoDeDados.Params.Strings[1]:= 'password=masterkey';
end;

destructor TDAO_IB_Componente.Destroy;
begin
  inherited;
end;

end.
