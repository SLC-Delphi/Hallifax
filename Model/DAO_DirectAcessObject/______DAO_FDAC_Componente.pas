unit DAO_FDAC_Componente;

interface

Uses Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TDAO_FDAC_Componente = Class
      Public
         ofdacConnection : TFDConnection;
         ofdacTransaction  : TFDTransaction;
         constructor New;
         Destructor Destroy; Override;
   End;


implementation

{ TDAO_FDAC_Componente }

constructor TDAO_FDAC_Componente.New;
begin
   ofdacConnection := TFDConnection.Create(Nil);
   ofdacTransaction := TFDTransaction.Create(Nil);
   ofdacConnection.Params.Strings[0]:= 'User_Name = sysdba';
   ofdacConnection.Params.Strings[1]:= 'Password = masterkey';
   ofdacConnection.Params.Strings[2]:= 'Database = C:\Duplaface_019\Dados\DUPLAFACE.FDB';
   ofdacConnection.Params.Strings[3]:= 'Driver = FB';
   ofdacConnection.Transaction := ofdacTransaction;
end;

destructor TDAO_FDAC_Componente.Destroy;
begin
  inherited;
end;

end.
