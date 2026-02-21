unit DadosOperacionais.Entidade;

interface
uses Validar.Exceptions;
type
 //Enum Tipo de Transporte
 TTipoTransporte = (trRodoviário, trAereo, trAquaviario, trMultimodal);
type
 //Enum Tipo de Operação
 TTipoOperacao   = (opEstadual, opInterestadual, opInternacional);

type
 TDadosOperacionais = class
  private
   {Private Declarations}
   FTipoTransporte: TTipoTransporte;
   FTipoOperacao  : TTipoOperacao;
  public
   {Public Declarations}
   procedure ValidarTipoOperacao;
   procedure ValidarTipoTransporte;
   procedure ValidarDados;
   constructor Create(ATipoOperacao: TTipoOperacao; ATipoTransporte: TTipoTransporte);
   property TipoOperacao  : TTipoOperacao   read FTipoOperacao;
   property TipoTransporte: TTipoTransporte read FTipoTransporte;
 end;

implementation

{ TDadosOperacionais }

constructor TDadosOperacionais.Create(ATipoOperacao: TTipoOperacao;
  ATipoTransporte: TTipoTransporte);
begin
  FTipoOperacao   := ATipoOperacao;
  FTipoTransporte := ATipoTransporte;
  ValidarDados;
end;

procedure TDadosOperacionais.ValidarDados;
begin
 ValidarTipoOperacao;
 ValidarTipoTransporte;
end;

procedure TDadosOperacionais.ValidarTipoOperacao;
begin
  TValidar.SeEnumInvalido<TTipoOperacao>('Tipo Operação', FTipoOperacao);
end;

procedure TDadosOperacionais.ValidarTipoTransporte;
begin
  TValidar.SeEnumInvalido<TTipoTransporte>('Tipo de Transporte', FTipoTransporte);
end;

end.
