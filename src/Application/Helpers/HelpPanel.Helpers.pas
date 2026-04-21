{

 *
 * CONTRATO DA CLASSE DE HELP
 * ------------------------------------------------------------
 * Esta classe tem como única responsabilidade fornecer suporte
 * informativo aos componentes do formulário principal.
 *
 * REGRAS GERAIS:
 *
 * 1. Independência:
 *    - A classe NÃO deve possuir dependências externas.
 *    - Não deve depender de serviços, banco de dados ou outras camadas.
 *    - Deve ser totalmente isolada e determinística.
 *
 * 2. Responsabilidade:
 *    - Conter exclusivamente funções que retornem conteúdos
 *      destinados ao HELP-PANEL.
 *    - Não deve conter lógica de negócio, validação complexa
 *      ou efeitos colaterais.
 *
 * 3. Estrutura das Funções:
 *    - Todas as funções devem retornar dados prontos para exibição.
 *    - As funções devem ser puras (sem alterar estado).
 *
 * 4. Convenção de Nomenclatura:
 *    - Todas as funções devem obrigatoriamente possuir o prefixo "<Contexto_Nome>".
 *    - O nome deve representar claramente o conteúdo retornado.
 *
 *    Exemplos:
 *      - Taxas_ICMS
 *      - THelpPanel.Taxas_ICMS
 *
 * 5. Contextualização (quando necessário):
 *    - Para informações específicas de contexto, utilizar sufixos adicionais.
 *    - O padrão deve seguir: <Contexto1>_<Contexto2>_<Campo>
 *
 * 6. Padronização:
 *    - Evitar abreviações ambíguas.
 *    - Manter consistência entre nomes similares.
 *
 * OBJETIVO:
 * Garantir uma fonte centralizada, previsível e padronizada de
 * informações para o HELP-PANEL, facilitando manutenção e escalabilidade.
 * ------------------------------------------------------------
 *

}

unit HelpPanel.Helpers;

interface
 type
 THelpPanel = class
   public
    //IDENTIFICAÇÃO CTE
    class function IdentificacaoCTE_Serie   : string;
    class function IdentificacaoCTE_Numero  : string;
    class function IdentificacaoCTE_TipoCte : string;
    class function IdentificacaoCTE_Finalidade     : string;
    class function IdentificacaoCTE_Modal          : string;
    class function IdentificacaoCTE_FormaDeEmissao : string;
    class function IdentificacaoCTE_CFOP           : string;
    class function IdentificacaoCTE_CEP            : string;

    //TOMADOR CTE
    class function Tomador_Tipo                    : string;
    class function Tomador_CPF                     : string;
    class function Tomador_InscricaoEstadual       : string;
    class function Tomador_Nome                    : string;
    class function Tomador_CEP                     : string;

    //REMETENTE CTE
    class function Remetente_NOMEouRS             : string;
    class function Remetente_CPFouCNPJ            : string;
    class function Remetente_CEP                  : string;
    class function Remetente_Email                : string;

    //DESTINATARIO CTE
    class function Destinatario_NOMEouRS             : string;
    class function Destinatario_CPFouCNPJ            : string;
    class function Destinatario_CEP                  : string;
    class function Destinatario_Email                : string;

    //TRANSPORTADORA EMITENTE
    class function TransportadoraEmitente_NOMEouRS     : string;
    class function TransportadoraEmitente_CPFouCNPJ    : string;
    class function TransportadoraEmitente_NomeFantasia : string;

    //TRANSPORTADORA E ENTREGA
    class function Origem_CEP           : string;
    class function Origem_TipoDeServico : string;
    class function Destino_CEP          : string;
    class function Destino_TipoDeServico: string;

    //DADOS DA CARGA
    class function DadosDaCarga_Produto       : string;
    class function DadosDaCarga_Cubagem       : string;
    class function DadosDaCarga_Quantidade    : string;
    class function DadosDaCarga_PesoBruto     : string;
    class function DadosDaCarga_ValorDaCarga  : string;
    class function DadosDaCarga_PesoCubado    : string;
    class function DadosDaCarga_ValorDoSeguro : string;

    //DOCUMENTOS E TAXAS
    class function Taxas_ValorFrete       : string;
    class function Taxas_ValorDespacho    : string;
    class function Taxas_ValorPedagio     : string;
    class function Taxas_ValorSeguro      : string;
    class function Taxas_ValorOutros      : string;

   //IMPOSTOS
   class function Impostos_CST          : string;
   class function Impostos_BaseCalculo  : string;
   class function Impostos_Aliquota     : string;
   class function Impostos_ICMS         : string;
   class function Impostos_ReBase       : string;
   class function Impostos_ICMSst       : string;
   class function Impostos_Desoneracao  : string;
 end;


implementation

{ THelpPanel }

class function THelpPanel.DadosDaCarga_Cubagem: string;
begin
  Result := 'CUBAGEM * Volume ocupado pela carga (m³). Usado para cálculo de frete, principalmente quando o volume pesa mais que o peso real. '+
   'Exemplo: '+
   '2,5 m3. ';
end;

class function THelpPanel.DadosDaCarga_PesoBruto: string;
begin
  Result := 'PESO BRUTO * Peso total da carga (com embalagem). Base para cálculo de frete e limites do veículo. '+
   'Exemplo: '+
   '520 kg. ';
end;

class function THelpPanel.DadosDaCarga_PesoCubado: string;
begin
  Result := 'PESO CUBADO * Peso “teórico” baseado no volume da carga. Transportadoras usam isso para evitar prejuízo com cargas leves e volumosas. '+
   'Exemplo: '+
   '100 kg. ';
end;

class function THelpPanel.DadosDaCarga_Produto: string;
begin
  Result := 'PRODUTO * Descrição da mercadoria transportada. '+
   'Exemplo: '+
   'Eletrodomésticos ou Peças automotivas. ';
end;

class function THelpPanel.DadosDaCarga_Quantidade: string;
begin
  Result := 'QUANTIDADE * Número de volumes/unidades transportadas. '+
   'Exemplo: '+
   '10';
end;

class function THelpPanel.DadosDaCarga_ValorDaCarga: string;
begin
  Result := 'VALOR DA CARGA * Valor financeiro da mercadoria. Importante para seguro, responsabilidade e fiscalização. '+
   'Exemplo: '+
   'R$ 15.000,00. ';
end;

class function THelpPanel.DadosDaCarga_ValorDoSeguro: string;
begin
  Result := 'VALOR DO SEGURO * Valor cobrado para cobrir riscos de perda, roubo ou dano da carga. '+
   'Exemplo: '+
   'R$ 200,00. ';
end;

class function THelpPanel.Destinatario_CEP: string;
begin
  Result := 'CEP * Local de entrega. Influencia diretamente logística e também validações fiscais.'+
   'Exemplo: '+
   '01001-000 O Sistema usará uma API para completar as informações. Forneça Apenas o CEP';
end;

class function THelpPanel.Destinatario_CPFouCNPJ: string;
begin
  Result := 'CPF OU CNPJ * Identificação fiscal do destinatário. Essencial para cruzamento de dados pela SEFAZ. '+
   'Exemplo: '+
   'CPF: 987.654.321-00 ou CNPJ: 98.765.432/0001-11. ';
end;

class function THelpPanel.Destinatario_Email: string;
begin
  Result := 'EMAIL * Recebimento do CT-e e comunicação da entrega. '+
   'Exemplo: '+
   'recebimento@empresa.com.br ';
end;

class function THelpPanel.Destinatario_NOMEouRS: string;
begin
  Result := 'NOME OU RAZÃO SOCIAL * Identifica quem vai receber a mercadoria. '+
   'Exemplo: '+
   'Mercado Central LTDA ou Maria Oliveira. ';
end;

class function THelpPanel.Destino_CEP: string;
begin
 Result := 'CEP * Define onde a carga será entregue. Impacta diretamente frete, prazo e validações fiscais. '+
  'Exemplo: '+
  '01001-000. ';
end;

class function THelpPanel.Destino_TipoDeServico: string;
begin
  Result := 'TIPO DE SERVIÇO * Define como será a entrega no destino. '+
   'Exemplo: '+
   'Normal → entrega padrão. '+
   'Expresso → entrega urgente. '+
   'Porta a porta → coleta e entrega direta. ';
end;

class function THelpPanel.IdentificacaoCTE_CEP: string;
begin
 Result := 'CEP * Indica a localização relacionada à operação (origem ou emissão). ' +
  'Exemplo: '+
  '88000-000';
end;

class function THelpPanel.IdentificacaoCTE_CFOP: string;
begin
 Result := 'CÓDIGO FISCAL DE OPERAÇÕES E PRESTAÇÕES * Define a natureza fiscal da operação. Ordem de tributação. '+
  'Exemplo: '+
  '5353 → prestação de serviço de transporte dentro do estado. '+
  '6353 → transporte interestadual. ';
end;

class function THelpPanel.IdentificacaoCTE_Finalidade: string;
begin
 Result := 'FINALIDADE * Indica por que o CT-e está sendo emitido. '+
  'Exemplo: '+
  'Normal → operação comum. '+
  'Complemento de valores → faltou cobrar algo. '+
  'Ajuste → correção sem substituir totalmente. ';
end;

class function THelpPanel.IdentificacaoCTE_FormaDeEmissao: string;
begin
 Result := 'FORMA DE EMISSÃO * Indica como o CT-e foi emitido, principalmente em relação à disponibilidade da SEFAZ. '+
  'Exemplo: '+
  'Normal → online, autorizado na hora.'+
  'Contingência → emitido offline e transmitido depois. ';
end;

class function THelpPanel.IdentificacaoCTE_Modal: string;
begin
 Result := 'MODAL * Define o meio de transporte.' +
  'Exemplo: '+
  'Rodoviário → caminhão. '+
  'Aéreo → avião. '+
  'Aquaviário → navio/barco. '+
  'Ferroviário → trem. ';
end;

class function THelpPanel.IdentificacaoCTE_Numero: string;
begin
 Result:= 'NÚMERO * É o identificador sequencial do CT-e dentro de uma série. Não pode repetir. ' +
  'Exemplo: '+
  'Série 1: '+
  'CT-e nº 000001. '+
  'CT-e nº 000002. ';

end;

class function THelpPanel.IdentificacaoCTE_Serie: string;
begin
 Result := 'SÉRIE * Define um agrupamento de documentos. ' +
 'É usada para organizar emissões diferentes dentro da mesma empresa (por filial, sistema ou tipo de operação). ' +
 'Exemplo: ' +
 'Uma transportadora pode usar: '+
 'Série 1 emissão normal. '+
 'Série 2 emissão por contingência. ';
end;

class function THelpPanel.IdentificacaoCTE_TipoCte: string;
begin
 Result := 'TIPO CT-E * Define a natureza do documento. Indica o “papel” daquele CT-e. ' +
  'Exemplo: '+
  'Normal → transporte padrão. ' +
  'Complementar → ajuste de valor. '+
  'Anulação → cancela efeitos de outro CT-e. '+
  'Substituição → corrige um CT-e anterior. ';
end;

class function THelpPanel.Impostos_Aliquota: string;
begin
  Result := 'ALIQUOTA * Percentual aplicado sobre a base de cálculo. '+
   'Exemplo: '+
   '12% (interestadual comum). '+
   '18% (interna, dependendo do estado). ';
end;

class function THelpPanel.Impostos_BaseCalculo: string;
begin
  Result := 'BASE CALCULO * É o valor sobre o qual o ICMS será calculado. '+
   'Exemplo: '+
   'Frete: R$ 1.000. '+
   'Base de cálculo: R$ 1.000. ';
end;

class function THelpPanel.Impostos_CST: string;
begin
  Result := 'CÓDIGO DE SITUAÇÃO TRIBUTÁRIA * Define como o ICMS será tratado naquela operação. É basicamente o “modo tributário”. '+
   'Exemplo: '+
   '00 → tributação normal. '+
   '20 → com redução de base. '+
   '40 → isento. '+
   '60 → ICMS já cobrado anteriormente (substituição tributária). ';
end;

class function THelpPanel.Impostos_Desoneracao: string;
begin
  Result := 'DESONERAÇÃO * Indica isenção ou redução total/parcial do ICMS por incentivo fiscal. '+
   'Exemplo: '+
   'Transporte para zona incentivada ICMS = R$ 0';
end;

class function THelpPanel.Impostos_ICMS: string;
begin
  Result := 'ICMS * Valor do imposto calculado. '+
   'Exemplo: '+
   'Base: R$ 1.000 e Alíquota: 12%'+
   'ICMS = 1000 × 0.12 "R$ 120". ';
end;

class function THelpPanel.Impostos_ICMSst: string;
begin
  Result := 'SUBSTITUIÇÃO TRIBUTÁRIA * Indica que o ICMS foi pago antecipadamente por outro contribuinte. ';
end;

class function THelpPanel.Impostos_ReBase: string;
begin
  Result := 'REDUÇÃO DA BASE * Permite reduzir o valor da base antes de aplicar a alíquota. '+
   'Exemplo: '+
   'Base original: R$ 1.000. '+
   'Redução: 30% '+
   'Nova base: R$ 700 ';
end;

class function THelpPanel.Origem_CEP: string;
begin
  Result := 'CEP * Define o ponto de partida da carga. É base para cálculo de rota, prazo e até tributação. '+
   'Exemplo: '+
   '88010-000. ';
end;

class function THelpPanel.Origem_TipoDeServico: string;
begin
  Result := 'TIPO DE SERVIÇO * Indica a característica do transporte a partir da origem. '+
   'Exemplo: '+
   'Normal → coleta padrão. '+
   'Expresso → prioridade alta. '+
   'Lotação → carga exclusiva no veículo. ';
end;

class function THelpPanel.Remetente_CEP: string;
begin
  Result := 'CEP * Define a localização do remetente. Isso impacta cálculo de rota, impostos e validações. '+
   'Exemplo: '+
   '88010-000. ';
end;

class function THelpPanel.Remetente_CPFouCNPJ: string;
begin
  Result := 'CPF OU CNPJ * É o identificador fiscal. Necessário para Emissão SEFAZ. '+
   'Exemplo: '+
   'CPF: 123.456.789-00. '+
   'CNPJ: 12.345.678/0001-99. ';
end;

class function THelpPanel.Remetente_Email: string;
begin
  Result := 'EMAIL * Canal de comunicação para envio do CT-e (XML/DANFE) e notificações. '+
   'Exemplo: '+
   'financeiro@empresa.com.br ';
end;

class function THelpPanel.Remetente_NOMEouRS: string;
begin
  Result := 'NOME OU RAZÃO SOCIAL * Identifica oficialmente quem está enviando a mercadoria. É o nome jurídico ou o nome da pessoa. '+
   'Exemplo: '+
   'Comércio de Alimentos Silva LTDA ou João da Silva. ';
end;

class function THelpPanel.Taxas_ValorOutros: string;
begin
  Result := 'OUTROS * Agrupa custos adicionais que não entram nas categorias anteriores. ';
end;

class function THelpPanel.Taxas_ValorFrete: string;
begin
  Result := 'VALOR DO FRETE * É o valor principal cobrado pelo transporte da carga. Basicamente, o preço do serviço. '+
   'Esemplo: '+
   'R$ 1.200,00. ';
end;

class function THelpPanel.Taxas_ValorDespacho: string;
begin
  Result := 'DESPACHO * Taxa administrativa relacionada à emissão, processamento e organização do transporte. '+
   'Exemplo: '+
   'R$ 50,00. ';
end;

class function THelpPanel.Taxas_ValorPedagio: string;
begin
  Result := 'PEDAGIO * Custo dos pedágios no trajeto. Pode ser repassado ao cliente. '+
   'Exemplo: '+
   'R$ 120,00. ';
end;

class function THelpPanel.Taxas_ValorSeguro: string;
begin
  Result := 'SEGURO * Valor cobrado para cobrir riscos da carga durante o transporte. '+
   'Exemplo: '+
   'R$ 200,00 para uma carga de R$ 15.000,00. ';
end;

class function THelpPanel.Tomador_CEP: string;
begin
  Result := 'CEP * Localização do tomador, importante para validações fiscais e logísticas. '+
   'Exemplo: '+
   '01001-000 O Sistema usará uma API para completar as informações. Forneça Apenas o CEP. ';
end;

class function THelpPanel.Tomador_CPF: string;
begin
 Result := 'CPF * Identifica o tomador como pessoa física. '+
  'Exemplo: '+
  '123.456.789-00 Se for uma Empresa Alterar as Configurações. ';
end;

class function THelpPanel.Tomador_InscricaoEstadual: string;
begin
  Result := 'INSCRIÇÃO ESTADUAL * Registro do tomador na SEFAZ, quando ele é contribuinte de ICMS. '+
  'Exemplo: '+
  '254.789.456. ';
end;

class function THelpPanel.Tomador_Nome: string;
begin
  Result := 'NOME * Identificação formal do tomador. '+
  'Exemplo: '+
  'João da Silva ou Transportes XYZ Ltda. ';
end;

class function THelpPanel.Tomador_Tipo: string;
begin
  Result := 'TIPO DE TOMADOR * Define quem é o responsável pelo pagamento do frete. ' +
   'Exemplo: '+
   'Remetente → quem envia paga. '+
   'Destinatário → quem recebe paga. '+
   'Terceiro → alguém no meio assume. ';
end;

class function THelpPanel.TransportadoraEmitente_CPFouCNPJ: string;
begin
  Result := 'CPF ou CNPJ * Identificação fiscal da transportadora. É o vínculo oficial com a SEFAZ e o que autentica a emissão. '+
   'Exemplo: '+
   'CNPJ: 12.345.678/0001-99 ';
end;

class function THelpPanel.TransportadoraEmitente_NomeFantasia: string;
begin
  Result := 'NOME FANTASIA * É o nome comercial, usado para identificação mais amigável. '+
   'Exemplo: '+
   'Rápido Sul Transportes. ';
end;

class function THelpPanel.TransportadoraEmitente_NOMEouRS: string;
begin
  Result := 'NOME OU RAZÃO SOCIAL * É o nome jurídico da empresa que está emitindo o CT-e. ' +
   'É quem assume a responsabilidade legal pelo transporte. '+
   'Exemplo: '+
   'Transportadora Rápido Sul LTDA ';
end;

end.
