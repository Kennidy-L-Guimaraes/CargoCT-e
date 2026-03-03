unit Transportadora.Entidade;

interface
uses DadosFiscais.Entidade, DadosOperacionais.Entidade, Endereco.Entidade,
  IdentidadeFiscal.Entidade, System.SysUtils;

type
 TTransportadora = class
  ['{A13A4490-79D6-4C84-8B69-102A8A11018F}']
   private
    {Private Declarations}
    FDadosFiscais     : TDadosFiscais;
    FDadosOperacionais: TDadosOperacionais;
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


end;

procedure TTransportadora.InativarTransportadora;
begin

end;

procedure TTransportadora.ValidarDados;
begin

end;

end.
