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
     vsTexto := StringReplace(vsTexto, #39 ,'´',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '*' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '{' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '}' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '`' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '^' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '~' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '¨' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, '§' ,'',[rfReplaceAll]);
     vsTexto := StringReplace(vsTexto, ';' ,'',[rfReplaceAll]);
     // --> Iniciais
     IF (POS('´',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('[',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS(']',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('°',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('ª',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('º',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('!',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('?',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS(',',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('$',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('%',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');
     IF (POS('&',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'');

     IF (POS('Á',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('À',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('Â',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('Ã',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');
     IF (POS('Ä',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'A');

     IF (POS('É',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');
     IF (POS('È',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');
     IF (POS('Ê',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');
     IF (POS('Ë',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'E');

     IF (POS('Í',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');
     IF (POS('Ì',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');
     IF (POS('Î',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');
     IF (POS('Ï',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'I');

     IF (POS('Ó',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('Ò',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('Ô',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('Õ',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');
     IF (POS('Ö',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'O');

     IF (POS('Ú',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     IF (POS('Ù',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     IF (POS('Û',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     IF (POS('Ü',vsTexto)=1) then vsTexto := StuffString(vsTexto,1,1,'U');
     // --> Na expressão inteira
     IF (POS('Ñ',vsTexto)>0) then vsTexto := StringReplace(vsTexto, 'Ñ' ,'N',[rfReplaceAll]);
     IF (POS('ñ',vsTexto)>0) then vsTexto := StringReplace(vsTexto, 'ñ' ,'n',[rfReplaceAll]);

     IF (POS('Ç',vsTexto)>0) then vsTexto := StringReplace(vsTexto, 'Ç' ,'C',[rfReplaceAll]);
     IF (POS('ç',vsTexto)>0) then vsTexto := StringReplace(vsTexto, 'ç' ,'c',[rfReplaceAll]);
     Result := vsTexto;
end;


end.

