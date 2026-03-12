unit Transportadora.Factory;

interface
 uses
 Validar.Exceptions, Transportadora.DTO, Transportadora.Entidade,
  DadosFiscais.Entidade, DadosOperacionais.Entidade, Endereco.Entidade,
  IdentidadeFiscal.Entidade, IdentidadeFiscal.Tipo.CNPJ,
  SistemaOperacional.Entidade, TransportadoraContato.Entidade, Endereco.Tipo.CEP,
  RegimeTributario.Mapper, PapelCte.Mapper, TipoTributacao.Mapper, TipoOperacao.Mapper,
  SistemaAtivo.Mapper;

 type
 TFactoryTransportadora = class
   private
    {Private Declarations}
   public
    {Public Declarations}
   class function CriarTransportadora(DTO: TTransportadoraDTO): TTransportadora;
 end;

implementation

{ TFactoryTransportadora }

class function TFactoryTransportadora.CriarTransportadora(DTO: TTransportadoraDTO): TTransportadora;
  var
  Transportadora    : TTransportadora;
  DadosFiscais      : TDadosFiscais;
  DadosOperacionais : TDadosOperacionais;
  Endereco          : TEndereco;
  IdentidadeFiscal  : TIdentidadeFiscal;
  SistemaOperacional: TSistemaOperacional;
  Contato           : TContato;
  CEP               : TCEP;
  CNPJ              : TCNPJ;
begin
  {
   TextoEnum -> Texto para Enum
   EnumTexto -> Enum para Texto
  }
   //Records
   CEP := TCEP.Create(DTO.CEP);
   CNPJ:= TCNPJ.Create(DTO.CNPJ);
   //Identidade FIscal
   IdentidadeFiscal := TIdentidadeFiscal.Create(
    CNPJ,
    DTO.RazaoSocial,
    DTO.InsCricaoEstadual,
    TMapperRegimeTributario.TextoEnum(DTO.RegimeTributario));

   //Endereço Fiscal
   Endereco := TEndereco.Create(
   CEP,
   DTO.EstadoUF,
   DTO.Municipio,
   DTO.Bairro,
   DTO.Logradouro,
   DTO.Numero,
   DTO.CodigoIBGE,
   DTO.Complemento);

   //Dados Fiscais
   DadosFiscais := TDadosFiscais.Create(
   TMapperPapelCTe.TextoEnum(DTO.PapelCTe),
   TMapperTipoTributacao.TextoEnum(DTO.TipoTributacao),
   DTO.ObservacaoFiscal,
   DTO.Aliquota);

   //Dados Operacinais
   DadosOperacionais := TDadosOperacionais.Create(
   TMapperTipoOperacao.TextoEnum(DTO.TipoOperacao));

   //Sistema
   SistemaOperacional := TSistemaOperacional.Create(
    TMapperSistemaAtivo.TextoEnum(DTO.Status),
    DTO.Responsavel);

   //Contato
   Contato := TContato.Create(
    DTO.Telefone,
    DTO.Site,
    DTO.Email);

   //Monta a Transportadora
   Transportadora := TTransportadora.Create(
    DadosFiscais,
    DadosOperacionais,
    Endereco,
    IdentidadeFiscal,
    SistemaOperacional,
    Contato);

    //Retorna Transportadora Montada
    Result := Transportadora;
end;

end.
