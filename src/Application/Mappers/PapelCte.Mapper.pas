unit PapelCte.Mapper;

interface
uses
 Validar.Exceptions, DadosFiscais.Entidade, System.SysUtils;

type
 TMapperPapelCte = class
   private
    {Private Declarations}
   public
    {Public Declarations}
   class function EnumTexto(Enum: TPapelCTe): string;
   class function TextoEnum(Texto: string): TPapelCte;
 end;

implementation

{ TMapperPapelCte }

class function TMapperPapelCte.EnumTexto(
  Enum: TPapelCte): string;
begin
  case Enum of
    pcEmitente      : Result := 'Emitente';
    pcTomador       : Result := 'Tomador';
    pcSubContratada : Result := 'SubContratada';
    pcRedespachadora: Result := 'Redespachadora';
    pcRedespacho    : Result := 'Redespacho';
    pcIntermediario : Result := 'Intermediario';
  else
    TValidar.LancarErro('Papel CT-e', 'Inválido ou não identificado!');
  end;
end;

class function TMapperPapelCte.TextoEnum(
  Texto: string): TPapelCte;
begin
  if      Texto = 'Emitente'        then Result := pcEmitente
  else if Texto = 'Tomador'         then Result := pcTomador
  else if Texto = 'SubContratada'   then Result := pcSubContratada
  else if Texto = 'Redespachadora'  then Result := pcRedespachadora
  else if Texto = 'Redespacho'      then Result := pcRedespacho
  else if Texto = 'Intermediario'   then Result := pcIntermediario
  else
   TValidar.LancarErro('Papel CT-e', 'Inválido ou não identificado!');
end;

end.

