unit Endereco.Entidade;

interface
uses System.SysUtils, Endereco.Tipo.CEP;

type
TEndereco = class
  Private
  {Private Declarations}
  FCEP         : TCEP;
  FMunicipio   : string;
  FBairro      : string;
  FLogradouro  : string;
  FNumero      : string;
  FCodigoIBGE  : string;
  FComplemento : string;
  FEstadoUF    : string;

  procedure ValidarDados;
  procedure ValidarEstadoUF;
  procedure ValidarCodigoIBGE;
  procedure ValidarMunicipio;
  procedure ValidarBairro;
  procedure ValidarLogradouro;
  procedure ValidarNumero;
  procedure ValidarComplemento;

  Public
  {Public Declarations}

  constructor Create(ACEP: TCEP; AEstadoUF, AMunicipio, ABairro, ALogradouro,
  ANumero, ACodigoIBGE, AComplemento: string);

  property CEP        : TCEP    read FCEP;
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
{   === ORDEM CORRETA ===
  CEP
  EstadoUF
  Municipio
  Bairro
  Logradouro
  Numero
  CodigoIBGE
  Complemento
}
constructor TEndereco.Create(ACEP: TCEP; AEstadoUF, AMunicipio, ABairro, ALogradouro,
  ANumero, ACodigoIBGE, AComplemento: string);
begin
  FCEP         := ACep; //Não necessita de "TRIM" o objeto já nasce validado.
  FMunicipio   := Trim(AMunicipio);
  FBairro      := Trim(ABairro);
  FLogradouro  := Trim(ALogradouro);
  FNumero      := Trim(ANumero);
  FCodigoIBGE  := Trim(ACodigoIBGE);
  FComplemento := Trim(AComplemento);
  FEstadoUF    := Trim(AEstadoUF);
  ValidarDados;
end;

procedure TEndereco.ValidarBairro;
begin
 If FBairro = '' then
  raise Exception.Create('Bairro Inválido, não pode ser vazio!');

 if FBairro.Length < 2 then
  raise Exception.Create('Bairro Inválido, caracteres insuficientes');
end;

procedure TEndereco.ValidarCodigoIBGE;
var
C: char;
begin
 if FCodigoIBGE = '' then
   raise Exception.Create('Código IBGE Inválido');

 if FCodigoIBGE.Length <> 7 then
   raise Exception.Create('O número de caracteres do código IBGE é insuficiente');

 for C in FCodigoIBGE do
 if not CharInSet(C, ['0'..'9']) then
   raise Exception.Create('Código IBGE Inválido, não deve conter letras!');
end;

procedure TEndereco.ValidarComplemento;
begin
 if Complemento = '' then
 raise Exception.Create('Complemento Invalido, informe um complemento-auxiliar.');
end;

procedure TEndereco.ValidarDados;
begin
  ValidarEstadoUF;
  ValidarCodigoIBGE;
  ValidarMunicipio;
  ValidarBairro;
  ValidarLogradouro;
  ValidarNumero;
  ValidarComplemento;
end;

procedure TEndereco.ValidarEstadoUF;
const
  UFsValidas: array[0..26] of string = ('AC','AL','AP','AM','BA','CE','DF','ES','GO',
    'MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO');
  var
  Encontrado : boolean;
  UF         : string;
begin
   //Normalização
 FEstadoUF := UpperCase(FEstadoUF);
 if Length(FEstadoUF) <> 2 then
  raise Exception.Create('Estado deve possuir 2 caracteres');

  //Valida se o estado é um estado válido
  Encontrado := False;
  for UF in UFsValidas do
    begin
      if FEstadoUF = UF then
      begin
        Encontrado := True;
        Break;
      end;
    end;
  if not Encontrado then
    raise Exception.Create('Estado UF inválido.');
 end;

procedure TEndereco.ValidarLogradouro;
begin
 If FLogradouro = '' then
  raise Exception.Create('Logradouro Inválido, não pode ser vazio!');

 if FLogradouro.Length < 2 then
  raise Exception.Create('Logradouro Inválido, caracteres insuficientes');
end;

procedure TEndereco.ValidarMunicipio;
begin
 If FMunicipio = '' then
  raise Exception.Create('Municipio Inválido, não pode ser vazio!');

 if FMunicipio.Length < 2 then
  raise Exception.Create('Municipio Inválido, caracteres insuficientes');
end;

procedure TEndereco.ValidarNumero;
begin
 if FNumero = '' then
  raise Exception.Create('Número Inválido, não deve estar vazio!');
end;

end.

