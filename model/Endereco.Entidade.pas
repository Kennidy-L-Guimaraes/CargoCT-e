unit Endereco.Entidade;

interface
uses System.SysUtils;

type
TEndereco = class
  Private
  {Private Declarations}
  FCEP         : string;
  FMunicipio   : string;
  FBairro      : string;
  FLogradouro  : string;
  FNumero      : string;
  FCodigoIBGE  : string;
  FComplemento : string;
  FEstadoUF    : string;

  procedure ValidarDados;
  procedure ValidarCEP; 
  procedure ValidarEstadoUF; 
  procedure ValidarCodigoIBGE; 
  Public
  {Public Declarations}

  constructor Create(ACEP, ANumero, ACodigoIBGE, AMunicipio, ABairro,
  ALogradouro, AComplemento, AEstadoUF: string);

  property CEP        : string  read FCEP;
  property Municipio  : string  read FMunicipio;
  property Bairro     : string  read FBairro;
  property Logradouro : string  read FLogradouro;
  property Numero     : string  read FNumero;
  property CodigoIBGE : string  read FCodigoIBGE;
  property Complemento: string  read FComplemento;
  property EstadoUF   : string  read FEstadoUF;





end;

implementation

{ TEndereco }

constructor TEndereco.Create(ACEP, ANumero, ACodigoIBGE, AMunicipio, ABairro,
  ALogradouro, AComplemento, AEstadoUF: string);
begin
  FCEP         := Trim(ACep);
  FMunicipio   := Trim(AMunicipio);
  FBairro      := Trim(ABairro);
  FLogradouro  := Trim(ALogradouro);
  FNumero      := Trim(ANumero);
  FCodigoIBGE  := Trim(ACodigoIBGE);
  FComplemento := Trim(AComplemento);
  FEstadoUF    := Trim(AEStadoUF);
  ValidarDados;
end;

procedure TEndereco.ValidarCEP;
var
 C: char; 
begin
  //VALIDAR CEP
  if FCEP.Trim = '' then
    raise Exception.Create('CEP inválido');

  if FCEP.Length <> 8 then
    raise Exception.Create('O CEP precisa conter oito caracteres válidos!');

  for C in FCEP do
  if not CharInSet(C, ['0'..'9']) then
      raise Exception.Create('CEP deve conter apenas números');

end;

procedure TEndereco.ValidarCodigoIBGE;
begin
    //VALIDAR CODIGOIBGE
 if FCodigoIBGE.Trim = '' then
   raise Exception.Create('Código IBGE Inválido');

 if FCodigoIBGE.Length <> 7 then
   raise Exception.Create('O número de caracteres do código IBGE é insuficiente');
end;

procedure TEndereco.ValidarDados;
var
C : Char;
begin
  ValidarCep; 
  ValidarEstadoUF; 
  ValidarCodigoIBGE; 
end;

procedure TEndereco.ValidarEstadoUF;
var
C: char;
begin
   //VALIDAR ESTADOS UF
 if Length(FEstadoUF) <> 2 then
  raise Exception.Create('Estado deve possuir 2 caracteres');
    FEstadoUF := UpperCase(FEstadoUF);

 for C in FEstadoUF do

 if not CharInSet(C, ['A'..'Z']) then
  raise Exception.Create('Estado deve conter apenas letras.');
 end;
end. 

