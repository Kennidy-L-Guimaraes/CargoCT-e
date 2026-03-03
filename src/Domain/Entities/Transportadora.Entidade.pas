unit Transportadora.Entidade;

interface
uses DadosFiscais.Entidade, DadosOperacionais.Entidade, Endereco.Entidade,
  IdentidadeFiscal.Entidade, SistemaOperacional.Entidade, System.SysUtils, Validar.Exceptions;

type
 TTransportadora = class
   private
    {Private Declarations}
    FGuid                : TGuid;
    FDadosFiscais        : TDadosFiscais;
    FDadosOperacionais   : TDadosOperacionais;
    FSistemaOperacional  : TSistemaOperacional;
    FEndereco            : TEndereco;
    FIdentidadeFiscal : TIdentidadeFiscal;

    procedure ValidarDados;
   public
    {Public Declarations}
    property Id                : TGuid              read FGuid;
    property DadosFiscais      : TDadosFiscais      read FDadosFiscais;
    property DadosOperacionais : TDadosOperacionais read FDadosOperacionais;
    property Endereco          : TEndereco          read FEndereco;
    property IdentidadeFiscal  : TIdentidadeFiscal  read FIdentidadeFiscal;

    constructor Create(ADadosFiscais: TDadosFiscais;
  ADadosOperacionais: TDadosOperacionais; AEndereco: TEndereco;
  AIdentidadeFiscal: TIdentidadeFiscal; ASistemaOperacional: TSistemaOperacional);
    procedure AtivarTransportadora;
    procedure InativarTransportadora;

 end;

implementation



{ TTransportadora }

constructor TTransportadora.Create(ADadosFiscais: TDadosFiscais;
  ADadosOperacionais: TDadosOperacionais; AEndereco: TEndereco;
  AIdentidadeFiscal: TIdentidadeFiscal; ASistemaOperacional: TSistemaOperacional);
begin
   if not Assigned(ADadosFiscais) then
    TValidar.LancarErro('Dados Fiscais', 'Obrigatório!');

   if not Assigned(ADadosOperacionais) then
    TValidar.LancarErro('Dados Operacionais', 'Obrigatório!');

   if not Assigned(AEndereco) then
    TValidar.LancarErro('Endereço', 'Obrigatório!');

   if not Assigned(AIdentidadeFiscal) then
    TValidar.LancarErro('Identidade Fiscal','Obrigatório!');

   if not Assigned(ASistemaOperacional) then
    TValidar.LancarErro('Sistema', 'Obrigatório!');


   FDadosFiscais      := ADadosFiscais;
   FDadosOperacionais := ADadosOperacionais;
   FEndereco          := AEndereco;
   FIdentidadeFiscal  := AIdentidadeFiscal;
   FSistemaOperacional:= ASistemaOperacional;
   FGuid              := TGuid.NewGuid;
   ValidarDados;
end;


procedure TTransportadora.AtivarTransportadora;
begin
 FSistemaOperacional.AtivarSistema;
end;

procedure TTransportadora.InativarTransportadora;
begin
 FSistemaOperacional.DesativarSistema;
end;

procedure TTransportadora.ValidarDados;
begin

end;

end.
