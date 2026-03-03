unit IdentidadeFiscal.Entidade;

interface
uses System.SysUtils, System.Classes, IdentidadeFiscal.Tipo.CNPJ, Validar.Exceptions;
//Enum para Regime tributário
type
TRegimeTributario = (rtSimplesNacional, rtLucroPresumido, rtLucroReal);

type
TIdentidadeFiscal = class
  Private
  {Private Declarations}
    FCNPJ             : TCNPJ;
    FRazaoSocial      : string;
    FInscricaoIE      : string;
    FRegimeTributario : TRegimeTributario;

    procedure ValidarDados;
    procedure ValidarRazaoSocial;
    procedure ValidarInscricaoIE;
  Public
  {Public Declarations}
    constructor Create(ACNPJ: TCNPJ; ARazaoSocial, AInscricaoIE: string; ARegimeTributario: TRegimeTributario);
    property CNPJ             : TCNPJ   read FCNPJ;
    property RazaoSocial      : string  read FRazaoSocial;
    property InscricaoIE      : string  read FInscricaoIE;
    property RegimeTributario : TRegimeTributario  read FRegimeTributario;
end;


implementation

{ TIdentidadeFiscal }

constructor TIdentidadeFiscal.Create(ACNPJ: TCNPJ; ARazaoSocial, AInscricaoIE: string; ARegimeTributario: TRegimeTributario);
begin
   FCNPJ             := TCNPJ.Create(ACNPJ.Valor);
   FRazaoSocial      := Trim(ARazaoSocial);
   FInscricaoIE      := Trim(AInscricaoIE);
   FRegimeTributario := ARegimeTributario;
   ValidarDados;
end;

procedure TIdentidadeFiscal.ValidarDados;
begin
 ValidarRazaoSocial;
 ValidarInscricaoIE;
end;

procedure TIdentidadeFiscal.ValidarInscricaoIE;
begin
 TValidar.SeVazio('Inscrição Estadual- IE', FInscricaoIE);
end;

procedure TIdentidadeFiscal.ValidarRazaoSocial;
begin
 TValidar.SeVazio('Razão Social', FRazaoSocial);
end;


end.
