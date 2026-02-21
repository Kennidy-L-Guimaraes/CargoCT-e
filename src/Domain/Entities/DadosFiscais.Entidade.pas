unit DadosFiscais.Entidade;

interface
uses Validar.Exceptions, System.SysUtils;

  type
   //Dados Fiscais Papel do Ct-e
   TPapelCte = (pcEmitente, pcTomador, pcSubContratada, pcRedespachadora, pcRedespacho, pcIntermediario);

   //Dados Fiscais Tipo de Tributação
  type
   TTipoTributacao = (ttNormal, ttIsento, ttDiferido);
type
 TDadosFiscais = class
 private
  {Private Declarations}
    FPapelCte: TPapelCte;
    FTipoTributacao: TTipoTributacao;
    FObservacaoFiscal: string;
    FAliquotaPadrao: Currency;

    procedure ValidarPapelCte;
    procedure ValidarTipoTributacao;
    procedure ValidarAliquotaPadrao;
    procedure ValidarObservacaoFiscal;
    procedure ValidarDados;
 public
  {Public Declarations}
  constructor Create(APapelCte: TPapelCte; ATipoTributacao: TTipoTributacao; AObservacaoFiscal: string; AAliquotaPadrao: currency);
  property PapelCte        : TPapelCte       read FPapelCte;
  property TipoTributacao  : TTipoTributacao read FTipoTributacao;
  property ObservacaoFiscal: string          read FObservacaoFiscal;
  property AliquotaPadrao  : Currency        read FAliquotaPadrao;

end;

implementation

{
=== ORDEM CORRETA ===
  Papel Ct-e
  Tipo de Tributacao
  Observação Fiscal
  Aliquota padrão
}

{ TDadosFiscais }

constructor TDadosFiscais.Create(APapelCte: TPapelCte;
  ATipoTributacao: TTipoTributacao; AObservacaoFiscal: string;
  AAliquotaPadrao: currency);
begin
  FPapelCte         := APapelCte;
  FTipoTributacao   := AtipoTributacao;
  FObservacaoFiscal := AobservacaoFiscal;
  FAliquotaPadrao   := AAliquotaPadrao;
  ValidarDados;
end;

procedure TDadosFiscais.ValidarAliquotaPadrao;
begin
  case FTipoTributacao of
    ttNormal:
      TValidar.SeMenorOuZero('Aliquota Padrão', FAliquotaPadrao);

    ttIsento:
      if FAliquotaPadrao <> 0 then
         TValidar.LancarErro('Aliquota Padrão', 'Tributação isenta exige alíquota zero');

    ttDiferido:
      if FAliquotaPadrao < 0 then
         TValidar.LancarErro('Aliquota Padrão', 'Alíquota inválida para tributação diferida');
  end;
end;

procedure TDadosFiscais.ValidarPapelCte;
begin
  TValidar.SeEnumInvalido<TPapelCte>('Papel do Ct-e', FPapelCte);
end;

procedure TDadosFiscais.ValidarTipoTributacao;
begin
  TValidar.SeEnumInvalido<TTipoTributacao>('Tipo de Tributação', FTipoTributacao);
end;

procedure TDadosFiscais.ValidarDados;
begin
 ValidarPapelCte;
 ValidarTipoTributacao;
 ValidarAliquotaPadrao;
 ValidarObservacaoFiscal;
end;

procedure TDadosFiscais.ValidarObservacaoFiscal;
begin
  TValidar.SeMaiorQue('Observação Fiscal', FObservacaoFiscal.Length, 250); //Limite de caracteres 250
end;

end.
