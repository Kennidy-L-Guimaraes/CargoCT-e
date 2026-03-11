unit RegimeTributario.Mapper;

interface
uses
 Validar.Exceptions, IdentidadeFiscal.Entidade, System.SysUtils;

type
 TMapperRegimeTributario = class
   private
    {Private Declarations}
   public
    {Public Declarations}
   class function EnumTexto(Enum: TRegimeTributario): string;
   class function TextoEnum(Texto: string): TRegimeTributario;
 end;

implementation

{ TMapperRegimeTributario }

class function TMapperRegimeTributario.EnumTexto(
  Enum: TRegimeTributario): string;
begin
  case Enum of
    rtSimplesNacional : Result := 'SN';
    rtLucroPresumido  : Result := 'LP';
    rtLucroReal       : Result := 'LR';
  else
    TValidar.LancarErro('Regime Tributário', 'Inválido ou não identificado!');
  end;
end;

class function TMapperRegimeTributario.TextoEnum(
  Texto: string): TRegimeTributario;
begin
  if Texto = 'SN' then Result := rtSimplesNacional
  else if Texto = 'LP' then Result := rtLucroPresumido
  else if Texto = 'LR' then Result := rtLucroReal
  else
   TValidar.LancarErro('Regime Tributário', 'Inválido ou não identificado!');
end;

end.
