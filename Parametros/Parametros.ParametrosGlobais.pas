unit Parametros.ParametrosGlobais;

interface

uses
  System.SysUtils, StrUtils;

Type
   TParametrosGlobais = Class
   private
      FParametroCorLocacao: String;
      FParametroCorCadastros: String;
      FParametroCorConsulta: String;
      FParametroCorPrincipal: String;
    FDriverBancoDeDados: String;
    FIPDoServidor: String;
    FDiretorioDoSistema: String;
      procedure SetParametroCorCadastros(const Value: String);
      procedure SetParametroCorConsulta(const Value: String);
      procedure SetParametroCorLocacao(const Value: String);
      procedure SetParametroCorPrincipal(const Value: String);
    procedure SetDiretorioDoSistema(const Value: String);
    procedure SetDriverBancoDeDados(const Value: String);
    procedure SetIPDoServidor(const Value: String);
   published
      property ParametroCorPrincipal: String read FParametroCorPrincipal  write SetParametroCorPrincipal;
      property ParametroCorConsulta: String read FParametroCorConsulta  write SetParametroCorConsulta;
      property ParametroCorCadastros: String read FParametroCorCadastros  write SetParametroCorCadastros;
      property ParametroCorLocacao: String read FParametroCorLocacao  write SetParametroCorLocacao;
      property IPDoServidor: String read FIPDoServidor write SetIPDoServidor;
      property DiretorioDoSistema : String read FDiretorioDoSistema write SetDiretorioDoSistema;
      property DriverBancoDeDados : String read FDriverBancoDeDados write SetDriverBancoDeDados;
      Class function SemApostrofesEAcentosIniciais(vsTexto: String): string;
   Public
      Constructor Create;
   End;

implementation

{ TParametrosGlobais }

procedure TParametrosGlobais.SetDiretorioDoSistema(const Value: String);
begin
  FDiretorioDoSistema := Value;
end;

procedure TParametrosGlobais.SetDriverBancoDeDados(const Value: String);
begin
  FDriverBancoDeDados := Value;
end;

procedure TParametrosGlobais.SetIPDoServidor(const Value: String);
begin
  FIPDoServidor := Value;
end;

procedure TParametrosGlobais.SetParametroCorCadastros(const Value: String);
begin
  FParametroCorCadastros := Value;
end;

procedure TParametrosGlobais.SetParametroCorConsulta(const Value: String);
begin
  FParametroCorConsulta := Value;
end;

procedure TParametrosGlobais.SetParametroCorLocacao(const Value: String);
begin
  FParametroCorLocacao := Value;
end;

procedure TParametrosGlobais.SetParametroCorPrincipal(const Value: String);
begin
  FParametroCorPrincipal := Value;
end;

constructor TParametrosGlobais.Create;
begin
   Self.ParametroCorPrincipal := 'DARK';
   Self.ParametroCorConsulta :=  'DARK';
   Self.ParametroCorCadastros := 'ESCURO';
   Self.ParametroCorLocacao :=   'ESCURO';
   Self.DriverBancoDeDados := 'FD';
   Self.IPDoServidor :='';
   Self.DiretorioDoSistema :='C:\DF_LocacaoM1\';
end;

Class function TParametrosGlobais.SemApostrofesEAcentosIniciais (vsTexto: String):string;
BEGIN
     vsTexto := StringReplace(vsTexto, #34 ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, #39 ,'�',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '*' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '{' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '}' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '`' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '^' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '~' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '�' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '�' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, ';' ,'',[rfReplaceAll]);
     // --> Iniciais
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('[',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS(']',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('!',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('?',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS(',',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('$',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('%',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('&',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');

     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');

     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');

     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');

     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');

     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     IF (POS('�',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     // --> Na express�o inteira
     IF (POS('�',vsTexto)>0) then vsTexto := StringReplace(vsTexto, '�' ,'N',[rfReplaceAll]);
     IF (POS('�',vsTexto)>0) then vsTexto := StringReplace(vsTexto, '�' ,'n',[rfReplaceAll]);

     IF (POS('�',vsTexto)>0) then vsTexto := StringReplace(vsTexto, '�' ,'C',[rfReplaceAll]);
     IF (POS('�',vsTexto)>0) then vsTexto := StringReplace(vsTexto, '�' ,'c',[rfReplaceAll]);
     Result := vsTexto;
end;


end.

