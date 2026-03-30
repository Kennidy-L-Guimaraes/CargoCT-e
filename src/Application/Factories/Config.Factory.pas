unit Config.Factory;

interface

uses Config.DB.SQLite, Config.DTO, Config.Entidade, Config.UseCase,
  ConfiguracaoSistema.Db, ConfiRepository.Interfaces;
 type
  TConfigFactory = class
    private
     {Private Declarations}
    public
     {Public Declarations}
      class function NovoUseCase: TUsecaseConfig;
  end;

implementation

{ TConfigFactory }

class function TConfigFactory.NovoUseCase: TUsecaseConfig;
var
  Repo: IConfigRepository;
  Caminho: string;
begin
  Caminho := TConfiguracaoSistema.ObterCaminhoBancoConfig;
  Repo := TConfigDBSqlite.Create(Caminho);
  Result := TUsecaseConfig.Create(Repo);
end;

end.
