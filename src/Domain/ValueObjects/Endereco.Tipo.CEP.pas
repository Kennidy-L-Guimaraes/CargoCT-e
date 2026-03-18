unit Endereco.Tipo.CEP;

interface
uses System.SysUtils, Validar.Exceptions;

type
  TCEP = Record
    Private
     {Private Declarations}
      FCEP         : string;
      procedure ValidarCEP;
    Public
     {Public Declarations}
      constructor Create(ACEP: string);
      property Valor  : string  read FCEP;

end;

implementation

{ TCEP }

constructor TCEP.Create(ACEP: string);
begin
  FCEP := Trim(ACEP);
  FCEP := StringReplace(FCEP, '-', '', [rfReplaceAll]);
  FCEP := StringReplace(FCEP, '.', '', [rfReplaceAll]);
  FCEP := StringReplace(FCEP, ',', '', [rfReplaceAll]); //CLASS NORMALIZE
 ValidarCEP;
end;

procedure TCEP.ValidarCEP;
begin
  //VALIDAR CEP
  TValidar.SeVazio('CEP', FCEP);
  TValidar.SeDiferenteDe('CEP', FCEP.Length, 8);
  TValidar.SeNaoNumerico('CEP', FCEP);
end;
end.
