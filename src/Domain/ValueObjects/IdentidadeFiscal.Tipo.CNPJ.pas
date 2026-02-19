unit IdentidadeFiscal.Tipo.CNPJ;

interface

uses
  System.SysUtils, Validar.Exceptions;

type
  TCNPJ = record
  private
    FCNPJ: string;
    procedure Validar;
    procedure ValidarFormato;
    procedure ValidarDigitos;
  public
    constructor Create(const ACNPJ: string);
    property Valor: string read FCNPJ;
  end;

implementation

constructor TCNPJ.Create(const ACNPJ: string);
begin
  FCNPJ := Trim(ACNPJ);
  Validar;
end;

procedure TCNPJ.Validar;
begin
  ValidarFormato;
  ValidarDigitos;
end;

procedure TCNPJ.ValidarFormato;
begin
  TValidar.SeVazio('CNPJ', FCNPJ);
  TValidar.SeNumDiferente('CNPJ', FCNPJ.Length, 14);
  TValidar.SeNaoNumerico('CNPJ', FCNPJ);
end;

procedure TCNPJ.ValidarDigitos;
var
  i, Soma, Resto, DV1, DV2: Integer;
const
  Pesos1: array[0..11] of Integer = (5,4,3,2,9,8,7,6,5,4,3,2);
  Pesos2: array[0..12] of Integer = (6,5,4,3,2,9,8,7,6,5,4,3,2);
begin
  if FCNPJ = StringOfChar(FCNPJ[1], 14) then
    raise Exception.Create('CNPJ inválido.');

  Soma := 0;
  for i := 0 to 11 do
    Soma := Soma + (StrToInt(FCNPJ[i+1]) * Pesos1[i]);

  Resto := Soma mod 11;
  if Resto < 2 then
    DV1 := 0 else DV1 := 11 - Resto;

  Soma := 0;
  for i := 0 to 12 do
    Soma := Soma + (StrToInt(FCNPJ[i+1]) * Pesos2[i]);

  Resto := Soma mod 11;
  if Resto < 2 then
    DV2 := 0 else DV2 := 11 - Resto;

  if (DV1 <> StrToInt(FCNPJ[13])) or
     (DV2 <> StrToInt(FCNPJ[14])) then
    raise Exception.Create('CNPJ inválido.');
end;

end.

