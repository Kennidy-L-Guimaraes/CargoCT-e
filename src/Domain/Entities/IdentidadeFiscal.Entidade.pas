unit IdentidadeFiscal.Entidade;

interface
uses System.SysUtils, System.Classes, IdentidadeFiscal.Tipo.CNPJ;

type
TIdentidadeFiscal = class
  Private
  {Private Declarations}
    FCNPJ             : TCNPJ;
    FRazaoSocial      : string;
    FInscricaoIE      : string;
    FRegimeTributario : string;

    procedure ValidarDados;
    procedure ValidarRazaoSocial;
    procedure ValidarInscricaoIE;
    procedure ValidarRegimeTributario;
  Public
  {Public Declarations}
    constructor Create(ACNPJ, ARazaoSocial, AInscricaoIE, ARegimeTributario: string);
    property CNPJ             : TCNPJ   read FCNPJ;
    property RazaoSocial      : string  read FRazaoSocial;
    property InscricaoIE      : string  read FInscricaoIE;
    property RegimeTributario : string  read FRegimeTributario;
end;


implementation

{ TIdentidadeFiscal }

constructor TIdentidadeFiscal.Create(ACNPJ, ARazaoSocial, AInscricaoIE,
  ARegimeTributario: string);
begin
   FCNPJ             := TCNPJ.Create(ACNPJ);
   FRazaoSocial      := Trim(ARazaoSocial);
   FInscricaoIE      := Trim(AInscricaoIE);
   FRegimeTributario := Trim(ARegimeTributario);
   ValidarDados;
end;

procedure TIdentidadeFiscal.ValidarDados;
begin
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
