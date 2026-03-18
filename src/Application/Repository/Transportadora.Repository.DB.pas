unit Transportadora.Repository.DB;

interface
uses
  Validar.Exceptions,
  TransportadoraRepository.Interfaces,
  Transportadora.Entidade,
  Transportadora.DB.SQLite;

type
 TTransportadoraRepositoryDataBase = class(TInterfacedObject, ITransportadoraRepository)
   private
    {Private Declarations}
     FDAO : TTransportadoraDBSQLite;
   public
    {Public Declarations}
    procedure SalvarTransportadora(Transportadora: TTransportadora);
    function  ExisteNoBanco(CNPJ: string): boolean;
    procedure CommitAndClose;
    constructor Create(ACaminhoBanco: string);
    destructor Destroy; Override;

 end;



implementation

{ TTransportadoraRepositoryDataBase }

procedure TTransportadoraRepositoryDataBase.CommitAndClose;
begin
  FDAO.CommitAndClose;
end;

constructor TTransportadoraRepositoryDataBase.Create(ACaminhoBanco: string);
begin
  FDAO := TTransportadoraDBSQLite.Create(ACaminhoBanco); //Necessita Implementação Real
end;

destructor TTransportadoraRepositoryDataBase.Destroy;
begin
  FDAO.Free;
  inherited;
end;

function TTransportadoraRepositoryDataBase.ExisteNoBanco(CNPJ: string): boolean;
begin
  Result := FDAO.ExisteNoBanco(CNPJ);
end;

procedure TTransportadoraRepositoryDataBase.SalvarTransportadora(
  Transportadora: TTransportadora);
begin
  FDAO.SalvarTransportadora(Transportadora);
end;

end.
