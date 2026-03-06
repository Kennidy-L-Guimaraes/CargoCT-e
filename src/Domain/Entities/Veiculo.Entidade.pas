unit Veiculo.Entidade;

interface
uses Validar.Exceptions, System.SysUtils, Veiculo.Tipo.Placa;

 type
  TVeiculo = class
    private
     {Private Declarations}
     FPlaca      : TPlaca; //*
     FPlacaUF    : string; //*
     FTipoVeiculo: string; //*
     FProprietario : string; //*
     //Especificações
     FMarca        : string;
     FModelo       : string;
     FCor          : string;
     FCapacidadeKg : integer; //*
     //Controle Operacional
     FKmAtual         : integer;
     FRastreador      : boolean;
     FNumeroRastreador: string;

     procedure ValidarPlacaUF; //*
     procedure ValidarTipoVeiculo; //*
     procedure ValidarProprietario; //*
     procedure ValidarCapacidade; //*
     procedure ValidarRastreador;
     procedure ValidarDados;
     //Validadores de Campos Não Obrigatórios
     procedure ValidarMarca;
     procedure ValidarModelo;
     procedure ValidarCor;
     procedure ValidarKMatual;

    public
     {Public Declarations}
     constructor Create(APlaca: TPlaca; APlacaUf, ATipoVeiculo, AProprietario, AMarca, AModelo, ACor: string;
  ACapacidadeKg, AKmAtual: integer; ARastreador: boolean; ANumeroRastreador: string);
     property Placa       : TPlaca  read FPlaca;
     property PlacaUf     : string  read FPlacaUF;
     property TipoVeiculo : string  read FTipoVeiculo;
     property Proprietario: string  read FProprietario;
     property Marca       : string  read FMarca;
     property Modelo      : string  read FModelo;
     property Cor         : string  read FCor;
     property CapacidadeKg: integer read FCapacidadeKg;
     property KMAtual     : integer read FKmAtual;
     property Rastreador  : boolean read FRastreador;
     property NumeroRastreador: string read FNumeroRastreador;
  end;

implementation

{ TVeiculo }


constructor TVeiculo.Create(APlaca: TPlaca; APlacaUf, ATipoVeiculo, AProprietario, AMarca, AModelo, ACor: string;
  ACapacidadeKg, AKmAtual: integer; ARastreador: boolean; ANumeroRastreador: string);
begin
  inherited Create;

  FPlaca            := APlaca;
  FPlacaUF          := APlacaUf;
  FTipoVeiculo      := ATipoVeiculo;
  FProprietario     := AProprietario;
  FMarca            := AMarca;
  FModelo           := AModelo;
  FCor              := ACor;
  FCapacidadeKg     := ACapacidadeKg;
  FKmAtual          := AKmAtual;
  FRastreador       := ARastreador;
  FNumeroRastreador := ANumeroRastreador;
  ValidarDados;
end;

procedure TVeiculo.ValidarCapacidade;
begin
  TValidar.SeMenorQue('Capacidade', FCapacidadeKg, 1);
end;

procedure TVeiculo.ValidarCor;
begin
    if not FCor.isEmpty then
  begin
   TValidar.SeMaiorQue('Veículo Cor', FCor.Length, 30);
  end;
end;

procedure TVeiculo.ValidarDados;
begin
  ValidarPlacaUF;
  ValidarTipoVeiculo;
  ValidarCapacidade;
  ValidarProprietario;
  ValidarRastreador;
  ValidarMarca;
  ValidarModelo;
  ValidarCor;
  ValidarKMatual;
end;

procedure TVeiculo.ValidarKMatual;
begin
  if FKMAtual < 0 then
   TValidar.LancarErro('Quilômetro Atual', 'Não deve ser negativo');
end;

procedure TVeiculo.ValidarMarca;
begin
  if not FMarca.isEmpty then
  begin
   TValidar.SeMaiorQue('Marca', FMarca.Length, 30);
  end;
end;

procedure TVeiculo.ValidarModelo;
begin
   if not FModelo.isEmpty then
  begin
   TValidar.SeMaiorQue('Modelo', FModelo.Length, 30);
  end;
end;

procedure TVeiculo.ValidarPlacaUF;
const
  UFsValidas: array[0..26] of string = (
    'AC','AL','AP','AM','BA','CE','DF','ES','GO',
    'MA','MT','MS','MG','PA','PB','PR','PE','PI',
    'RJ','RN','RS','RO','RR','SC','SP','SE','TO');
begin
 TValidar.SeNaoContemNaListaText('Placa UF', FPlacaUf, UFsValidas);
end;

procedure TVeiculo.ValidarProprietario;
begin
  TValidar.SeVazio('Proprietário', FProprietario);
  TValidar.SeMaiorQue('Proprietário', FProprietario.Length, 60);
  TValidar.SeMenorQue('Proprietário', FProprietario.Length, 5);
end;


procedure TVeiculo.ValidarRastreador;
begin
 If FRastreador then
 begin
  TValidar.SeVazio('Número do Equipamento', FNumeroRastreador);
 end
 else
 begin
  if not FNumeroRastreador.IsEmpty then
   TValidar.LancarErro('Número do Equipamento', 'Veículo não possui Rastreador Ativo!');
 end;
end;

procedure TVeiculo.ValidarTipoVeiculo;
begin
  TValidar.SeVazio('Tipo de Veículo', FTipoVeiculo);
end;

end.
