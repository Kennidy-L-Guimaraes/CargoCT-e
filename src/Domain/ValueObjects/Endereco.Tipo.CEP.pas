unit Endereco.Tipo.CEP;

interface
uses System.SysUtils, Validar.Exceptions;

type
  TCEP = Record
    Private
     {Private Declarations}
      FCEP         : string;

    procedure Validar;
    Public
     {Public Declarations}
      constructor Create(ACEP: string);
      property Valor  : string  read FCEP;
      function ToString: string;

end;

implementation

{ TCEP }

constructor TCEP.Create(ACEP: string);
begin
 FCEP := Trim(ACep);
 Validar;
end;

function TCEP.ToString: string;
begin
 Result := FCEP;
end;

procedure TCEP.Validar;
var
 C: char; 
begin
  //VALIDAR CEP
  TValidar.SeVazio('CEP', FCEP);
  TValidar.SeMenorQue('CEP', FCEP.Length, 8);
  TValidar.SeNaoNumerico('CEP', FCEP);
end;
end.
