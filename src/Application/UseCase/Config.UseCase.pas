unit Config.UseCase;

interface
uses Config.DTO, ConfiRepository.Interfaces, Config.Entidade;
 type
  TUsecaseConfig = class
    private
     {Private Declarations}
      FRepository: IConfigRepository;

    public
     {Public Declarations}
     function Inicializar: TDTOConfig;
     procedure Salvar(Adto: TDTOConfig);
     constructor Create(ARepository: IConfigRepository);
  end;

implementation

{ TUsecaseConfig }

constructor TUsecaseConfig.Create(ARepository: IConfigRepository);
begin
  inherited Create;
  FRepository := ARepository;
end;

function TUsecaseConfig.Inicializar: TDTOConfig;
 var
  Config: TConfig;
  Dto   : TDTOConfig;
begin
  Config := FRepository.Obter;
  Dto    := Default(TDTOConfig);
  try
    Result := Default(TDTOConfig);
    Result.ExibirHelPanel   := Config.ExibirHelpPanel;
    Result.ExibirBanners    := Config.ExibirBanner;
    Result.ExibirValorTotal := Config.ExibirOValorTotal;
    Result.HabilitarBtnsBanco := Config.HabilitarBotoesDB;
    Result.ExibirLogo       := Config.ExibirLogoNotaCTe;
    Result.CordeFundo       := Config.CorDeFundo;
    Result.CordosBotoes     := Config.CorDosBotoes;
    Result.CordaFonte       := Config.CorDaFonte;
  finally
    Config.Free;
  end;
end;

procedure TUsecaseConfig.Salvar(Adto: TDTOConfig);
 var
 Config : TConfig;
begin
 Config := TConfig.Create(
  Adto.ExibirHelPanel,
  Adto.ExibirBanners,
  Adto.ExibirValorTotal,
  Adto.HabilitarBtnsBanco,
  Adto.ExibirLogo,
  Adto.CordeFundo,
  Adto.CordosBotoes,
  Adto.CordaFonte);
 try
   FRepository.Salvar(Config);
 finally
  Config.Free;
 end;
end;

end.
