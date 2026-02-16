unit Endereco.Tipo.CEP;

interface
uses System.SysUtils;

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

end;

implementation

{ TCEP }

constructor TCEP.Create(ACEP: string);
begin
 FCEP := Trim(ACep);
 Validar;
end;

procedure TCEP.Validar;
var
 C: char; 
begin
  //VALIDAR CEP
  if FCEP = '' then
    raise Exception.Create('CEP inválido');

  if FCEP.Length <> 8 then
    raise Exception.Create('O CEP precisa conter oito caracteres válidos!');

  for C in FCEP do
  if not CharInSet(C, ['0'..'9']) then
      raise Exception.Create('CEP deve conter apenas números');

end;
end.
