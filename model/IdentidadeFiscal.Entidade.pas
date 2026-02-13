unit IdentidadeFiscal.Entidade;

interface
uses System.SysUtils, System.Classes;

type
TIdentidadeFiscal = class
  Private
  {Private Declarations}
    FCNPJ             : string;
    FRazaoSocial      : string;
    FInscricaoIE      : string;
    FRegimeTributario : string;

    procedure ValidarDados;
    procedure ValidarCNPJ;
    procedure ValidarRazaoSocial;
    procedure ValidarInscricaoIE;
    procedure ValidarRegimeTributario;
  Public
  {Public Declarations}
    constructor Create(ACNPJ, ARazaoSocial, AInscricaoIE, ARegimeTributario: string);
    procedure ValidadorMatematicoCNPJ(x: string);
end;


implementation

{ TIdentidadeFiscal }

constructor TIdentidadeFiscal.Create(ACNPJ, ARazaoSocial, AInscricaoIE,
  ARegimeTributario: string);
begin
   FCNPJ             := Trim(ACNPJ);
   FRazaoSocial      := Trim(ARazaoSocial);
   FInscricaoIE      := Trim(AInscricaoIE);
   FRegimeTributario := Trim(ARegimeTributario);
   ValidarDados;
end;

procedure TIdentidadeFiscal.ValidadorMatematicoCNPJ(x: string);
var
  CNPJ: string;
  i, Soma, Resto: Integer;
  DV1, DV2: Integer;
const
  Pesos1: array[0..11] of Integer = (5,4,3,2,9,8,7,6,5,4,3,2);
  Pesos2: array[0..12] of Integer = (6,5,4,3,2,9,8,7,6,5,4,3,2);
begin
  if CNPJ = StringOfChar(CNPJ[1], 14) then
    raise Exception.Create('CNPJ inválido.');

  //Primeiro dígito
  Soma := 0;
  for i := 0 to 11 do
    Soma := Soma + (StrToInt(CNPJ[i+1]) * Pesos1[i]);

  Resto := Soma mod 11;

  if Resto < 2 then
    DV1 := 0
  else
    DV1 := 11 - Resto;

  //Segundo dígito
  Soma := 0;
  for i := 0 to 12 do
    Soma := Soma + (StrToInt(CNPJ[i+1]) * Pesos2[i]);

  Resto := Soma mod 11;

  if Resto < 2 then
    DV2 := 0
  else
    DV2 := 11 - Resto;

  //Comparação final
  if (DV1 <> StrToInt(CNPJ[13])) or
     (DV2 <> StrToInt(CNPJ[14])) then
    raise Exception.Create('CNPJ inválido.');
end;

procedure TIdentidadeFiscal.ValidarCNPJ;
var
C : char;
begin
 If FCNPJ = '' then
  raise Exception.Create('CNPJ inválido, não pode estar vazio!');

 if FCNPJ.Length <> 14 then
  raise Exception.Create('CNPJ inválido, deve conter 14 caracteres!');

  for C in FCNPJ do
    if not CharInSet(C, ['0'..'9']) then
      raise Exception.Create('CNPJ deve conter apenas números.');

  ValidadorMatematicoCNPJ(FCNPJ);
end;

procedure TIdentidadeFiscal.ValidarDados;
begin
 ValidarCNPJ;
 ValidarRazaoSocial;
 ValidarInscricaoIE;
 ValidarRegimeTributario;
end;

procedure TIdentidadeFiscal.ValidarInscricaoIE;
begin
 if FinscricaoIE = '' then
  raise Exception.Create('Inscrição IE inválido, não pode estar vazio!');
end;

procedure TIdentidadeFiscal.ValidarRazaoSocial;
begin
 If FRazaoSocial = '' then
  raise Exception.Create('Razão social inválido, não pode estar vazio!');

end;

procedure TIdentidadeFiscal.ValidarRegimeTributario;
begin
  if FRegimeTributario = '' then
   raise Exception.Create('Regime Tributário Inválido, não pode estar vazio!');

    FRegimeTributario := UpperCase(FRegimeTributario);

  if not (
    (FRegimeTributario = 'SIMPLES NACIONAL') or
    (FRegimeTributario = 'LUCRO PRESUMIDO') or
    (FRegimeTributario = 'LUCRO REAL')
  ) then
    raise Exception.Create('Regime tributário não reconhecido.');
end;

end.
