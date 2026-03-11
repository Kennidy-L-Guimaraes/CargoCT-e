unit TipoTributacao.Mapper;

interface
uses
 Validar.Exceptions, DadosFiscais.Entidade, System.SysUtils;

type
 TMapperTipoTributacao = class
   private
    {Private Declarations}
   public
    {Public Declarations}
   class function EnumTexto(Enum: TTipoTributacao): string;
   class function TextoEnum(Texto: string): TTipoTributacao;
 end;

implementation

{ TMapperTipoTributacao }

class function TMapperTipoTributacao.EnumTexto(
  Enum: TTipoTributacao): string;
begin
  case Enum of
    ttNormal    : Result := 'Normal';
    ttIsento    : Result := 'Isento';
    ttDiferido  : Result := 'Diferido';
  else
    TValidar.LancarErro('Tipo de Tributação', 'Inválida ou não identificada!');
  end;
end;

class function TMapperTipoTributacao.TextoEnum(
  Texto: string): TTipoTributacao;
begin
  if      Texto = 'Normal'    then Result := ttNormal
  else if Texto = 'Isento'    then Result := ttIsento
  else if Texto = 'Diferido'  then Result := ttDiferido
  else
    TValidar.LancarErro('Tipo de Tributação', 'Inválida ou não identificada!');
end;

end.

