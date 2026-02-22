unit Veiculo.Entidade;

interface
uses Validar.Exceptions, System.SysUtils;

 type
  TVeiculo = class
    private
     {Private Declarations}
     FPlaca      : String;
     FPlacaUF    : string;
     FTipoVeiculo: string;
     FCapacidadeKg : integer;

     procedure ValidarPlaca;
     procedure ValidarPlacaUF;
     procedure ValidarTipoVeiculo;
     procedure ValidarCapacidade;
     procedure ValidarDados;
    public
     {Public Declarations}
     constructor Create(APlaca, APlacaUF, ATipoVeiculo: string; ACapacidade: integer);
     property Placa       : string  read FPlaca;
     property PlacaUf     : string  read FPlacaUF;
     property TipoVeiculo : string  read FTipoVeiculo;
     property CapacidadeKg: integer read FCapacidadeKg;


  end;

implementation

{ TDadosEMotorista }

constructor TVeiculo.Create(APlaca, APlacaUF, ATipoVeiculo: string; ACapacidade: integer);
begin
 FPlaca              := UpperCase(Trim(APlaca));;
 FPlacaUF            := APlacaUf;
 FTipoVeiculo        := ATipoVeiculo;
 FCapacidadeKg       := ACapacidade;
 ValidarDados;
end;

procedure TVeiculo.ValidarCapacidade;
begin
  TValidar.SeMenorQue('Capacidade', FCapacidadeKg, 1);
end;

procedure TVeiculo.ValidarDados;
begin
  ValidarPlaca;
  ValidarPlacaUF;
  ValidarTipoVeiculo;
  ValidarCapacidade;
end;

procedure TVeiculo.ValidarPlaca;
begin
  TValidar.SeVazio('Placa', FPlaca);
  //Não validar Caracteres, esse campo pode ser utilizado para (Placa, número de embarcação, e de registros).

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

procedure TVeiculo.ValidarTipoVeiculo;
begin
  TValidar.SeVazio('Tipo de Veículo', FTipoVeiculo);
end;

end.
