unit TipoOperacao.Mapper;

interface
uses
 Validar.Exceptions, DadosOperacionais.Entidade, System.SysUtils;

type
 TMapperTipoOperacao = class
   private
    {Private Declarations}
   public
    {Public Declarations}
   class function EnumTexto(Enum: TTipoOperacao): string;
   class function TextoEnum(Texto: string): TTipoOperacao;
 end;

implementation

{ TMapperTipoOperacao }

class function TMapperTipoOperacao.EnumTexto(
  Enum: TTipoOperacao): string;
begin
  case Enum of
    opEstadual      : Result := 'Estadual';
    opInterestadual : Result := 'Interestadual';
    opInternacional : Result := 'Internacional';
  else
    TValidar.LancarErro('Tipo de Operação', 'Inválido ou não identificado!');
  end;
end;

class function TMapperTipoOperacao.TextoEnum(
  Texto: string): TTipoOperacao;
begin
  if      Texto = 'Estadual'      then Result := opEstadual
  else if Texto = 'Interestadual' then Result := opInterestadual
  else if Texto = 'Internacional' then Result := opInternacional
  else
   TValidar.LancarErro('Tipo de Operação', 'Inválido ou não identificado!');
end;

end.
