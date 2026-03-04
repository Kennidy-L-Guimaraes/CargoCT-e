unit DadosOperacionais.Entidade;

interface
uses Validar.Exceptions;
type
 //Enum Tipo de Operação
 TTipoOperacao   = (opEstadual, opInterestadual, opInternacional);

type
 TDadosOperacionais = class
  private
   {Private Declarations}
   const
   MODAL_RODOVIARIO = 'Rodoviario';
   var
   FTipoTransporte: string;
   FTipoOperacao  : TTipoOperacao;
   procedure ValidarTipoOperacao;
   procedure ValidarDados;
  public
   {Public Declarations}
   constructor Create(ATipoOperacao: TTipoOperacao);
   property TipoOperacao  : TTipoOperacao   read FTipoOperacao;
   property TipoTransporte: string read FTipoTransporte;
 end;

implementation

{ TDadosOperacionais }

constructor TDadosOperacionais.Create(ATipoOperacao: TTipoOperacao);
begin
  FTipoOperacao   := ATipoOperacao;
  FTipoTransporte := MODAL_RODOVIARIO;
  ValidarDados;
end;

procedure TDadosOperacionais.ValidarDados;
begin
 ValidarTipoOperacao;
end;

procedure TDadosOperacionais.ValidarTipoOperacao;
begin
  TValidar.SeEnumInvalido<TTipoOperacao>('Tipo Operação', FTipoOperacao);
end;

end.
