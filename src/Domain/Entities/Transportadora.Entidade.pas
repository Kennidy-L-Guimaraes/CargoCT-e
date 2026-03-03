unit Transportadora.Entidade;

interface
uses DadosFiscais.Entidade, DadosOperacionais.Entidade, Endereco.Entidade,
  IdentidadeFiscal.Entidade, System.SysUtils, Validar.Exceptions;

type
 TTransportadora = class
   private
    {Private Declarations}
    FGuid             : TGuid;
    FDadosFiscais     : TDadosFiscais;
    FDadosOperacionais: TDadosOperacionais;
    //FSistemaOperacao  : TSistemaOperacao; Necessário definir nova entidade
    FEndereco         : TEndereco;
    FIdentidadeFiscal : TIdentidadeFiscal;

    procedure ValidarDados;
   public
    {Public Declarations}

    property DadosFiscais      : TDadosFiscais      read FDadosFiscais;
    property DadosOperacionais : TDadosOperacionais read FDadosOperacionais;
    property Endereco          : TEndereco          read FEndereco;
    property IdentidadeFiscal  : TIdentidadeFiscal  read FIdentidadeFiscal;

    constructor Create(ADadosFiscais: TDadosFiscais; ADadosOperacionais: TDadosOperacionais;
    AEndereco: TEndereco; AIdentidadeFiscal: TIdentidadeFiscal);
    procedure AtivarTransportadora;
    procedure InativarTransportadora;

 end;

implementation



{ TTransportadora }


{ TTransportadora }

procedure TTransportadora.AtivarTransportadora;
begin

end;

constructor TTransportadora.Create(ADadosFiscais: TDadosFiscais;
  ADadosOperacionais: TDadosOperacionais; AEndereco: TEndereco;
  AIdentidadeFiscal: TIdentidadeFiscal);
begin
   if not Assigned(ADadosFiscais) then
    TValidar.LancarErro('Dados Fiscais', 'Obrigatório!');

   if not Assigned(ADadosOperacionais) then
    TValidar.LancarErro('Dados Operacionais', 'Obrigatório!');

   if not Assigned(AEndereco) then
    TValidar.LancarErro('Endereço', 'Obrigatório!');

   if not Assigned(AIdentidadeFiscal) then
   TValidar.LancarErro('Identidade Fiscal','Obrigatório!');

   FDadosFiscais      := ADadosFiscais;
   FDadosOperacionais := ADadosOperacionais;
   FEndereco          := AEndereco;
   FIdentidadeFiscal  := AIdentidadeFiscal;
   FGuid              := TGuid.NewGuid;
   ValidarDados;
end;

procedure TTransportadora.InativarTransportadora;
begin

end;

procedure TTransportadora.ValidarDados;
begin

end;

end.
