unit ApisRest.UseCase;

interface

uses Endereco.Tipo.CEP, IdentidadeFiscal.Tipo.CNPJ, APIs.DTO, RestCep.Service;
 type
  TUseCaseBuscarCep = class
  public
    function Execute(ACep: string): TDTOCep;
  end;

  TBuscarCnpjUseCase = class
  public
    function Execute(ACnpj: string): TDTOCnpj;
  end;

implementation

{ TBuscarCnpjUseCase }

function TBuscarCnpjUseCase.Execute(ACnpj: string): TDTOCnpj;
begin

end;

{ TBuscarCepUseCase }

function TUseCaseBuscarCep.Execute(ACep: string): TDTOCep;
var
 ServiceCep : TServiceRestCep;
 Cep        : TCep;
begin
 Cep := TCEP.Create(Acep);
 ServiceCep := TServiceRestCep.Create;
 try
    Result := ServiceCep.BuscarCep(Cep.Valor);
 finally
  ServiceCep.Free;
 end;
end;

end.
