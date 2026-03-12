unit TransportadoraRepository.Interfaces;

interface
 uses Transportadora.Entidade;

type
 ITransportadoraRepository = interface
  ['{D8228D27-784B-44B7-91CE-496C404E5001}']//Assinatura da Interface

  procedure SalvarTransportadora(Transportadora: TTransportadora);
  function  ExisteNoBanco(CNPJ: string): boolean;
end;

implementation

end.
