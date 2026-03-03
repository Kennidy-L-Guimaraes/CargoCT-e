unit SistemaOperacional.Entidade;

interface
uses Validar.Exceptions, System.SysUtils;
type
 TSistemaAtivo = (saAtivo, saInativo);

type
 TSistemaOperacional = class
   private
    {Private Declarations}
    FSistemaAtivo : TSistemaAtivo;
    FResponsavel  : string;
    FDataCadastro : TDateTime;
   public
    {Public Declarations}

    property Status       : TSistemaAtivo read FSistemaAtivo;
    property Responsavel  : string read FResponsavel;
    property DataCadastro : TDateTime read FDataCadastro;

    constructor Create(AsistemaAtivo: TSistemaAtivo;
  AResponsavel: string);
    procedure ValidarResponsavel;
    procedure ValidarDados;

    procedure AtivarSistema;
    procedure DesativarSistema;
    function  SistemaEstaAtivo: boolean;
 end;

implementation

{ TSistemaOperacao }

constructor TSistemaOperacional.Create(AsistemaAtivo: TSistemaAtivo;
  AResponsavel: string);
begin
 FSistemaAtivo := AsistemaAtivo;
 FResponsavel  := trim(Aresponsavel);
 FDataCadastro := Now;
 ValidarDados;
end;

procedure TSistemaOperacional.AtivarSistema;
begin
  FSistemaAtivo := saAtivo;
end;

procedure TSistemaOperacional.DesativarSistema;
begin
  FSistemaAtivo := saInativo;
end;

function TSistemaOperacional.SistemaEstaAtivo: boolean;
begin
  Result := FSistemaAtivo = saAtivo; // Retorna True se estiver ativo
end;

procedure TSistemaOperacional.ValidarDados;
begin
  ValidarResponsavel;
end;

procedure TSistemaOperacional.ValidarResponsavel;
begin
 TValidar.SeVazio('Responsável', FResponsavel);
end;

end.
