unit RestCep.Service;

interface
uses APIs.DTO,
     System.Net.HttpClient,
     System.Net.URLClient,
     System.Net.HttpClientComponent,
     System.JSON,
     Endereco.Tipo.CEP,
     Validar.Exceptions;
 type
  TServiceRestCep = class
  public
    function BuscarCep(const ACep: string): TDTOCep;
  end;

implementation

{ TServiceRestCep }

function TServiceRestCep.BuscarCep(const ACep: string): TDTOCep;
var
  Http    : TNetHTTPClient;
  Response: IHTTPResponse;
  Json    : TJSONObject;
begin
  Http := TNetHTTPClient.Create(nil);
  try
    Response := Http.Get('https://viacep.com.br/ws/' + ACep + '/json/');

    if Response.StatusCode <> 200 then
      TValidar.LancarErro('Erro Cep', 'Resposta JSON Inválida!');

    Json := TJSONObject.ParseJSONValue(Response.ContentAsString) as TJSONObject;
    try
      Result := Default(TDTOCep);
      Result.cep         := Json.GetValue<string>('cep');
      Result.logradouro  := Json.GetValue<string>('logradouro');
      Result.bairro      := Json.GetValue<string>('bairro');
      Result.Municipio   := Json.GetValue<string>('localidade');
      Result.EstadoUF    := Json.GetValue<string>('uf');
      Result.CodigoIBGE  := Json.GetValue<string>('ibge');

    finally
      Json.Free;
    end;

  finally
    Http.Free;
  end;
end;

end.
