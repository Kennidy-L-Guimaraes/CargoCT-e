unit Transportadora.Entidade;

interface
uses DadosFiscais.Entidade, DadosOperacionais.Entidade, Endereco.Entidade,
  IdentidadeFiscal.Entidade, SistemaOperacional.Entidade, System.SysUtils,
  Validar.Exceptions, System.TypInfo, TransportadoraContato.Entidade;

type
 TTransportadora = class
   private
    {Private Declarations}
    FGuid                : TGuid;
    FDadosFiscais        : TDadosFiscais;
    FDadosOperacionais   : TDadosOperacionais;
    FSistemaOperacional  : TSistemaOperacional;
    FEndereco            : TEndereco;
    FIdentidadeFiscal    : TIdentidadeFiscal;
    FContato             : TContato;
   public
    {Public Declarations}
    property Id                : TGuid              read FGuid;
    property DadosFiscais      : TDadosFiscais      read FDadosFiscais;
    property DadosOperacionais : TDadosOperacionais read FDadosOperacionais;
    property Endereco          : TEndereco          read FEndereco;
    property IdentidadeFiscal  : TIdentidadeFiscal  read FIdentidadeFiscal;
    property Contato           : TContato           read FContato;


    function DebugCompleto: string; //Para testes

    constructor Create(ADadosFiscais: TDadosFiscais;
  ADadosOperacionais: TDadosOperacionais; AEndereco: TEndereco;
  AIdentidadeFiscal: TIdentidadeFiscal; ASistemaOperacional: TSistemaOperacional; AContato: TContato);
     destructor Destroy;
    procedure AtivarTransportadora;
    procedure InativarTransportadora;

 end;

implementation



{ TTransportadora }

constructor TTransportadora.Create(ADadosFiscais: TDadosFiscais;
  ADadosOperacionais: TDadosOperacionais; AEndereco: TEndereco;
  AIdentidadeFiscal: TIdentidadeFiscal; ASistemaOperacional: TSistemaOperacional; AContato: TContato);
begin
  //Validação Via Constructor
   if not Assigned(ADadosFiscais) then
    TValidar.LancarErro('Dados Fiscais', 'Obrigatório!');

   if not Assigned(ADadosOperacionais) then
    TValidar.LancarErro('Dados Operacionais', 'Obrigatório!');

   if not Assigned(AEndereco) then
    TValidar.LancarErro('Endereço', 'Obrigatório!');

   if not Assigned(AIdentidadeFiscal) then
    TValidar.LancarErro('Identidade Fiscal','Obrigatório!');

   if not Assigned(ASistemaOperacional) then
    TValidar.LancarErro('Sistema', 'Obrigatório!');

   if not Assigned(AContato) then
    TValidar.LancarErro('Contato', 'Obrigatório!');

   FDadosFiscais      := ADadosFiscais;
   FDadosOperacionais := ADadosOperacionais;
   FEndereco          := AEndereco;
   FIdentidadeFiscal  := AIdentidadeFiscal;
   FSistemaOperacional:= ASistemaOperacional;
   FContato           := AContato;
   FGuid              := TGuid.NewGuid;
end;


function TTransportadora.DebugCompleto: string;  //Temporário
var
  Status: string;
begin
  if FSistemaOperacional.SistemaEstaAtivo then
    Status := 'Ativa'
  else
    Status := 'Inativa';

  Result :=
    '===== TRANSPORTADORA =====' + sLineBreak +
    'ID: ' + GuidToString(FGuid) + sLineBreak +
    sLineBreak +

    '--- IDENTIDADE FISCAL ---' + sLineBreak +
    'CNPJ: ' + FIdentidadeFiscal.CNPJ.ToString + sLineBreak +
    'Razão Social: ' + FIdentidadeFiscal.RazaoSocial + sLineBreak +
    'Inscrição Estadual: ' + FIdentidadeFiscal.InscricaoIE + sLineBreak +
    'Regime Tributário: ' +
      GetEnumName(TypeInfo(TRegimeTributario),
        Ord(FIdentidadeFiscal.RegimeTributario)) + sLineBreak +
    sLineBreak +

    '--- ENDEREÇO ---' + sLineBreak +
    'CEP: ' + FEndereco.CEP.Valor + sLineBreak +
    'UF: ' + FEndereco.EstadoUF + sLineBreak +
    'Cidade: ' + FEndereco.Municipio + sLineBreak +
    'Bairro: ' + FEndereco.Bairro + sLineBreak +
    'Logradouro: ' + FEndereco.Logradouro + sLineBreak +
    'Número: ' + FEndereco.Numero + sLineBreak +
    'Código Município IBGE: ' + FEndereco.CodigoIBGE + sLineBreak +
    'Complemento: ' + FEndereco.Complemento + sLineBreak +
    sLineBreak +

    '--- DADOS FISCAIS ---' + sLineBreak +
    'Papel Comercial: ' +
      GetEnumName(TypeInfo(TPapelCte),
        Ord(FDadosFiscais.PapelCte)) + sLineBreak +
    'Tipo Tributação: ' +
      GetEnumName(TypeInfo(TTipoTributacao),
        Ord(FDadosFiscais.TipoTributacao)) + sLineBreak +
    'Observação: ' + FDadosFiscais.ObservacaoFiscal + sLineBreak +
    'Percentual: ' + FloatToStr(FDadosFiscais.AliquotaPadrao) + sLineBreak +
    sLineBreak +

    '--- DADOS OPERACIONAIS ---' + sLineBreak +
    'Tipo Operação: ' +
      GetEnumName(TypeInfo(TTipoOperacao),
        Ord(FDadosOperacionais.TipoOperacao)) + sLineBreak +
    'Tipo Transporte: ' +
      DadosOperacionais.TipoTransporte + sLineBreak +
    sLineBreak +

    '--- SISTEMA ---' + sLineBreak +
    'Status: ' + Status + sLineBreak +
    'Responsável: ' + FSistemaOperacional.Responsavel + sLineBreak +
    'Data Cadastro: ' +

      '--- CONTATO ---' + sLineBreak +
    'NUMERO: ' + FContato.NumeroTelefone + sLineBreak +
    'SITE: ' + FContato.Site + sLineBreak +
    'EMAIL: ' + FContato.Email +

      DateTimeToStr(FSistemaOperacional.DataCadastro);
end;

destructor TTransportadora.Destroy;
begin
  FDadosFiscais.Free;
  FDadosOperacionais.Free;
  FEndereco.Free;
  FIdentidadeFiscal.Free;
  FSistemaOperacional.Free;
  inherited;
end;

procedure TTransportadora.AtivarTransportadora;
begin
 FSistemaOperacional.AtivarSistema;
end;

procedure TTransportadora.InativarTransportadora;
begin
 FSistemaOperacional.DesativarSistema;
end;

end.
