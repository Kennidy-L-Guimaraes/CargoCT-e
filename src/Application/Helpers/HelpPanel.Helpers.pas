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
    class function IdentificacaoCTE_Serie   : string;
    class function IdentificacaoCTE_Numero  : string;
    class function IdentificacaoCTE_TipoCte : string;
    class function IdentificacaoCTE_Finalidade     : string;
    class function IdentificacaoCTE_Modal          : string;
    class function IdentificacaoCTE_FormaDeEmissao : string;
    class function IdentificacaoCTE_CFOP           : string;
    class function IdentificacaoCTE_CEP            : string;

    class function Tomador_Tipo                    : string;
    class function Tomador_CPF                     : string;
    class function Tomador_InscricaoEstadual       : string;
    class function Tomador_Nome                    : string;
    class function Tomador_CEP                     : string;
 end;


implementation

{ THelpPanel }

class function THelpPanel.IdentificacaoCTE_CEP: string;
begin
 Result := 'CEP * Indica a localização relacionada à operação (origem ou emissão). ' +
  'Exemplo: '+
  '88000-000 → Florianópolis/SC. ';
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

end.
