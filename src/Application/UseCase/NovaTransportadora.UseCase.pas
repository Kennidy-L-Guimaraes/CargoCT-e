unit NovaTransportadora.UseCase;

interface

uses Transportadora.DTO, Validar.Exceptions, TransportadoraRepository.Interfaces,
  Transportadora.Factory;

type
 TUseCaseNovaTransportadora = class
   private
    {Private Declarations}
     FRepository : ITransportadoraRepository;

   public
    {Public Declarations}
    constructor Create(ARepository: ITransportadoraRepository);
    procedure Executar(DTO: TTransportadoraDTO);
 end;

implementation

{ TUseCaseNovaTransportadora }

constructor TUseCaseNovaTransportadora.Create(ARepository: ITransportadoraRepository);
begin
 FRepository := ARepository;
end;

procedure TUseCaseNovaTransportadora.Executar(DTO: TTransportadoraDTO);
begin
  if FRepository.ExisteNoBanco(DTO.CNPJ) then
   TValidar.LancarErro('Transportadora','Inválido, transportadora já registrada!');
   TFactoryTransportadora.CriarTransportadora(DTO);
   //FRepository.SalvarTransportadora(Transportadora);
end;

end.
