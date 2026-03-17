unit Transportadora.Repository.DB;

interface
uses
  Validar.Exceptions,
  TransportadoraRepository.Interfaces,
  Transportadora.Entidade;
  //Transportadora.BancoSQLite;

type
 TTransportadoraRepositoryDataBase = class(TInterfacedObject, ITransportadoraRepository)
   private
    {Private Declarations}
     //FDAO : TTransportadoraDBSQLite;
   public
    {Public Declarations}
    procedure SalvarTransportadora(Transportadora: TTransportadora);
    function  ExisteNoBanco(CNPJ: string): boolean;
    constructor Create(ACaminhoBanco: string);
    destructor Destroy; Override;

 end;



implementation

{ TTransportadoraRepositoryDataBase }

constructor TTransportadoraRepositoryDataBase.Create(ACaminhoBanco: string);
begin
  //FDAO := TransportadoraDBSQLite.Create(ACaminhoBanco); //Necessita Implementação Real
end;

destructor TTransportadoraRepositoryDataBase.Destroy;
begin
  //FDAO.Free
  inherited;
end;

function TTransportadoraRepositoryDataBase.ExisteNoBanco(CNPJ: string): boolean;
begin
  //Result := FDAO.ExisteCNPJ(CNPJ);
end;

procedure TTransportadoraRepositoryDataBase.SalvarTransportadora(
  Transportadora: TTransportadora);
begin
  //FDAO.Insert(Transportadora);
end;

end.
