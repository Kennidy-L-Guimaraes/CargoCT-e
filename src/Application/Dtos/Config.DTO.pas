unit Config.DTO;

interface
 type
  TDTOConfig = Record
  public
   {Public Declarations}

   //Configurações da Interface
   ExibirHelPanel     : boolean;
   ExibirBanners      : boolean;
   ExibirValorTotal   : boolean;
   HabilitarBtnsBanco : boolean;

   //Configurações de Design
   CordeFundo   : string;
   CordosBotoes : string;
   CordaFonte   : string;

   //Configuração de Nota CT-e
   ExibirLogo   : boolean;
  End;

implementation

end.
