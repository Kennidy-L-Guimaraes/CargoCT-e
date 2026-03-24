unit Transportadora.DTO;

interface
uses Classes;

type
 TTransportadoraDTO = record
   Public
    {Public Declarations}
    //Imagem
    Imagem             : TMemoryStream;

    //Identificação Fiscal
    CNPJ               : string;
    RazaoSocial        : string;
    InsCricaoEstadual  : string;
    RegimeTributario   : string;

    //Endereço Fiscal
    CEP                : string;
    Municipio          : string;
    Bairro             : string;
    Logradouro         : string;
    CodigoIBGE         : string;
    Complemento        : string;
    EstadoUF           : string;
    Numero             : string;

    //Dados Fiscais
    PapelCTe          : string;
    TipoTributacao    : string;
    ObservacaoFiscal  : string;
    Aliquota          : Currency;

    //Dados Operacionais
    TipoTransporte    : string;
    TipoOperacao      : string;

    //Sistema
    Status            : string;
    Responsavel       : string;
    DataCadastro      : string;

    //Contato
    Telefone          : string;
    Site              : string;
    Email             : string;
 end;

implementation

end.
