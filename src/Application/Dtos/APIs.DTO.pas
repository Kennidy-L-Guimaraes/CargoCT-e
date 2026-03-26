unit APIs.DTO;

interface
 type
  TDTOCep = record
    public
     {Public Declarations}
    //Exemplo de Resposta
    {
  "cep": "01001-000",
  "logradouro": "Praça da Sé",
  "complemento": "lado ímpar",
  "unidade": "",
  "bairro": "Sé",
  "localidade": "São Paulo",
  "uf": "SP",
  "estado": "São Paulo",
  "regiao": "Sudeste",
  "ibge": "3550308",
  "gia": "1004",
  "ddd": "11",
  "siafi": "7107"
}
    CEP                : string;
    Municipio          : string; //Ou Localidade
    Bairro             : string;
    Logradouro         : string;
    CodigoIBGE         : string;
    EstadoUF           : string;
  end;

 type
  TDTOCnpj = record
    public
     {Public Declarations}
  end;

implementation

end.
