unit SistemaAtivo.Mapper;

interface
uses
 Validar.Exceptions, SistemaOperacional.Entidade, System.SysUtils;

type
 TMapperSistemaAtivo = class
   private
    {Private Declarations}
   public
    {Public Declarations}
   class function EnumTexto(Enum: TSistemaAtivo): string;
   class function TextoEnum(Texto: string): TSistemaAtivo;
 end;

implementation

{ TMapperSistemaAtivo }

class function TMapperSistemaAtivo.EnumTexto(
  Enum: TSistemaAtivo): string;
begin
  case Enum of
    saAtivo   : Result := 'Ativo';
    saInativo : Result := 'Inativo';
  else
    TValidar.LancarErro('Sistema', 'Inválido ou não identificado!');
  end;
end;

class function TMapperSistemaAtivo.TextoEnum(
  Texto: string): TSistemaAtivo;
begin
  if      Texto = 'Ativo'   then Result := saAtivo
  else if Texto = 'Inativo' then Result := saInativo
  else
   TValidar.LancarErro('Sistema', 'Inválido ou não identificado!');
end;

end.
