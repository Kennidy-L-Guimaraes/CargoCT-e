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
    rtSimplesNacional : Result := 'Simples Nacional';
    rtLucroPresumido  : Result := 'Lucro Presumido';
    rtLucroReal       : Result := 'Lucro Real';
  else
    TValidar.LancarErro('Regime Tributário', 'Inválido ou não identificado!');
  end;
end;

class function TMapperRegimeTributario.TextoEnum(
  Texto: string): TRegimeTributario;
begin
  if      Texto = 'Simples Nacional' then Result := rtSimplesNacional
  else if Texto = 'Lucro Presumido' then Result := rtLucroPresumido
  else if Texto = 'Lucro Real' then Result := rtLucroReal
  else
   TValidar.LancarErro('Regime Tributário', 'Inválido ou não identificado!');
end;

end.
