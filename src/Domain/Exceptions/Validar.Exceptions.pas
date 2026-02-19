{

***************************************************************
  Regras da Classe TValidar
***************************************************************

1) Finalidade
   - Responsável exclusivamente por validações genéricas e estruturais.
   - Não contém regras de negócio ou validações específicas de domínio.

2) Dependências
   - Deve depender apenas de System.SysUtils.
   - Não pode depender de entidades, serviços, DTOs ou qualquer classe do domínio.

3) Acoplamento
   - Pode ser utilizada por qualquer camada do sistema.
   - Não deve ser utilizada como dependência obrigatória de outra classe.
   - Não deve receber objetos complexos, apenas tipos primitivos.

4) Escopo das Validações
   Permitido:
     - Valor vazio ou nulo
     - Tamanho mínimo ou máximo
     - Intervalo numérico
     - Condição booleana simples
     - Comparações diretas

   Não permitido:
     - Regras fiscais
     - Validações de CNPJ, CPF, IE, etc.
     - Regras condicionais de negócio
     - Lógica dependente de estado externo

5) Comportamento
   - Não altera dados.
   - Não aplica máscara.
   - Não formata valores.
   - Não executa tratamento.
   - Apenas valida e lança exceção.

6) Exceções
   - Deve lançar apenas exceções padrão da RTL (ex: EArgumentException).
   - Não deve criar tipos específicos de exceção.

7) Princípio
   - Se a validação depende do significado do dado, ela pertence ao domínio.
   - Se a validação depende apenas da estrutura do dado, pode estar aqui.

***************************************************************
}

unit Validar.Exceptions;

interface
uses System.SysUtils;

type
 TValidar = class
   private
   {Private Variables}
   public
   {Public Variablres}
   class procedure SeVazio(const ANomeVar, AValue: string);
   class procedure SeNulo(const ANomeVar: string; AValue: TObject); static;
   class procedure SeMenorQue(const ANomeVar: string; AValue, AMin: Integer); static;
   class procedure SeMaiorQue(const ANomeVar: string; AValue, AMax: Integer); static;
   class procedure SeNumDiferente(const ANomeVar: string; AValue, AComparar: Integer); static;
   class procedure SeTextDiferente(const ANomeVar, AValue, AComparar: string); static;
   class procedure SeNaoNumerico(const ANomeVar, AValue: string);
   class procedure SeNaoContemNaListaText(const ANomeVar, AValue: string; const ALista: array of string);
 end;

implementation

class procedure TValidar.SeMaiorQue(const ANomeVar: string; AValue,
  AMax: Integer);
begin
 if AValue > AMax then
  raise EArgumentException.CreateFmt('Valor inválido, %s deve ser menor ou igual a %d.',[ANomeVar, AMax]);
end;

class procedure TValidar.SeMenorQue(const ANomeVar: string; AValue,
  AMin: Integer);
begin
  if AValue < AMin then
   raise EArgumentException.CreateFmt('Valor inválido, %s deve ser maior ou igual a %d.',[ANomeVar, AMin]);
end;

class procedure TValidar.SeNaoContemNaListaText(const ANomeVar, AValue: string;
  const ALista: array of string);
var
  Item: string;
  Encontrado: Boolean;
begin
  Encontrado := False;
  for Item in ALista do
    if SameText(AValue, Item) then
    begin
      Encontrado := True;
      Break;
    end;

  if not Encontrado then
    raise EArgumentException.CreateFmt('%s inválido. Valor deve estar entre: %s',
      [ANomeVar, string.Join(', ', ALista)]);
end;

class procedure TValidar.SeNaoNumerico(const ANomeVar, AValue: string);
var
  C: Char;
begin
  for C in AValue do
    if not CharInSet(C, ['0'..'9']) then
      raise EArgumentException.CreateFmt('Valor inválido, %s deve conter apenas números.', [ANomeVar]);
end;

class procedure TValidar.SeNulo(const ANomeVar: string; AValue: TObject);
begin
   if AValue = Nil then
   raise EArgumentException.CreateFmt('Valor inválido, o %s não deve ser nulo', [ANomeVar]);
end;

class procedure TValidar.SeNumDiferente(const ANomeVar: string; AValue,
  AComparar: Integer);
begin
  if AValue <> AComparar then
   raise EArgumentException.CreateFmt('Valor inválido, %s deve possuir %d caracteres.',[ANomeVar, AComparar]);
end;

class procedure TValidar.SeTextDiferente(const ANomeVar, AValue,
  AComparar: string);
begin
  if AValue <> AComparar then
   raise EArgumentException.CreateFmt('Valor inválido, %s e %s não devem ser diferentes.',[ANomeVar, AComparar]);
end;

{ TGenericException }

class procedure TValidar.SeVazio(const ANomeVar, AValue: string);
begin
  if Trim(AValue).IsEmpty then
    raise EArgumentException.CreateFmt('%s não pode ser vazio.', [ANomeVar]);
end;

end.
