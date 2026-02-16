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
  Public
  {Public Declarations}

  constructor Create(ACEP: TCEP; ANumero, ACodigoIBGE, AMunicipio, ABairro,
  ALogradouro, AComplemento, AEstadoUF: string);

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

constructor TEndereco.Create(ACEP: TCEP; ANumero, ACodigoIBGE, AMunicipio, ABairro,
  ALogradouro, AComplemento, AEstadoUF: string);
begin
  FCEP         := ACep; //Não necessita de "TRIM" o objeto já nasce validado.
  FMunicipio   := Trim(AMunicipio);
  FBairro      := Trim(ABairro);
  FLogradouro  := Trim(ALogradouro);
  FNumero      := Trim(ANumero);
  FCodigoIBGE  := Trim(ACodigoIBGE);
  FComplemento := Trim(AComplemento);
  FEstadoUF    := Trim(AEStadoUF);
  ValidarDados;
end;

procedure TEndereco.ValidarCodigoIBGE;
begin
    //VALIDAR CODIGOIBGE
    //Valida se o código IBGE está vazio
 if FCodigoIBGE = '' then
   raise Exception.Create('Código IBGE Inválido');

   //Valida se o código IBGE possui o número de caracteres permitido
 if FCodigoIBGE.Length <> 7 then
   raise Exception.Create('O número de caracteres do código IBGE é insuficiente');
end;

procedure TEndereco.ValidarDados;
var
C : Char;
begin
  ValidarEstadoUF; 
  ValidarCodigoIBGE; 
end;

procedure TEndereco.ValidarEstadoUF;
var
C: char;
begin
   //VALIDAR ESTADOS UF
   //Valida se o estado possui mais de 2 caracteres
 if Length(FEstadoUF) <> 2 then
  raise Exception.Create('Estado deve possuir 2 caracteres');
    FEstadoUF := UpperCase(FEstadoUF);

  //Valida se o estado contem apenas letras
 for C in FEstadoUF do
 if not CharInSet(C, ['A'..'Z']) then
  raise Exception.Create('Estado deve conter apenas letras.');
 end;
end. 

