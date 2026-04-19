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
 end;


implementation

{ THelpPanel }

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
