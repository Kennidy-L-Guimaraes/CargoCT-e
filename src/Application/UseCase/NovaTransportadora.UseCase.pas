unit NovaTransportadora.UseCase;

interface

uses Transportadora.DTO, Validar.Exceptions;

type
 TUseCaseNovaTransportadora = class
   private
    {Private Declarations}
     //FRepository : ITransportadoraRepository;

   public
    {Public Declarations}
    //constructor Create(ARepository: ITransportadoraRepository);
    procedure Executar(DTO: TTransportadoraDTO);
 end;

implementation

{ TUseCaseNovaTransportadora }

{constructor TUseCaseNovaTransportadora.Create(ARepository: ITransportadoraRepository);
begin
 FRepository := ARepository;
end;}

procedure TUseCaseNovaTransportadora.Executar(DTO: TTransportadoraDTO);
begin
  //if FRepository.ExisteNoBanco(DTO.CNPJ) then
  // TValidar.LancarErro('Transportadora','Inválido, transportadora já registrada!');
  //Transportadora := TTransportadoraFactory.Criar(DTO);
  //FRepository.SalvarTransportadora(Transportadora);
end;

end.
