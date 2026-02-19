unit IdentidadeFiscal.Entidade;

interface
uses System.SysUtils, System.Classes, IdentidadeFiscal.Tipo.CNPJ, Validar.Exceptions;

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
    constructor Create(ACNPJ: TCNPJ; ARazaoSocial, AInscricaoIE, ARegimeTributario: string);
    property CNPJ             : TCNPJ   read FCNPJ;
    property RazaoSocial      : string  read FRazaoSocial;
    property InscricaoIE      : string  read FInscricaoIE;
    property RegimeTributario : string  read FRegimeTributario;
end;


implementation

{ TIdentidadeFiscal }

constructor TIdentidadeFiscal.Create(ACNPJ: TCNPJ; ARazaoSocial, AInscricaoIE,
  ARegimeTributario: string);
begin
   FCNPJ             := TCNPJ.Create(ACNPJ.Valor);
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
 TValidar.SeVazio('Inscrição Estadual- IE', FInscricaoIE);
end;

procedure TIdentidadeFiscal.ValidarRazaoSocial;
begin
 TValidar.SeVazio('Razão Social', FRazaoSocial);
end;

procedure TIdentidadeFiscal.ValidarRegimeTributario;
const
  RegimesValidos: array[0..2] of string = ('SIMPLES NACIONAL','LUCRO PRESUMIDO','LUCRO REAL');
begin
  TValidar.SeVazio('Regime Tributário', FRegimeTributario);
  FRegimeTributario := UpperCase(FRegimeTributario);
  TValidar.SeNaoContemNaListaText('Regime Tributário', FRegimeTributario, RegimesValidos);
end;

end.
