unit Endereco.Entidade;

interface
uses System.SysUtils, Endereco.Tipo.CEP, Validar.Exceptions;

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
  TValidar.SeVazio('Bairro', FBairro);
  TValidar.SeMenorQue('Bairro', FBairro.Length, 2);
end;

procedure TEndereco.ValidarCodigoIBGE;
var
C: char;
begin
  TValidar.SeVazio('Código IBGE', FCodigoIBGE);
  TValidar.SeNumDiferente('Código IBGE', FCodigoIBGE.Length, 7);
  TValidar.SeNaoNumerico('Código IBGE', FCodigoIBGE);
end;

procedure TEndereco.ValidarComplemento;
begin
 TValidar.SeVazio('Complemento', FComplemento);
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
  UFsValidas: array[0..26] of string = (
    'AC','AL','AP','AM','BA','CE','DF','ES','GO',
    'MA','MT','MS','MG','PA','PB','PR','PE','PI',
    'RJ','RN','RS','RO','RR','SC','SP','SE','TO');
begin
  FEstadoUF := UpperCase(FEstadoUF);
  TValidar.SeNumDiferente('Estado', FEstadoUF.Length, 2);
  TValidar.SeNaoContemNaListaText('Estado UF', FEstadoUF, UFsValidas);
end;

procedure TEndereco.ValidarLogradouro;
begin
  TValidar.SeVazio('Logradouro', FLogradouro);
  TValidar.SeMenorQue('Logradouro', FLogradouro.Length, 2);
end;

procedure TEndereco.ValidarMunicipio;
begin
  TValidar.SeVazio('Municipio', FMunicipio);
  TValidar.SeMenorQue('Municipio', FMunicipio.Length, 2);
end;

procedure TEndereco.ValidarNumero;
begin
  TValidar.SeVazio('Número', Fnumero);
end;

end.

